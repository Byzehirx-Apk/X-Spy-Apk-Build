.class Lcom/bumptech/glide/gifencoder/NeuQuant;
.super Ljava/lang/Object;
.source "NeuQuant.java"


# static fields
.field protected static final alphabiasshift:I = 0xa

.field protected static final alpharadbias:I = 0x40000

.field protected static final alpharadbshift:I = 0x12

.field protected static final beta:I = 0x40

.field protected static final betagamma:I = 0x10000

.field protected static final betashift:I = 0xa

.field protected static final gamma:I = 0x400

.field protected static final gammashift:I = 0xa

.field protected static final initalpha:I = 0x400

.field protected static final initrad:I = 0x20

.field protected static final initradius:I = 0x800

.field protected static final intbias:I = 0x10000

.field protected static final intbiasshift:I = 0x10

.field protected static final maxnetpos:I = 0xff

.field protected static final minpicturebytes:I = 0x5e5

.field protected static final ncycles:I = 0x64

.field protected static final netbiasshift:I = 0x4

.field protected static final netsize:I = 0x100

.field protected static final prime1:I = 0x1f3

.field protected static final prime2:I = 0x1eb

.field protected static final prime3:I = 0x1e7

.field protected static final prime4:I = 0x1f7

.field protected static final radbias:I = 0x100

.field protected static final radbiasshift:I = 0x8

.field protected static final radiusbias:I = 0x40

.field protected static final radiusbiasshift:I = 0x6

.field protected static final radiusdec:I = 0x1e


# instance fields
.field protected alphadec:I

