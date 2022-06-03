.class public final Lcom/google/android/material/internal/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEBUG_DRAW:Z

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private boundsChanged:Z

.field private final collapsedBounds:Landroid/graphics/Rect;

.field private collapsedDrawX:F

.field private collapsedDrawY:F

.field private collapsedShadowColor:I

.field private collapsedShadowDx:F

.field private collapsedShadowDy:F

.field private collapsedShadowRadius:F

.field private collapsedTextColor:Landroid/content/res/ColorStateList;

.field private collapsedTextGravity:I

.field private collapsedTextSize:F

.field private collapsedTypeface:Landroid/graphics/Typeface;

.field private final currentBounds:Landroid/graphics/RectF;

.field private currentDrawX:F

.field private currentDrawY:F

.field private currentTextSize:F

.field private currentTypeface:Landroid/graphics/Typeface;

.field private drawTitle:Z

.field private final expandedBounds:Landroid/graphics/Rect;

.field private expandedDrawX:F

.field private expandedDrawY:F

.field private expandedFraction:F

.field private expandedShadowColor:I

.field private expandedShadowDx:F

.field private expandedShadowDy:F

.field private expandedShadowRadius:F

.field private expandedTextColor:Landroid/content/res/ColorStateList;

.field private expandedTextGravity:I

.field private expandedTextSize:F

.field private expandedTitleTexture:Landroid/graphics/Bitmap;

.field private expandedTypeface:Landroid/graphics/Typeface;

.field private isRtl:Z

.field private positionInterpolator:Landroid/animation/TimeInterpolator;

.field private scale:F

