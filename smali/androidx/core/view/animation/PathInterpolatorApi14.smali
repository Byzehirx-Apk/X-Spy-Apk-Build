.class Landroidx/core/view/animation/PathInterpolatorApi14;
.super Ljava/lang/Object;
.source "PathInterpolatorApi14.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final PRECISION:F = 0.002f


# instance fields
.field private final mX:[F

.field private final mY:[F


# direct methods
.method constructor <init>(FF)V
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/animation/PathInterpolatorApi14;
    move v1, p1

    .local v1, "controlX":F
    move v2, p2

    .local v2, "controlY":F
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v4, v5}, Landroidx/core/view/animation/PathInterpolatorApi14;->createQuad(FF)Landroid/graphics/Path;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/core/view/animation/PathInterpolatorApi14;-><init>(Landroid/graphics/Path;)V

    .line 57
    return-void
.end method

.method constructor <init>(FFFF)V
    .locals 10

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/animation/PathInterpolatorApi14;
    move v1, p1

    .local v1, "controlX1":F
    move v2, p2

    .local v2, "controlY1":F
    move v3, p3

    .local v3, "controlX2":F
    move v4, p4

    .local v4, "controlY2":F
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroidx/core/view/animation/PathInterpolatorApi14;->createCubic(FFFF)Landroid/graphics/Path;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/core/view/animation/PathInterpolatorApi14;-><init>(Landroid/graphics/Path;)V

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/graphics/Path;)V
    .locals 13

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/animation/PathInterpolatorApi14;
    move-object v1, p1

    .local v1, "path":Landroid/graphics/Path;
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v8, Landroid/graphics/PathMeasure;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    move-object v2, v8

    .line 39
    .local v2, "pathMeasure":Landroid/graphics/PathMeasure;
    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    move v3, v8

    .line 40
    .local v3, "pathLength":F
    move v8, v3

    const v9, 0x3b03126f    # 0.002f

    div-float/2addr v8, v9

    float-to-int v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v4, v8

    .line 42
    .local v4, "numPoints":I
    move-object v8, v0

    move v9, v4

    new-array v9, v9, [F

    iput-object v9, v8, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    .line 43
    move-object v8, v0

    move v9, v4

    new-array v9, v9, [F

    iput-object v9, v8, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    .line 45
    const/4 v8, 0x2

    new-array v8, v8, [F

    move-object v5, v8

    .line 46
    .local v5, "position":[F
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move v9, v4

    if-ge v8, v9, :cond_0

    .line 47
    move v8, v6

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v7, v8

    .line 48
    .local v7, "distance":F
    move-object v8, v2

    move v9, v7

    move-object v10, v5

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v8

    .line 50
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    move v9, v6

    move-object v10, v5

    const/4 v11, 0x0

    aget v10, v10, v11

    aput v10, v8, v9

    .line 51
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    move v9, v6

    move-object v10, v5

    const/4 v11, 0x1

    aget v10, v10, v11

    aput v10, v8, v9

    .line 46
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 53
    .end local v7    # "distance":F
    :cond_0
    return-void
.end method

.method private static createCubic(FFFF)Landroid/graphics/Path;
    .locals 13

    .prologue
    .line 107
    move v0, p0

    .local v0, "controlX1":F
    move v1, p1

    .local v1, "controlY1":F
    move v2, p2

    .local v2, "controlX2":F
    move/from16 v3, p3

    .local v3, "controlY2":F
    new-instance v5, Landroid/graphics/Path;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move-object v4, v5

    .line 108
    .local v4, "path":Landroid/graphics/Path;
    move-object v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 109
    move-object v5, v4

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 110
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "controlX1":F
    return-object v0
.end method

.method private static createQuad(FF)Landroid/graphics/Path;
    .locals 9

    .prologue
    .line 99
    move v0, p0

    .local v0, "controlX":F
    move v1, p1

    .local v1, "controlY":F
    new-instance v3, Landroid/graphics/Path;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-object v2, v3

    .line 100
    .local v2, "path":Landroid/graphics/Path;
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 101
    move-object v3, v2

    move v4, v0

    move v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 102
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "controlX":F
    return-object v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 13

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/animation/PathInterpolatorApi14;
    move v1, p1

    .local v1, "t":F
    move v9, v1

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_0

    .line 67
    const/4 v9, 0x0

    move v0, v9

    .line 95
    .end local v0    # "this":Landroidx/core/view/animation/PathInterpolatorApi14;
    :goto_0
    return v0

    .line 68
    .restart local v0    # "this":Landroidx/core/view/animation/PathInterpolatorApi14;
    :cond_0
    move v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_1

    .line 69
    const/high16 v9, 0x3f800000    # 1.0f

    move v0, v9

    goto :goto_0

    .line 73
    :cond_1
    const/4 v9, 0x0

    move v2, v9

    .line 74
    .local v2, "startIndex":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v3, v9

    .line 75
    .local v3, "endIndex":I
    :goto_1
    move v9, v3

    move v10, v2

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 76
    move v9, v2

    move v10, v3

    add-int/2addr v9, v10

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    move v4, v9

    .line 77
    .local v4, "midIndex":I
    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    move v11, v4

    aget v10, v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 78
    move v9, v4

    move v3, v9

    .line 82
    :goto_2
    goto :goto_1

    .line 80
    :cond_2
    move v9, v4

    move v2, v9

    goto :goto_2

    .line 84
    .end local v4    # "midIndex":I
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    move v10, v3

    aget v9, v9, v10

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    move v11, v2

    aget v10, v10, v11

    sub-float/2addr v9, v10

    move v4, v9

    .line 85
    .local v4, "xRange":F
    move v9, v4

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_4

    .line 86
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    move v10, v2

    aget v9, v9, v10

    move v0, v9

    goto :goto_0

    .line 89
    :cond_4
    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    move v11, v2

    aget v10, v10, v11

    sub-float/2addr v9, v10

    move v5, v9

    .line 90
    .local v5, "tInRange":F
    move v9, v5

    move v10, v4

    div-float/2addr v9, v10

    move v6, v9

    .line 92
    .local v6, "fraction":F
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    move v10, v2

    aget v9, v9, v10

    move v7, v9

    .line 93
    .local v7, "startY":F
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    move v10, v3

    aget v9, v9, v10

    move v8, v9

    .line 95
    .local v8, "endY":F
    move v9, v7

    move v10, v6

    move v11, v8

    move v12, v7

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v0, v9

    goto :goto_0
.end method
