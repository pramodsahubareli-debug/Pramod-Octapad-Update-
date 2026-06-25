.class public Lcom/pramod/octapadpromidi/AudioEngine;
.super Ljava/lang/Object;
.source "AudioEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    }
.end annotation


# static fields
.field private static final PAD_COUNT:I = 0x10

.field private static final TAG:Ljava/lang/String; = "AudioEngine"


# instance fields
.field private context:Landroid/content/Context;

.field private nativeHandle:J

.field private waveCache:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    const-string v0, "AudioEngine"

    :try_start_0
    const-string v1, "oboe_audio_engine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    const-string v1, "Oboe audio engine library loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "Failed to load Oboe audio engine library"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pramod/octapadpromidi/AudioEngine;->nativeHandle:J

    .line 48
    iput-object p1, p0, Lcom/pramod/octapadpromidi/AudioEngine;->context:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/AudioEngine;->nativeCreateAudioEngine()J

    move-result-wide v2

    .line 50
    .local v2, "jNativeCreateAudioEngine":J
    iput-wide v2, p0, Lcom/pramod/octapadpromidi/AudioEngine;->nativeHandle:J

    .line 51
    cmp-long v0, v2, v0

    const-string v1, "AudioEngine"

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "Audio engine initialized with native Oboe"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_0
    const-string v0, "Failed to initialize audio engine"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void
.end method

