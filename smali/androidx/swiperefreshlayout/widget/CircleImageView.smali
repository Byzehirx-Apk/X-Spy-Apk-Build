.class Landroidx/swiperefreshlayout/widget/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;
    }
.end annotation


# static fields
.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x1e000000

.field private static final SHADOW_ELEVATION:I = 0x4

.field private static final SHADOW_RADIUS:F = 3.5f

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.75f


# instance fields
.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field mShadowRadius:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 15

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircleImageView;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move/from16 v2, p2

    .local v2, "color":I
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    move v3, v9

    .line 55
    .local v3, "density":F
    move v9, v3

    const/high16 v10, 0x3fe00000    # 1.75f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move v4, v9

    .line 56
    .local v4, "shadowYOffset":I
    move v9, v3

    const/4 v10, 0x0

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move v5, v9

    .line 58
    .local v5, "shadowXOffset":I
    move-object v9, v0

    move v10, v3

    const/high16 v11, 0x40600000    # 3.5f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    .line 61
    move-object v9, v0

    invoke-direct {v9}, Landroidx/swiperefreshlayout/widget/CircleImageView;->elevationSupported()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 62
    new-instance v9, Landroid/graphics/drawable/ShapeDrawable;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Landroid/graphics/drawable/shapes/OvalShape;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v10, v11}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object v6, v9

    .line 63
    .local v6, "circle":Landroid/graphics/drawable/ShapeDrawable;
    move-object v9, v0

    const/high16 v10, 0x40800000    # 4.0f

    move v11, v3

    mul-float/2addr v10, v11

    invoke-static {v9, v10}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 74
    :goto_0
    move-object v9, v6

    invoke-virtual {v9}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    move v10, v2

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    move-object v9, v0

    move-object v10, v6

    invoke-static {v9, v10}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void

    .line 65
    .end local v6    # "circle":Landroid/graphics/drawable/ShapeDrawable;
    :cond_0
    new-instance v9, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v0

    iget v12, v12, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    invoke-direct {v10, v11, v12}, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;-><init>(Landroidx/swiperefreshlayout/widget/CircleImageView;I)V

    move-object v7, v9

    .line 66
    .local v7, "oval":Landroid/graphics/drawable/shapes/OvalShape;
    new-instance v9, Landroid/graphics/drawable/ShapeDrawable;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v7

    invoke-direct {v10, v11}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object v6, v9

    .line 67
    .restart local v6    # "circle":Landroid/graphics/drawable/ShapeDrawable;
    move-object v9, v0

    const/4 v10, 0x1

    move-object v11, v6

    invoke-virtual {v11}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 68
    move-object v9, v6

    invoke-virtual {v9}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    move-object v10, v0

    iget v10, v10, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    int-to-float v10, v10

    move v11, v5

    int-to-float v11, v11

    move v12, v4

    int-to-float v12, v12

    const/high16 v13, 0x1e000000

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 70
    move-object v9, v0

    iget v9, v9, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    move v8, v9

    .line 72
    .local v8, "padding":I
    move-object v9, v0

    move v10, v8

    move v11, v8

    move v12, v8

    move v13, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private elevationSupported()Z
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircleImageView;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/swiperefreshlayout/widget/CircleImageView;
    return v0

    .restart local v0    # "this":Landroidx/swiperefreshlayout/widget/CircleImageView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircleImageView;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 106
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    .line 107
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircleImageView;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 98
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    .line 99
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 101
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircleImageView;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 85
    move-object v3, v0

    invoke-direct {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->elevationSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getMeasuredWidth()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getMeasuredHeight()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setMeasuredDimension(II)V

    .line 89
    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircleImageView;
    move-object v1, p1

    .local v1, "listener":Landroid/view/animation/Animation$AnimationListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 93
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircleImageView;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v2, :cond_0

    .line 123
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    :cond_0
    return-void
.end method

.method public setBackgroundColorRes(I)V
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircleImageView;
    move v1, p1

    .local v1, "colorRes":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setBackgroundColor(I)V

    .line 118
    return-void
.end method
