.class public Lcom/pramod/octapadpromidi/KitManager;
.super Ljava/lang/Object;
.source "KitManager.java"


# static fields
.field public static final DEFAULT_WAV_NAMES:[Ljava/lang/String;

.field public static final PAD_COUNT:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 11
    const-string v6, "ohat.wav"

    const-string v7, "chat.wav"

    const-string v0, "crash.wav"

    const-string v1, "tom.wav"

    const-string v2, "rim.wav"

    const-string v3, "clap.wav"

    const-string v4, "kick.wav"

    const-string v5, "snare.wav"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pramod/octapadpromidi/KitManager;->DEFAULT_WAV_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saveMachineCfgToUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cfgUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 17
    .local v0, "os":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 18
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 19
    new-array v2, v2, [F

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