.method private decodePcmFromWav([B)[S
    .locals 17
    .param p1, "data"    # [B

    .line 274
    move-object/from16 v0, p1

    const/4 v1, 0x0

    const-string v2, "AudioEngine"

    if-eqz v0, :cond_12

    array-length v3, v0

    const/16 v4, 0x2c

    if-ge v3, v4, :cond_0

    goto/16 :goto_8

    .line 278
    :cond_0
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_11

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    const/16 v5, 0x49

    if-ne v4, v5, :cond_11

    const/4 v4, 0x2

    aget-byte v4, v0, v4

    const/16 v5, 0x46

    if-ne v4, v5, :cond_11

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    if-ne v4, v5, :cond_11

    const/16 v4, 0x8

    aget-byte v5, v0, v4

    const/16 v6, 0x57

    if-ne v5, v6, :cond_11

    const/16 v5, 0x9

    aget-byte v5, v0, v5

    const/16 v6, 0x41

    if-ne v5, v6, :cond_11

    const/16 v5, 0xa

    aget-byte v5, v0, v5

    const/16 v6, 0x56

    if-ne v5, v6, :cond_11

    const/16 v5, 0xb

    aget-byte v5, v0, v5

    const/16 v6, 0x45

    if-eq v5, v6, :cond_1

    goto/16 :goto_7

    .line 282
    :cond_1
    const/16 v5, 0xc

    .line 283
    .local v5, "offset":I
    const/4 v6, -0x1

    .line 284
    .local v6, "audioFormat":I
    const/4 v7, -0x1

    .line 285
    .local v7, "numChannels":I
    const/4 v8, -0x1

    .line 286
    .local v8, "bitsPerSample":I
    const/4 v9, -0x1

    .line 287
    .local v9, "dataChunkOffset":I
    const/4 v10, -0x1

    .line 288
    .local v10, "dataChunkSize":I
    :goto_0
    add-int/lit8 v11, v5, 0x8

    array-length v12, v0

    const/16 v13, 0x10

    if-gt v11, v12, :cond_6

    .line 289
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x4

    invoke-direct {v11, v0, v5, v12}, Ljava/lang/String;-><init>([BII)V

    .line 290
    .local v11, "chunkId":Ljava/lang/String;
    add-int/lit8 v12, v5, 0x7

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v14, v5, 0x6

    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v13

    or-int/2addr v12, v14

    add-int/lit8 v14, v5, 0x5

    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v4

    or-int/2addr v12, v14

    add-int/lit8 v14, v5, 0x4

    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v12, v14

    .line 291
    .local v12, "chunkSize":I
    add-int/lit8 v5, v5, 0x8

    .line 292
    const-string v14, "fmt "

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 293
    if-lt v12, v13, :cond_3

    add-int v13, v5, v12

    array-length v14, v0

    if-le v13, v14, :cond_2

    goto :goto_1

    .line 297
    :cond_2
    add-int/lit8 v13, v5, 0x1

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v4

    aget-byte v14, v0, v5

    and-int/lit16 v14, v14, 0xff

    or-int v6, v13, v14

    .line 298
    add-int/lit8 v13, v5, 0x3

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v4

    add-int/lit8 v14, v5, 0x2

    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    or-int v7, v13, v14

    .line 299
    add-int/lit8 v13, v5, 0xf

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v4

    add-int/lit8 v14, v5, 0xe

    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    or-int v8, v13, v14

    goto :goto_2

    .line 294
    :cond_3
    :goto_1
    const-string v3, "Invalid WAV fmt chunk size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-object v1

    .line 300
    :cond_4
    const-string v14, "data"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 301
    move v9, v5

    .line 302
    move v10, v12

    .line 303
    goto :goto_3

    .line 305
    :cond_5
    :goto_2
    add-int/lit8 v13, v12, 0x1

    and-int/lit8 v13, v13, -0x2

    add-int/2addr v5, v13

    .line 306
    .end local v11    # "chunkId":Ljava/lang/String;
    .end local v12    # "chunkSize":I
    goto/16 :goto_0

    .line 307
    :cond_6
    :goto_3
    if-eq v6, v3, :cond_7

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported WAV format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-object v1

    .line 311
    :cond_7
    if-eq v8, v13, :cond_8

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only 16-bit WAV is supported, found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-object v1

    .line 315
    :cond_8
    if-gtz v7, :cond_9

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid channel count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-object v1

    .line 319
    :cond_9
    if-ltz v9, :cond_10

    if-lez v10, :cond_10

    add-int v3, v9, v10

    array-length v11, v0

    if-le v3, v11, :cond_a

    goto :goto_6

    .line 323
    :cond_a
    mul-int/lit8 v3, v7, 0x2

    div-int v3, v10, v3

    .line 324
    .local v3, "frameCount":I
    if-gtz v3, :cond_b

    .line 325
    const-string v4, "No PCM frames in WAV data"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-object v1

    .line 328
    :cond_b
    new-array v11, v3, [S

    .line 329
    .local v11, "pcm":[S
    move v12, v9

    .line 330
    .local v12, "pos":I
    const/4 v13, 0x0

    .local v13, "frame":I
    :goto_4
    if-ge v13, v3, :cond_f

    .line 331
    const/4 v14, 0x0

    .line 332
    .local v14, "sampleSum":I
    const/4 v15, 0x0

    .local v15, "ch":I
    :goto_5
    if-ge v15, v7, :cond_e

    .line 333
    add-int/lit8 v4, v12, 0x1

    array-length v1, v0

    if-lt v4, v1, :cond_c

    .line 334
    const-string v1, "WAV data ended early"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v1, 0x0

    return-object v1

    .line 337
    :cond_c
    aget-byte v1, v0, v12

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v12, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v16, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    .line 338
    .local v1, "sample":I
    const/16 v4, 0x7fff

    if-le v1, v4, :cond_d

    .line 339
    const/high16 v4, 0x10000

    sub-int/2addr v1, v4

    .line 341
    :cond_d
    add-int/2addr v14, v1

    .line 342
    nop

    .end local v1    # "sample":I
    add-int/lit8 v12, v12, 0x2

    .line 332
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    const/4 v1, 0x0

    goto :goto_5

    :cond_e
    move/from16 v16, v4

    .line 344
    .end local v15    # "ch":I
    div-int v1, v14, v7

    int-to-short v1, v1

    aput-short v1, v11, v13

    .line 330
    .end local v14    # "sampleSum":I
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    goto :goto_4

    .line 346
    .end local v13    # "frame":I
    :cond_f
    return-object v11

    .line 320
    .end local v3    # "frameCount":I
    .end local v11    # "pcm":[S
    .end local v12    # "pos":I
    :cond_10
    :goto_6
    const-string v1, "WAV data chunk not found or invalid"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v1, 0x0

    return-object v1

    .line 279
    .end local v5    # "offset":I
    .end local v6    # "audioFormat":I
    .end local v7    # "numChannels":I
    .end local v8    # "bitsPerSample":I
    .end local v9    # "dataChunkOffset":I
    .end local v10    # "dataChunkSize":I
    :cond_11
    :goto_7
    const-string v1, "Invalid WAV header"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v1, 0x0

    return-object v1

    .line 275
    :cond_12
    :goto_8
    const-string v3, "Invalid WAV data: too short"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-object v1
.end method

.method private native nativeCreateAudioEngine()J
.end method

.method private native nativeDestroyAudioEngine()V
.end method

.method private native nativeLoadSample(I[SI)V
.end method

.method private native nativePlaySample(IFFZFFFFFIFF)V
.end method

.method private native nativeStopAll()V
.end method

.method private native nativeStopPad(I)V
.end method

.method private readAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;)[B
    .locals 2
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 350
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 351
    .local v0, "data":[B
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v1

    .line 352
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 353
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 354
    return-object v0
.end method


# virtual methods
.method public loadRawSound(II)Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    .locals 8
    .param p1, "padIndex"    # I
    .param p2, "resId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const-string v0, "AudioEngine"

    const/4 v1, 0x0

    :try_start_0
    iget-wide v2, p0, Lcom/pramod/octapadpromidi/AudioEngine;->nativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 104
    return-object v1

    .line 106
    :cond_0
    if-ltz p1, :cond_2

    const/16 v2, 0x10

    if-ge p1, v2, :cond_2

    .line 107
    iget-object v2, p0, Lcom/pramod/octapadpromidi/AudioEngine;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 108
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 109
    .local v3, "wavData":[B
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 110
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 111
    invoke-direct {p0, v3}, Lcom/pramod/octapadpromidi/AudioEngine;->decodePcmFromWav([B)[S

    move-result-object v4

    .line 112
    .local v4, "pcmData":[S
    if-eqz v4, :cond_1

    array-length v5, v4

    if-eqz v5, :cond_1

    .line 113
    new-instance v5, Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    invoke-direct {v5}, Lcom/pramod/octapadpromidi/AudioEngine$SampleData;-><init>()V

    .line 114
    .local v5, "sd":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    iput p2, v5, Lcom/pramod/octapadpromidi/AudioEngine$SampleData;->soundId:I

    .line 115
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/pramod/octapadpromidi/AudioEngine$SampleData;->loaded:Z

    .line 116
    array-length v6, v4

    invoke-direct {p0, p1, v4, v6}, Lcom/pramod/octapadpromidi/AudioEngine;->nativeLoadSample(I[SI)V

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded raw sound to pad "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " frames"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-object v5

    .line 120
    .end local v5    # "sd":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    :cond_1
    const-string v5, "Failed to decode PCM from raw resource"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-object v1

    .line 123
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "wavData":[B
    .end local v4    # "pcmData":[S
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pad index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-object v1

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error loading raw sound"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    return-object v1
.end method

.method public loadWavFromUri(ILandroid/net/Uri;)Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    .locals 8
    .param p1, "padIndex"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    const-string v0, "AudioEngine"

    const/4 v1, 0x0

    :try_start_0
    iget-wide v2, p0, Lcom/pramod/octapadpromidi/AudioEngine;->nativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 71
    return-object v1

    .line 73
    :cond_0
    if-ltz p1, :cond_3

    const/16 v2, 0x10

    if-ge p1, v2, :cond_3

    .line 74
    iget-object v2, p0, Lcom/pramod/octapadpromidi/AudioEngine;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 75
    .local v2, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v2, :cond_1

    .line 76
    return-object v1

    .line 78
    :cond_1
    invoke-direct {p0, v2}, Lcom/pramod/octapadpromidi/AudioEngine;->readAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;)[B

    move-result-object v3

    .line 79
    .local v3, "wavData":[B
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 80
    invoke-direct {p0, v3}, Lcom/pramod/octapadpromidi/AudioEngine;->decodePcmFromWav([B)[S

    move-result-object v4

    .line 81
    .local v4, "pcmData":[S
    if-eqz v4, :cond_2

    array-length v5, v4

    if-eqz v5, :cond_2

    .line 82
    new-instance v5, Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    invoke-direct {v5}, Lcom/pramod/octapadpromidi/AudioEngine$SampleData;-><init>()V

    .line 83
    .local v5, "sd":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    iput-object p2, v5, Lcom/pramod/octapadpromidi/AudioEngine$SampleData;->uri:Landroid/net/Uri;

    .line 84
    iput p1, v5, Lcom/pramod/octapadpromidi/AudioEngine$SampleData;->soundId:I

    .line 85
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/pramod/octapadpromidi/AudioEngine$SampleData;->loaded:Z

    .line 86
    array-length v6, v4

    invoke-direct {p0, p1, v4, v6}, Lcom/pramod/octapadpromidi/AudioEngine;->nativeLoadSample(I[SI)V

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded WAV sample to pad "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " frames"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object v5

    .line 90
    .end local v5    # "sd":Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    :cond_2
    const-string v5, "Failed to decode PCM from WAV"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-object v1

    .line 93
    .end local v2    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v3    # "wavData":[B
    .end local v4    # "pcmData":[S
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pad index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-object v1

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error loading WAV from URI"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    return-object v1
.end method

.method public playSample(ILcom/pramod/octapadpromidi/AudioEngine$SampleData;FFI)V
    .locals 15
    .param p1, "padIndex"    # I
    .param p2, "sample"    # Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    .param p3, "volume"    # F
    .param p4, "pitch"    # F
    .param p5, "loopMode"    # I

    .line 155
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v14}, Lcom/pramod/octapadpromidi/AudioEngine;->playSample(ILcom/pramod/octapadpromidi/AudioEngine$SampleData;FFIZFFFFFIFF)V

    .line 156
    return-void
.end method

.method public playSample(ILcom/pramod/octapadpromidi/AudioEngine$SampleData;FFIZFFFFFIFF)V
    .locals 16
    .param p1, "padIndex"    # I
    .param p2, "sample"    # Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
    .param p3, "volume"    # F
    .param p4, "pitch"    # F
    .param p5, "loopMode"    # I
    .param p6, "delayOn"    # Z
    .param p7, "delayMs"    # F
    .param p8, "delayLevel"    # F
    .param p9, "eqLow"    # F
    .param p10, "eqMid"    # F
    .param p11, "eqHigh"    # F
    .param p12, "chokeGroup"    # I
    .param p13, "attackMs"    # F
    .param p14, "releaseMs"    # F

    .line 144
    move-object/from16 v1, p2

    move-object/from16 v15, p0

    :try_start_0
    iget-wide v2, v15, Lcom/pramod/octapadpromidi/AudioEngine;->nativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lcom/pramod/octapadpromidi/AudioEngine$SampleData;->loaded:Z

    if-eqz v0, :cond_0

    .line 145
    const/high16 v0, 0x3f800000    # 1.0f

    move/from16 v14, p3

    invoke-static {v0, v14}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 146
    .local v4, "vol":F
    const/high16 v0, 0x40000000    # 2.0f

    move/from16 v13, p4

    invoke-static {v0, v13}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 147
    .local v5, "rate":F
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v2 .. v14}, Lcom/pramod/octapadpromidi/AudioEngine;->nativePlaySample(IFFZFFFFFIFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v4    # "vol":F
    .end local v5    # "rate":F
    :cond_0
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AudioEngine"

    const-string v3, "Error playing sample"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public preloadSample(Lcom/pramod/octapadpromidi/AudioEngine$SampleData;)V
    .locals 0
    .param p1, "sample"    # Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    .line 140
    return-void
.end method

.method public start()V
    .locals 0

    .line 59
    return-void
.end method

.method public stop()V
    .locals 4

    .line 62
    iget-wide v0, p0, Lcom/pramod/octapadpromidi/AudioEngine;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/AudioEngine;->nativeDestroyAudioEngine()V

    .line 64
    iput-wide v2, p0, Lcom/pramod/octapadpromidi/AudioEngine;->nativeHandle:J

    .line 66
    :cond_0
    return-void
.end method

.method public stopAll()V
    .locals 4

    .line 165
    iget-wide v0, p0, Lcom/pramod/octapadpromidi/AudioEngine;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/AudioEngine;->nativeStopAll()V

    .line 168
    :cond_0
    return-void
.end method

.method public stopPad(I)V
    .locals 4
    .param p1, "padIndex"    # I

    .line 159
    iget-wide v0, p0, Lcom/pramod/octapadpromidi/AudioEngine;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0, p1}, Lcom/pramod/octapadpromidi/AudioEngine;->nativeStopPad(I)V

    .line 162
    :cond_0
    return-void
.end method

.method public unloadSample(Lcom/pramod/octapadpromidi/AudioEngine$SampleData;)V
    .locals 1
    .param p1, "sample"    # Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    .line 132
    if-eqz p1, :cond_0

    .line 133
    const/4 v0, 0x0

    iput v0, p1, Lcom/pramod/octapadpromidi/AudioEngine$SampleData;->soundId:I

    .line 134
    iput-boolean v0, p1, Lcom/pramod/octapadpromidi/AudioEngine$SampleData;->loaded:Z

    .line 135
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/pramod/octapadpromidi/AudioEngine$SampleData;->uri:Landroid/net/Uri;

    .line 137
    :cond_0
    return-void
.end method
