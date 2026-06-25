.class public Lcom/pramod/octapadpromidi/LoopsActivity;
.super Landroid/app/Activity;
.source "LoopsActivity.java"


# static fields
.field private static final KEY_LOOP_INDEX:Ljava/lang/String; = "current_loop_index"

.field private static final LOOP_PAD_COUNT:I = 0x8

.field private static final MAX_LOOPS:I = 0x32

.field private static final PREF_NAME:Ljava/lang/String; = "OctapadSettings"

.field private static final REQ_LOAD_LOOP_FOLDER:I = 0x1773

.field private static final REQ_PICK_LOOP_WAV:I = 0x1771

.field private static final REQ_SAVE_LOOP_FOLDER:I = 0x1772


# instance fields
.field private advancedControlPanel:Landroid/view/View;

.field private btnAdvancedLoops:Landroid/widget/Button;

.field private btnBack:Landroid/widget/Button;

.field private btnEditLoops:Landroid/widget/Button;

.field private btnLoadLoop:Landroid/widget/Button;

.field private btnNextLoop:Landroid/widget/Button;

.field private btnPrevLoop:Landroid/widget/Button;

.field private btnRenameLoop:Landroid/widget/Button;

.field private btnSaveLoop:Landroid/widget/Button;

.field private btnSetBpm:Landroid/widget/Button;

.field private btnTapTempo:Landroid/widget/Button;

    .field private btnRepeat:Landroid/widget/Button;

.field private btnTempoPlus:Landroid/widget/Button;

.field private chkMultiMode:Landroid/widget/CheckBox;

.field private chkOneShotMode:Landroid/widget/CheckBox;

.field private currentLoopName:Ljava/lang/String;

.field private currentPitch:F

.field private currentSpeed:F

.field private editCustomBpm:Landroid/widget/EditText;

.field private editMode:Z

.field private globalReverb:Landroid/media/audiofx/PresetReverb;

.field private isMultiMode:Z

.field private isOneShotMode:Z

.field private isVisible:Z

.field private loopChannelIndex:I

