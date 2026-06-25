.class Lcom/pramod/octapadpromidi/LoopsActivity$13;
.super Ljava/lang/Object;
.source "LoopsActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/LoopsActivity;->setupControls()V
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

    .line 403
    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 406
    int-to-float v0, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 407
    .local v0, "value":F
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v2

    sget v3, Lcom/pramod/octapadpromidi/R$id;->seekTempo:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "%.1fx"

    if-ne v2, v3, :cond_1

    .line 408
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1, v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fputcurrentSpeed(Lcom/pramod/octapadpromidi/LoopsActivity;F)V

    .line 409
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgettxtTempoVal(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgettxtTempoVal(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetcurrentSpeed(Lcom/pramod/octapadpromidi/LoopsActivity;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-virtual {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->updateAllActiveLoops()V

    .line 413
    return-void

    .line 415
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v2

    sget v3, Lcom/pramod/octapadpromidi/R$id;->seekPitch:I

    if-ne v2, v3, :cond_3

    .line 416
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1, v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fputcurrentPitch(Lcom/pramod/octapadpromidi/LoopsActivity;F)V

    .line 417
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgettxtPitchVal(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 418
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgettxtPitchVal(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetcurrentPitch(Lcom/pramod/octapadpromidi/LoopsActivity;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-virtual {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->updateAllActiveLoops()V

    .line 421
    return-void

    .line 423
    :cond_3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v2

    sget v3, Lcom/pramod/octapadpromidi/R$id;->seekMasterVolume:I

    if-ne v2, v3, :cond_5

    .line 424
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    int-to-float v3, p2

    div-float/2addr v3, v1

    invoke-static {v2, v3}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fputmasterVolume(Lcom/pramod/octapadpromidi/LoopsActivity;F)V

    .line 425
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgettxtMasterVolVal(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 426
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgettxtMasterVolVal(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :cond_4
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetprefs(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetmasterVolume(Lcom/pramod/octapadpromidi/LoopsActivity;)F

    move-result v2

    const-string v3, "loop_master_volume"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 429
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-virtual {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->updateAllActiveLoops()V

    .line 430
    return-void

    .line 432
    :cond_5
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v1

    sget v2, Lcom/pramod/octapadpromidi/R$id;->seekLoopReverb:I

    if-ne v1, v2, :cond_6

    .line 433
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1, p2}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fputreverbLevel(Lcom/pramod/octapadpromidi/LoopsActivity;I)V

    .line 434
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetprefs(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetreverbLevel(Lcom/pramod/octapadpromidi/LoopsActivity;)I

    move-result v2

    const-string v3, "loop_reverb_level"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 435
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$13;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    .line 436
    .local v1, "loopsActivity":Lcom/pramod/octapadpromidi/LoopsActivity;
    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetreverbLevel(Lcom/pramod/octapadpromidi/LoopsActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->updateReverbLevel(I)V

    .line 438
    .end local v1    # "loopsActivity":Lcom/pramod/octapadpromidi/LoopsActivity;
    :cond_6
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 442
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 446
    return-void
.end method
