.class Lcom/pramod/octapadpromidi/LoopsActivity$2;
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

    .line 182
    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$2;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$2;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$2;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgeteditMode(Lcom/pramod/octapadpromidi/LoopsActivity;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fputeditMode(Lcom/pramod/octapadpromidi/LoopsActivity;Z)V

    .line 186
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$2;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetbtnEditLoops(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$2;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgeteditMode(Lcom/pramod/octapadpromidi/LoopsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EDIT ON"

    goto :goto_0

    :cond_0
    const-string v1, "EDIT OFF"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$2;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetbtnEditLoops(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$2;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgeteditMode(Lcom/pramod/octapadpromidi/LoopsActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/pramod/octapadpromidi/R$drawable;->btn_3d_red:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/pramod/octapadpromidi/R$drawable;->btn_3d_dark:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 188
    return-void
.end method
