.class public Lcom/pramod/octapadpromidi/ActivationActivity;
.super Landroid/app/Activity;
.source "ActivationActivity.java"


# static fields
.field private static final KEY_IS_ACTIVATED:Ljava/lang/String; = "is_activated"

.field private static final PREF_NAME:Ljava/lang/String; = "OctapadSettings"


# instance fields
.field private btnActivate:Landroid/widget/Button;

.field private editActivationKey:Landroid/widget/EditText;

.field private prefs:Landroid/content/SharedPreferences;

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method static bridge synthetic -$$Nest$fgetbtnActivate(Lcom/pramod/octapadpromidi/ActivationActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/ActivationActivity;->btnActivate:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressBar(Lcom/pramod/octapadpromidi/ActivationActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/pramod/octapadpromidi/ActivationActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private startMainActivity()V
    .locals 2

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pramod/octapadpromidi/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/pramod/octapadpromidi/ActivationActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/ActivationActivity;->finish()V

    .line 107
    return-void
.end method


# virtual methods
.method public activateApp()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/pramod/octapadpromidi/ActivationActivity;->editActivationKey:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "Please enter an activation key"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 56
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/pramod/octapadpromidi/ActivationActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/pramod/octapadpromidi/ActivationActivity;->btnActivate:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/pramod/octapadpromidi/ActivationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v2

    const-string v3, "activation_keys"

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    .line 62
    .local v2, "ref":Lcom/google/firebase/database/DatabaseReference;
    new-instance v3, Lcom/pramod/octapadpromidi/ActivationActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/pramod/octapadpromidi/ActivationActivity$2;-><init>(Lcom/pramod/octapadpromidi/ActivationActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const-string v0, "OctapadSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pramod/octapadpromidi/ActivationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    iput-object v0, p0, Lcom/pramod/octapadpromidi/ActivationActivity;->prefs:Landroid/content/SharedPreferences;

    .line 35
    const-string v2, "is_activated"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/ActivationActivity;->startMainActivity()V

    .line 37
    return-void

    .line 39
    :cond_0
    sget v1, Lcom/pramod/octapadpromidi/R$layout;->activity_activation:I

    invoke-virtual {p0, v1}, Lcom/pramod/octapadpromidi/ActivationActivity;->setContentView(I)V

    .line 40
    sget v1, Lcom/pramod/octapadpromidi/R$id;->editActivationKey:I

    invoke-virtual {p0, v1}, Lcom/pramod/octapadpromidi/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/pramod/octapadpromidi/ActivationActivity;->editActivationKey:Landroid/widget/EditText;

    .line 41
    sget v1, Lcom/pramod/octapadpromidi/R$id;->btnActivate:I

    invoke-virtual {p0, v1}, Lcom/pramod/octapadpromidi/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/pramod/octapadpromidi/ActivationActivity;->btnActivate:Landroid/widget/Button;

    .line 42
    sget v1, Lcom/pramod/octapadpromidi/R$id;->progressBar:I

    invoke-virtual {p0, v1}, Lcom/pramod/octapadpromidi/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/pramod/octapadpromidi/ActivationActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 43
    iget-object v1, p0, Lcom/pramod/octapadpromidi/ActivationActivity;->btnActivate:Landroid/widget/Button;

    new-instance v2, Lcom/pramod/octapadpromidi/ActivationActivity$1;

    invoke-direct {v2, p0}, Lcom/pramod/octapadpromidi/ActivationActivity$1;-><init>(Lcom/pramod/octapadpromidi/ActivationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method public successAndProceed()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/pramod/octapadpromidi/ActivationActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_activated"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    const-string v0, "Activation Successful!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 100
    invoke-direct {p0}, Lcom/pramod/octapadpromidi/ActivationActivity;->startMainActivity()V

    .line 101
    return-void
.end method
