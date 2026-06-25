.class Lcom/pramod/octapadpromidi/LoopsActivity$1;
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

    .line 176
    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$1;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$1;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-virtual {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->finish()V

    .line 180
    return-void
.end method