.field private loopPads:[Landroid/widget/Button;

.field private loopUris:[Landroid/net/Uri;

.field private masterVolume:F

.field private mediaPlayers:[Landroid/media/MediaPlayer;

.field private midiManager:Landroid/media/midi/MidiManager;

.field private midiOutputPort:Landroid/media/midi/MidiOutputPort;

.field private openedMidiDevice:Landroid/media/midi/MidiDevice;

.field private pendingSaveLoopName:Ljava/lang/String;

.field private prefs:Landroid/content/SharedPreferences;

.field private reverbLevel:I

.field private seekLoopReverb:Landroid/widget/SeekBar;

.field private seekMasterVolume:Landroid/widget/SeekBar;

.field private seekPitch:Landroid/widget/SeekBar;

.field private seekTempo:Landroid/widget/SeekBar;

.field private selectedPad:I

.field private tapIndex:I

.field private tapTimes:[J

.field private txtLoopChannel:Landroid/widget/TextView;

.field private txtLoopReverbVal:Landroid/widget/TextView;

.field private txtLoopStatus:Landroid/widget/TextView;

.field private txtMasterVolVal:Landroid/widget/TextView;

.field private txtMidiStatus:Landroid/widget/TextView;

.field private txtPitchVal:Landroid/widget/TextView;

.field private txtTempoVal:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetadvancedControlPanel(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->advancedControlPanel:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbtnAdvancedLoops(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnAdvancedLoops:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbtnEditLoops(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnEditLoops:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentLoopName(Lcom/pramod/octapadpromidi/LoopsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentLoopName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPitch(Lcom/pramod/octapadpromidi/LoopsActivity;)F
    .locals 0

    iget p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentPitch:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentSpeed(Lcom/pramod/octapadpromidi/LoopsActivity;)F
    .locals 0

    iget p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentSpeed:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeteditCustomBpm(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->editCustomBpm:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditMode(Lcom/pramod/octapadpromidi/LoopsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->editMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisMultiMode(Lcom/pramod/octapadpromidi/LoopsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isMultiMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisOneShotMode(Lcom/pramod/octapadpromidi/LoopsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isOneShotMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetloopChannelIndex(Lcom/pramod/octapadpromidi/LoopsActivity;)I
    .locals 0

    iget p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopChannelIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetloopPads(Lcom/pramod/octapadpromidi/LoopsActivity;)[Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopPads:[Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmasterVolume(Lcom/pramod/octapadpromidi/LoopsActivity;)F
    .locals 0

    iget p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->masterVolume:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaPlayers(Lcom/pramod/octapadpromidi/LoopsActivity;)[Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmidiOutputPort(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/media/midi/MidiOutputPort;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->midiOutputPort:Landroid/media/midi/MidiOutputPort;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetopenedMidiDevice(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/media/midi/MidiDevice;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->openedMidiDevice:Landroid/media/midi/MidiDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprefs(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreverbLevel(Lcom/pramod/octapadpromidi/LoopsActivity;)I
    .locals 0

    iget p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->reverbLevel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetseekTempo(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->seekTempo:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtLoopChannel(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtLoopChannel:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtLoopStatus(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtLoopStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtMasterVolVal(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtMasterVolVal:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtMidiStatus(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtMidiStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtPitchVal(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtPitchVal:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtTempoVal(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtTempoVal:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentLoopName(Lcom/pramod/octapadpromidi/LoopsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentLoopName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentPitch(Lcom/pramod/octapadpromidi/LoopsActivity;F)V
    .locals 0

    iput p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentPitch:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentSpeed(Lcom/pramod/octapadpromidi/LoopsActivity;F)V
    .locals 0

    iput p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentSpeed:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputeditMode(Lcom/pramod/octapadpromidi/LoopsActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->editMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisMultiMode(Lcom/pramod/octapadpromidi/LoopsActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isMultiMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisOneShotMode(Lcom/pramod/octapadpromidi/LoopsActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isOneShotMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmasterVolume(Lcom/pramod/octapadpromidi/LoopsActivity;F)V
    .locals 0

    iput p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->masterVolume:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmidiOutputPort(Lcom/pramod/octapadpromidi/LoopsActivity;Landroid/media/midi/MidiOutputPort;)V
    .locals 0

    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->midiOutputPort:Landroid/media/midi/MidiOutputPort;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputopenedMidiDevice(Lcom/pramod/octapadpromidi/LoopsActivity;Landroid/media/midi/MidiDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->openedMidiDevice:Landroid/media/midi/MidiDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingSaveLoopName(Lcom/pramod/octapadpromidi/LoopsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->pendingSaveLoopName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputreverbLevel(Lcom/pramod/octapadpromidi/LoopsActivity;I)V
    .locals 0

    iput p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->reverbLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    const/16 v0, 0x8

    new-array v1, v0, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopPads:[Landroid/widget/Button;

    .line 82
    const-string v1, "LOOP 1"

    iput-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentLoopName:Ljava/lang/String;

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->pendingSaveLoopName:Ljava/lang/String;

    .line 84
    const/4 v1, 0x1

    iput v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopChannelIndex:I

    .line 85
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentSpeed:F

    .line 86
    iput v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentPitch:F

    .line 87
    iput v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->masterVolume:F

    .line 88
    const/4 v1, 0x0

    iput v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->reverbLevel:I

    .line 89
    iput-boolean v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isMultiMode:Z

    .line 90
    iput-boolean v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isOneShotMode:Z

    .line 91
    const/4 v2, 0x4

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->tapTimes:[J

    .line 92
    iput v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->tapIndex:I

    .line 93
    iput-boolean v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->editMode:Z

    .line 94
    iput v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->selectedPad:I

    .line 95
    new-array v1, v0, [Landroid/net/Uri;

    iput-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopUris:[Landroid/net/Uri;

    .line 96
    new-array v0, v0, [Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    return-void
.end method

.method static access$508(Lcom/pramod/octapadpromidi/LoopsActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/pramod/octapadpromidi/LoopsActivity;

    .line 99
    iget v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopChannelIndex:I

    .line 100
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopChannelIndex:I

    .line 101
    return v0
.end method

.method static access$510(Lcom/pramod/octapadpromidi/LoopsActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/pramod/octapadpromidi/LoopsActivity;

    .line 105
    iget v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopChannelIndex:I

    .line 106
    .local v0, "i":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopChannelIndex:I

    .line 107
    return v0
.end method

.method private applyPlaybackParams(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 502
    if-eqz p1, :cond_0

    .line 504
    :try_start_0
    iget v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->masterVolume:F

    .line 505
    .local v0, "f":F
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    .end local v0    # "f":F
    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 510
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 512
    :try_start_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    .line 513
    .local v0, "params":Landroid/media/PlaybackParams;
    iget v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentSpeed:F

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 514
    iget v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentPitch:F

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 515
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 518
    .end local v0    # "params":Landroid/media/PlaybackParams;
    goto :goto_1

    .line 516
    :catch_1
    move-exception v0

    .line 517
    .local v0, "e2":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 520
    .end local v0    # "e2":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method private hideSystemUI()V
    .locals 2

    .line 982
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 983
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 984
    return-void
.end method

.method private initPads()V
    .locals 8

    .line 523
    sget v0, Lcom/pramod/octapadpromidi/R$id;->loopPad1:I

    sget v1, Lcom/pramod/octapadpromidi/R$id;->loopPad2:I

    sget v2, Lcom/pramod/octapadpromidi/R$id;->loopPad3:I

    sget v3, Lcom/pramod/octapadpromidi/R$id;->loopPad4:I

    sget v4, Lcom/pramod/octapadpromidi/R$id;->loopPad5:I

    sget v5, Lcom/pramod/octapadpromidi/R$id;->loopPad6:I

    sget v6, Lcom/pramod/octapadpromidi/R$id;->loopPad7:I

    sget v7, Lcom/pramod/octapadpromidi/R$id;->loopPad8:I

    filled-new-array/range {v0 .. v7}, [I

    move-result-object v0

    .line 524
    .local v0, "padIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 525
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopPads:[Landroid/widget/Button;

    aget v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v2, v1

    .line 526
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopPads:[Landroid/widget/Button;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSoundEffectsEnabled(Z)V

    .line 527
    move v2, v1

    .line 528
    .local v2, "index":I
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopPads:[Landroid/widget/Button;

    aget-object v3, v3, v1

    new-instance v4, Lcom/pramod/octapadpromidi/LoopsActivity$15;

    invoke-direct {v4, p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity$15;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 524
    .end local v2    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 544
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private loadLoopFromFolder(Landroid/net/Uri;)V
    .locals 17
    .param p1, "folderUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 812
    move-object/from16 v1, p0

    const-string v2, "isOneShotMode"

    const-string v3, "isMultiMode"

    const-string v4, "reverbLevel"

    const-string v5, "masterVolume"

    const-string v6, "pitch"

    const-string v7, "speed"

    const-string v0, "_loop.mcn"

    const/4 v8, 0x0

    .line 814
    .local v8, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static/range {p0 .. p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v10

    .line 815
    .local v10, "loopFolder":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v10, :cond_13

    invoke-virtual {v10}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 816
    invoke-virtual {v10}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v11

    .line 817
    .local v11, "folderName":Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 818
    const-string v12, ""

    invoke-virtual {v11, v0, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, "strReplace":Ljava/lang/String;
    iput-object v0, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->currentLoopName:Ljava/lang/String;

    .line 820
    iget-object v12, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->txtLoopChannel:Landroid/widget/TextView;

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v12, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loop_name_ch_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->loopChannelIndex:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->currentLoopName:Ljava/lang/String;

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 823
    .end local v0    # "strReplace":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v12, 0x8

    if-ge v0, v12, :cond_2

    .line 824
    iget-object v12, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->loopUris:[Landroid/net/Uri;

    const/4 v13, 0x0

    aput-object v13, v12, v0

    .line 825
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loop_pad_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v0, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".wav"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 826
    .local v12, "fileName":Ljava/lang/String;
    invoke-virtual {v10, v12}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v13

    .line 827
    .local v13, "wav":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v13, :cond_1

    .line 828
    iget-object v14, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->loopUris:[Landroid/net/Uri;

    invoke-virtual {v13}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v15

    aput-object v15, v14, v0

    .line 823
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v13    # "wav":Landroidx/documentfile/provider/DocumentFile;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 831
    .end local v0    # "i":I
    :cond_2
    const-string v0, "loop_data.json"

    invoke-virtual {v10, v0}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object v12, v0

    .line 832
    .local v12, "dataFile":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v12, :cond_c

    .line 833
    const/4 v13, 0x0

    .line 835
    .local v13, "lastException":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v12}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v0

    .line 838
    goto :goto_1

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/Exception;
    move-object v13, v0

    .line 839
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v8, :cond_a

    .line 840
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v14, v0

    .line 841
    .local v14, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    .line 843
    .local v15, "sb":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 844
    .local v16, "line":Ljava/lang/String;
    move-object/from16 v9, v16

    .end local v16    # "line":Ljava/lang/String;
    .local v9, "line":Ljava/lang/String;
    if-nez v9, :cond_8

    .line 845
    nop

    .line 856
    .end local v9    # "line":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 857
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 858
    .local v9, "jsonData":Lorg/json/JSONObject;
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v0, :cond_3

    .line 860
    move-object/from16 v16, v8

    .end local v8    # "in":Ljava/io/InputStream;
    .local v16, "in":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v0, v7

    iput v0, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->currentSpeed:F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 863
    goto :goto_3

    .line 861
    :catch_1
    move-exception v0

    .line 862
    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v13, v0

    goto :goto_3

    .line 858
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "in":Ljava/io/InputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    :cond_3
    move-object/from16 v16, v8

    .line 865
    .end local v8    # "in":Ljava/io/InputStream;
    .restart local v16    # "in":Ljava/io/InputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 866
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v0, v6

    iput v0, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->currentPitch:F

    .line 868
    :cond_4
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 869
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v0, v5

    iput v0, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->masterVolume:F

    .line 871
    :cond_5
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 872
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->reverbLevel:I

    .line 874
    :cond_6
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 875
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->isMultiMode:Z

    .line 877
    :cond_7
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 878
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->isOneShotMode:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 848
    .end local v16    # "in":Ljava/io/InputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    .local v9, "line":Ljava/lang/String;
    :cond_8
    move-object/from16 v16, v8

    .end local v8    # "in":Ljava/io/InputStream;
    .restart local v16    # "in":Ljava/io/InputStream;
    :try_start_5
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 851
    goto :goto_4

    .line 849
    :catch_2
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 850
    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v13, v8

    .line 852
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    if-eqz v13, :cond_9

    .line 853
    :try_start_6
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 913
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "loopFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v11    # "folderName":Ljava/lang/String;
    .end local v12    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .end local v13    # "lastException":Ljava/lang/Exception;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v0

    move-object/from16 v8, v16

    goto :goto_7

    .line 855
    .restart local v10    # "loopFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v11    # "folderName":Ljava/lang/String;
    .restart local v12    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v13    # "lastException":Ljava/lang/Exception;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    :goto_5
    move-object/from16 v8, v16

    goto/16 :goto_2

    .line 913
    .end local v10    # "loopFolder":Landroidx/documentfile/provider/DocumentFile;
    .end local v11    # "folderName":Ljava/lang/String;
    .end local v12    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .end local v13    # "lastException":Ljava/lang/Exception;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "in":Ljava/io/InputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object/from16 v16, v8

    .end local v8    # "in":Ljava/io/InputStream;
    .restart local v16    # "in":Ljava/io/InputStream;
    goto :goto_7

    .line 839
    .end local v16    # "in":Ljava/io/InputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v10    # "loopFolder":Landroidx/documentfile/provider/DocumentFile;
    .restart local v11    # "folderName":Ljava/lang/String;
    .restart local v12    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local v13    # "lastException":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v16, v8

    .line 882
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v13    # "lastException":Ljava/lang/Exception;
    .restart local v16    # "in":Ljava/io/InputStream;
    :cond_b
    :goto_6
    move-object/from16 v8, v16

    .end local v16    # "in":Ljava/io/InputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    :cond_c
    :try_start_7
    iget-object v0, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->seekTempo:Landroid/widget/SeekBar;

    .line 883
    .local v0, "seekBar":Landroid/widget/SeekBar;
    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v0, :cond_d

    .line 884
    iget v3, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->currentSpeed:F

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 886
    :cond_d
    iget-object v3, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->seekPitch:Landroid/widget/SeekBar;

    .line 887
    .local v3, "seekBar2":Landroid/widget/SeekBar;
    if-eqz v3, :cond_e

    .line 888
    iget v4, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->currentPitch:F

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 890
    :cond_e
    iget-object v4, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->seekMasterVolume:Landroid/widget/SeekBar;

    .line 891
    .local v4, "seekBar3":Landroid/widget/SeekBar;
    if-eqz v4, :cond_f

    .line 892
    iget v5, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->masterVolume:F

    mul-float/2addr v5, v2

    float-to-int v2, v5

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 894
    :cond_f
    iget-object v2, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->seekLoopReverb:Landroid/widget/SeekBar;

    .line 895
    .local v2, "seekBar4":Landroid/widget/SeekBar;
    if-eqz v2, :cond_10

    .line 896
    iget v5, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->reverbLevel:I

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 898
    :cond_10
    iget-object v5, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->chkMultiMode:Landroid/widget/CheckBox;

    .line 899
    .local v5, "checkBox":Landroid/widget/CheckBox;
    if-eqz v5, :cond_11

    .line 900
    iget-boolean v6, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->isMultiMode:Z

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 902
    :cond_11
    iget-object v6, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->chkOneShotMode:Landroid/widget/CheckBox;

    .line 903
    .local v6, "checkBox2":Landroid/widget/CheckBox;
    if-eqz v6, :cond_12

    .line 904
    iget-boolean v7, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->isOneShotMode:Z

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 906
    :cond_12
    iget v7, v1, Lcom/pramod/octapadpromidi/LoopsActivity;->reverbLevel:I

    invoke-virtual {v1, v7}, Lcom/pramod/octapadpromidi/LoopsActivity;->updateReverbLevel(I)V

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->saveLoopsToMemory()V

    .line 908
    invoke-virtual/range {p0 .. p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->loadLoopsFromMemory()V

    .line 909
    const-string v7, "Loop Loaded Successfully!"

    const/4 v9, 0x0

    invoke-static {v1, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 910
    return-void

    .line 912
    .end local v0    # "seekBar":Landroid/widget/SeekBar;
    .end local v2    # "seekBar4":Landroid/widget/SeekBar;
    .end local v3    # "seekBar2":Landroid/widget/SeekBar;
    .end local v4    # "seekBar3":Landroid/widget/SeekBar;
    .end local v5    # "checkBox":Landroid/widget/CheckBox;
    .end local v6    # "checkBox2":Landroid/widget/CheckBox;
    .end local v11    # "folderName":Ljava/lang/String;
    .end local v12    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    :cond_13
    const-string v0, "Invalid folder!"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 916
    .end local v10    # "loopFolder":Landroidx/documentfile/provider/DocumentFile;
    goto :goto_8

    .line 913
    :catch_5
    move-exception v0

    .line 914
    .local v0, "e4":Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 917
    .end local v0    # "e4":Ljava/lang/Exception;
    :goto_8
    return-void
.end method

.method private prepareLoopPlayer(I)Z
    .locals 6
    .param p1, "index"    # I

    .line 1193
    const/4 v0, 0x0

    if-ltz p1, :cond_4

    const/16 v1, 0x8

    if-ge p1, v1, :cond_4

    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopUris:[Landroid/net/Uri;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1197
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p1

    .line 1198
    .local v1, "existing":Landroid/media/MediaPlayer;
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1199
    return v2

    .line 1201
    :cond_1
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopUris:[Landroid/net/Uri;

    aget-object v3, v3, p1

    invoke-static {p0, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v3

    .line 1202
    .local v3, "mp":Landroid/media/MediaPlayer;
    if-eqz v3, :cond_2

    new-instance v4, Landroid/media/AudioAttributes$Builder;
    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V
    const/4 v5, 0x1
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v4
    const/4 v5, 0x2
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v4
    const/4 v5, 0x1
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v4
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    move-result-object v4
    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    :cond_2

    .line 1203
    return v0

    .line 1205
    :cond_2
    iget-boolean v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isOneShotMode:Z

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    move v4, v0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1206
    iget-object v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aput-object v3, v4, p1

    .line 1207
    invoke-virtual {p0, p1}, Lcom/pramod/octapadpromidi/LoopsActivity;->preloadLoop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    return v2

    .line 1209
    .end local v1    # "existing":Landroid/media/MediaPlayer;
    .end local v3    # "mp":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v1

    .line 1210
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1211
    return v0

    .line 1194
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return v0
.end method

.method private saveLoopToFolder(Landroid/net/Uri;)V
    .locals 10
    .param p1, "folderUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    const-string v0, "loop_data.json"

    const-string v1, "_loop.mcn"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    .line 756
    .local v3, "root":Landroidx/documentfile/provider/DocumentFile;
    if-nez v3, :cond_0

    .line 757
    const-string v0, "Folder access error!"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 758
    return-void

    .line 760
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentLoopName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v4

    .line 761
    .local v4, "loopFolder":Landroidx/documentfile/provider/DocumentFile;
    if-nez v4, :cond_1

    .line 762
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentLoopName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/documentfile/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    move-object v4, v1

    .line 764
    :cond_1
    if-nez v4, :cond_2

    .line 765
    const-string v0, "Cannot create loop folder!"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 766
    return-void

    .line 768
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v1, v5, :cond_5

    .line 769
    iget-object v5, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopUris:[Landroid/net/Uri;

    aget-object v5, v5, v1

    if-eqz v5, :cond_4

    .line 770
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loop_pad_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".wav"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 771
    .local v5, "fileName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v6

    .line 772
    .local v6, "old":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v6, :cond_3

    .line 773
    invoke-virtual {v6}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    .line 775
    :cond_3
    const-string v7, "audio/wav"

    invoke-virtual {v4, v7, v5}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v7

    .line 776
    .local v7, "dest":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v7, :cond_4

    .line 777
    iget-object v8, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopUris:[Landroid/net/Uri;

    aget-object v8, v8, v1

    invoke-virtual {v7}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v8, v9}, Lcom/pramod/octapadpromidi/FileUtil;->copyUriToUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 768
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "old":Landroidx/documentfile/provider/DocumentFile;
    .end local v7    # "dest":Landroidx/documentfile/provider/DocumentFile;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 781
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {v4, v0}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    .line 782
    .local v1, "dataFile":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v1, :cond_6

    .line 783
    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    .line 785
    :cond_6
    const-string v5, "application/json"

    invoke-virtual {v4, v5, v0}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 786
    .local v0, "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v0, :cond_8

    .line 788
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 789
    .local v5, "jsonData":Lorg/json/JSONObject;
    const-string v6, "speed"

    iget v7, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentSpeed:F

    float-to-double v7, v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 790
    const-string v6, "pitch"

    iget v7, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentPitch:F

    float-to-double v7, v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 791
    const-string v6, "masterVolume"

    iget v7, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->masterVolume:F

    float-to-double v7, v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 792
    const-string v6, "reverbLevel"

    iget v7, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->reverbLevel:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 793
    const-string v6, "isMultiMode"

    iget-boolean v7, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isMultiMode:Z

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 794
    const-string v6, "isOneShotMode"

    iget-boolean v7, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isOneShotMode:Z

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 795
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 796
    .local v6, "out":Ljava/io/OutputStream;
    if-eqz v6, :cond_7

    .line 797
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 798
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 802
    .end local v5    # "jsonData":Lorg/json/JSONObject;
    .end local v6    # "out":Ljava/io/OutputStream;
    :cond_7
    goto :goto_1

    .line 800
    :catch_0
    move-exception v5

    .line 801
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 804
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_1
    const-string v5, "Loop Saved Successfully!"

    invoke-static {p0, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 808
    .end local v0    # "dataFile2":Landroidx/documentfile/provider/DocumentFile;
    .end local v1    # "dataFile":Landroidx/documentfile/provider/DocumentFile;
    .end local v3    # "root":Landroidx/documentfile/provider/DocumentFile;
    .end local v4    # "loopFolder":Landroidx/documentfile/provider/DocumentFile;
    goto :goto_2

    .line 805
    :catch_1
    move-exception v0

    .line 806
    .local v0, "e2":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save Error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 809
    .end local v0    # "e2":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private setupControls()V
    .locals 8

    .line 403
    new-instance v0, Lcom/pramod/octapadpromidi/LoopsActivity$13;

    invoke-direct {v0, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$13;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    .line 448
    .local v0, "listener":Landroid/widget/SeekBar$OnSeekBarChangeListener;
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->seekTempo:Landroid/widget/SeekBar;

    .line 449
    .local v1, "seekBar":Landroid/widget/SeekBar;
    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->seekPitch:Landroid/widget/SeekBar;

    .line 453
    .local v2, "seekBar2":Landroid/widget/SeekBar;
    if-eqz v2, :cond_1

    .line 454
    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 456
    :cond_1
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->seekMasterVolume:Landroid/widget/SeekBar;

    .line 457
    .local v3, "seekBar3":Landroid/widget/SeekBar;
    if-eqz v3, :cond_2

    .line 458
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 460
    :cond_2
    iget-object v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->seekLoopReverb:Landroid/widget/SeekBar;

    .line 461
    .local v4, "seekBar4":Landroid/widget/SeekBar;
    if-eqz v4, :cond_3

    .line 462
    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 464
    :cond_3
    new-instance v5, Lcom/pramod/octapadpromidi/LoopsActivity$14;

    invoke-direct {v5, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$14;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    .line 481
    .local v5, "checkListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    iget-object v6, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->chkMultiMode:Landroid/widget/CheckBox;

    .line 482
    .local v6, "checkBox":Landroid/widget/CheckBox;
    if-eqz v6, :cond_4

    .line 483
    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 485
    :cond_4
    iget-object v7, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->chkOneShotMode:Landroid/widget/CheckBox;

    .line 486
    .local v7, "checkBox2":Landroid/widget/CheckBox;
    if-eqz v7, :cond_5

    .line 487
    invoke-virtual {v7, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 489
    :cond_5
    return-void
.end method

.method private setupMidi()V
    .locals 6

    .line 1019
    nop

    .line 1020
    const-string v0, "midi"

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiManager;

    .line 1021
    .local v0, "midiManager":Landroid/media/midi/MidiManager;
    iput-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->midiManager:Landroid/media/midi/MidiManager;

    .line 1022
    if-nez v0, :cond_0

    .line 1023
    return-void

    .line 1025
    :cond_0
    invoke-virtual {v0}, Landroid/media/midi/MidiManager;->getDevices()[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    .line 1026
    .local v1, "infos":[Landroid/media/midi/MidiDeviceInfo;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1027
    .local v4, "info":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {p0, v4}, Lcom/pramod/octapadpromidi/LoopsActivity;->openMidiDevice(Landroid/media/midi/MidiDeviceInfo;)V

    .line 1026
    .end local v4    # "info":Landroid/media/midi/MidiDeviceInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1029
    :cond_1
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->midiManager:Landroid/media/midi/MidiManager;

    new-instance v3, Lcom/pramod/octapadpromidi/LoopsActivity$20;

    invoke-direct {v3, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$20;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    new-instance v4, Landroid/os/Handler;

    .line 1048
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1029
    invoke-virtual {v2, v3, v4}, Landroid/media/midi/MidiManager;->registerDeviceCallback(Landroid/media/midi/MidiManager$DeviceCallback;Landroid/os/Handler;)V

    .line 1050
    .end local v0    # "midiManager":Landroid/media/midi/MidiManager;
    .end local v1    # "infos":[Landroid/media/midi/MidiDeviceInfo;
    return-void
.end method

.method private setupReverb()V
    .locals 3

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->globalReverb:Landroid/media/audiofx/PresetReverb;

    .line 357
    .local v0, "presetReverb":Landroid/media/audiofx/PresetReverb;
    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Landroid/media/audiofx/PresetReverb;->release()V

    .line 360
    :cond_0
    new-instance v1, Landroid/media/audiofx/PresetReverb;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/media/audiofx/PresetReverb;-><init>(II)V

    iput-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->globalReverb:Landroid/media/audiofx/PresetReverb;

    .line 361
    iget v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->reverbLevel:I

    invoke-virtual {p0, v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->updateReverbLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v0    # "presetReverb":Landroid/media/audiofx/PresetReverb;
    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private showEditOptions(I)V
    .locals 4
    .param p1, "index"    # I

    .line 616
    const-string v0, "Select Loop Audio"

    const-string v1, "Clear Loop"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "options":[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EDIT LOOP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/pramod/octapadpromidi/LoopsActivity$17;

    invoke-direct {v2, p0, p1}, Lcom/pramod/octapadpromidi/LoopsActivity$17;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    .line 633
    const-string v3, "Cancel"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 634
    return-void
.end method

.method private toggleLoop(I)V
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopUris:[Landroid/net/Uri;

    aget-object v0, v0, p1

    const-string v1, "LOOP "

    if-nez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtLoopStatus:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IS EMPTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    .line 563
    .local v0, "mp":Landroid/media/MediaPlayer;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 564
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 565
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 566
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtLoopStatus:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " STOPPED"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopPads:[Landroid/widget/Button;

    aget-object v1, v1, p1

    sget v2, Lcom/pramod/octapadpromidi/R$drawable;->pad_black_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 568
    return-void

    .line 570
    :cond_1
    if-nez v0, :cond_3

    .line 571
    invoke-direct {p0, p1}, Lcom/pramod/octapadpromidi/LoopsActivity;->prepareLoopPlayer(I)Z

    move-result v1

    const-string v3, "ERROR LOADING LOOP "

    if-nez v1, :cond_2

    .line 572
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtLoopStatus:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    return-void

    .line 575
    :cond_2
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v0, v1, p1

    .line 576
    if-nez v0, :cond_3

    .line 577
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtLoopStatus:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    return-void

    .line 581
    :cond_3
    iget-boolean v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isOneShotMode:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 582
    new-instance v1, Lcom/pramod/octapadpromidi/LoopsActivity$16;

    invoke-direct {v1, p0, p1}, Lcom/pramod/octapadpromidi/LoopsActivity$16;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 592
    invoke-direct {p0, v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->applyPlaybackParams(Landroid/media/MediaPlayer;)V

    .line 593
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->globalReverb:Landroid/media/audiofx/PresetReverb;

    .line 594
    .local v1, "presetReverb":Landroid/media/audiofx/PresetReverb;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/media/audiofx/PresetReverb;->getEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 596
    :try_start_0
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->globalReverb:Landroid/media/audiofx/PresetReverb;

    invoke-virtual {v3}, Landroid/media/audiofx/PresetReverb;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->attachAuxEffect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    goto :goto_0

    .line 597
    :catch_0
    move-exception v3

    .line 598
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 601
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 602
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtLoopStatus:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PLAYING LOOP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopPads:[Landroid/widget/Button;

    aget-object v3, v3, p1

    sget v4, Lcom/pramod/octapadpromidi/R$drawable;->pad_blue_glow_selector:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 604
    iget-boolean v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isMultiMode:Z

    if-nez v3, :cond_6

    .line 605
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_6

    .line 606
    if-eq v3, p1, :cond_5

    iget-object v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v4, v4, v3

    move-object v5, v4

    .local v5, "mediaPlayer":Landroid/media/MediaPlayer;
    if-eqz v4, :cond_5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 607
    iget-object v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->pause()V

    .line 608
    iget-object v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 609
    iget-object v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopPads:[Landroid/widget/Button;

    aget-object v4, v4, v3

    sget v6, Lcom/pramod/octapadpromidi/R$drawable;->pad_black_selector:I

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 605
    .end local v5    # "mediaPlayer":Landroid/media/MediaPlayer;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 613
    .end local v3    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public clearLoop(I)V
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    .line 639
    .local v0, "mediaPlayer":Landroid/media/MediaPlayer;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 640
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 643
    :cond_0
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 644
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aput-object v1, v2, p1

    .line 646
    :cond_1
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopUris:[Landroid/net/Uri;

    aput-object v1, v2, p1

    .line 647
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopPads:[Landroid/widget/Button;

    aget-object v1, v1, p1

    sget v2, Lcom/pramod/octapadpromidi/R$drawable;->pad_black_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 648
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->saveLoopsToMemory()V

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Cleared!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 650
    return-void
.end method

.method public closeMidiDevice()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1104
    :try_start_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->midiOutputPort:Landroid/media/midi/MidiOutputPort;

    .line 1105
    .local v0, "midiOutputPort":Landroid/media/midi/MidiOutputPort;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1106
    invoke-virtual {v0}, Landroid/media/midi/MidiOutputPort;->close()V

    .line 1107
    iput-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->midiOutputPort:Landroid/media/midi/MidiOutputPort;

    .line 1109
    :cond_0
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->openedMidiDevice:Landroid/media/midi/MidiDevice;

    .line 1110
    .local v2, "midiDevice":Landroid/media/midi/MidiDevice;
    if-eqz v2, :cond_1

    .line 1111
    invoke-virtual {v2}, Landroid/media/midi/MidiDevice;->close()V

    .line 1112
    iput-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->openedMidiDevice:Landroid/media/midi/MidiDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    .end local v0    # "midiOutputPort":Landroid/media/midi/MidiOutputPort;
    .end local v2    # "midiDevice":Landroid/media/midi/MidiDevice;
    :cond_1
    goto :goto_0

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1117
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public handleMidiNoteOn(BB)V
    .locals 3
    .param p1, "note"    # B
    .param p2, "velocity"    # B

    iget-boolean v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 1121
    :cond_0
    const/4 v0, -0x1

    .line 1122
    .local v0, "padIndex":I
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1150
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1147
    :pswitch_2
    const/4 v0, 0x6

    .line 1148
    goto :goto_0

    .line 1144
    :pswitch_3
    const/4 v0, 0x1

    .line 1145
    goto :goto_0

    .line 1138
    :pswitch_4
    const/4 v0, 0x7

    .line 1139
    goto :goto_0

    .line 1134
    :pswitch_5
    const/4 v0, 0x3

    .line 1135
    goto :goto_0

    .line 1131
    :pswitch_6
    const/4 v0, 0x5

    .line 1132
    goto :goto_0

    .line 1127
    :pswitch_7
    const/4 v0, 0x2

    .line 1128
    goto :goto_0

    .line 1124
    :pswitch_8
    const/4 v0, 0x4

    .line 1125
    nop

    .line 1153
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1154
    rem-int/lit8 v0, p1, 0x8

    .line 1156
    :cond_1
    move v1, v0

    .line 1157
    .local v1, "finalPadIndex":I
    new-instance v2, Lcom/pramod/octapadpromidi/LoopsActivity$22;

    invoke-direct {v2, p0, v1}, Lcom/pramod/octapadpromidi/LoopsActivity$22;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;I)V

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1173
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public handlePadClick(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 548
    iput p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->selectedPad:I

    .line 549
    iget-boolean v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->editMode:Z

    if-eqz v0, :cond_0

    .line 550
    invoke-direct {p0, p1}, Lcom/pramod/octapadpromidi/LoopsActivity;->showEditOptions(I)V

    goto :goto_0

    .line 552
    :cond_0
    invoke-direct {p0, p1}, Lcom/pramod/octapadpromidi/LoopsActivity;->toggleLoop(I)V

    .line 554
    :goto_0
    return-void
.end method

.method public handleTapTempo()V
    .locals 17

    .line 320
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 321
    .local v1, "now":J
    iget-object v3, v0, Lcom/pramod/octapadpromidi/LoopsActivity;->tapTimes:[J

    .line 322
    .local v3, "jArr":[J
    iget v4, v0, Lcom/pramod/octapadpromidi/LoopsActivity;->tapIndex:I

    .line 323
    .local v4, "i":I
    aput-wide v1, v3, v4

    .line 324
    add-int/lit8 v5, v4, 0x1

    rem-int/lit8 v5, v5, 0x4

    iput v5, v0, Lcom/pramod/octapadpromidi/LoopsActivity;->tapIndex:I

    .line 325
    const/4 v5, 0x0

    .line 326
    .local v5, "validTaps":I
    const-wide/16 v6, 0x0

    .line 327
    .local v6, "totalDelta":J
    const/4 v8, 0x0

    .local v8, "i2":I
    :goto_0
    const/4 v9, 0x3

    if-ge v8, v9, :cond_3

    .line 328
    iget v9, v0, Lcom/pramod/octapadpromidi/LoopsActivity;->tapIndex:I

    .line 329
    .local v9, "i3":I
    add-int/lit8 v10, v9, -0x1

    sub-int/2addr v10, v8

    add-int/lit8 v10, v10, 0x4

    rem-int/lit8 v10, v10, 0x4

    .line 330
    .local v10, "current":I
    add-int/lit8 v11, v9, -0x2

    sub-int/2addr v11, v8

    add-int/lit8 v11, v11, 0x4

    rem-int/lit8 v11, v11, 0x4

    .line 331
    .local v11, "previous":I
    iget-object v12, v0, Lcom/pramod/octapadpromidi/LoopsActivity;->tapTimes:[J

    .line 332
    .local v12, "jArr2":[J
    aget-wide v13, v12, v10

    aget-wide v15, v12, v11

    sub-long/2addr v13, v15

    .line 333
    .local v13, "delta":J
    const-wide/16 v15, 0xfa

    cmp-long v15, v13, v15

    if-lez v15, :cond_1

    const-wide/16 v15, 0x7d0

    cmp-long v15, v13, v15

    if-ltz v15, :cond_0

    goto :goto_1

    .line 338
    :cond_0
    add-long/2addr v6, v13

    .line 339
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 334
    :cond_1
    :goto_1
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-eqz v15, :cond_2

    .line 335
    goto :goto_3

    .line 327
    .end local v9    # "i3":I
    .end local v10    # "current":I
    .end local v11    # "previous":I
    .end local v12    # "jArr2":[J
    .end local v13    # "delta":J
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 342
    .end local v8    # "i2":I
    :cond_3
    :goto_3
    if-lez v5, :cond_4

    .line 343
    int-to-long v8, v5

    div-long v8, v6, v8

    .line 344
    .local v8, "avgDelta":J
    const v10, 0x476a6000    # 60000.0f

    long-to-float v11, v8

    div-float/2addr v10, v11

    .line 345
    .local v10, "bpm":F
    const/high16 v11, 0x42f00000    # 120.0f

    div-float v11, v10, v11

    .line 346
    .local v11, "speed":F
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const v13, 0x3dcccccd    # 0.1f

    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 347
    .local v12, "speed2":F
    iget-object v13, v0, Lcom/pramod/octapadpromidi/LoopsActivity;->seekTempo:Landroid/widget/SeekBar;

    .line 348
    .local v13, "seekBar":Landroid/widget/SeekBar;
    if-eqz v13, :cond_4

    .line 349
    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v14, v12

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 352
    .end local v8    # "avgDelta":J
    .end local v10    # "bpm":F
    .end local v11    # "speed":F
    .end local v12    # "speed2":F
    .end local v13    # "seekBar":Landroid/widget/SeekBar;
    :cond_4
    return-void
.end method

.method public loadLoopsFromMemory()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 934
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    .line 935
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    .line 936
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    if-eqz v1, :cond_1

    .line 937
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 938
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 940
    :cond_0
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 941
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aput-object v2, v3, v0

    .line 943
    :cond_1
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopUris:[Landroid/net/Uri;

    aput-object v2, v3, v0

    .line 944
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopPads:[Landroid/widget/Button;

    aget-object v2, v2, v0

    .line 945
    .local v2, "button":Landroid/widget/Button;
    if-eqz v2, :cond_2

    .line 946
    sget v3, Lcom/pramod/octapadpromidi/R$drawable;->pad_black_selector:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 934
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v2    # "button":Landroid/widget/Button;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 949
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtLoopStatus:Landroid/widget/TextView;

    .line 950
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_4

    .line 951
    const-string v3, "TAP A PAD TO PLAY/STOP LOOP"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    :cond_4
    const/4 v3, 0x0

    .local v3, "i2":I
    :goto_1
    if-ge v3, v1, :cond_8

    .line 954
    iget-object v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loop_uri_ch_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopChannelIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 955
    .local v4, "uriStr":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 956
    iget-object v5, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopUris:[Landroid/net/Uri;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v5, v3

    .line 958
    :try_start_0
    iget-object v5, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopUris:[Landroid/net/Uri;

    aget-object v6, v6, v3

    invoke-static {p0, v6}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v6

    if-eqz v6, :cond_6

    new-instance v7, Landroid/media/AudioAttributes$Builder;
    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V
    const/4 v8, 0x1
    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v7
    const/4 v8, 0x2
    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v7
    const/4 v8, 0x1
    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v7
    invoke-virtual {v7}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    move-result-object v7
    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    if-eqz v6, :cond_6

    new-instance v7, Landroid/media/AudioAttributes$Builder;
    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V
    const/4 v8, 0x1
    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v7
    const/4 v8, 0x2
    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v7
    const/4 v8, 0x1
    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v7
    invoke-virtual {v7}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    move-result-object v7
    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    aput-object v6, v5, v3

    .line 959
    iget-object v5, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v5, v5, v3

    .line 960
    .local v5, "mediaPlayer2":Landroid/media/MediaPlayer;
    if-eqz v5, :cond_6

    .line 961
    iget-boolean v6, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isOneShotMode:Z

    if-nez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 963
    invoke-virtual {p0, v3}, Lcom/pramod/octapadpromidi/LoopsActivity;->preloadLoop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    .end local v5    # "mediaPlayer2":Landroid/media/MediaPlayer;
    :cond_6
    goto :goto_3

    .line 965
    :catch_0
    move-exception v5

    .line 966
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 967
    iget-object v6, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopUris:[Landroid/net/Uri;

    aput-object v2, v6, v3

    .line 953
    .end local v4    # "uriStr":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 971
    .end local v3    # "i2":I
    :cond_8
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 654
    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 658
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 659
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 660
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 661
    return-void

    .line 663
    :cond_1
    const/16 v1, 0x1771

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne p1, v1, :cond_4

    .line 664
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v4

    .line 666
    .local v1, "takeFlags":I
    :try_start_0
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    goto :goto_0

    .line 667
    :catch_0
    move-exception v4

    .line 668
    .local v4, "e":Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 670
    .end local v4    # "e":Ljava/lang/SecurityException;
    :goto_0
    iget-object v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopUris:[Landroid/net/Uri;

    .line 671
    .local v4, "uriArr":[Landroid/net/Uri;
    iget v5, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->selectedPad:I

    .line 672
    .local v5, "i":I
    aput-object v0, v4, v5

    .line 673
    iget-object v6, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v6, v6, v5

    .line 674
    .local v6, "mediaPlayer":Landroid/media/MediaPlayer;
    if-eqz v6, :cond_2

    .line 675
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V

    .line 676
    iget-object v7, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    iget v8, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->selectedPad:I

    aput-object v2, v7, v8

    .line 678
    :cond_2
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    iget v7, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->selectedPad:I

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v8

    if-eqz v8, :cond_3

    new-instance v9, Landroid/media/AudioAttributes$Builder;
    invoke-direct {v9}, Landroid/media/AudioAttributes$Builder;-><init>()V
    const/4 v4, 0x1
    invoke-virtual {v9, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v9
    const/4 v4, 0x2
    invoke-virtual {v9, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v9
    const/4 v4, 0x1
    invoke-virtual {v9, v4}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v9
    invoke-virtual {v9}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    move-result-object v9
    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    aput-object v8, v2, v7

    .line 679
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    iget v7, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->selectedPad:I

    aget-object v2, v2, v7

    .line 680
    .local v2, "mediaPlayer2":Landroid/media/MediaPlayer;
    if-eqz v2, :cond_3

    .line 681
    iget-boolean v7, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isOneShotMode:Z

    xor-int/2addr v3, v7

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 682
    iget v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->selectedPad:I

    invoke-virtual {p0, v3}, Lcom/pramod/octapadpromidi/LoopsActivity;->preloadLoop(I)V

    .line 684
    :cond_3
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->saveLoopsToMemory()V

    .line 685
    const-string v3, "Loop Audio Loaded!"

    const/4 v7, 0x0

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 686
    .end local v1    # "takeFlags":I
    .end local v2    # "mediaPlayer2":Landroid/media/MediaPlayer;
    .end local v4    # "uriArr":[Landroid/net/Uri;
    .end local v5    # "i":I
    .end local v6    # "mediaPlayer":Landroid/media/MediaPlayer;
    goto :goto_2

    :cond_4
    const/16 v1, 0x1772

    if-ne p1, v1, :cond_6

    .line 688
    :try_start_1
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 689
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->pendingSaveLoopName:Ljava/lang/String;

    .line 690
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 691
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->pendingSaveLoopName:Ljava/lang/String;

    .line 692
    .local v3, "str2":Ljava/lang/String;
    iput-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentLoopName:Ljava/lang/String;

    .line 693
    iget-object v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtLoopChannel:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loop_name_ch_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopChannelIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentLoopName:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 696
    .end local v3    # "str2":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->saveLoopToFolder(Landroid/net/Uri;)V

    .line 697
    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->pendingSaveLoopName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "str":Ljava/lang/String;
    goto :goto_1

    .line 698
    :catch_1
    move-exception v1

    .line 699
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 700
    .end local v1    # "e2":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 701
    :cond_6
    const/16 v1, 0x1773

    if-ne p1, v1, :cond_7

    .line 703
    :try_start_2
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 704
    invoke-direct {p0, v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->loadLoopFromFolder(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 707
    goto :goto_2

    .line 705
    :catch_2
    move-exception v1

    .line 706
    .local v1, "e3":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 709
    .end local v1    # "e3":Ljava/lang/Exception;
    :cond_7
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 710
    return-void

    .line 655
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_8
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 656
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    sget v0, Lcom/pramod/octapadpromidi/R$layout;->activity_loops:I

    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->setContentView(I)V

    .line 114
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->hideSystemUI()V

    .line 115
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->setupMidi()V

    .line 116
    const-string v0, "OctapadSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    iput-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->prefs:Landroid/content/SharedPreferences;

    .line 118
    const-string v2, "current_loop_index"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopChannelIndex:I

    .line 119
    sget v2, Lcom/pramod/octapadpromidi/R$id;->btnBack:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnBack:Landroid/widget/Button;

    .line 120
    sget v2, Lcom/pramod/octapadpromidi/R$id;->btnEditLoops:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnEditLoops:Landroid/widget/Button;

    .line 121
    sget v2, Lcom/pramod/octapadpromidi/R$id;->btnAdvancedLoops:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnAdvancedLoops:Landroid/widget/Button;

    .line 122
    sget v2, Lcom/pramod/octapadpromidi/R$id;->advancedControlPanel:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->advancedControlPanel:Landroid/view/View;

    .line 123
    sget v2, Lcom/pramod/octapadpromidi/R$id;->txtLoopStatus:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtLoopStatus:Landroid/widget/TextView;

    .line 124
    sget v2, Lcom/pramod/octapadpromidi/R$id;->txtMidiStatus:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtMidiStatus:Landroid/widget/TextView;

    .line 125
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtMidiStatus:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtMidiStatus:Landroid/widget/TextView;

    const-string v3, "MIDI status: disconnected"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_0
    sget v2, Lcom/pramod/octapadpromidi/R$id;->btnPrevLoop:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnPrevLoop:Landroid/widget/Button;

    .line 129
    sget v2, Lcom/pramod/octapadpromidi/R$id;->btnNextLoop:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnNextLoop:Landroid/widget/Button;

    .line 130
    sget v2, Lcom/pramod/octapadpromidi/R$id;->txtLoopChannel:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtLoopChannel:Landroid/widget/TextView;

    .line 131
    sget v2, Lcom/pramod/octapadpromidi/R$id;->btnRenameLoop:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnRenameLoop:Landroid/widget/Button;

    .line 132
    sget v2, Lcom/pramod/octapadpromidi/R$id;->btnSaveLoop:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnSaveLoop:Landroid/widget/Button;

    .line 133
    sget v2, Lcom/pramod/octapadpromidi/R$id;->btnLoadLoop:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnLoadLoop:Landroid/widget/Button;

    .line 134
    sget v2, Lcom/pramod/octapadpromidi/R$id;->btnTempoMinus:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnTempoMinus:Landroid/widget/Button;

    .line 135
    sget v2, Lcom/pramod/octapadpromidi/R$id;->btnTempoPlus:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnTempoPlus:Landroid/widget/Button;

    .line 136
    sget v2, Lcom/pramod/octapadpromidi/R$id;->seekTempo:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->seekTempo:Landroid/widget/SeekBar;

    .line 137
    sget v2, Lcom/pramod/octapadpromidi/R$id;->seekPitch:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->seekPitch:Landroid/widget/SeekBar;

    .line 138
    sget v2, Lcom/pramod/octapadpromidi/R$id;->txtTempoVal:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtTempoVal:Landroid/widget/TextView;

    .line 139
    sget v2, Lcom/pramod/octapadpromidi/R$id;->txtPitchVal:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtPitchVal:Landroid/widget/TextView;

    .line 140
    sget v2, Lcom/pramod/octapadpromidi/R$id;->editCustomBpm:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->editCustomBpm:Landroid/widget/EditText;

    .line 141
    sget v2, Lcom/pramod/octapadpromidi/R$id;->btnSetBpm:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnSetBpm:Landroid/widget/Button;

    .line 142
    sget v2, Lcom/pramod/octapadpromidi/R$id;->seekMasterVolume:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->seekMasterVolume:Landroid/widget/SeekBar;

    .line 143
    sget v2, Lcom/pramod/octapadpromidi/R$id;->seekLoopReverb:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->seekLoopReverb:Landroid/widget/SeekBar;

    .line 144
    sget v2, Lcom/pramod/octapadpromidi/R$id;->txtMasterVolVal:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtMasterVolVal:Landroid/widget/TextView;

    .line 145
    sget v2, Lcom/pramod/octapadpromidi/R$id;->txtLoopReverbVal:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtLoopReverbVal:Landroid/widget/TextView;

    .line 146
    sget v2, Lcom/pramod/octapadpromidi/R$id;->chkMultiMode:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->chkMultiMode:Landroid/widget/CheckBox;

    .line 147
    sget v2, Lcom/pramod/octapadpromidi/R$id;->chkOneShotMode:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->chkOneShotMode:Landroid/widget/CheckBox;

    .line 148
    sget v2, Lcom/pramod/octapadpromidi/R$id;->btnTapTempo:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnTapTempo:Landroid/widget/Button;

    .line 149
    sget v2, Lcom/pramod/octapadpromidi/R$id;->btnRepeat:I

    invoke-virtual {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnRepeat:Landroid/widget/Button;

    .line 150
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loop_name_ch_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopChannelIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOOP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopChannelIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "string":Ljava/lang/String;
    iput-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentLoopName:Ljava/lang/String;

    .line 151
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtLoopChannel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "loop_master_volume"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->masterVolume:F

    .line 153
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "loop_reverb_level"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->reverbLevel:I

    .line 154
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "loop_multi_mode"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isMultiMode:Z

    .line 155
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "loop_one_shot_mode"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isOneShotMode:Z

    .line 156
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->seekMasterVolume:Landroid/widget/SeekBar;

    .line 157
    .local v1, "seekBar":Landroid/widget/SeekBar;
    if-eqz v1, :cond_1

    .line 158
    iget v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->masterVolume:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->seekLoopReverb:Landroid/widget/SeekBar;

    .line 161
    .local v3, "seekBar2":Landroid/widget/SeekBar;
    if-eqz v3, :cond_2

    .line 162
    iget v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->reverbLevel:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 164
    :cond_2
    iget-object v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->chkMultiMode:Landroid/widget/CheckBox;

    .line 165
    .local v4, "checkBox":Landroid/widget/CheckBox;
    if-eqz v4, :cond_3

    .line 166
    iget-boolean v5, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isMultiMode:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 168
    :cond_3
    iget-object v5, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->chkOneShotMode:Landroid/widget/CheckBox;

    .line 169
    .local v5, "checkBox2":Landroid/widget/CheckBox;
    if-eqz v5, :cond_4

    .line 170
    iget-boolean v6, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isOneShotMode:Z

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 172
    :cond_4
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->setupReverb()V

    .line 173
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->setupControls()V

    .line 174
    iget-object v6, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnRepeat:Landroid/widget/Button;

    if-eqz v6, :cond_5

    iget-boolean v7, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isOneShotMode:Z

    if-nez v7, :cond_6

    const-string v7, "REPEAT ON"

    goto :goto_0

    :cond_6
    const-string v7, "REPEAT OFF"

    :goto_0
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_5
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->initPads()V

    .line 175
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->loadLoopsFromMemory()V

    .line 176
    iget-object v6, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnBack:Landroid/widget/Button;

    new-instance v7, Lcom/pramod/octapadpromidi/LoopsActivity$1;

    invoke-direct {v7, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$1;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v6, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnEditLoops:Landroid/widget/Button;

    new-instance v7, Lcom/pramod/octapadpromidi/LoopsActivity$2;

    invoke-direct {v7, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$2;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v6, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnAdvancedLoops:Landroid/widget/Button;

    .line 191
    .local v6, "button":Landroid/widget/Button;
    if-eqz v6, :cond_5

    .line 192
    new-instance v7, Lcom/pramod/octapadpromidi/LoopsActivity$3;

    invoke-direct {v7, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$3;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :cond_5
    iget-object v7, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnTapTempo:Landroid/widget/Button;

    .line 208
    .local v7, "button2":Landroid/widget/Button;
    if-eqz v7, :cond_6

    .line 209
    new-instance v8, Lcom/pramod/octapadpromidi/LoopsActivity$4;

    invoke-direct {v8, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$4;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v8, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnRepeat:Landroid/widget/Button;

    if-eqz v8, :cond_repeat

    new-instance v9, Lcom/pramod/octapadpromidi/LoopsActivity$23;

    invoke-direct {v9, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$23;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_repeat
    iget-object v8, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnPrevLoop:Landroid/widget/Button;

    new-instance v9, Lcom/pramod/octapadpromidi/LoopsActivity$5;

    invoke-direct {v9, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$5;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v8, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnNextLoop:Landroid/widget/Button;

    new-instance v9, Lcom/pramod/octapadpromidi/LoopsActivity$6;

    invoke-direct {v9, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$6;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v8, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnRenameLoop:Landroid/widget/Button;

    .line 249
    .local v8, "button3":Landroid/widget/Button;
    if-eqz v8, :cond_7

    .line 250
    new-instance v9, Lcom/pramod/octapadpromidi/LoopsActivity$7;

    invoke-direct {v9, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$7;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    :cond_7
    iget-object v9, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnSaveLoop:Landroid/widget/Button;

    .line 258
    .local v9, "button4":Landroid/widget/Button;
    if-eqz v9, :cond_8

    .line 259
    new-instance v10, Lcom/pramod/octapadpromidi/LoopsActivity$8;

    invoke-direct {v10, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$8;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    :cond_8
    iget-object v10, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnLoadLoop:Landroid/widget/Button;

    .line 267
    .local v10, "button5":Landroid/widget/Button;
    if-eqz v10, :cond_9

    .line 268
    new-instance v11, Lcom/pramod/octapadpromidi/LoopsActivity$9;

    invoke-direct {v11, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$9;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    :cond_9
    iget-object v11, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnTempoMinus:Landroid/widget/Button;

    new-instance v12, Lcom/pramod/octapadpromidi/LoopsActivity$10;

    invoke-direct {v12, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$10;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v11, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnTempoPlus:Landroid/widget/Button;

    new-instance v12, Lcom/pramod/octapadpromidi/LoopsActivity$11;

    invoke-direct {v12, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$11;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v11, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnSetBpm:Landroid/widget/Button;

    .line 296
    .local v11, "button6":Landroid/widget/Button;
    if-eqz v11, :cond_a

    iget-object v12, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->editCustomBpm:Landroid/widget/EditText;

    if-eqz v12, :cond_a

    .line 297
    new-instance v12, Lcom/pramod/octapadpromidi/LoopsActivity$12;

    invoke-direct {v12, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$12;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    :cond_a
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 1000
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1001
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 1002
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    .line 1003
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    if-eqz v1, :cond_1

    .line 1004
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1005
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 1007
    :cond_0
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 1008
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 1001
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1012
    .end local v0    # "i":I
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->closeMidiDevice()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    goto :goto_1

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1016
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 988
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isVisible:Z

    .line 989
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 990
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    .line 991
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 992
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    .line 993
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopPads:[Landroid/widget/Button;

    aget-object v2, v2, v0

    sget v3, Lcom/pramod/octapadpromidi/R$drawable;->pad_black_selector:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 989
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->isVisible:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 975
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 976
    if-eqz p1, :cond_0

    .line 977
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/LoopsActivity;->hideSystemUI()V

    .line 979
    :cond_0
    return-void
.end method

.method public openMidiDevice(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/media/midi/MidiDeviceInfo;

    .line 1054
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->midiManager:Landroid/media/midi/MidiManager;

    new-instance v1, Lcom/pramod/octapadpromidi/LoopsActivity$21;

    invoke-direct {v1, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$21;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V

    new-instance v2, Landroid/os/Handler;

    .line 1097
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1055
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/midi/MidiManager;->openDevice(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .line 1099
    :cond_0
    return-void
.end method

.method public preloadLoop(I)V
    .locals 3
    .param p1, "index"    # I

    .line 1179
    :try_start_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    .line 1180
    .local v0, "mp":Landroid/media/MediaPlayer;
    if-eqz v0, :cond_0

    .line 1181
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1182
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1183
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1184
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1185
    iget v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->masterVolume:F

    iget v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->masterVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    .end local v0    # "mp":Landroid/media/MediaPlayer;
    :cond_0
    goto :goto_0

    .line 1187
    :catch_0
    move-exception v0

    .line 1190
    :goto_0
    return-void
.end method

.method public renameLoopDialog()V
    .locals 4

    .line 714
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 715
    .local v0, "edt":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentLoopName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 716
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Enter Loop Name"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/pramod/octapadpromidi/LoopsActivity$18;

    invoke-direct {v2, p0, v0}, Lcom/pramod/octapadpromidi/LoopsActivity$18;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;Landroid/widget/EditText;)V

    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    .line 726
    const-string v3, "Cancel"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 727
    return-void
.end method

.method public sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 750
    const-string v0, "[\\\\/:*?\"<>|]"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveLoopsToMemory()V
    .locals 5

    .line 921
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 922
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 923
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopUris:[Landroid/net/Uri;

    aget-object v2, v2, v1

    const-string v3, "_"

    const-string v4, "loop_uri_ch_"

    if-eqz v2, :cond_0

    .line 924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopChannelIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopUris:[Landroid/net/Uri;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 926
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->loopChannelIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 922
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 929
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 930
    return-void
.end method

.method public showSaveLoopNameDialog()V
    .locals 4

    .line 731
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 732
    .local v0, "edt":Landroid/widget/EditText;
    const-string v1, "Enter Loop Group Name"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 733
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->currentLoopName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 734
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Save Loop Group As"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/pramod/octapadpromidi/LoopsActivity$19;

    invoke-direct {v2, p0, v0}, Lcom/pramod/octapadpromidi/LoopsActivity$19;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity;Landroid/widget/EditText;)V

    const-string v3, "NEXT"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    .line 745
    const-string v3, "Cancel"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 746
    return-void
.end method

.method public updateAllActiveLoops()V
    .locals 3

    .line 493
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    .line 495
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->applyPlaybackParams(Landroid/media/MediaPlayer;)V

    .line 493
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public updateReverbLevel(I)V
    .locals 5
    .param p1, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->globalReverb:Landroid/media/audiofx/PresetReverb;

    .line 371
    .local v0, "presetReverb":Landroid/media/audiofx/PresetReverb;
    if-eqz v0, :cond_7

    .line 373
    if-nez p1, :cond_1

    .line 374
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/audiofx/PresetReverb;->setEnabled(Z)I

    .line 375
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtLoopReverbVal:Landroid/widget/TextView;

    .line 376
    .local v1, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 377
    const-string v2, "OFF"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_0
    goto :goto_1

    .line 380
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/PresetReverb;->setEnabled(Z)I

    .line 381
    const/16 v1, 0x14

    if-ge p1, v1, :cond_2

    .line 382
    const/4 v1, 0x1

    .local v1, "preset":S
    goto :goto_0

    .line 383
    .end local v1    # "preset":S
    :cond_2
    const/16 v1, 0x28

    if-ge p1, v1, :cond_3

    .line 384
    const/4 v1, 0x2

    .restart local v1    # "preset":S
    goto :goto_0

    .line 385
    .end local v1    # "preset":S
    :cond_3
    const/16 v1, 0x3c

    if-ge p1, v1, :cond_4

    .line 386
    const/4 v1, 0x3

    .restart local v1    # "preset":S
    goto :goto_0

    .line 388
    .end local v1    # "preset":S
    :cond_4
    const/16 v1, 0x50

    if-ge p1, v1, :cond_5

    const/4 v1, 0x4

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    .line 390
    .restart local v1    # "preset":S
    :goto_0
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->globalReverb:Landroid/media/audiofx/PresetReverb;

    invoke-virtual {v2, v1}, Landroid/media/audiofx/PresetReverb;->setPreset(S)V

    .line 391
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity;->txtLoopReverbVal:Landroid/widget/TextView;

    .line 392
    .local v2, "textView2":Landroid/widget/TextView;
    if-eqz v2, :cond_6

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v1    # "preset":S
    .end local v2    # "textView2":Landroid/widget/TextView;
    :cond_6
    :goto_1
    goto :goto_2

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_2
    return-void
.end method
