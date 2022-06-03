.class public Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "CircularRevealCoordinatorLayout.java"

# interfaces
.implements Lcom/google/android/material/circularreveal/CircularRevealWidget;


# instance fields
.field private final helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    move-object v3, v0

    new-instance v4, Lcom/google/android/material/circularreveal/CircularRevealHelper;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/android/material/circularreveal/CircularRevealHelper;-><init>(Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V

    iput-object v4, v3, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    .line 41
    return-void
.end method


# virtual methods
.method public actualDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->draw(Landroid/graphics/Canvas;)V

    .line 97
    return-void
.end method

.method public actualIsOpaque()Z
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    move-object v1, v0

    invoke-super {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isOpaque()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    return v0
.end method

.method public buildCircularRevealCache()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildCircularRevealCache()V

    .line 46
    return-void
.end method

.method public destroyCircularRevealCache()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->destroyCircularRevealCache()V

    .line 51
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v2, :cond_0

    .line 88
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->draw(Landroid/graphics/Canvas;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealScrimColor()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    return v0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    return-object v0
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v1, :cond_0

    .line 102
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->isOpaque()Z

    move-result v1

    move v0, v1

    .line 104
    .end local v0    # "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isOpaque()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealScrimColor(I)V

    .line 67
    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 4
    .param p1    # Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
    move-object v1, p1

    .local v1, "revealInfo":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 56
    return-void
.end method
