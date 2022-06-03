.class public Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "BottomAppBarTopEdgeTreatment.java"


# static fields
.field private static final ANGLE_LEFT:I = 0xb4

.field private static final ANGLE_UP:I = 0x10e

.field private static final ARC_HALF:I = 0xb4

.field private static final ARC_QUARTER:I = 0x5a


# instance fields
.field private cradleVerticalOffset:F

.field private fabDiameter:F

.field private fabMargin:F

.field private horizontalOffset:F

.field private roundedCornerRadius:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 8

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    move v1, p1

    .local v1, "fabMargin":F
    move v2, p2

    .local v2, "roundedCornerRadius":F
    move v3, p3

    .local v3, "cradleVerticalOffset":F
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 57
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 58
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 59
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 61
    move v4, v3

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 62
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "cradleVerticalOffset must be positive."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 64
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 65
    return-void
.end method


# virtual methods
.method getCradleVerticalOffset()F
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    return v0
.end method

.method public getEdgePath(FFLcom/google/android/material/shape/ShapePath;)V
    .locals 28

    .prologue
    .line 69
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    move/from16 v3, p1

    .local v3, "length":F
    move/from16 v4, p2

    .local v4, "interpolation":F
    move-object/from16 v5, p3

    .local v5, "shapePath":Lcom/google/android/material/shape/ShapePath;
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_0

    .line 71
    move-object/from16 v20, v5

    move/from16 v21, v3

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 72
    .line 145
    :goto_0
    return-void

    .line 75
    :cond_0
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v6, v20

    .line 76
    .local v6, "cradleDiameter":F
    move/from16 v20, v6

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v7, v20

    .line 77
    .local v7, "cradleRadius":F
    move/from16 v20, v4

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v8, v20

    .line 78
    .local v8, "roundedCornerOffset":F
    move/from16 v20, v3

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v9, v20

    .line 82
    .local v9, "middle":F
    move/from16 v20, v4

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v22, v4

    sub-float v21, v21, v22

    move/from16 v22, v7

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v10, v20

    .line 84
    .local v10, "verticalOffset":F
    move/from16 v20, v10

    move/from16 v21, v7

    div-float v20, v20, v21

    move/from16 v11, v20

    .line 85
    .local v11, "verticalOffsetRatio":F
    move/from16 v20, v11

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_1

    .line 88
    move-object/from16 v20, v5

    move/from16 v21, v3

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 89
    goto :goto_0

    .line 98
    :cond_1
    move/from16 v20, v7

    move/from16 v21, v8

    add-float v20, v20, v21

    move/from16 v12, v20

    .line 99
    .local v12, "distanceBetweenCenters":F
    move/from16 v20, v12

    move/from16 v21, v12

    mul-float v20, v20, v21

    move/from16 v13, v20

    .line 100
    .local v13, "distanceBetweenCentersSquared":F
    move/from16 v20, v10

    move/from16 v21, v8

    add-float v20, v20, v21

    move/from16 v14, v20

    .line 101
    .local v14, "distanceY":F
    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v22, v14

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v15, v20

    .line 104
    .local v15, "distanceX":F
    move/from16 v20, v9

    move/from16 v21, v15

    sub-float v20, v20, v21

    move/from16 v16, v20

    .line 105
    .local v16, "leftRoundedCornerCircleX":F
    move/from16 v20, v9

    move/from16 v21, v15

    add-float v20, v20, v21

    move/from16 v17, v20

    .line 108
    .local v17, "rightRoundedCornerCircleX":F
    move/from16 v20, v15

    move/from16 v21, v14

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->atan(D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v18, v20

    .line 109
    .local v18, "cornerRadiusArcLength":F
    const/high16 v20, 0x42b40000    # 90.0f

    move/from16 v21, v18

    sub-float v20, v20, v21

    move/from16 v19, v20

    .line 112
    .local v19, "cutoutArcOffset":F
    move-object/from16 v20, v5

    move/from16 v21, v16

    move/from16 v22, v8

    sub-float v21, v21, v22

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 116
    move-object/from16 v20, v5

    move/from16 v21, v16

    move/from16 v22, v8

    sub-float v21, v21, v22

    const/16 v22, 0x0

    move/from16 v23, v16

    move/from16 v24, v8

    add-float v23, v23, v24

    move/from16 v24, v8

    const/high16 v25, 0x40000000    # 2.0f

    mul-float v24, v24, v25

    const/high16 v25, 0x43870000    # 270.0f

    move/from16 v26, v18

    invoke-virtual/range {v20 .. v26}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 125
    move-object/from16 v20, v5

    move/from16 v21, v9

    move/from16 v22, v7

    sub-float v21, v21, v22

    move/from16 v22, v7

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v10

    sub-float v22, v22, v23

    move/from16 v23, v9

    move/from16 v24, v7

    add-float v23, v23, v24

    move/from16 v24, v7

    move/from16 v25, v10

    sub-float v24, v24, v25

    const/high16 v25, 0x43340000    # 180.0f

    move/from16 v26, v19

    sub-float v25, v25, v26

    move/from16 v26, v19

    const/high16 v27, 0x40000000    # 2.0f

    mul-float v26, v26, v27

    const/high16 v27, 0x43340000    # 180.0f

    sub-float v26, v26, v27

    invoke-virtual/range {v20 .. v26}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 135
    move-object/from16 v20, v5

    move/from16 v21, v17

    move/from16 v22, v8

    sub-float v21, v21, v22

    const/16 v22, 0x0

    move/from16 v23, v17

    move/from16 v24, v8

    add-float v23, v23, v24

    move/from16 v24, v8

    const/high16 v25, 0x40000000    # 2.0f

    mul-float v24, v24, v25

    const/high16 v25, 0x43870000    # 270.0f

    move/from16 v26, v18

    sub-float v25, v25, v26

    move/from16 v26, v18

    invoke-virtual/range {v20 .. v26}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 144
    move-object/from16 v20, v5

    move/from16 v21, v3

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 145
    goto/16 :goto_0
.end method

.method getFabCradleMargin()F
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    return v0
.end method

.method getFabCradleRoundedCornerRadius()F
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    return v0
.end method

.method getFabDiameter()F
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    return v0
.end method

.method getHorizontalOffset()F
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    return v0
.end method

.method setCradleVerticalOffset(F)V
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    move v1, p1

    .local v1, "cradleVerticalOffset":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 173
    return-void
.end method

.method setFabCradleMargin(F)V
    .locals 4

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    move v1, p1

    .local v1, "fabMargin":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 189
    return-void
.end method

.method setFabCradleRoundedCornerRadius(F)V
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    move v1, p1

    .local v1, "roundedCornerRadius":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 197
    return-void
.end method

.method setFabDiameter(F)V
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    move v1, p1

    .local v1, "fabDiameter":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    .line 181
    return-void
.end method

.method setHorizontalOffset(F)V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    move v1, p1

    .local v1, "horizontalOffset":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 150
    return-void
.end method
