.class Lcom/pramod/octapadpromidi/MainActivity$21;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/MainActivity;->showEditPadOptions(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/octapadpromidi/MainActivity;

.field final synthetic val$padIndex:I


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

    .line 792
    iput p2, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->val$padIndex:I

    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 795
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 796
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    iget v3, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->val$padIndex:I

    invoke-static {v0, v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fputcopySourcePad(Lcom/pramod/octapadpromidi/MainActivity;I)V

    .line 798
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0, v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fputswapSourcePad(Lcom/pramod/octapadpromidi/MainActivity;I)V

    .line 799
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    const-string v1, "Copy Mode ON: Now tap target PAD to paste"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 800
    return-void

    .line 802
    :cond_0
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 803
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    iget v3, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->val$padIndex:I

    invoke-static {v0, v3}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fputswapSourcePad(Lcom/pramod/octapadpromidi/MainActivity;I)V

    .line 804
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0, v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fputcopySourcePad(Lcom/pramod/octapadpromidi/MainActivity;I)V

    .line 805
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    const-string v1, "Exchange Mode ON: Now tap second PAD to swap"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 806
    return-void

    .line 808
    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 809
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetselectedWavUris(Lcom/pramod/octapadpromidi/MainActivity;)[Landroid/net/Uri;

    move-result-object v1

    iget v3, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->val$padIndex:I

    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 810
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetselectedRawResIds(Lcom/pramod/octapadpromidi/MainActivity;)[I

    move-result-object v1

    iget v3, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->val$padIndex:I

    aput v2, v1, v3

    .line 811
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetsamples(Lcom/pramod/octapadpromidi/MainActivity;)[Lcom/pramod/octapadpromidi/AudioEngine$SampleData;

    move-result-object v1

    iget v3, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->val$padIndex:I

    aput-object v4, v1, v3

    .line 812
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadVolume(Lcom/pramod/octapadpromidi/MainActivity;)[F

    move-result-object v1

    iget v3, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->val$padIndex:I

    const v4, 0x3f4ccccd    # 0.8f

    aput v4, v1, v3

    .line 813
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadPitch(Lcom/pramod/octapadpromidi/MainActivity;)[F

    move-result-object v1

    iget v3, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->val$padIndex:I

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v3

    .line 814
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadDelayOn(Lcom/pramod/octapadpromidi/MainActivity;)[Z

    move-result-object v1

    iget v3, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->val$padIndex:I

    aput-boolean v2, v1, v3

    .line 815
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadDelayTime(Lcom/pramod/octapadpromidi/MainActivity;)[F

    move-result-object v1

    iget v3, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->val$padIndex:I

    const/high16 v4, 0x43160000    # 150.0f

    aput v4, v1, v3

    .line 816
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadDelayLevel(Lcom/pramod/octapadpromidi/MainActivity;)[F

    move-result-object v1

    iget v3, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->val$padIndex:I

    const/high16 v4, 0x3f000000    # 0.5f

    aput v4, v1, v3

    .line 817
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadEqHigh(Lcom/pramod/octapadpromidi/MainActivity;)[F

    move-result-object v1

    iget v3, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->val$padIndex:I

    const/4 v4, 0x0

    aput v4, v1, v3

    .line 818
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadEqMid(Lcom/pramod/octapadpromidi/MainActivity;)[F

    move-result-object v1

    iget v3, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->val$padIndex:I

    aput v4, v1, v3

    .line 819
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadEqLow(Lcom/pramod/octapadpromidi/MainActivity;)[F

    move-result-object v1

    iget v3, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->val$padIndex:I

    aput v4, v1, v3

    .line 820
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadChokeGroup(Lcom/pramod/octapadpromidi/MainActivity;)[I

    move-result-object v1

    iget v3, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->val$padIndex:I

    aput v2, v1, v3

    .line 821
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    .line 822
    .local v1, "mainActivity":Lcom/pramod/octapadpromidi/MainActivity;
    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetkitIndex(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToMemory(I)V

    .line 823
    iget-object v3, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PAD "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->val$padIndex:I

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " Cleared!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 824
    return-void

    .line 826
    .end local v1    # "mainActivity":Lcom/pramod/octapadpromidi/MainActivity;
    :cond_2
    return-void

    .line 828
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 832
    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 833
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$21;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    const/16 v2, 0x1389

    invoke-virtual {v0, v1, v2}, Lcom/pramod/octapadpromidi/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 834
    return-void
.end method
