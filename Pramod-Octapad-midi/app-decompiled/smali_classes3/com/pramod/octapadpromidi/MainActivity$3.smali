.class Lcom/pramod/octapadpromidi/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/MainActivity;->handleMidiNoteOn(BB)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/octapadpromidi/MainActivity;

.field final synthetic val$finalPadIndex:I


# direct methods
.method constructor <init>(Lcom/pramod/octapadpromidi/MainActivity;I)V
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

    .line 337
    iput p2, p0, Lcom/pramod/octapadpromidi/MainActivity$3;->val$finalPadIndex:I

    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity$3;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$3;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpads(Lcom/pramod/octapadpromidi/MainActivity;)[Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/pramod/octapadpromidi/MainActivity$3;->val$finalPadIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 344
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/pramod/octapadpromidi/MainActivity$3$1;

    iget v2, p0, Lcom/pramod/octapadpromidi/MainActivity$3;->val$finalPadIndex:I

    invoke-direct {v1, p0, v2}, Lcom/pramod/octapadpromidi/MainActivity$3$1;-><init>(Lcom/pramod/octapadpromidi/MainActivity$3;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    return-void
.end method
