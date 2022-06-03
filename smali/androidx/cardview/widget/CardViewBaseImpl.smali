.class Landroidx/cardview/widget/CardViewBaseImpl;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Landroidx/cardview/widget/CardViewImpl;


# instance fields
.field final mCornerRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v1, v0

    new-instance v2, Landroid/graphics/RectF;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v1, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    return-void
.end method

.method private createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    .locals 14

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "backgroundColor":Landroid/content/res/ColorStateList;
    move/from16 v3, p3

    .local v3, "radius":F
    move/from16 v4, p4

    .local v4, "elevation":F
    move/from16 v5, p5

    .local v5, "maxElevation":F
    new-instance v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-direct/range {v7 .. v12}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    move-object v0, v6

    .end local v0    # "this":Landroidx/cardview/widget/CardViewBaseImpl;
    return-object v0
.end method

.method private getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    .locals 3

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v1

    invoke-interface {v2}, Landroidx/cardview/widget/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-object v0, v2

    .end local v0    # "this":Landroidx/cardview/widget/CardViewBaseImpl;
    return-object v0
.end method


# virtual methods
.method public getBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/cardview/widget/CardViewBaseImpl;
    return-object v0
.end method

.method public getElevation(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getShadowSize()F

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/cardview/widget/CardViewBaseImpl;
    return v0
.end method

.method public getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getMaxShadowSize()F

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/cardview/widget/CardViewBaseImpl;
    return v0
.end method

.method public getMinHeight(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getMinHeight()F

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/cardview/widget/CardViewBaseImpl;
    return v0
.end method

.method public getMinWidth(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getMinWidth()F

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/cardview/widget/CardViewBaseImpl;
    return v0
.end method

.method public getRadius(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getCornerRadius()F

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/cardview/widget/CardViewBaseImpl;
    return v0
.end method

.method public initStatic()V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
    new-instance v1, Landroidx/cardview/widget/CardViewBaseImpl$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/cardview/widget/CardViewBaseImpl$1;-><init>(Landroidx/cardview/widget/CardViewBaseImpl;)V

    sput-object v1, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 78
    return-void
.end method

.method public initialize(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 14

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
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
    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-direct/range {v8 .. v13}, Landroidx/cardview/widget/CardViewBaseImpl;->createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v8

    move-object v7, v8

    .line 85
    .local v7, "background":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    move-object v8, v7

    move-object v9, v1

    invoke-interface {v9}, Landroidx/cardview/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 86
    move-object v8, v1

    move-object v9, v7

    invoke-interface {v8, v9}, Landroidx/cardview/widget/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/cardview/widget/CardViewBaseImpl;->updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 88
    return-void
.end method

.method public onCompatPaddingChanged(Landroidx/cardview/widget/CardViewDelegate;)V
    .locals 0
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;

    .prologue
    .line 110
    return-void
.end method

.method public onPreventCornerOverlapChanged(Landroidx/cardview/widget/CardViewDelegate;)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Landroidx/cardview/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 115
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardViewBaseImpl;->updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 116
    return-void
.end method

.method public setBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .locals 5
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move-object v2, p2

    .local v2, "color":Landroid/content/res/ColorStateList;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setColor(Landroid/content/res/ColorStateList;)V

    .line 121
    return-void
.end method

.method public setElevation(Landroidx/cardview/widget/CardViewDelegate;F)V
    .locals 5

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move v2, p2

    .local v2, "elevation":F
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setShadowSize(F)V

    .line 142
    return-void
.end method

.method public setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V
    .locals 5

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move v2, p2

    .local v2, "maxElevation":F
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setMaxShadowSize(F)V

    .line 152
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/cardview/widget/CardViewBaseImpl;->updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 153
    return-void
.end method

.method public setRadius(Landroidx/cardview/widget/CardViewDelegate;F)V
    .locals 5

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    move v2, p2

    .local v2, "radius":F
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setCornerRadius(F)V

    .line 131
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/cardview/widget/CardViewBaseImpl;->updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 132
    return-void
.end method

.method public updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V
    .locals 9

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewBaseImpl;
    move-object v1, p1

    .local v1, "cardView":Landroidx/cardview/widget/CardViewDelegate;
    new-instance v3, Landroid/graphics/Rect;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v3

    .line 100
    .local v2, "shadowPadding":Landroid/graphics/Rect;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V

    .line 101
    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardViewBaseImpl;->getMinWidth(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    move-object v5, v0

    move-object v6, v1

    .line 102
    invoke-virtual {v5, v6}, Landroidx/cardview/widget/CardViewBaseImpl;->getMinHeight(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 101
    invoke-interface {v3, v4, v5}, Landroidx/cardview/widget/CardViewDelegate;->setMinWidthHeightInternal(II)V

    .line 103
    move-object v3, v1

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object v5, v2

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object v6, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object v7, v2

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v3, v4, v5, v6, v7}, Landroidx/cardview/widget/CardViewDelegate;->setShadowPadding(IIII)V

    .line 105
    return-void
.end method
