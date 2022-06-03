.class public Lcom/airbnb/lottie/utils/GammaEvaluator;
.super Ljava/lang/Object;
.source "GammaEvaluator.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/GammaEvaluator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static EOCF_sRGB(F)F
    .locals 6

    .prologue
    .line 24
    move v1, p0

    .local v1, "srgb":F
    move v2, v1

    const v3, 0x3d25aee6    # 0.04045f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    move v2, v1

    const v3, 0x414eb852    # 12.92f

    div-float/2addr v2, v3

    :goto_0
    move v1, v2

    .end local v1    # "srgb":F
    return v1

    .restart local v1    # "srgb":F
    :cond_0
    move v2, v1

    const v3, 0x3d6147ae    # 0.055f

    add-float/2addr v2, v3

    const v3, 0x3f870a3d    # 1.055f

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0
.end method

.method private static OECF_sRGB(F)F
    .locals 6

    .prologue
    .line 16
    move v1, p0

    .local v1, "linear":F
    move v2, v1

    const v3, 0x3b4d2e1c    # 0.0031308f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    move v2, v1

    const v3, 0x414eb852    # 12.92f

    mul-float/2addr v2, v3

    :goto_0
    move v1, v2

    .end local v1    # "linear":F
    return v1

    .restart local v1    # "linear":F
    :cond_0
    move v2, v1

    float-to-double v2, v2

    const-wide v4, 0x3fdaaaaaa0000000L    # 0.4166666567325592

    .line 17
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x3ff0e147a0000000L    # 1.0549999475479126

    mul-double/2addr v2, v4

    const-wide v4, 0x3fac28f5c0000000L    # 0.054999999701976776

    sub-double/2addr v2, v4

    double-to-float v2, v2

    goto :goto_0
.end method

.method public static evaluate(FII)I
    .locals 19

    .prologue
    .line 28
    move/from16 v0, p0

    .local v0, "fraction":F
    move/from16 v1, p1

    .local v1, "startInt":I
    move/from16 v2, p2

    .local v2, "endInt":I
    move v15, v1

    const/16 v16, 0x18

    shr-int/lit8 v15, v15, 0x18

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    move v3, v15

    .line 29
    .local v3, "startA":F
    move v15, v1

    const/16 v16, 0x10

    shr-int/lit8 v15, v15, 0x10

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    move v4, v15

    .line 30
    .local v4, "startR":F
    move v15, v1

    const/16 v16, 0x8

    shr-int/lit8 v15, v15, 0x8

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    move v5, v15

    .line 31
    .local v5, "startG":F
    move v15, v1

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    move v6, v15

    .line 33
    .local v6, "startB":F
    move v15, v2

    const/16 v16, 0x18

    shr-int/lit8 v15, v15, 0x18

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    move v7, v15

    .line 34
    .local v7, "endA":F
    move v15, v2

    const/16 v16, 0x10

    shr-int/lit8 v15, v15, 0x10

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    move v8, v15

    .line 35
    .local v8, "endR":F
    move v15, v2

    const/16 v16, 0x8

    shr-int/lit8 v15, v15, 0x8

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    move v9, v15

    .line 36
    .local v9, "endG":F
    move v15, v2

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    move v10, v15

    .line 39
    .local v10, "endB":F
    move v15, v4

    invoke-static {v15}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v15

    move v4, v15

    .line 40
    move v15, v5

    invoke-static {v15}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v15

    move v5, v15

    .line 41
    move v15, v6

    invoke-static {v15}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v15

    move v6, v15

    .line 43
    move v15, v8

    invoke-static {v15}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v15

    move v8, v15

    .line 44
    move v15, v9

    invoke-static {v15}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v15

    move v9, v15

    .line 45
    move v15, v10

    invoke-static {v15}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v15

    move v10, v15

    .line 48
    move v15, v3

    move/from16 v16, v0

    move/from16 v17, v7

    move/from16 v18, v3

    sub-float v17, v17, v18

    mul-float v16, v16, v17

    add-float v15, v15, v16

    move v11, v15

    .line 49
    .local v11, "a":F
    move v15, v4

    move/from16 v16, v0

    move/from16 v17, v8

    move/from16 v18, v4

    sub-float v17, v17, v18

    mul-float v16, v16, v17

    add-float v15, v15, v16

    move v12, v15

    .line 50
    .local v12, "r":F
    move v15, v5

    move/from16 v16, v0

    move/from16 v17, v9

    move/from16 v18, v5

    sub-float v17, v17, v18

    mul-float v16, v16, v17

    add-float v15, v15, v16

    move v13, v15

    .line 51
    .local v13, "g":F
    move v15, v6

    move/from16 v16, v0

    move/from16 v17, v10

    move/from16 v18, v6

    sub-float v17, v17, v18

    mul-float v16, v16, v17

    add-float v15, v15, v16

    move v14, v15

    .line 54
    .local v14, "b":F
    move v15, v11

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    move v11, v15

    .line 55
    move v15, v12

    invoke-static {v15}, Lcom/airbnb/lottie/utils/GammaEvaluator;->OECF_sRGB(F)F

    move-result v15

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    move v12, v15

    .line 56
    move v15, v13

    invoke-static {v15}, Lcom/airbnb/lottie/utils/GammaEvaluator;->OECF_sRGB(F)F

    move-result v15

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    move v13, v15

    .line 57
    move v15, v14

    invoke-static {v15}, Lcom/airbnb/lottie/utils/GammaEvaluator;->OECF_sRGB(F)F

    move-result v15

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    move v14, v15

    .line 59
    move v15, v11

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    const/16 v16, 0x18

    shl-int/lit8 v15, v15, 0x18

    move/from16 v16, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    const/16 v17, 0x10

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    move/from16 v16, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    const/16 v17, 0x8

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    move/from16 v16, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    or-int v15, v15, v16

    move v0, v15

    .end local v0    # "fraction":F
    return v0
.end method
