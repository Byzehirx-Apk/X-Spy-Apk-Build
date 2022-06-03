.class public Lcom/google/android/material/shadow/ShadowDrawableWrapper;
.super Landroidx/appcompat/graphics/drawable/DrawableWrapper;
.source "ShadowDrawableWrapper.java"


# static fields
.field static final COS_45:D

.field static final SHADOW_BOTTOM_SCALE:F = 1.0f

.field static final SHADOW_HORIZ_SCALE:F = 0.5f

.field static final SHADOW_MULTIPLIER:F = 1.5f

.field static final SHADOW_TOP_SCALE:F = 0.25f


# instance fields
.field private addPaddingForCorners:Z

.field final contentBounds:Landroid/graphics/RectF;

.field cornerRadius:F

.field final cornerShadowPaint:Landroid/graphics/Paint;

.field cornerShadowPath:Landroid/graphics/Path;

.field private dirty:Z

.field final edgeShadowPaint:Landroid/graphics/Paint;

.field maxShadowSize:F

.field private printedShadowClipWarning:Z

.field rawMaxShadowSize:F

.field rawShadowSize:F

.field private rotation:F

.field private final shadowEndColor:I

.field private final shadowMiddleColor:I

.field shadowSize:F

.field private final shadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->COS_45:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V
    .locals 11

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "content":Landroid/graphics/drawable/Drawable;
    move v3, p3

    .local v3, "radius":F
    move v4, p4

    .local v4, "shadowSize":F
    move/from16 v5, p5

    .local v5, "maxShadowSize":F
    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 68
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    .line 74
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->addPaddingForCorners:Z

    .line 79
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->printedShadowClipWarning:Z

    .line 85
    move-object v6, v0

    move-object v7, v1

    sget v8, Lcom/google/android/material/R$color;->design_fab_shadow_start_color:I

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    iput v7, v6, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowStartColor:I

    .line 86
    move-object v6, v0

    move-object v7, v1

    sget v8, Lcom/google/android/material/R$color;->design_fab_shadow_mid_color:I

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    iput v7, v6, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowMiddleColor:I

    .line 87
    move-object v6, v0

    move-object v7, v1

    sget v8, Lcom/google/android/material/R$color;->design_fab_shadow_end_color:I

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    iput v7, v6, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowEndColor:I

    .line 89
    move-object v6, v0

    new-instance v7, Landroid/graphics/Paint;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v6, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    .line 90
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    move-object v6, v0

    move v7, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 92
    move-object v6, v0

    new-instance v7, Landroid/graphics/RectF;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, v6, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 93
    move-object v6, v0

    new-instance v7, Landroid/graphics/Paint;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v7, v6, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 94
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    move-object v6, v0

    move v7, v4

    move v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 96
    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .locals 9

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    move v2, v3

    .line 358
    .local v2, "verticalOffset":F
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    add-float/2addr v4, v5

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    move v6, v2

    add-float/2addr v5, v6

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    sub-float/2addr v6, v7

    move-object v7, v1

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    move v8, v2

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 364
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    .line 365
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->buildShadowCorners()V

    .line 372
    return-void
.end method

