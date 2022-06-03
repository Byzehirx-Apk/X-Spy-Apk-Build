.class public Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;,
        Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final DECODER_POOL:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

.field private static final PARSER_POOL:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

.field private static final TAG:Ljava/lang/String; = "GifResourceDecoder"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final context:Landroid/content/Context;

.field private final decoderPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

.field private final parserPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

.field private final provider:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->PARSER_POOL:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->DECODER_POOL:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 8

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget-object v6, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->PARSER_POOL:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    sget-object v7, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->DECODER_POOL:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;)V
    .locals 10

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v3, p3

    .local v3, "parserPool":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
    move-object v4, p4

    .local v4, "decoderPool":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, v5, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->context:Landroid/content/Context;

    .line 49
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 50
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decoderPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    .line 51
    move-object v5, v0

    new-instance v6, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v6, v5, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->provider:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    .line 52
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->parserPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    .line 53
    return-void
.end method

.method private decode([BIILcom/bumptech/glide/gifdecoder/GifHeaderParser;Lcom/bumptech/glide/gifdecoder/GifDecoder;)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
    .locals 22

    .prologue
    .line 69
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
    move-object/from16 v1, p1

    .local v1, "data":[B
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    move-object/from16 v4, p4

    .local v4, "parser":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object/from16 v5, p5

    .local v5, "decoder":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v10, v4

    invoke-virtual {v10}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v10

    move-object v6, v10

    .line 70
    .local v6, "header":Lcom/bumptech/glide/gifdecoder/GifHeader;
    move-object v10, v6

    invoke-virtual {v10}, Lcom/bumptech/glide/gifdecoder/GifHeader;->getNumFrames()I

    move-result v10

    if-lez v10, :cond_0

    move-object v10, v6

    invoke-virtual {v10}, Lcom/bumptech/glide/gifdecoder/GifHeader;->getStatus()I

    move-result v10

    if-eqz v10, :cond_1

    .line 72
    :cond_0
    const/4 v10, 0x0

    move-object v0, v10

    .line 85
    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
    :goto_0
    return-object v0

    .line 75
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
    :cond_1
    move-object v10, v0

    move-object v11, v5

    move-object v12, v6

    move-object v13, v1

    invoke-direct {v10, v11, v12, v13}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decodeFirstFrame(Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/gifdecoder/GifHeader;[B)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v7, v10

    .line 76
    .local v7, "firstFrame":Landroid/graphics/Bitmap;
    move-object v10, v7

    if-nez v10, :cond_2

    .line 77
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {}, Lcom/bumptech/glide/load/resource/UnitTransformation;->get()Lcom/bumptech/glide/load/resource/UnitTransformation;

    move-result-object v10

    move-object v8, v10

    .line 82
    .local v8, "unitTransformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    new-instance v10, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    move-object v12, v0

    iget-object v12, v12, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->context:Landroid/content/Context;

    move-object v13, v0

    iget-object v13, v13, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->provider:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v15, v8

    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v1

    move-object/from16 v20, v7

    invoke-direct/range {v11 .. v20}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/graphics/Bitmap;)V

    move-object v9, v10

    .line 85
    .local v9, "gifDrawable":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    new-instance v10, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    move-object v12, v9

    invoke-direct {v11, v12}, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V

    move-object v0, v10

    goto :goto_0
.end method

.method private decodeFirstFrame(Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/gifdecoder/GifHeader;[B)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
    move-object v1, p1

    .local v1, "decoder":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v2, p2

    .local v2, "header":Lcom/bumptech/glide/gifdecoder/GifHeader;
    move-object v3, p3

    .local v3, "data":[B
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 90
    move-object v4, v1

    invoke-virtual {v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->advance()V

    .line 91
    move-object v4, v1

    invoke-virtual {v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
    return-object v0
.end method

.method private static inputStreamToBytes(Ljava/io/InputStream;)[B
    .locals 10

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "is":Ljava/io/InputStream;
    const/16 v5, 0x4000

    move v1, v5

    .line 101
    .local v1, "bufferSize":I
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/16 v7, 0x4000

    invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v2, v5

    .line 104
    .local v2, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x4000

    :try_start_0
    new-array v5, v5, [B

    move-object v4, v5

    .line 105
    .local v4, "data":[B
    :goto_0
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v9, v5

    move v5, v9

    move v6, v9

    move v3, v6

    .local v3, "nRead":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 106
    move-object v5, v2

    move-object v6, v4

    const/4 v7, 0x0

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 108
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 113
    .end local v3    # "nRead":I
    .end local v4    # "data":[B
    :goto_1
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object v0, v5

    .end local v0    # "is":Ljava/io/InputStream;
    return-object v0

    .line 109
    .restart local v0    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 110
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v5, "GifResourceDecoder"

    const-string/jumbo v6, "Error reading data from stream"

    move-object v7, v3

    invoke-static {v5, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/io/InputStream;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decode(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
    return-object v0
.end method

.method public decode(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
    .locals 15

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
    move-object/from16 v1, p1

    .local v1, "source":Ljava/io/InputStream;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    move-object v9, v1

    invoke-static {v9}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->inputStreamToBytes(Ljava/io/InputStream;)[B

    move-result-object v9

    move-object v4, v9

    .line 58
    .local v4, "data":[B
    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->parserPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    move-object v10, v4

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->obtain([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v9

    move-object v5, v9

    .line 59
    .local v5, "parser":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decoderPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->provider:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->obtain(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-result-object v9

    move-object v6, v9

    .line 61
    .local v6, "decoder":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v9, v0

    move-object v10, v4

    move v11, v2

    move v12, v3

    move-object v13, v5

    move-object v14, v6

    :try_start_0
    invoke-direct/range {v9 .. v14}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decode([BIILcom/bumptech/glide/gifdecoder/GifHeaderParser;Lcom/bumptech/glide/gifdecoder/GifDecoder;)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    move-object v7, v9

    .line 63
    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->parserPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    move-object v10, v5

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->release(Lcom/bumptech/glide/gifdecoder/GifHeaderParser;)V

    .line 64
    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decoderPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    move-object v10, v6

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->release(Lcom/bumptech/glide/gifdecoder/GifDecoder;)V

    move-object v9, v7

    move-object v0, v9

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
    return-object v0

    .line 63
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->parserPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    move-object v10, v5

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->release(Lcom/bumptech/glide/gifdecoder/GifHeaderParser;)V

    .line 64
    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decoderPool:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    move-object v10, v6

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->release(Lcom/bumptech/glide/gifdecoder/GifDecoder;)V

    move-object v9, v8

    throw v9
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
    const-string/jumbo v1, ""

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
    return-object v0
.end method
