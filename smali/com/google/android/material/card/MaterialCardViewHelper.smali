.class Lcom/google/android/material/card/MaterialCardViewHelper;
.super Ljava/lang/Object;
.source "MaterialCardViewHelper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEFAULT_STROKE_VALUE:I = -0x1


# instance fields
.field private final materialCardView:Lcom/google/android/material/card/MaterialCardView;

.field private strokeColor:I

.field private strokeWidth:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardViewHelper;
    move-object v1, p1

    .local v1, "card":Lcom/google/android/material/card/MaterialCardView;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 42
    return-void
.end method

.method private adjustContentPadding()V
    .locals 10

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardViewHelper;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v5}, Lcom/google/android/material/card/MaterialCardView;->getContentPaddingLeft()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    add-int/2addr v5, v6

    move v1, v5

    .line 103
    .local v1, "contentPaddingLeft":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v5}, Lcom/google/android/material/card/MaterialCardView;->getContentPaddingTop()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    add-int/2addr v5, v6

    move v2, v5

    .line 104
    .local v2, "contentPaddingTop":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v5}, Lcom/google/android/material/card/MaterialCardView;->getContentPaddingRight()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    add-int/2addr v5, v6

    move v3, v5

    .line 105
    .local v3, "contentPaddingRight":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v5}, Lcom/google/android/material/card/MaterialCardView;->getContentPaddingBottom()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    add-int/2addr v5, v6

    move v4, v5

    .line 106
    .local v4, "contentPaddingBottom":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/material/card/MaterialCardView;->setContentPadding(IIII)V

    .line 108
    return-void
.end method

.method private createForegroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardViewHelper;
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v1, v2

    .line 88
    .local v1, "fgDrawable":Landroid/graphics/drawable/GradientDrawable;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v3}, Lcom/google/android/material/card/MaterialCardView;->getRadius()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 93
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 94
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 97
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/card/MaterialCardViewHelper;
    return-object v0
.end method


# virtual methods
.method getStrokeColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardViewHelper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/card/MaterialCardViewHelper;
    return v0
.end method

.method getStrokeWidth()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardViewHelper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/card/MaterialCardViewHelper;
    return v0
.end method

.method public loadFromAttributes(Landroid/content/res/TypedArray;)V
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardViewHelper;
    move-object v1, p1

    .local v1, "attributes":Landroid/content/res/TypedArray;
    move-object v2, v0

    move-object v3, v1

    sget v4, Lcom/google/android/material/R$styleable;->MaterialCardView_strokeColor:I

    const/4 v5, -0x1

    .line 46
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:I

    .line 47
    move-object v2, v0

    move-object v3, v1

    sget v4, Lcom/google/android/material/R$styleable;->MaterialCardView_strokeWidth:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    .line 48
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateForeground()V

    .line 49
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->adjustContentPadding()V

    .line 50
    return-void
.end method

.method setStrokeColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardViewHelper;
    move v1, p1

    .local v1, "strokeColor":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:I

    .line 54
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateForeground()V

    .line 55
    return-void
.end method

.method setStrokeWidth(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardViewHelper;
    move v1, p1

    .local v1, "strokeWidth":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    .line 64
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateForeground()V

    .line 65
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->adjustContentPadding()V

    .line 66
    return-void
.end method

.method updateForeground()V
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/card/MaterialCardViewHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->createForegroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/card/MaterialCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    return-void
.end method
