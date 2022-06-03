.class public Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
.super Ljava/lang/Object;
.source "VideoBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

.field private static final NO_FRAME:I = -0x1


# instance fields
.field private factory:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

.field private frame:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
    move-object v1, v0

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
    move v1, p1

    .local v1, "frame":I
    move-object v2, v0

    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    move v4, v1

    invoke-static {v4}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->checkValidFrame(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;I)V

    .line 30
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;)V
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
    move-object v1, p1

    .local v1, "factory":Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;I)V

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;I)V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
    move-object v1, p1

    .local v1, "factory":Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
    move v2, p2

    .local v2, "frame":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->factory:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    .line 38
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->frame:I

    .line 39
    return-void
.end method

.method private static checkValidFrame(I)I
    .locals 5

    .prologue
    .line 71
    move v0, p0

    .local v0, "frame":I
    move v1, v0

    if-gez v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Requested frame must be non-negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_0
    move v1, v0

    move v0, v1

    .end local v0    # "frame":I
    return v0
.end method


# virtual methods
.method public decode(Landroid/os/ParcelFileDescriptor;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
    move-object v2, p1

    .local v2, "resource":Landroid/os/ParcelFileDescriptor;
    move-object v3, p2

    .local v3, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move v4, p3

    .local v4, "outWidth":I
    move/from16 v5, p4

    .local v5, "outHeight":I
    move-object/from16 v6, p5

    .local v6, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    move-object v9, v1

    iget-object v9, v9, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->factory:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    invoke-virtual {v9}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;->build()Landroid/media/MediaMetadataRetriever;

    move-result-object v9

    move-object v7, v9

    .line 46
    .local v7, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    move-object v9, v7

    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 48
    move-object v9, v1

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->frame:I

    if-ltz v9, :cond_0

    .line 49
    move-object v9, v7

    move-object v10, v1

    iget v10, v10, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->frame:I

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v8, v9

    .line 53
    .local v8, "result":Landroid/graphics/Bitmap;
    :goto_0
    move-object v9, v7

    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 54
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 55
    move-object v9, v8

    move-object v1, v9

    .end local v1    # "this":Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
    return-object v1

    .line 51
    .end local v8    # "result":Landroid/graphics/Bitmap;
    .restart local v1    # "this":Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
    :cond_0
    move-object v9, v7

    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v8, v9

    .restart local v8    # "result":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public bridge synthetic decode(Ljava/lang/Object;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move v3, p3

    .local v3, "x2":I
    move/from16 v4, p4

    .local v4, "x3":I
    move-object/from16 v5, p5

    .local v5, "x4":Lcom/bumptech/glide/load/DecodeFormat;
    move-object v6, v0

    move-object v7, v1

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    move-object v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->decode(Landroid/os/ParcelFileDescriptor;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
    const-string/jumbo v1, "VideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
    return-object v0
.end method
