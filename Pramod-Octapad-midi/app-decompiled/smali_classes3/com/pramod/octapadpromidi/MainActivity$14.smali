.class Lcom/pramod/octapadpromidi/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/MainActivity;->initSeekBars()V
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

    .line 584
    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity$14;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 587
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$14;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetpadDelayOn(Lcom/pramod/octapadpromidi/MainActivity;)[Z

    move-result-object v0

    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$14;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetselectedPad(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v1

    aput-boolean p2, v0, v1

    .line 588
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$14;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    .line 589
    .local v0, "mainActivity":Lcom/pramod/octapadpromidi/MainActivity;
    invoke-static {v0}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetkitIndex(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToMemory(I)V

    .line 590
    return-void
.end method
