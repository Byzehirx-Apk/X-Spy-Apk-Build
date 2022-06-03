.class public Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
.super Ljava/lang/Object;
.source "GifHeaderParser.java"


# static fields
.field static final DEFAULT_FRAME_DELAY:I = 0xa

.field private static final MAX_BLOCK_SIZE:I = 0x100

.field static final MIN_FRAME_DELAY:I = 0x3

.field public static final TAG:Ljava/lang/String; = "GifHeaderParser"


# instance fields
.field private final block:[B

.field private blockSize:I

.field private header:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field private rawData:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v1, v0

    const/16 v2, 0x100

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    .line 30
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    return-void
.end method

.method private err()Z
    .locals 2

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private read()I
    .locals 5

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    const/4 v3, 0x0

    move v1, v3

    .line 356
    .local v1, "curByte":I
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v1, v3

    .line 359
    .line 360
    :goto_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    return v0

    .line 357
    .restart local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 358
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v4, 0x1

    iput v4, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    goto :goto_0
.end method

.method private readBitmap()V
    .locals 9

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v5

    iput v5, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    .line 178
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v5

    iput v5, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    .line 179
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v5

    iput v5, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    .line 180
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v5

    iput v5, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    .line 182
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v4

    move v1, v4

    .line 184
    .local v1, "packed":I
    move v4, v1

    const/16 v5, 0x80

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 185
    .local v2, "lctFlag":Z
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move v6, v1

    const/4 v7, 0x7

    and-int/lit8 v6, v6, 0x7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    move v3, v4

    .line 189
    .local v3, "lctSize":I
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    move v5, v1

    const/16 v6, 0x40

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    .line 190
    move v4, v2

    if-eqz v4, :cond_2

    .line 192
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v5, v0

    move v6, v3

    invoke-direct {v5, v6}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readColorTable(I)[I

    move-result-object v5

    iput-object v5, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    .line 199
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iput v5, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    .line 202
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skipImageData()V

    .line 204
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 205
    .line 211
    :goto_3
    return-void

    .line 184
    .end local v2    # "lctFlag":Z
    .end local v3    # "lctSize":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 189
    .restart local v2    # "lctFlag":Z
    .restart local v3    # "lctSize":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 195
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    goto :goto_2

    .line 208
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 210
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 211
    goto :goto_3
.end method

.method private readBlock()I
    .locals 9

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object v4, v0

    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v5

    iput v5, v4, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    .line 330
    const/4 v4, 0x0

    move v1, v4

    .line 331
    .local v1, "n":I
    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    if-lez v4, :cond_0

    .line 332
    const/4 v4, 0x0

    move v2, v4

    .line 334
    .local v2, "count":I
    :goto_0
    move v4, v1

    move-object v5, v0

    :try_start_0
    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    if-ge v4, v5, :cond_0

    .line 335
    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    move v5, v1

    sub-int/2addr v4, v5

    move v2, v4

    .line 336
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    move v6, v1

    move v7, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 338
    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    move v1, v4

    goto :goto_0

    .line 345
    .line 347
    .end local v2    # "count":I
    :cond_0
    :goto_1
    move v4, v1

    move v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    return v0

    .line 340
    .restart local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .restart local v2    # "count":I
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 341
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "GifHeaderParser"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 342
    const-string/jumbo v4, "GifHeaderParser"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error Reading Block n: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " blockSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 344
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v5, 0x1

    iput v5, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    goto :goto_1
.end method

.method private readColorTable(I)[I
    .locals 15

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move/from16 v1, p1

    .local v1, "ncolors":I
    const/4 v10, 0x3

    move v11, v1

    mul-int/2addr v10, v11

    move v2, v10

    .line 275
    .local v2, "nbytes":I
    const/4 v10, 0x0

    move-object v3, v10

    .line 276
    .local v3, "tab":[I
    move v10, v2

    new-array v10, v10, [B

    move-object v4, v10

    .line 279
    .local v4, "c":[B
    move-object v10, v0

    :try_start_0
    iget-object v10, v10, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 283
    const/16 v10, 0x100

    new-array v10, v10, [I

    move-object v3, v10

    .line 284
    const/4 v10, 0x0

    move v5, v10

    .line 285
    .local v5, "i":I
    const/4 v10, 0x0

    move v6, v10

    .line 286
    .local v6, "j":I
    :goto_0
    move v10, v5

    move v11, v1

    if-ge v10, v11, :cond_0

    .line 287
    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v7, v10

    .line 288
    .local v7, "r":I
    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v8, v10

    .line 289
    .local v8, "g":I
    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v9, v10

    .line 290
    .local v9, "b":I
    move-object v10, v3

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    const/high16 v12, -0x1000000

    move v13, v7

    const/16 v14, 0x10

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    move v13, v8

    const/16 v14, 0x8

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    move v13, v9

    or-int/2addr v12, v13

    aput v12, v10, v11
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 297
    .line 299
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "r":I
    .end local v8    # "g":I
    .end local v9    # "b":I
    :cond_0
    :goto_1
    move-object v10, v3

    move-object v0, v10

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    return-object v0

    .line 292
    .restart local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 293
    .local v5, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v10, "GifHeaderParser"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 294
    const-string/jumbo v10, "GifHeaderParser"

    const-string/jumbo v11, "Format Error Reading Color Table"

    move-object v12, v5

    invoke-static {v10, v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v10

    .line 296
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v11, 0x1

    iput v11, v10, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    goto :goto_1
.end method

.method private readContents()V
    .locals 9

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    const/4 v5, 0x0

    move v1, v5

    .line 82
    .local v1, "done":Z
    :goto_0
    move v5, v1

    if-nez v5, :cond_3

    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v5

    if-nez v5, :cond_3

    .line 83
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v5

    move v2, v5

    .line 84
    .local v2, "code":I
    move v5, v2

    sparse-switch v5, :sswitch_data_0

    .line 139
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v6, 0x1

    iput v6, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 141
    :goto_1
    goto :goto_0

    .line 90
    :sswitch_0
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    if-nez v5, :cond_0

    .line 91
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    new-instance v6, Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lcom/bumptech/glide/gifdecoder/GifFrame;-><init>()V

    iput-object v6, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 93
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readBitmap()V

    .line 94
    goto :goto_1

    .line 97
    :sswitch_1
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v5

    move v2, v5

    .line 98
    move v5, v2

    sparse-switch v5, :sswitch_data_1

    .line 129
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    .line 131
    goto :goto_1

    .line 102
    :sswitch_2
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    new-instance v6, Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lcom/bumptech/glide/gifdecoder/GifFrame;-><init>()V

    iput-object v6, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 103
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readGraphicControlExt()V

    .line 104
    goto :goto_1

    .line 107
    :sswitch_3
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readBlock()I

    move-result v5

    .line 108
    const-string/jumbo v5, ""

    move-object v3, v5

    .line 109
    .local v3, "app":Ljava/lang/String;
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_2
    move v5, v4

    const/16 v6, 0xb

    if-ge v5, v6, :cond_1

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    move v7, v4

    aget-byte v6, v6, v7

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 109
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 112
    :cond_1
    move-object v5, v3

    const-string/jumbo v6, "NETSCAPE2.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 113
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readNetscapeExt()V

    goto :goto_1

    .line 116
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    .line 118
    goto :goto_1

    .line 121
    .end local v3    # "app":Ljava/lang/String;
    .end local v4    # "i":I
    :sswitch_4
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    .line 122
    goto/16 :goto_1

    .line 125
    :sswitch_5
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    .line 126
    goto/16 :goto_1

    .line 134
    :sswitch_6
    const/4 v5, 0x1

    move v1, v5

    .line 135
    goto/16 :goto_1

    .line 142
    .end local v2    # "code":I
    :cond_3
    return-void

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_6
    .end sparse-switch

    .line 98
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method private readGraphicControlExt()V
    .locals 6

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v3

    .line 151
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v3

    move v1, v3

    .line 153
    .local v1, "packed":I
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    move v4, v1

    const/16 v5, 0x1c

    and-int/lit8 v4, v4, 0x1c

    const/4 v5, 0x2

    shr-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    .line 154
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-nez v3, :cond_0

    .line 156
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    const/4 v4, 0x1

    iput v4, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    .line 158
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    move v4, v1

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    .line 160
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v3

    move v2, v3

    .line 162
    .local v2, "delayInHundredthsOfASecond":I
    move v3, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 163
    const/16 v3, 0xa

    move v2, v3

    .line 165
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    move v4, v2

    const/16 v5, 0xa

    mul-int/lit8 v4, v4, 0xa

    iput v4, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    .line 167
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v4

    iput v4, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    .line 169
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v3

    .line 170
    return-void

    .line 158
    .end local v2    # "delayInHundredthsOfASecond":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private readHeader()V
    .locals 7

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    const-string/jumbo v3, ""

    move-object v1, v3

    .line 233
    .local v1, "id":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    :cond_0
    move-object v3, v1

    const-string/jumbo v4, "GIF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 237
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v4, 0x1

    iput v4, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 238
    .line 245
    :goto_1
    return-void

    .line 240
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readLSD()V

    .line 241
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-boolean v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->gctFlag:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v3

    if-nez v3, :cond_2

    .line 242
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->gctSize:I

    invoke-direct {v4, v5}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readColorTable(I)[I

    move-result-object v4

    iput-object v4, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    .line 243
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    aget v4, v4, v5

    iput v4, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    .line 245
    :cond_2
    goto :goto_1
.end method

.method private readLSD()V
    .locals 6

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v3

    iput v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    .line 252
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v3

    iput v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    .line 254
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v2

    move v1, v2

    .line 256
    .local v1, "packed":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move v3, v1

    const/16 v4, 0x80

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->gctFlag:Z

    .line 260
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v3, 0x2

    move v4, v1

    const/4 v5, 0x7

    and-int/lit8 v4, v4, 0x7

    shl-int/2addr v3, v4

    iput v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->gctSize:I

    .line 262
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v3

    iput v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    .line 264
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v3

    iput v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->pixelAspect:I

    .line 265
    return-void

    .line 256
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private readNetscapeExt()V
    .locals 6

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readBlock()I

    move-result v3

    .line 218
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 220
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v1, v3

    .line 221
    .local v1, "b1":I
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v2, v3

    .line 222
    .local v2, "b2":I
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move v4, v2

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    move v5, v1

    or-int/2addr v4, v5

    iput v4, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    .line 224
    .end local v1    # "b1":I
    .end local v2    # "b2":I
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    if-lez v3, :cond_2

    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    :cond_2
    return-void
.end method

.method private readShort()I
    .locals 2

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    return v0
.end method

.method private reset()V
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 52
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 53
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 54
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    .line 55
    return-void
.end method

.method private skip()V
    .locals 5

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v2

    move v1, v2

    .line 319
    .local v1, "blockSize":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    move v4, v1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    .line 320
    move v2, v1

    if-gtz v2, :cond_0

    .line 321
    return-void
.end method

.method private skipImageData()V
    .locals 2

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v1

    .line 309
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    .line 310
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 47
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 48
    return-void
.end method

.method public parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;
    .locals 5

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "You must call setData() before parseHeader()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object v0, v1

    .line 73
    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    :goto_0
    return-object v0

    .line 65
    .restart local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    :cond_1
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readHeader()V

    .line 66
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readContents()V

    .line 68
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-gez v1, :cond_2

    .line 69
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v2, 0x1

    iput v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 73
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object v0, v1

    goto :goto_0
.end method

.method public setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    move-object v1, p1

    .local v1, "data":[B
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->reset()V

    .line 34
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 35
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 36
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    .line 37
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 42
    :goto_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    return-object v0

    .line 39
    .restart local v0    # "this":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 40
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v3, 0x2

    iput v3, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    goto :goto_0
.end method
