.class Lcom/pramod/octapadpromidi/MainActivity$20;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/MainActivity;->initSeekBars()V
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

    .line 682
    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity$20;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 685
    if-eqz p3, :cond_0

    .line 686
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$20;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadChokeGroup(Lcom/pramod/octapadpromidi/MainActivity;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$20;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetselectedPad(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v1

    aput p2, v0, v1

    .line 687
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$20;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    .line 688
    .local v0, "mainActivity":Lcom/pramod/octapadpromidi/MainActivity;
    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetkitIndex(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToMemory(I)V

    .line 690
    .end local v0    # "mainActivity":Lcom/pramod/octapadpromidi/MainActivity;
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "s"    # Landroid/widget/SeekBar;

    .line 694
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "s"    # Landroid/widget/SeekBar;

    .line 698
    return-void
.end method
