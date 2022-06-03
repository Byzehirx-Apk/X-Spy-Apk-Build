.class public Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;
.super Ljava/lang/Object;
.source "GifDrawableLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final decoder:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

.field private final encoder:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

.field private final sourceEncoder:Lcom/bumptech/glide/load/model/StreamEncoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 9

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->decoder:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    .line 28
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->decoder:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    .line 29
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->encoder:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

    .line 30
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/model/StreamEncoder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/bumptech/glide/load/model/StreamEncoder;-><init>()V

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/model/StreamEncoder;

    .line 31
    return-void
.end method


# virtual methods
.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;
    return-object v0
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->encoder:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;
    return-object v0
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->decoder:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;
    return-object v0
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/model/StreamEncoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;
    return-object v0
.end method
