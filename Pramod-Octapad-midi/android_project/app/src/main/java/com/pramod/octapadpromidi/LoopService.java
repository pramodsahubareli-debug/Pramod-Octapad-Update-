package com.pramod.octapadpromidi;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.media.PlaybackParams;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;

public class LoopService extends Service {
    public static final String CHANNEL_ID = "LoopServiceChannel";
    public static final int NOTIF_ID = 1001;
    private final IBinder binder = new LocalBinder();
    private final MediaPlayer[] mediaPlayers = new MediaPlayer[8];
    private final boolean[] playing = new boolean[8];
    private boolean isOneShotMode = false;
    private boolean isMultiMode = false;
    private float masterVolume = 1.0f;
    private float loopSpeed = 1.0f;
    private float loopPitch = 1.0f;
    private boolean hasForegroundNotification = false;

    public class LocalBinder extends Binder {
        public LoopService getService() {
            return LoopService.this;
        }
    }

    @Override
    public void onCreate() {
        super.onCreate();
        createNotificationChannel();
    }

    @Override
    public IBinder onBind(Intent intent) {
        return this.binder;
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (intent != null && Intent.ACTION_DELETE.equals(intent.getAction())) {
            stopAllLoops();
            return START_NOT_STICKY;
        }
        ensureForegroundNotification("Loop playback service running");
        return START_STICKY;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        stopAllLoops();
    }

    private void createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel channel = new NotificationChannel(CHANNEL_ID, "Loop Playback Service", NotificationManager.IMPORTANCE_LOW);
            channel.setDescription("Background loop playback service for Octapad");
            NotificationManager manager = (NotificationManager) getSystemService(NotificationManager.class);
            if (manager != null) {
                manager.createNotificationChannel(channel);
            }
        }
    }

    private void ensureForegroundNotification(String contentText) {
        if (!this.hasForegroundNotification) {
            Notification notification = buildNotification(contentText);
            startForeground(NOTIF_ID, notification);
            this.hasForegroundNotification = true;
        }
    }

    private Notification buildNotification(String contentText) {
        Intent notificationIntent = new Intent(this, MainActivity.class);
        PendingIntent pendingIntent = PendingIntent.getActivity(this, 0, notificationIntent, getPendingIntentFlags());
        Notification.Builder builder = new Notification.Builder(this, CHANNEL_ID)
            .setContentTitle("Octapad Loop Service")
            .setContentText(contentText)
            .setSmallIcon(R.mipmap.ic_launcher)
            .setContentIntent(pendingIntent)
            .setOngoing(true);
        return builder.build();
    }

    private int getPendingIntentFlags() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            return PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE;
        }
        return PendingIntent.FLAG_UPDATE_CURRENT;
    }

    public boolean toggleLoop(int index, Uri uri, boolean isOneShotMode, boolean isMultiMode, float masterVolume, float speed, float pitch) {
        if (index < 0 || index >= 8 || uri == null) {
            return false;
        }
        this.isOneShotMode = isOneShotMode;
        this.isMultiMode = isMultiMode;
        this.masterVolume = masterVolume;
        this.loopSpeed = speed;
        this.loopPitch = pitch;

        if (this.mediaPlayers[index] != null && this.playing[index]) {
            pauseLoop(index);
            return true;
        }

        if (this.mediaPlayers[index] == null) {
            if (!prepareLoopPlayer(index, uri)) {
                return false;
            }
        }

        if (!this.isMultiMode) {
            for (int i = 0; i < this.mediaPlayers.length; i++) {
                if (i != index && this.playing[i]) {
                    pauseLoop(i);
                }
            }
        }

        MediaPlayer player = this.mediaPlayers[index];
        player.setLooping(!this.isOneShotMode);
        setPlaybackParams(player, this.loopSpeed, this.loopPitch);
        player.setVolume(this.masterVolume, this.masterVolume);
        player.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
            @Override
            public void onCompletion(MediaPlayer mp) {
                if (LoopService.this.isOneShotMode) {
                    LoopService.this.playing[index] = false;
                    mp.seekTo(0);
                    if (!hasActiveLoops()) {
                        stopForeground(false);
                        LoopService.this.hasForegroundNotification = false;
                    }
                }
            }
        });
        player.start();
        this.playing[index] = true;
        ensureForegroundNotification("Playing loop " + (index + 1));
        return true;
    }

    private boolean prepareLoopPlayer(int index, Uri uri) {
        try {
            MediaPlayer mp = MediaPlayer.create(this, uri);
            if (mp == null) {
                return false;
            }
            this.mediaPlayers[index] = mp;
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private void setPlaybackParams(MediaPlayer player, float speed, float pitch) {
        if (player == null || Build.VERSION.SDK_INT < Build.VERSION_CODES.M) {
            return;
        }
        try {
            PlaybackParams params = new PlaybackParams();
            params.setSpeed(speed);
            params.setPitch(pitch);
            player.setPlaybackParams(params);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean isLoopPlaying(int index) {
        return index >= 0 && index < this.playing.length && this.playing[index];
    }

    public int[] getActiveLoopIndexes() {
        int[] temp = new int[this.playing.length];
        int count = 0;
        for (int i = 0; i < this.playing.length; i++) {
            if (this.playing[i]) {
                temp[count++] = i;
            }
        }
        int[] result = new int[count];
        System.arraycopy(temp, 0, result, 0, count);
        return result;
    }

    public void stopAllLoops() {
        for (int i = 0; i < this.mediaPlayers.length; i++) {
            if (this.mediaPlayers[i] != null) {
                try {
                    if (this.mediaPlayers[i].isPlaying()) {
                        this.mediaPlayers[i].stop();
                    }
                    this.mediaPlayers[i].release();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                this.mediaPlayers[i] = null;
                this.playing[i] = false;
            }
        }
        stopForeground(true);
        this.hasForegroundNotification = false;
        stopSelf();
    }

    private void pauseLoop(int index) {
        MediaPlayer player = this.mediaPlayers[index];
        if (player != null && player.isPlaying()) {
            player.pause();
        }
        this.playing[index] = false;
        if (!hasActiveLoops()) {
            stopForeground(true);
            this.hasForegroundNotification = false;
        }
    }

    private boolean hasActiveLoops() {
        for (boolean active : this.playing) {
            if (active) {
                return true;
            }
        }
        return false;
    }
}
