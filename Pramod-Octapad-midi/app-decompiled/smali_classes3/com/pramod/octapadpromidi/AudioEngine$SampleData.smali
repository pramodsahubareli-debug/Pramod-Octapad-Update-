.class public Lcom/pramod/octapadpromidi/AudioEngine$SampleData;
.super Ljava/lang/Object;
.source "AudioEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pramod/octapadpromidi/AudioEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SampleData"
.end annotation


# instance fields
.field public loaded:Z

.field public soundId:I

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/pramod/octapadpromidi/AudioEngine$SampleData;->soundId:I

    .line 22
    iput-boolean v0, p0, Lcom/pramod/octapadpromidi/AudioEngine$SampleData;->loaded:Z

    return-void
.end method
