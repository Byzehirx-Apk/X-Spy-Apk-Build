.class public Landroidx/recyclerview/widget/PagerSnapHelper;
.super Landroidx/recyclerview/widget/SnapHelper;
.source "PagerSnapHelper.java"


# static fields
.field private static final MAX_SCROLL_ON_FLING_DURATION:I = 0x64


# instance fields
.field private mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    move-object v1, p1

    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v2, p2

    .local v2, "targetView":Landroid/view/View;
    move-object v3, p3

    .local v3, "helper":Landroidx/recyclerview/widget/OrientationHelper;
    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    move-object v7, v3

    move-object v8, v2

    .line 156
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    move v4, v6

    .line 158
    .local v4, "childCenter":I
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    move-object v6, v3

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    move-object v7, v3

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    move v5, v6

    .line 163
    .local v5, "containerCenter":I
    :goto_0
    move v6, v4

    move v7, v5

    sub-int/2addr v6, v7

    move v0, v6

    .end local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    return v0

    .line 161
    .end local v5    # "containerCenter":I
    .restart local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move v5, v6

    .restart local v5    # "containerCenter":I
    goto :goto_0
.end method

.method private findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    move-object v1, p1

    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object/from16 v2, p2

    .local v2, "helper":Landroidx/recyclerview/widget/OrientationHelper;
    move-object v11, v1

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v11

    move v3, v11

    .line 179
    .local v3, "childCount":I
    move v11, v3

    if-nez v11, :cond_0

    .line 180
    const/4 v11, 0x0

    move-object v0, v11

    .line 204
    .end local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    :goto_0
    return-object v0

    .line 183
    .restart local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    :cond_0
    const/4 v11, 0x0

    move-object v4, v11

    .line 185
    .local v4, "closestChild":Landroid/view/View;
    move-object v11, v1

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 186
    move-object v11, v2

    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v11

    move-object v12, v2

    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v12

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    move v5, v11

    .line 190
    .local v5, "center":I
    :goto_1
    const v11, 0x7fffffff

    move v6, v11

    .line 192
    .local v6, "absClosest":I
    const/4 v11, 0x0

    move v7, v11

    .local v7, "i":I
    :goto_2
    move v11, v7

    move v12, v3

    if-ge v11, v12, :cond_3

    .line 193
    move-object v11, v1

    move v12, v7

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v8, v11

    .line 194
    .local v8, "child":Landroid/view/View;
    move-object v11, v2

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    move-object v12, v2

    move-object v13, v8

    .line 195
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    move v9, v11

    .line 196
    .local v9, "childCenter":I
    move v11, v9

    move v12, v5

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    move v10, v11

    .line 199
    .local v10, "absDistance":I
    move v11, v10

    move v12, v6

    if-ge v11, v12, :cond_1

    .line 200
    move v11, v10

    move v6, v11

    .line 201
    move-object v11, v8

    move-object v4, v11

    .line 192
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 188
    .end local v5    # "center":I
    .end local v6    # "absClosest":I
    .end local v7    # "i":I
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "childCenter":I
    .end local v10    # "absDistance":I
    :cond_2
    move-object v11, v2

    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v11

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    move v5, v11

    .restart local v5    # "center":I
    goto :goto_1

    .line 204
    .restart local v6    # "absClosest":I
    .restart local v7    # "i":I
    :cond_3
    move-object v11, v4

    move-object v0, v11

    goto :goto_0
.end method

.method private findStartView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    move-object v1, p1

    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v2, p2

    .local v2, "helper":Landroidx/recyclerview/widget/OrientationHelper;
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v9

    move v3, v9

    .line 220
    .local v3, "childCount":I
    move v9, v3

    if-nez v9, :cond_0

    .line 221
    const/4 v9, 0x0

    move-object v0, v9

    .line 237
    .end local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    :goto_0
    return-object v0

    .line 224
    .restart local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    :cond_0
    const/4 v9, 0x0

    move-object v4, v9

    .line 225
    .local v4, "closestChild":Landroid/view/View;
    const v9, 0x7fffffff

    move v5, v9

    .line 227
    .local v5, "startest":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_1
    move v9, v6

    move v10, v3

    if-ge v9, v10, :cond_2

    .line 228
    move-object v9, v1

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 229
    .local v7, "child":Landroid/view/View;
    move-object v9, v2

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    move v8, v9

    .line 232
    .local v8, "childStart":I
    move v9, v8

    move v10, v5

    if-ge v9, v10, :cond_1

    .line 233
    move v9, v8

    move v5, v9

    .line 234
    move-object v9, v7

    move-object v4, v9

    .line 227
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 237
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childStart":I
    :cond_2
    move-object v9, v4

    move-object v0, v9

    goto :goto_0
.end method

.method private getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    move-object v1, p1

    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    iget-object v2, v2, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 252
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    iput-object v3, v2, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 254
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    return-object v0
.end method

