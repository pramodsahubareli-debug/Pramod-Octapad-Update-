.class Lcom/pramod/octapadpromidi/ActivationActivity$2;
.super Ljava/lang/Object;
.source "ActivationActivity.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/ActivationActivity;->activateApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/octapadpromidi/ActivationActivity;

.field final synthetic val$deviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pramod/octapadpromidi/ActivationActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pramod/octapadpromidi/ActivationActivity;
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

    .line 62
    iput-object p2, p0, Lcom/pramod/octapadpromidi/ActivationActivity$2;->val$deviceId:Ljava/lang/String;

    iput-object p1, p0, Lcom/pramod/octapadpromidi/ActivationActivity$2;->this$0:Lcom/pramod/octapadpromidi/ActivationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 3
    .param p1, "error"    # Lcom/google/firebase/database/DatabaseError;

    .line 89
    iget-object v0, p0, Lcom/pramod/octapadpromidi/ActivationActivity$2;->this$0:Lcom/pramod/octapadpromidi/ActivationActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/ActivationActivity;->-$$Nest$fgetprogressBar(Lcom/pramod/octapadpromidi/ActivationActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/pramod/octapadpromidi/ActivationActivity$2;->this$0:Lcom/pramod/octapadpromidi/ActivationActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/ActivationActivity;->-$$Nest$fgetbtnActivate(Lcom/pramod/octapadpromidi/ActivationActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/pramod/octapadpromidi/ActivationActivity$2;->this$0:Lcom/pramod/octapadpromidi/ActivationActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 7
    .param p1, "snapshot"    # Lcom/google/firebase/database/DataSnapshot;

    .line 66
    iget-object v0, p0, Lcom/pramod/octapadpromidi/ActivationActivity$2;->this$0:Lcom/pramod/octapadpromidi/ActivationActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/ActivationActivity;->-$$Nest$fgetprogressBar(Lcom/pramod/octapadpromidi/ActivationActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/pramod/octapadpromidi/ActivationActivity$2;->this$0:Lcom/pramod/octapadpromidi/ActivationActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/ActivationActivity;->-$$Nest$fgetbtnActivate(Lcom/pramod/octapadpromidi/ActivationActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 70
    .local v2, "status":Ljava/lang/String;
    const-string v3, "device_id"

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 71
    .local v4, "dbDeviceId":Ljava/lang/String;
    const-string v5, "unused"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "used"

    if-eqz v5, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getRef()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 73
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getRef()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v1, p0, Lcom/pramod/octapadpromidi/ActivationActivity$2;->val$deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 74
    iget-object v0, p0, Lcom/pramod/octapadpromidi/ActivationActivity$2;->this$0:Lcom/pramod/octapadpromidi/ActivationActivity;

    invoke-virtual {v0}, Lcom/pramod/octapadpromidi/ActivationActivity;->successAndProceed()V

    .line 75
    return-void

    .line 76
    :cond_0
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pramod/octapadpromidi/ActivationActivity$2;->val$deviceId:Ljava/lang/String;

    move-object v3, v0

    .local v3, "str":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/pramod/octapadpromidi/ActivationActivity$2;->this$0:Lcom/pramod/octapadpromidi/ActivationActivity;

    invoke-virtual {v0}, Lcom/pramod/octapadpromidi/ActivationActivity;->successAndProceed()V

    .line 78
    return-void

    .line 80
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/pramod/octapadpromidi/ActivationActivity$2;->this$0:Lcom/pramod/octapadpromidi/ActivationActivity;

    const-string v3, "Key is already used on another device!"

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 81
    return-void

    .line 84
    .end local v2    # "status":Ljava/lang/String;
    .end local v4    # "dbDeviceId":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/pramod/octapadpromidi/ActivationActivity$2;->this$0:Lcom/pramod/octapadpromidi/ActivationActivity;

    const-string v2, "Invalid Activation Key!"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 85
    return-void
.end method
