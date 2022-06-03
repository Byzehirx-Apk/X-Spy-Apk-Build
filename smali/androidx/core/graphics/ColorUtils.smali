.class public final Landroidx/core/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[D>;"
        }
    .end annotation
.end field

.field private static final XYZ_EPSILON:D = 0.008856

.field private static final XYZ_KAPPA:D = 903.3

.field private static final XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/ColorUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor([F)I
    .locals 15
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "hsl":[F
    move-object v11, v0

    const/4 v12, 0x0

    aget v11, v11, v12

    move v1, v11

    .line 307
    .local v1, "h":F
    move-object v11, v0

    const/4 v12, 0x1

    aget v11, v11, v12

    move v2, v11

    .line 308
    .local v2, "s":F
    move-object v11, v0

    const/4 v12, 0x2

    aget v11, v11, v12

    move v3, v11

    .line 310
    .local v3, "l":F
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40000000    # 2.0f

    move v13, v3

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    sub-float/2addr v11, v12

    move v12, v2

    mul-float/2addr v11, v12

    move v4, v11

    .line 311
    .local v4, "c":F
    move v11, v3

    const/high16 v12, 0x3f000000    # 0.5f

    move v13, v4

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    move v5, v11

    .line 312
    .local v5, "m":F
    move v11, v4

    const/high16 v12, 0x3f800000    # 1.0f

    move v13, v1

    const/high16 v14, 0x42700000    # 60.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    rem-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    move v6, v11

    .line 314
    .local v6, "x":F
    move v11, v1

    float-to-int v11, v11

    const/16 v12, 0x3c

    div-int/lit8 v11, v11, 0x3c

    move v7, v11

    .line 316
    .local v7, "hueSegment":I
    const/4 v11, 0x0

    move v8, v11

    .local v8, "r":I
    const/4 v11, 0x0

    move v9, v11

    .local v9, "g":I
    const/4 v11, 0x0

    move v10, v11

    .line 318
    .local v10, "b":I
    move v11, v7

    packed-switch v11, :pswitch_data_0

    .line 352
    :goto_0
    move v11, v8

    const/4 v12, 0x0

    const/16 v13, 0xff

    invoke-static {v11, v12, v13}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v11

    move v8, v11

    .line 353
    move v11, v9

    const/4 v12, 0x0

    const/16 v13, 0xff

    invoke-static {v11, v12, v13}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v11

    move v9, v11

    .line 354
    move v11, v10

    const/4 v12, 0x0

    const/16 v13, 0xff

    invoke-static {v11, v12, v13}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v11

    move v10, v11

    .line 356
    move v11, v8

    move v12, v9

    move v13, v10

    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    move v0, v11

    .end local v0    # "hsl":[F
    return v0

    .line 320
    .restart local v0    # "hsl":[F
    :pswitch_0
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 321
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 322
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    .line 323
    goto :goto_0

    .line 325
    :pswitch_1
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 326
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 327
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    .line 328
    goto :goto_0

    .line 330
    :pswitch_2
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 331
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 332
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    .line 333
    goto/16 :goto_0

    .line 335
    :pswitch_3
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 336
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 337
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    .line 338
    goto/16 :goto_0

    .line 340
    :pswitch_4
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 341
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 342
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    .line 343
    goto/16 :goto_0

    .line 346
    :pswitch_5
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 347
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 348
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    goto/16 :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static LABToColor(DDD)I
    .locals 16
    .param p0    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 570
    move-wide/from16 v1, p0

    .local v1, "l":D
    move-wide/from16 v3, p2

    .local v3, "a":D
    move-wide/from16 v5, p4

    .local v5, "b":D
    invoke-static {}, Landroidx/core/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v8

    move-object v7, v8

    .line 571
    .local v7, "result":[D
    move-wide v8, v1

    move-wide v10, v3

    move-wide v12, v5

    move-object v14, v7

    invoke-static/range {v8 .. v14}, Landroidx/core/graphics/ColorUtils;->LABToXYZ(DDD[D)V

    .line 572
    move-object v8, v7

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    move-object v10, v7

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    move-object v12, v7

    const/4 v13, 0x2

    aget-wide v12, v12, v13

    invoke-static/range {v8 .. v13}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v8

    move v1, v8

    .end local v1    # "l":D
    return v1
.end method

.method public static LABToXYZ(DDD[D)V
    .locals 28
    .param p0    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p6    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 513
    move-wide/from16 v1, p0

    .local v1, "l":D
    move-wide/from16 v3, p2

    .local v3, "a":D
    move-wide/from16 v5, p4

    .local v5, "b":D
    move-object/from16 v7, p6

    .local v7, "outXyz":[D
    move-wide/from16 v22, v1

    const-wide/high16 v24, 0x4030000000000000L    # 16.0

    add-double v22, v22, v24

    const-wide/high16 v24, 0x405d000000000000L    # 116.0

    div-double v22, v22, v24

    move-wide/from16 v8, v22

    .line 514
    .local v8, "fy":D
    move-wide/from16 v22, v3

    const-wide v24, 0x407f400000000000L    # 500.0

    div-double v22, v22, v24

    move-wide/from16 v24, v8

    add-double v22, v22, v24

    move-wide/from16 v10, v22

    .line 515
    .local v10, "fx":D
    move-wide/from16 v22, v8

    move-wide/from16 v24, v5

    const-wide/high16 v26, 0x4069000000000000L    # 200.0

    div-double v24, v24, v26

    sub-double v22, v22, v24

    move-wide/from16 v12, v22

    .line 517
    .local v12, "fz":D
    move-wide/from16 v22, v10

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    move-wide/from16 v14, v22

    .line 518
    .local v14, "tmp":D
    move-wide/from16 v22, v14

    const-wide v24, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v22, v22, v24

    if-lez v22, :cond_0

    move-wide/from16 v22, v14

    :goto_0
    move-wide/from16 v16, v22

    .line 519
    .local v16, "xr":D
    move-wide/from16 v22, v1

    const-wide v24, 0x401fff9da4c11507L    # 7.9996247999999985

    cmpl-double v22, v22, v24

    if-lez v22, :cond_1

    move-wide/from16 v22, v8

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    :goto_1
    move-wide/from16 v18, v22

    .line 521
    .local v18, "yr":D
    move-wide/from16 v22, v12

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    move-wide/from16 v14, v22

    .line 522
    move-wide/from16 v22, v14

    const-wide v24, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v22, v22, v24

    if-lez v22, :cond_2

    move-wide/from16 v22, v14

    :goto_2
    move-wide/from16 v20, v22

    .line 524
    .local v20, "zr":D
    move-object/from16 v22, v7

    const/16 v23, 0x0

    move-wide/from16 v24, v16

    const-wide v26, 0x4057c3020c49ba5eL    # 95.047

    mul-double v24, v24, v26

    aput-wide v24, v22, v23

    .line 525
    move-object/from16 v22, v7

    const/16 v23, 0x1

    move-wide/from16 v24, v18

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    mul-double v24, v24, v26

    aput-wide v24, v22, v23

    .line 526
    move-object/from16 v22, v7

    const/16 v23, 0x2

    move-wide/from16 v24, v20

    const-wide v26, 0x405b3883126e978dL    # 108.883

    mul-double v24, v24, v26

    aput-wide v24, v22, v23

    .line 527
    return-void

    .line 518
    .end local v16    # "xr":D
    .end local v18    # "yr":D
    .end local v20    # "zr":D
    :cond_0
    const-wide/high16 v22, 0x405d000000000000L    # 116.0

    move-wide/from16 v24, v10

    mul-double v22, v22, v24

    const-wide/high16 v24, 0x4030000000000000L    # 16.0

    sub-double v22, v22, v24

    const-wide v24, 0x408c3a6666666666L    # 903.3

    div-double v22, v22, v24

    goto :goto_0

    .line 519
    .restart local v16    # "xr":D
    :cond_1
    move-wide/from16 v22, v1

    const-wide v24, 0x408c3a6666666666L    # 903.3

    div-double v22, v22, v24

    goto :goto_1

    .line 522
    .restart local v18    # "yr":D
    :cond_2
    const-wide/high16 v22, 0x405d000000000000L    # 116.0

    move-wide/from16 v24, v12

    mul-double v22, v22, v24

    const-wide/high16 v24, 0x4030000000000000L    # 16.0

    sub-double v22, v22, v24

    const-wide v24, 0x408c3a6666666666L    # 903.3

    div-double v22, v22, v24

    goto :goto_2
.end method

.method public static RGBToHSL(III[F)V
    .locals 19
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 241
    move/from16 v0, p0

    .local v0, "r":I
    move/from16 v1, p1

    .local v1, "g":I
    move/from16 v2, p2

    .local v2, "b":I
    move-object/from16 v3, p3

    .local v3, "outHsl":[F
    move v13, v0

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v13, v14

    move v4, v13

    .line 242
    .local v4, "rf":F
    move v13, v1

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v13, v14

    move v5, v13

    .line 243
    .local v5, "gf":F
    move v13, v2

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v13, v14

    move v6, v13

    .line 245
    .local v6, "bf":F
    move v13, v4

    move v14, v5

    move v15, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    move v7, v13

    .line 246
    .local v7, "max":F
    move v13, v4

    move v14, v5

    move v15, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    move v8, v13

    .line 247
    .local v8, "min":F
    move v13, v7

    move v14, v8

    sub-float/2addr v13, v14

    move v9, v13

    .line 250
    .local v9, "deltaMaxMin":F
    move v13, v7

    move v14, v8

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move v12, v13

    .line 252
    .local v12, "l":F
    move v13, v7

    move v14, v8

    cmpl-float v13, v13, v14

    if-nez v13, :cond_1

    .line 254
    const/4 v13, 0x0

    move/from16 v18, v13

    move/from16 v13, v18

    move/from16 v14, v18

    move v11, v14

    .local v11, "s":F
    move v10, v13

    .line 267
    .local v10, "h":F
    :goto_0
    move v13, v10

    const/high16 v14, 0x42700000    # 60.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x43b40000    # 360.0f

    rem-float/2addr v13, v14

    move v10, v13

    .line 268
    move v13, v10

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    .line 269
    move v13, v10

    const/high16 v14, 0x43b40000    # 360.0f

    add-float/2addr v13, v14

    move v10, v13

    .line 272
    :cond_0
    move-object v13, v3

    const/4 v14, 0x0

    move v15, v10

    const/16 v16, 0x0

    const/high16 v17, 0x43b40000    # 360.0f

    invoke-static/range {v15 .. v17}, Landroidx/core/graphics/ColorUtils;->constrain(FFF)F

    move-result v15

    aput v15, v13, v14

    .line 273
    move-object v13, v3

    const/4 v14, 0x1

    move v15, v11

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v15 .. v17}, Landroidx/core/graphics/ColorUtils;->constrain(FFF)F

    move-result v15

    aput v15, v13, v14

    .line 274
    move-object v13, v3

    const/4 v14, 0x2

    move v15, v12

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v15 .. v17}, Landroidx/core/graphics/ColorUtils;->constrain(FFF)F

    move-result v15

    aput v15, v13, v14

    .line 275
    return-void

    .line 256
    .end local v10    # "h":F
    .end local v11    # "s":F
    :cond_1
    move v13, v7

    move v14, v4

    cmpl-float v13, v13, v14

    if-nez v13, :cond_2

    .line 257
    move v13, v5

    move v14, v6

    sub-float/2addr v13, v14

    move v14, v9

    div-float/2addr v13, v14

    const/high16 v14, 0x40c00000    # 6.0f

    rem-float/2addr v13, v14

    move v10, v13

    .line 264
    .restart local v10    # "h":F
    :goto_1
    move v13, v9

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x40000000    # 2.0f

    move/from16 v16, v12

    mul-float v15, v15, v16

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float/2addr v14, v15

    div-float/2addr v13, v14

    move v11, v13

    .restart local v11    # "s":F
    goto :goto_0

    .line 258
    .end local v10    # "h":F
    .end local v11    # "s":F
    :cond_2
    move v13, v7

    move v14, v5

    cmpl-float v13, v13, v14

    if-nez v13, :cond_3

    .line 259
    move v13, v6

    move v14, v4

    sub-float/2addr v13, v14

    move v14, v9

    div-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    add-float/2addr v13, v14

    move v10, v13

    .restart local v10    # "h":F
    goto :goto_1

    .line 261
    .end local v10    # "h":F
    :cond_3
    move v13, v4

    move v14, v5

    sub-float/2addr v13, v14

    move v14, v9

    div-float/2addr v13, v14

    const/high16 v14, 0x40800000    # 4.0f

    add-float/2addr v13, v14

    move v10, v13

    .restart local v10    # "h":F
    goto :goto_1
.end method

.method public static RGBToLAB(III[D)V
    .locals 11
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 399
    move v0, p0

    .local v0, "r":I
    move v1, p1

    .local v1, "g":I
    move v2, p2

    .local v2, "b":I
    move-object v3, p3

    .local v3, "outLab":[D
    move v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Landroidx/core/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 401
    move-object v4, v3

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object v6, v3

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object v8, v3

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object v10, v3

    invoke-static/range {v4 .. v10}, Landroidx/core/graphics/ColorUtils;->XYZToLAB(DDD[D)V

    .line 403
    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .locals 21
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 444
    move/from16 v0, p0

    .local v0, "r":I
    move/from16 v1, p1

    .local v1, "g":I
    move/from16 v2, p2

    .local v2, "b":I
    move-object/from16 v3, p3

    .local v3, "outXyz":[D
    move-object v10, v3

    array-length v10, v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    .line 445
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const-string/jumbo v12, "outXyz must have a length of 3."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 448
    :cond_0
    move v10, v0

    int-to-double v10, v10

    const-wide v12, 0x406fe00000000000L    # 255.0

    div-double/2addr v10, v12

    move-wide v4, v10

    .line 449
    .local v4, "sr":D
    move-wide v10, v4

    const-wide v12, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    move-wide v10, v4

    const-wide v12, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v10, v12

    :goto_0
    move-wide v4, v10

    .line 450
    move v10, v1

    int-to-double v10, v10

    const-wide v12, 0x406fe00000000000L    # 255.0

    div-double/2addr v10, v12

    move-wide v6, v10

    .line 451
    .local v6, "sg":D
    move-wide v10, v6

    const-wide v12, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v10, v10, v12

    if-gez v10, :cond_2

    move-wide v10, v6

    const-wide v12, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v10, v12

    :goto_1
    move-wide v6, v10

    .line 452
    move v10, v2

    int-to-double v10, v10

    const-wide v12, 0x406fe00000000000L    # 255.0

    div-double/2addr v10, v12

    move-wide v8, v10

    .line 453
    .local v8, "sb":D
    move-wide v10, v8

    const-wide v12, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v10, v10, v12

    if-gez v10, :cond_3

    move-wide v10, v8

    const-wide v12, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v10, v12

    :goto_2
    move-wide v8, v10

    .line 455
    move-object v10, v3

    const/4 v11, 0x0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    move-wide v14, v4

    const-wide v16, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double v14, v14, v16

    move-wide/from16 v16, v6

    const-wide v18, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    const-wide v18, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double v16, v16, v18

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 456
    move-object v10, v3

    const/4 v11, 0x1

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    move-wide v14, v4

    const-wide v16, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double v14, v14, v16

    move-wide/from16 v16, v6

    const-wide v18, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    const-wide v18, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double v16, v16, v18

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 457
    move-object v10, v3

    const/4 v11, 0x2

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    move-wide v14, v4

    const-wide v16, 0x3f93c36113404ea5L    # 0.0193

    mul-double v14, v14, v16

    move-wide/from16 v16, v6

    const-wide v18, 0x3fbe83e425aee632L    # 0.1192

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    const-wide v18, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double v16, v16, v18

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 458
    return-void

    .line 449
    .end local v6    # "sg":D
    .end local v8    # "sb":D
    :cond_1
    move-wide v10, v4

    const-wide v12, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v10, v12

    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v10, v12

    const-wide v12, 0x4003333333333333L    # 2.4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    goto/16 :goto_0

    .line 451
    .restart local v6    # "sg":D
    :cond_2
    move-wide v10, v6

    const-wide v12, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v10, v12

    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v10, v12

    const-wide v12, 0x4003333333333333L    # 2.4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    goto/16 :goto_1

    .line 453
    .restart local v8    # "sb":D
    :cond_3
    move-wide v10, v8

    const-wide v12, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v10, v12

    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v10, v12

    const-wide v12, 0x4003333333333333L    # 2.4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    goto/16 :goto_2
.end method

.method public static XYZToColor(DDD)I
    .locals 18
    .param p0    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 95.047
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 108.883
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 544
    move-wide/from16 v0, p0

    .local v0, "x":D
    move-wide/from16 v2, p2

    .local v2, "y":D
    move-wide/from16 v4, p4

    .local v4, "z":D
    move-wide v12, v0

    const-wide v14, 0x4009ecbfb15b573fL    # 3.2406

    mul-double/2addr v12, v14

    move-wide v14, v2

    const-wide v16, -0x400767a0f9096bbaL    # -1.5372

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v14, v4

    const-wide v16, -0x402016f0068db8bbL    # -0.4986

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    move-wide v6, v12

    .line 545
    .local v6, "r":D
    move-wide v12, v0

    const-wide v14, -0x4010fec56d5cfaadL    # -0.9689

    mul-double/2addr v12, v14

    move-wide v14, v2

    const-wide v16, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v14, v4

    const-wide v16, 0x3fa53f7ced916873L    # 0.0415

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    move-wide v8, v12

    .line 546
    .local v8, "g":D
    move-wide v12, v0

    const-wide v14, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double/2addr v12, v14

    move-wide v14, v2

    const-wide v16, -0x4035e353f7ced917L    # -0.204

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v14, v4

    const-wide v16, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    move-wide v10, v12

    .line 548
    .local v10, "b":D
    move-wide v12, v6

    const-wide v14, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v12, v12, v14

    if-lez v12, :cond_0

    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    move-wide v14, v6

    const-wide v16, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    const-wide v14, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v12, v14

    :goto_0
    move-wide v6, v12

    .line 549
    move-wide v12, v8

    const-wide v14, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v12, v12, v14

    if-lez v12, :cond_1

    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    move-wide v14, v8

    const-wide v16, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    const-wide v14, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v12, v14

    :goto_1
    move-wide v8, v12

    .line 550
    move-wide v12, v10

    const-wide v14, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2

    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    move-wide v14, v10

    const-wide v16, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    const-wide v14, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v12, v14

    :goto_2
    move-wide v10, v12

    .line 552
    move-wide v12, v6

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v14

    .line 553
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v12, v12

    const/4 v13, 0x0

    const/16 v14, 0xff

    invoke-static {v12, v13, v14}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v12

    move-wide v13, v8

    const-wide v15, 0x406fe00000000000L    # 255.0

    mul-double/2addr v13, v15

    .line 554
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v13, v13

    const/4 v14, 0x0

    const/16 v15, 0xff

    invoke-static {v13, v14, v15}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v13

    move-wide v14, v10

    const-wide v16, 0x406fe00000000000L    # 255.0

    mul-double v14, v14, v16

    .line 555
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    const/4 v15, 0x0

    const/16 v16, 0xff

    invoke-static/range {v14 .. v16}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v14

    .line 552
    invoke-static {v12, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    move v0, v12

    .end local v0    # "x":D
    return v0

    .line 548
    .restart local v0    # "x":D
    :cond_0
    const-wide v12, 0x4029d70a3d70a3d7L    # 12.92

    move-wide v14, v6

    mul-double/2addr v12, v14

    goto/16 :goto_0

    .line 549
    :cond_1
    const-wide v12, 0x4029d70a3d70a3d7L    # 12.92

    move-wide v14, v8

    mul-double/2addr v12, v14

    goto :goto_1

    .line 550
    :cond_2
    const-wide v12, 0x4029d70a3d70a3d7L    # 12.92

    move-wide v14, v10

    mul-double/2addr v12, v14

    goto :goto_2
.end method

.method public static XYZToLAB(DDD[D)V
    .locals 18
    .param p0    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 95.047
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 108.883
        .end annotation
    .end param
    .param p6    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 481
    move-wide/from16 v1, p0

    .local v1, "x":D
    move-wide/from16 v3, p2

    .local v3, "y":D
    move-wide/from16 v5, p4

    .local v5, "z":D
    move-object/from16 v7, p6

    .local v7, "outLab":[D
    move-object v8, v7

    array-length v8, v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    .line 482
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const-string/jumbo v10, "outLab must have a length of 3."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 484
    :cond_0
    move-wide v8, v1

    const-wide v10, 0x4057c3020c49ba5eL    # 95.047

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Landroidx/core/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide v8

    move-wide v1, v8

    .line 485
    move-wide v8, v3

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Landroidx/core/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide v8

    move-wide v3, v8

    .line 486
    move-wide v8, v5

    const-wide v10, 0x405b3883126e978dL    # 108.883

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Landroidx/core/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide v8

    move-wide v5, v8

    .line 487
    move-object v8, v7

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x405d000000000000L    # 116.0

    move-wide v14, v3

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4030000000000000L    # 16.0

    sub-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 488
    move-object v8, v7

    const/4 v9, 0x1

    const-wide v10, 0x407f400000000000L    # 500.0

    move-wide v12, v1

    move-wide v14, v3

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 489
    move-object v8, v7

    const/4 v9, 0x2

    const-wide/high16 v10, 0x4069000000000000L    # 200.0

    move-wide v12, v3

    move-wide v14, v5

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 490
    return-void
.end method

.method public static blendARGB(IIF)I
    .locals 12
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 611
    move v0, p0

    .local v0, "color1":I
    move v1, p1

    .local v1, "color2":I
    move v2, p2

    .local v2, "ratio":F
    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v2

    sub-float/2addr v8, v9

    move v3, v8

    .line 612
    .local v3, "inverseRatio":F
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v4, v8

    .line 613
    .local v4, "a":F
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v5, v8

    .line 614
    .local v5, "r":F
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v6, v8

    .line 615
    .local v6, "g":F
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v7, v8

    .line 616
    .local v7, "b":F
    move v8, v4

    float-to-int v8, v8

    move v9, v5

    float-to-int v9, v9

    move v10, v6

    float-to-int v10, v10

    move v11, v7

    float-to-int v11, v11

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move v0, v8

    .end local v0    # "color1":I
    return v0
.end method

.method public static blendHSL([F[FF[F)V
    .locals 11
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "hsl1":[F
    move-object v1, p1

    .local v1, "hsl2":[F
    move v2, p2

    .local v2, "ratio":F
    move-object v3, p3

    .local v3, "outResult":[F
    move-object v5, v3

    array-length v5, v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 634
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "result must have a length of 3."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 636
    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    move v6, v2

    sub-float/2addr v5, v6

    move v4, v5

    .line 638
    .local v4, "inverseRatio":F
    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x0

    aget v8, v8, v9

    move v9, v2

    invoke-static {v7, v8, v9}, Landroidx/core/graphics/ColorUtils;->circularInterpolate(FFF)F

    move-result v7

    aput v7, v5, v6

    .line 639
    move-object v5, v3

    const/4 v6, 0x1

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move v8, v4

    mul-float/2addr v7, v8

    move-object v8, v1

    const/4 v9, 0x1

    aget v8, v8, v9

    move v9, v2

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 640
    move-object v5, v3

    const/4 v6, 0x2

    move-object v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    move v8, v4

    mul-float/2addr v7, v8

    move-object v8, v1

    const/4 v9, 0x2

    aget v8, v8, v9

    move v9, v2

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 641
    return-void
.end method

.method public static blendLAB([D[DD[D)V
    .locals 18
    .param p0    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p4    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 656
    move-object/from16 v1, p0

    .local v1, "lab1":[D
    move-object/from16 v2, p1

    .local v2, "lab2":[D
    move-wide/from16 v3, p2

    .local v3, "ratio":D
    move-object/from16 v5, p4

    .local v5, "outResult":[D
    move-object v8, v5

    array-length v8, v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    .line 657
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const-string/jumbo v10, "outResult must have a length of 3."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 659
    :cond_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide v10, v3

    sub-double/2addr v8, v10

    move-wide v6, v8

    .line 660
    .local v6, "inverseRatio":D
    move-object v8, v5

    const/4 v9, 0x0

    move-object v10, v1

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    move-wide v12, v6

    mul-double/2addr v10, v12

    move-object v12, v2

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    move-wide v14, v3

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 661
    move-object v8, v5

    const/4 v9, 0x1

    move-object v10, v1

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    move-wide v12, v6

    mul-double/2addr v10, v12

    move-object v12, v2

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    move-wide v14, v3

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 662
    move-object v8, v5

    const/4 v9, 0x2

    move-object v10, v1

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    move-wide v12, v6

    mul-double/2addr v10, v12

    move-object v12, v2

    const/4 v13, 0x2

    aget-wide v12, v12, v13

    move-wide v14, v3

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 663
    return-void
.end method

.method public static calculateContrast(II)D
    .locals 13
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 159
    move v0, p0

    .local v0, "foreground":I
    move v1, p1

    .local v1, "background":I
    move v6, v1

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_0

    .line 160
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "background can not be translucent: #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    .line 161
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 163
    :cond_0
    move v6, v0

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-ge v6, v7, :cond_1

    .line 165
    move v6, v0

    move v7, v1

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v6

    move v0, v6

    .line 168
    :cond_1
    move v6, v0

    invoke-static {v6}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    add-double/2addr v6, v8

    move-wide v2, v6

    .line 169
    .local v2, "luminance1":D
    move v6, v1

    invoke-static {v6}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 172
    .local v4, "luminance2":D
    move-wide v6, v2

    move-wide v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v8, v2

    move-wide v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    move-wide v0, v6

    .end local v0    # "foreground":I
    return-wide v0
.end method

.method public static calculateLuminance(I)D
    .locals 6
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 145
    move v0, p0

    .local v0, "color":I
    invoke-static {}, Landroidx/core/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v2

    move-object v1, v2

    .line 146
    .local v1, "result":[D
    move v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->colorToXYZ(I[D)V

    .line 148
    move-object v2, v1

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    move-wide v0, v2

    .end local v0    # "color":I
    return-wide v0
.end method

.method public static calculateMinimumAlpha(IIF)I
    .locals 15
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 187
    move v0, p0

    .local v0, "foreground":I
    move/from16 v1, p1

    .local v1, "background":I
    move/from16 v2, p2

    .local v2, "minContrastRatio":F
    move v10, v1

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    const/16 v11, 0xff

    if-eq v10, v11, :cond_0

    .line 188
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "background can not be translucent: #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v1

    .line 189
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 193
    :cond_0
    move v10, v0

    const/16 v11, 0xff

    invoke-static {v10, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    move v3, v10

    .line 194
    .local v3, "testForeground":I
    move v10, v3

    move v11, v1

    invoke-static {v10, v11}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v10

    move-wide v4, v10

    .line 195
    .local v4, "testRatio":D
    move-wide v10, v4

    move v12, v2

    float-to-double v12, v12

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    .line 197
    const/4 v10, -0x1

    move v0, v10

    .line 222
    .end local v0    # "foreground":I
    :goto_0
    return v0

    .line 201
    .restart local v0    # "foreground":I
    :cond_1
    const/4 v10, 0x0

    move v6, v10

    .line 202
    .local v6, "numIterations":I
    const/4 v10, 0x0

    move v7, v10

    .line 203
    .local v7, "minAlpha":I
    const/16 v10, 0xff

    move v8, v10

    .line 205
    .local v8, "maxAlpha":I
    :goto_1
    move v10, v6

    const/16 v11, 0xa

    if-gt v10, v11, :cond_3

    move v10, v8

    move v11, v7

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 207
    move v10, v7

    move v11, v8

    add-int/2addr v10, v11

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    move v9, v10

    .line 209
    .local v9, "testAlpha":I
    move v10, v0

    move v11, v9

    invoke-static {v10, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    move v3, v10

    .line 210
    move v10, v3

    move v11, v1

    invoke-static {v10, v11}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v10

    move-wide v4, v10

    .line 212
    move-wide v10, v4

    move v12, v2

    float-to-double v12, v12

    cmpg-double v10, v10, v12

    if-gez v10, :cond_2

    .line 213
    move v10, v9

    move v7, v10

    .line 218
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 219
    goto :goto_1

    .line 215
    :cond_2
    move v10, v9

    move v8, v10

    goto :goto_2

    .line 222
    .end local v9    # "testAlpha":I
    :cond_3
    move v10, v8

    move v0, v10

    goto :goto_0
.end method

.method static circularInterpolate(FFF)F
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 667
    move v0, p0

    .local v0, "a":F
    move v1, p1

    .local v1, "b":F
    move v2, p2

    .local v2, "f":F
    move v3, v1

    move v4, v0

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 668
    move v3, v1

    move v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 669
    move v3, v0

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v3, v4

    move v0, v3

    .line 674
    :cond_0
    :goto_0
    move v3, v0

    move v4, v1

    move v5, v0

    sub-float/2addr v4, v5

    move v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v3, v4

    move v0, v3

    .end local v0    # "a":F
    return v0

    .line 671
    .restart local v0    # "a":F
    :cond_1
    move v3, v1

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v3, v4

    move v1, v3

    goto :goto_0
.end method

.method public static colorToHSL(I[F)V
    .locals 6
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 289
    move v0, p0

    .local v0, "color":I
    move-object v1, p1

    .local v1, "outHsl":[F
    move v2, v0

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    move v3, v0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    move v4, v0

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    move-object v5, v1

    invoke-static {v2, v3, v4, v5}, Landroidx/core/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 290
    return-void
.end method

.method public static colorToLAB(I[D)V
    .locals 6
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 378
    move v0, p0

    .local v0, "color":I
    move-object v1, p1

    .local v1, "outLab":[D
    move v2, v0

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    move v3, v0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    move v4, v0

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    move-object v5, v1

    invoke-static {v2, v3, v4, v5}, Landroidx/core/graphics/ColorUtils;->RGBToLAB(III[D)V

    .line 379
    return-void
.end method

.method public static colorToXYZ(I[D)V
    .locals 6
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 421
    move v0, p0

    .local v0, "color":I
    move-object v1, p1

    .local v1, "outXyz":[D
    move v2, v0

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    move v3, v0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    move v4, v0

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    move-object v5, v1

    invoke-static {v2, v3, v4, v5}, Landroidx/core/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 422
    return-void
.end method

.method private static compositeAlpha(II)I
    .locals 6

    .prologue
    .line 131
    move v0, p0

    .local v0, "foregroundAlpha":I
    move v1, p1

    .local v1, "backgroundAlpha":I
    const/16 v2, 0xff

    const/16 v3, 0xff

    move v4, v1

    rsub-int v3, v4, 0xff

    const/16 v4, 0xff

    move v5, v0

    rsub-int v4, v5, 0xff

    mul-int/2addr v3, v4

    const/16 v4, 0xff

    div-int/lit16 v3, v3, 0xff

    rsub-int v2, v3, 0xff

    move v0, v2

    .end local v0    # "foregroundAlpha":I
    return v0
.end method

.method public static compositeColors(II)I
    .locals 13
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 53
    move v0, p0

    .local v0, "foreground":I
    move v1, p1

    .local v1, "background":I
    move v8, v1

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    move v2, v8

    .line 54
    .local v2, "bgAlpha":I
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    move v3, v8

    .line 55
    .local v3, "fgAlpha":I
    move v8, v3

    move v9, v2

    invoke-static {v8, v9}, Landroidx/core/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v8

    move v4, v8

    .line 57
    .local v4, "a":I
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    move v9, v3

    move v10, v1

    .line 58
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v10

    move v11, v2

    move v12, v4

    .line 57
    invoke-static {v8, v9, v10, v11, v12}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v8

    move v5, v8

    .line 59
    .local v5, "r":I
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    move v9, v3

    move v10, v1

    .line 60
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    move v11, v2

    move v12, v4

    .line 59
    invoke-static {v8, v9, v10, v11, v12}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v8

    move v6, v8

    .line 61
    .local v6, "g":I
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    move v9, v3

    move v10, v1

    .line 62
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    move v11, v2

    move v12, v4

    .line 61
    invoke-static {v8, v9, v10, v11, v12}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v8

    move v7, v8

    .line 64
    .local v7, "b":I
    move v8, v4

    move v9, v5

    move v10, v6

    move v11, v7

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move v0, v8

    .end local v0    # "foreground":I
    return v0
.end method

.method public static compositeColors(Landroid/graphics/Color;Landroid/graphics/Color;)Landroid/graphics/Color;
    .locals 15
    .param p0    # Landroid/graphics/Color;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Color;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "foreground":Landroid/graphics/Color;
    move-object/from16 v1, p1

    .local v1, "background":Landroid/graphics/Color;
    move-object v9, v0

    invoke-virtual {v9}, Landroid/graphics/Color;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/Color;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 93
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Color models must match ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    .line 94
    invoke-virtual {v12}, Landroid/graphics/Color;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " vs. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    .line 95
    invoke-virtual {v12}, Landroid/graphics/Color;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 98
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v0

    .line 100
    :goto_0
    move-object v2, v9

    .line 102
    .local v2, "s":Landroid/graphics/Color;
    move-object v9, v2

    invoke-virtual {v9}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v9

    move-object v3, v9

    .line 103
    .local v3, "src":[F
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v9

    move-object v4, v9

    .line 105
    .local v4, "dst":[F
    move-object v9, v2

    invoke-virtual {v9}, Landroid/graphics/Color;->alpha()F

    move-result v9

    move v5, v9

    .line 107
    .local v5, "sa":F
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Color;->alpha()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v5

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    move v6, v9

    .line 111
    .local v6, "da":F
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Color;->getComponentCount()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v7, v9

    .line 114
    .local v7, "ai":I
    move-object v9, v4

    move v10, v7

    move v11, v5

    move v12, v6

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 117
    move-object v9, v4

    move v10, v7

    aget v9, v9, v10

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    .line 118
    move v9, v5

    move-object v10, v4

    move v11, v7

    aget v10, v10, v11

    div-float/2addr v9, v10

    move v5, v9

    .line 119
    move v9, v6

    move-object v10, v4

    move v11, v7

    aget v10, v10, v11

    div-float/2addr v9, v10

    move v6, v9

    .line 123
    :cond_1
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_1
    move v9, v8

    move v10, v7

    if-ge v9, v10, :cond_3

    .line 124
    move-object v9, v4

    move v10, v8

    move-object v11, v3

    move v12, v8

    aget v11, v11, v12

    move v12, v5

    mul-float/2addr v11, v12

    move-object v12, v4

    move v13, v8

    aget v12, v12, v13

    move v13, v6

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 123
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 98
    .end local v2    # "s":Landroid/graphics/Color;
    .end local v3    # "src":[F
    .end local v4    # "dst":[F
    .end local v5    # "sa":F
    .end local v6    # "da":F
    .end local v7    # "ai":I
    .end local v8    # "i":I
    :cond_2
    move-object v9, v0

    move-object v10, v1

    .line 100
    invoke-virtual {v10}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object v9

    goto :goto_0

    .line 127
    .restart local v2    # "s":Landroid/graphics/Color;
    .restart local v3    # "src":[F
    .restart local v4    # "dst":[F
    .restart local v5    # "sa":F
    .restart local v6    # "da":F
    .restart local v7    # "ai":I
    .restart local v8    # "i":I
    :cond_3
    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/graphics/Color;->valueOf([FLandroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object v9

    move-object v0, v9

    .end local v0    # "foreground":Landroid/graphics/Color;
    return-object v0
.end method

.method private static compositeComponent(IIIII)I
    .locals 9

    .prologue
    .line 135
    move v0, p0

    .local v0, "fgC":I
    move v1, p1

    .local v1, "fgA":I
    move v2, p2

    .local v2, "bgC":I
    move v3, p3

    .local v3, "bgA":I
    move v4, p4

    .local v4, "a":I
    move v5, v4

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 136
    .end local v0    # "fgC":I
    :goto_0
    return v0

    .restart local v0    # "fgC":I
    :cond_0
    const/16 v5, 0xff

    move v6, v0

    mul-int/2addr v5, v6

    move v6, v1

    mul-int/2addr v5, v6

    move v6, v2

    move v7, v3

    mul-int/2addr v6, v7

    const/16 v7, 0xff

    move v8, v1

    rsub-int v7, v8, 0xff

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    move v6, v4

    const/16 v7, 0xff

    mul-int/lit16 v6, v6, 0xff

    div-int/2addr v5, v6

    move v0, v5

    goto :goto_0
.end method

.method private static constrain(FFF)F
    .locals 5

    .prologue
    .line 585
    move v0, p0

    .local v0, "amount":F
    move v1, p1

    .local v1, "low":F
    move v2, p2

    .local v2, "high":F
    move v3, v0

    move v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v3, v1

    :goto_0
    move v0, v3

    .end local v0    # "amount":F
    return v0

    .restart local v0    # "amount":F
    :cond_0
    move v3, v0

    move v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method private static constrain(III)I
    .locals 5

    .prologue
    .line 589
    move v0, p0

    .local v0, "amount":I
    move v1, p1

    .local v1, "low":I
    move v2, p2

    .local v2, "high":I
    move v3, v0

    move v4, v1

    if-ge v3, v4, :cond_0

    move v3, v1

    :goto_0
    move v0, v3

    .end local v0    # "amount":I
    return v0

    .restart local v0    # "amount":I
    :cond_0
    move v3, v0

    move v4, v2

    if-le v3, v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method public static distanceEuclidean([D[D)D
    .locals 8
    .param p0    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "labX":[D
    move-object v1, p1

    .local v1, "labY":[D
    move-object v2, v0

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object v4, v1

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move-object v4, v0

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    move-object v6, v1

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 580
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    move-object v4, v0

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    move-object v6, v1

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 581
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 579
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "labX":[D
    return-wide v0
.end method

.method private static getTempDouble3Array()[D
    .locals 3

    .prologue
    .line 678
    sget-object v1, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    move-object v0, v1

    .line 679
    .local v0, "result":[D
    move-object v1, v0

    if-nez v1, :cond_0

    .line 680
    const/4 v1, 0x3

    new-array v1, v1, [D

    move-object v0, v1

    .line 681
    sget-object v1, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 683
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "result":[D
    return-object v0
.end method

.method private static pivotXyzComponent(D)D
    .locals 6

    .prologue
    .line 593
    move-wide v0, p0

    .local v0, "component":D
    move-wide v2, v0

    const-wide v4, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    move-wide v2, v0

    const-wide v4, 0x3fd5555555555555L    # 0.3333333333333333

    .line 594
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    .end local v0    # "component":D
    return-wide v0

    .restart local v0    # "component":D
    :cond_0
    const-wide v2, 0x408c3a6666666666L    # 903.3

    move-wide v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public static setAlphaComponent(II)I
    .locals 6
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 365
    move v0, p0

    .local v0, "color":I
    move v1, p1

    .local v1, "alpha":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    .line 366
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "alpha must be between 0 and 255."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 368
    :cond_1
    move v2, v0

    const v3, 0xffffff

    and-int/2addr v2, v3

    move v3, v1

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    move v0, v2

    .end local v0    # "color":I
    return v0
.end method
