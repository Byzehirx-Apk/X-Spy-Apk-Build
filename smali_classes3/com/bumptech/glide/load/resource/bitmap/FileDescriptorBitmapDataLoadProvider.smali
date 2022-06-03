.class public Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;
.super Ljava/lang/Object;
.source "FileDescriptorBitmapDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final encoder:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

.field private final sourceDecoder:Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

.field private final sourceEncoder:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 11

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;
    move-object v1, p1

    .local v1, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v2, p2

    .local v2, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 29
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->sourceDecoder:Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    .line 30
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>()V

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->encoder:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    .line 31
    move-object v3, v0

    invoke-static {}, Lcom/bumptech/glide/load/resource/NullEncoder;->get()Lcom/bumptech/glide/load/Encoder;

    move-result-object v4

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

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

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;
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

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->encoder:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;
    return-object v0
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->sourceDecoder:Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;
    return-object v0
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;
    return-object v0
.end method
