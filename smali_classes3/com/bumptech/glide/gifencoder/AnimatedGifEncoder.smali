.class public Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
.super Ljava/lang/Object;
.source "AnimatedGifEncoder.java"


# static fields
.field private static final MIN_TRANSPARENT_PERCENTAGE:D = 4.0

.field private static final TAG:Ljava/lang/String; = "AnimatedGifEncoder"


# instance fields
.field private closeStream:Z

.field private colorDepth:I

.field private colorTab:[B

.field private delay:I

.field private dispose:I

.field private firstFrame:Z

.field private hasTransparentPixels:Z

.field private height:I

.field private image:Landroid/graphics/Bitmap;

.field private indexedPixels:[B

.field private out:Ljava/io/OutputStream;

.field private palSize:I

.field private pixels:[B

.field private repeat:I

.field private sample:I

.field private sizeSet:Z

.field private started:Z

.field private transIndex:I

.field private transparent:Ljava/lang/Integer;

.field private usedEntry:[Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    .line 52
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    .line 54
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    .line 56
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    .line 70
    move-object v1, v0

    const/16 v2, 0x100

    new-array v2, v2, [Z

    iput-object v2, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    .line 72
    move-object v1, v0

    const/4 v2, 0x7

    iput v2, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    .line 74
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    .line 76
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    .line 78
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    .line 80
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sizeSet:Z

    .line 82
    move-object v1, v0

    const/16 v2, 0xa

    iput v2, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sample:I

    return-void
.end method

.method private analyzePixels()V
    .locals 13

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    array-length v7, v7

    move v1, v7

    .line 312
    .local v1, "len":I
    move v7, v1

    const/4 v8, 0x3

    div-int/lit8 v7, v7, 0x3

    move v2, v7

    .line 313
    .local v2, "nPix":I
    move-object v7, v0

    move v8, v2

    new-array v8, v8, [B

    iput-object v8, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    .line 314
    new-instance v7, Lcom/bumptech/glide/gifencoder/NeuQuant;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    move v10, v1

    move-object v11, v0

    iget v11, v11, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sample:I

    invoke-direct {v8, v9, v10, v11}, Lcom/bumptech/glide/gifencoder/NeuQuant;-><init>([BII)V

    move-object v3, v7

    .line 316
    .local v3, "nq":Lcom/bumptech/glide/gifencoder/NeuQuant;
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v8}, Lcom/bumptech/glide/gifencoder/NeuQuant;->process()[B

    move-result-object v8

    iput-object v8, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    .line 318
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v8, v8

    if-ge v7, v8, :cond_0

    .line 319
    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    move v8, v4

    aget-byte v7, v7, v8

    move v5, v7

    .line 320
    .local v5, "temp":B
    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    move v10, v4

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    aget-byte v9, v9, v10

    aput-byte v9, v7, v8

    .line 321
    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    move v8, v4

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    move v9, v5

    aput-byte v9, v7, v8

    .line 322
    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    move v8, v4

    const/4 v9, 0x3

    div-int/lit8 v8, v8, 0x3

    const/4 v9, 0x0

    aput-boolean v9, v7, v8

    .line 318
    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    .line 325
    .end local v5    # "temp":B
    :cond_0
    const/4 v7, 0x0

    move v4, v7

    .line 326
    .local v4, "k":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move v8, v2

    if-ge v7, v8, :cond_1

    .line 327
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v8, v8, v9

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    move v10, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v7, v8, v9, v10}, Lcom/bumptech/glide/gifencoder/NeuQuant;->map(III)I

    move-result v7

    move v6, v7

    .line 328
    .local v6, "index":I
    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    move v8, v6

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 329
    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    move v8, v5

    move v9, v6

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 326
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 331
    .end local v6    # "index":I
    :cond_1
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    .line 332
    move-object v7, v0

    const/16 v8, 0x8

    iput v8, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorDepth:I

    .line 333
    move-object v7, v0

    const/4 v8, 0x7

    iput v8, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    .line 335
    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    if-eqz v7, :cond_3

    .line 336
    move-object v7, v0

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v9}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->findClosest(I)I

    move-result v8

    iput v8, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    .line 340
    :cond_2
    :goto_2
    return-void

    .line 337
    :cond_3
    move-object v7, v0

    iget-boolean v7, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    if-eqz v7, :cond_2

    .line 338
    move-object v7, v0

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->findClosest(I)I

    move-result v8

    iput v8, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    goto :goto_2
.end method

.method private findClosest(I)I
    .locals 17

    .prologue
    .line 347
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move/from16 v1, p1

    .local v1, "color":I
    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    if-nez v14, :cond_0

    .line 348
    const/4 v14, -0x1

    move v0, v14

    .line 367
    .end local v0    # "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    :goto_0
    return v0

    .line 349
    .restart local v0    # "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    :cond_0
    move v14, v1

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v14

    move v2, v14

    .line 350
    .local v2, "r":I
    move v14, v1

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v14

    move v3, v14

    .line 351
    .local v3, "g":I
    move v14, v1

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    move v4, v14

    .line 352
    .local v4, "b":I
    const/4 v14, 0x0

    move v5, v14

    .line 353
    .local v5, "minpos":I
    const/high16 v14, 0x1000000

    move v6, v14

    .line 354
    .local v6, "dmin":I
    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v14, v14

    move v7, v14

    .line 355
    .local v7, "len":I
    const/4 v14, 0x0

    move v8, v14

    .local v8, "i":I
    :goto_1
    move v14, v8

    move v15, v7

    if-ge v14, v15, :cond_2

    .line 356
    move v14, v2

    move-object v15, v0

    iget-object v15, v15, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    move/from16 v16, v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v15, v15, v16

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v14, v15

    move v9, v14

    .line 357
    .local v9, "dr":I
    move v14, v3

    move-object v15, v0

    iget-object v15, v15, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    move/from16 v16, v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v15, v15, v16

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v14, v15

    move v10, v14

    .line 358
    .local v10, "dg":I
    move v14, v4

    move-object v15, v0

    iget-object v15, v15, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    move/from16 v16, v8

    aget-byte v15, v15, v16

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v14, v15

    move v11, v14

    .line 359
    .local v11, "db":I
    move v14, v9

    move v15, v9

    mul-int/2addr v14, v15

    move v15, v10

    move/from16 v16, v10

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    move v15, v11

    move/from16 v16, v11

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    move v12, v14

    .line 360
    .local v12, "d":I
    move v14, v8

    const/4 v15, 0x3

    div-int/lit8 v14, v14, 0x3

    move v13, v14

    .line 361
    .local v13, "index":I
    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    move v15, v13

    aget-boolean v14, v14, v15

    if-eqz v14, :cond_1

    move v14, v12

    move v15, v6

    if-ge v14, v15, :cond_1

    .line 362
    move v14, v12

    move v6, v14

    .line 363
    move v14, v13

    move v5, v14

    .line 365
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 366
    goto :goto_1

    .line 367
    .end local v9    # "dr":I
    .end local v10    # "dg":I
    .end local v11    # "db":I
    .end local v12    # "d":I
    .end local v13    # "index":I
    :cond_2
    move v14, v5

    move v0, v14

    goto :goto_0
.end method

.method private getImagePixels()V
    .locals 19

    .prologue
    .line 374
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    move v1, v10

    .line 375
    .local v1, "w":I
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move v2, v10

    .line 377
    .local v2, "h":I
    move v10, v1

    move-object v11, v0

    iget v11, v11, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    if-ne v10, v11, :cond_0

    move v10, v2

    move-object v11, v0

    iget v11, v11, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    if-eq v10, v11, :cond_1

    .line 379
    :cond_0
    move-object v10, v0

    iget v10, v10, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    move-object v11, v0

    iget v11, v11, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v3, v10

    .line 380
    .local v3, "temp":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v3

    invoke-direct {v11, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v4, v10

    .line 381
    .local v4, "canvas":Landroid/graphics/Canvas;
    move-object v10, v4

    move-object v11, v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 382
    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 384
    .end local v3    # "temp":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    move v10, v1

    move v11, v2

    mul-int/2addr v10, v11

    new-array v10, v10, [I

    move-object v3, v10

    .line 385
    .local v3, "pixelsInt":[I
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    move-object v11, v3

    const/4 v12, 0x0

    move v13, v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 388
    move-object v10, v0

    move-object v11, v3

    array-length v11, v11

    const/4 v12, 0x3

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [B

    iput-object v11, v10, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    .line 390
    const/4 v10, 0x0

    move v4, v10

    .line 391
    .local v4, "pixelsIndex":I
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    .line 392
    const/4 v10, 0x0

    move v5, v10

    .line 393
    .local v5, "totalTransparentPixels":I
    move-object v10, v3

    move-object v6, v10

    move-object v10, v6

    array-length v10, v10

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    :goto_0
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_3

    move-object v10, v6

    move v11, v8

    aget v10, v10, v11

    move v9, v10

    .line 394
    .local v9, "pixel":I
    move v10, v9

    if-nez v10, :cond_2

    .line 395
    add-int/lit8 v5, v5, 0x1

    .line 397
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move v12, v9

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 398
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move v12, v9

    const/16 v13, 0x8

    shr-int/lit8 v12, v12, 0x8

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 399
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move v12, v9

    const/16 v13, 0x10

    shr-int/lit8 v12, v12, 0x10

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 393
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 402
    .end local v9    # "pixel":I
    :cond_3
    const/16 v10, 0x64

    move v11, v5

    mul-int/2addr v10, v11

    int-to-double v10, v10

    move-object v12, v3

    array-length v12, v12

    int-to-double v12, v12

    div-double/2addr v10, v12

    move-wide v6, v10

    .line 405
    .local v6, "transparentPercentage":D
    move-object v10, v0

    move-wide v11, v6

    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    cmpl-double v11, v11, v13

    if-lez v11, :cond_5

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v10, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    .line 406
    const-string/jumbo v10, "AnimatedGifEncoder"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 407
    const-string/jumbo v10, "AnimatedGifEncoder"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "got pixels for frame with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "% transparent pixels"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 409
    :cond_4
    return-void

    .line 405
    :cond_5
    const/4 v11, 0x0

    goto :goto_1
.end method

.method private writeGraphicCtrlExt()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 416
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v4, 0xf9

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 417
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 419
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    if-nez v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    if-nez v3, :cond_1

    .line 420
    const/4 v3, 0x0

    move v1, v3

    .line 421
    .local v1, "transp":I
    const/4 v3, 0x0

    move v2, v3

    .line 426
    .local v2, "disp":I
    :goto_0
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    if-ltz v3, :cond_0

    .line 427
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    const/4 v4, 0x7

    and-int/lit8 v3, v3, 0x7

    move v2, v3

    .line 429
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    shl-int/lit8 v3, v3, 0x2

    move v2, v3

    .line 432
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v4, 0x0

    move v5, v2

    or-int/2addr v4, v5

    const/4 v5, 0x0

    or-int/lit8 v4, v4, 0x0

    move v5, v1

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 437
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    invoke-direct {v3, v4}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 438
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 439
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 440
    return-void

    .line 423
    .end local v1    # "transp":I
    .end local v2    # "disp":I
    :cond_1
    const/4 v3, 0x1

    move v1, v3

    .line 424
    .restart local v1    # "transp":I
    const/4 v3, 0x2

    move v2, v3

    .restart local v2    # "disp":I
    goto :goto_0
.end method

.method private writeImageDesc()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 447
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 448
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 449
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    invoke-direct {v1, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 450
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    invoke-direct {v1, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 452
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-eqz v1, :cond_0

    .line 454
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 463
    :goto_0
    return-void

    .line 457
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v2, 0x80

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method private writeLSD()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    invoke-direct {v1, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 471
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    invoke-direct {v1, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 473
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v2, 0xf0

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 478
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 479
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 480
    return-void
.end method

.method private writeNetscapeExt()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 487
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 488
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 489
    move-object v1, v0

    const-string/jumbo v2, "NETSCAPE2.0"

    invoke-direct {v1, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V

    .line 490
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 491
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 492
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    invoke-direct {v1, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 493
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 494
    return-void
.end method

.method private writePalette()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v6, v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 501
    const/16 v3, 0x300

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v4, v4

    rsub-int v3, v4, 0x300

    move v1, v3

    .line 502
    .local v1, "n":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 503
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 502
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    :cond_0
    return-void
.end method

.method private writePixels()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    new-instance v2, Lcom/bumptech/glide/gifencoder/LZWEncoder;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    move-object v7, v0

    iget v7, v7, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorDepth:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/bumptech/glide/gifencoder/LZWEncoder;-><init>(II[BI)V

    move-object v1, v2

    .line 512
    .local v1, "encoder":Lcom/bumptech/glide/gifencoder/LZWEncoder;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->encode(Ljava/io/OutputStream;)V

    .line 513
    return-void
.end method

.method private writeShort(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    move v3, v1

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 520
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    move v3, v1

    const/16 v4, 0x8

    shr-int/lit8 v3, v3, 0x8

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 521
    return-void
.end method

.method private writeString(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 528
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    :cond_0
    return-void
.end method


# virtual methods
.method public addFrame(Landroid/graphics/Bitmap;)Z
    .locals 7

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move-object v1, p1

    .local v1, "im":Landroid/graphics/Bitmap;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    if-nez v4, :cond_1

    .line 152
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    .line 182
    .end local v0    # "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    :goto_0
    return v0

    .line 154
    .restart local v0    # "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    :cond_1
    const/4 v4, 0x1

    move v2, v4

    .line 156
    .local v2, "ok":Z
    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sizeSet:Z

    if-nez v4, :cond_2

    .line 158
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->setSize(II)V

    .line 160
    :cond_2
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 161
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->getImagePixels()V

    .line 162
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->analyzePixels()V

    .line 163
    move-object v4, v0

    iget-boolean v4, v4, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-eqz v4, :cond_3

    .line 164
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeLSD()V

    .line 165
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writePalette()V

    .line 166
    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    if-ltz v4, :cond_3

    .line 168
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeNetscapeExt()V

    .line 171
    :cond_3
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeGraphicCtrlExt()V

    .line 172
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeImageDesc()V

    .line 173
    move-object v4, v0

    iget-boolean v4, v4, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-nez v4, :cond_4

    .line 174
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writePalette()V

    .line 176
    :cond_4
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writePixels()V

    .line 177
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 182
    :goto_1
    move v4, v2

    move v0, v4

    goto :goto_0

    .line 178
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 179
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    move v2, v4

    goto :goto_1
.end method

.method public finish()Z
    .locals 5

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    if-nez v3, :cond_0

    .line 191
    const/4 v3, 0x0

    move v0, v3

    .line 214
    .end local v0    # "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    .local v1, "ok":Z
    :goto_0
    return v0

    .line 192
    .end local v1    # "ok":Z
    .restart local v0    # "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    :cond_0
    const/4 v3, 0x1

    move v1, v3

    .line 193
    .restart local v1    # "ok":Z
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    .line 195
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 196
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 197
    move-object v3, v0

    iget-boolean v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    if-eqz v3, :cond_1

    .line 198
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .line 205
    :cond_1
    :goto_1
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    .line 206
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 207
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 208
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    .line 209
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    .line 210
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    .line 211
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    .line 212
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    .line 214
    move v3, v1

    move v0, v3

    goto :goto_0

    .line 200
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 201
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    move v1, v3

    goto :goto_1
.end method

.method public setDelay(I)V
    .locals 5

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move v1, p1

    .local v1, "ms":I
    move-object v2, v0

    move v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    .line 95
    return-void
.end method

.method public setDispose(I)V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move v1, p1

    .local v1, "code":I
    move v2, v1

    if-ltz v2, :cond_0

    .line 107
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    .line 109
    :cond_0
    return-void
.end method

.method public setFrameRate(F)V
    .locals 5

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move v1, p1

    .local v1, "fps":F
    move v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 226
    move-object v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    move v4, v1

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    .line 228
    :cond_0
    return-void
.end method

.method public setQuality(I)V
    .locals 4

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move v1, p1

    .local v1, "quality":I
    move v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 241
    const/4 v2, 0x1

    move v1, v2

    .line 242
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sample:I

    .line 243
    return-void
.end method

.method public setRepeat(I)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move v1, p1

    .local v1, "iter":I
    move v2, v1

    if-ltz v2, :cond_0

    .line 121
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    .line 123
    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 5

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move-object v3, v0

    iget-boolean v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-nez v3, :cond_0

    .line 256
    .line 264
    :goto_0
    return-void

    .line 257
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    .line 258
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    .line 259
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 260
    move-object v3, v0

    const/16 v4, 0x140

    iput v4, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    .line 261
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 262
    move-object v3, v0

    const/16 v4, 0xf0

    iput v4, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    .line 263
    :cond_2
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sizeSet:Z

    .line 264
    goto :goto_0
.end method

.method public setTransparent(I)V
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    .line 137
    return-void
.end method

.method public start(Ljava/io/OutputStream;)Z
    .locals 9

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move-object v1, p1

    .local v1, "os":Ljava/io/OutputStream;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 276
    const/4 v4, 0x0

    move v0, v4

    .line 285
    .end local v0    # "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    :goto_0
    return v0

    .line 277
    .restart local v0    # "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    :cond_0
    const/4 v4, 0x1

    move v2, v4

    .line 278
    .local v2, "ok":Z
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    .line 279
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 281
    move-object v4, v0

    :try_start_0
    const-string/jumbo v5, "GIF89a"

    invoke-direct {v4, v5}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .line 285
    :goto_1
    move-object v4, v0

    move v5, v2

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput-boolean v6, v5, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    move v0, v4

    goto :goto_0

    .line 282
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 283
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    move v2, v4

    goto :goto_1
.end method

.method public start(Ljava/lang/String;)Z
    .locals 12

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    move-object v1, p1

    .local v1, "file":Ljava/lang/String;
    const/4 v4, 0x1

    move v2, v4

    .line 298
    .local v2, "ok":Z
    move-object v4, v0

    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/io/FileOutputStream;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, v4, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 299
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->start(Ljava/io/OutputStream;)Z

    move-result v4

    move v2, v4

    .line 300
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .line 304
    :goto_0
    move-object v4, v0

    move v5, v2

    move-object v10, v4

    move v11, v5

    move v4, v11

    move-object v5, v10

    move v6, v11

    iput-boolean v6, v5, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    move v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    return v0

    .line 301
    .restart local v0    # "this":Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 302
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0
.end method
