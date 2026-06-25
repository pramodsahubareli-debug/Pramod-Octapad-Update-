.class Lcom/pramod/octapadpromidi/MainActivity$PadTouch;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pramod/octapadpromidi/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PadTouch"
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/pramod/octapadpromidi/MainActivity;


# direct methods
.method constructor <init>(Lcom/pramod/octapadpromidi/MainActivity;I)V
    .locals 0
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 721
    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    iput p2, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    .line 723
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 727
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 728
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 729
    .local v1, "pointerIndex":I
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 730
    .local v2, "pointerId":I
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    const/4 v5, 0x5

    if-eq v0, v5, :cond_3

    .line 731
    const/4 v5, 0x0

    if-eq v0, v4, :cond_1

    const/4 v6, 0x6

    if-eq v0, v6, :cond_1

    const/4 v6, 0x3

    if-ne v0, v6, :cond_0

    goto :goto_0

    .line 738
    :cond_0
    return v5

    .line 732
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v6}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetactivePointerId(Lcom/pramod/octapadpromidi/MainActivity;)[I

    move-result-object v6

    iget v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    aget v6, v6, v7

    if-ne v6, v2, :cond_2

    .line 733
    iget-object v6, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v6}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetactivePointerId(Lcom/pramod/octapadpromidi/MainActivity;)[I

    move-result-object v6

    iget v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    aput v3, v6, v7

    .line 734
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 736
    :cond_2
    return v4

    .line 740
    :cond_3
    iget-object v5, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v5}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetactivePointerId(Lcom/pramod/octapadpromidi/MainActivity;)[I

    move-result-object v5

    iget v6, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    aget v5, v5, v6

    if-eq v5, v3, :cond_4

    .line 741
    return v4

    .line 743
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 744
    .local v5, "now":J
    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetlastHitTime(Lcom/pramod/octapadpromidi/MainActivity;)[J

    move-result-object v7

    iget v8, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    aget-wide v8, v7, v8

    sub-long v7, v5, v8

    const-wide/16 v9, 0x5

    cmp-long v7, v7, v9

    if-gez v7, :cond_5

    .line 745
    return v4

    .line 747
    :cond_5
    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetlastHitTime(Lcom/pramod/octapadpromidi/MainActivity;)[J

    move-result-object v7

    iget v8, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    aput-wide v5, v7, v8

    .line 748
    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetactivePointerId(Lcom/pramod/octapadpromidi/MainActivity;)[I

    move-result-object v7

    iget v8, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    aput v2, v7, v8

    .line 749
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 750
    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgeteditMode(Lcom/pramod/octapadpromidi/MainActivity;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 751
    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    iget v8, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    invoke-virtual {v7, v8}, Lcom/pramod/octapadpromidi/MainActivity;->playPadSound(I)V

    .line 753
    :cond_6
    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    iget v8, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    invoke-static {v7, v8}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fputselectedPad(Lcom/pramod/octapadpromidi/MainActivity;I)V

    .line 754
    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgeteditMode(Lcom/pramod/octapadpromidi/MainActivity;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetcopySourcePad(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v7

    if-eq v7, v3, :cond_8

    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetcopySourcePad(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v7

    iget v8, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    if-ne v7, v8, :cond_7

    goto :goto_1

    .line 778
    :cond_7
    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    .line 779
    .local v7, "mainActivity3":Lcom/pramod/octapadpromidi/MainActivity;
    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetcopySourcePad(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v8

    iget v9, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    invoke-virtual {v7, v8, v9}, Lcom/pramod/octapadpromidi/MainActivity;->copyPadSound(II)V

    .line 780
    iget-object v8, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v8, v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fputcopySourcePad(Lcom/pramod/octapadpromidi/MainActivity;I)V

    .line 781
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    .line 782
    .local v3, "mainActivity4":Lcom/pramod/octapadpromidi/MainActivity;
    invoke-static {v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetkitIndex(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToMemory(I)V

    .line 783
    return v4

    .line 755
    .end local v3    # "mainActivity4":Lcom/pramod/octapadpromidi/MainActivity;
    .end local v7    # "mainActivity3":Lcom/pramod/octapadpromidi/MainActivity;
    :cond_8
    :goto_1
    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgeteditMode(Lcom/pramod/octapadpromidi/MainActivity;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetswapSourcePad(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v7

    if-eq v7, v3, :cond_a

    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetswapSourcePad(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v7

    iget v8, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    if-ne v7, v8, :cond_9

    goto :goto_2

    .line 771
    :cond_9
    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    .line 772
    .local v7, "mainActivity":Lcom/pramod/octapadpromidi/MainActivity;
    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetswapSourcePad(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v8

    iget v9, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    invoke-virtual {v7, v8, v9}, Lcom/pramod/octapadpromidi/MainActivity;->swapPadSound(II)V

    .line 773
    iget-object v8, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v8, v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fputswapSourcePad(Lcom/pramod/octapadpromidi/MainActivity;I)V

    .line 774
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    .line 775
    .local v3, "mainActivity2":Lcom/pramod/octapadpromidi/MainActivity;
    invoke-static {v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetkitIndex(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToMemory(I)V

    .line 776
    return v4

    .line 756
    .end local v3    # "mainActivity2":Lcom/pramod/octapadpromidi/MainActivity;
    .end local v7    # "mainActivity":Lcom/pramod/octapadpromidi/MainActivity;
    :cond_a
    :goto_2
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgeteditMode(Lcom/pramod/octapadpromidi/MainActivity;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 757
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    iget v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    invoke-virtual {v3, v7}, Lcom/pramod/octapadpromidi/MainActivity;->showEditPadOptions(I)V

    .line 759
    :cond_b
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgettxtSelectedPad(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Selected: PAD "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetseekVolume(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadVolume(Lcom/pramod/octapadpromidi/MainActivity;)[F

    move-result-object v7

    iget v8, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    aget v7, v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 761
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetseekPitch(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadPitch(Lcom/pramod/octapadpromidi/MainActivity;)[F

    move-result-object v7

    iget v9, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    aget v7, v7, v9

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v7, v9

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 762
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetchkDelay(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadDelayOn(Lcom/pramod/octapadpromidi/MainActivity;)[Z

    move-result-object v7

    iget v9, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    aget-boolean v7, v7, v9

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 763
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetseekDelayTime(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadDelayTime(Lcom/pramod/octapadpromidi/MainActivity;)[F

    move-result-object v7

    iget v9, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    aget v7, v7, v9

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 764
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetseekDelayLevel(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadDelayLevel(Lcom/pramod/octapadpromidi/MainActivity;)[F

    move-result-object v7

    iget v9, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    aget v7, v7, v9

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 765
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetseekEqHigh(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadEqHigh(Lcom/pramod/octapadpromidi/MainActivity;)[F

    move-result-object v7

    iget v8, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    aget v7, v7, v8

    const v8, 0x3e19999a    # 0.15f

    div-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x64

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 766
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetseekEqMid(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadEqMid(Lcom/pramod/octapadpromidi/MainActivity;)[F

    move-result-object v7

    iget v9, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    aget v7, v7, v9

    div-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x64

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 767
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetseekEqLow(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadEqLow(Lcom/pramod/octapadpromidi/MainActivity;)[F

    move-result-object v7

    iget v9, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    aget v7, v7, v9

    div-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x64

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 768
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetseekChokeGroup(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    iget-object v7, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v7}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadChokeGroup(Lcom/pramod/octapadpromidi/MainActivity;)[I

    move-result-object v7

    iget v8, p0, Lcom/pramod/octapadpromidi/MainActivity$PadTouch;->index:I

    aget v7, v7, v8

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 769
    return v4
.end method
