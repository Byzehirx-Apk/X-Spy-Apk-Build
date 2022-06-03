.class Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private final mAbsGravity:I

.field private mDragger:Landroidx/customview/widget/ViewDragHelper;

.field private final mPeekRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V
    .locals 8

    .prologue
    .line 2152
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    move-object v1, p1

    move v2, p2

    .local v2, "gravity":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v3, v0

    invoke-direct {v3}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    .line 2146
    move-object v3, v0

    new-instance v4, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;-><init>(Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;)V

    iput-object v4, v3, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    .line 2153
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    .line 2154
    return-void
.end method

.method private closeOtherDrawer()V
    .locals 5

    .prologue
    .line 2203
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    move-object v3, v0

    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x5

    :goto_0
    move v1, v3

    .line 2204
    .local v1, "otherGrav":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 2205
    .local v2, "toClose":Landroid/view/View;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2206
    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 2208
    :cond_0
    return-void

    .line 2203
    .end local v1    # "otherGrav":I
    .end local v2    # "toClose":Landroid/view/View;
    :cond_1
    const/4 v3, 0x3

    goto :goto_0
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 8

    .prologue
    .line 2294
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "left":I
    move v3, p3

    .local v3, "dx":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v6, v1

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2295
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    move v6, v2

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v5

    .line 2298
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    :goto_0
    return v0

    .line 2297
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v5

    move v4, v5

    .line 2298
    .local v4, "width":I
    move v5, v4

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    move v6, v2

    move v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 5

    .prologue
    .line 2304
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "dy":I
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 2289
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    return v0

    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onEdgeDragStarted(II)V
    .locals 7

    .prologue
    .line 2276
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    move v1, p1

    .local v1, "edgeFlags":I
    move v2, p2

    .local v2, "pointerId":I
    move v4, v1

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 2277
    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 2282
    .local v3, "toCapture":Landroid/view/View;
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_0

    .line 2283
    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 2285
    :cond_0
    return-void

    .line 2279
    .end local v3    # "toCapture":Landroid/view/View;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "toCapture":Landroid/view/View;
    goto :goto_0
.end method

.method public onEdgeLock(I)Z
    .locals 3

    .prologue
    .line 2270
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    move v1, p1

    .local v1, "edgeFlags":I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    return v0
.end method

.method public onEdgeTouched(II)V
    .locals 8

    .prologue
    .line 2231
    move-object v1, p0

    .local v1, "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    move v2, p1

    .local v2, "edgeFlags":I
    move v3, p2

    .local v3, "pointerId":I
    move-object v4, v1

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v5, v1

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xa0

    invoke-virtual {v4, v5, v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 2232
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 2196
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    move-object v1, p1

    .local v1, "capturedChild":Landroid/view/View;
    move v2, p2

    .local v2, "activePointerId":I
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 2197
    .local v3, "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v4, v3

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 2199
    move-object v4, v0

    invoke-direct {v4}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 2200
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 6

    .prologue
    .line 2174
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    move v1, p1

    .local v1, "state":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v3, v0

    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroidx/customview/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 2175
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 12

    .prologue
    .line 2180
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    move-object v1, p1

    .local v1, "changedView":Landroid/view/View;
    move v2, p2

    .local v2, "left":I
    move v3, p3

    .local v3, "top":I
    move/from16 v4, p4

    .local v4, "dx":I
    move/from16 v5, p5

    .local v5, "dy":I
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    move v7, v9

    .line 2183
    .local v7, "childWidth":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v10, v1

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2184
    move v9, v7

    move v10, v2

    add-int/2addr v9, v10

    int-to-float v9, v9

    move v10, v7

    int-to-float v10, v10

    div-float/2addr v9, v10

    move v6, v9

    .line 2189
    .local v6, "offset":F
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v10, v1

    move v11, v6

    invoke-virtual {v9, v10, v11}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 2190
    move-object v9, v1

    move v10, v6

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    const/4 v10, 0x4

    :goto_1
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2191
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v9}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 2192
    return-void

    .line 2186
    .end local v6    # "offset":F
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v9

    move v8, v9

    .line 2187
    .local v8, "width":I
    move v9, v8

    move v10, v2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move v10, v7

    int-to-float v10, v10

    div-float/2addr v9, v10

    move v6, v9

    .restart local v6    # "offset":F
    goto :goto_0

    .line 2190
    .end local v8    # "width":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 11

    .prologue
    .line 2214
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    move-object v1, p1

    .local v1, "releasedChild":Landroid/view/View;
    move v2, p2

    .local v2, "xvel":F
    move v3, p3

    .local v3, "yvel":F
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v8

    move v4, v8

    .line 2215
    .local v4, "offset":F
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move v5, v8

    .line 2218
    .local v5, "childWidth":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v9, v1

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2219
    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_0

    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    move v8, v4

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    :goto_0
    move v6, v8

    .line 2225
    .local v6, "left":I
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    move v9, v6

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v8

    .line 2226
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v8}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 2227
    return-void

    .line 2219
    .end local v6    # "left":I
    :cond_1
    move v8, v5

    neg-int v8, v8

    goto :goto_0

    .line 2221
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v8}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v8

    move v7, v8

    .line 2222
    .local v7, "width":I
    move v8, v2

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_3

    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    move v8, v4

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    :cond_3
    move v8, v7

    move v9, v5

    sub-int/2addr v8, v9

    :goto_2
    move v6, v8

    .restart local v6    # "left":I
    goto :goto_1

    .end local v6    # "left":I
    :cond_4
    move v8, v7

    goto :goto_2
