.class Lcom/pramod/octapadpromidi/MainActivity$12;
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

    .line 552
    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity$12;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 555
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$12;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadVolume(Lcom/pramod/octapadpromidi/MainActivity;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$12;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetselectedPad(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v1

    int-to-float v2, p2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 556
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$12;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    .line 557
    .local v0, "mainActivity":Lcom/pramod/octapadpromidi/MainActivity;
    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetkitIndex(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToMemory(I)V

    .line 558
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "s"    # Landroid/widget/SeekBar;

    .line 562
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "s"    # Landroid/widget/SeekBar;

    .line 566
    return-void
.end method
