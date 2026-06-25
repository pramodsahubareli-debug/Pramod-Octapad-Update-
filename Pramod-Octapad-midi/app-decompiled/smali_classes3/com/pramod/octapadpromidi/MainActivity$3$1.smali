.class Lcom/pramod/octapadpromidi/MainActivity$3$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/MainActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pramod/octapadpromidi/MainActivity$3;

.field final synthetic val$finalPadIndex:I


# direct methods
.method constructor <init>(Lcom/pramod/octapadpromidi/MainActivity$3;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/pramod/octapadpromidi/MainActivity$3;
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

    .line 344
    iput p2, p0, Lcom/pramod/octapadpromidi/MainActivity$3$1;->val$finalPadIndex:I

    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity$3$1;->this$1:Lcom/pramod/octapadpromidi/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$3$1;->this$1:Lcom/pramod/octapadpromidi/MainActivity$3;

    iget-object v0, v0, Lcom/pramod/octapadpromidi/MainActivity$3;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpads(Lcom/pramod/octapadpromidi/MainActivity;)[Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/pramod/octapadpromidi/MainActivity$3$1;->val$finalPadIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 351
    :goto_0
    return-void
.end method
