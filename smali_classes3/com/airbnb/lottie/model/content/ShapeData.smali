.class public Lcom/airbnb/lottie/model/content/ShapeData;
.super Ljava/lang/Object;
.source "ShapeData.java"


# instance fields
.field private closed:Z

.field private final curves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;"
        }
    .end annotation
.end field

.field private initialPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeData;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeData;
    move-object v1, p1

    .local v1, "initialPoint":Landroid/graphics/PointF;
    move v2, p2

    .local v2, "closed":Z
    move-object v3, p3

    .local v3, "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/CubicCurveData;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 20
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 21
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 22
    return-void
.end method

.method private setInitialPoint(FF)V
    .locals 7

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeData;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    if-nez v3, :cond_0

    .line 30
    move-object v3, v0

    new-instance v4, Landroid/graphics/PointF;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, v3, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 32
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 33
    return-void
.end method


# virtual methods
.method public getCurves()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeData;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeData;
    return-object v0
.end method

.method public getInitialPoint()Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeData;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeData;
    return-object v0
.end method

.method public interpolateBetween(Lcom/airbnb/lottie/model/content/ShapeData;Lcom/airbnb/lottie/model/content/ShapeData;F)V
    .locals 24
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 49
    move-object/from16 v2, p0

    .local v2, "this":Lcom/airbnb/lottie/model/content/ShapeData;
    move-object/from16 v3, p1

    .local v3, "shapeData1":Lcom/airbnb/lottie/model/content/ShapeData;
    move-object/from16 v4, p2

    .local v4, "shapeData2":Lcom/airbnb/lottie/model/content/ShapeData;
    move/from16 v5, p3

    .local v5, "percentage":F
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 50
    move-object/from16 v18, v2

    new-instance v19, Landroid/graphics/PointF;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    invoke-direct/range {v20 .. v20}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 52
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    move-result v19

    if-nez v19, :cond_1

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    move-result v19

    if-eqz v19, :cond_3

    :cond_1
    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 55
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 56
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Curves must have the same number of control points. Shape 1: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v3

    .line 57
    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\tShape 2: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 56
    invoke-static/range {v18 .. v18}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 60
    :cond_2
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v6, v18

    .line 61
    .local v6, "points":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 62
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v7, v18

    .local v7, "i":I
    :goto_1
    move/from16 v18, v7

    move/from16 v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 63
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v19, Lcom/airbnb/lottie/model/CubicCurveData;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    invoke-direct/range {v20 .. v20}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 62
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 52
    .end local v6    # "points":I
    .end local v7    # "i":I
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 62
    .line 71
    .restart local v6    # "points":I
    :cond_4
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v7, v18

    .line 72
    .local v7, "initialPoint1":Landroid/graphics/PointF;
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v8, v18

    .line 74
    .local v8, "initialPoint2":Landroid/graphics/PointF;
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move/from16 v21, v5

    invoke-static/range {v19 .. v21}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v19

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    move/from16 v22, v5

    .line 75
    invoke-static/range {v20 .. v22}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v20

    .line 74
    invoke-direct/range {v18 .. v20}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    .line 77
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v9, v18

    .local v9, "i":I
    :goto_2
    move/from16 v18, v9

    if-ltz v18, :cond_6

    .line 78
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v18

    move/from16 v19, v9

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/airbnb/lottie/model/CubicCurveData;

    move-object/from16 v10, v18

    .line 79
    .local v10, "curve1":Lcom/airbnb/lottie/model/CubicCurveData;
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v18

    move/from16 v19, v9

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/airbnb/lottie/model/CubicCurveData;

    move-object/from16 v11, v18

    .line 81
    .local v11, "curve2":Lcom/airbnb/lottie/model/CubicCurveData;
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v12, v18

    .line 82
    .local v12, "cp11":Landroid/graphics/PointF;
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v13, v18

    .line 83
    .local v13, "cp21":Landroid/graphics/PointF;
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v14, v18

    .line 85
    .local v14, "vertex1":Landroid/graphics/PointF;
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v15, v18

    .line 86
    .local v15, "cp12":Landroid/graphics/PointF;
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v16, v18

    .line 87
    .local v16, "cp22":Landroid/graphics/PointF;
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v18

    move-object/from16 v17, v18

    .line 89
    .local v17, "vertex2":Landroid/graphics/PointF;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    move-object/from16 v18, v0

    move/from16 v19, v9

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/airbnb/lottie/model/CubicCurveData;

    move-object/from16 v19, v12

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move/from16 v21, v5

    .line 90
    invoke-static/range {v19 .. v21}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v19

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    move/from16 v22, v5

    invoke-static/range {v20 .. v22}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v20

    .line 89
    invoke-virtual/range {v18 .. v20}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint1(FF)V

    .line 92
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    move-object/from16 v18, v0

    move/from16 v19, v9

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/airbnb/lottie/model/CubicCurveData;

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move-object/from16 v20, v16

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move/from16 v21, v5

    .line 93
    invoke-static/range {v19 .. v21}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v19

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    move-object/from16 v21, v16

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    move/from16 v22, v5

    invoke-static/range {v20 .. v22}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v20

    .line 92
    invoke-virtual/range {v18 .. v20}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint2(FF)V

    .line 95
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    move-object/from16 v18, v0

    move/from16 v19, v9

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/airbnb/lottie/model/CubicCurveData;

    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move-object/from16 v20, v17

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move/from16 v21, v5

    .line 96
    invoke-static/range {v19 .. v21}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v19

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    move-object/from16 v21, v17

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    move/from16 v22, v5

    invoke-static/range {v20 .. v22}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v20

    .line 95
    invoke-virtual/range {v18 .. v20}, Lcom/airbnb/lottie/model/CubicCurveData;->setVertex(FF)V

    .line 77
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    .line 65
    .end local v7    # "initialPoint1":Landroid/graphics/PointF;
    .end local v8    # "initialPoint2":Landroid/graphics/PointF;
    .end local v9    # "i":I
    .end local v10    # "curve1":Lcom/airbnb/lottie/model/CubicCurveData;
    .end local v11    # "curve2":Lcom/airbnb/lottie/model/CubicCurveData;
    .end local v12    # "cp11":Landroid/graphics/PointF;
    .end local v13    # "cp21":Landroid/graphics/PointF;
    .end local v14    # "vertex1":Landroid/graphics/PointF;
    .end local v15    # "cp12":Landroid/graphics/PointF;
    .end local v16    # "cp22":Landroid/graphics/PointF;
    .end local v17    # "vertex2":Landroid/graphics/PointF;
    :cond_5
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 66
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v7, v18

    .local v7, "i":I
    :goto_3
    move/from16 v18, v7

    move/from16 v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 67
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v18

    .line 66
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 99
    .local v7, "initialPoint1":Landroid/graphics/PointF;
    .restart local v8    # "initialPoint2":Landroid/graphics/PointF;
    .restart local v9    # "i":I
    :cond_6
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeData;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeData;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeData;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ShapeData{numCurves="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "closed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeData;
    return-object v0
.end method
