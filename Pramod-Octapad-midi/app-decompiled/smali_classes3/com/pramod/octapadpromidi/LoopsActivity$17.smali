.class Lcom/pramod/octapadpromidi/LoopsActivity$17;
.super Ljava/lang/Object;
.source "LoopsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/LoopsActivity;->showEditOptions(I)V
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

    .line 617
    iput p2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$17;->val$index:I

    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$17;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 620
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 621
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 625
    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 626
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$17;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    const/16 v2, 0x1771

    invoke-virtual {v0, v1, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 627
    return-void

    .line 629
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    if-ne p2, v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$17;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    iget v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$17;->val$index:I

    invoke-virtual {v0, v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->clearLoop(I)V

    .line 632
    :cond_1
    return-void
.end method
