.class Lcom/pramod/octapadpromidi/ActivationActivity$1;
.super Ljava/lang/Object;
.source "ActivationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/ActivationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/octapadpromidi/ActivationActivity;


# direct methods
.method constructor <init>(Lcom/pramod/octapadpromidi/ActivationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pramod/octapadpromidi/ActivationActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/pramod/octapadpromidi/ActivationActivity$1;->this$0:Lcom/pramod/octapadpromidi/ActivationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/pramod/octapadpromidi/ActivationActivity$1;->this$0:Lcom/pramod/octapadpromidi/ActivationActivity;

    invoke-virtual {v0}, Lcom/pramod/octapadpromidi/ActivationActivity;->activateApp()V

    .line 47
    return-void
.end method
