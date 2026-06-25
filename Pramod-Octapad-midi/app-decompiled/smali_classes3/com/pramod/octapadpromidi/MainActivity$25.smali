.class Lcom/pramod/octapadpromidi/MainActivity$25;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/MainActivity;->showKitListDialog(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/octapadpromidi/MainActivity;

.field final synthetic val$kitFolders:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/pramod/octapadpromidi/MainActivity;Ljava/util/ArrayList;)V
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

    .line 1445
    iput-object p2, p0, Lcom/pramod/octapadpromidi/MainActivity$25;->val$kitFolders:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/pramod/octapadpromidi/MainActivity$25;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1448
    iget-object v0, p0, Lcom/pramod/octapadpromidi/MainActivity$25;->val$kitFolders:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/documentfile/provider/DocumentFile;

    .line 1450
    .local v0, "selectedKitFolder":Landroidx/documentfile/provider/DocumentFile;
    :try_start_0
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$25;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pramod/octapadpromidi/MainActivity;->loadKitFromFolder(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    goto :goto_0

    .line 1451
    :catch_0
    move-exception v1

    .line 1452
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/pramod/octapadpromidi/MainActivity$25;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading kit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1453
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1455
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v1, p0, Lcom/pramod/octapadpromidi/MainActivity$25;->this$0:Lcom/pramod/octapadpromidi/MainActivity;

    .line 1456
    .local v1, "mainActivity":Lcom/pramod/octapadpromidi/MainActivity;
    invoke-static {v1}, Lcom/pramod/octapadpromidi/MainActivity;->-$$Nest$fgetkitIndex(Lcom/pramod/octapadpromidi/MainActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pramod/octapadpromidi/MainActivity;->saveKitToMemory(I)V

    .line 1457
    return-void
.end method
