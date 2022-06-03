.class Landroidx/cardview/widget/CardViewApi21Impl;
.super Ljava/lang/Object;
.source "CardViewApi21Impl.java"

# interfaces
.implements Landroidx/cardview/widget/CardViewImpl;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi21Impl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;
    .locals 3

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi21Impl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v1

    invoke-interface {v2}, Landroidx/cardview/widget/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroidx/cardview/widget/RoundRectDrawable;

    move-object v0, v2

    .end local v0    # "this":Landroidx/cardview/widget/CardViewApi21Impl;
    return-object v0
.end method


# virtual methods
.method public getBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi21Impl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/cardview/widget/RoundRectDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/cardview/widget/CardViewApi21Impl;
    return-object v0
.end method

.method public getElevation(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 3

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi21Impl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v1

    invoke-interface {v2}, Landroidx/cardview/widget/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/cardview/widget/CardViewApi21Impl;
    return v0
.end method

.method public getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi21Impl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/cardview/widget/RoundRectDrawable;->getPadding()F

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/cardview/widget/CardViewApi21Impl;
    return v0
.end method

.method public getMinHeight(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi21Impl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardViewApi21Impl;->getRadius(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Landroidx/cardview/widget/CardViewApi21Impl;
    return v0
.end method

.method public getMinWidth(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi21Impl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardViewApi21Impl;->getRadius(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Landroidx/cardview/widget/CardViewApi21Impl;
    return v0
.end method

.method public getRadius(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi21Impl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/cardview/widget/RoundRectDrawable;->getRadius()F

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/cardview/widget/CardViewApi21Impl;
    return v0
.end method

.method public initStatic()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public initialize(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 14

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi21Impl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object/from16 v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object/from16 v3, p3

    .local v3, "backgroundColor":Landroid/content/res/ColorStateList;
    move/from16 v4, p4

    .local v4, "radius":F
    move/from16 v5, p5

    .local v5, "elevation":F
    move/from16 v6, p6

    .local v6, "maxElevation":F
    new-instance v9, Landroidx/cardview/widget/RoundRectDrawable;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v3

    move v12, v4

    invoke-direct {v10, v11, v12}, Landroidx/cardview/widget/RoundRectDrawable;-><init>(Landroid/content/res/ColorStateList;F)V

    move-object v7, v9

    .line 32
    .local v7, "background":Landroidx/cardview/widget/RoundRectDrawable;
    move-object v9, v1

    move-object v10, v7

    invoke-interface {v9, v10}, Landroidx/cardview/widget/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    move-object v9, v1

    invoke-interface {v9}, Landroidx/cardview/widget/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object v9

    move-object v8, v9

    .line 35
    .local v8, "view":Landroid/view/View;
    move-object v9, v8

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setClipToOutline(Z)V

    .line 36
    move-object v9, v8

    move v10, v5

    invoke-virtual {v9, v10}, Landroid/view/View;->setElevation(F)V

    .line 37
    move-object v9, v0

    move-object v10, v1

    move v11, v6

    invoke-virtual {v9, v10, v11}, Landroidx/cardview/widget/CardViewApi21Impl;->setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    .line 38
    return-void
.end method

.method public onCompatPaddingChanged(Landroidx/cardview/widget/CardViewDelegate;)V
    .locals 6

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi21Impl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardViewApi21Impl;->getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/cardview/widget/CardViewApi21Impl;->setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    .line 104
    return-void
.end method

.method public onPreventCornerOverlapChanged(Landroidx/cardview/widget/CardViewDelegate;)V
    .locals 6

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi21Impl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardViewApi21Impl;->getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/cardview/widget/CardViewApi21Impl;->setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    .line 109
    return-void
.end method

.method public setBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .locals 5
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi21Impl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, p2

    .local v2, "color":Landroid/content/res/ColorStateList;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/cardview/widget/RoundRectDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 114
    return-void
.end method

.method public setElevation(Landroidx/cardview/widget/CardViewDelegate;F)V
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi21Impl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move v2, p2

    .local v2, "elevation":F
    move-object v3, v1

    invoke-interface {v3}, Landroidx/cardview/widget/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setElevation(F)V

    .line 79
    return-void
.end method

.method public setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi21Impl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move v2, p2

    .local v2, "maxElevation":F
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object v3

    move v4, v2

    move-object v5, v1

    .line 52
    invoke-interface {v5}, Landroidx/cardview/widget/CardViewDelegate;->getUseCompatPadding()Z

    move-result v5

    move-object v6, v1

    invoke-interface {v6}, Landroidx/cardview/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v6

    .line 51
    invoke-virtual {v3, v4, v5, v6}, Landroidx/cardview/widget/RoundRectDrawable;->setPadding(FZZ)V

    .line 53
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/cardview/widget/CardViewApi21Impl;->updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 54
    return-void
.end method

.method public setRadius(Landroidx/cardview/widget/CardViewDelegate;F)V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi21Impl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move v2, p2

    .local v2, "radius":F
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/cardview/widget/RoundRectDrawable;->setRadius(F)V

    .line 43
    return-void
.end method

.method public updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V
    .locals 11

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi21Impl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v6, v1

    invoke-interface {v6}, Landroidx/cardview/widget/CardViewDelegate;->getUseCompatPadding()Z

    move-result v6

    if-nez v6, :cond_0

    .line 89
    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroidx/cardview/widget/CardViewDelegate;->setShadowPadding(IIII)V

    .line 90
    .line 99
    :goto_0
    return-void

    .line 92
    :cond_0
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/cardview/widget/CardViewApi21Impl;->getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v6

    move v2, v6

    .line 93
    .local v2, "elevation":F
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/cardview/widget/CardViewApi21Impl;->getRadius(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v6

    move v3, v6

    .line 94
    .local v3, "radius":F
    move v6, v2

    move v7, v3

    move-object v8, v1

    .line 95
    invoke-interface {v8}, Landroidx/cardview/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v8

    invoke-static {v6, v7, v8}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v6

    float-to-double v6, v6

    .line 94
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v4, v6

    .line 96
    .local v4, "hPadding":I
    move v6, v2

    move v7, v3

    move-object v8, v1

    .line 97
    invoke-interface {v8}, Landroidx/cardview/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v8

    invoke-static {v6, v7, v8}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v6

    float-to-double v6, v6

    .line 96
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v5, v6

    .line 98
    .local v5, "vPadding":I
    move-object v6, v1

    move v7, v4

    move v8, v5

    move v9, v4

    move v10, v5

    invoke-interface {v6, v7, v8, v9, v10}, Landroidx/cardview/widget/CardViewDelegate;->setShadowPadding(IIII)V

    .line 99
    goto :goto_0
.end method
