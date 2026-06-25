.class Lcom/pramod/octapadpromidi/LoopsActivity$18;
.super Ljava/lang/Object;
.source "LoopsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/LoopsActivity;->renameLoopDialog()V
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

    .line 716
    iput-object p2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$18;->val$edt:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$18;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 719
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$18;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$18;->val$edt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fputcurrentLoopName(Lcom/pramod/octapadpromidi/LoopsActivity;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$18;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetcurrentLoopName(Lcom/pramod/octapadpromidi/LoopsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$18;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOOP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$18;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetloopChannelIndex(Lcom/pramod/octapadpromidi/LoopsActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fputcurrentLoopName(Lcom/pramod/octapadpromidi/LoopsActivity;Ljava/lang/String;)V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$18;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgettxtLoopChannel(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$18;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetcurrentLoopName(Lcom/pramod/octapadpromidi/LoopsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$18;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetprefs(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loop_name_ch_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$18;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetloopChannelIndex(Lcom/pramod/octapadpromidi/LoopsActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$18;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetcurrentLoopName(Lcom/pramod/octapadpromidi/LoopsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 725
    return-void
.end method
