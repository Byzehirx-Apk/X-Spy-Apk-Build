.class Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
.super Landroid/view/ViewGroup;
.source "ViewOverlayApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ViewOverlayApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayViewGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ViewOverlayApi14$OverlayViewGroup$TouchInterceptor;
    }
.end annotation


# static fields
.field static sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;


# instance fields
.field mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mHostView:Landroid/view/ViewGroup;

.field mRequestingView:Landroid/view/View;

.field mViewOverlay:Landroidx/transition/ViewOverlayApi14;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 134
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string/jumbo v2, "invalidateChildInParentFast"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/ViewOverlayApi14;)V
    .locals 7

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "hostView":Landroid/view/ViewGroup;
    move-object v3, p3

    .local v3, "requestingView":Landroid/view/View;
    move-object v4, p4

    .local v4, "viewOverlay":Landroidx/transition/ViewOverlayApi14;
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 150
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 159
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    .line 160
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    .line 161
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->setRight(I)V

    .line 162
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->setBottom(I)V

    .line 163
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mViewOverlay:Landroidx/transition/ViewOverlayApi14;

    .line 165
    return-void
.end method

.method private getOffset([I)V
    .locals 9

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    move-object v1, p1

    .local v1, "offset":[I
    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v2, v4

    .line 283
    .local v2, "contentViewLocation":[I
    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v3, v4

    .line 284
    .local v3, "hostViewLocation":[I
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 285
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 286
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object v7, v2

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v4, v5

    .line 287
    move-object v4, v1

    const/4 v5, 0x1

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object v7, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v4, v5

    .line 288
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 176
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 178
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 181
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 182
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 184
    :cond_1
    return-void
.end method

.method public add(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 201
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v2, v5

    .line 202
    .local v2, "parent":Landroid/view/ViewGroup;
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    if-eq v5, v6, :cond_0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v2

    .line 203
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v3, v5

    .line 207
    .local v3, "parentLocation":[I
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v4, v5

    .line 208
    .local v4, "hostViewLocation":[I
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 209
    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 210
    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object v7, v4

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 211
    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object v7, v4

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 213
    .end local v3    # "parentLocation":[I
    .end local v4    # "hostViewLocation":[I
    :cond_0
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 219
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 220
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 223
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-super {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 224
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->removeAllViews()V

    .line 235
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 236
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 238
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x2

    new-array v6, v6, [I

    move-object v2, v6

    .line 253
    .local v2, "contentViewLocation":[I
    const/4 v6, 0x2

    new-array v6, v6, [I

    move-object v3, v6

    .line 254
    .local v3, "hostViewLocation":[I
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 255
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 256
    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object v8, v2

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object v8, v3

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object v9, v2

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 258
    move-object v6, v1

    new-instance v7, Landroid/graphics/Rect;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    .line 259
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 258
    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-result v6

    .line 260
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 261
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    move v4, v6

    .line 262
    .local v4, "numDrawables":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 263
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 261
    .end local v4    # "numDrawables":I
    .end local v5    # "i":I
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_0

    .line 265
    .restart local v4    # "numDrawables":I
    .restart local v5    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    return v0
.end method

.method public invalidateChildFast(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 11

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "dirty":Landroid/graphics/Rect;
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 295
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    move v3, v6

    .line 296
    .local v3, "left":I
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    move v4, v6

    .line 297
    .local v4, "top":I
    const/4 v6, 0x2

    new-array v6, v6, [I

    move-object v5, v6

    .line 298
    .local v5, "offset":[I
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->getOffset([I)V

    .line 303
    move-object v6, v2

    move v7, v3

    move-object v8, v5

    const/4 v9, 0x0

    aget v8, v8, v9

    add-int/2addr v7, v8

    move v8, v4

    move-object v9, v5

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 304
    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 306
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v5    # "offset":[I
    :cond_0
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 8

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    move-object v1, p1

    .local v1, "location":[I
    move-object v2, p2

    .local v2, "dirty":Landroid/graphics/Rect;
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 331
    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v1

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 332
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 333
    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 334
    move-object v4, v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 335
    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v3, v4

    .line 336
    .local v3, "offset":[I
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->getOffset([I)V

    .line 337
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 338
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v4

    move-object v0, v4

    .line 344
    .end local v0    # "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    .end local v3    # "offset":[I
    :goto_0
    return-object v0

    .line 341
    .restart local v0    # "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 344
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method protected invalidateChildInParentFast(IILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 12
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move-object v3, p3

    .local v3, "dirty":Landroid/graphics/Rect;
    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_0

    .line 315
    const/4 v5, 0x2

    :try_start_0
    new-array v5, v5, [I

    move-object v4, v5

    .line 316
    .local v4, "offset":[I
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->getOffset([I)V

    .line 317
    sget-object v5, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;

    move-object v6, v0

    iget-object v6, v6, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v3

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 322
    .line 324
    .end local v4    # "offset":[I
    :cond_0
    :goto_0
    const/4 v5, 0x0

    move-object v0, v5

    .end local v0    # "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    return-object v0

    .line 318
    .restart local v0    # "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 319
    .local v4, "e":Ljava/lang/IllegalAccessException;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 322
    goto :goto_0

    .line 320
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 321
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 248
    return-void
.end method

.method isEmpty()Z
    .locals 2

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 242
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    return v0

    .restart local v0    # "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 270
    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 188
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 189
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 190
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 192
    :cond_0
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 228
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 231
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    return v0

    .restart local v0    # "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