.method private buildShadowCorners()V
    .locals 20

    .prologue
    .line 306
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    new-instance v7, Landroid/graphics/RectF;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    move-object v9, v1

    iget v9, v9, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v9, v9

    move-object v10, v1

    iget v10, v10, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v10, v10

    move-object v11, v1

    iget v11, v11, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    move-object v12, v1

    iget v12, v12, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v2, v7

    .line 307
    .local v2, "innerBounds":Landroid/graphics/RectF;
    new-instance v7, Landroid/graphics/RectF;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    move-object v9, v2

    invoke-direct {v8, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v3, v7

    .line 308
    .local v3, "outerBounds":Landroid/graphics/RectF;
    move-object v7, v3

    move-object v8, v1

    iget v8, v8, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowSize:F

    neg-float v8, v8

    move-object v9, v1

    iget v9, v9, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowSize:F

    neg-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 310
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    if-nez v7, :cond_1

    .line 311
    move-object v7, v1

    new-instance v8, Landroid/graphics/Path;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v8, v7, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    .line 315
    :goto_0
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    sget-object v8, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 316
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    move-object v8, v1

    iget v8, v8, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 317
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    move-object v8, v1

    iget v8, v8, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowSize:F

    neg-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 319
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    move-object v8, v3

    const/high16 v9, 0x43340000    # 180.0f

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 321
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    move-object v8, v2

    const/high16 v9, 0x43870000    # 270.0f

    const/high16 v10, -0x3d4c0000    # -90.0f

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 322
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 324
    move-object v7, v3

    iget v7, v7, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    move v4, v7

    .line 325
    .local v4, "shadowRadius":F
    move v7, v4

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 326
    move-object v7, v1

    iget v7, v7, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    move v8, v4

    div-float/2addr v7, v8

    move v5, v7

    .line 327
    .local v5, "startRatio":F
    move v7, v5

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v5

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    move v6, v7

    .line 328
    .local v6, "midRatio":F
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/RadialGradient;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v4

    const/4 v13, 0x4

    new-array v13, v13, [I

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowStartColor:I

    move/from16 v16, v0

    aput v16, v14, v15

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowMiddleColor:I

    move/from16 v16, v0

    aput v16, v14, v15

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x3

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowEndColor:I

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v14, 0x4

    new-array v14, v14, [F

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x1

    move/from16 v17, v5

    aput v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x2

    move/from16 v17, v6

    aput v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x3

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v15, v16

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v7

    .line 341
    .end local v5    # "startRatio":F
    .end local v6    # "midRatio":F
    :cond_0
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/LinearGradient;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    const/4 v10, 0x0

    move-object v11, v2

    iget v11, v11, Landroid/graphics/RectF;->top:F

    const/4 v12, 0x0

    move-object v13, v3

    iget v13, v13, Landroid/graphics/RectF;->top:F

    const/4 v14, 0x3

    new-array v14, v14, [I

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowStartColor:I

    move/from16 v17, v0

    aput v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowMiddleColor:I

    move/from16 v17, v0

    aput v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowEndColor:I

    move/from16 v17, v0

    aput v17, v15, v16

    const/4 v15, 0x3

    new-array v15, v15, [F

    fill-array-data v15, :array_0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v7

    .line 350
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 351
    return-void

    .line 313
    .end local v4    # "shadowRadius":F
    :cond_1
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0

    .line 341
    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static calculateHorizontalPadding(FFZ)F
    .locals 10

    .prologue
    .line 177
    move v1, p0

    .local v1, "maxShadowSize":F
    move v2, p1

    .local v2, "cornerRadius":F
    move v3, p2

    .local v3, "addPaddingForCorners":Z
    move v4, v3

    if-eqz v4, :cond_0

    .line 178
    move v4, v1

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sget-wide v8, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->COS_45:D

    sub-double/2addr v6, v8

    move v8, v2

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move v1, v4

    .line 180
    .end local v1    # "maxShadowSize":F
    :goto_0
    return v1

    .restart local v1    # "maxShadowSize":F
    :cond_0
    move v4, v1

    move v1, v4

    goto :goto_0
.end method

.method public static calculateVerticalPadding(FFZ)F
    .locals 10

    .prologue
    .line 168
    move v1, p0

    .local v1, "maxShadowSize":F
    move v2, p1

    .local v2, "cornerRadius":F
    move v3, p2

    .local v3, "addPaddingForCorners":Z
    move v4, v3

    if-eqz v4, :cond_0

    .line 169
    move v4, v1

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sget-wide v8, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->COS_45:D

    sub-double/2addr v6, v8

    move v8, v2

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move v1, v4

    .line 171
    .end local v1    # "maxShadowSize":F
    :goto_0
    return v1

    .restart local v1    # "maxShadowSize":F
    :cond_0
    move v4, v1

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    move v1, v4

    goto :goto_0
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 21

    .prologue
    .line 218
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    move-object/from16 v2, p1

    .local v2, "canvas":Landroid/graphics/Canvas;
    move-object v15, v2

    invoke-virtual {v15}, Landroid/graphics/Canvas;->save()I

    move-result v15

    move v3, v15

    .line 219
    .local v3, "rotateSaved":I
    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rotation:F

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->centerX()F

    move-result v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->centerY()F

    move-result v18

    invoke-virtual/range {v15 .. v18}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 221
    move-object v15, v1

    iget v15, v15, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v15, v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowSize:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move v4, v15

    .line 222
    .local v4, "edgeShadowTop":F
    move-object v15, v1

    iget v15, v15, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    move v5, v15

    .line 223
    .local v5, "shadowOffset":F
    move-object v15, v1

    iget-object v15, v15, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v17, v5

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_4

    const/4 v15, 0x1

    :goto_0
    move v6, v15

    .line 224
    .local v6, "drawHorizontalEdges":Z
    move-object v15, v1

    iget-object v15, v15, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v17, v5

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_5

    const/4 v15, 0x1

    :goto_1
    move v7, v15

    .line 226
    .local v7, "drawVerticalEdges":Z
    move-object v15, v1

    iget v15, v15, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    move/from16 v16, v0

    const/high16 v17, 0x3e800000    # 0.25f

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    move v8, v15

    .line 227
    .local v8, "shadowOffsetTop":F
    move-object v15, v1

    iget v15, v15, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    move/from16 v16, v0

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    move v9, v15

    .line 228
    .local v9, "shadowOffsetHorizontal":F
    move-object v15, v1

    iget v15, v15, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    move v10, v15

    .line 230
    .local v10, "shadowOffsetBottom":F
    move v15, v5

    move/from16 v16, v5

    move/from16 v17, v9

    add-float v16, v16, v17

    div-float v15, v15, v16

    move v11, v15

    .line 231
    .local v11, "shadowScaleHorizontal":F
    move v15, v5

    move/from16 v16, v5

    move/from16 v17, v8

    add-float v16, v16, v17

    div-float v15, v15, v16

    move v12, v15

    .line 232
    .local v12, "shadowScaleTop":F
    move v15, v5

    move/from16 v16, v5

    move/from16 v17, v10

    add-float v16, v16, v17

    div-float v15, v15, v16

    move v13, v15

    .line 235
    .local v13, "shadowScaleBottom":F
    move-object v15, v2

    invoke-virtual {v15}, Landroid/graphics/Canvas;->save()I

    move-result v15

    move v14, v15

    .line 236
    .local v14, "saved":I
    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v17, v5

    add-float v16, v16, v17

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move/from16 v18, v5

    add-float v17, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->translate(FF)V

    .line 237
    move-object v15, v2

    move/from16 v16, v11

    move/from16 v17, v12

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->scale(FF)V

    .line 238
    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 239
    move v15, v6

    if-eqz v15, :cond_0

    .line 241
    move-object v15, v2

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v17, v11

    div-float v16, v16, v17

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->scale(FF)V

    .line 242
    move-object v15, v2

    const/16 v16, 0x0

    move/from16 v17, v4

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    .line 245
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v20, v5

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    .line 242
    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 249
    :cond_0
    move-object v15, v2

    move/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 251
    move-object v15, v2

    invoke-virtual {v15}, Landroid/graphics/Canvas;->save()I

    move-result v15

    move v14, v15

    .line 252
    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    move/from16 v17, v5

    sub-float v16, v16, v17

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    move/from16 v18, v5

    sub-float v17, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->translate(FF)V

    .line 253
    move-object v15, v2

    move/from16 v16, v11

    move/from16 v17, v13

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->scale(FF)V

    .line 254
    move-object v15, v2

    const/high16 v16, 0x43340000    # 180.0f

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Canvas;->rotate(F)V

    .line 255
    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 256
    move v15, v6

    if-eqz v15, :cond_1

    .line 258
    move-object v15, v2

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v17, v11

    div-float v16, v16, v17

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->scale(FF)V

    .line 259
    move-object v15, v2

    const/16 v16, 0x0

    move/from16 v17, v4

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    .line 262
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v20, v5

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowSize:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    .line 259
    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 266
    :cond_1
    move-object v15, v2

    move/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 268
    move-object v15, v2

    invoke-virtual {v15}, Landroid/graphics/Canvas;->save()I

    move-result v15

    move v14, v15

    .line 269
    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v17, v5

    add-float v16, v16, v17

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    move/from16 v18, v5

    sub-float v17, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->translate(FF)V

    .line 270
    move-object v15, v2

    move/from16 v16, v11

    move/from16 v17, v13

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->scale(FF)V

    .line 271
    move-object v15, v2

    const/high16 v16, 0x43870000    # 270.0f

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Canvas;->rotate(F)V

    .line 272
    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 273
    move v15, v7

    if-eqz v15, :cond_2

    .line 275
    move-object v15, v2

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v17, v13

    div-float v16, v16, v17

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->scale(FF)V

    .line 276
    move-object v15, v2

    const/16 v16, 0x0

    move/from16 v17, v4

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    .line 279
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v20, v5

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    .line 276
    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 283
    :cond_2
    move-object v15, v2

    move/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 285
    move-object v15, v2

    invoke-virtual {v15}, Landroid/graphics/Canvas;->save()I

    move-result v15

    move v14, v15

    .line 286
    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    move/from16 v17, v5

    sub-float v16, v16, v17

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move/from16 v18, v5

    add-float v17, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->translate(FF)V

    .line 287
    move-object v15, v2

    move/from16 v16, v11

    move/from16 v17, v12

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->scale(FF)V

    .line 288
    move-object v15, v2

    const/high16 v16, 0x42b40000    # 90.0f

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Canvas;->rotate(F)V

    .line 289
    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 290
    move v15, v7

    if-eqz v15, :cond_3

    .line 292
    move-object v15, v2

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v17, v12

    div-float v16, v16, v17

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->scale(FF)V

    .line 293
    move-object v15, v2

    const/16 v16, 0x0

    move/from16 v17, v4

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    .line 296
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v20, v5

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    .line 293
    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 300
    :cond_3
    move-object v15, v2

    move/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 302
    move-object v15, v2

    move/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 303
    return-void

    .line 223
    .end local v6    # "drawHorizontalEdges":Z
    .end local v7    # "drawVerticalEdges":Z
    .end local v8    # "shadowOffsetTop":F
    .end local v9    # "shadowOffsetHorizontal":F
    .end local v10    # "shadowOffsetBottom":F
    .end local v11    # "shadowScaleHorizontal":F
    .end local v12    # "shadowScaleTop":F
    .end local v13    # "shadowScaleBottom":F
    .end local v14    # "saved":I
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 224
    .restart local v6    # "drawHorizontalEdges":Z
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_1
.end method

.method private static toEven(F)I
    .locals 4

    .prologue
    .line 100
    move v0, p0

    .local v0, "value":F
    move v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v1, v2

    .line 101
    .local v1, "i":I
    move v2, v1

    const/4 v3, 0x2

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v1

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    move v0, v2

    .end local v0    # "value":F
    return v0

    .restart local v0    # "value":F
    :cond_0
    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    if-eqz v2, :cond_0

    .line 202
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->buildComponents(Landroid/graphics/Rect;)V

    .line 203
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    .line 205
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->drawShadow(Landroid/graphics/Canvas;)V

    .line 207
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 208
    return-void
.end method

.method public getCornerRadius()F
    .locals 2

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    return v0
.end method

.method public getMaxShadowSize()F
    .locals 2

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    return v0
.end method

.method public getMinHeight()F
    .locals 7

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    const/high16 v2, 0x40000000    # 2.0f

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 393
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    move v1, v2

    .line 394
    .local v1, "content":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    return v0
.end method

.method public getMinWidth()F
    .locals 7

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    const/high16 v2, 0x40000000    # 2.0f

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    move v1, v2

    .line 388
    .local v1, "content":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    const/4 v1, -0x3

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 9

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    move-object v1, p1

    .local v1, "padding":Landroid/graphics/Rect;
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->addPaddingForCorners:Z

    .line 157
    invoke-static {v4, v5, v6}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->calculateVerticalPadding(FFZ)F

    move-result v4

    float-to-double v4, v4

    .line 156
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    move v2, v4

    .line 158
    .local v2, "vOffset":I
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->addPaddingForCorners:Z

    .line 161
    invoke-static {v4, v5, v6}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->calculateHorizontalPadding(FFZ)F

    move-result v4

    float-to-double v4, v4

    .line 160
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    move v3, v4

    .line 162
    .local v3, "hOffset":I
    move-object v4, v1

    move v5, v3

    move v6, v2

    move v7, v3

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 163
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    return v0
.end method

.method public getShadowSize()F
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    .line 119
    return-void
.end method

.method public setAddPaddingForCorners(Z)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    move v1, p1

    .local v1, "addPaddingForCorners":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->addPaddingForCorners:Z

    .line 106
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->invalidateSelf()V

    .line 107
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    move v1, p1

    .local v1, "alpha":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->setAlpha(I)V

    .line 112
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 114
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 4

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    move v1, p1

    .local v1, "radius":F
    move v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    move v1, v2

    .line 191
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 192
    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 195
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    .line 196
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->invalidateSelf()V

    .line 197
    goto :goto_0
.end method

.method public setMaxShadowSize(F)V
    .locals 5

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    move v1, p1

    .local v1, "size":F
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 380
    return-void
.end method

.method public final setRotation(F)V
    .locals 4

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    move v1, p1

    .local v1, "rotation":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rotation:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 212
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rotation:F

    .line 213
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->invalidateSelf()V

    .line 215
    :cond_0
    return-void
.end method

.method public setShadowSize(F)V
    .locals 5

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    move v1, p1

    .local v1, "size":F
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 146
    return-void
.end method

.method public setShadowSize(FF)V
    .locals 7

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shadow/ShadowDrawableWrapper;
    move v1, p1

    .local v1, "shadowSize":F
    move v2, p2

    .local v2, "maxShadowSize":F
    move v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 123
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "invalid shadow size"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    :cond_1
    move v3, v1

    invoke-static {v3}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->toEven(F)I

    move-result v3

    int-to-float v3, v3

    move v1, v3

    .line 126
    move v3, v2

    invoke-static {v3}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->toEven(F)I

    move-result v3

    int-to-float v3, v3

    move v2, v3

    .line 127
    move v3, v1

    move v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 128
    move v3, v2

    move v1, v3

    .line 129
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->printedShadowClipWarning:Z

    if-nez v3, :cond_2

    .line 130
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->printedShadowClipWarning:Z

    .line 133
    :cond_2
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    move v4, v1

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    move v4, v2

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 134
    .line 142
    :goto_0
    return-void

    .line 136
    :cond_3
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    .line 137
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    .line 138
    move-object v3, v0

    move v4, v1

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowSize:F

    .line 139
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->maxShadowSize:F

    .line 140
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    .line 141
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->invalidateSelf()V

    .line 142
    goto :goto_0
.end method
