.class Lcom/pramod/octapadpromidi/LoopsActivity$22;
.super Ljava/lang/Object;
.source "LoopsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/LoopsActivity;->handleMidiNoteOn(BB)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

.field final synthetic val$finalPadIndex:I


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

    .line 1157
    iput p2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$22;->val$finalPadIndex:I

    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$22;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1160
    iget v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$22;->val$finalPadIndex:I

    .line 1161
    .local v0, "i":I
    if-ltz v0, :cond_0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1162
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$22;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetloopPads(Lcom/pramod/octapadpromidi/LoopsActivity;)[Landroid/widget/Button;

    move-result-object v1

    iget v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$22;->val$finalPadIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setPressed(Z)V

    .line 1163
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$22;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    iget v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$22;->val$finalPadIndex:I

    invoke-virtual {v1, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->handlePadClick(I)V

    .line 1164
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/pramod/octapadpromidi/LoopsActivity$22$1;

    iget v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity$22;->val$finalPadIndex:I

    invoke-direct {v2, p0, v3}, Lcom/pramod/octapadpromidi/LoopsActivity$22$1;-><init>(Lcom/pramod/octapadpromidi/LoopsActivity$22;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1171
    :cond_0
    return-void
.end method
