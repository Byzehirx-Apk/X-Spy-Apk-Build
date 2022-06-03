.class public Lcom/google/android/material/shape/ShapePath;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation build Lcom/google/android/material/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapePath$PathArcOperation;,
        Lcom/google/android/material/shape/ShapePath$PathQuadOperation;,
        Lcom/google/android/material/shape/ShapePath$PathLineOperation;,
        Lcom/google/android/material/shape/ShapePath$PathOperation;
    }
.end annotation


# instance fields
.field public endX:F

.field public endY:F

.field private final operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/material/shape/ShapePath$PathOperation;",
            ">;"
        }
    .end annotation
.end field

.field public startX:F

.field public startY:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePath;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    .line 41
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    .line 42
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePath;
    move v1, p1

    .local v1, "startX":F
    move v2, p2

    .local v2, "startY":F
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    .line 45
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    .line 46
    return-void
.end method


# virtual methods
.method public addArc(FFFFFF)V
    .locals 16

    .prologue
    .line 104
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/android/material/shape/ShapePath;
    move/from16 v2, p1

    .local v2, "left":F
    move/from16 v3, p2

    .local v3, "top":F
    move/from16 v4, p3

    .local v4, "right":F
    move/from16 v5, p4

    .local v5, "bottom":F
    move/from16 v6, p5

    .local v6, "startAngle":F
    move/from16 v7, p6

    .local v7, "sweepAngle":F
    new-instance v9, Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;-><init>(FFFF)V

    move-object v8, v9

    .line 105
    .local v8, "operation":Lcom/google/android/material/shape/ShapePath$PathArcOperation;
    move-object v9, v8

    move v10, v6

    iput v10, v9, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    .line 106
    move-object v9, v8

    move v10, v7

    iput v10, v9, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    .line 107
    move-object v9, v1

    iget-object v9, v9, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    move-object v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 109
    move-object v9, v1

    move v10, v2

    move v11, v4

    add-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    move v11, v4

    move v12, v2

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move v12, v6

    move v13, v7

    add-float/2addr v12, v13

    float-to-double v12, v12

    .line 110
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v9, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 111
    move-object v9, v1

    move v10, v3

    move v11, v5

    add-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    move v11, v5

    move v12, v3

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move v12, v6

    move v13, v7

    add-float/2addr v12, v13

    float-to-double v12, v12

    .line 112
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v9, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 113
    return-void
.end method

.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 9

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePath;
    move-object v1, p1

    .local v1, "transform":Landroid/graphics/Matrix;
    move-object v2, p2

    .local v2, "path":Landroid/graphics/Path;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v4, v6

    .local v4, "size":I
    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 123
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/shape/ShapePath$PathOperation;

    move-object v5, v6

    .line 124
    .local v5, "operation":Lcom/google/android/material/shape/ShapePath$PathOperation;
    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/google/android/material/shape/ShapePath$PathOperation;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v5    # "operation":Lcom/google/android/material/shape/ShapePath$PathOperation;
    :cond_0
    return-void
.end method

.method public lineTo(FF)V
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePath;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    new-instance v4, Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;-><init>()V

    move-object v3, v4

    .line 64
    .local v3, "operation":Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    move-object v4, v3

    move v5, v1

    invoke-static {v4, v5}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$002(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    move-result v4

    .line 65
    move-object v4, v3

    move v5, v2

    invoke-static {v4, v5}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$102(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    move-result v4

    .line 66
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 68
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 69
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 70
    return-void
.end method

.method public quadToPoint(FFFF)V
    .locals 9

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePath;
    move v1, p1

    .local v1, "controlX":F
    move v2, p2

    .local v2, "controlY":F
    move v3, p3

    .local v3, "toX":F
    move v4, p4

    .local v4, "toY":F
    new-instance v6, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;-><init>()V

    move-object v5, v6

    .line 82
    .local v5, "operation":Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
    move-object v6, v5

    move v7, v1

    iput v7, v6, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlX:F

    .line 83
    move-object v6, v5

    move v7, v2

    iput v7, v6, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlY:F

    .line 84
    move-object v6, v5

    move v7, v3

    iput v7, v6, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endX:F

    .line 85
    move-object v6, v5

    move v7, v4

    iput v7, v6, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endY:F

    .line 86
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 88
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 89
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 90
    return-void
.end method

.method public reset(FF)V
    .locals 5

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePath;
    move v1, p1

    .local v1, "startX":F
    move v2, p2

    .local v2, "startY":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/material/shape/ShapePath;->startX:F

    .line 50
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/material/shape/ShapePath;->startY:F

    .line 51
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 52
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 53
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 54
    return-void
.end method