.field protected bias:[I

.field protected freq:[I

.field protected lengthcount:I

.field protected netindex:[I

.field protected network:[[I

.field protected radpower:[I

.field protected samplefac:I

.field protected thepicture:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 17

    .prologue
    .line 140
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/NeuQuant;
    move-object/from16 v1, p1

    .local v1, "thepic":[B
    move/from16 v2, p2

    .local v2, "len":I
    move/from16 v3, p3

    .local v3, "sample":I
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 123
    move-object v6, v0

    const/16 v7, 0x100

    new-array v7, v7, [I

    iput-object v7, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    .line 127
    move-object v6, v0

    const/16 v7, 0x100

    new-array v7, v7, [I

    iput-object v7, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    .line 130
    move-object v6, v0

    const/16 v7, 0x100

    new-array v7, v7, [I

    iput-object v7, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    .line 132
    move-object v6, v0

    const/16 v7, 0x20

    new-array v7, v7, [I

    iput-object v7, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    .line 145
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->thepicture:[B

    .line 146
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    .line 147
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    .line 149
    move-object v6, v0

    const/16 v7, 0x100

    new-array v7, v7, [[I

    iput-object v7, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    .line 150
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    const/16 v7, 0x100

    if-ge v6, v7, :cond_0

    .line 151
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v7, v4

    const/4 v8, 0x4

    new-array v8, v8, [I

    aput-object v8, v6, v7

    .line 152
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 153
    .local v5, "p":[I
    move-object v6, v5

    const/4 v7, 0x0

    move-object v8, v5

    const/4 v9, 0x1

    move-object v10, v5

    const/4 v11, 0x2

    move v12, v4

    const/16 v13, 0xc

    shl-int/lit8 v12, v12, 0xc

    const/16 v13, 0x100

    div-int/lit16 v12, v12, 0x100

    move-object v14, v10

    move v15, v11

    move/from16 v16, v12

    move/from16 v10, v16

    move-object v11, v14

    move v12, v15

    move/from16 v13, v16

    aput v13, v11, v12

    move-object v14, v8

    move v15, v9

    move/from16 v16, v10

    move/from16 v8, v16

    move-object v9, v14

    move v10, v15

    move/from16 v11, v16

    aput v11, v9, v10

    aput v8, v6, v7

    .line 154
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    move v7, v4

    const/16 v8, 0x100

    aput v8, v6, v7

    .line 155
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    move v7, v4

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 150
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    .end local v5    # "p":[I
    :cond_0
    return-void
.end method


# virtual methods
.method protected alterneigh(IIIII)V
    .locals 22

    .prologue
    .line 411
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/NeuQuant;
    move/from16 v1, p1

    .local v1, "rad":I
    move/from16 v2, p2

    .local v2, "i":I
    move/from16 v3, p3

    .local v3, "b":I
    move/from16 v4, p4

    .local v4, "g":I
    move/from16 v5, p5

    .local v5, "r":I
    move v14, v2

    move v15, v1

    sub-int/2addr v14, v15

    move v8, v14

    .line 412
    .local v8, "lo":I
    move v14, v8

    const/4 v15, -0x1

    if-ge v14, v15, :cond_0

    .line 413
    const/4 v14, -0x1

    move v8, v14

    .line 414
    :cond_0
    move v14, v2

    move v15, v1

    add-int/2addr v14, v15

    move v9, v14

    .line 415
    .local v9, "hi":I
    move v14, v9

    const/16 v15, 0x100

    if-le v14, v15, :cond_1

    .line 416
    const/16 v14, 0x100

    move v9, v14

    .line 418
    :cond_1
    move v14, v2

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v6, v14

    .line 419
    .local v6, "j":I
    move v14, v2

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v7, v14

    .line 420
    .local v7, "k":I
    const/4 v14, 0x1

    move v11, v14

    .line 421
    .local v11, "m":I
    :cond_2
    :goto_0
    move v14, v6

    move v15, v9

    if-lt v14, v15, :cond_3

    move v14, v7

    move v15, v8

    if-le v14, v15, :cond_5

    .line 422
    :cond_3
    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    move v15, v11

    add-int/lit8 v11, v11, 0x1

    aget v14, v14, v15

    move v10, v14

    .line 423
    .local v10, "a":I
    move v14, v6

    move v15, v9

    if-ge v14, v15, :cond_4

    .line 424
    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v15, v6

    add-int/lit8 v6, v6, 0x1

    aget-object v14, v14, v15

    move-object v12, v14

    .line 426
    .local v12, "p":[I
    move-object v14, v12

    const/4 v15, 0x0

    move-object/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v14, v20

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v21

    :try_start_0
    aget v16, v16, v17

    move/from16 v17, v10

    move-object/from16 v18, v12

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v19, v3

    sub-int v18, v18, v19

    mul-int v17, v17, v18

    const/high16 v18, 0x40000

    div-int v17, v17, v18

    sub-int v16, v16, v17

    aput v16, v14, v15

    .line 427
    move-object v14, v12

    const/4 v15, 0x1

    move-object/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v14, v20

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v21

    aget v16, v16, v17

    move/from16 v17, v10

    move-object/from16 v18, v12

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v19, v4

    sub-int v18, v18, v19

    mul-int v17, v17, v18

    const/high16 v18, 0x40000

    div-int v17, v17, v18

    sub-int v16, v16, v17

    aput v16, v14, v15

    .line 428
    move-object v14, v12

    const/4 v15, 0x2

    move-object/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v14, v20

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v21

    aget v16, v16, v17

    move/from16 v17, v10

    move-object/from16 v18, v12

    const/16 v19, 0x2

    aget v18, v18, v19

    move/from16 v19, v5

    sub-int v18, v18, v19

    mul-int v17, v17, v18

    const/high16 v18, 0x40000

    div-int v17, v17, v18

    sub-int v16, v16, v17

    aput v16, v14, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .line 432
    .end local v12    # "p":[I
    :cond_4
    :goto_1
    move v14, v7

    move v15, v8

    if-le v14, v15, :cond_2

    .line 433
    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v15, v7

    add-int/lit8 v7, v7, -0x1

    aget-object v14, v14, v15

    move-object v12, v14

    .line 435
    .restart local v12    # "p":[I
    move-object v14, v12

    const/4 v15, 0x0

    move-object/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v14, v20

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v21

    :try_start_1
    aget v16, v16, v17

    move/from16 v17, v10

    move-object/from16 v18, v12

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v19, v3

    sub-int v18, v18, v19

    mul-int v17, v17, v18

    const/high16 v18, 0x40000

    div-int v17, v17, v18

    sub-int v16, v16, v17

    aput v16, v14, v15

    .line 436
    move-object v14, v12

    const/4 v15, 0x1

    move-object/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v14, v20

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v21

    aget v16, v16, v17

    move/from16 v17, v10

    move-object/from16 v18, v12

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v19, v4

    sub-int v18, v18, v19

    mul-int v17, v17, v18

    const/high16 v18, 0x40000

    div-int v17, v17, v18

    sub-int v16, v16, v17

    aput v16, v14, v15

    .line 437
    move-object v14, v12

    const/4 v15, 0x2

    move-object/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v14, v20

    move/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v21

    aget v16, v16, v17

    move/from16 v17, v10

    move-object/from16 v18, v12

    const/16 v19, 0x2

    aget v18, v18, v19

    move/from16 v19, v5

    sub-int v18, v18, v19

    mul-int v17, v17, v18

    const/high16 v18, 0x40000

    div-int v17, v17, v18

    sub-int v16, v16, v17

    aput v16, v14, v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    goto/16 :goto_0

    .line 429
    :catch_0
    move-exception v14

    move-object v13, v14

    goto/16 :goto_1

    .line 438
    :catch_1
    move-exception v14

    move-object v13, v14

    .line 439
    goto/16 :goto_0

    .line 442
    .end local v10    # "a":I
    .end local v12    # "p":[I
    :cond_5
    return-void
.end method

.method protected altersingle(IIIII)V
    .locals 15

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/NeuQuant;
    move/from16 v1, p1

    .local v1, "alpha":I
    move/from16 v2, p2

    .local v2, "i":I
    move/from16 v3, p3

    .local v3, "b":I
    move/from16 v4, p4

    .local v4, "g":I
    move/from16 v5, p5

    .local v5, "r":I
    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v8, v2

    aget-object v7, v7, v8

    move-object v6, v7

    .line 452
    .local v6, "n":[I
    move-object v7, v6

    const/4 v8, 0x0

    move-object v13, v7

    move v14, v8

    move-object v7, v13

    move v8, v14

    move-object v9, v13

    move v10, v14

    aget v9, v9, v10

    move v10, v1

    move-object v11, v6

    const/4 v12, 0x0

    aget v11, v11, v12

    move v12, v3

    sub-int/2addr v11, v12

    mul-int/2addr v10, v11

    const/16 v11, 0x400

    div-int/lit16 v10, v10, 0x400

    sub-int/2addr v9, v10

    aput v9, v7, v8

    .line 453
    move-object v7, v6

    const/4 v8, 0x1

    move-object v13, v7

    move v14, v8

    move-object v7, v13

    move v8, v14

    move-object v9, v13

    move v10, v14

    aget v9, v9, v10

    move v10, v1

    move-object v11, v6

    const/4 v12, 0x1

    aget v11, v11, v12

    move v12, v4

    sub-int/2addr v11, v12

    mul-int/2addr v10, v11

    const/16 v11, 0x400

    div-int/lit16 v10, v10, 0x400

    sub-int/2addr v9, v10

    aput v9, v7, v8

    .line 454
    move-object v7, v6

    const/4 v8, 0x2

    move-object v13, v7

    move v14, v8

    move-object v7, v13

    move v8, v14

    move-object v9, v13

    move v10, v14

    aget v9, v9, v10

    move v10, v1

    move-object v11, v6

    const/4 v12, 0x2

    aget v11, v11, v12

    move v12, v5

    sub-int/2addr v11, v12

    mul-int/2addr v10, v11

    const/16 v11, 0x400

    div-int/lit16 v10, v10, 0x400

    sub-int/2addr v9, v10

    aput v9, v7, v8

    .line 455
    return-void
.end method

.method public colorMap()[B
    .locals 10

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/NeuQuant;
    const/16 v6, 0x300

    new-array v6, v6, [B

    move-object v1, v6

    .line 161
    .local v1, "map":[B
    const/16 v6, 0x100

    new-array v6, v6, [I

    move-object v2, v6

    .line 162
    .local v2, "index":[I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    const/16 v7, 0x100

    if-ge v6, v7, :cond_0

    .line 163
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v8, v3

    aget-object v7, v7, v8

    const/4 v8, 0x3

    aget v7, v7, v8

    move v8, v3

    aput v8, v6, v7

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    .line 165
    .local v3, "k":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    const/16 v7, 0x100

    if-ge v6, v7, :cond_1

    .line 166
    move-object v6, v2

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    .line 167
    .local v5, "j":I
    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v9, v5

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 168
    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v9, v5

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 169
    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v9, v5

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 165
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 171
    .end local v5    # "j":I
    :cond_1
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "this":Lcom/bumptech/glide/gifencoder/NeuQuant;
    return-object v0
.end method

.method protected contest(III)I
    .locals 21

    .prologue
    .line 471
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/NeuQuant;
    move/from16 v1, p1

    .local v1, "b":I
    move/from16 v2, p2

    .local v2, "g":I
    move/from16 v3, p3

    .local v3, "r":I
    const v14, 0x7fffffff

    move v11, v14

    .line 472
    .local v11, "bestd":I
    move v14, v11

    move v12, v14

    .line 473
    .local v12, "bestbiasd":I
    const/4 v14, -0x1

    move v9, v14

    .line 474
    .local v9, "bestpos":I
    move v14, v9

    move v10, v14

    .line 476
    .local v10, "bestbiaspos":I
    const/4 v14, 0x0

    move v4, v14

    .local v4, "i":I
    :goto_0
    move v14, v4

    const/16 v15, 0x100

    if-ge v14, v15, :cond_5

    .line 477
    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v15, v4

    aget-object v14, v14, v15

    move-object v13, v14

    .line 478
    .local v13, "n":[I
    move-object v14, v13

    const/4 v15, 0x0

    aget v14, v14, v15

    move v15, v1

    sub-int/2addr v14, v15

    move v5, v14

    .line 479
    .local v5, "dist":I
    move v14, v5

    if-gez v14, :cond_0

    .line 480
    move v14, v5

    neg-int v14, v14

    move v5, v14

    .line 481
    :cond_0
    move-object v14, v13

    const/4 v15, 0x1

    aget v14, v14, v15

    move v15, v2

    sub-int/2addr v14, v15

    move v6, v14

    .line 482
    .local v6, "a":I
    move v14, v6

    if-gez v14, :cond_1

    .line 483
    move v14, v6

    neg-int v14, v14

    move v6, v14

    .line 484
    :cond_1
    move v14, v5

    move v15, v6

    add-int/2addr v14, v15

    move v5, v14

    .line 485
    move-object v14, v13

    const/4 v15, 0x2

    aget v14, v14, v15

    move v15, v3

    sub-int/2addr v14, v15

    move v6, v14

    .line 486
    move v14, v6

    if-gez v14, :cond_2

    .line 487
    move v14, v6

    neg-int v14, v14

    move v6, v14

    .line 488
    :cond_2
    move v14, v5

    move v15, v6

    add-int/2addr v14, v15

    move v5, v14

    .line 489
    move v14, v5

    move v15, v11

    if-ge v14, v15, :cond_3

    .line 490
    move v14, v5

    move v11, v14

    .line 491
    move v14, v4

    move v9, v14

    .line 493
    :cond_3
    move v14, v5

    move-object v15, v0

    iget-object v15, v15, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    move/from16 v16, v4

    aget v15, v15, v16

    const/16 v16, 0xc

    shr-int/lit8 v15, v15, 0xc

    sub-int/2addr v14, v15

    move v7, v14

    .line 494
    .local v7, "biasdist":I
    move v14, v7

    move v15, v12

    if-ge v14, v15, :cond_4

    .line 495
    move v14, v7

    move v12, v14

    .line 496
    move v14, v4

    move v10, v14

    .line 498
    :cond_4
    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    move v15, v4

    aget v14, v14, v15

    const/16 v15, 0xa

    shr-int/lit8 v14, v14, 0xa

    move v8, v14

    .line 499
    .local v8, "betafreq":I
    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    move v15, v4

    move-object/from16 v19, v14

    move/from16 v20, v15

    move-object/from16 v14, v19

    move/from16 v15, v20

    move-object/from16 v16, v19

    move/from16 v17, v20

    aget v16, v16, v17

    move/from16 v17, v8

    sub-int v16, v16, v17

    aput v16, v14, v15

    .line 500
    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    move v15, v4

    move-object/from16 v19, v14

    move/from16 v20, v15

    move-object/from16 v14, v19

    move/from16 v15, v20

    move-object/from16 v16, v19

    move/from16 v17, v20

    aget v16, v16, v17

    move/from16 v17, v8

    const/16 v18, 0xa

    shl-int/lit8 v17, v17, 0xa

    add-int v16, v16, v17

    aput v16, v14, v15

    .line 476
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 502
    .end local v5    # "dist":I
    .end local v6    # "a":I
    .end local v7    # "biasdist":I
    .end local v8    # "betafreq":I
    .end local v13    # "n":[I
    :cond_5
    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    move v15, v9

    move-object/from16 v19, v14

    move/from16 v20, v15

    move-object/from16 v14, v19

    move/from16 v15, v20

    move-object/from16 v16, v19

    move/from16 v17, v20

    aget v16, v16, v17

    const/16 v17, 0x40

    add-int/lit8 v16, v16, 0x40

    aput v16, v14, v15

    .line 503
    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    move v15, v9

    move-object/from16 v19, v14

    move/from16 v20, v15

    move-object/from16 v14, v19

    move/from16 v15, v20

    move-object/from16 v16, v19

    move/from16 v17, v20

    aget v16, v16, v17

    const/high16 v17, 0x10000

    sub-int v16, v16, v17

    aput v16, v14, v15

    .line 504
    move v14, v10

    move v0, v14

    .end local v0    # "this":Lcom/bumptech/glide/gifencoder/NeuQuant;
    return v0
.end method

.method public inxbuild()V
    .locals 13

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/NeuQuant;
    const/4 v9, 0x0

    move v7, v9

    .line 187
    .local v7, "previouscol":I
    const/4 v9, 0x0

    move v8, v9

    .line 188
    .local v8, "startpos":I
    const/4 v9, 0x0

    move v1, v9

    .local v1, "i":I
    :goto_0
    move v9, v1

    const/16 v10, 0x100

    if-ge v9, v10, :cond_5

    .line 189
    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v10, v1

    aget-object v9, v9, v10

    move-object v5, v9

    .line 190
    .local v5, "p":[I
    move v9, v1

    move v3, v9

    .line 191
    .local v3, "smallpos":I
    move-object v9, v5

    const/4 v10, 0x1

    aget v9, v9, v10

    move v4, v9

    .line 193
    .local v4, "smallval":I
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v2, v9

    .local v2, "j":I
    :goto_1
    move v9, v2

    const/16 v10, 0x100

    if-ge v9, v10, :cond_1

    .line 194
    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v10, v2

    aget-object v9, v9, v10

    move-object v6, v9

    .line 195
    .local v6, "q":[I
    move-object v9, v6

    const/4 v10, 0x1

    aget v9, v9, v10

    move v10, v4

    if-ge v9, v10, :cond_0

    .line 196
    move v9, v2

    move v3, v9

    .line 197
    move-object v9, v6

    const/4 v10, 0x1

    aget v9, v9, v10

    move v4, v9

    .line 193
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 200
    .end local v6    # "q":[I
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v10, v3

    aget-object v9, v9, v10

    move-object v6, v9

    .line 202
    .restart local v6    # "q":[I
    move v9, v1

    move v10, v3

    if-eq v9, v10, :cond_2

    .line 203
    move-object v9, v6

    const/4 v10, 0x0

    aget v9, v9, v10

    move v2, v9

    .line 204
    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v5

    const/4 v12, 0x0

    aget v11, v11, v12

    aput v11, v9, v10

    .line 205
    move-object v9, v5

    const/4 v10, 0x0

    move v11, v2

    aput v11, v9, v10

    .line 206
    move-object v9, v6

    const/4 v10, 0x1

    aget v9, v9, v10

    move v2, v9

    .line 207
    move-object v9, v6

    const/4 v10, 0x1

    move-object v11, v5

    const/4 v12, 0x1

    aget v11, v11, v12

    aput v11, v9, v10

    .line 208
    move-object v9, v5

    const/4 v10, 0x1

    move v11, v2

    aput v11, v9, v10

    .line 209
    move-object v9, v6

    const/4 v10, 0x2

    aget v9, v9, v10

    move v2, v9

    .line 210
    move-object v9, v6

    const/4 v10, 0x2

    move-object v11, v5

    const/4 v12, 0x2

    aget v11, v11, v12

    aput v11, v9, v10

    .line 211
    move-object v9, v5

    const/4 v10, 0x2

    move v11, v2

    aput v11, v9, v10

    .line 212
    move-object v9, v6

    const/4 v10, 0x3

    aget v9, v9, v10

    move v2, v9

    .line 213
    move-object v9, v6

    const/4 v10, 0x3

    move-object v11, v5

    const/4 v12, 0x3

    aget v11, v11, v12

    aput v11, v9, v10

    .line 214
    move-object v9, v5

    const/4 v10, 0x3

    move v11, v2

    aput v11, v9, v10

    .line 217
    :cond_2
    move v9, v4

    move v10, v7

    if-eq v9, v10, :cond_4

    .line 218
    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    move v10, v7

    move v11, v8

    move v12, v1

    add-int/2addr v11, v12

    const/4 v12, 0x1

    shr-int/lit8 v11, v11, 0x1

    aput v11, v9, v10

    .line 219
    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v2, v9

    :goto_2
    move v9, v2

    move v10, v4

    if-ge v9, v10, :cond_3

    .line 220
    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    move v10, v2

    move v11, v1

    aput v11, v9, v10

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 221
    :cond_3
    move v9, v4

    move v7, v9

    .line 222
    move v9, v1

    move v8, v9

    .line 188
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 225
    .end local v2    # "j":I
    .end local v3    # "smallpos":I
    .end local v4    # "smallval":I
    .end local v5    # "p":[I
    .end local v6    # "q":[I
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    move v10, v7

    move v11, v8

    const/16 v12, 0xff

    add-int/lit16 v11, v11, 0xff

    const/4 v12, 0x1

    shr-int/lit8 v11, v11, 0x1

    aput v11, v9, v10

    .line 226
    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v2, v9

    .restart local v2    # "j":I
    :goto_3
    move v9, v2

    const/16 v10, 0x100

    if-ge v9, v10, :cond_6

    .line 227
    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    move v10, v2

    const/16 v11, 0xff

    aput v11, v9, v10

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 228
    :cond_6
    return-void
.end method

.method public learn()V
    .locals 23

    .prologue
    .line 240
    move-object/from16 v2, p0

    .local v2, "this":Lcom/bumptech/glide/gifencoder/NeuQuant;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v17, v0

    const/16 v18, 0x5e5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 241
    move-object/from16 v17, v2

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    .line 242
    :cond_0
    move-object/from16 v17, v2

    const/16 v18, 0x1e

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x3

    div-int/lit8 v19, v19, 0x3

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    .line 243
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->thepicture:[B

    move-object/from16 v17, v0

    move-object/from16 v14, v17

    .line 244
    .local v14, "p":[B
    const/16 v17, 0x0

    move/from16 v15, v17

    .line 245
    .local v15, "pix":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v17, v0

    move/from16 v16, v17

    .line 246
    .local v16, "lim":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    div-int v17, v17, v18

    move/from16 v13, v17

    .line 247
    .local v13, "samplepixels":I
    move/from16 v17, v13

    const/16 v18, 0x64

    div-int/lit8 v17, v17, 0x64

    move/from16 v12, v17

    .line 248
    .local v12, "delta":I
    const/16 v17, 0x400

    move/from16 v10, v17

    .line 249
    .local v10, "alpha":I
    const/16 v17, 0x800

    move/from16 v8, v17

    .line 251
    .local v8, "radius":I
    move/from16 v17, v8

    const/16 v18, 0x6

    shr-int/lit8 v17, v17, 0x6

    move/from16 v9, v17

    .line 252
    .local v9, "rad":I
    move/from16 v17, v9

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    .line 253
    const/16 v17, 0x0

    move/from16 v9, v17

    .line 254
    :cond_1
    const/16 v17, 0x0

    move/from16 v3, v17

    .local v3, "i":I
    :goto_0
    move/from16 v17, v3

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 255
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    move-object/from16 v17, v0

    move/from16 v18, v3

    move/from16 v19, v10

    move/from16 v20, v9

    move/from16 v21, v9

    mul-int v20, v20, v21

    move/from16 v21, v3

    move/from16 v22, v3

    mul-int v21, v21, v22

    sub-int v20, v20, v21

    const/16 v21, 0x100

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    move/from16 v21, v9

    move/from16 v22, v9

    mul-int v21, v21, v22

    div-int v20, v20, v21

    mul-int v19, v19, v20

    aput v19, v17, v18

    .line 254
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v17, v0

    const/16 v18, 0x5e5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 260
    const/16 v17, 0x3

    move/from16 v11, v17

    .line 274
    .local v11, "step":I
    :goto_1
    const/16 v17, 0x0

    move/from16 v3, v17

    .line 275
    :cond_3
    move/from16 v17, v3

    move/from16 v18, v13

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 276
    move-object/from16 v17, v14

    move/from16 v18, v15

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget-byte v17, v17, v18

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    const/16 v18, 0x4

    shl-int/lit8 v17, v17, 0x4

    move/from16 v5, v17

    .line 277
    .local v5, "b":I
    move-object/from16 v17, v14

    move/from16 v18, v15

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget-byte v17, v17, v18

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    const/16 v18, 0x4

    shl-int/lit8 v17, v17, 0x4

    move/from16 v6, v17

    .line 278
    .local v6, "g":I
    move-object/from16 v17, v14

    move/from16 v18, v15

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    aget-byte v17, v17, v18

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    const/16 v18, 0x4

    shl-int/lit8 v17, v17, 0x4

    move/from16 v7, v17

    .line 279
    .local v7, "r":I
    move-object/from16 v17, v2

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-virtual/range {v17 .. v20}, Lcom/bumptech/glide/gifencoder/NeuQuant;->contest(III)I

    move-result v17

    move/from16 v4, v17

    .line 281
    .local v4, "j":I
    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    invoke-virtual/range {v17 .. v22}, Lcom/bumptech/glide/gifencoder/NeuQuant;->altersingle(IIIII)V

    .line 282
    move/from16 v17, v9

    if-eqz v17, :cond_4

    .line 283
    move-object/from16 v17, v2

    move/from16 v18, v9

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    invoke-virtual/range {v17 .. v22}, Lcom/bumptech/glide/gifencoder/NeuQuant;->alterneigh(IIIII)V

    .line 285
    :cond_4
    move/from16 v17, v15

    move/from16 v18, v11

    add-int v17, v17, v18

    move/from16 v15, v17

    .line 286
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 287
    move/from16 v17, v15

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v15, v17

    .line 289
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 290
    move/from16 v17, v12

    if-nez v17, :cond_6

    .line 291
    const/16 v17, 0x1

    move/from16 v12, v17

    .line 292
    :cond_6
    move/from16 v17, v3

    move/from16 v18, v12

    rem-int v17, v17, v18

    if-nez v17, :cond_3

    .line 293
    move/from16 v17, v10

    move/from16 v18, v10

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    move/from16 v19, v0

    div-int v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v10, v17

    .line 294
    move/from16 v17, v8

    move/from16 v18, v8

    const/16 v19, 0x1e

    div-int/lit8 v18, v18, 0x1e

    sub-int v17, v17, v18

    move/from16 v8, v17

    .line 295
    move/from16 v17, v8

    const/16 v18, 0x6

    shr-int/lit8 v17, v17, 0x6

    move/from16 v9, v17

    .line 296
    move/from16 v17, v9

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_7

    .line 297
    const/16 v17, 0x0

    move/from16 v9, v17

    .line 298
    :cond_7
    const/16 v17, 0x0

    move/from16 v4, v17

    :goto_2
    move/from16 v17, v4

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 299
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    move-object/from16 v17, v0

    move/from16 v18, v4

    move/from16 v19, v10

    move/from16 v20, v9

    move/from16 v21, v9

    mul-int v20, v20, v21

    move/from16 v21, v4

    move/from16 v22, v4

    mul-int v21, v21, v22

    sub-int v20, v20, v21

    const/16 v21, 0x100

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    move/from16 v21, v9

    move/from16 v22, v9

    mul-int v21, v21, v22

    div-int v20, v20, v21

    mul-int v19, v19, v20

    aput v19, v17, v18

    .line 298
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 261
    .end local v4    # "j":I
    .end local v5    # "b":I
    .end local v6    # "g":I
    .end local v7    # "r":I
    .end local v11    # "step":I
    :cond_8
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v17, v0

    const/16 v18, 0x1f3

    move/from16 v0, v17

    rem-int/lit16 v0, v0, 0x1f3

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 262
    const/16 v17, 0x5d9

    move/from16 v11, v17

    .restart local v11    # "step":I
    goto/16 :goto_1

    .line 264
    .end local v11    # "step":I
    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v17, v0

    const/16 v18, 0x1eb

    move/from16 v0, v17

    rem-int/lit16 v0, v0, 0x1eb

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 265
    const/16 v17, 0x5c1

    move/from16 v11, v17

    .restart local v11    # "step":I
    goto/16 :goto_1

    .line 267
    .end local v11    # "step":I
    :cond_a
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v17, v0

    const/16 v18, 0x1e7

    move/from16 v0, v17

    rem-int/lit16 v0, v0, 0x1e7

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 268
    const/16 v17, 0x5b5

    move/from16 v11, v17

    .restart local v11    # "step":I
    goto/16 :goto_1

    .line 270
    .end local v11    # "step":I
    :cond_b
    const/16 v17, 0x5e5

    move/from16 v11, v17

    .restart local v11    # "step":I
    goto/16 :goto_1

    .line 304
    :cond_c
    return-void
.end method

.method public map(III)I
    .locals 14

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/NeuQuant;
    move v1, p1

    .local v1, "b":I
    move/from16 v2, p2

    .local v2, "g":I
    move/from16 v3, p3

    .local v3, "r":I
    const/16 v11, 0x3e8

    move v8, v11

    .line 318
    .local v8, "bestd":I
    const/4 v11, -0x1

    move v10, v11

    .line 319
    .local v10, "best":I
    move-object v11, v0

    iget-object v11, v11, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    move v12, v2

    aget v11, v11, v12

    move v4, v11

    .line 320
    .local v4, "i":I
    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v5, v11

    .line 322
    .local v5, "j":I
    :cond_0
    :goto_0
    move v11, v4

    const/16 v12, 0x100

    if-lt v11, v12, :cond_1

    move v11, v5

    if-ltz v11, :cond_b

    .line 323
    :cond_1
    move v11, v4

    const/16 v12, 0x100

    if-ge v11, v12, :cond_2

    .line 324
    move-object v11, v0

    iget-object v11, v11, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v12, v4

    aget-object v11, v11, v12

    move-object v9, v11

    .line 325
    .local v9, "p":[I
    move-object v11, v9

    const/4 v12, 0x1

    aget v11, v11, v12

    move v12, v2

    sub-int/2addr v11, v12

    move v6, v11

    .line 326
    .local v6, "dist":I
    move v11, v6

    move v12, v8

    if-lt v11, v12, :cond_3

    .line 327
    const/16 v11, 0x100

    move v4, v11

    .line 348
    .end local v6    # "dist":I
    .end local v9    # "p":[I
    :cond_2
    :goto_1
    move v11, v5

    if-ltz v11, :cond_0

    .line 349
    move-object v11, v0

    iget-object v11, v11, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v12, v5

    aget-object v11, v11, v12

    move-object v9, v11

    .line 350
    .restart local v9    # "p":[I
    move v11, v2

    move-object v12, v9

    const/4 v13, 0x1

    aget v12, v12, v13

    sub-int/2addr v11, v12

    move v6, v11

    .line 351
    .restart local v6    # "dist":I
    move v11, v6

    move v12, v8

    if-lt v11, v12, :cond_7

    .line 352
    const/4 v11, -0x1

    move v5, v11

    goto :goto_0

    .line 329
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 330
    move v11, v6

    if-gez v11, :cond_4

    .line 331
    move v11, v6

    neg-int v11, v11

    move v6, v11

    .line 332
    :cond_4
    move-object v11, v9

    const/4 v12, 0x0

    aget v11, v11, v12

    move v12, v1

    sub-int/2addr v11, v12

    move v7, v11

    .line 333
    .local v7, "a":I
    move v11, v7

    if-gez v11, :cond_5

    .line 334
    move v11, v7

    neg-int v11, v11

    move v7, v11

    .line 335
    :cond_5
    move v11, v6

    move v12, v7

    add-int/2addr v11, v12

    move v6, v11

    .line 336
    move v11, v6

    move v12, v8

    if-ge v11, v12, :cond_2

    .line 337
    move-object v11, v9

    const/4 v12, 0x2

    aget v11, v11, v12

    move v12, v3

    sub-int/2addr v11, v12

    move v7, v11

    .line 338
    move v11, v7

    if-gez v11, :cond_6

    .line 339
    move v11, v7

    neg-int v11, v11

    move v7, v11

    .line 340
    :cond_6
    move v11, v6

    move v12, v7

    add-int/2addr v11, v12

    move v6, v11

    .line 341
    move v11, v6

    move v12, v8

    if-ge v11, v12, :cond_2

    .line 342
    move v11, v6

    move v8, v11

    .line 343
    move-object v11, v9

    const/4 v12, 0x3

    aget v11, v11, v12

    move v10, v11

    goto :goto_1

    .line 354
    .end local v7    # "a":I
    :cond_7
    add-int/lit8 v5, v5, -0x1

    .line 355
    move v11, v6

    if-gez v11, :cond_8

    .line 356
    move v11, v6

    neg-int v11, v11

    move v6, v11

    .line 357
    :cond_8
    move-object v11, v9

    const/4 v12, 0x0

    aget v11, v11, v12

    move v12, v1

    sub-int/2addr v11, v12

    move v7, v11

    .line 358
    .restart local v7    # "a":I
    move v11, v7

    if-gez v11, :cond_9

    .line 359
    move v11, v7

    neg-int v11, v11

    move v7, v11

    .line 360
    :cond_9
    move v11, v6

    move v12, v7

    add-int/2addr v11, v12

    move v6, v11

    .line 361
    move v11, v6

    move v12, v8

    if-ge v11, v12, :cond_0

    .line 362
    move-object v11, v9

    const/4 v12, 0x2

    aget v11, v11, v12

    move v12, v3

    sub-int/2addr v11, v12

    move v7, v11

    .line 363
    move v11, v7

    if-gez v11, :cond_a

    .line 364
    move v11, v7

    neg-int v11, v11

    move v7, v11

    .line 365
    :cond_a
    move v11, v6

    move v12, v7

    add-int/2addr v11, v12

    move v6, v11

    .line 366
    move v11, v6

    move v12, v8

    if-ge v11, v12, :cond_0

    .line 367
    move v11, v6

    move v8, v11

    .line 368
    move-object v11, v9

    const/4 v12, 0x3

    aget v11, v11, v12

    move v10, v11

    goto/16 :goto_0

    .line 374
    .end local v6    # "dist":I
    .end local v7    # "a":I
    .end local v9    # "p":[I
    :cond_b
    move v11, v10

    move v0, v11

    .end local v0    # "this":Lcom/bumptech/glide/gifencoder/NeuQuant;
    return v0
.end method

.method public process()[B
    .locals 2

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/NeuQuant;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/gifencoder/NeuQuant;->learn()V

    .line 379
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/gifencoder/NeuQuant;->unbiasnet()V

    .line 380
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/gifencoder/NeuQuant;->inxbuild()V

    .line 381
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/gifencoder/NeuQuant;->colorMap()[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/gifencoder/NeuQuant;
    return-object v0
.end method

.method public unbiasnet()V
    .locals 9

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/NeuQuant;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    const/16 v4, 0x100

    if-ge v3, v4, :cond_0

    .line 394
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v4, v1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget v5, v5, v6

    const/4 v6, 0x4

    shr-int/lit8 v5, v5, 0x4

    aput v5, v3, v4

    .line 395
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v4, v1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget v5, v5, v6

    const/4 v6, 0x4

    shr-int/lit8 v5, v5, 0x4

    aput v5, v3, v4

    .line 396
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v4, v1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget v5, v5, v6

    const/4 v6, 0x4

    shr-int/lit8 v5, v5, 0x4

    aput v5, v3, v4

    .line 397
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v4, v1

    aget-object v3, v3, v4

    const/4 v4, 0x3

    move v5, v1

    aput v5, v3, v4

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    :cond_0
    return-void
.end method
