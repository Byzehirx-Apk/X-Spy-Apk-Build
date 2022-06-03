.class public Landroidx/core/graphics/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field public mParams:[F
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mType:C
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(C[F)V
    .locals 5

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/PathParser$PathDataNode;
    move v1, p1

    .local v1, "type":C
    move-object v2, p2

    .local v2, "params":[F
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 321
    move-object v3, v0

    move v4, v1

    iput-char v4, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 322
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 323
    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/PathParser$PathDataNode;)V
    .locals 6

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/PathParser$PathDataNode;
    move-object v1, p1

    .local v1, "n":Landroidx/core/graphics/PathParser$PathDataNode;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 326
    move-object v2, v0

    move-object v3, v1

    iget-char v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v3, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 327
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v5, v5

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object v3

    iput-object v3, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 328
    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .locals 29

    .prologue
    .line 365
    move-object/from16 v2, p0

    .local v2, "path":Landroid/graphics/Path;
    move-object/from16 v3, p1

    .local v3, "current":[F
    move/from16 v4, p2

    .local v4, "previousCmd":C
    move/from16 v5, p3

    .local v5, "cmd":C
    move-object/from16 v6, p4

    .local v6, "val":[F
    const/16 v17, 0x2

    move/from16 v7, v17

    .line 366
    .local v7, "incr":I
    move-object/from16 v17, v3

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 367
    .local v8, "currentX":F
    move-object/from16 v17, v3

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v9, v17

    .line 368
    .local v9, "currentY":F
    move-object/from16 v17, v3

    const/16 v18, 0x2

    aget v17, v17, v18

    move/from16 v10, v17

    .line 369
    .local v10, "ctrlPointX":F
    move-object/from16 v17, v3

    const/16 v18, 0x3

    aget v17, v17, v18

    move/from16 v11, v17

    .line 370
    .local v11, "ctrlPointY":F
    move-object/from16 v17, v3

    const/16 v18, 0x4

    aget v17, v17, v18

    move/from16 v12, v17

    .line 371
    .local v12, "currentSegmentStartX":F
    move-object/from16 v17, v3

    const/16 v18, 0x5

    aget v17, v17, v18

    move/from16 v13, v17

    .line 375
    .local v13, "currentSegmentStartY":F
    move/from16 v17, v5

    sparse-switch v17, :sswitch_data_0

    .line 418
    :goto_0
    const/16 v17, 0x0

    move/from16 v16, v17

    .local v16, "k":I
    :goto_1
    move/from16 v17, v16

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    .line 419
    move/from16 v17, v5

    sparse-switch v17, :sswitch_data_1

    .line 602
    :goto_2
    move/from16 v17, v5

    move/from16 v4, v17

    .line 418
    move/from16 v17, v16

    move/from16 v18, v7

    add-int v17, v17, v18

    move/from16 v16, v17

    goto :goto_1

    .line 378
    .end local v16    # "k":I
    :sswitch_0
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->close()V

    .line 382
    move/from16 v17, v12

    move/from16 v8, v17

    .line 383
    move/from16 v17, v13

    move/from16 v9, v17

    .line 384
    move/from16 v17, v12

    move/from16 v10, v17

    .line 385
    move/from16 v17, v13

    move/from16 v11, v17

    .line 386
    move-object/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->moveTo(FF)V

    .line 387
    goto :goto_0

    .line 394
    :sswitch_1
    const/16 v17, 0x2

    move/from16 v7, v17

    .line 395
    goto :goto_0

    .line 400
    :sswitch_2
    const/16 v17, 0x1

    move/from16 v7, v17

    .line 401
    goto :goto_0

    .line 404
    :sswitch_3
    const/16 v17, 0x6

    move/from16 v7, v17

    .line 405
    goto :goto_0

    .line 410
    :sswitch_4
    const/16 v17, 0x4

    move/from16 v7, v17

    .line 411
    goto :goto_0

    .line 414
    :sswitch_5
    const/16 v17, 0x7

    move/from16 v7, v17

    goto :goto_0

    .line 421
    .restart local v16    # "k":I
    :sswitch_6
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 422
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 423
    move/from16 v17, v16

    if-lez v17, :cond_0

    .line 427
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/16 :goto_2

    .line 429
    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 430
    move/from16 v17, v8

    move/from16 v12, v17

    .line 431
    move/from16 v17, v9

    move/from16 v13, v17

    .line 433
    goto/16 :goto_2

    .line 435
    :sswitch_7
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 436
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v9, v17

    .line 437
    move/from16 v17, v16

    if-lez v17, :cond_1

    .line 441
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2

    .line 443
    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->moveTo(FF)V

    .line 444
    move/from16 v17, v8

    move/from16 v12, v17

    .line 445
    move/from16 v17, v9

    move/from16 v13, v17

    .line 447
    goto/16 :goto_2

    .line 449
    :sswitch_8
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 450
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 451
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 452
    goto/16 :goto_2

    .line 454
    :sswitch_9
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->lineTo(FF)V

    .line 455
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 456
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v9, v17

    .line 457
    goto/16 :goto_2

    .line 459
    :sswitch_a
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 460
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 461
    goto/16 :goto_2

    .line 463
    :sswitch_b
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move/from16 v19, v9

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->lineTo(FF)V

    .line 464
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 465
    goto/16 :goto_2

    .line 467
    :sswitch_c
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x0

    add-int/lit8 v20, v20, 0x0

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 468
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 469
    goto/16 :goto_2

    .line 471
    :sswitch_d
    move-object/from16 v17, v2

    move/from16 v18, v8

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x0

    add-int/lit8 v20, v20, 0x0

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->lineTo(FF)V

    .line 472
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v9, v17

    .line 473
    goto/16 :goto_2

    .line 475
    :sswitch_e
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x3

    add-int/lit8 v22, v22, 0x3

    aget v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x4

    add-int/lit8 v23, v23, 0x4

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x5

    add-int/lit8 v24, v24, 0x5

    aget v23, v23, v24

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 478
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v10, v17

    .line 479
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v11, v17

    .line 480
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x4

    add-int/lit8 v19, v19, 0x4

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 481
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x5

    add-int/lit8 v19, v19, 0x5

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 483
    goto/16 :goto_2

    .line 485
    :sswitch_f
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x3

    add-int/lit8 v22, v22, 0x3

    aget v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x4

    add-int/lit8 v23, v23, 0x4

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x5

    add-int/lit8 v24, v24, 0x5

    aget v23, v23, v24

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 487
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x4

    add-int/lit8 v18, v18, 0x4

    aget v17, v17, v18

    move/from16 v8, v17

    .line 488
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x5

    add-int/lit8 v18, v18, 0x5

    aget v17, v17, v18

    move/from16 v9, v17

    .line 489
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    aget v17, v17, v18

    move/from16 v10, v17

    .line 490
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    aget v17, v17, v18

    move/from16 v11, v17

    .line 491
    goto/16 :goto_2

    .line 493
    :sswitch_10
    const/16 v17, 0x0

    move/from16 v14, v17

    .line 494
    .local v14, "reflectiveCtrlPointX":F
    const/16 v17, 0x0

    move/from16 v15, v17

    .line 495
    .local v15, "reflectiveCtrlPointY":F
    move/from16 v17, v4

    const/16 v18, 0x63

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move/from16 v17, v4

    const/16 v18, 0x73

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move/from16 v17, v4

    const/16 v18, 0x43

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move/from16 v17, v4

    const/16 v18, 0x53

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 497
    :cond_2
    move/from16 v17, v8

    move/from16 v18, v10

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 498
    move/from16 v17, v9

    move/from16 v18, v11

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 500
    :cond_3
    move-object/from16 v17, v2

    move/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x0

    add-int/lit8 v21, v21, 0x0

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    aget v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x2

    add-int/lit8 v23, v23, 0x2

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x3

    add-int/lit8 v24, v24, 0x3

    aget v23, v23, v24

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 504
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v10, v17

    .line 505
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v11, v17

    .line 506
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 507
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 508
    goto/16 :goto_2

    .line 510
    .end local v14    # "reflectiveCtrlPointX":F
    .end local v15    # "reflectiveCtrlPointY":F
    :sswitch_11
    move/from16 v17, v8

    move/from16 v14, v17

    .line 511
    .restart local v14    # "reflectiveCtrlPointX":F
    move/from16 v17, v9

    move/from16 v15, v17

    .line 512
    .restart local v15    # "reflectiveCtrlPointY":F
    move/from16 v17, v4

    const/16 v18, 0x63

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move/from16 v17, v4

    const/16 v18, 0x73

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move/from16 v17, v4

    const/16 v18, 0x43

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move/from16 v17, v4

    const/16 v18, 0x53

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 514
    :cond_4
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v18, v8

    mul-float v17, v17, v18

    move/from16 v18, v10

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 515
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v18, v9

    mul-float v17, v17, v18

    move/from16 v18, v11

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 517
    :cond_5
    move-object/from16 v17, v2

    move/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x0

    add-int/lit8 v21, v21, 0x0

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    aget v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x2

    add-int/lit8 v23, v23, 0x2

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x3

    add-int/lit8 v24, v24, 0x3

    aget v23, v23, v24

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 519
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v10, v17

    .line 520
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v11, v17

    .line 521
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    aget v17, v17, v18

    move/from16 v8, v17

    .line 522
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    aget v17, v17, v18

    move/from16 v9, v17

    .line 523
    goto/16 :goto_2

    .line 525
    .end local v14    # "reflectiveCtrlPointX":F
    .end local v15    # "reflectiveCtrlPointY":F
    :sswitch_12
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x3

    add-int/lit8 v22, v22, 0x3

    aget v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 526
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v10, v17

    .line 527
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v11, v17

    .line 528
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 529
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 530
    goto/16 :goto_2

    .line 532
    :sswitch_13
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x3

    add-int/lit8 v22, v22, 0x3

    aget v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 533
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v10, v17

    .line 534
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v11, v17

    .line 535
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    aget v17, v17, v18

    move/from16 v8, v17

    .line 536
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    aget v17, v17, v18

    move/from16 v9, v17

    .line 537
    goto/16 :goto_2

    .line 539
    :sswitch_14
    const/16 v17, 0x0

    move/from16 v14, v17

    .line 540
    .restart local v14    # "reflectiveCtrlPointX":F
    const/16 v17, 0x0

    move/from16 v15, v17

    .line 541
    .restart local v15    # "reflectiveCtrlPointY":F
    move/from16 v17, v4

    const/16 v18, 0x71

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    move/from16 v17, v4

    const/16 v18, 0x74

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    move/from16 v17, v4

    const/16 v18, 0x51

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    move/from16 v17, v4

    const/16 v18, 0x54

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 543
    :cond_6
    move/from16 v17, v8

    move/from16 v18, v10

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 544
    move/from16 v17, v9

    move/from16 v18, v11

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 546
    :cond_7
    move-object/from16 v17, v2

    move/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x0

    add-int/lit8 v21, v21, 0x0

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    aget v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 548
    move/from16 v17, v8

    move/from16 v18, v14

    add-float v17, v17, v18

    move/from16 v10, v17

    .line 549
    move/from16 v17, v9

    move/from16 v18, v15

    add-float v17, v17, v18

    move/from16 v11, v17

    .line 550
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 551
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 552
    goto/16 :goto_2

    .line 554
    .end local v14    # "reflectiveCtrlPointX":F
    .end local v15    # "reflectiveCtrlPointY":F
    :sswitch_15
    move/from16 v17, v8

    move/from16 v14, v17

    .line 555
    .restart local v14    # "reflectiveCtrlPointX":F
    move/from16 v17, v9

    move/from16 v15, v17

    .line 556
    .restart local v15    # "reflectiveCtrlPointY":F
    move/from16 v17, v4

    const/16 v18, 0x71

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    move/from16 v17, v4

    const/16 v18, 0x74

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    move/from16 v17, v4

    const/16 v18, 0x51

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    move/from16 v17, v4

    const/16 v18, 0x54

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 558
    :cond_8
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v18, v8

    mul-float v17, v17, v18

    move/from16 v18, v10

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 559
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v18, v9

    mul-float v17, v17, v18

    move/from16 v18, v11

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 561
    :cond_9
    move-object/from16 v17, v2

    move/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x0

    add-int/lit8 v21, v21, 0x0

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    aget v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 563
    move/from16 v17, v14

    move/from16 v10, v17

    .line 564
    move/from16 v17, v15

    move/from16 v11, v17

    .line 565
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 566
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v9, v17

    .line 567
    goto/16 :goto_2

    .line 570
    .end local v14    # "reflectiveCtrlPointX":F
    .end local v15    # "reflectiveCtrlPointY":F
    :sswitch_16
    move-object/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x5

    add-int/lit8 v21, v21, 0x5

    aget v20, v20, v21

    move/from16 v21, v8

    add-float v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x6

    add-int/lit8 v22, v22, 0x6

    aget v21, v21, v22

    move/from16 v22, v9

    add-float v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x0

    add-int/lit8 v23, v23, 0x0

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget v23, v23, v24

    move-object/from16 v24, v6

    move/from16 v25, v16

    const/16 v26, 0x2

    add-int/lit8 v25, v25, 0x2

    aget v24, v24, v25

    move-object/from16 v25, v6

    move/from16 v26, v16

    const/16 v27, 0x3

    add-int/lit8 v26, v26, 0x3

    aget v25, v25, v26

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_a

    const/16 v25, 0x1

    :goto_3
    move-object/from16 v26, v6

    move/from16 v27, v16

    const/16 v28, 0x4

    add-int/lit8 v27, v27, 0x4

    aget v26, v26, v27

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_b

    const/16 v26, 0x1

    :goto_4
    invoke-static/range {v17 .. v26}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 580
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x5

    add-int/lit8 v19, v19, 0x5

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 581
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x6

    add-int/lit8 v19, v19, 0x6

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 582
    move/from16 v17, v8

    move/from16 v10, v17

    .line 583
    move/from16 v17, v9

    move/from16 v11, v17

    .line 584
    goto/16 :goto_2

    .line 570
    :cond_a
    const/16 v25, 0x0

    goto :goto_3

    :cond_b
    const/16 v26, 0x0

    goto :goto_4

    .line 586
    :sswitch_17
    move-object/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x5

    add-int/lit8 v21, v21, 0x5

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x6

    add-int/lit8 v22, v22, 0x6

    aget v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x0

    add-int/lit8 v23, v23, 0x0

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget v23, v23, v24

    move-object/from16 v24, v6

    move/from16 v25, v16

    const/16 v26, 0x2

    add-int/lit8 v25, v25, 0x2

    aget v24, v24, v25

    move-object/from16 v25, v6

    move/from16 v26, v16

    const/16 v27, 0x3

    add-int/lit8 v26, v26, 0x3

    aget v25, v25, v26

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_c

    const/16 v25, 0x1

    :goto_5
    move-object/from16 v26, v6

    move/from16 v27, v16

    const/16 v28, 0x4

    add-int/lit8 v27, v27, 0x4

    aget v26, v26, v27

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_d

    const/16 v26, 0x1

    :goto_6
    invoke-static/range {v17 .. v26}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 596
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x5

    add-int/lit8 v18, v18, 0x5

    aget v17, v17, v18

    move/from16 v8, v17

    .line 597
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x6

    add-int/lit8 v18, v18, 0x6

    aget v17, v17, v18

    move/from16 v9, v17

    .line 598
    move/from16 v17, v8

    move/from16 v10, v17

    .line 599
    move/from16 v17, v9

    move/from16 v11, v17

    goto/16 :goto_2

    .line 586
    :cond_c
    const/16 v25, 0x0

    goto :goto_5

    :cond_d
    const/16 v26, 0x0

    goto :goto_6

    .line 604
    :cond_e
    move-object/from16 v17, v3

    const/16 v18, 0x0

    move/from16 v19, v8

    aput v19, v17, v18

    .line 605
    move-object/from16 v17, v3

    const/16 v18, 0x1

    move/from16 v19, v9

    aput v19, v17, v18

    .line 606
    move-object/from16 v17, v3

    const/16 v18, 0x2

    move/from16 v19, v10

    aput v19, v17, v18

    .line 607
    move-object/from16 v17, v3

    const/16 v18, 0x3

    move/from16 v19, v11

    aput v19, v17, v18

    .line 608
    move-object/from16 v17, v3

    const/16 v18, 0x4

    move/from16 v19, v12

    aput v19, v17, v18

    .line 609
    move-object/from16 v17, v3

    const/16 v18, 0x5

    move/from16 v19, v13

    aput v19, v17, v18

    .line 610
    return-void

    .line 375
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_3
        0x48 -> :sswitch_2
        0x4c -> :sswitch_1
        0x4d -> :sswitch_1
        0x51 -> :sswitch_4
        0x53 -> :sswitch_4
        0x54 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x71 -> :sswitch_4
        0x73 -> :sswitch_4
        0x74 -> :sswitch_1
        0x76 -> :sswitch_2
        0x7a -> :sswitch_0
    .end sparse-switch

    .line 419
    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_17
        0x43 -> :sswitch_f
        0x48 -> :sswitch_b
        0x4c -> :sswitch_9
        0x4d -> :sswitch_7
        0x51 -> :sswitch_13
        0x53 -> :sswitch_11
        0x54 -> :sswitch_15
        0x56 -> :sswitch_d
        0x61 -> :sswitch_16
        0x63 -> :sswitch_e
        0x68 -> :sswitch_a
        0x6c -> :sswitch_8
        0x6d -> :sswitch_6
        0x71 -> :sswitch_12
        0x73 -> :sswitch_10
        0x74 -> :sswitch_14
        0x76 -> :sswitch_c
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 75

    .prologue
    .line 717
    move-object/from16 v3, p0

    .local v3, "p":Landroid/graphics/Path;
    move-wide/from16 v4, p1

    .local v4, "cx":D
    move-wide/from16 v6, p3

    .local v6, "cy":D
    move-wide/from16 v8, p5

    .local v8, "a":D
    move-wide/from16 v10, p7

    .local v10, "b":D
    move-wide/from16 v12, p9

    .local v12, "e1x":D
    move-wide/from16 v14, p11

    .local v14, "e1y":D
    move-wide/from16 v16, p13

    .local v16, "theta":D
    move-wide/from16 v18, p15

    .local v18, "start":D
    move-wide/from16 v20, p17

    .local v20, "sweep":D
    move-wide/from16 v66, v20

    const-wide/high16 v68, 0x4010000000000000L    # 4.0

    mul-double v66, v66, v68

    const-wide v68, 0x400921fb54442d18L    # Math.PI

    div-double v66, v66, v68

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->abs(D)D

    move-result-wide v66

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v66

    move-wide/from16 v0, v66

    double-to-int v0, v0

    move/from16 v66, v0

    move/from16 v22, v66

    .line 719
    .local v22, "numSegments":I
    move-wide/from16 v66, v18

    move-wide/from16 v23, v66

    .line 720
    .local v23, "eta1":D
    move-wide/from16 v66, v16

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->cos(D)D

    move-result-wide v66

    move-wide/from16 v25, v66

    .line 721
    .local v25, "cosTheta":D
    move-wide/from16 v66, v16

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->sin(D)D

    move-result-wide v66

    move-wide/from16 v27, v66

    .line 722
    .local v27, "sinTheta":D
    move-wide/from16 v66, v23

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->cos(D)D

    move-result-wide v66

    move-wide/from16 v29, v66

    .line 723
    .local v29, "cosEta1":D
    move-wide/from16 v66, v23

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->sin(D)D

    move-result-wide v66

    move-wide/from16 v31, v66

    .line 724
    .local v31, "sinEta1":D
    move-wide/from16 v66, v8

    move-wide/from16 v0, v66

    neg-double v0, v0

    move-wide/from16 v66, v0

    move-wide/from16 v68, v25

    mul-double v66, v66, v68

    move-wide/from16 v68, v31

    mul-double v66, v66, v68

    move-wide/from16 v68, v10

    move-wide/from16 v70, v27

    mul-double v68, v68, v70

    move-wide/from16 v70, v29

    mul-double v68, v68, v70

    sub-double v66, v66, v68

    move-wide/from16 v33, v66

    .line 725
    .local v33, "ep1x":D
    move-wide/from16 v66, v8

    move-wide/from16 v0, v66

    neg-double v0, v0

    move-wide/from16 v66, v0

    move-wide/from16 v68, v27

    mul-double v66, v66, v68

    move-wide/from16 v68, v31

    mul-double v66, v66, v68

    move-wide/from16 v68, v10

    move-wide/from16 v70, v25

    mul-double v68, v68, v70

    move-wide/from16 v70, v29

    mul-double v68, v68, v70

    add-double v66, v66, v68

    move-wide/from16 v35, v66

    .line 727
    .local v35, "ep1y":D
    move-wide/from16 v66, v20

    move/from16 v68, v22

    move/from16 v0, v68

    int-to-double v0, v0

    move-wide/from16 v68, v0

    div-double v66, v66, v68

    move-wide/from16 v37, v66

    .line 728
    .local v37, "anglePerSegment":D
    const/16 v66, 0x0

    move/from16 v39, v66

    .local v39, "i":I
    :goto_0
    move/from16 v66, v39

    move/from16 v67, v22

    move/from16 v0, v66

    move/from16 v1, v67

    if-ge v0, v1, :cond_0

    .line 729
    move-wide/from16 v66, v23

    move-wide/from16 v68, v37

    add-double v66, v66, v68

    move-wide/from16 v40, v66

    .line 730
    .local v40, "eta2":D
    move-wide/from16 v66, v40

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->sin(D)D

    move-result-wide v66

    move-wide/from16 v42, v66

    .line 731
    .local v42, "sinEta2":D
    move-wide/from16 v66, v40

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->cos(D)D

    move-result-wide v66

    move-wide/from16 v44, v66

    .line 732
    .local v44, "cosEta2":D
    move-wide/from16 v66, v4

    move-wide/from16 v68, v8

    move-wide/from16 v70, v25

    mul-double v68, v68, v70

    move-wide/from16 v70, v44

    mul-double v68, v68, v70

    add-double v66, v66, v68

    move-wide/from16 v68, v10

    move-wide/from16 v70, v27

    mul-double v68, v68, v70

    move-wide/from16 v70, v42

    mul-double v68, v68, v70

    sub-double v66, v66, v68

    move-wide/from16 v46, v66

    .line 733
    .local v46, "e2x":D
    move-wide/from16 v66, v6

    move-wide/from16 v68, v8

    move-wide/from16 v70, v27

    mul-double v68, v68, v70

    move-wide/from16 v70, v44

    mul-double v68, v68, v70

    add-double v66, v66, v68

    move-wide/from16 v68, v10

    move-wide/from16 v70, v25

    mul-double v68, v68, v70

    move-wide/from16 v70, v42

    mul-double v68, v68, v70

    add-double v66, v66, v68

    move-wide/from16 v48, v66

    .line 734
    .local v48, "e2y":D
    move-wide/from16 v66, v8

    move-wide/from16 v0, v66

    neg-double v0, v0

    move-wide/from16 v66, v0

    move-wide/from16 v68, v25

    mul-double v66, v66, v68

    move-wide/from16 v68, v42

    mul-double v66, v66, v68

    move-wide/from16 v68, v10

    move-wide/from16 v70, v27

    mul-double v68, v68, v70

    move-wide/from16 v70, v44

    mul-double v68, v68, v70

    sub-double v66, v66, v68

    move-wide/from16 v50, v66

    .line 735
    .local v50, "ep2x":D
    move-wide/from16 v66, v8

    move-wide/from16 v0, v66

    neg-double v0, v0

    move-wide/from16 v66, v0

    move-wide/from16 v68, v27

    mul-double v66, v66, v68

    move-wide/from16 v68, v42

    mul-double v66, v66, v68

    move-wide/from16 v68, v10

    move-wide/from16 v70, v25

    mul-double v68, v68, v70

    move-wide/from16 v70, v44

    mul-double v68, v68, v70

    add-double v66, v66, v68

    move-wide/from16 v52, v66

    .line 736
    .local v52, "ep2y":D
    move-wide/from16 v66, v40

    move-wide/from16 v68, v23

    sub-double v66, v66, v68

    const-wide/high16 v68, 0x4000000000000000L    # 2.0

    div-double v66, v66, v68

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->tan(D)D

    move-result-wide v66

    move-wide/from16 v54, v66

    .line 737
    .local v54, "tanDiff2":D
    move-wide/from16 v66, v40

    move-wide/from16 v68, v23

    sub-double v66, v66, v68

    .line 738
    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->sin(D)D

    move-result-wide v66

    const-wide/high16 v68, 0x4010000000000000L    # 4.0

    const-wide/high16 v70, 0x4008000000000000L    # 3.0

    move-wide/from16 v72, v54

    mul-double v70, v70, v72

    move-wide/from16 v72, v54

    mul-double v70, v70, v72

    add-double v68, v68, v70

    invoke-static/range {v68 .. v69}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v68

    const-wide/high16 v70, 0x3ff0000000000000L    # 1.0

    sub-double v68, v68, v70

    mul-double v66, v66, v68

    const-wide/high16 v68, 0x4008000000000000L    # 3.0

    div-double v66, v66, v68

    move-wide/from16 v56, v66

    .line 739
    .local v56, "alpha":D
    move-wide/from16 v66, v12

    move-wide/from16 v68, v56

    move-wide/from16 v70, v33

    mul-double v68, v68, v70

    add-double v66, v66, v68

    move-wide/from16 v58, v66

    .line 740
    .local v58, "q1x":D
    move-wide/from16 v66, v14

    move-wide/from16 v68, v56

    move-wide/from16 v70, v35

    mul-double v68, v68, v70

    add-double v66, v66, v68

    move-wide/from16 v60, v66

    .line 741
    .local v60, "q1y":D
    move-wide/from16 v66, v46

    move-wide/from16 v68, v56

    move-wide/from16 v70, v50

    mul-double v68, v68, v70

    sub-double v66, v66, v68

    move-wide/from16 v62, v66

    .line 742
    .local v62, "q2x":D
    move-wide/from16 v66, v48

    move-wide/from16 v68, v56

    move-wide/from16 v70, v52

    mul-double v68, v68, v70

    sub-double v66, v66, v68

    move-wide/from16 v64, v66

    .line 745
    .local v64, "q2y":D
    move-object/from16 v66, v3

    const/16 v67, 0x0

    const/16 v68, 0x0

    invoke-virtual/range {v66 .. v68}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 747
    move-object/from16 v66, v3

    move-wide/from16 v67, v58

    move-wide/from16 v0, v67

    double-to-float v0, v0

    move/from16 v67, v0

    move-wide/from16 v68, v60

    move-wide/from16 v0, v68

    double-to-float v0, v0

    move/from16 v68, v0

    move-wide/from16 v69, v62

    move-wide/from16 v0, v69

    double-to-float v0, v0

    move/from16 v69, v0

    move-wide/from16 v70, v64

    move-wide/from16 v0, v70

    double-to-float v0, v0

    move/from16 v70, v0

    move-wide/from16 v71, v46

    move-wide/from16 v0, v71

    double-to-float v0, v0

    move/from16 v71, v0

    move-wide/from16 v72, v48

    move-wide/from16 v0, v72

    double-to-float v0, v0

    move/from16 v72, v0

    invoke-virtual/range {v66 .. v72}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 753
    move-wide/from16 v66, v40

    move-wide/from16 v23, v66

    .line 754
    move-wide/from16 v66, v46

    move-wide/from16 v12, v66

    .line 755
    move-wide/from16 v66, v48

    move-wide/from16 v14, v66

    .line 756
    move-wide/from16 v66, v50

    move-wide/from16 v33, v66

    .line 757
    move-wide/from16 v66, v52

    move-wide/from16 v35, v66

    .line 728
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_0

    .line 759
    .end local v40    # "eta2":D
    .end local v42    # "sinEta2":D
    .end local v44    # "cosEta2":D
    .end local v46    # "e2x":D
    .end local v48    # "e2y":D
    .end local v50    # "ep2x":D
    .end local v52    # "ep2y":D
    .end local v54    # "tanDiff2":D
    .end local v56    # "alpha":D
    .end local v58    # "q1x":D
    .end local v60    # "q1y":D
    .end local v62    # "q2x":D
    .end local v64    # "q2y":D
    :cond_0
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 76

    .prologue
    .line 624
    move-object/from16 v2, p0

    .local v2, "p":Landroid/graphics/Path;
    move/from16 v3, p1

    .local v3, "x0":F
    move/from16 v4, p2

    .local v4, "y0":F
    move/from16 v5, p3

    .local v5, "x1":F
    move/from16 v6, p4

    .local v6, "y1":F
    move/from16 v7, p5

    .local v7, "a":F
    move/from16 v8, p6

    .local v8, "b":F
    move/from16 v9, p7

    .local v9, "theta":F
    move/from16 v10, p8

    .local v10, "isMoreThanHalf":Z
    move/from16 v11, p9

    .local v11, "isPositiveArc":Z
    move/from16 v56, v9

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v56

    move-wide/from16 v12, v56

    .line 626
    .local v12, "thetaD":D
    move-wide/from16 v56, v12

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->cos(D)D

    move-result-wide v56

    move-wide/from16 v14, v56

    .line 627
    .local v14, "cosTheta":D
    move-wide/from16 v56, v12

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sin(D)D

    move-result-wide v56

    move-wide/from16 v16, v56

    .line 630
    .local v16, "sinTheta":D
    move/from16 v56, v3

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-wide/from16 v58, v14

    mul-double v56, v56, v58

    move/from16 v58, v4

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v60, v16

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move/from16 v58, v7

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    div-double v56, v56, v58

    move-wide/from16 v18, v56

    .line 631
    .local v18, "x0p":D
    move/from16 v56, v3

    move/from16 v0, v56

    neg-float v0, v0

    move/from16 v56, v0

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-wide/from16 v58, v16

    mul-double v56, v56, v58

    move/from16 v58, v4

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v60, v14

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move/from16 v58, v8

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    div-double v56, v56, v58

    move-wide/from16 v20, v56

    .line 632
    .local v20, "y0p":D
    move/from16 v56, v5

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-wide/from16 v58, v14

    mul-double v56, v56, v58

    move/from16 v58, v6

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v60, v16

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move/from16 v58, v7

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    div-double v56, v56, v58

    move-wide/from16 v22, v56

    .line 633
    .local v22, "x1p":D
    move/from16 v56, v5

    move/from16 v0, v56

    neg-float v0, v0

    move/from16 v56, v0

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-wide/from16 v58, v16

    mul-double v56, v56, v58

    move/from16 v58, v6

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v60, v14

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move/from16 v58, v8

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    div-double v56, v56, v58

    move-wide/from16 v24, v56

    .line 636
    .local v24, "y1p":D
    move-wide/from16 v56, v18

    move-wide/from16 v58, v22

    sub-double v56, v56, v58

    move-wide/from16 v26, v56

    .line 637
    .local v26, "dx":D
    move-wide/from16 v56, v20

    move-wide/from16 v58, v24

    sub-double v56, v56, v58

    move-wide/from16 v28, v56

    .line 638
    .local v28, "dy":D
    move-wide/from16 v56, v18

    move-wide/from16 v58, v22

    add-double v56, v56, v58

    const-wide/high16 v58, 0x4000000000000000L    # 2.0

    div-double v56, v56, v58

    move-wide/from16 v30, v56

    .line 639
    .local v30, "xm":D
    move-wide/from16 v56, v20

    move-wide/from16 v58, v24

    add-double v56, v56, v58

    const-wide/high16 v58, 0x4000000000000000L    # 2.0

    div-double v56, v56, v58

    move-wide/from16 v32, v56

    .line 641
    .local v32, "ym":D
    move-wide/from16 v56, v26

    move-wide/from16 v58, v26

    mul-double v56, v56, v58

    move-wide/from16 v58, v28

    move-wide/from16 v60, v28

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v34, v56

    .line 642
    .local v34, "dsq":D
    move-wide/from16 v56, v34

    const-wide/16 v58, 0x0

    cmpl-double v56, v56, v58

    if-nez v56, :cond_0

    .line 643
    const-string/jumbo v56, "PathParser"

    const-string/jumbo v57, " Points are coincident"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v56

    .line 644
    .line 687
    :goto_0
    return-void

    .line 646
    :cond_0
    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v58, v34

    div-double v56, v56, v58

    const-wide/high16 v58, 0x3fd0000000000000L    # 0.25

    sub-double v56, v56, v58

    move-wide/from16 v36, v56

    .line 647
    .local v36, "disc":D
    move-wide/from16 v56, v36

    const-wide/16 v58, 0x0

    cmpg-double v56, v56, v58

    if-gez v56, :cond_1

    .line 648
    const-string/jumbo v56, "PathParser"

    new-instance v57, Ljava/lang/StringBuilder;

    move-object/from16 v75, v57

    move-object/from16 v57, v75

    move-object/from16 v58, v75

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "Points are too far apart "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-wide/from16 v58, v34

    invoke-virtual/range {v57 .. v59}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v56

    .line 649
    move-wide/from16 v56, v34

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v56

    const-wide v58, 0x3ffffff583a53b8eL    # 1.99999

    div-double v56, v56, v58

    move-wide/from16 v0, v56

    double-to-float v0, v0

    move/from16 v56, v0

    move/from16 v38, v56

    .line 650
    .local v38, "adjust":F
    move-object/from16 v56, v2

    move/from16 v57, v3

    move/from16 v58, v4

    move/from16 v59, v5

    move/from16 v60, v6

    move/from16 v61, v7

    move/from16 v62, v38

    mul-float v61, v61, v62

    move/from16 v62, v8

    move/from16 v63, v38

    mul-float v62, v62, v63

    move/from16 v63, v9

    move/from16 v64, v10

    move/from16 v65, v11

    invoke-static/range {v56 .. v65}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 652
    goto :goto_0

    .line 654
    .end local v38    # "adjust":F
    :cond_1
    move-wide/from16 v56, v36

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v56

    move-wide/from16 v38, v56

    .line 655
    .local v38, "s":D
    move-wide/from16 v56, v38

    move-wide/from16 v58, v26

    mul-double v56, v56, v58

    move-wide/from16 v40, v56

    .line 656
    .local v40, "sdx":D
    move-wide/from16 v56, v38

    move-wide/from16 v58, v28

    mul-double v56, v56, v58

    move-wide/from16 v42, v56

    .line 659
    .local v42, "sdy":D
    move/from16 v56, v10

    move/from16 v57, v11

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_3

    .line 660
    move-wide/from16 v56, v30

    move-wide/from16 v58, v42

    sub-double v56, v56, v58

    move-wide/from16 v44, v56

    .line 661
    .local v44, "cx":D
    move-wide/from16 v56, v32

    move-wide/from16 v58, v40

    add-double v56, v56, v58

    move-wide/from16 v46, v56

    .line 667
    .local v46, "cy":D
    :goto_1
    move-wide/from16 v56, v20

    move-wide/from16 v58, v46

    sub-double v56, v56, v58

    move-wide/from16 v58, v18

    move-wide/from16 v60, v44

    sub-double v58, v58, v60

    invoke-static/range {v56 .. v59}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v56

    move-wide/from16 v48, v56

    .line 669
    .local v48, "eta0":D
    move-wide/from16 v56, v24

    move-wide/from16 v58, v46

    sub-double v56, v56, v58

    move-wide/from16 v58, v22

    move-wide/from16 v60, v44

    sub-double v58, v58, v60

    invoke-static/range {v56 .. v59}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v56

    move-wide/from16 v50, v56

    .line 671
    .local v50, "eta1":D
    move-wide/from16 v56, v50

    move-wide/from16 v58, v48

    sub-double v56, v56, v58

    move-wide/from16 v52, v56

    .line 672
    .local v52, "sweep":D
    move/from16 v56, v11

    move-wide/from16 v57, v52

    const-wide/16 v59, 0x0

    cmpl-double v57, v57, v59

    if-ltz v57, :cond_4

    const/16 v57, 0x1

    :goto_2
    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_2

    .line 673
    move-wide/from16 v56, v52

    const-wide/16 v58, 0x0

    cmpl-double v56, v56, v58

    if-lez v56, :cond_5

    .line 674
    move-wide/from16 v56, v52

    const-wide v58, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v56, v56, v58

    move-wide/from16 v52, v56

    .line 680
    :cond_2
    :goto_3
    move-wide/from16 v56, v44

    move/from16 v58, v7

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    move-wide/from16 v44, v56

    .line 681
    move-wide/from16 v56, v46

    move/from16 v58, v8

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    move-wide/from16 v46, v56

    .line 682
    move-wide/from16 v56, v44

    move-wide/from16 v54, v56

    .line 683
    .local v54, "tcx":D
    move-wide/from16 v56, v44

    move-wide/from16 v58, v14

    mul-double v56, v56, v58

    move-wide/from16 v58, v46

    move-wide/from16 v60, v16

    mul-double v58, v58, v60

    sub-double v56, v56, v58

    move-wide/from16 v44, v56

    .line 684
    move-wide/from16 v56, v54

    move-wide/from16 v58, v16

    mul-double v56, v56, v58

    move-wide/from16 v58, v46

    move-wide/from16 v60, v14

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v46, v56

    .line 686
    move-object/from16 v56, v2

    move-wide/from16 v57, v44

    move-wide/from16 v59, v46

    move/from16 v61, v7

    move/from16 v0, v61

    float-to-double v0, v0

    move-wide/from16 v61, v0

    move/from16 v63, v8

    move/from16 v0, v63

    float-to-double v0, v0

    move-wide/from16 v63, v0

    move/from16 v65, v3

    move/from16 v0, v65

    float-to-double v0, v0

    move-wide/from16 v65, v0

    move/from16 v67, v4

    move/from16 v0, v67

    float-to-double v0, v0

    move-wide/from16 v67, v0

    move-wide/from16 v69, v12

    move-wide/from16 v71, v48

    move-wide/from16 v73, v52

    invoke-static/range {v56 .. v74}, Landroidx/core/graphics/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    .line 687
    goto/16 :goto_0

    .line 663
    .end local v44    # "cx":D
    .end local v46    # "cy":D
    .end local v48    # "eta0":D
    .end local v50    # "eta1":D
    .end local v52    # "sweep":D
    .end local v54    # "tcx":D
    :cond_3
    move-wide/from16 v56, v30

    move-wide/from16 v58, v42

    add-double v56, v56, v58

    move-wide/from16 v44, v56

    .line 664
    .restart local v44    # "cx":D
    move-wide/from16 v56, v32

    move-wide/from16 v58, v40

    sub-double v56, v56, v58

    move-wide/from16 v46, v56

    .restart local v46    # "cy":D
    goto/16 :goto_1

    .line 672
    .restart local v48    # "eta0":D
    .restart local v50    # "eta1":D
    .restart local v52    # "sweep":D
    :cond_4
    const/16 v57, 0x0

    goto/16 :goto_2

    .line 676
    :cond_5
    move-wide/from16 v56, v52

    const-wide v58, 0x401921fb54442d18L    # 6.283185307179586

    add-double v56, v56, v58

    move-wide/from16 v52, v56

    goto/16 :goto_3
.end method

.method public static nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .locals 11

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "node":[Landroidx/core/graphics/PathParser$PathDataNode;
    move-object v1, p1

    .local v1, "path":Landroid/graphics/Path;
    const/4 v5, 0x6

    new-array v5, v5, [F

    move-object v2, v5

    .line 338
    .local v2, "current":[F
    const/16 v5, 0x6d

    move v3, v5

    .line 339
    .local v3, "previousCommand":C
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 340
    move-object v5, v1

    move-object v6, v2

    move v7, v3

    move-object v8, v0

    move v9, v4

    aget-object v8, v8, v9

    iget-char v8, v8, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    move-object v9, v0

    move v10, v4

    aget-object v9, v9, v10

    iget-object v9, v9, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/graphics/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    .line 341
    move-object v5, v0

    move v6, v4

    aget-object v5, v5, v6

    iget-char v5, v5, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    move v3, v5

    .line 339
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 343
    :cond_0
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V
    .locals 10

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/PathParser$PathDataNode;
    move-object v1, p1

    .local v1, "nodeFrom":Landroidx/core/graphics/PathParser$PathDataNode;
    move-object v2, p2

    .local v2, "nodeTo":Landroidx/core/graphics/PathParser$PathDataNode;
    move v3, p3

    .local v3, "fraction":F
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v1

    iget-object v6, v6, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 357
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    move v6, v4

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    move v8, v4

    aget v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v3

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    move-object v8, v2

    iget-object v8, v8, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    move v9, v4

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 356
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method
