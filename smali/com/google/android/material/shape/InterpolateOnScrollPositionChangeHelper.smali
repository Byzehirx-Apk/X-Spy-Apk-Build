.class public Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;
.super Ljava/lang/Object;
.source "InterpolateOnScrollPositionChangeHelper.java"


# annotations
.annotation build Lcom/google/android/material/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field private final containerLocation:[I

.field private containingScrollView:Landroid/widget/ScrollView;

.field private materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private final scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final scrollLocation:[I

.field private shapedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/widget/ScrollView;)V
    .locals 9

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;
    move-object v1, p1

    .local v1, "shapedView":Landroid/view/View;
    move-object v2, p2

    .local v2, "materialShapeDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v3, p3

    .local v3, "containingScrollView":Landroid/widget/ScrollView;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    .line 33
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    .line 34
    move-object v4, v0

    new-instance v5, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$1;-><init>(Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;)V

    iput-object v5, v4, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 54
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    .line 55
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 56
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    .line 57
    return-void
.end method


# virtual methods
.method public setContainingScrollView(Landroid/widget/ScrollView;)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;
    move-object v1, p1

    .local v1, "containingScrollView":Landroid/widget/ScrollView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    .line 75
    return-void
.end method

.method public setMaterialShapeDrawable(Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;
    move-object v1, p1

    .local v1, "materialShapeDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 66
    return-void
.end method

.method public startListeningForScrollChanges(Landroid/view/ViewTreeObserver;)V
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;
    move-object v1, p1

    .local v1, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 85
    return-void
.end method

.method public stopListeningForScrollChanges(Landroid/view/ViewTreeObserver;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;
    move-object v1, p1

    .local v1, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 95
    return-void
.end method

.method public updateInterpolationForScreenPosition()V
    .locals 12

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    if-nez v5, :cond_0

    .line 104
    .line 132
    :goto_0
    return-void

    .line 106
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 108
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string/jumbo v7, "Scroll bar must contain a child to calculate interpolation."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 112
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 113
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 114
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    move v1, v5

    .line 115
    .local v1, "y":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    move v2, v5

    .line 116
    .local v2, "viewHeight":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    move v3, v5

    .line 119
    .local v3, "windowHeight":I
    move v5, v1

    if-gez v5, :cond_3

    .line 120
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v1

    int-to-float v9, v9

    move v10, v2

    int-to-float v10, v10

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 121
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 120
    invoke-virtual {v5, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 122
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 132
    :cond_2
    :goto_1
    goto :goto_0

    .line 123
    :cond_3
    move v5, v1

    move v6, v2

    add-int/2addr v5, v6

    move v6, v3

    if-le v5, v6, :cond_4

    .line 124
    move v5, v1

    move v6, v2

    add-int/2addr v5, v6

    move v6, v3

    sub-int/2addr v5, v6

    move v4, v5

    .line 125
    .local v4, "distanceOffScreen":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v4

    int-to-float v9, v9

    move v10, v2

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    .line 126
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 125
    invoke-virtual {v5, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 127
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 128
    goto :goto_1

    .end local v4    # "distanceOffScreen":I
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getInterpolation()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 129
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 130
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    goto :goto_1
.end method
