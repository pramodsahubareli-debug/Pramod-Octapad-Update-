.class Lcom/pramod/octapadpromidi/MainActivity$1;
.super Landroid/media/midi/MidiManager$DeviceCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/MainActivity;->setupMidi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/octapadpromidi/MainActivity;


# direct methods
.method constructor <init>(Lcom/pramod/octapadpromidi/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pramod/octapadpromidi/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity$1;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-direct {p0}, Landroid/media/midi/MidiManager$DeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 1
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 198
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$1;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-virtual {v0, p1}, Lcom/pramod/octapadpromidi/MainActivity;->openMidiDevice(Landroid/media/midi/MidiDeviceInfo;)V

    .line 199
    return-void
.end method

.method public onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 2
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 203
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$1;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetopenedMidiDevice(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/media/midi/MidiDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$1;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetopenedMidiDevice(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/media/midi/MidiDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/midi/MidiDevice;->getInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$1;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-virtual {v0}, Lcom/pramod/octapadpromidi/MainActivity;->closeMidiDevice()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 209
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$1;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    sget v1, Lcom/pramod/octapadpromidi/R$id;->txtMidiStatus:I

    invoke-virtual {v0, v1}, Lcom/pramod/octapadpromidi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "MIDI disconnected"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_0
    return-void
.end method
