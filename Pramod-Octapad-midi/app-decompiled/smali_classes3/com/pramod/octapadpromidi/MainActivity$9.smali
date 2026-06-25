.class Lcom/pramod/octapadpromidi/MainActivity$9;
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

    .line 487
    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity$9;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 492
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 493
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 494
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$9;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    const/16 v2, 0x7d2

    invoke-virtual {v1, v0, v2}, Lcom/pramod/octapadpromidi/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 495
    return-void
.end method