.field private state:[I

.field private text:Ljava/lang/CharSequence;

.field private final textPaint:Landroid/text/TextPaint;

.field private textSizeInterpolator:Landroid/animation/TimeInterpolator;

.field private textToDraw:Ljava/lang/CharSequence;

.field private textureAscent:F

.field private textureDescent:F

.field private texturePaint:Landroid/graphics/Paint;

.field private final tmpPaint:Landroid/text/TextPaint;

.field private useTexture:Z

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/material/internal/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/material/internal/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    .line 59
    sget-object v0, Lcom/google/android/material/internal/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/google/android/material/internal/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    sget-object v0, Lcom/google/android/material/internal/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    :cond_0
    return-void

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 73
    move-object v2, v0

    const/16 v3, 0x10

    iput v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    .line 74
    move-object v2, v0

    const/16 v3, 0x10

    iput v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    .line 75
    move-object v2, v0

    const/high16 v3, 0x41700000    # 15.0f

    iput v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    .line 76
    move-object v2, v0

    const/high16 v3, 0x41700000    # 15.0f

    iput v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 124
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 126
    move-object v2, v0

    new-instance v3, Landroid/text/TextPaint;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x81

    invoke-direct {v4, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 127
    move-object v2, v0

    new-instance v3, Landroid/text/TextPaint;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-direct {v4, v5}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    .line 129
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 130
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 131
    move-object v2, v0

    new-instance v3, Landroid/graphics/RectF;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    .line 132
    return-void
.end method

.method private static blendColors(IIF)I
    .locals 12

    .prologue
    .line 758
    move v0, p0

    .local v0, "color1":I
    move v1, p1

    .local v1, "color2":I
    move v2, p2

    .local v2, "ratio":F
    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v2

    sub-float/2addr v8, v9

    move v3, v8

    .line 759
    .local v3, "inverseRatio":F
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v4, v8

    .line 760
    .local v4, "a":F
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v5, v8

    .line 761
    .local v5, "r":F
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v6, v8

    .line 762
    .local v6, "g":F
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v7, v8

    .line 763
    .local v7, "b":F
    move v8, v4

    float-to-int v8, v8

    move v9, v5

    float-to-int v9, v9

    move v10, v6

    float-to-int v10, v10

    move v11, v7

    float-to-int v11, v11

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move v0, v8

    .end local v0    # "color1":I
    return v0
.end method

.method private calculateBaseOffsets()V
    .locals 11

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    move v1, v7

    .line 451
    .local v1, "currentTextSize":F
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    invoke-direct {v7, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 452
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 453
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    :goto_0
    move v2, v7

    .line 454
    .local v2, "width":F
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    move-object v8, v0

    iget-boolean v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    .line 455
    :goto_1
    invoke-static {v7, v8}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    move v3, v7

    .line 458
    .local v3, "collapsedAbsGravity":I
    move v7, v3

    const/16 v8, 0x70

    and-int/lit8 v7, v7, 0x70

    sparse-switch v7, :sswitch_data_0

    .line 467
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v8

    sub-float/2addr v7, v8

    move v4, v7

    .line 468
    .local v4, "textHeight":F
    move v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    sub-float/2addr v7, v8

    move v5, v7

    .line 469
    .local v5, "textOffset":F
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    move v9, v5

    add-float/2addr v8, v9

    iput v8, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    .line 472
    .end local v4    # "textHeight":F
    .end local v5    # "textOffset":F
    :goto_2
    move v7, v3

    const v8, 0x800007

    and-int/2addr v7, v8

    sparse-switch v7, :sswitch_data_1

    .line 481
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iput v8, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    .line 485
    :goto_3
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    invoke-direct {v7, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 486
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    :goto_4
    move v2, v7

    .line 487
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    move-object v8, v0

    iget-boolean v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    .line 488
    :goto_5
    invoke-static {v7, v8}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    move v4, v7

    .line 491
    .local v4, "expandedAbsGravity":I
    move v7, v4

    const/16 v8, 0x70

    and-int/lit8 v7, v7, 0x70

    sparse-switch v7, :sswitch_data_2

    .line 500
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v8

    sub-float/2addr v7, v8

    move v5, v7

    .line 501
    .local v5, "textHeight":F
    move v7, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    sub-float/2addr v7, v8

    move v6, v7

    .line 502
    .local v6, "textOffset":F
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    move v9, v6

    add-float/2addr v8, v9

    iput v8, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    .line 505
    .end local v5    # "textHeight":F
    .end local v6    # "textOffset":F
    :goto_6
    move v7, v4

    const v8, 0x800007

    and-int/2addr v7, v8

    sparse-switch v7, :sswitch_data_3

    .line 514
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iput v8, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    .line 519
    :goto_7
    move-object v7, v0

    invoke-direct {v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->clearTexture()V

    .line 521
    move-object v7, v0

    move v8, v1

    invoke-direct {v7, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 522
    return-void

    .line 453
    .end local v2    # "width":F
    .end local v3    # "collapsedAbsGravity":I
    .end local v4    # "expandedAbsGravity":I
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 454
    .restart local v2    # "width":F
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 460
    .restart local v3    # "collapsedAbsGravity":I
    :sswitch_0
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    iput v8, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    .line 461
    goto/16 :goto_2

    .line 463
    :sswitch_1
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    .line 464
    goto/16 :goto_2

    .line 474
    :sswitch_2
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    move v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    .line 475
    goto/16 :goto_3

    .line 477
    :sswitch_3
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    move v9, v2

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    .line 478
    goto/16 :goto_3

    .line 486
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 487
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 493
    .restart local v4    # "expandedAbsGravity":I
    :sswitch_4
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    iput v8, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    .line 494
    goto :goto_6

    .line 496
    :sswitch_5
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    .line 497
    goto :goto_6

    .line 507
    :sswitch_6
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    move v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    .line 508
    goto :goto_7

    .line 510
    :sswitch_7
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    move v9, v2

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    .line 511
    goto/16 :goto_7

    .line 458
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 472
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch

    .line 491
    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 505
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_7
    .end sparse-switch
.end method

.method private calculateCurrentOffsets()V
    .locals 3

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    invoke-direct {v1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateOffsets(F)V

    .line 400
    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 7

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 580
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 581
    .local v2, "defaultIsRtl":Z
    move v3, v2

    if-eqz v3, :cond_1

    sget-object v3, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    :goto_1
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    .line 584
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v3

    .line 581
    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    return v0

    .line 580
    .end local v2    # "defaultIsRtl":Z
    .restart local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 581
    .restart local v2    # "defaultIsRtl":Z
    :cond_1
    sget-object v3, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_1
.end method

.method private calculateOffsets(F)V
    .locals 9

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move v1, p1

    .local v1, "fraction":F
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->interpolateBounds(F)V

    .line 404
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    .line 405
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    .line 407
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 408
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    .line 407
    invoke-direct {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 410
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v2, v3, :cond_0

    .line 413
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    move-object v3, v0

    .line 414
    invoke-direct {v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentExpandedTextColor()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v4

    move v5, v1

    invoke-static {v3, v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->blendColors(IIF)I

    move-result v3

    .line 413
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 419
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowRadius:F

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowRadius:F

    move v5, v1

    const/4 v6, 0x0

    .line 420
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDx:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDx:F

    move v6, v1

    const/4 v7, 0x0

    .line 421
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDy:F

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDy:F

    move v7, v1

    const/4 v8, 0x0

    .line 422
    invoke-static {v5, v6, v7, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowColor:I

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowColor:I

    move v8, v1

    .line 423
    invoke-static {v6, v7, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->blendColors(IIF)I

    move-result v6

    .line 419
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 425
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 426
    return-void

    .line 416
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method

.method private calculateUsingTextSize(F)V
    .locals 13

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move v1, p1

    .local v1, "textSize":F
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    if-nez v9, :cond_0

    .line 604
    .line 672
    :goto_0
    return-void

    .line 607
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    move v2, v9

    .line 608
    .local v2, "collapsedWidth":F
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    move v3, v9

    .line 612
    .local v3, "expandedWidth":F
    const/4 v9, 0x0

    move v6, v9

    .line 614
    .local v6, "updateDrawText":Z
    move v9, v1

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    invoke-static {v9, v10}, Lcom/google/android/material/internal/CollapsingTextHelper;->isClose(FF)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 615
    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    move v5, v9

    .line 616
    .local v5, "newTextSize":F
    move-object v9, v0

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    .line 617
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    if-eq v9, v10, :cond_1

    .line 618
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    iput-object v10, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    .line 619
    const/4 v9, 0x1

    move v6, v9

    .line 621
    :cond_1
    move v9, v2

    move v4, v9

    .line 652
    .local v4, "availableWidth":F
    :goto_1
    move v9, v4

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    .line 653
    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    move v10, v5

    cmpl-float v9, v9, v10

    if-nez v9, :cond_2

    move-object v9, v0

    iget-boolean v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    if-nez v9, :cond_2

    move v9, v6

    if-eqz v9, :cond_a

    :cond_2
    const/4 v9, 0x1

    :goto_2
    move v6, v9

    .line 654
    move-object v9, v0

    move v10, v5

    iput v10, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    .line 655
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    .line 658
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v9, :cond_4

    move v9, v6

    if-eqz v9, :cond_5

    .line 659
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 660
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 662
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 665
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    move v11, v4

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 666
    invoke-static {v9, v10, v11, v12}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v7, v9

    .line 667
    .local v7, "title":Ljava/lang/CharSequence;
    move-object v9, v7

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 668
    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 669
    move-object v9, v0

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-direct {v10, v11}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v10

    iput-boolean v10, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 672
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_5
    goto/16 :goto_0

    .line 623
    .end local v4    # "availableWidth":F
    .end local v5    # "newTextSize":F
    :cond_6
    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    move v5, v9

    .line 624
    .restart local v5    # "newTextSize":F
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    if-eq v9, v10, :cond_7

    .line 625
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    iput-object v10, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    .line 626
    const/4 v9, 0x1

    move v6, v9

    .line 628
    :cond_7
    move v9, v1

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    invoke-static {v9, v10}, Lcom/google/android/material/internal/CollapsingTextHelper;->isClose(FF)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 630
    move-object v9, v0

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    .line 636
    :goto_4
    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    div-float/2addr v9, v10

    move v7, v9

    .line 639
    .local v7, "textSizeRatio":F
    move v9, v3

    move v10, v7

    mul-float/2addr v9, v10

    move v8, v9

    .line 641
    .local v8, "scaledDownWidth":F
    move v9, v8

    move v10, v2

    cmpl-float v9, v9, v10

    if-lez v9, :cond_9

    .line 645
    move v9, v2

    move v10, v7

    div-float/2addr v9, v10

    move v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    move v4, v9

    .restart local v4    # "availableWidth":F
    goto/16 :goto_1

    .line 633
    .end local v4    # "availableWidth":F
    .end local v7    # "textSizeRatio":F
    .end local v8    # "scaledDownWidth":F
    :cond_8
    move-object v9, v0

    move v10, v1

    move-object v11, v0

    iget v11, v11, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    div-float/2addr v10, v11

    iput v10, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    goto :goto_4

    .line 648
    .restart local v7    # "textSizeRatio":F
    .restart local v8    # "scaledDownWidth":F
    :cond_9
    move v9, v3

    move v4, v9

    .restart local v4    # "availableWidth":F
    goto/16 :goto_1

    .line 653
    .end local v7    # "textSizeRatio":F
    .end local v8    # "scaledDownWidth":F
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 662
    :cond_b
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private clearTexture()V
    .locals 3

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 730
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 731
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 733
    :cond_0
    return-void
.end method

.method private ensureExpandedTexture()V
    .locals 12

    .prologue
    .line 675
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 676
    .line 699
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateOffsets(F)V

    .line 680
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    iput v5, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->textureAscent:F

    .line 681
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iput v5, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->textureDescent:F

    .line 683
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v1, v4

    .line 684
    .local v1, "w":I
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->textureDescent:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/internal/CollapsingTextHelper;->textureAscent:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v2, v4

    .line 686
    .local v2, "h":I
    move v4, v1

    if-lez v4, :cond_2

    move v4, v2

    if-gtz v4, :cond_3

    .line 687
    :cond_2
    goto :goto_0

    .line 690
    :cond_3
    move-object v4, v0

    move v5, v1

    move v6, v2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 692
    new-instance v4, Landroid/graphics/Canvas;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v4

    .line 693
    .local v3, "c":Landroid/graphics/Canvas;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x0

    move v9, v2

    int-to-float v9, v9

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v10

    sub-float/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 695
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    if-nez v4, :cond_4

    .line 697
    move-object v4, v0

    new-instance v5, Landroid/graphics/Paint;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    .line 699
    :cond_4
    goto/16 :goto_0
.end method

.method private getCurrentExpandedTextColor()I
    .locals 4
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->state:[I

    if-eqz v1, :cond_0

    .line 431
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->state:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    move v0, v1

    .line 433
    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method private getTextPaintCollapsed(Landroid/text/TextPaint;)V
    .locals 4

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, p1

    .local v1, "textPaint":Landroid/text/TextPaint;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 214
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 215
    return-void
.end method

.method private interpolateBounds(F)V
    .locals 7

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move v1, p1

    .local v1, "fraction":F
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 526
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 527
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 528
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 529
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 530
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 531
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 532
    return-void
.end method

.method private static isClose(FF)Z
    .locals 4

    .prologue
    .line 740
    move v0, p0

    .local v0, "value":F
    move v1, p1

    .local v1, "targetValue":F
    move v2, v0

    move v3, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "value":F
    return v0

    .restart local v0    # "value":F
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static lerp(FFFLandroid/animation/TimeInterpolator;)F
    .locals 7

    .prologue
    .line 768
    move v0, p0

    .local v0, "startValue":F
    move v1, p1

    .local v1, "endValue":F
    move v2, p2

    .local v2, "fraction":F
    move-object v3, p3

    .local v3, "interpolator":Landroid/animation/TimeInterpolator;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 769
    move-object v4, v3

    move v5, v2

    invoke-interface {v4, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    move v2, v4

    .line 771
    :cond_0
    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v4

    move v0, v4

    .end local v0    # "startValue":F
    return v0
.end method

.method private readFontFamilyTypeface(I)Landroid/graphics/Typeface;
    .locals 13

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move v1, p1

    .local v1, "resId":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 313
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move v7, v1

    const/4 v8, 0x1

    new-array v8, v8, [I

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const v11, 0x10103ac

    aput v11, v9, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v2, v6

    .line 315
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object v6, v2

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 316
    .local v3, "family":Ljava/lang/String;
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 317
    move-object v6, v3

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v4, v6

    .line 320
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 317
    move-object v6, v4

    move-object v0, v6

    .line 322
    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    :goto_0
    return-object v0

    .line 320
    .restart local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 321
    .line 322
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 320
    .end local v3    # "family":Ljava/lang/String;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 7

    .prologue
    .line 775
    move-object v0, p0

    .local v0, "r":Landroid/graphics/Rect;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "right":I
    move v4, p4

    .local v4, "bottom":I
    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move v6, v1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move v6, v2

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move v6, v3

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move v6, v4

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "r":Landroid/graphics/Rect;
    return v0

    .restart local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setInterpolatedTextSize(F)V
    .locals 5

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move v1, p1

    .local v1, "textSize":F
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 591
    move-object v2, v0

    sget-boolean v3, Lcom/google/android/material/internal/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->useTexture:Z

    .line 593
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->useTexture:Z

    if-eqz v2, :cond_0

    .line 595
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->ensureExpandedTexture()V

    .line 598
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 599
    return-void

    .line 591
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public calculateCollapsedTextWidth()F
    .locals 5

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 190
    const/4 v1, 0x0

    move v0, v1

    .line 193
    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    :goto_0
    return v0

    .line 192
    .restart local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    .line 193
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 15

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object/from16 v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v8

    move v2, v8

    .line 537
    .local v2, "saveCount":I
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-boolean v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->drawTitle:Z

    if-eqz v8, :cond_2

    .line 538
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    move v3, v8

    .line 539
    .local v3, "x":F
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    move v4, v8

    .line 541
    .local v4, "y":F
    move-object v8, v0

    iget-boolean v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->useTexture:Z

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_0
    move v5, v8

    .line 545
    .local v5, "drawTexture":Z
    move v8, v5

    if-eqz v8, :cond_4

    .line 546
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->textureAscent:F

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    mul-float/2addr v8, v9

    move v6, v8

    .line 547
    .local v6, "ascent":F
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->textureDescent:F

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    mul-float/2addr v8, v9

    move v7, v8

    .line 559
    .local v7, "descent":F
    :goto_1
    move v8, v5

    if-eqz v8, :cond_0

    .line 560
    move v8, v4

    move v9, v6

    add-float/2addr v8, v9

    move v4, v8

    .line 563
    :cond_0
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    .line 564
    move-object v8, v1

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    move v11, v3

    move v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 567
    :cond_1
    move v8, v5

    if-eqz v8, :cond_5

    .line 569
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    move v10, v3

    move v11, v4

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/internal/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 575
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "drawTexture":Z
    .end local v6    # "ascent":F
    .end local v7    # "descent":F
    :cond_2
    :goto_2
    move-object v8, v1

    move v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 576
    return-void

    .line 541
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 549
    .restart local v5    # "drawTexture":Z
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v8

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    mul-float/2addr v8, v9

    move v6, v8

    .line 550
    .restart local v6    # "ascent":F
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    mul-float/2addr v8, v9

    move v7, v8

    .restart local v7    # "descent":F
    goto :goto_1

    .line 571
    :cond_5
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move v12, v3

    move v13, v4

    move-object v14, v0

    iget-object v14, v14, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public getCollapsedTextActualBounds(Landroid/graphics/RectF;)V
    .locals 6

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/RectF;
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-direct {v3, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v3

    move v2, v3

    .line 205
    .local v2, "isRtl":Z
    move-object v3, v1

    move v4, v2

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    .line 206
    :goto_0
    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 207
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 208
    move-object v3, v1

    move v4, v2

    if-nez v4, :cond_1

    move-object v4, v1

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCollapsedTextWidth()F

    move-result v5

    add-float/2addr v4, v5

    :goto_1
    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 209
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 210
    return-void

    .line 205
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object v5, v0

    .line 206
    invoke-virtual {v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCollapsedTextWidth()F

    move-result v5

    sub-float/2addr v4, v5

    goto :goto_0

    .line 208
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    goto :goto_1
.end method

.method public getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 748
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    return-object v0
.end method

.method public getCollapsedTextGravity()I
    .locals 2

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    return v0
.end method

.method public getCollapsedTextHeight()F
    .locals 3

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    .line 199
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    neg-float v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    return v0
.end method

.method public getCollapsedTextSize()F
    .locals 2

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    return v0
.end method

.method public getCollapsedTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public getCurrentCollapsedTextColor()I
    .locals 4
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->state:[I

    if-eqz v1, :cond_0

    .line 441
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->state:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    move v0, v1

    .line 443
    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public getExpandedTextColor()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 744
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    return-object v0
.end method

.method public getExpandedTextGravity()I
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    return v0
.end method

.method public getExpandedTextSize()F
    .locals 2

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    return v0
.end method

.method public getExpandedTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public getExpansionFraction()F
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    return-object v0
.end method

.method public final isStateful()Z
    .locals 2

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 383
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 382
    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    return v0

    .line 383
    .restart local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onBoundsChanged()V
    .locals 3

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 219
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 220
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 221
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 222
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->drawTitle:Z

    .line 223
    return-void

    .line 222
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public recalculate()V
    .locals 2

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 705
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 706
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 708
    :cond_0
    return-void
.end method

.method public setCollapsedBounds(IIII)V
    .locals 10

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "right":I
    move v4, p4

    .local v4, "bottom":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/android/material/internal/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v5

    if-nez v5, :cond_0

    .line 182
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 183
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    .line 184
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->onBoundsChanged()V

    .line 186
    :cond_0
    return-void
.end method

.method public setCollapsedTextAppearance(I)V
    .locals 7

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move v1, p1

    .local v1, "resId":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 250
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    sget-object v5, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 249
    invoke-static {v3, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v3

    move-object v2, v3

    .line 251
    .local v2, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v3, v2

    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 253
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 256
    :cond_0
    move-object v3, v2

    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    float-to-int v6, v6

    .line 258
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 262
    :cond_1
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v6, 0x0

    .line 263
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowColor:I

    .line 264
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowDx:I

    const/4 v6, 0x0

    .line 265
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDx:F

    .line 266
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowDy:I

    const/4 v6, 0x0

    .line 267
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDy:F

    .line 268
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowRadius:I

    const/4 v6, 0x0

    .line 269
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowRadius:F

    .line 270
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 272
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 273
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 276
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 277
    return-void
.end method

.method public setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, p1

    .local v1, "textColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 160
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 161
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 163
    :cond_0
    return-void
.end method

.method public setCollapsedTextGravity(I)V
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 238
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    .line 239
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 241
    :cond_0
    return-void
.end method

.method public setCollapsedTextSize(F)V
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move v1, p1

    .local v1, "textSize":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 153
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 154
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 156
    :cond_0
    return-void
.end method

.method public setCollapsedTypeface(Landroid/graphics/Typeface;)V
    .locals 4

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, p1

    .local v1, "typeface":Landroid/graphics/Typeface;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 328
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 329
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 331
    :cond_0
    return-void
.end method

.method public setExpandedBounds(IIII)V
    .locals 10

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "right":I
    move v4, p4

    .local v4, "bottom":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/android/material/internal/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v5

    if-nez v5, :cond_0

    .line 174
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 175
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    .line 176
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->onBoundsChanged()V

    .line 178
    :cond_0
    return-void
.end method

.method public setExpandedTextAppearance(I)V
    .locals 7

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move v1, p1

    .local v1, "resId":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 282
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    sget-object v5, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 281
    invoke-static {v3, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v3

    move-object v2, v3

    .line 283
    .local v2, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v3, v2

    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 285
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 288
    :cond_0
    move-object v3, v2

    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 289
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    float-to-int v6, v6

    .line 290
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    .line 294
    :cond_1
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v6, 0x0

    .line 295
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowColor:I

    .line 296
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowDx:I

    const/4 v6, 0x0

    .line 297
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDx:F

    .line 298
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowDy:I

    const/4 v6, 0x0

    .line 299
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDy:F

    .line 300
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowRadius:I

    const/4 v6, 0x0

    .line 301
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowRadius:F

    .line 302
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 304
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 305
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    .line 308
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 309
    return-void
.end method

.method public setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, p1

    .local v1, "textColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 167
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 168
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 170
    :cond_0
    return-void
.end method

.method public setExpandedTextGravity(I)V
    .locals 4

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 227
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    .line 228
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 230
    :cond_0
    return-void
.end method

.method public setExpandedTextSize(F)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move v1, p1

    .local v1, "textSize":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 146
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    .line 147
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 149
    :cond_0
    return-void
.end method

.method public setExpandedTypeface(Landroid/graphics/Typeface;)V
    .locals 4

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, p1

    .local v1, "typeface":Landroid/graphics/Typeface;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 336
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    .line 337
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 339
    :cond_0
    return-void
.end method

.method public setExpansionFraction(F)V
    .locals 5

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move v1, p1

    .local v1, "fraction":F
    move v2, v1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    move v1, v2

    .line 364
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 365
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    .line 366
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 368
    :cond_0
    return-void
.end method

.method public setPositionInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, p1

    .local v1, "interpolator":Landroid/animation/TimeInterpolator;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 141
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 142
    return-void
.end method

.method public final setState([I)Z
    .locals 4

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, p1

    .local v1, "state":[I
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->state:[I

    .line 373
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 375
    const/4 v2, 0x1

    move v0, v2

    .line 378
    .end local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 717
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    .line 718
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 719
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->clearTexture()V

    .line 720
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 722
    :cond_1
    return-void
.end method

.method public setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, p1

    .local v1, "interpolator":Landroid/animation/TimeInterpolator;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 136
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 137
    return-void
.end method

.method public setTypefaces(Landroid/graphics/Typeface;)V
    .locals 8

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/CollapsingTextHelper;
    move-object v1, p1

    .local v1, "typeface":Landroid/graphics/Typeface;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    move-object v5, v7

    iput-object v5, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    iput-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 343
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 344
    return-void
.end method
