.class Landroidx/transition/GhostViewApi14;
.super Landroid/view/View;
.source "GhostViewApi14.java"

# interfaces
.implements Landroidx/transition/GhostViewImpl;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field mCurrentMatrix:Landroid/graphics/Matrix;

.field private mDeltaX:I

.field private mDeltaY:I

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mReferences:I

.field mStartParent:Landroid/view/ViewGroup;

.field mStartView:Landroid/view/View;

.field final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Landroidx/transition/GhostViewApi14;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 111
    move-object v2, v0

    new-instance v3, Landroid/graphics/Matrix;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v2, Landroidx/transition/GhostViewApi14;->mMatrix:Landroid/graphics/Matrix;

    .line 113
    move-object v2, v0

    new-instance v3, Landroidx/transition/GhostViewApi14$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/transition/GhostViewApi14$1;-><init>(Landroidx/transition/GhostViewApi14;)V

    iput-object v3, v2, Landroidx/transition/GhostViewApi14;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 133
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/GhostViewApi14;->mView:Landroid/view/View;

    .line 134
    move-object v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/transition/GhostViewApi14;->setLayerType(ILandroid/graphics/Paint;)V

    .line 135
    return-void
.end method

.method static addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/transition/GhostViewImpl;
    .locals 8

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, p1

    .local v1, "viewGroup":Landroid/view/ViewGroup;
    move-object v4, v0

    invoke-static {v4}, Landroidx/transition/GhostViewApi14;->getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewApi14;

    move-result-object v4

    move-object v2, v4

    .line 47
    .local v2, "ghostView":Landroidx/transition/GhostViewApi14;
    move-object v4, v2

    if-nez v4, :cond_1

    .line 48
    move-object v4, v1

    invoke-static {v4}, Landroidx/transition/GhostViewApi14;->findFrameLayout(Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;

    move-result-object v4

    move-object v3, v4

    .line 49
    .local v3, "frameLayout":Landroid/widget/FrameLayout;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 50
    const/4 v4, 0x0

    move-object v0, v4

    .line 56
    .end local v0    # "view":Landroid/view/View;
    .end local v3    # "frameLayout":Landroid/widget/FrameLayout;
    :goto_0
    return-object v0

    .line 52
    .restart local v0    # "view":Landroid/view/View;
    .restart local v3    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_0
    new-instance v4, Landroidx/transition/GhostViewApi14;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/transition/GhostViewApi14;-><init>(Landroid/view/View;)V

    move-object v2, v4

    .line 53
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 55
    .end local v3    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_1
    move-object v4, v2

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroidx/transition/GhostViewApi14;->mReferences:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroidx/transition/GhostViewApi14;->mReferences:I

    .line 56
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method private static findFrameLayout(Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "viewGroup":Landroid/view/ViewGroup;
    :goto_0
    move-object v2, v0

    instance-of v2, v2, Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    .line 80
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 81
    .local v1, "parent":Landroid/view/ViewParent;
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 82
    const/4 v2, 0x0

    move-object v0, v2

    .line 86
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :goto_1
    return-object v0

    .line 84
    .restart local v0    # "viewGroup":Landroid/view/ViewGroup;
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    move-object v0, v2

    .line 85
    goto :goto_0

    .line 86
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_1
    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout;

    move-object v0, v2

    goto :goto_1
.end method

.method static getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewApi14;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, v0

    sget v2, Landroidx/transition/R$id;->ghost_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/GhostViewApi14;

    move-object v0, v1

    .end local v0    # "view":Landroid/view/View;
    return-object v0
.end method

.method static removeGhost(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v4, v0

    invoke-static {v4}, Landroidx/transition/GhostViewApi14;->getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewApi14;

    move-result-object v4

    move-object v1, v4

    .line 61
    .local v1, "ghostView":Landroidx/transition/GhostViewApi14;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 62
    move-object v4, v1

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroidx/transition/GhostViewApi14;->mReferences:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroidx/transition/GhostViewApi14;->mReferences:I

    .line 63
    move-object v4, v1

    iget v4, v4, Landroidx/transition/GhostViewApi14;->mReferences:I

    if-gtz v4, :cond_0

    .line 64
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/transition/GhostViewApi14;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v2, v4

    .line 65
    .local v2, "parent":Landroid/view/ViewParent;
    move-object v4, v2

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 66
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    move-object v3, v4

    .line 67
    .local v3, "group":Landroid/view/ViewGroup;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 68
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    .end local v2    # "parent":Landroid/view/ViewParent;
    .end local v3    # "group":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private static setGhostView(Landroid/view/View;Landroidx/transition/GhostViewApi14;)V
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, p1

    .local v1, "ghostView":Landroidx/transition/GhostViewApi14;
    move-object v2, v0

    sget v3, Landroidx/transition/R$id;->ghost_view:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 188
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Landroidx/transition/GhostViewApi14;
    move-object v3, v0

    invoke-super {v3}, Landroid/view/View;->onAttachedToWindow()V

    .line 140
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/GhostViewApi14;->mView:Landroid/view/View;

    move-object v4, v0

    invoke-static {v3, v4}, Landroidx/transition/GhostViewApi14;->setGhostView(Landroid/view/View;Landroidx/transition/GhostViewApi14;)V

    .line 142
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object v1, v3

    .line 143
    .local v1, "location":[I
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object v2, v3

    .line 144
    .local v2, "viewLocation":[I
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/transition/GhostViewApi14;->getLocationOnScreen([I)V

    .line 145
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/GhostViewApi14;->mView:Landroid/view/View;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 146
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/GhostViewApi14;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, v3, v4

    .line 147
    move-object v3, v2

    const/4 v4, 0x1

    move-object v5, v2

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/GhostViewApi14;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, v3, v4

    .line 148
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/transition/GhostViewApi14;->mDeltaX:I

    .line 149
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/transition/GhostViewApi14;->mDeltaY:I

    .line 151
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/GhostViewApi14;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/GhostViewApi14;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 153
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/GhostViewApi14;->mView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 154
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Landroidx/transition/GhostViewApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewApi14;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/GhostViewApi14;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 159
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewApi14;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewApi14;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/transition/GhostViewApi14;->setGhostView(Landroid/view/View;Landroidx/transition/GhostViewApi14;)V

    .line 161
    move-object v1, v0

    invoke-super {v1}, Landroid/view/View;->onDetachedFromWindow()V

    .line 162
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/transition/GhostViewApi14;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/GhostViewApi14;->mMatrix:Landroid/graphics/Matrix;

    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/GhostViewApi14;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 168
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/GhostViewApi14;->mMatrix:Landroid/graphics/Matrix;

    move-object v3, v0

    iget v3, v3, Landroidx/transition/GhostViewApi14;->mDeltaX:I

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Landroidx/transition/GhostViewApi14;->mDeltaY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v2

    .line 169
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/GhostViewApi14;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 171
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/GhostViewApi14;->mView:Landroid/view/View;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 172
    return-void
.end method

.method public reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/transition/GhostViewApi14;
    move-object v1, p1

    .local v1, "viewGroup":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/transition/GhostViewApi14;->mStartParent:Landroid/view/ViewGroup;

    .line 183
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/transition/GhostViewApi14;->mStartView:Landroid/view/View;

    .line 184
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Landroidx/transition/GhostViewApi14;
    move v1, p1

    .local v1, "visibility":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 177
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/GhostViewApi14;->mView:Landroid/view/View;

    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    return-void

    .line 177
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
