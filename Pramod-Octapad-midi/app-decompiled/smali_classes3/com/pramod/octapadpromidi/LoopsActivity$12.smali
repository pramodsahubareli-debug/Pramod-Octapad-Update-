.class Lcom/pramod/octapadpromidi/LoopsActivity$12;
.super Ljava/lang/Object;
.source "LoopsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/LoopsActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 297
    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$12;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$12;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgeteditCustomBpm(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "bpmText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 303
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 304
    .local v1, "bpm":F
    const/high16 v2, 0x42f00000    # 120.0f

    div-float v2, v1, v2

    .line 305
    .local v2, "speed":F
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 306
    .local v3, "speed2":F
    iget-object v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity$12;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v4}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetseekTempo(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/SeekBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 307
    iget-object v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity$12;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v4}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetseekTempo(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/SeekBar;

    move-result-object v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v1    # "bpm":F
    .end local v2    # "speed":F
    .end local v3    # "speed2":F
    :cond_0
    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$12;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    const-string v3, "Invalid BPM"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 313
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    return-void
.end method
