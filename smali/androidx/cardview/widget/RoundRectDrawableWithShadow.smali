.class Landroidx/cardview/widget/RoundRectDrawableWithShadow;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawableWithShadow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;
    }
.end annotation


# static fields
.field private static final COS_45:D

.field private static final SHADOW_MULTIPLIER:F = 1.5f

.field static sRoundRectHelper:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;


# instance fields
.field private mAddPaddingForCorners:Z

.field private mBackground:Landroid/content/res/ColorStateList;

.field private final mCardBounds:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private mCornerShadowPaint:Landroid/graphics/Paint;

.field private mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field private mEdgeShadowPaint:Landroid/graphics/Paint;

.field private final mInsetShadow:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPrintedShadowClipWarning:Z

.field private mRawMaxShadowSize:F

.field private mRawShadowSize:F

.field private final mShadowEndColor:I

.field private mShadowSize:F

.field private final mShadowStartColor:I


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

    sput-wide v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V
    .locals 11

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v1, p1

    .local v1, "resources":Landroid/content/res/Resources;
    move-object v2, p2

    .local v2, "backgroundColor":Landroid/content/res/ColorStateList;
    move v3, p3

    .local v3, "radius":F
    move v4, p4

    .local v4, "shadowSize":F
    move/from16 v5, p5

    .local v5, "maxShadowSize":F
    move-object v6, v0

    invoke-direct {v6}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 78
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 84
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 89
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    .line 93
    move-object v6, v0

    move-object v7, v1

    sget v8, Landroidx/cardview/R$color;->cardview_shadow_start_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    .line 94
    move-object v6, v0

    move-object v7, v1

    sget v8, Landroidx/cardview/R$color;->cardview_shadow_end_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    .line 95
    move-object v6, v0

    move-object v7, v1

    sget v8, Landroidx/cardview/R$dimen;->cardview_compat_inset_shadow:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    .line 96
    move-object v6, v0

    new-instance v7, Landroid/graphics/Paint;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 97
    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 98
    move-object v6, v0

    new-instance v7, Landroid/graphics/Paint;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 99
    move-object v6, v0

    iget-object v6, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    move-object v6, v0

    move v7, v3

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    iput v7, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 101
    move-object v6, v0

    new-instance v7, Landroid/graphics/RectF;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 102
    move-object v6, v0

    new-instance v7, Landroid/graphics/Paint;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    iget-object v9, v9, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v7, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 103
    move-object v6, v0

    iget-object v6, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    move-object v6, v0

    move v7, v4

    move v8, v5

    invoke-direct {v6, v7, v8}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    .line 105
    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .locals 9

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v3, v0

    iget v3, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    move v2, v3

    .line 335
    .local v2, "verticalOffset":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

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

    iget v7, v7, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    sub-float/2addr v6, v7

    move-object v7, v1

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    move v8, v2

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 337
    move-object v3, v0

    invoke-direct {v3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->buildShadowCorners()V

    .line 338
    return-void
.end method

.method private buildShadowCorners()V
    .locals 17

    .prologue
    .line 297
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    new-instance v4, Landroid/graphics/RectF;

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    move-object v6, v0

    iget v6, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v6, v6

    move-object v7, v0

    iget v7, v7, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v7, v7

    move-object v8, v0

    iget v8, v8, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    move-object v9, v0

    iget v9, v9, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, v4

    .line 298
    .local v1, "innerBounds":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/RectF;

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v2, v4

    .line 299
    .local v2, "outerBounds":Landroid/graphics/RectF;
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v5, v5

    move-object v6, v0

    iget v6, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 301
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    if-nez v4, :cond_0

    .line 302
    move-object v4, v0

    new-instance v5, Landroid/graphics/Path;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 306
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 307
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    move-object v5, v0

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 308
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    move-object v5, v0

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 310
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    move-object v5, v2

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 312
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    move-object v5, v1

    const/high16 v6, 0x43870000    # 270.0f

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 313
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 314
    move-object v4, v0

    iget v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    move-object v5, v0

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    move-object v6, v0

    iget v6, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    move v3, v4

    .line 315
    .local v3, "startRatio":F
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/RadialGradient;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    move-object v10, v0

    iget v10, v10, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float/2addr v9, v10

    const/4 v10, 0x3

    new-array v10, v10, [I

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    move-object v13, v0

    iget v13, v13, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    aput v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    move-object v13, v0

    iget v13, v13, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    aput v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x2

    move-object v13, v0

    iget v13, v13, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    aput v13, v11, v12

    const/4 v11, 0x3

    new-array v11, v11, [F

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x1

    move v14, v3

    aput v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x2

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v4

    .line 323
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/LinearGradient;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v8, v8

    move-object v9, v0

    iget v9, v9, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float/2addr v8, v9

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v10, v10

    move-object v11, v0

    iget v11, v11, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    sub-float/2addr v10, v11

    const/4 v11, 0x3

    new-array v11, v11, [I

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v0

    iget v14, v14, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    aput v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x1

    move-object v14, v0

    iget v14, v14, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    aput v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x2

    move-object v14, v0

    iget v14, v14, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    aput v14, v12, v13

    const/4 v12, 0x3

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v4

    .line 327
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 328
    return-void

    .line 304
    .end local v3    # "startRatio":F
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0

    .line 323
    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static calculateHorizontalPadding(FFZ)F
    .locals 10

    .prologue
    .line 189
    move v1, p0

    .local v1, "maxShadowSize":F
    move v2, p1

    .local v2, "cornerRadius":F
    move v3, p2

    .local v3, "addPaddingForCorners":Z
    move v4, v3

    if-eqz v4, :cond_0

    .line 190
    move v4, v1

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sget-wide v8, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    sub-double/2addr v6, v8

    move v8, v2

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move v1, v4

    .line 192
    .end local v1    # "maxShadowSize":F
    :goto_0
    return v1

    .restart local v1    # "maxShadowSize":F
    :cond_0
    move v4, v1

    move v1, v4

    goto :goto_0
.end method

.method static calculateVerticalPadding(FFZ)F
    .locals 10

    .prologue
    .line 180
    move v1, p0

    .local v1, "maxShadowSize":F
    move v2, p1

    .local v2, "cornerRadius":F
    move v3, p2

    .local v3, "addPaddingForCorners":Z
    move v4, v3

    if-eqz v4, :cond_0

    .line 181
    move v4, v1

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sget-wide v8, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    sub-double/2addr v6, v8

    move v8, v2

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move v1, v4

    .line 183
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
    .locals 13

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v7, v0

    iget v7, v7, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v7, v7

    move-object v8, v0

    iget v8, v8, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    sub-float/2addr v7, v8

    move v2, v7

    .line 250
    .local v2, "edgeShadowTop":F
    move-object v7, v0

    iget v7, v7, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    move-object v8, v0

    iget v8, v8, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    move v3, v7

    .line 251
    .local v3, "inset":F
    move-object v7, v0

    iget-object v7, v7, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    move v9, v3

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    const/4 v7, 0x1

    :goto_0
    move v4, v7

    .line 252
    .local v4, "drawHorizontalEdges":Z
    move-object v7, v0

    iget-object v7, v7, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    move v9, v3

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    const/4 v7, 0x1

    :goto_1
    move v5, v7

    .line 254
    .local v5, "drawVerticalEdges":Z
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v6, v7

    .line 255
    .local v6, "saved":I
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move v9, v3

    add-float/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    move v10, v3

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 256
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 257
    move v7, v4

    if-eqz v7, :cond_0

    .line 258
    move-object v7, v1

    const/4 v8, 0x0

    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 259
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    move v12, v3

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v11, v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 258
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 262
    :cond_0
    move-object v7, v1

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 264
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v6, v7

    .line 265
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    move v9, v3

    sub-float/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    move v10, v3

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 266
    move-object v7, v1

    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 267
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 268
    move v7, v4

    if-eqz v7, :cond_1

    .line 269
    move-object v7, v1

    const/4 v8, 0x0

    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 270
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    move v12, v3

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v11, v11

    move-object v12, v0

    iget v12, v12, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 269
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 273
    :cond_1
    move-object v7, v1

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 275
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v6, v7

    .line 276
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move v9, v3

    add-float/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    move v10, v3

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 277
    move-object v7, v1

    const/high16 v8, 0x43870000    # 270.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 278
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 279
    move v7, v5

    if-eqz v7, :cond_2

    .line 280
    move-object v7, v1

    const/4 v8, 0x0

    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 281
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    move v12, v3

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v11, v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 280
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 283
    :cond_2
    move-object v7, v1

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 285
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v6, v7

    .line 286
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    move v9, v3

    sub-float/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    move v10, v3

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 287
    move-object v7, v1

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 288
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 289
    move v7, v5

    if-eqz v7, :cond_3

    .line 290
    move-object v7, v1

    const/4 v8, 0x0

    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 291
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    move v12, v3

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v11, v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 290
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 293
    :cond_3
    move-object v7, v1

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 294
    return-void

    .line 251
    .end local v4    # "drawHorizontalEdges":Z
    .end local v5    # "drawVerticalEdges":Z
    .end local v6    # "saved":I
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 252
    .restart local v4    # "drawHorizontalEdges":Z
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_1
.end method

.method private setBackground(Landroid/content/res/ColorStateList;)V
    .locals 6

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v1, p1

    .local v1, "color":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    .line 109
    move-object v2, v0

    iget-object v2, v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget-object v3, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getState()[I

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    return-void

    .line 108
    :cond_0
    move-object v3, v1

    goto :goto_0
.end method

.method private setShadowSize(FF)V
    .locals 8

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move v1, p1

    .local v1, "shadowSize":F
    move v2, p2

    .local v2, "maxShadowSize":F
    move v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 143
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid shadow size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". Must be >= 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    :cond_0
    move v3, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 147
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid max shadow size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". Must be >= 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 150
    :cond_1
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->toEven(F)I

    move-result v3

    int-to-float v3, v3

    move v1, v3

    .line 151
    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->toEven(F)I

    move-result v3

    int-to-float v3, v3

    move v2, v3

    .line 152
    move v3, v1

    move v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 153
    move v3, v2

    move v1, v3

    .line 154
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    if-nez v3, :cond_2

    .line 155
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    .line 158
    :cond_2
    move-object v3, v0

    iget v3, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    move v4, v1

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    move-object v3, v0

    iget v3, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    move v4, v2

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 159
    .line 166
    :goto_0
    return-void

    .line 161
    :cond_3
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    .line 162
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 163
    move-object v3, v0

    move v4, v1

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 164
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 165
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 166
    goto :goto_0
.end method

.method private toEven(F)I
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move v1, p1

    .local v1, "value":F
    move v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    move v2, v3

    .line 117
    .local v2, "i":I
    move v3, v2

    const/4 v4, 0x2

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 118
    move v3, v2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    .line 120
    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    :cond_0
    move v3, v2

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    if-eqz v2, :cond_0

    .line 239
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->buildComponents(Landroid/graphics/Rect;)V

    .line 240
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 242
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 243
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->drawShadow(Landroid/graphics/Canvas;)V

    .line 244
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    sget-object v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    move-object v6, v0

    iget-object v6, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v2, v3, v4, v5, v6}, Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    .line 246
    return-void
.end method

.method getColor()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    return-object v0
.end method

.method getCornerRadius()F
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v1, v0

    iget v1, v1, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    return v0
.end method

.method getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v1, p1

    .local v1, "into":Landroid/graphics/Rect;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    .line 346
    return-void
.end method

.method getMaxShadowSize()F
    .locals 2

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v1, v0

    iget v1, v1, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    return v0
.end method

.method getMinHeight()F
    .locals 7

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    const/high16 v2, 0x40000000    # 2.0f

    move-object v3, v0

    iget v3, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    move-object v4, v0

    iget v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    move-object v5, v0

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    move v1, v2

    .line 373
    .local v1, "content":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    return v0
.end method

.method getMinWidth()F
    .locals 7

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    const/high16 v2, 0x40000000    # 2.0f

    move-object v3, v0

    iget v3, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    move-object v4, v0

    iget v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    move-object v5, v0

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 366
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    move v1, v2

    .line 367
    .local v1, "content":F
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    move-object v4, v0

    iget v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    const/4 v1, -0x3

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 9

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v1, p1

    .local v1, "padding":Landroid/graphics/Rect;
    move-object v4, v0

    iget v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    move-object v5, v0

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    invoke-static {v4, v5, v6}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    move v2, v4

    .line 172
    .local v2, "vOffset":I
    move-object v4, v0

    iget v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    move-object v5, v0

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    invoke-static {v4, v5, v6}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    move v3, v4

    .line 174
    .local v3, "hOffset":I
    move-object v4, v1

    move v5, v3

    move v6, v2

    move v7, v3

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 175
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    return v0
.end method

.method getShadowSize()F
    .locals 2

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v1, v0

    iget v1, v1, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    return v0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    return v0

    .restart local v0    # "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 138
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 139
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 6

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v1, p1

    .local v1, "stateSet":[I
    move-object v3, v0

    iget-object v3, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    move v2, v3

    .line 199
    .local v2, "newColor":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    move v4, v2

    if-ne v3, v4, :cond_0

    .line 200
    const/4 v3, 0x0

    move v0, v3

    .line 205
    .end local v0    # "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    :goto_0
    return v0

    .line 202
    .restart local v0    # "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 204
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 205
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method setAddPaddingForCorners(Z)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move v1, p1

    .local v1, "addPaddingForCorners":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 125
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 126
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move v1, p1

    .local v1, "alpha":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    move-object v2, v0

    iget-object v2, v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    move-object v2, v0

    iget-object v2, v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    return-void
.end method

.method setColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v1, p1

    .local v1, "color":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 378
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 379
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v1, p1

    .local v1, "cf":Landroid/graphics/ColorFilter;
    move-object v2, v0

    iget-object v2, v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 216
    return-void
.end method

.method setCornerRadius(F)V
    .locals 7

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move v1, p1

    .local v1, "radius":F
    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 225
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid radius "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Must be >= 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_0
    move v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    move v1, v2

    .line 228
    move-object v2, v0

    iget v2, v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 229
    .line 234
    :goto_0
    return-void

    .line 231
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 232
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 233
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 234
    goto :goto_0
.end method

.method setMaxShadowSize(F)V
    .locals 5

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move v1, p1

    .local v1, "size":F
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    .line 354
    return-void
.end method

.method setShadowSize(F)V
    .locals 5

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move v1, p1

    .local v1, "size":F
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    invoke-direct {v2, v3, v4}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    .line 350
    return-void
.end method
