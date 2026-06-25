.class Lcom/pramod/octapadpromidi/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/MainActivity;->openMidiDevice(Landroid/media/midi/MidiDeviceInfo;)V
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

    .line 219
    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity$2;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceOpened(Landroid/media/midi/MidiDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/media/midi/MidiDevice;

    .line 222
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$2;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0, p1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fputopenedMidiDevice(Lcom/pramod/octapadpromidi/MainActivity;Landroid/media/midi/MidiDevice;)V

    .line 223
    invoke-virtual {p1}, Landroid/media/midi/MidiDevice;->getInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v0

    .line 224
    .local v0, "portCount":I
    const/4 v1, 0x0

    .local v1, "portIndex":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 225
    invoke-virtual {p1, v1}, Landroid/media/midi/MidiDevice;->openOutputPort(I)Landroid/media/midi/MidiOutputPort;

    move-result-object v2

    .line 226
    .local v2, "port":Landroid/media/midi/MidiOutputPort;
    if-nez v2, :cond_0

    .line 227
    goto :goto_1

    .line 229
    :cond_0
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$2;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetmidiOutputPort(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/media/midi/MidiOutputPort;

    move-result-object v3

    if-nez v3, :cond_1

    .line 230
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$2;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v3, v2}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fputmidiOutputPort(Lcom/pramod/octapadpromidi/MainActivity;Landroid/media/midi/MidiOutputPort;)V

    .line 232
    :cond_1
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$2;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetmidiOutputPorts(Lcom/pramod/octapadpromidi/MainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$2;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgettxtMidiStatus(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "MIDI connected"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    new-instance v3, Lcom/pramod/octapadpromidi/MainActivity$2$1;

    invoke-direct {v3, p0}, Lcom/pramod/octapadpromidi/MainActivity$2$1;-><init>(Lcom/pramod/octapadpromidi/MainActivity$2;)V

    invoke-virtual {v2, v3}, Landroid/media/midi/MidiOutputPort;->connect(Landroid/media/midi/MidiReceiver;)V

    .line 224
    .end local v2    # "port":Landroid/media/midi/MidiOutputPort;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    .end local v1    # "portIndex":I
    :cond_2
    return-void
.end method
