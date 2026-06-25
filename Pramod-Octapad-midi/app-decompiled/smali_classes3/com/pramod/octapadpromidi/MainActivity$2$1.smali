.class Lcom/pramod/octapadpromidi/MainActivity$2$1;
.super Landroid/media/midi/MidiReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/MainActivity$2;->onDeviceOpened(Landroid/media/midi/MidiDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pramod/octapadpromidi/MainActivity$2;


# direct methods
.method constructor <init>(Lcom/pramod/octapadpromidi/MainActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/pramod/octapadpromidi/MainActivity$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity$2$1;->this$1:Lcom/pramod/octapadpromidi/MainActivity$2;

    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onSend([BIIJ)V
    .locals 10
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J

    .line 237
    const/16 v9, -0x13
    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    add-int v0, p2, p3

    .line 238
    .local v0, "end":I
    const/4 v1, 0x0

    .line 239
    .local v1, "status":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_6

    .line 240
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 241
    .local v3, "value":I
    const/16 v4, 0x80

    if-lt v3, v4, :cond_0

    .line 242
    move v1, v3

    .line 243
    goto :goto_2

    .line 245
    :cond_0
    and-int/lit16 v5, v1, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_3

    .line 246
    add-int/lit8 v4, v2, 0x1

    if-lt v4, v0, :cond_1

    .line 247
    goto :goto_3

    .line 249
    :cond_1
    move v4, v3

    .line 250
    .local v4, "note":I
    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 251
    .local v5, "velocity":I
    if-lez v5, :cond_2

    .line 252
    iget-object v6, p0, Lcom/pramod/octapadpromidi/MainActivity$2$1;->this$1:Lcom/pramod/octapadpromidi/MainActivity$2;

    iget-object v6, v6, Lcom/pramod/octapadpromidi/MainActivity$2;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    int-to-byte v7, v4

    int-to-byte v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/pramod/octapadpromidi/MainActivity;->handleMidiNoteOn(BB)V

    goto :goto_1

    .line 254
    :cond_2
    iget-object v6, p0, Lcom/pramod/octapadpromidi/MainActivity$2$1;->this$1:Lcom/pramod/octapadpromidi/MainActivity$2;

    iget-object v6, v6, Lcom/pramod/octapadpromidi/MainActivity$2;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    int-to-byte v7, v4

    invoke-virtual {v6, v7}, Lcom/pramod/octapadpromidi/MainActivity;->handleMidiNoteOff(B)V

    .line 256
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 257
    goto :goto_2

    .line 259
    .end local v4    # "note":I
    .end local v5    # "velocity":I
    :cond_3
    and-int/lit16 v5, v1, 0xf0

    if-ne v5, v4, :cond_5

    .line 260
    add-int/lit8 v4, v2, 0x1

    if-lt v4, v0, :cond_4

    .line 261
    goto :goto_3

    .line 263
    :cond_4
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    .line 264
    .local v4, "noteOff":I
    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity$2$1;->this$1:Lcom/pramod/octapadpromidi/MainActivity$2;

    iget-object v5, v5, Lcom/pramod/octapadpromidi/MainActivity$2;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    int-to-byte v6, v4

    invoke-virtual {v5, v6}, Lcom/pramod/octapadpromidi/MainActivity;->handleMidiNoteOff(B)V

    .line 265
    add-int/lit8 v2, v2, 0x1

    .line 266
    nop

    .line 239
    .end local v3    # "value":I
    .end local v4    # "noteOff":I
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    .end local v2    # "i":I
    :cond_6
    :goto_3
    return-void
.end method
