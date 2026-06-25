.class Lcom/pramod/octapadpromidi/LoopsActivity$16;
.super Ljava/lang/Object;
.source "LoopsActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/LoopsActivity;->toggleLoop(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/pramod/octapadpromidi/LoopsActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/pramod/octapadpromidi/LoopsActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 582
    iput p2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$16;->val$index:I

    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$16;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer2"    # Landroid/media/MediaPlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$16;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetisOneShotMode(Lcom/pramod/octapadpromidi/LoopsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$16;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetloopPads(Lcom/pramod/octapadpromidi/LoopsActivity;)[Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$16;->val$index:I

    aget-object v0, v0, v1

    sget v1, Lcom/pramod/octapadpromidi/R$drawable;->pad_black_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 587
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$16;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgettxtLoopStatus(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOOP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$16;->val$index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 590
    :cond_0
    return-void
.end method
