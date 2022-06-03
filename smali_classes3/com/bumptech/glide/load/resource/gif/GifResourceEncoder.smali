.class public Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
.super Ljava/lang/Object;
.source "GifResourceEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceEncoder",
        "<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final FACTORY:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

.field private static final TAG:Ljava/lang/String; = "GifEncoder"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

.field private final provider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->FACTORY:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
    move-object v1, p1

    .local v1, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->FACTORY:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;)V

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;)V
    .locals 8

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
    move-object v1, p1

    .local v1, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object v2, p2

    .local v2, "factory":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 39
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->provider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 40
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    .line 41
    return-void
.end method

.method private decodeHeaders([B)Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .locals 8

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
    move-object v1, p1

    .local v1, "data":[B
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;->buildParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v5

    move-object v2, v5

    .line 102
    .local v2, "parser":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v5

    .line 103
    move-object v5, v2

    invoke-virtual {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v5

    move-object v3, v5

    .line 105
    .local v3, "header":Lcom/bumptech/glide/gifdecoder/GifHeader;
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->provider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;->buildDecoder(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-result-object v5

    move-object v4, v5

    .line 106
    .local v4, "decoder":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v5, v4

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 107
    move-object v5, v4

    invoke-virtual {v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->advance()V

    .line 109
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
    return-object v0
.end method

.method private getTransformedFrame(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/gif/GifDrawable;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
    move-object v1, p1

    .local v1, "currentFrame":Landroid/graphics/Bitmap;
    move-object v2, p2

    .local v2, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    move-object v3, p3

    .local v3, "drawable":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {v6, v7, v8}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;->buildFrameResource(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v6

    move-object v4, v6

    .line 116
    .local v4, "bitmapResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    move-object v6, v2

    move-object v7, v4

    move-object v8, v3

    invoke-virtual {v8}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicWidth()I

    move-result v8

    move-object v9, v3

    invoke-virtual {v9}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicHeight()I

    move-result v9

    invoke-interface {v6, v7, v8, v9}, Lcom/bumptech/glide/load/Transformation;->transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v6

    move-object v5, v6

    .line 118
    .local v5, "transformedResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 119
    move-object v6, v4

    invoke-interface {v6}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 121
    :cond_0
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
    return-object v0
.end method

.method private writeDataDirect([BLjava/io/OutputStream;)Z
    .locals 8

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
    move-object v1, p1

    .local v1, "data":[B
    move-object v2, p2

    .local v2, "os":Ljava/io/OutputStream;
    const/4 v5, 0x1

    move v3, v5

    .line 90
    .local v3, "success":Z
    move-object v5, v2

    move-object v6, v1

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    :goto_0
    move v5, v3

    move v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
    return v0

    .line 91
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 92
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v5, "GifEncoder"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    const-string/jumbo v5, "GifEncoder"

    const-string/jumbo v6, "Failed to write data to output stream in GifResourceEncoder"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 95
    :cond_0
    const/4 v5, 0x0

    move v3, v5

    goto :goto_0
.end method


# virtual methods
.method public encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 45
    move-object/from16 v3, p0

    .local v3, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
    move-object/from16 v4, p1

    .local v4, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object/from16 v5, p2

    .local v5, "os":Ljava/io/OutputStream;
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 47
    .local v6, "startTime":J
    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v18}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    move-object/from16 v8, v18

    .line 48
    .local v8, "drawable":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getFrameTransformation()Lcom/bumptech/glide/load/Transformation;

    move-result-object v18

    move-object/from16 v9, v18

    .line 49
    .local v9, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/bumptech/glide/load/resource/UnitTransformation;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 50
    move-object/from16 v18, v3

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getData()[B

    move-result-object v19

    move-object/from16 v20, v5

    invoke-direct/range {v18 .. v20}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->writeDataDirect([BLjava/io/OutputStream;)Z

    move-result v18

    move/from16 v3, v18

    .line 84
    .end local v3    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
    :goto_0
    return v3

    .line 53
    .restart local v3    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
    :cond_0
    move-object/from16 v18, v3

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getData()[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->decodeHeaders([B)Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-result-object v18

    move-object/from16 v10, v18

    .line 55
    .local v10, "decoder":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;->buildEncoder()Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;

    move-result-object v18

    move-object/from16 v11, v18

    .line 56
    .local v11, "encoder":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move-object/from16 v18, v11

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->start(Ljava/io/OutputStream;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 57
    const/16 v18, 0x0

    move/from16 v3, v18

    goto :goto_0

    .line 60
    :cond_1
    const/16 v18, 0x0

    move/from16 v12, v18

    .local v12, "i":I
    :goto_1
    move/from16 v18, v12

    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 61
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v13, v18

    .line 62
    .local v13, "currentFrame":Landroid/graphics/Bitmap;
    move-object/from16 v18, v3

    move-object/from16 v19, v13

    move-object/from16 v20, v9

    move-object/from16 v21, v8

    invoke-direct/range {v18 .. v21}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->getTransformedFrame(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/gif/GifDrawable;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v18

    move-object/from16 v14, v18

    .line 64
    .local v14, "transformedResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    move-object/from16 v18, v11

    move-object/from16 v19, v14

    :try_start_0
    invoke-interface/range {v19 .. v19}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Bitmap;

    invoke-virtual/range {v18 .. v19}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->addFrame(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    if-nez v18, :cond_2

    .line 65
    const/16 v18, 0x0

    move/from16 v15, v18

    .line 73
    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    move/from16 v18, v15

    move/from16 v3, v18

    goto :goto_0

    .line 67
    :cond_2
    move-object/from16 v18, v10

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getCurrentFrameIndex()I

    move-result v18

    move/from16 v15, v18

    .line 68
    .local v15, "currentFrameIndex":I
    move-object/from16 v18, v10

    move/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getDelay(I)I

    move-result v18

    move/from16 v16, v18

    .line 69
    .local v16, "delay":I
    move-object/from16 v18, v11

    move/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->setDelay(I)V

    .line 71
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->advance()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 74
    .line 60
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 73
    .end local v15    # "currentFrameIndex":I
    .end local v16    # "delay":I
    :catchall_0
    move-exception v18

    move-object/from16 v17, v18

    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    move-object/from16 v18, v17

    throw v18

    .line 77
    .end local v13    # "currentFrame":Landroid/graphics/Bitmap;
    .end local v14    # "transformedResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    :cond_3
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->finish()Z

    move-result v18

    move/from16 v12, v18

    .line 79
    .local v12, "result":Z
    const-string/jumbo v18, "GifEncoder"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 80
    const-string/jumbo v18, "GifEncoder"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Encoded gif with "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " frames and "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getData()[B

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " bytes in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-wide/from16 v20, v6

    invoke-static/range {v20 .. v21}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 84
    :cond_4
    move/from16 v18, v12

    move/from16 v3, v18

    goto/16 :goto_0
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Ljava/io/OutputStream;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/bumptech/glide/load/engine/Resource;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
    const-string/jumbo v1, ""

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
    return-object v0
.end method
