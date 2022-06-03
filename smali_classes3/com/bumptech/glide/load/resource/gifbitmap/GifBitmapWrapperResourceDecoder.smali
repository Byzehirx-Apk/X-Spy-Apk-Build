.class public Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;,
        Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PARSER:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

.field private static final DEFAULT_STREAM_FACTORY:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

.field static final MARK_LIMIT_BYTES:I = 0x800


# instance fields
.field private final bitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final gifDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private final parser:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

.field private final streamFactory:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->DEFAULT_PARSER:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    .line 24
    new-instance v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->DEFAULT_STREAM_FACTORY:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    move-object v1, p1

    .local v1, "bitmapDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;"
    move-object v2, p2

    .local v2, "gifDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v3, p3

    .local v3, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    sget-object v8, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->DEFAULT_PARSER:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    sget-object v9, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->DEFAULT_STREAM_FACTORY:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    invoke-direct/range {v4 .. v9}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;)V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    move-object v1, p1

    .local v1, "bitmapDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;"
    move-object v2, p2

    .local v2, "gifDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v3, p3

    .local v3, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v4, p4

    .local v4, "parser":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;
    move-object v5, p5

    .local v5, "streamFactory":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 46
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->gifDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 47
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 48
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->parser:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    .line 49
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->streamFactory:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    .line 50
    return-void
.end method

.method private decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II[B)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    move-object v1, p1

    .local v1, "source":Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v4, p4

    .local v4, "bytes":[B
    move-object v6, v1

    invoke-virtual {v6}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->getStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 71
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decodeStream(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II[B)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object v6

    move-object v5, v6

    .line 75
    .local v5, "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :goto_0
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    return-object v0

    .line 73
    .end local v5    # "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decodeBitmapWrapper(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object v6

    move-object v5, v6

    .restart local v5    # "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    goto :goto_0
.end method

.method private decodeBitmapWrapper(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    move-object v1, p1

    .local v1, "toDecode":Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    const/4 v6, 0x0

    move-object v4, v6

    .line 121
    .local v4, "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-interface {v6, v7, v8, v9}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v6

    move-object v5, v6

    .line 122
    .local v5, "bitmapResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 123
    new-instance v6, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v5

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V

    move-object v4, v6

    .line 126
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    return-object v0
.end method

.method private decodeGifWrapper(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    move-object v1, p1

    .local v1, "bis":Ljava/io/InputStream;
    move v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    const/4 v8, 0x0

    move-object v4, v8

    .line 101
    .local v4, "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->gifDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    move-object v9, v1

    move v10, v2

    move v11, v3

    invoke-interface {v8, v9, v10, v11}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v8

    move-object v5, v8

    .line 102
    .local v5, "gifResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v8, v5

    if-eqz v8, :cond_0

    .line 103
    move-object v8, v5

    invoke-interface {v8}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    move-object v6, v8

    .line 108
    .local v6, "drawable":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v8, v6

    invoke-virtual {v8}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getFrameCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    .line 109
    new-instance v8, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V

    move-object v4, v8

    .line 115
    .end local v6    # "drawable":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    :cond_0
    :goto_0
    move-object v8, v4

    move-object v0, v8

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    return-object v0

    .line 111
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    .restart local v6    # "drawable":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    :cond_1
    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v6

    invoke-virtual {v10}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getFirstFrame()Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v9, v10, v11}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    move-object v7, v8

    .line 112
    .local v7, "bitmapResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    new-instance v8, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v7

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V

    move-object v4, v8

    goto :goto_0
.end method

.method private decodeStream(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II[B)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    move-object v1, p1

    .local v1, "source":Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    move-object/from16 v4, p4

    .local v4, "bytes":[B
    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->streamFactory:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    move-object v10, v1

    invoke-virtual {v10}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->getStream()Ljava/io/InputStream;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;->build(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object v9

    move-object v5, v9

    .line 81
    .local v5, "bis":Ljava/io/InputStream;
    move-object v9, v5

    const/16 v10, 0x800

    invoke-virtual {v9, v10}, Ljava/io/InputStream;->mark(I)V

    .line 82
    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->parser:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    move-object v10, v5

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;->parse(Ljava/io/InputStream;)Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v9

    move-object v6, v9

    .line 83
    .local v6, "type":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    move-object v9, v5

    invoke-virtual {v9}, Ljava/io/InputStream;->reset()V

    .line 85
    const/4 v9, 0x0

    move-object v7, v9

    .line 86
    .local v7, "result":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    move-object v9, v6

    sget-object v10, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    if-ne v9, v10, :cond_0

    .line 87
    move-object v9, v0

    move-object v10, v5

    move v11, v2

    move v12, v3

    invoke-direct {v9, v10, v11, v12}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decodeGifWrapper(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object v9

    move-object v7, v9

    .line 90
    :cond_0
    move-object v9, v7

    if-nez v9, :cond_1

    .line 93
    new-instance v9, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v5

    move-object v12, v1

    invoke-virtual {v12}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    move-object v8, v9

    .line 94
    .local v8, "forBitmapDecoder":Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    move-object v9, v0

    move-object v10, v8

    move v11, v2

    move v12, v3

    invoke-direct {v9, v10, v11, v12}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decodeBitmapWrapper(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object v9

    move-object v7, v9

    .line 96
    .end local v8    # "forBitmapDecoder":Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    :cond_1
    move-object v9, v7

    move-object v0, v9

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    return-object v0
.end method


# virtual methods
.method public decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    move-object v1, p1

    .local v1, "source":Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v8

    move-object v4, v8

    .line 57
    .local v4, "pool":Lcom/bumptech/glide/util/ByteArrayPool;
    move-object v8, v4

    invoke-virtual {v8}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v8

    move-object v5, v8

    .line 59
    .local v5, "tempBytes":[B
    const/4 v8, 0x0

    move-object v6, v8

    .line 61
    .local v6, "wrapper":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    move-object v12, v5

    :try_start_0
    invoke-direct {v8, v9, v10, v11, v12}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II[B)Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    move-object v6, v8

    .line 63
    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    move-result v8

    .line 64
    .line 65
    move-object v8, v6

    if-eqz v8, :cond_0

    new-instance v8, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v6

    invoke-direct {v9, v10}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;-><init>(Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V

    :goto_0
    move-object v0, v8

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    return-object v0

    .line 63
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    move-result v8

    move-object v8, v7

    throw v8

    .line 65
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 132
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->gifDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->id:Ljava/lang/String;

    .line 134
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->id:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    return-object v0
.end method
