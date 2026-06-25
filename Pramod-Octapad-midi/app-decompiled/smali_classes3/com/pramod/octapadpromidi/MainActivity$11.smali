.class Lcom/pramod/octapadpromidi/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/octapadpromidi/MainActivity;


# direct methods
.method constructor <init>(Lcom/pramod/octapadpromidi/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pramod/octapadpromidi/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 505
    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity$11;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 508
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$11;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetfxControlBar(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$11;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetadvControlBar(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$11;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetfxControlBar(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$11;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetfxControlBar(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$11;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetadvControlBar(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$11;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetbtnEq(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/pramod/octapadpromidi/R$drawable;->btn_3d_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$11;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetfxControlBar(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$11;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetadvControlBar(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$11;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetbtnEq(Lcom/pramod/octapadpromidi/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/pramod/octapadpromidi/R$drawable;->btn_3d_orange:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 519
    :cond_1
    :goto_0
    return-void
.end method
