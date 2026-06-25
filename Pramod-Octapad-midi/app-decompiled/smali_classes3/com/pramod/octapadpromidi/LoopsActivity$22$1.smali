.class Lcom/pramod/octapadpromidi/LoopsActivity$22$1;
.super Ljava/lang/Object;
.source "LoopsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/LoopsActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pramod/octapadpromidi/LoopsActivity$22;

.field final synthetic val$finalPadIndex:I


# direct methods
.method constructor <init>(Lcom/pramod/octapadpromidi/LoopsActivity$22;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/pramod/octapadpromidi/LoopsActivity$22;
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

    .line 1164
    iput p2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$22$1;->val$finalPadIndex:I

    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$22$1;->this$1:Lcom/pramod/octapadpromidi/LoopsActivity$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1167
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$22$1;->this$1:Lcom/pramod/octapadpromidi/LoopsActivity$22;

    iget-object v0, v0, Lcom/pramod/octapadpromidi/LoopsActivity$22;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetloopPads(Lcom/pramod/octapadpromidi/LoopsActivity;)[Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$22$1;->val$finalPadIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 1168
    return-void
.end method
