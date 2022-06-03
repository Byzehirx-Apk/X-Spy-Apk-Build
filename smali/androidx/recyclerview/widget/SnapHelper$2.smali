.class Landroidx/recyclerview/widget/SnapHelper$2;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/SnapHelper;->createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/SnapHelper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/SnapHelper;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SnapHelper$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/SnapHelper;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Landroidx/recyclerview/widget/SnapHelper;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SnapHelper$2;
    move-object v1, p1

    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    const/high16 v2, 0x42c80000    # 100.0f

    move-object v3, v1

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/SnapHelper$2;
    return v0
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 13

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SnapHelper$2;
    move-object v1, p1

    .local v1, "targetView":Landroid/view/View;
    move-object v2, p2

    .local v2, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object/from16 v3, p3

    .local v3, "action":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Landroidx/recyclerview/widget/SnapHelper;

    iget-object v8, v8, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v8, :cond_0

    .line 232
    .line 242
    :goto_0
    return-void

    .line 234
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Landroidx/recyclerview/widget/SnapHelper;

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Landroidx/recyclerview/widget/SnapHelper;

    iget-object v9, v9, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/SnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v8

    move-object v4, v8

    .line 236
    .local v4, "snapDistances":[I
    move-object v8, v4

    const/4 v9, 0x0

    aget v8, v8, v9

    move v5, v8

    .line 237
    .local v5, "dx":I
    move-object v8, v4

    const/4 v9, 0x1

    aget v8, v8, v9

    move v6, v8

    .line 238
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

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/SnapHelper$2;->calculateTimeForDeceleration(I)I

    move-result v8

    move v7, v8

    .line 239
    .local v7, "time":I
    move v8, v7

    if-lez v8, :cond_1

    .line 240
    move-object v8, v3

    move v9, v5

    move v10, v6

    move v11, v7

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/SnapHelper$2;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 242
    :cond_1
    goto :goto_0
.end method
