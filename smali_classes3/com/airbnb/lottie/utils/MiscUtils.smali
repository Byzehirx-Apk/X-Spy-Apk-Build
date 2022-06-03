.class public Lcom/airbnb/lottie/utils/MiscUtils;
.super Ljava/lang/Object;
.source "MiscUtils.java"


# static fields
.field private static pathFromDataCurrentPoint:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Landroid/graphics/PointF;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/MiscUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 8

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "p1":Landroid/graphics/PointF;
    move-object v1, p1

    .local v1, "p2":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object v5, v1

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object v6, v1

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v2

    .end local v0    # "p1":Landroid/graphics/PointF;
    return-object v0
.end method

.method public static clamp(FFF)F
    .locals 6

    .prologue
    .line 85
    move v0, p0

    .local v0, "number":F
    move v1, p1

    .local v1, "min":F
    move v2, p2

    .local v2, "max":F
    move v3, v1

    move v4, v2

    move v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v0, v3

    .end local v0    # "number":F
    return v0
.end method

.method public static clamp(III)I
    .locals 6

    .prologue
    .line 81
    move v0, p0

    .local v0, "number":I
    move v1, p1

    .local v1, "min":I
    move v2, p2

    .local v2, "max":I
    move v3, v1

    move v4, v2

    move v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    .end local v0    # "number":I
    return v0
.end method

.method public static contains(FFF)Z
    .locals 5

    .prologue
    .line 89
    move v0, p0

    .local v0, "number":F
    move v1, p1

    .local v1, "rangeMin":F
    move v2, p2

    .local v2, "rangeMax":F
    move v3, v0

    move v4, v1

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v0

    move v4, v2

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "number":F
    return v0

    .restart local v0    # "number":F
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static floorDiv(II)I
    .locals 7

    .prologue
    .line 71
    move v0, p0

    .local v0, "x":I
    move v1, p1

    .local v1, "y":I
    move v5, v0

    move v6, v1

    div-int/2addr v5, v6

    move v2, v5

    .line 72
    .local v2, "r":I
    move v5, v0

    move v6, v1

    xor-int/2addr v5, v6

    if-ltz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 73
    .local v3, "sameSign":Z
    move v5, v0

    move v6, v1

    rem-int/2addr v5, v6

    move v4, v5

    .line 74
    .local v4, "mod":I
    move v5, v3

    if-nez v5, :cond_0

    move v5, v4

    if-eqz v5, :cond_0

    .line 75
    add-int/lit8 v2, v2, -0x1

    .line 77
    :cond_0
    move v5, v2

    move v0, v5

    .end local v0    # "x":I
    return v0

    .line 72
    .end local v3    # "sameSign":Z
    .end local v4    # "mod":I
    .restart local v0    # "x":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static floorMod(FF)I
    .locals 4

    .prologue
    .line 63
    move v0, p0

    .local v0, "x":F
    move v1, p1

    .local v1, "y":F
    move v2, v0

    float-to-int v2, v2

    move v3, v1

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(II)I

    move-result v2

    move v0, v2

    .end local v0    # "x":F
    return v0
.end method

.method private static floorMod(II)I
    .locals 6

    .prologue
    .line 67
    move v0, p0

    .local v0, "x":I
    move v1, p1

    .local v1, "y":I
    move v2, v0

    move v3, v1

    move v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->floorDiv(II)I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    move v0, v2

    .end local v0    # "x":I
    return v0
.end method

