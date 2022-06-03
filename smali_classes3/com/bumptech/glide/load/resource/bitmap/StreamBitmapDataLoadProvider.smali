.class public Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;
.super Ljava/lang/Object;
.source "StreamBitmapDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider",
        "<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final decoder:Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

.field private final encoder:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

.field private final sourceEncoder:Lcom/bumptech/glide/load/model/StreamEncoder;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 9

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;
    move-object v1, p1

    .local v1, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v2, p2

    .local v2, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/model/StreamEncoder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/bumptech/glide/load/model/StreamEncoder;-><init>()V

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/model/StreamEncoder;

    .line 29
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->decoder:Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    .line 30
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>()V

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->encoder:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    .line 31
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->decoder:Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    .line 32
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
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;
    return-object v0
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->encoder:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;
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
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->decoder:Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;
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
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/model/StreamEncoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;
    return-object v0
.end method
