.class Lcom/pramod/octapadpromidi/LoopsActivity$21;
.super Ljava/lang/Object;
.source "LoopsActivity.java"

# interfaces
.implements Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/LoopsActivity;->openMidiDevice(Landroid/media/midi/MidiDeviceInfo;)V
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

    .line 1055
    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$21;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceOpened(Landroid/media/midi/MidiDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/media/midi/MidiDevice;

    .line 1058
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$21;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0, p1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fputopenedMidiDevice(Lcom/pramod/octapadpromidi/LoopsActivity;Landroid/media/midi/MidiDevice;)V

    .line 1059
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$21;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/media/midi/MidiDevice;->openOutputPort(I)Landroid/media/midi/MidiOutputPort;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fputmidiOutputPort(Lcom/pramod/octapadpromidi/LoopsActivity;Landroid/media/midi/MidiOutputPort;)V

    .line 1060
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$21;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetmidiOutputPort(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/media/midi/MidiOutputPort;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1061
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$21;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgettxtMidiStatus(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "MIDI connected"

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$21;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgettxtMidiStatus(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$21;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetmidiOutputPort(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/media/midi/MidiOutputPort;

    move-result-object v0

    new-instance v2, Lcom/pramod/octapadpromidi/LoopsActivity$21$1;

    invoke-direct {v2, p0}, Lcom/pramod/octapadpromidi/LoopsActivity$21$1;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity$21;)V

    invoke-virtual {v0, v2}, Landroid/media/midi/MidiOutputPort;->connect(Landroid/media/midi/MidiReceiver;)V

    .line 1094
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$21;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    sget v2, Lcom/pramod/octapadpromidi/R$id;->txtMidiStatus:I

    invoke-virtual {v0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1096
    :cond_1
    return-void
.end method
