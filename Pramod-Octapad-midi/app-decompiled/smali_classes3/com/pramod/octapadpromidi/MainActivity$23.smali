.class Lcom/pramod/octapadpromidi/MainActivity$23;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/MainActivity;->renameKitDialog()V
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

    .line 1041
    iput-object p2, p0, Lcom/pramod/octapadpromidi/MainActivity$23;->val$edt:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity$23;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 1044
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$23;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$23;->val$edt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fputcurrentKitName(Lcom/pramod/octapadpromidi/MainActivity;Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$23;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetcurrentKitName(Lcom/pramod/octapadpromidi/MainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$23;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity$23;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v2}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetkitIndex(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fputcurrentKitName(Lcom/pramod/octapadpromidi/MainActivity;Ljava/lang/String;)V

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$23;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgettxtKitName(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$23;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetcurrentKitName(Lcom/pramod/octapadpromidi/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$23;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    .line 1050
    .local v0, "mainActivity":Lcom/pramod/octapadpromidi/MainActivity;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renameKitDialog: saving kit name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity$23;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v2}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetcurrentKitName(Lcom/pramod/octapadpromidi/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' for kitNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetkitIndex(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetkitIndex(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToMemory(I)V

    .line 1052
    return-void
.end method
