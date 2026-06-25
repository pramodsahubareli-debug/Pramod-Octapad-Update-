.class Lcom/pramod/octapadpromidi/LoopsActivity$15;
.super Ljava/lang/Object;
.source "LoopsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/LoopsActivity;->initPads()V
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

    .line 528
    iput p2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$15;->val$index:I

    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$15;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 531
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 532
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 533
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$15;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    iget v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$15;->val$index:I

    invoke-virtual {v0, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->handlePadClick(I)V

    .line 534
    return v1

    .line 536
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 537
    return v2

    .line 539
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 540
    return v1
.end method
