.class public Lcom/google/appinventor/components/runtime/util/PolyUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Path;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v1, v0

    new-instance v2, Landroid/graphics/Path;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/util/PolyUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Path;

    .line 22
    move-object v1, v0

    new-instance v2, Landroid/graphics/RectF;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/util/PolyUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/RectF;

    return-void
.end method

.method private static wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(D)D
    .locals 6

    .prologue
    .line 180
    move-wide v0, p0

    move-wide v2, v0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method


# virtual methods
.method public constructPolygonPath(Landroid/graphics/Path;IFFFFF)V
    .locals 29
    .param p1    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x3L
        .end annotation
    .end param
    .param p5    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param
    .param p6    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 82
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    .line 84
    move/from16 v22, v8

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x4066800000000000L    # 180.0

    move/from16 v26, v5

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Lcom/google/appinventor/components/runtime/util/PolyUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(D)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move/from16 v28, v22

    move/from16 v22, v28

    move/from16 v23, v28

    .line 86
    move/from16 v11, v23

    move/from16 v23, v9

    cmpg-float v22, v22, v23

    if-gez v22, :cond_0

    .line 87
    move-object/from16 v22, v4

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v11

    sget-object v26, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 110
    :goto_0
    return-void

    .line 89
    :cond_0
    move/from16 v22, v9

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v22, v22, v24

    if-gez v22, :cond_3

    .line 90
    move-object/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v8

    move/from16 v9, v24

    move/from16 v8, v23

    move-object/from16 v5, v22

    .line 1119
    const/16 v22, 0x0

    move/from16 v12, v22

    :goto_1
    move/from16 v22, v12

    move/from16 v23, v8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 1120
    move/from16 v22, v12

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x4076800000000000L    # 360.0

    move/from16 v26, v8

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    mul-double v22, v22, v24

    move-wide/from16 v16, v22

    .line 1121
    move/from16 v22, v6

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v24, v9

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v16

    invoke-static/range {v26 .. v27}, Lcom/google/appinventor/components/runtime/util/PolyUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(D)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move/from16 v13, v22

    .line 1122
    move/from16 v22, v7

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v24, v9

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v16

    invoke-static/range {v26 .. v27}, Lcom/google/appinventor/components/runtime/util/PolyUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(D)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move/from16 v18, v22

    .line 1124
    move/from16 v22, v12

    if-nez v22, :cond_1

    .line 1125
    move-object/from16 v22, v5

    move/from16 v23, v13

    move/from16 v24, v18

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1119
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1127
    :cond_1
    move-object/from16 v22, v5

    move/from16 v23, v13

    move/from16 v24, v18

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 1132
    :cond_2
    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->close()V

    .line 90
    .line 106
    :goto_3
    new-instance v22, Landroid/graphics/Matrix;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    .line 107
    move-object/from16 v5, v23

    move/from16 v23, v10

    move/from16 v24, v6

    move/from16 v25, v7

    invoke-virtual/range {v22 .. v25}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 108
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 110
    goto/16 :goto_0

    .line 97
    :cond_3
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v12, v26

    move/from16 v11, v25

    move/from16 v9, v24

    move-object/from16 v8, v23

    move-object/from16 v5, v22

    .line 1143
    const-wide v22, 0x4056800000000000L    # 90.0

    const-wide v24, 0x4066800000000000L    # 180.0

    move/from16 v26, v9

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    sub-double v22, v22, v24

    move-wide/from16 v16, v22

    .line 1144
    const-wide v22, 0x4056800000000000L    # 90.0

    move-wide/from16 v24, v16

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move/from16 v13, v22

    .line 1145
    move/from16 v22, v11

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v24, v12

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v16

    invoke-static/range {v26 .. v27}, Lcom/google/appinventor/components/runtime/util/PolyUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(D)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    div-double v24, v24, v26

    sub-double v22, v22, v24

    move-wide/from16 v18, v22

    .line 1147
    const/16 v22, 0x0

    move/from16 v11, v22

    :goto_4
    move/from16 v22, v11

    move/from16 v23, v9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 1148
    move/from16 v22, v11

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x4076800000000000L    # 360.0

    move/from16 v26, v9

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    mul-double v22, v22, v24

    move-wide/from16 v20, v22

    .line 1149
    move/from16 v22, v6

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v18

    move-wide/from16 v26, v20

    invoke-static/range {v26 .. v27}, Lcom/google/appinventor/components/runtime/util/PolyUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(D)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move/from16 v14, v22

    .line 1150
    move/from16 v22, v7

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v18

    move-wide/from16 v26, v20

    invoke-static/range {v26 .. v27}, Lcom/google/appinventor/components/runtime/util/PolyUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(D)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move/from16 v15, v22

    .line 1152
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/PolyUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move/from16 v23, v14

    move/from16 v24, v12

    sub-float v23, v23, v24

    move/from16 v24, v15

    move/from16 v25, v12

    sub-float v24, v24, v25

    move/from16 v25, v14

    move/from16 v26, v12

    add-float v25, v25, v26

    move/from16 v26, v15

    move/from16 v27, v12

    add-float v26, v26, v27

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1169
    move-object/from16 v22, v8

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/PolyUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-wide/from16 v24, v20

    move/from16 v26, v13

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v13

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v25, v25, v26

    invoke-virtual/range {v22 .. v25}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 1147
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 1176
    :cond_4
    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->close()V

    goto/16 :goto_3
.end method

.method public drawPolygon(Landroid/graphics/Canvas;IFFFFFLandroid/graphics/Paint;)V
    .locals 18
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x3L
        .end annotation
    .end param
    .param p5    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param
    .param p6    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .param p8    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, v0

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/util/PolyUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Path;

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    invoke-virtual/range {v9 .. v16}, Lcom/google/appinventor/components/runtime/util/PolyUtil;->constructPolygonPath(Landroid/graphics/Path;IFFFFF)V

    .line 57
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/util/PolyUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Path;

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 58
    return-void
.end method