.method public static getPathFromData(Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;)V
    .locals 15

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "shapeData":Lcom/airbnb/lottie/model/content/ShapeData;
    move-object/from16 v1, p1

    .local v1, "outPath":Landroid/graphics/Path;
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 23
    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v8

    move-object v2, v8

    .line 24
    .local v2, "initialPoint":Landroid/graphics/PointF;
    move-object v8, v1

    move-object v9, v2

    iget v9, v9, Landroid/graphics/PointF;->x:F

    move-object v10, v2

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 25
    sget-object v8, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    move-object v9, v2

    iget v9, v9, Landroid/graphics/PointF;->x:F

    move-object v10, v2

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 26
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_0
    move v8, v3

    move-object v9, v0

    invoke-virtual {v9}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 27
    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v8

    move v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/model/CubicCurveData;

    move-object v4, v8

    .line 28
    .local v4, "curveData":Lcom/airbnb/lottie/model/CubicCurveData;
    move-object v8, v4

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v8

    move-object v5, v8

    .line 29
    .local v5, "cp1":Landroid/graphics/PointF;
    move-object v8, v4

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v8

    move-object v6, v8

    .line 30
    .local v6, "cp2":Landroid/graphics/PointF;
    move-object v8, v4

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v8

    move-object v7, v8

    .line 32
    .local v7, "vertex":Landroid/graphics/PointF;
    move-object v8, v5

    sget-object v9, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    invoke-virtual {v8, v9}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v6

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 39
    move-object v8, v1

    move-object v9, v7

    iget v9, v9, Landroid/graphics/PointF;->x:F

    move-object v10, v7

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    :goto_1
    sget-object v8, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    move-object v9, v7

    iget v9, v9, Landroid/graphics/PointF;->x:F

    move-object v10, v7

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 26
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    :cond_0
    move-object v8, v1

    move-object v9, v5

    iget v9, v9, Landroid/graphics/PointF;->x:F

    move-object v10, v5

    iget v10, v10, Landroid/graphics/PointF;->y:F

    move-object v11, v6

    iget v11, v11, Landroid/graphics/PointF;->x:F

    move-object v12, v6

    iget v12, v12, Landroid/graphics/PointF;->y:F

    move-object v13, v7

    iget v13, v13, Landroid/graphics/PointF;->x:F

    move-object v14, v7

    iget v14, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_1

    .line 45
    .end local v4    # "curveData":Lcom/airbnb/lottie/model/CubicCurveData;
    .end local v5    # "cp1":Landroid/graphics/PointF;
    .end local v6    # "cp2":Landroid/graphics/PointF;
    .end local v7    # "vertex":Landroid/graphics/PointF;
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 46
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 48
    :cond_2
    return-void
.end method

.method public static lerp(DDD)D
    .locals 14
    .param p4    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 55
    move-wide v0, p0

    .local v0, "a":D
    move-wide/from16 v2, p2

    .local v2, "b":D
    move-wide/from16 v4, p4

    .local v4, "percentage":D
    move-wide v6, v0

    move-wide v8, v4

    move-wide v10, v2

    move-wide v12, v0

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-wide v0, v6

    .end local v0    # "a":D
    return-wide v0
.end method

.method public static lerp(FFF)F
    .locals 7
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 51
    move v0, p0

    .local v0, "a":F
    move v1, p1

    .local v1, "b":F
    move v2, p2

    .local v2, "percentage":F
    move v3, v0

    move v4, v2

    move v5, v1

    move v6, v0

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    .end local v0    # "a":F
    return v0
.end method

.method public static lerp(IIF)I
    .locals 7
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 59
    move v0, p0

    .local v0, "a":I
    move v1, p1

    .local v1, "b":I
    move v2, p2

    .local v2, "percentage":F
    move v3, v0

    int-to-float v3, v3

    move v4, v2

    move v5, v1

    move v6, v0

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    move v0, v3

    .end local v0    # "a":I
    return v0
.end method

.method public static resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "Lcom/airbnb/lottie/animation/content/KeyPathElementContent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    move v1, p1

    .local v1, "depth":I
    move-object v2, p2

    .local v2, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    move-object v3, p3

    .local v3, "currentPartialKeyPath":Lcom/airbnb/lottie/model/KeyPath;
    move-object v4, p4

    .local v4, "content":Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
    move-object v5, v0

    move-object v6, v4

    invoke-interface {v6}, Lcom/airbnb/lottie/animation/content/KeyPathElementContent;->getName()Ljava/lang/String;

    move-result-object v6

    move v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    move-object v5, v3

    move-object v6, v4

    invoke-interface {v6}, Lcom/airbnb/lottie/animation/content/KeyPathElementContent;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/airbnb/lottie/model/KeyPath;

    move-result-object v5

    move-object v3, v5

    .line 104
    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/model/KeyPath;->resolve(Lcom/airbnb/lottie/model/KeyPathElement;)Lcom/airbnb/lottie/model/KeyPath;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 106
    :cond_0
    return-void
.end method
