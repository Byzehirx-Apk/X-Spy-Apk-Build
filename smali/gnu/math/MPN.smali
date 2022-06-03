.class Lgnu/math/MPN;
.super Ljava/lang/Object;
.source "MPN.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/math/MPN;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add_1([I[III)I
    .locals 14

    .prologue
    .line 22
    move-object v1, p0

    .local v1, "dest":[I
    move-object v2, p1

    .local v2, "x":[I
    move/from16 v3, p2

    .local v3, "size":I
    move/from16 v4, p3

    .local v4, "y":I
    move v8, v4

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    move-wide v5, v8

    .line 23
    .local v5, "carry":J
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_0

    .line 25
    move-wide v8, v5

    move-object v10, v2

    move v11, v7

    aget v10, v10, v11

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    move-wide v5, v8

    .line 26
    move-object v8, v1

    move v9, v7

    move-wide v10, v5

    long-to-int v10, v10

    aput v10, v8, v9

    .line 27
    move-wide v8, v5

    const/16 v10, 0x20

    shr-long/2addr v8, v10

    move-wide v5, v8

    .line 23
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 29
    :cond_0
    move-wide v8, v5

    long-to-int v8, v8

    move v1, v8

    .end local v1    # "dest":[I
    return v1
.end method

.method public static add_n([I[I[II)I
    .locals 16

    .prologue
    .line 40
    move-object/from16 v1, p0

    .local v1, "dest":[I
    move-object/from16 v2, p1

    .local v2, "x":[I
    move-object/from16 v3, p2

    .local v3, "y":[I
    move/from16 v4, p3

    .local v4, "len":I
    const-wide/16 v8, 0x0

    move-wide v5, v8

    .line 41
    .local v5, "carry":J
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move v9, v4

    if-ge v8, v9, :cond_0

    .line 43
    move-wide v8, v5

    move-object v10, v2

    move v11, v7

    aget v10, v10, v11

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    move-object v12, v3

    move v13, v7

    aget v12, v12, v13

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    move-wide v5, v8

    .line 45
    move-object v8, v1

    move v9, v7

    move-wide v10, v5

    long-to-int v10, v10

    aput v10, v8, v9

    .line 46
    move-wide v8, v5

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    move-wide v5, v8

    .line 41
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 48
    :cond_0
    move-wide v8, v5

    long-to-int v8, v8

    move v1, v8

    .end local v1    # "dest":[I
    return v1
.end method

.method public static chars_per_word(I)I
    .locals 3

    .prologue
    .line 336
    move v0, p0

    .local v0, "radix":I
    move v1, v0

    const/16 v2, 0xa

    if-ge v1, v2, :cond_4

    .line 338
    move v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    .line 340
    move v1, v0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 341
    const/16 v1, 0x20

    move v0, v1

    .line 364
    .end local v0    # "radix":I
    :goto_0
    return v0

    .line 342
    .restart local v0    # "radix":I
    :cond_0
    move v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 343
    const/16 v1, 0x14

    move v0, v1

    goto :goto_0

    .line 344
    :cond_1
    move v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 345
    const/16 v1, 0x10

    move v0, v1

    goto :goto_0

    .line 347
    :cond_2
    const/16 v1, 0x12

    move v2, v0

    rsub-int/lit8 v1, v2, 0x12

    move v0, v1

    goto :goto_0

    .line 350
    :cond_3
    const/16 v1, 0xa

    move v0, v1

    goto :goto_0

    .line 352
    :cond_4
    move v1, v0

    const/16 v2, 0xc

    if-ge v1, v2, :cond_5

    .line 353
    const/16 v1, 0x9

    move v0, v1

    goto :goto_0

    .line 354
    :cond_5
    move v1, v0

    const/16 v2, 0x10

    if-gt v1, v2, :cond_6

    .line 355
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0

    .line 356
    :cond_6
    move v1, v0

    const/16 v2, 0x17

    if-gt v1, v2, :cond_7

    .line 357
    const/4 v1, 0x7

    move v0, v1

    goto :goto_0

    .line 358
    :cond_7
    move v1, v0

    const/16 v2, 0x28

    if-gt v1, v2, :cond_8

    .line 359
    const/4 v1, 0x6

    move v0, v1

    goto :goto_0

    .line 361
    :cond_8
    move v1, v0

    const/16 v2, 0x100

    if-gt v1, v2, :cond_9

    .line 362
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0

    .line 364
    :cond_9
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public static cmp([II[II)I
    .locals 7

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "x":[I
    move v1, p1

    .local v1, "xlen":I
    move-object v2, p2

    .local v2, "y":[I
    move v3, p3

    .local v3, "ylen":I
    move v4, v1

    move v5, v3

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "x":[I
    return v0

    .restart local v0    # "x":[I
    :cond_0
    move v4, v1

    move v5, v3

    if-ge v4, v5, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    move-object v4, v0

    move-object v5, v2

    move v6, v1

    invoke-static {v4, v5, v6}, Lgnu/math/MPN;->cmp([I[II)I

    move-result v4

    goto :goto_0
.end method

.method public static cmp([I[II)I
    .locals 8

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "x":[I
    move-object v1, p1

    .local v1, "y":[I
    move v2, p2

    .local v2, "size":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v5, v2

    if-ltz v5, :cond_2

    .line 455
    move-object v5, v0

    move v6, v2

    aget v5, v5, v6

    move v3, v5

    .line 456
    .local v3, "x_word":I
    move-object v5, v1

    move v6, v2

    aget v5, v5, v6

    move v4, v5

    .line 457
    .local v4, "y_word":I
    move v5, v3

    move v6, v4

    if-eq v5, v6, :cond_1

    .line 462
    move v5, v3

    const/high16 v6, -0x80000000

    xor-int/2addr v5, v6

    move v6, v4

    const/high16 v7, -0x80000000

    xor-int/2addr v6, v7

    if-le v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    .line 465
    .end local v0    # "x":[I
    .end local v3    # "x_word":I
    .end local v4    # "y_word":I
    :goto_2
    return v0

    .line 462
    .restart local v0    # "x":[I
    .restart local v3    # "x_word":I
    .restart local v4    # "y_word":I
    :cond_0
    const/4 v5, -0x1

    goto :goto_1

    .line 464
    :cond_1
    goto :goto_0

    .line 465
    .end local v3    # "x_word":I
    .end local v4    # "y_word":I
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_2
.end method

.method public static count_leading_zeros(I)I
    .locals 6

    .prologue
    .line 370
    move v0, p0

    .local v0, "i":I
    move v4, v0

    if-nez v4, :cond_0

    .line 371
    const/16 v4, 0x20

    move v0, v4

    .line 380
    .end local v0    # "i":I
    .local v1, "count":I
    .local v2, "k":I
    :goto_0
    return v0

    .line 372
    .end local v1    # "count":I
    .end local v2    # "k":I
    .restart local v0    # "i":I
    :cond_0
    const/4 v4, 0x0

    move v1, v4

    .line 373
    .restart local v1    # "count":I
    const/16 v4, 0x10

    move v2, v4

    .restart local v2    # "k":I
    :goto_1
    move v4, v2

    if-lez v4, :cond_2

    .line 374
    move v4, v0

    move v5, v2

    ushr-int/2addr v4, v5

    move v3, v4

    .line 375
    .local v3, "j":I
    move v4, v3

    if-nez v4, :cond_1

    .line 376
    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    move v1, v4

    .line 373
    :goto_2
    move v4, v2

    const/4 v5, 0x1

    shr-int/lit8 v4, v4, 0x1

    move v2, v4

    goto :goto_1

    .line 378
    :cond_1
    move v4, v3

    move v0, v4

    goto :goto_2

    .line 380
    .end local v3    # "j":I
    :cond_2
    move v4, v1

    move v0, v4

    goto :goto_0
.end method

.method public static divide([II[II)V
    .locals 26

    .prologue
    .line 291
    move-object/from16 v3, p0

    .local v3, "zds":[I
    move/from16 v4, p1

    .local v4, "nx":I
    move-object/from16 v5, p2

    .local v5, "y":[I
    move/from16 v6, p3

    .local v6, "ny":I
    move/from16 v16, v4

    move/from16 v7, v16

    .line 297
    .local v7, "j":I
    :cond_0
    move-object/from16 v16, v3

    move/from16 v17, v7

    aget v16, v16, v17

    move-object/from16 v17, v5

    move/from16 v18, v6

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 298
    const/16 v16, -0x1

    move/from16 v8, v16

    .line 304
    .local v8, "qhat":I
    :goto_0
    move/from16 v16, v8

    if-eqz v16, :cond_3

    .line 306
    move-object/from16 v16, v3

    move/from16 v17, v7

    move/from16 v18, v6

    sub-int v17, v17, v18

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v8

    invoke-static/range {v16 .. v20}, Lgnu/math/MPN;->submul_1([II[III)I

    move-result v16

    move/from16 v9, v16

    .line 307
    .local v9, "borrow":I
    move-object/from16 v16, v3

    move/from16 v17, v7

    aget v16, v16, v17

    move/from16 v10, v16

    .line 308
    .local v10, "save":I
    move/from16 v16, v10

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    move/from16 v18, v9

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    sub-long v16, v16, v18

    move-wide/from16 v11, v16

    .line 309
    .local v11, "num":J
    :goto_1
    move-wide/from16 v16, v11

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_3

    .line 311
    add-int/lit8 v8, v8, -0x1

    .line 312
    const-wide/16 v16, 0x0

    move-wide/from16 v13, v16

    .line 313
    .local v13, "carry":J
    const/16 v16, 0x0

    move/from16 v15, v16

    .local v15, "i":I
    :goto_2
    move/from16 v16, v15

    move/from16 v17, v6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 315
    move-wide/from16 v16, v13

    move-object/from16 v18, v3

    move/from16 v19, v7

    move/from16 v20, v6

    sub-int v19, v19, v20

    move/from16 v20, v15

    add-int v19, v19, v20

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    move-object/from16 v20, v5

    move/from16 v21, v15

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v16, v16, v18

    move-wide/from16 v13, v16

    .line 317
    move-object/from16 v16, v3

    move/from16 v17, v7

    move/from16 v18, v6

    sub-int v17, v17, v18

    move/from16 v18, v15

    add-int v17, v17, v18

    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    .line 318
    move-wide/from16 v16, v13

    const/16 v18, 0x20

    ushr-long v16, v16, v18

    move-wide/from16 v13, v16

    .line 313
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 301
    .end local v8    # "qhat":I
    .end local v9    # "borrow":I
    .end local v10    # "save":I
    .end local v11    # "num":J
    .end local v13    # "carry":J
    .end local v15    # "i":I
    :cond_1
    move-object/from16 v16, v3

    move/from16 v17, v7

    aget v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const/16 v18, 0x20

    shl-long v16, v16, v18

    move-object/from16 v18, v3

    move/from16 v19, v7

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v16, v16, v18

    move-wide/from16 v9, v16

    .line 302
    .local v9, "w":J
    move-wide/from16 v16, v9

    move-object/from16 v18, v5

    move/from16 v19, v6

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    aget v18, v18, v19

    invoke-static/range {v16 .. v18}, Lgnu/math/MPN;->udiv_qrnnd(JI)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v8, v16

    .restart local v8    # "qhat":I
    goto/16 :goto_0

    .line 320
    .local v9, "borrow":I
    .restart local v10    # "save":I
    .restart local v11    # "num":J
    .restart local v13    # "carry":J
    .restart local v15    # "i":I
    :cond_2
    move-object/from16 v16, v3

    move/from16 v17, v7

    move-object/from16 v24, v16

    move/from16 v25, v17

    move-object/from16 v16, v24

    move/from16 v17, v25

    move-object/from16 v18, v24

    move/from16 v19, v25

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v13

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    .line 321
    move-wide/from16 v16, v13

    const-wide/16 v18, 0x1

    sub-long v16, v16, v18

    move-wide/from16 v11, v16

    .line 322
    goto/16 :goto_1

    .line 324
    .end local v9    # "borrow":I
    .end local v10    # "save":I
    .end local v11    # "num":J
    .end local v13    # "carry":J
    .end local v15    # "i":I
    :cond_3
    move-object/from16 v16, v3

    move/from16 v17, v7

    move/from16 v18, v8

    aput v18, v16, v17

    .line 325
    add-int/lit8 v7, v7, -0x1

    move/from16 v16, v7

    move/from16 v17, v6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 326
    return-void
.end method

.method public static divmod_1([I[III)I
    .locals 14

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "quotient":[I
    move-object v1, p1

    .local v1, "dividend":[I
    move/from16 v2, p2

    .local v2, "len":I
    move/from16 v3, p3

    .local v3, "divisor":I
    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    .line 220
    .local v4, "i":I
    move-object v8, v1

    move v9, v4

    aget v8, v8, v9

    int-to-long v8, v8

    move-wide v5, v8

    .line 221
    .local v5, "r":J
    move-wide v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    move v10, v3

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 222
    const-wide/16 v8, 0x0

    move-wide v5, v8

    .line 229
    :goto_0
    move v8, v4

    if-ltz v8, :cond_1

    .line 231
    move-object v8, v1

    move v9, v4

    aget v8, v8, v9

    move v7, v8

    .line 232
    .local v7, "n0":I
    move-wide v8, v5

    const-wide v10, -0x100000000L

    and-long/2addr v8, v10

    move v10, v7

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    or-long/2addr v8, v10

    move-wide v5, v8

    .line 233
    move-wide v8, v5

    move v10, v3

    invoke-static {v8, v9, v10}, Lgnu/math/MPN;->udiv_qrnnd(JI)J

    move-result-wide v8

    move-wide v5, v8

    .line 234
    move-object v8, v0

    move v9, v4

    move-wide v10, v5

    long-to-int v10, v10

    aput v10, v8, v9

    .line 229
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 225
    .end local v7    # "n0":I
    :cond_0
    move-object v8, v0

    move v9, v4

    add-int/lit8 v4, v4, -0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 226
    move-wide v8, v5

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    move-wide v5, v8

    goto :goto_0

    .line 236
    :cond_1
    move-wide v8, v5

    const/16 v10, 0x20

    shr-long/2addr v8, v10

    long-to-int v8, v8

    move v0, v8

    .end local v0    # "quotient":[I
    return v0
.end method

.method static findLowestBit(I)I
    .locals 4

    .prologue
    .line 572
    move v0, p0

    .local v0, "word":I
    const/4 v2, 0x0

    move v1, v2

    .line 573
    .local v1, "i":I
    :goto_0
    move v2, v0

    const/16 v3, 0xf

    and-int/lit8 v2, v2, 0xf

    if-nez v2, :cond_0

    .line 575
    move v2, v0

    const/4 v3, 0x4

    shr-int/lit8 v2, v2, 0x4

    move v0, v2

    .line 576
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 578
    :cond_0
    move v2, v0

    const/4 v3, 0x3

    and-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_1

    .line 580
    move v2, v0

    const/4 v3, 0x2

    shr-int/lit8 v2, v2, 0x2

    move v0, v2

    .line 581
    add-int/lit8 v1, v1, 0x2

    .line 583
    :cond_1
    move v2, v0

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    .line 584
    add-int/lit8 v1, v1, 0x1

    .line 585
    :cond_2
    move v2, v1

    move v0, v2

    .end local v0    # "word":I
    return v0
.end method

.method static findLowestBit([I)I
    .locals 5

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "words":[I
    const/4 v2, 0x0

    move v1, v2

    .line 594
    .local v1, "i":I
    :goto_0
    move-object v2, v0

    move v3, v1

    aget v2, v2, v3

    if-eqz v2, :cond_0

    .line 595
    const/16 v2, 0x20

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    move v4, v1

    aget v3, v3, v4

    invoke-static {v3}, Lgnu/math/MPN;->findLowestBit(I)I

    move-result v3

    add-int/2addr v2, v3

    move v0, v2

    .end local v0    # "words":[I
    return v0

    .line 592
    .restart local v0    # "words":[I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static gcd([I[II)I
    .locals 15

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "x":[I
    move-object/from16 v1, p1

    .local v1, "y":[I
    move/from16 v2, p2

    .local v2, "len":I
    const/4 v10, 0x0

    move v3, v10

    .line 610
    .local v3, "i":I
    :goto_0
    move-object v10, v0

    move v11, v3

    aget v10, v10, v11

    move-object v11, v1

    move v12, v3

    aget v11, v11, v12

    or-int/2addr v10, v11

    move v4, v10

    .line 611
    .local v4, "word":I
    move v10, v4

    if-eqz v10, :cond_1

    .line 614
    .line 617
    move v10, v3

    move v5, v10

    .line 618
    .local v5, "initShiftWords":I
    move v10, v4

    invoke-static {v10}, Lgnu/math/MPN;->findLowestBit(I)I

    move-result v10

    move v6, v10

    .line 622
    .local v6, "initShiftBits":I
    move v10, v2

    move v11, v5

    sub-int/2addr v10, v11

    move v2, v10

    .line 623
    move-object v10, v0

    move-object v11, v0

    move v12, v5

    move v13, v2

    move v14, v6

    invoke-static {v10, v11, v12, v13, v14}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 624
    move-object v10, v1

    move-object v11, v1

    move v12, v5

    move v13, v2

    move v14, v6

    invoke-static {v10, v11, v12, v13, v14}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 628
    move-object v10, v0

    const/4 v11, 0x0

    aget v10, v10, v11

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    .line 630
    move-object v10, v0

    move-object v7, v10

    .line 631
    .local v7, "odd_arg":[I
    move-object v10, v1

    move-object v8, v10

    .line 644
    .local v8, "other_arg":[I
    :cond_0
    :goto_1
    const/4 v10, 0x0

    move v3, v10

    :goto_2
    move-object v10, v8

    move v11, v3

    aget v10, v10, v11

    if-nez v10, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 608
    .end local v5    # "initShiftWords":I
    .end local v6    # "initShiftBits":I
    .end local v7    # "odd_arg":[I
    .end local v8    # "other_arg":[I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 635
    .restart local v5    # "initShiftWords":I
    .restart local v6    # "initShiftBits":I
    :cond_2
    move-object v10, v1

    move-object v7, v10

    .line 636
    .restart local v7    # "odd_arg":[I
    move-object v10, v0

    move-object v8, v10

    .restart local v8    # "other_arg":[I
    goto :goto_1

    .line 645
    :cond_3
    move v10, v3

    if-lez v10, :cond_5

    .line 648
    const/4 v10, 0x0

    move v9, v10

    .local v9, "j":I
    :goto_3
    move v10, v9

    move v11, v2

    move v12, v3

    sub-int/2addr v11, v12

    if-ge v10, v11, :cond_4

    .line 649
    move-object v10, v8

    move v11, v9

    move-object v12, v8

    move v13, v9

    move v14, v3

    add-int/2addr v13, v14

    aget v12, v12, v13

    aput v12, v10, v11

    .line 648
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 650
    :cond_4
    :goto_4
    move v10, v9

    move v11, v2

    if-ge v10, v11, :cond_5

    .line 651
    move-object v10, v8

    move v11, v9

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 650
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 653
    .end local v9    # "j":I
    :cond_5
    move-object v10, v8

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Lgnu/math/MPN;->findLowestBit(I)I

    move-result v10

    move v3, v10

    .line 654
    move v10, v3

    if-lez v10, :cond_6

    .line 655
    move-object v10, v8

    move-object v11, v8

    const/4 v12, 0x0

    move v13, v2

    move v14, v3

    invoke-static {v10, v11, v12, v13, v14}, Lgnu/math/MPN;->rshift([I[IIII)I

    move-result v10

    .line 661
    :cond_6
    move-object v10, v7

    move-object v11, v8

    move v12, v2

    invoke-static {v10, v11, v12}, Lgnu/math/MPN;->cmp([I[II)I

    move-result v10

    move v3, v10

    .line 662
    move v10, v3

    if-nez v10, :cond_8

    .line 663
    .line 677
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    if-lez v10, :cond_c

    .line 679
    move v10, v6

    if-lez v10, :cond_a

    .line 681
    move-object v10, v0

    move v11, v5

    move-object v12, v0

    move v13, v2

    move v14, v6

    invoke-static {v10, v11, v12, v13, v14}, Lgnu/math/MPN;->lshift([II[III)I

    move-result v10

    move v9, v10

    .line 682
    .local v9, "sh_out":I
    move v10, v9

    if-eqz v10, :cond_7

    .line 683
    move-object v10, v0

    move v11, v2

    add-int/lit8 v2, v2, 0x1

    move v12, v5

    add-int/2addr v11, v12

    move v12, v9

    aput v12, v10, v11

    .line 684
    .line 690
    .end local v9    # "sh_out":I
    :cond_7
    move v10, v5

    move v3, v10

    :goto_5
    add-int/lit8 v3, v3, -0x1

    move v10, v3

    if-ltz v10, :cond_b

    .line 691
    move-object v10, v0

    move v11, v3

    const/4 v12, 0x0

    aput v12, v10, v11

    goto :goto_5

    .line 664
    :cond_8
    move v10, v3

    if-lez v10, :cond_9

    .line 666
    move-object v10, v7

    move-object v11, v7

    move-object v12, v8

    move v13, v2

    invoke-static {v10, v11, v12, v13}, Lgnu/math/MPN;->sub_n([I[I[II)I

    move-result v10

    .line 668
    move-object v10, v7

    move-object v9, v10

    .local v9, "tmp":[I
    move-object v10, v8

    move-object v7, v10

    move-object v10, v9

    move-object v8, v10

    .line 674
    .end local v9    # "tmp":[I
    :goto_6
    move-object v10, v7

    move v11, v2

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    if-nez v10, :cond_0

    move-object v10, v8

    move v11, v2

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    if-nez v10, :cond_0

    .line 675
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 672
    :cond_9
    move-object v10, v8

    move-object v11, v8

    move-object v12, v7

    move v13, v2

    invoke-static {v10, v11, v12, v13}, Lgnu/math/MPN;->sub_n([I[I[II)I

    move-result v10

    goto :goto_6

    .line 687
    :cond_a
    move v10, v2

    move v3, v10

    :goto_7
    add-int/lit8 v3, v3, -0x1

    move v10, v3

    if-ltz v10, :cond_7

    .line 688
    move-object v10, v0

    move v11, v3

    move v12, v5

    add-int/2addr v11, v12

    move-object v12, v0

    move v13, v3

    aget v12, v12, v13

    aput v12, v10, v11

    goto :goto_7

    .line 692
    :cond_b
    move v10, v2

    move v11, v5

    add-int/2addr v10, v11

    move v2, v10

    .line 694
    :cond_c
    move v10, v2

    move v0, v10

    .end local v0    # "x":[I
    return v0
.end method

.method public static intLength(I)I
    .locals 4

    .prologue
    .line 699
    move v0, p0

    .local v0, "i":I
    const/16 v1, 0x20

    move v2, v0

    if-gez v2, :cond_0

    move v2, v0

    const/4 v3, -0x1

    xor-int/lit8 v2, v2, -0x1

    :goto_0
    invoke-static {v2}, Lgnu/math/MPN;->count_leading_zeros(I)I

    move-result v2

    rsub-int/lit8 v1, v2, 0x20

    move v0, v1

    .end local v0    # "i":I
    return v0

    .restart local v0    # "i":I
    :cond_0
    move v2, v0

    goto :goto_0
.end method

.method public static intLength([II)I
    .locals 5

    .prologue
    .line 706
    move-object v0, p0

    .local v0, "words":[I
    move v1, p1

    .local v1, "len":I
    add-int/lit8 v1, v1, -0x1

    .line 707
    move-object v2, v0

    move v3, v1

    aget v2, v2, v3

    invoke-static {v2}, Lgnu/math/MPN;->intLength(I)I

    move-result v2

    const/16 v3, 0x20

    move v4, v1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    move v0, v2

    .end local v0    # "words":[I
    return v0
.end method

.method public static lshift([II[III)I
    .locals 15

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "dest":[I
    move/from16 v1, p1

    .local v1, "d_offset":I
    move-object/from16 v2, p2

    .local v2, "x":[I
    move/from16 v3, p3

    .local v3, "len":I
    move/from16 v4, p4

    .local v4, "count":I
    const/16 v10, 0x20

    move v11, v4

    rsub-int/lit8 v10, v11, 0x20

    move v5, v10

    .line 554
    .local v5, "count_2":I
    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v6, v10

    .line 555
    .local v6, "i":I
    move-object v10, v2

    move v11, v6

    aget v10, v10, v11

    move v7, v10

    .line 556
    .local v7, "high_word":I
    move v10, v7

    move v11, v5

    ushr-int/2addr v10, v11

    move v8, v10

    .line 557
    .local v8, "retval":I
    add-int/lit8 v1, v1, 0x1

    .line 558
    :goto_0
    add-int/lit8 v6, v6, -0x1

    move v10, v6

    if-ltz v10, :cond_0

    .line 560
    move-object v10, v2

    move v11, v6

    aget v10, v10, v11

    move v9, v10

    .line 561
    .local v9, "low_word":I
    move-object v10, v0

    move v11, v1

    move v12, v6

    add-int/2addr v11, v12

    move v12, v7

    move v13, v4

    shl-int/2addr v12, v13

    move v13, v9

    move v14, v5

    ushr-int/2addr v13, v14

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 562
    move v10, v9

    move v7, v10

    .line 563
    goto :goto_0

    .line 564
    .end local v9    # "low_word":I
    :cond_0
    move-object v10, v0

    move v11, v1

    move v12, v6

    add-int/2addr v11, v12

    move v12, v7

    move v13, v4

    shl-int/2addr v12, v13

    aput v12, v10, v11

    .line 565
    move v10, v8

    move v0, v10

    .end local v0    # "dest":[I
    return v0
.end method

.method public static mul([I[II[II)V
    .locals 22

    .prologue
    .line 111
    move-object/from16 v3, p0

    .local v3, "dest":[I
    move-object/from16 v4, p1

    .local v4, "x":[I
    move/from16 v5, p2

    .local v5, "xlen":I
    move-object/from16 v6, p3

    .local v6, "y":[I
    move/from16 v7, p4

    .local v7, "ylen":I
    move-object v14, v3

    move v15, v5

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    const/16 v20, 0x0

    aget v19, v19, v20

    invoke-static/range {v16 .. v19}, Lgnu/math/MPN;->mul_1([I[III)I

    move-result v16

    aput v16, v14, v15

    .line 113
    const/4 v14, 0x1

    move v8, v14

    .local v8, "i":I
    :goto_0
    move v14, v8

    move v15, v7

    if-ge v14, v15, :cond_1

    .line 115
    move-object v14, v6

    move v15, v8

    aget v14, v14, v15

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    move-wide v9, v14

    .line 116
    .local v9, "yword":J
    const-wide/16 v14, 0x0

    move-wide v11, v14

    .line 117
    .local v11, "carry":J
    const/4 v14, 0x0

    move v13, v14

    .local v13, "j":I
    :goto_1
    move v14, v13

    move v15, v5

    if-ge v14, v15, :cond_0

    .line 119
    move-wide v14, v11

    move-object/from16 v16, v4

    move/from16 v17, v13

    aget v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    move-wide/from16 v18, v9

    mul-long v16, v16, v18

    move-object/from16 v18, v3

    move/from16 v19, v8

    move/from16 v20, v13

    add-int v19, v19, v20

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v16, v16, v18

    add-long v14, v14, v16

    move-wide v11, v14

    .line 121
    move-object v14, v3

    move v15, v8

    move/from16 v16, v13

    add-int v15, v15, v16

    move-wide/from16 v16, v11

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    .line 122
    move-wide v14, v11

    const/16 v16, 0x20

    ushr-long v14, v14, v16

    move-wide v11, v14

    .line 117
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 124
    :cond_0
    move-object v14, v3

    move v15, v8

    move/from16 v16, v5

    add-int v15, v15, v16

    move-wide/from16 v16, v11

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    .line 113
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 126
    .end local v9    # "yword":J
    .end local v11    # "carry":J
    .end local v13    # "j":I
    :cond_1
    return-void
.end method

.method public static mul_1([I[III)I
    .locals 16

    .prologue
    .line 86
    move-object/from16 v1, p0

    .local v1, "dest":[I
    move-object/from16 v2, p1

    .local v2, "x":[I
    move/from16 v3, p2

    .local v3, "len":I
    move/from16 v4, p3

    .local v4, "y":I
    move v10, v4

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    move-wide v5, v10

    .line 87
    .local v5, "yword":J
    const-wide/16 v10, 0x0

    move-wide v7, v10

    .line 88
    .local v7, "carry":J
    const/4 v10, 0x0

    move v9, v10

    .local v9, "j":I
    :goto_0
    move v10, v9

    move v11, v3

    if-ge v10, v11, :cond_0

    .line 90
    move-wide v10, v7

    move-object v12, v2

    move v13, v9

    aget v12, v12, v13

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    move-wide v14, v5

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    move-wide v7, v10

    .line 91
    move-object v10, v1

    move v11, v9

    move-wide v12, v7

    long-to-int v12, v12

    aput v12, v10, v11

    .line 92
    move-wide v10, v7

    const/16 v12, 0x20

    ushr-long/2addr v10, v12

    move-wide v7, v10

    .line 88
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 94
    :cond_0
    move-wide v10, v7

    long-to-int v10, v10

    move v1, v10

    .end local v1    # "dest":[I
    return v1
.end method

.method public static rshift([I[IIII)I
    .locals 15

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "dest":[I
    move-object/from16 v1, p1

    .local v1, "x":[I
    move/from16 v2, p2

    .local v2, "x_start":I
    move/from16 v3, p3

    .local v3, "len":I
    move/from16 v4, p4

    .local v4, "count":I
    const/16 v10, 0x20

    move v11, v4

    rsub-int/lit8 v10, v11, 0x20

    move v5, v10

    .line 489
    .local v5, "count_2":I
    move-object v10, v1

    move v11, v2

    aget v10, v10, v11

    move v6, v10

    .line 490
    .local v6, "low_word":I
    move v10, v6

    move v11, v5

    shl-int/2addr v10, v11

    move v7, v10

    .line 491
    .local v7, "retval":I
    const/4 v10, 0x1

    move v8, v10

    .line 492
    .local v8, "i":I
    :goto_0
    move v10, v8

    move v11, v3

    if-ge v10, v11, :cond_0

    .line 494
    move-object v10, v1

    move v11, v2

    move v12, v8

    add-int/2addr v11, v12

    aget v10, v10, v11

    move v9, v10

    .line 495
    .local v9, "high_word":I
    move-object v10, v0

    move v11, v8

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v12, v6

    move v13, v4

    ushr-int/2addr v12, v13

    move v13, v9

    move v14, v5

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 496
    move v10, v9

    move v6, v10

    .line 492
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 498
    .end local v9    # "high_word":I
    :cond_0
    move-object v10, v0

    move v11, v8

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v12, v6

    move v13, v4

    ushr-int/2addr v12, v13

    aput v12, v10, v11

    .line 499
    move v10, v7

    move v0, v10

    .end local v0    # "dest":[I
    return v0
.end method

.method public static rshift0([I[IIII)V
    .locals 11

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "dest":[I
    move-object v1, p1

    .local v1, "x":[I
    move v2, p2

    .local v2, "x_start":I
    move v3, p3

    .local v3, "len":I
    move v4, p4

    .local v4, "count":I
    move v6, v4

    if-lez v6, :cond_1

    .line 513
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Lgnu/math/MPN;->rshift([I[IIII)I

    move-result v6

    .line 517
    :cond_0
    return-void

    .line 515
    :cond_1
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 516
    move-object v6, v0

    move v7, v5

    move-object v8, v1

    move v9, v5

    move v10, v2

    add-int/2addr v9, v10

    aget v8, v8, v9

    aput v8, v6, v7

    .line 515
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static rshift_long([III)J
    .locals 14

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "x":[I
    move v1, p1

    .local v1, "len":I
    move/from16 v2, p2

    .local v2, "count":I
    move v8, v2

    const/4 v9, 0x5

    shr-int/lit8 v8, v8, 0x5

    move v3, v8

    .line 528
    .local v3, "wordno":I
    move v8, v2

    const/16 v9, 0x1f

    and-int/lit8 v8, v8, 0x1f

    move v2, v8

    .line 529
    move-object v8, v0

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    if-gez v8, :cond_1

    const/4 v8, -0x1

    :goto_0
    move v4, v8

    .line 530
    .local v4, "sign":I
    move v8, v3

    move v9, v1

    if-lt v8, v9, :cond_2

    move v8, v4

    :goto_1
    move v5, v8

    .line 531
    .local v5, "w0":I
    add-int/lit8 v3, v3, 0x1

    .line 532
    move v8, v3

    move v9, v1

    if-lt v8, v9, :cond_3

    move v8, v4

    :goto_2
    move v6, v8

    .line 533
    .local v6, "w1":I
    move v8, v2

    if-eqz v8, :cond_0

    .line 535
    add-int/lit8 v3, v3, 0x1

    .line 536
    move v8, v3

    move v9, v1

    if-lt v8, v9, :cond_4

    move v8, v4

    :goto_3
    move v7, v8

    .line 537
    .local v7, "w2":I
    move v8, v5

    move v9, v2

    ushr-int/2addr v8, v9

    move v9, v6

    const/16 v10, 0x20

    move v11, v2

    rsub-int/lit8 v10, v11, 0x20

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    move v5, v8

    .line 538
    move v8, v6

    move v9, v2

    ushr-int/2addr v8, v9

    move v9, v7

    const/16 v10, 0x20

    move v11, v2

    rsub-int/lit8 v10, v11, 0x20

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    move v6, v8

    .line 540
    .end local v7    # "w2":I
    :cond_0
    move v8, v6

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    move v10, v5

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    or-long/2addr v8, v10

    move-wide v0, v8

    .end local v0    # "x":[I
    return-wide v0

    .line 529
    .end local v4    # "sign":I
    .end local v5    # "w0":I
    .end local v6    # "w1":I
    .restart local v0    # "x":[I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 530
    .restart local v4    # "sign":I
    :cond_2
    move-object v8, v0

    move v9, v3

    aget v8, v8, v9

    goto :goto_1

    .line 532
    .restart local v5    # "w0":I
    :cond_3
    move-object v8, v0

    move v9, v3

    aget v8, v8, v9

    goto :goto_2

    .line 536
    .restart local v6    # "w1":I
    :cond_4
    move-object v8, v0

    move v9, v3

    aget v8, v8, v9

    goto :goto_3
.end method

.method public static set_str([I[BII)I
    .locals 17

    .prologue
    .line 385
    move-object/from16 v0, p0

    .local v0, "dest":[I
    move-object/from16 v1, p1

    .local v1, "str":[B
    move/from16 v2, p2

    .local v2, "str_len":I
    move/from16 v3, p3

    .local v3, "base":I
    const/4 v11, 0x0

    move v4, v11

    .line 386
    .local v4, "size":I
    move v11, v3

    move v12, v3

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    and-int/2addr v11, v12

    if-nez v11, :cond_4

    .line 391
    const/4 v11, 0x0

    move v5, v11

    .line 392
    .local v5, "next_bitpos":I
    const/4 v11, 0x0

    move v6, v11

    .line 393
    .local v6, "bits_per_indigit":I
    move v11, v3

    move v7, v11

    .local v7, "i":I
    :goto_0
    move v11, v7

    const/4 v12, 0x1

    shr-int/lit8 v11, v11, 0x1

    move/from16 v16, v11

    move/from16 v11, v16

    move/from16 v12, v16

    move v7, v12

    if-eqz v11, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 394
    :cond_0
    const/4 v11, 0x0

    move v7, v11

    .line 396
    .local v7, "res_digit":I
    move v11, v2

    move v8, v11

    .local v8, "i":I
    :goto_1
    add-int/lit8 v8, v8, -0x1

    move v11, v8

    if-ltz v11, :cond_2

    .line 398
    move-object v11, v1

    move v12, v8

    aget-byte v11, v11, v12

    move v9, v11

    .line 399
    .local v9, "inp_digit":I
    move v11, v7

    move v12, v9

    move v13, v5

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v7, v11

    .line 400
    move v11, v5

    move v12, v6

    add-int/2addr v11, v12

    move v5, v11

    .line 401
    move v11, v5

    const/16 v12, 0x20

    if-lt v11, v12, :cond_1

    .line 403
    move-object v11, v0

    move v12, v4

    add-int/lit8 v4, v4, 0x1

    move v13, v7

    aput v13, v11, v12

    .line 404
    add-int/lit8 v5, v5, -0x20

    .line 405
    move v11, v9

    move v12, v6

    move v13, v5

    sub-int/2addr v12, v13

    shr-int/2addr v11, v12

    move v7, v11

    .line 407
    :cond_1
    goto :goto_1

    .line 409
    .end local v9    # "inp_digit":I
    :cond_2
    move v11, v7

    if-eqz v11, :cond_3

    .line 410
    move-object v11, v0

    move v12, v4

    add-int/lit8 v4, v4, 0x1

    move v13, v7

    aput v13, v11, v12

    .line 411
    .line 444
    .end local v5    # "next_bitpos":I
    .end local v6    # "bits_per_indigit":I
    .end local v7    # "res_digit":I
    .end local v8    # "i":I
    :cond_3
    move v11, v4

    move v0, v11

    .end local v0    # "dest":[I
    return v0

    .line 415
    .restart local v0    # "dest":[I
    :cond_4
    move v11, v3

    invoke-static {v11}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v11

    move v5, v11

    .line 416
    .local v5, "indigits_per_limb":I
    const/4 v11, 0x0

    move v6, v11

    .line 418
    .local v6, "str_pos":I
    :goto_2
    move v11, v6

    move v12, v2

    if-ge v11, v12, :cond_3

    .line 420
    move v11, v2

    move v12, v6

    sub-int/2addr v11, v12

    move v7, v11

    .line 421
    .local v7, "chunk":I
    move v11, v7

    move v12, v5

    if-le v11, v12, :cond_5

    .line 422
    move v11, v5

    move v7, v11

    .line 423
    :cond_5
    move-object v11, v1

    move v12, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v12

    move v8, v11

    .line 424
    .local v8, "res_digit":I
    move v11, v3

    move v9, v11

    .line 426
    .local v9, "big_base":I
    :goto_3
    add-int/lit8 v7, v7, -0x1

    move v11, v7

    if-lez v11, :cond_6

    .line 428
    move v11, v8

    move v12, v3

    mul-int/2addr v11, v12

    move-object v12, v1

    move v13, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v12, v12, v13

    add-int/2addr v11, v12

    move v8, v11

    .line 429
    move v11, v9

    move v12, v3

    mul-int/2addr v11, v12

    move v9, v11

    goto :goto_3

    .line 433
    :cond_6
    move v11, v4

    if-nez v11, :cond_8

    .line 434
    move v11, v8

    move v10, v11

    .line 440
    .local v10, "cy_limb":I
    :goto_4
    move v11, v10

    if-eqz v11, :cond_7

    .line 441
    move-object v11, v0

    move v12, v4

    add-int/lit8 v4, v4, 0x1

    move v13, v10

    aput v13, v11, v12

    .line 442
    :cond_7
    goto :goto_2

    .line 437
    .end local v10    # "cy_limb":I
    :cond_8
    move-object v11, v0

    move-object v12, v0

    move v13, v4

    move v14, v9

    invoke-static {v11, v12, v13, v14}, Lgnu/math/MPN;->mul_1([I[III)I

    move-result v11

    move v10, v11

    .line 438
    .restart local v10    # "cy_limb":I
    move v11, v10

    move-object v12, v0

    move-object v13, v0

    move v14, v4

    move v15, v8

    invoke-static {v12, v13, v14, v15}, Lgnu/math/MPN;->add_1([I[III)I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    goto :goto_4
.end method

.method public static sub_n([I[I[II)I
    .locals 12

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "dest":[I
    move-object v1, p1

    .local v1, "X":[I
    move-object v2, p2

    .local v2, "Y":[I
    move v3, p3

    .local v3, "size":I
    const/4 v8, 0x0

    move v4, v8

    .line 60
    .local v4, "cy":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    move v9, v3

    if-ge v8, v9, :cond_2

    .line 62
    move-object v8, v2

    move v9, v5

    aget v8, v8, v9

    move v6, v8

    .line 63
    .local v6, "y":I
    move-object v8, v1

    move v9, v5

    aget v8, v8, v9

    move v7, v8

    .line 64
    .local v7, "x":I
    move v8, v6

    move v9, v4

    add-int/2addr v8, v9

    move v6, v8

    .line 67
    move v8, v6

    const/high16 v9, -0x80000000

    xor-int/2addr v8, v9

    move v9, v4

    const/high16 v10, -0x80000000

    xor-int/2addr v9, v10

    if-ge v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_1
    move v4, v8

    .line 68
    move v8, v7

    move v9, v6

    sub-int/2addr v8, v9

    move v6, v8

    .line 69
    move v8, v4

    move v9, v6

    const/high16 v10, -0x80000000

    xor-int/2addr v9, v10

    move v10, v7

    const/high16 v11, -0x80000000

    xor-int/2addr v10, v11

    if-le v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_2
    add-int/2addr v8, v9

    move v4, v8

    .line 70
    move-object v8, v0

    move v9, v5

    move v10, v6

    aput v10, v8, v9

    .line 60
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 67
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 69
    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 72
    .end local v6    # "y":I
    .end local v7    # "x":I
    :cond_2
    move v8, v4

    move v0, v8

    .end local v0    # "dest":[I
    return v0
.end method

.method public static submul_1([II[III)I
    .locals 18

    .prologue
    .line 246
    move-object/from16 v0, p0

    .local v0, "dest":[I
    move/from16 v1, p1

    .local v1, "offset":I
    move-object/from16 v2, p2

    .local v2, "x":[I
    move/from16 v3, p3

    .local v3, "len":I
    move/from16 v4, p4

    .local v4, "y":I
    move v14, v4

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    move-wide v5, v14

    .line 247
    .local v5, "yl":J
    const/4 v14, 0x0

    move v7, v14

    .line 248
    .local v7, "carry":I
    const/4 v14, 0x0

    move v8, v14

    .line 251
    .local v8, "j":I
    :cond_0
    move-object v14, v2

    move v15, v8

    aget v14, v14, v15

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    move-wide/from16 v16, v5

    mul-long v14, v14, v16

    move-wide v9, v14

    .line 252
    .local v9, "prod":J
    move-wide v14, v9

    long-to-int v14, v14

    move v11, v14

    .line 253
    .local v11, "prod_low":I
    move-wide v14, v9

    const/16 v16, 0x20

    shr-long v14, v14, v16

    long-to-int v14, v14

    move v12, v14

    .line 254
    .local v12, "prod_high":I
    move v14, v11

    move v15, v7

    add-int/2addr v14, v15

    move v11, v14

    .line 257
    move v14, v11

    const/high16 v15, -0x80000000

    xor-int/2addr v14, v15

    move v15, v7

    const/high16 v16, -0x80000000

    xor-int v15, v15, v16

    if-ge v14, v15, :cond_2

    const/4 v14, 0x1

    :goto_0
    move v15, v12

    add-int/2addr v14, v15

    move v7, v14

    .line 259
    move-object v14, v0

    move v15, v1

    move/from16 v16, v8

    add-int v15, v15, v16

    aget v14, v14, v15

    move v13, v14

    .line 260
    .local v13, "x_j":I
    move v14, v13

    move v15, v11

    sub-int/2addr v14, v15

    move v11, v14

    .line 261
    move v14, v11

    const/high16 v15, -0x80000000

    xor-int/2addr v14, v15

    move v15, v13

    const/high16 v16, -0x80000000

    xor-int v15, v15, v16

    if-le v14, v15, :cond_1

    .line 262
    add-int/lit8 v7, v7, 0x1

    .line 263
    :cond_1
    move-object v14, v0

    move v15, v1

    move/from16 v16, v8

    add-int v15, v15, v16

    move/from16 v16, v11

    aput v16, v14, v15

    .line 265
    add-int/lit8 v8, v8, 0x1

    move v14, v8

    move v15, v3

    if-lt v14, v15, :cond_0

    .line 266
    move v14, v7

    move v0, v14

    .end local v0    # "dest":[I
    return v0

    .line 257
    .end local v13    # "x_j":I
    .restart local v0    # "dest":[I
    :cond_2
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public static udiv_qrnnd(JI)J
    .locals 26

    .prologue
    .line 136
    move-wide/from16 v3, p0

    .local v3, "N":J
    move/from16 v5, p2

    .local v5, "D":I
    move-wide/from16 v18, v3

    const/16 v20, 0x20

    ushr-long v18, v18, v20

    move-wide/from16 v10, v18

    .line 137
    .local v10, "a1":J
    move-wide/from16 v18, v3

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    move-wide/from16 v12, v18

    .line 138
    .local v12, "a0":J
    move/from16 v18, v5

    if-ltz v18, :cond_2

    .line 140
    move-wide/from16 v18, v10

    move/from16 v20, v5

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v10

    sub-long v20, v20, v22

    move-wide/from16 v22, v12

    const/16 v24, 0x1f

    ushr-long v22, v22, v24

    sub-long v20, v20, v22

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    cmp-long v18, v18, v20

    if-gez v18, :cond_1

    .line 143
    move-wide/from16 v18, v3

    move/from16 v20, v5

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    div-long v18, v18, v20

    move-wide/from16 v6, v18

    .line 144
    .local v6, "q":J
    move-wide/from16 v18, v3

    move/from16 v20, v5

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    rem-long v18, v18, v20

    move-wide/from16 v8, v18

    .line 207
    .local v8, "r":J
    :cond_0
    :goto_0
    move-wide/from16 v18, v8

    const/16 v20, 0x20

    shl-long v18, v18, v20

    move-wide/from16 v20, v6

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    or-long v18, v18, v20

    move-wide/from16 v3, v18

    .end local v3    # "N":J
    return-wide v3

    .line 149
    .end local v6    # "q":J
    .end local v8    # "r":J
    .restart local v3    # "N":J
    :cond_1
    move-wide/from16 v18, v3

    move/from16 v20, v5

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v22, 0x1f

    shl-long v20, v20, v22

    sub-long v18, v18, v20

    move-wide/from16 v14, v18

    .line 151
    .local v14, "c":J
    move-wide/from16 v18, v14

    move/from16 v20, v5

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    div-long v18, v18, v20

    move-wide/from16 v6, v18

    .line 152
    .restart local v6    # "q":J
    move-wide/from16 v18, v14

    move/from16 v20, v5

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    rem-long v18, v18, v20

    move-wide/from16 v8, v18

    .line 154
    .restart local v8    # "r":J
    move-wide/from16 v18, v6

    const-wide/32 v20, -0x80000000

    add-long v18, v18, v20

    move-wide/from16 v6, v18

    .line 155
    goto :goto_0

    .line 159
    .end local v6    # "q":J
    .end local v8    # "r":J
    .end local v14    # "c":J
    :cond_2
    move/from16 v18, v5

    const/16 v19, 0x1

    ushr-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v14, v18

    .line 162
    .local v14, "b1":J
    move-wide/from16 v18, v3

    const/16 v20, 0x1

    ushr-long v18, v18, v20

    move-wide/from16 v16, v18

    .line 163
    .local v16, "c":J
    move-wide/from16 v18, v10

    move-wide/from16 v20, v14

    cmp-long v18, v18, v20

    if-ltz v18, :cond_3

    move-wide/from16 v18, v10

    const/16 v20, 0x1

    shr-long v18, v18, v20

    move-wide/from16 v20, v14

    cmp-long v18, v18, v20

    if-gez v18, :cond_7

    .line 165
    :cond_3
    move-wide/from16 v18, v10

    move-wide/from16 v20, v14

    cmp-long v18, v18, v20

    if-gez v18, :cond_4

    .line 167
    move-wide/from16 v18, v16

    move-wide/from16 v20, v14

    div-long v18, v18, v20

    move-wide/from16 v6, v18

    .line 168
    .restart local v6    # "q":J
    move-wide/from16 v18, v16

    move-wide/from16 v20, v14

    rem-long v18, v18, v20

    move-wide/from16 v8, v18

    .line 178
    .restart local v8    # "r":J
    :goto_1
    const-wide/16 v18, 0x2

    move-wide/from16 v20, v8

    mul-long v18, v18, v20

    move-wide/from16 v20, v12

    const-wide/16 v22, 0x1

    and-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v8, v18

    .line 179
    move/from16 v18, v5

    const/16 v19, 0x1

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_0

    .line 181
    move-wide/from16 v18, v8

    move-wide/from16 v20, v6

    cmp-long v18, v18, v20

    if-ltz v18, :cond_5

    .line 182
    move-wide/from16 v18, v8

    move-wide/from16 v20, v6

    sub-long v18, v18, v20

    move-wide/from16 v8, v18

    goto/16 :goto_0

    .line 172
    .end local v6    # "q":J
    .end local v8    # "r":J
    :cond_4
    move-wide/from16 v18, v16

    move-wide/from16 v20, v14

    const/16 v22, 0x20

    shl-long v20, v20, v22

    sub-long v18, v18, v20

    const-wide/16 v20, -0x1

    xor-long v18, v18, v20

    move-wide/from16 v16, v18

    .line 173
    move-wide/from16 v18, v16

    move-wide/from16 v20, v14

    div-long v18, v18, v20

    move-wide/from16 v6, v18

    .line 174
    .restart local v6    # "q":J
    move-wide/from16 v18, v16

    move-wide/from16 v20, v14

    rem-long v18, v18, v20

    move-wide/from16 v8, v18

    .line 175
    .restart local v8    # "r":J
    move-wide/from16 v18, v6

    const-wide/16 v20, -0x1

    xor-long v18, v18, v20

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    move-wide/from16 v6, v18

    .line 176
    move-wide/from16 v18, v14

    const-wide/16 v20, 0x1

    sub-long v18, v18, v20

    move-wide/from16 v20, v8

    sub-long v18, v18, v20

    move-wide/from16 v8, v18

    goto :goto_1

    .line 183
    :cond_5
    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    sub-long v18, v18, v20

    move/from16 v20, v5

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    cmp-long v18, v18, v20

    if-gtz v18, :cond_6

    .line 184
    move-wide/from16 v18, v8

    move-wide/from16 v20, v6

    sub-long v18, v18, v20

    move/from16 v20, v5

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v8, v18

    .line 185
    move-wide/from16 v18, v6

    const-wide/16 v20, 0x1

    sub-long v18, v18, v20

    move-wide/from16 v6, v18

    goto/16 :goto_0

    .line 187
    :cond_6
    move-wide/from16 v18, v8

    move-wide/from16 v20, v6

    sub-long v18, v18, v20

    move/from16 v20, v5

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move/from16 v20, v5

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v8, v18

    .line 188
    move-wide/from16 v18, v6

    const-wide/16 v20, 0x2

    sub-long v18, v18, v20

    move-wide/from16 v6, v18

    goto/16 :goto_0

    .line 194
    .end local v6    # "q":J
    .end local v8    # "r":J
    :cond_7
    move-wide/from16 v18, v12

    move/from16 v20, v5

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    cmp-long v18, v18, v20

    if-ltz v18, :cond_8

    .line 196
    const-wide/16 v18, -0x1

    move-wide/from16 v6, v18

    .line 197
    .restart local v6    # "q":J
    move-wide/from16 v18, v12

    move/from16 v20, v5

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v8, v18

    .restart local v8    # "r":J
    goto/16 :goto_0

    .line 201
    .end local v6    # "q":J
    .end local v8    # "r":J
    :cond_8
    const-wide/16 v18, -0x2

    move-wide/from16 v6, v18

    .line 202
    .restart local v6    # "q":J
    move-wide/from16 v18, v12

    move/from16 v20, v5

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move/from16 v20, v5

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v8, v18

    .restart local v8    # "r":J
    goto/16 :goto_0
.end method
