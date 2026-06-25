.class Lcom/pramod/octapadpromidi/LoopsActivity$5;
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

    .line 216
    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$5;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$5;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetloopChannelIndex(Lcom/pramod/octapadpromidi/LoopsActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$5;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-virtual {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->saveLoopsToMemory()V

    .line 221
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$5;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->access$510(Lcom/pramod/octapadpromidi/LoopsActivity;)I

    .line 222
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$5;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetprefs(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$5;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetloopChannelIndex(Lcom/pramod/octapadpromidi/LoopsActivity;)I

    move-result v1

    const-string v2, "current_loop_index"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 223
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$5;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    .line 224
    .local v0, "loopsActivity":Lcom/pramod/octapadpromidi/LoopsActivity;
    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetprefs(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loop_name_ch_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pramod/octapadpromidi/LoopsActivity$5;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v3}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetloopChannelIndex(Lcom/pramod/octapadpromidi/LoopsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOOP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pramod/octapadpromidi/LoopsActivity$5;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v4}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetloopChannelIndex(Lcom/pramod/octapadpromidi/LoopsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fputcurrentLoopName(Lcom/pramod/octapadpromidi/LoopsActivity;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$5;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgettxtLoopChannel(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$5;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetcurrentLoopName(Lcom/pramod/octapadpromidi/LoopsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$5;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-virtual {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->loadLoopsFromMemory()V

    .line 227
    return-void

    .line 229
    .end local v0    # "loopsActivity":Lcom/pramod/octapadpromidi/LoopsActivity;
    :cond_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$5;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    const-string v1, "Already First Loop Channel!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 230
    return-void
.end method
