.class Lcom/pramod/octapadpromidi/LoopsActivity$14;
.super Ljava/lang/Object;
.source "LoopsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/LoopsActivity;->setupControls()V
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

    .line 464
    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$14;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 467
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/pramod/octapadpromidi/R$id;->chkMultiMode:I

    if-ne v0, v1, :cond_0

    .line 468
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$14;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0, p2}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fputisMultiMode(Lcom/pramod/octapadpromidi/LoopsActivity;Z)V

    .line 469
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$14;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetprefs(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$14;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetisMultiMode(Lcom/pramod/octapadpromidi/LoopsActivity;)Z

    move-result v1

    const-string v2, "loop_multi_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 470
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/pramod/octapadpromidi/R$id;->chkOneShotMode:I

    if-ne v0, v1, :cond_2

    .line 471
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$14;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0, p2}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fputisOneShotMode(Lcom/pramod/octapadpromidi/LoopsActivity;Z)V

    .line 472
    iget-object v0, p0, Lcom/pramod/octapadpromidi/LoopsActivity$14;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetprefs(Lcom/pramod/octapadpromidi/LoopsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$14;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetisOneShotMode(Lcom/pramod/octapadpromidi/LoopsActivity;)Z

    move-result v1

    const-string v2, "loop_one_shot_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 474
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$14;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetmediaPlayers(Lcom/pramod/octapadpromidi/LoopsActivity;)[Landroid/media/MediaPlayer;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 475
    iget-object v1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$14;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetmediaPlayers(Lcom/pramod/octapadpromidi/LoopsActivity;)[Landroid/media/MediaPlayer;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/pramod/octapadpromidi/LoopsActivity$14;->this$0:Lcom/pramod/octapadpromidi/LoopsActivity;

    invoke-static {v2}, Lcom/pramod/octapadpromidi/LoopsActivity;->-$$Nest$fgetisOneShotMode(Lcom/pramod/octapadpromidi/LoopsActivity;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 473
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method
