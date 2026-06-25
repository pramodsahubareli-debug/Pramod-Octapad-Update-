.class Lcom/pramod/octapadpromidi/LoopsActivity$20;
.super Landroid/media/midi/MidiManager$DeviceCallback;
.source "LoopsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/LoopsActivity;->setupMidi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/octapadpromidi/LoopsActivity;


# direct methods
.method constructor <init>(Lcom/pramod/octapadpromidi/LoopsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pramod/octapadpromidi/LoopsActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1029
    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$20;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-direct {p0}, Landroid/media/midi/MidiManager$DeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 1
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 1032
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$20;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-virtual {v0, p1}, Lcom/pramod/octapadpromidi/LoopsActivity;->openMidiDevice(Landroid/media/midi/MidiDeviceInfo;)V

    .line 1033
    return-void
.end method

.method public onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 2
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 1037
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$20;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetopenedMidiDevice(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/media/midi/MidiDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$20;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetopenedMidiDevice(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/media/midi/MidiDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/midi/MidiDevice;->getInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1039
    :try_start_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$20;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-virtual {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->closeMidiDevice()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1042
    goto :goto_0

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1043
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$20;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgettxtMidiStatus(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$20;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgettxtMidiStatus(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "MIDI disconnected"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    :cond_0
    return-void
.end method
