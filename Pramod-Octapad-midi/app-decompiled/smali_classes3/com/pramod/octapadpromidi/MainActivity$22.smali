.class Lcom/pramod/octapadpromidi/MainActivity$22;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/MainActivity;->showSaveKitNameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/octapadpromidi/MainActivity;

.field final synthetic val$edt:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/pramod/octapadpromidi/MainActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pramod/octapadpromidi/MainActivity;
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

    .line 1023
    iput-object p2, p0, Lcom/pramod/octapadpromidi/MainActivity$22;->val$edt:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity$22;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1026
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$22;->val$edt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1028
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$22;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity$22;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-virtual {v2, v0}, Lcom/pramod/octapadpromidi/MainActivity;->sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fputpendingSaveKitName(Lcom/pramod/octapadpromidi/MainActivity;Ljava/lang/String;)V

    .line 1029
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$22;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x7d1

    invoke-virtual {v1, v2, v3}, Lcom/pramod/octapadpromidi/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1031
    :cond_0
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$22;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    const-string v2, "Kit name required!"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1033
    :goto_0
    return-void
.end method
