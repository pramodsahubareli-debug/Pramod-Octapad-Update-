.class public Lcom/pramod/octapadpromidi/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyRawToUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawResId"    # I
    .param p2, "dest"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 34
    .local v0, "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 35
    .local v1, "out":Ljava/io/OutputStream;
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 37
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 38
    .local v3, "len":I
    if-gtz v3, :cond_0

    .line 39
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 40
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 41
    return-void

    .line 43
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v3    # "len":I
    goto :goto_0

    .line 45
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "out":Ljava/io/OutputStream;
    .end local v2    # "buf":[B
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public static copyUriToUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Landroid/net/Uri;
    .param p2, "dest"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 15
    .local v0, "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 16
    .local v1, "out":Ljava/io/OutputStream;
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 18
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 19
    .local v3, "len":I
    if-gtz v3, :cond_0

    .line 20
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 21
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 22
    return-void

    .line 24
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v3    # "len":I
    goto :goto_0

    .line 26
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "out":Ljava/io/OutputStream;
    .end local v2    # "buf":[B
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
