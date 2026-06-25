.class Lcom/pramod/octapadpromidi/LoopsActivity$23;
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
        accessFlags = {0x8010}
        names = {null}
    .end annotation

    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$23;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 1
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$23;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;
    iget-boolean v1, v0, Lcom/pramod/octapadpromidi/LoopsActivity;->isOneShotMode:Z
    xor-int/lit8 v1, v1, 0x1
    iput-boolean v1, v0, Lcom/pramod/octapadpromidi/LoopsActivity;->isOneShotMode:Z

    iget-object v2, v0, Lcom/pramod/octapadpromidi/LoopsActivity;->prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v2
    const-string v3, "loop_one_shot_mode"
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    move-result-object v2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, v0, Lcom/pramod/octapadpromidi/LoopsActivity;->chkOneShotMode:Landroid/widget/CheckBox;
    if-eqz v2, :cond_check
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_check
    iget-object v2, v0, Lcom/pramod/octapadpromidi/LoopsActivity;->btnRepeat:Landroid/widget/Button;
    if-eqz v2, :cond_0
    if-nez v1, :cond_1
    const-string v3, "REPEAT ON"
    goto :goto_0

    :cond_1
    const-string v3, "REPEAT OFF"

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x8
    if-ge v3, v4, :cond_2
    iget-object v4, v0, Lcom/pramod/octapadpromidi/LoopsActivity;->mediaPlayers:[Landroid/media/MediaPlayer;
    aget-object v4, v4, v3
    if-eqz v4, :cond_3
    xor-int/lit8 v5, v1, 0x1
    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_3
    add-int/lit8 v3, v3, 0x1
    goto :goto_1

    :cond_2
    return-void
.end method
