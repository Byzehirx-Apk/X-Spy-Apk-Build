.class public Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;
.super Ljava/lang/Object;
.source "BitmapToGlideDrawableTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
        "<",
        "Landroid/graphics/Bitmap;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final glideBitmapDrawableTranscoder:Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;-><init>(Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;)V
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;
    move-object v1, p1

    .local v1, "glideBitmapDrawableTranscoder":Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;->glideBitmapDrawableTranscoder:Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    .line 26
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;->glideBitmapDrawableTranscoder:Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;
    return-object v0
.end method

.method public transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;
    move-object v1, p1

    .local v1, "toTranscode":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;->glideBitmapDrawableTranscoder:Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;->transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;
    return-object v0
.end method