.end method

.method peekDrawer()V
    .locals 10

    .prologue
    .line 2237
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    move-object v6, v0

    iget-object v6, v6, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v6}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    move-result v6

    move v3, v6

    .line 2238
    .local v3, "peekDistance":I
    move-object v6, v0

    iget v6, v6, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    :goto_0
    move v4, v6

    .line 2239
    .local v4, "leftEdge":Z
    move v6, v4

    if-eqz v6, :cond_5

    .line 2240
    move-object v6, v0

    iget-object v6, v6, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v6

    move-object v1, v6

    .line 2241
    .local v1, "toCapture":Landroid/view/View;
    move-object v6, v1

    if-eqz v6, :cond_4

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    :goto_1
    move v7, v3

    add-int/2addr v6, v7

    move v2, v6

    .line 2247
    .local v2, "childLeft":I
    :goto_2
    move-object v6, v1

    if-eqz v6, :cond_2

    move v6, v4

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    move v7, v2

    if-lt v6, v7, :cond_1

    :cond_0
    move v6, v4

    if-nez v6, :cond_2

    move-object v6, v1

    .line 2248
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    move v7, v2

    if-le v6, v7, :cond_2

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v7, v1

    .line 2249
    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v6

    if-nez v6, :cond_2

    .line 2250
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v5, v6

    .line 2251
    .local v5, "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v6, v0

    iget-object v6, v6, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v7, v1

    move v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    .line 2252
    move-object v6, v5

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 2253
    move-object v6, v0

    iget-object v6, v6, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v6}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 2255
    move-object v6, v0

    invoke-direct {v6}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 2257
    move-object v6, v0

    iget-object v6, v6, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v6}, Landroidx/drawerlayout/widget/DrawerLayout;->cancelChildViewTouch()V

    .line 2259
    .end local v5    # "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_2
    return-void

    .line 2238
    .end local v1    # "toCapture":Landroid/view/View;
    .end local v2    # "childLeft":I
    .end local v4    # "leftEdge":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 2241
    .restart local v1    # "toCapture":Landroid/view/View;
    .restart local v4    # "leftEdge":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 2243
    .end local v1    # "toCapture":Landroid/view/View;
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v6

    move-object v1, v6

    .line 2244
    .restart local v1    # "toCapture":Landroid/view/View;
    move-object v6, v0

    iget-object v6, v6, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v6

    move v7, v3

    sub-int/2addr v6, v7

    move v2, v6

    .restart local v2    # "childLeft":I
    goto :goto_2
.end method

.method public removeCallbacks()V
    .locals 3

    .prologue
    .line 2161
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    move-object v1, v0

    iget-object v1, v1, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 2162
    return-void
.end method

.method public setDragger(Landroidx/customview/widget/ViewDragHelper;)V
    .locals 4

    .prologue
    .line 2157
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    move-object v1, p1

    .local v1, "dragger":Landroidx/customview/widget/ViewDragHelper;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 2158
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 2168
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "pointerId":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    invoke-virtual {v3, v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v4, v1

    .line 2169
    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    return v0

    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
