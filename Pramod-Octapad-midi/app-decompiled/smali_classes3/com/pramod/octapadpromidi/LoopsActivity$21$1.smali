.class Lcom/pramod/octapadpromidi/LoopsActivity$21$1;
.super Landroid/media/midi/MidiReceiver;
.source "LoopsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/LoopsActivity$21;->onDeviceOpened(Landroid/media/midi/MidiDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pramod/octapadpromidi/LoopsActivity$21;


# direct methods
.method constructor <init>(Lcom/pramod/octapadpromidi/LoopsActivity$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/pramod/octapadpromidi/LoopsActivity$21;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1064
    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$21$1;->this$1:Lcom/pramod/octapadpromidi/LoopsActivity$21;

    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onSend([BIIJ)V
    .locals 7
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J

    .line 1067
    const/16 v6, -0x13
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    add-int v0, p2, p3

    .line 1068
    .local v0, "end":I
    const/4 v1, 0x0

    .line 1069
    .local v1, "status":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 1070
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 1071
    .local v3, "value":I
    const/16 v4, 0x80

    if-lt v3, v4, :cond_0

    .line 1072
    move v1, v3

    .line 1073
    goto :goto_1

    .line 1075
    :cond_0
    and-int/lit16 v5, v1, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_3

    .line 1076
    add-int/lit8 v4, v2, 0x1

    if-lt v4, v0, :cond_1

    .line 1077
    goto :goto_2

    .line 1079
    :cond_1
    int-to-byte v4, v3

    .line 1080
    .local v4, "note":B
    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p1, v5

    .line 1081
    .local v5, "velocity":B
    and-int/lit16 v6, v5, 0xff

    if-lez v6, :cond_2

    .line 1082
    iget-object v6, p0, Lcom/pramod/octapadpromidi/LoopsActivity$21$1;->this$1:Lcom/pramod/octapadpromidi/LoopsActivity$21;

    iget-object v6, v6, Lcom/pramod/octapadpromidi/LoopsActivity$21;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-virtual {v6, v4, v5}, Lcom/pramod/octapadpromidi/LoopsActivity;->handleMidiNoteOn(BB)V

    .line 1084
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1085
    goto :goto_1

    .line 1087
    .end local v4    # "note":B
    .end local v5    # "velocity":B
    :cond_3
    and-int/lit16 v5, v1, 0xf0

    if-ne v5, v4, :cond_4

    .line 1088
    add-int/lit8 v2, v2, 0x1

    .line 1089
    nop

    .line 1069
    .end local v3    # "value":I
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1092
    .end local v2    # "i":I
    :cond_5
    :goto_2
    return-void
.end method