.method private getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    move-object v1, p1

    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    iget-object v2, v2, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 243
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    iput-object v3, v2, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 245
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    return-object v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 11
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    move-object v1, p1

    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v2, p2

    .local v2, "targetView":Landroid/view/View;
    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v3, v4

    .line 53
    .local v3, "out":[I
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    move-object v10, v1

    .line 55
    invoke-direct {v9, v10}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v9

    .line 54
    invoke-direct {v6, v7, v8, v9}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v6

    aput v6, v4, v5

    .line 60
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    move-object v10, v1

    .line 62
    invoke-direct {v9, v10}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v9

    .line 61
    invoke-direct {v6, v7, v8, v9}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v6

    aput v6, v4, v5

    .line 66
    :goto_1
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    return-object v0

    .line 57
    .restart local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    :cond_0
    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    goto :goto_0

    .line 64
    :cond_1
    move-object v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    goto :goto_1
.end method

.method protected createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
    .locals 7

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    move-object v1, p1

    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v2, v1

    instance-of v2, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v2, :cond_0

    .line 126
    const/4 v2, 0x0

    move-object v0, v2

    .line 128
    .end local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/PagerSnapHelper$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/PagerSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/PagerSnapHelper$1;-><init>(Landroidx/recyclerview/widget/PagerSnapHelper;Landroid/content/Context;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    move-object v1, p1

    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/PagerSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .line 77
    .end local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    :goto_0
    return-object v0

    .line 74
    .restart local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/PagerSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 77
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 15

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    move-object/from16 v1, p1

    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move/from16 v2, p2

    .local v2, "velocityX":I
    move/from16 v3, p3

    .local v3, "velocityY":I
    move-object v11, v1

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v11

    move v4, v11

    .line 84
    .local v4, "itemCount":I
    move v11, v4

    if-nez v11, :cond_0

    .line 85
    const/4 v11, -0x1

    move v0, v11

    .line 118
    .end local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    :goto_0
    return v0

    .line 88
    .restart local v0    # "this":Landroidx/recyclerview/widget/PagerSnapHelper;
    :cond_0
    const/4 v11, 0x0

    move-object v5, v11

    .line 89
    .local v5, "mStartMostChildView":Landroid/view/View;
    move-object v11, v1

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 90
    move-object v11, v0

    move-object v12, v1

    move-object v13, v0

    move-object v14, v1

    invoke-direct {v13, v14}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroidx/recyclerview/widget/PagerSnapHelper;->findStartView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v11

    move-object v5, v11

    .line 95
    :cond_1
    :goto_1
    move-object v11, v5

    if-nez v11, :cond_3

    .line 96
    const/4 v11, -0x1

    move v0, v11

    goto :goto_0

    .line 91
    :cond_2
    move-object v11, v1

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 92
    move-object v11, v0

    move-object v12, v1

    move-object v13, v0

    move-object v14, v1

    invoke-direct {v13, v14}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroidx/recyclerview/widget/PagerSnapHelper;->findStartView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v11

    move-object v5, v11

    goto :goto_1

    .line 98
    :cond_3
    move-object v11, v1

    move-object v12, v5

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move v6, v11

    .line 99
    .local v6, "centerPosition":I
    move v11, v6

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    .line 100
    const/4 v11, -0x1

    move v0, v11

    goto :goto_0

    .line 104
    :cond_4
    move-object v11, v1

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 105
    move v11, v2

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_2
    move v7, v11

    .line 109
    .local v7, "forwardDirection":Z
    :goto_3
    const/4 v11, 0x0

    move v8, v11

    .line 110
    .local v8, "reverseLayout":Z
    move-object v11, v1

    instance-of v11, v11, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v11, :cond_6

    .line 111
    move-object v11, v1

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    move-object v9, v11

    .line 113
    .local v9, "vectorProvider":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    move-object v11, v9

    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v11

    move-object v10, v11

    .line 114
    .local v10, "vectorForEnd":Landroid/graphics/PointF;
    move-object v11, v10

    if-eqz v11, :cond_6

    .line 115
    move-object v11, v10

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_5

    move-object v11, v10

    iget v11, v11, Landroid/graphics/PointF;->y:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_a

    :cond_5
    const/4 v11, 0x1

    :goto_4
    move v8, v11

    .line 118
    .end local v9    # "vectorProvider":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    .end local v10    # "vectorForEnd":Landroid/graphics/PointF;
    :cond_6
    move v11, v8

    if-eqz v11, :cond_c

    move v11, v7

    if-eqz v11, :cond_b

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    :goto_5
    move v0, v11

    goto/16 :goto_0

    .line 105
    .end local v7    # "forwardDirection":Z
    .end local v8    # "reverseLayout":Z
    :cond_7
    const/4 v11, 0x0

    goto :goto_2

    .line 107
    :cond_8
    move v11, v3

    if-lez v11, :cond_9

    const/4 v11, 0x1

    :goto_6
    move v7, v11

    .restart local v7    # "forwardDirection":Z
    goto :goto_3

    .end local v7    # "forwardDirection":Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_6

    .line 115
    .restart local v7    # "forwardDirection":Z
    .restart local v8    # "reverseLayout":Z
    .restart local v9    # "vectorProvider":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    .restart local v10    # "vectorForEnd":Landroid/graphics/PointF;
    :cond_a
    const/4 v11, 0x0

    goto :goto_4

    .line 118
    .end local v9    # "vectorProvider":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    .end local v10    # "vectorForEnd":Landroid/graphics/PointF;
    :cond_b
    move v11, v6

    goto :goto_5

    :cond_c
    move v11, v7

    if-eqz v11, :cond_d

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_d
    move v11, v6

    goto :goto_5
.end method
