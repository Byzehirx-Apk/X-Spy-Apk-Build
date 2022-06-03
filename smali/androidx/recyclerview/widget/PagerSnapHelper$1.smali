.class Landroidx/recyclerview/widget/PagerSnapHelper$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "PagerSnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/PagerSnapHelper;->createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/PagerSnapHelper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/PagerSnapHelper;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/PagerSnapHelper$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/PagerSnapHelper;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/recyclerview/widget/PagerSnapHelper$1;->this$0:Landroidx/recyclerview/widget/PagerSnapHelper;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/PagerSnapHelper$1;
    move-object v1, p1

    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    const/high16 v2, 0x42c80000    # 100.0f

    move-object v3, v1

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper$1;
    return v0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 5

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/PagerSnapHelper$1;
    move v1, p1

    .local v1, "dx":I
    const/16 v2, 0x64

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper$1;
    return v0
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 13

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/PagerSnapHelper$1;
    move-object v1, p1

    .local v1, "targetView":Landroid/view/View;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object/from16 v3, p3

    .local v3, "action":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/PagerSnapHelper$1;->this$0:Landroidx/recyclerview/widget/PagerSnapHelper;

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/PagerSnapHelper$1;->this$0:Landroidx/recyclerview/widget/PagerSnapHelper;

    iget-object v9, v9, Landroidx/recyclerview/widget/PagerSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/PagerSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v8

    move-object v4, v8

    .line 133
    .local v4, "snapDistances":[I
    move-object v8, v4

    const/4 v9, 0x0

    aget v8, v8, v9

    move v5, v8

    .line 134
    .local v5, "dx":I
    move-object v8, v4

    const/4 v9, 0x1

    aget v8, v8, v9

    move v6, v8

    .line 135
    .local v6, "dy":I
    move-object v8, v0

    move v9, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    move v10, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/PagerSnapHelper$1;->calculateTimeForDeceleration(I)I

    move-result v8

    move v7, v8

    .line 136
    .local v7, "time":I
    move v8, v7

    if-lez v8, :cond_0

    .line 137
    move-object v8, v3

    move v9, v5

    move v10, v6

    move v11, v7

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/PagerSnapHelper$1;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 139
    :cond_0
    return-void
.end method
