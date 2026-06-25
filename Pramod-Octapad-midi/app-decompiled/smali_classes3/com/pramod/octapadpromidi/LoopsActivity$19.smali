.class Lcom/pramod/octapadpromidi/LoopsActivity$19;
.super Ljava/lang/Object;
.source "LoopsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/LoopsActivity;->showSaveLoopNameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

.field final synthetic val$edt:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/pramod/octapadpromidi/LoopsActivity;Landroid/widget/EditText;)V
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

    .line 734
    iput-object p2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$19;->val$edt:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$19;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 737
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$19;->val$edt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$19;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$19;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-virtual {v2, v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fputpendingSaveLoopName(Lcom/pramod/octapadpromidi/LoopsActivity;Ljava/lang/String;)V

    .line 740
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$19;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1772

    invoke-virtual {v1, v2, v3}, Lcom/pramod/octapadpromidi/LoopsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$19;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    const-string v2, "Name required!"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 744
    :goto_0
    return-void
.end method
