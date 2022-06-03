.class public Lcom/google/android/material/card/MaterialCardView;
.super Landroidx/cardview/widget/CardView;
.source "MaterialCardView.java"


# instance fields
.field private final cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Lcom/google/android/material/R$attr;->materialCardViewStyle:I

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Lcom/google/android/material/R$styleable;->MaterialCardView:[I

    move v8, v3

    sget v9, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CardView:I

    const/4 v10, 0x0

    new-array v10, v10, [I

    .line 55
    invoke-static/range {v5 .. v10}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 63
    .local v4, "attributes":Landroid/content/res/TypedArray;
    move-object v5, v0

    new-instance v6, Lcom/google/android/material/card/MaterialCardViewHelper;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/card/MaterialCardViewHelper;-><init>(Lcom/google/android/material/card/MaterialCardView;)V

    iput-object v6, v5, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    .line 64
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/google/android/material/card/MaterialCardViewHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    .line 66
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method


# virtual methods
.method public getStrokeColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->getStrokeColor()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/card/MaterialCardView;
    return v0
.end method

.method public getStrokeWidth()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardView;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->getStrokeWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/card/MaterialCardView;
    return v0
.end method

.method public setRadius(F)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardView;
    move v1, p1

    .local v1, "radius":F
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 102
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateForeground()V

    .line 103
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardView;
    move v1, p1

    .local v1, "strokeColor":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/card/MaterialCardViewHelper;->setStrokeColor(I)V

    .line 76
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardView;
    move v1, p1

    .local v1, "strokeWidth":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/card/MaterialCardViewHelper;->setStrokeWidth(I)V

    .line 91
    return-void
.end method
