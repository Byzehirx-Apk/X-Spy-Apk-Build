.class public Lcom/google/android/material/shape/MaterialShapeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;


# annotations
.annotation build Lcom/google/android/material/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field private alpha:I

.field private final cornerPaths:[Lcom/google/android/material/shape/ShapePath;

.field private final cornerTransforms:[Landroid/graphics/Matrix;

.field private final edgeTransforms:[Landroid/graphics/Matrix;

.field private interpolation:F

.field private final matrix:Landroid/graphics/Matrix;

.field private final paint:Landroid/graphics/Paint;

.field private paintStyle:Landroid/graphics/Paint$Style;

.field private final path:Landroid/graphics/Path;

.field private final pointF:Landroid/graphics/PointF;

.field private scale:F

.field private final scratch:[F

.field private final scratch2:[F

.field private final scratchRegion:Landroid/graphics/Region;

.field private shadowColor:I

.field private shadowElevation:I

.field private shadowEnabled:Z

.field private shadowRadius:I

.field private final shapePath:Lcom/google/android/material/shape/ShapePath;

.field private shapedViewModel:Lcom/google/android/material/shape/ShapePathModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private strokeWidth:F

.field private tintFilter:Landroid/graphics/PorterDuffColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private tintList:Landroid/content/res/ColorStateList;

.field private tintMode:Landroid/graphics/PorterDuff$Mode;

.field private final transparentRegion:Landroid/graphics/Region;

.field private useTintColorForShadow:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapePathModel;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapePathModel;)V
    .locals 8
    .param p1    # Lcom/google/android/material/shape/ShapePathModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, p1

    .local v1, "shapePathModel":Lcom/google/android/material/shape/ShapePathModel;
    move-object v3, v0

    invoke-direct {v3}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 48
    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    .line 50
    move-object v3, v0

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/graphics/Matrix;

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 51
    move-object v3, v0

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/graphics/Matrix;

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 52
    move-object v3, v0

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/android/material/shape/ShapePath;

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 54
    move-object v3, v0

    new-instance v4, Landroid/graphics/Matrix;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    .line 55
    move-object v3, v0

    new-instance v4, Landroid/graphics/Path;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    .line 56
    move-object v3, v0

    new-instance v4, Landroid/graphics/PointF;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    .line 57
    move-object v3, v0

    new-instance v4, Lcom/google/android/material/shape/ShapePath;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapePath:Lcom/google/android/material/shape/ShapePath;

    .line 58
    move-object v3, v0

    new-instance v4, Landroid/graphics/Region;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    .line 59
    move-object v3, v0

    new-instance v4, Landroid/graphics/Region;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratchRegion:Landroid/graphics/Region;

    .line 60
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [F

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    .line 61
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [F

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch2:[F

    .line 62
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapedViewModel:Lcom/google/android/material/shape/ShapePathModel;

    .line 63
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowEnabled:Z

    .line 64
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->useTintColorForShadow:Z

    .line 65
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->interpolation:F

    .line 66
    move-object v3, v0

    const/high16 v4, -0x1000000

    iput v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowColor:I

    .line 67
    move-object v3, v0

    const/4 v4, 0x5

    iput v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowElevation:I

    .line 68
    move-object v3, v0

    const/16 v4, 0xa

    iput v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowRadius:I

    .line 69
    move-object v3, v0

    const/16 v4, 0xff

    iput v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->alpha:I

    .line 70
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->scale:F

    .line 71
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokeWidth:F

    .line 72
    move-object v3, v0

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->paintStyle:Landroid/graphics/Paint$Style;

    .line 74
    move-object v3, v0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 75
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintList:Landroid/content/res/ColorStateList;

    .line 89
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapedViewModel:Lcom/google/android/material/shape/ShapePathModel;

    .line 91
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 92
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    move v4, v2

    new-instance v5, Landroid/graphics/Matrix;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    aput-object v5, v3, v4

    .line 93
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    move v4, v2

    new-instance v5, Landroid/graphics/Matrix;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    aput-object v5, v3, v4

    .line 94
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    move v4, v2

    new-instance v5, Lcom/google/android/material/shape/ShapePath;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    aput-object v5, v3, v4

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method private angleOfCorner(III)F
    .locals 25

    .prologue
    .line 498
    move-object/from16 v3, p0

    .local v3, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move/from16 v4, p1

    .local v4, "index":I
    move/from16 v5, p2

    .local v5, "width":I
    move/from16 v6, p3

    .local v6, "height":I
    move-object/from16 v20, v3

    move/from16 v21, v4

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    const/16 v22, 0x4

    add-int/lit8 v21, v21, 0x4

    const/16 v22, 0x4

    rem-int/lit8 v21, v21, 0x4

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    invoke-direct/range {v20 .. v24}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    .line 499
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move/from16 v7, v20

    .line 500
    .local v7, "prevCornerCoordX":F
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    move/from16 v8, v20

    .line 502
    .local v8, "prevCornerCoordY":F
    move-object/from16 v20, v3

    move/from16 v21, v4

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    const/16 v22, 0x4

    rem-int/lit8 v21, v21, 0x4

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    invoke-direct/range {v20 .. v24}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    .line 503
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move/from16 v9, v20

    .line 504
    .local v9, "nextCornerCoordX":F
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    move/from16 v10, v20

    .line 506
    .local v10, "nextCornerCoordY":F
    move-object/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    invoke-direct/range {v20 .. v24}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    .line 507
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move/from16 v11, v20

    .line 508
    .local v11, "cornerCoordX":F
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    move/from16 v12, v20

    .line 510
    .local v12, "cornerCoordY":F
    move/from16 v20, v7

    move/from16 v21, v11

    sub-float v20, v20, v21

    move/from16 v13, v20

    .line 511
    .local v13, "prevVectorX":F
    move/from16 v20, v8

    move/from16 v21, v12

    sub-float v20, v20, v21

    move/from16 v14, v20

    .line 513
    .local v14, "prevVectorY":F
    move/from16 v20, v9

    move/from16 v21, v11

    sub-float v20, v20, v21

    move/from16 v15, v20

    .line 514
    .local v15, "nextVectorX":F
    move/from16 v20, v10

    move/from16 v21, v12

    sub-float v20, v20, v21

    move/from16 v16, v20

    .line 516
    .local v16, "nextVectorY":F
    move/from16 v20, v14

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v13

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v17, v20

    .line 517
    .local v17, "prevAngle":F
    move/from16 v20, v16

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v15

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v18, v20

    .line 518
    .local v18, "nextAngle":F
    move/from16 v20, v17

    move/from16 v21, v18

    sub-float v20, v20, v21

    move/from16 v19, v20

    .line 519
    .local v19, "angle":F
    move/from16 v20, v19

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_0

    .line 520
    move/from16 v20, v19

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v19, v20

    .line 522
    :cond_0
    move/from16 v20, v19

    move/from16 v3, v20

    .end local v3    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    return v3
.end method

.method private angleOfEdge(III)F
    .locals 19

    .prologue
    .line 526
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move/from16 v3, p1

    .local v3, "index":I
    move/from16 v4, p2

    .local v4, "width":I
    move/from16 v5, p3

    .local v5, "height":I
    move v14, v3

    move v6, v14

    .line 527
    .local v6, "startCornerPosition":I
    move v14, v3

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x4

    rem-int/lit8 v14, v14, 0x4

    move v7, v14

    .line 529
    .local v7, "endCornerPoisition":I
    move-object v14, v2

    move v15, v6

    move/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    .line 530
    move-object v14, v2

    iget-object v14, v14, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move v8, v14

    .line 531
    .local v8, "startCornerCoordX":F
    move-object v14, v2

    iget-object v14, v14, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    move v9, v14

    .line 533
    .local v9, "startCornerCoordY":F
    move-object v14, v2

    move v15, v7

    move/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    .line 534
    move-object v14, v2

    iget-object v14, v14, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move v10, v14

    .line 535
    .local v10, "endCornerCoordX":F
    move-object v14, v2

    iget-object v14, v14, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    move v11, v14

    .line 537
    .local v11, "endCornerCoordY":F
    move v14, v10

    move v15, v8

    sub-float/2addr v14, v15

    move v12, v14

    .line 538
    .local v12, "edgeVectorX":F
    move v14, v11

    move v15, v9

    sub-float/2addr v14, v15

    move v13, v14

    .line 539
    .local v13, "edgeVectorY":F
    move v14, v13

    float-to-double v14, v14

    move/from16 v16, v12

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    double-to-float v14, v14

    move v2, v14

    .end local v2    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    return v2
.end method

.method private appendCornerPath(ILandroid/graphics/Path;)V
    .locals 7

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "path":Landroid/graphics/Path;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    move v6, v1

    aget-object v5, v5, v6

    iget v5, v5, Lcom/google/android/material/shape/ShapePath;->startX:F

    aput v5, v3, v4

    .line 425
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    move v6, v1

    aget-object v5, v5, v6

    iget v5, v5, Lcom/google/android/material/shape/ShapePath;->startY:F

    aput v5, v3, v4

    .line 426
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    move v4, v1

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 427
    move v3, v1

    if-nez v3, :cond_0

    .line 428
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 432
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    move v4, v1

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    move v5, v1

    aget-object v4, v4, v5

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 433
    return-void

    .line 430
    :cond_0
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method private appendEdgePath(ILandroid/graphics/Path;)V
    .locals 11

    .prologue
    .line 436
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v2, p1

    .local v2, "index":I
    move-object v3, p2

    .local v3, "path":Landroid/graphics/Path;
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x4

    rem-int/lit8 v6, v6, 0x4

    move v4, v6

    .line 437
    .local v4, "nextIndex":I
    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    const/4 v7, 0x0

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    move v9, v2

    aget-object v8, v8, v9

    iget v8, v8, Lcom/google/android/material/shape/ShapePath;->endX:F

    aput v8, v6, v7

    .line 438
    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    const/4 v7, 0x1

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    move v9, v2

    aget-object v8, v8, v9

    iget v8, v8, Lcom/google/android/material/shape/ShapePath;->endY:F

    aput v8, v6, v7

    .line 439
    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    move v7, v2

    aget-object v6, v6, v7

    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 441
    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch2:[F

    const/4 v7, 0x0

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    move v9, v4

    aget-object v8, v8, v9

    iget v8, v8, Lcom/google/android/material/shape/ShapePath;->startX:F

    aput v8, v6, v7

    .line 442
    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch2:[F

    const/4 v7, 0x1

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    move v9, v4

    aget-object v8, v8, v9

    iget v8, v8, Lcom/google/android/material/shape/ShapePath;->startY:F

    aput v8, v6, v7

    .line 443
    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    move v7, v4

    aget-object v6, v6, v7

    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch2:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 445
    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch2:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    float-to-double v6, v6

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object v9, v1

    iget-object v9, v9, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch2:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    move v5, v6

    .line 446
    .local v5, "edgeLength":F
    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapePath:Lcom/google/android/material/shape/ShapePath;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    .line 447
    move-object v6, v1

    move v7, v2

    invoke-direct {v6, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getEdgeTreatmentForIndex(I)Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v6

    move v7, v5

    move-object v8, v1

    iget v8, v8, Lcom/google/android/material/shape/MaterialShapeDrawable;->interpolation:F

    move-object v9, v1

    iget-object v9, v9, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapePath:Lcom/google/android/material/shape/ShapePath;

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/material/shape/EdgeTreatment;->getEdgePath(FFLcom/google/android/material/shape/ShapePath;)V

    .line 448
    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapePath:Lcom/google/android/material/shape/ShapePath;

    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    move v8, v2

    aget-object v7, v7, v8

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 449
    return-void
.end method

.method private getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V
    .locals 8

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v4, p4

    .local v4, "pointF":Landroid/graphics/PointF;
    move v5, v1

    packed-switch v5, :pswitch_data_0

    .line 492
    move-object v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 495
    :goto_0
    return-void

    .line 482
    :pswitch_0
    move-object v5, v4

    move v6, v2

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 483
    goto :goto_0

    .line 485
    :pswitch_1
    move-object v5, v4

    move v6, v2

    int-to-float v6, v6

    move v7, v3

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 486
    goto :goto_0

    .line 488
    :pswitch_2
    move-object v5, v4

    const/4 v6, 0x0

    move v7, v3

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 489
    goto :goto_0

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCornerTreatmentForIndex(I)Lcom/google/android/material/shape/CornerTreatment;
    .locals 3

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 461
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapedViewModel:Lcom/google/android/material/shape/ShapePathModel;

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePathModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    :goto_0
    return-object v0

    .line 454
    .restart local v0    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapedViewModel:Lcom/google/android/material/shape/ShapePathModel;

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePathModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 456
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapedViewModel:Lcom/google/android/material/shape/ShapePathModel;

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePathModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 458
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapedViewModel:Lcom/google/android/material/shape/ShapePathModel;

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePathModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getEdgeTreatmentForIndex(I)Lcom/google/android/material/shape/EdgeTreatment;
    .locals 3

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 475
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapedViewModel:Lcom/google/android/material/shape/ShapePathModel;

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePathModel;->getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    :goto_0
    return-object v0

    .line 468
    .restart local v0    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapedViewModel:Lcom/google/android/material/shape/ShapePathModel;

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePathModel;->getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 470
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapedViewModel:Lcom/google/android/material/shape/ShapePathModel;

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePathModel;->getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 472
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapedViewModel:Lcom/google/android/material/shape/ShapePathModel;

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePathModel;->getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPath(IILandroid/graphics/Path;)V
    .locals 10

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "path":Landroid/graphics/Path;
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getPathForSize(IILandroid/graphics/Path;)V

    .line 544
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->scale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 545
    .line 550
    :goto_0
    return-void

    .line 547
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 548
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable;->scale:F

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->scale:F

    move v7, v1

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    move v8, v2

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 549
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 550
    goto :goto_0
.end method

.method private static modulateAlpha(II)I
    .locals 6

    .prologue
    .line 99
    move v0, p0

    .local v0, "paintAlpha":I
    move v1, p1

    .local v1, "alpha":I
    move v3, v1

    move v4, v1

    const/4 v5, 0x7

    ushr-int/lit8 v4, v4, 0x7

    add-int/2addr v3, v4

    move v2, v3

    .line 100
    .local v2, "scale":I
    move v3, v0

    move v4, v2

    mul-int/2addr v3, v4

    const/16 v4, 0x8

    ushr-int/lit8 v3, v3, 0x8

    move v0, v3

    .end local v0    # "paintAlpha":I
    return v0
.end method

.method private setCornerPathAndTransform(III)V
    .locals 12

    .prologue
    .line 403
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v2, p1

    .local v2, "index":I
    move v3, p2

    .local v3, "width":I
    move v4, p3

    .local v4, "height":I
    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    .line 404
    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/material/shape/MaterialShapeDrawable;->angleOfCorner(III)F

    move-result v7

    move v5, v7

    .line 405
    .local v5, "angle":F
    move-object v7, v1

    move v8, v2

    invoke-direct {v7, v8}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getCornerTreatmentForIndex(I)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v7

    move v8, v5

    move-object v9, v1

    iget v9, v9, Lcom/google/android/material/shape/MaterialShapeDrawable;->interpolation:F

    move-object v10, v1

    iget-object v10, v10, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    move v11, v2

    aget-object v10, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/material/shape/CornerTreatment;->getCornerPath(FFLcom/google/android/material/shape/ShapePath;)V

    .line 407
    move-object v7, v1

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x4

    add-int/lit8 v8, v8, 0x4

    const/4 v9, 0x4

    rem-int/lit8 v8, v8, 0x4

    move v9, v3

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/material/shape/MaterialShapeDrawable;->angleOfEdge(III)F

    move-result v7

    const v8, 0x3fc90fdb

    add-float/2addr v7, v8

    move v6, v7

    .line 408
    .local v6, "prevEdgeAngle":F
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    move v8, v2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 409
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    move v8, v2

    aget-object v7, v7, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    move-object v9, v1

    iget-object v9, v9, Lcom/google/android/material/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 410
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    move v8, v2

    aget-object v7, v7, v8

    move v8, v6

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    move-result v7

    .line 411
    return-void
.end method

.method private setEdgeTransform(III)V
    .locals 9

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    move v8, v1

    aget-object v7, v7, v8

    iget v7, v7, Lcom/google/android/material/shape/ShapePath;->endX:F

    aput v7, v5, v6

    .line 415
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    move v8, v1

    aget-object v7, v7, v8

    iget v7, v7, Lcom/google/android/material/shape/ShapePath;->endY:F

    aput v7, v5, v6

    .line 416
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    move v6, v1

    aget-object v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 417
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/material/shape/MaterialShapeDrawable;->angleOfEdge(III)F

    move-result v5

    move v4, v5

    .line 418
    .local v4, "edgeAngle":F
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    move v6, v1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 419
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    move v6, v1

    aget-object v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratch:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 420
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    move v6, v1

    aget-object v5, v5, v6

    move v6, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preRotate(F)Z

    move-result v5

    .line 421
    return-void
.end method

.method private updateTintFilter()V
    .locals 8

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintList:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    if-nez v2, :cond_1

    .line 554
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 555
    .line 562
    :goto_0
    return-void

    .line 557
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintList:Landroid/content/res/ColorStateList;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getState()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    move v1, v2

    .line 558
    .local v1, "color":I
    move-object v2, v0

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 559
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->useTintColorForShadow:Z

    if-eqz v2, :cond_2

    .line 560
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowColor:I

    .line 562
    :cond_2
    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v3

    .line 353
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    move v2, v3

    .line 354
    .local v2, "prevAlpha":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable;->alpha:I

    invoke-static {v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->modulateAlpha(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 355
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokeWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 356
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->paintStyle:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 357
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowElevation:I

    if-lez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowEnabled:Z

    if-eqz v3, :cond_0

    .line 358
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowRadius:I

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowElevation:I

    int-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowColor:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 360
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapedViewModel:Lcom/google/android/material/shape/ShapePathModel;

    if-eqz v3, :cond_1

    .line 361
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getPath(IILandroid/graphics/Path;)V

    .line 362
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 366
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 367
    return-void

    .line 364
    :cond_1
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getInterpolation()F
    .locals 2

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->interpolation:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    const/4 v1, -0x3

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    return v0
.end method

.method public getPaintStyle()Landroid/graphics/Paint$Style;
    .locals 2

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->paintStyle:Landroid/graphics/Paint$Style;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    return-object v0
.end method

.method public getPathForSize(IILandroid/graphics/Path;)V
    .locals 9

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "path":Landroid/graphics/Path;
    move-object v5, v3

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 381
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapedViewModel:Lcom/google/android/material/shape/ShapePathModel;

    if-nez v5, :cond_0

    .line 382
    .line 400
    :goto_0
    return-void

    .line 387
    :cond_0
    const/4 v5, 0x0

    move v4, v5

    .local v4, "index":I
    :goto_1
    move v5, v4

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 388
    move-object v5, v0

    move v6, v4

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerPathAndTransform(III)V

    .line 389
    move-object v5, v0

    move v6, v4

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setEdgeTransform(III)V

    .line 387
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 394
    :cond_1
    const/4 v5, 0x0

    move v4, v5

    :goto_2
    move v5, v4

    const/4 v6, 0x4

    if-ge v5, v6, :cond_2

    .line 395
    move-object v5, v0

    move v6, v4

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->appendCornerPath(ILandroid/graphics/Path;)V

    .line 396
    move-object v5, v0

    move v6, v4

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->appendEdgePath(ILandroid/graphics/Path;)V

    .line 394
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 399
    :cond_2
    move-object v5, v3

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 400
    goto :goto_0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->scale:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    return v0
.end method

.method public getShadowElevation()I
    .locals 2

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowElevation:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    return v0
.end method

.method public getShadowRadius()I
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowRadius:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    return v0
.end method

.method public getShapedViewModel()Lcom/google/android/material/shape/ShapePathModel;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapedViewModel:Lcom/google/android/material/shape/ShapePathModel;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokeWidth:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    return v0
.end method

.method public getTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintList:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 6

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    move-object v1, v2

    .line 173
    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    move-result v2

    .line 174
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getPath(IILandroid/graphics/Path;)V

    .line 175
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratchRegion:Landroid/graphics/Region;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    move-result v2

    .line 176
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->scratchRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v2

    .line 177
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    return-object v0
.end method

.method public isPointInTransparentRegion(II)Z
    .locals 6

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v3

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    return v0
.end method

.method public isShadowEnabled()Z
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    return v0
.end method

.method public setAlpha(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "alpha":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->alpha:I

    .line 161
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 162
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, p1

    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 167
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 168
    return-void
.end method

.method public setInterpolation(F)V
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "interpolation":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->interpolation:F

    .line 231
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 232
    return-void
.end method

.method public setPaintStyle(Landroid/graphics/Paint$Style;)V
    .locals 4

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, p1

    .local v1, "paintStyle":Landroid/graphics/Paint$Style;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->paintStyle:Landroid/graphics/Paint$Style;

    .line 328
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 329
    return-void
.end method

.method public setScale(F)V
    .locals 4

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "scale":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->scale:F

    .line 288
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 289
    return-void
.end method

.method public setShadowColor(I)V
    .locals 4

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "shadowColor":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowColor:I

    .line 308
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->useTintColorForShadow:Z

    .line 309
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 310
    return-void
.end method

.method public setShadowElevation(I)V
    .locals 4

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "shadowElevation":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowElevation:I

    .line 250
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 251
    return-void
.end method

.method public setShadowEnabled(Z)V
    .locals 4

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "shadowEnabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowEnabled:Z

    .line 209
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 210
    return-void
.end method

.method public setShadowRadius(I)V
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "shadowRadius":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowRadius:I

    .line 269
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 270
    return-void
.end method

.method public setShapedViewModel(Lcom/google/android/material/shape/ShapePathModel;)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, p1

    .local v1, "shapedViewModel":Lcom/google/android/material/shape/ShapePathModel;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->shapedViewModel:Lcom/google/android/material/shape/ShapePathModel;

    .line 120
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 121
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 4

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "strokeWidth":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->strokeWidth:F

    .line 347
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 348
    return-void
.end method

.method public setTint(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "tintColor":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 149
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, p1

    .local v1, "tintList":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintList:Landroid/content/res/ColorStateList;

    .line 135
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()V

    .line 136
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 137
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 142
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()V

    .line 143
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 144
    return-void
.end method

.method public setUseTintColorForShadow(Z)V
    .locals 4

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move v1, p1

    .local v1, "useTintColorForShadow":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->useTintColorForShadow:Z

    .line 298
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 299
    return-void
.end method
