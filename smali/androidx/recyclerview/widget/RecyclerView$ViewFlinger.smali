.class Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    .prologue
    .line 5033
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 5025
    move-object v2, v0

    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5028
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 5031
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 5034
    move-object v2, v0

    new-instance v3, Landroid/widget/OverScroller;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v4, v5, v6}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 5035
    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 22

    .prologue
    .line 5202
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    move/from16 v3, p1

    .local v3, "dx":I
    move/from16 v4, p2

    .local v4, "dy":I
    move/from16 v5, p3

    .local v5, "vx":I
    move/from16 v6, p4

    .local v6, "vy":I
    move/from16 v18, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v7, v18

    .line 5203
    .local v7, "absDx":I
    move/from16 v18, v4

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v8, v18

    .line 5204
    .local v8, "absDy":I
    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    const/16 v18, 0x1

    :goto_0
    move/from16 v9, v18

    .line 5205
    .local v9, "horizontal":Z
    move/from16 v18, v5

    move/from16 v19, v5

    mul-int v18, v18, v19

    move/from16 v19, v6

    move/from16 v20, v6

    mul-int v19, v19, v20

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v10, v18

    .line 5206
    .local v10, "velocity":I
    move/from16 v18, v3

    move/from16 v19, v3

    mul-int v18, v18, v19

    move/from16 v19, v4

    move/from16 v20, v4

    mul-int v19, v19, v20

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v11, v18

    .line 5207
    .local v11, "delta":I
    move/from16 v18, v9

    if-eqz v18, :cond_1

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v18

    :goto_1
    move/from16 v12, v18

    .line 5208
    .local v12, "containerSize":I
    move/from16 v18, v12

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    move/from16 v13, v18

    .line 5209
    .local v13, "halfContainerSize":I
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v20, v12

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move/from16 v14, v18

    .line 5210
    .local v14, "distanceRatio":F
    move/from16 v18, v13

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v13

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v2

    move/from16 v21, v14

    .line 5211
    invoke-direct/range {v20 .. v21}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v20

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v15, v18

    .line 5214
    .local v15, "distance":F
    move/from16 v18, v10

    if-lez v18, :cond_2

    .line 5215
    const/16 v18, 0x4

    const/high16 v19, 0x447a0000    # 1000.0f

    move/from16 v20, v15

    move/from16 v21, v10

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    mul-int v18, v18, v19

    move/from16 v16, v18

    .line 5220
    .local v16, "duration":I
    :goto_2
    move/from16 v18, v16

    const/16 v19, 0x7d0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v2, v18

    .end local v2    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    return v2

    .line 5204
    .end local v9    # "horizontal":Z
    .end local v10    # "velocity":I
    .end local v11    # "delta":I
    .end local v12    # "containerSize":I
    .end local v13    # "halfContainerSize":I
    .end local v14    # "distanceRatio":F
    .end local v15    # "distance":F
    .end local v16    # "duration":I
    .restart local v2    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    :cond_0
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 5207
    .restart local v9    # "horizontal":Z
    .restart local v10    # "velocity":I
    .restart local v11    # "delta":I
    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v18

    goto :goto_1

    .line 5217
    .restart local v12    # "containerSize":I
    .restart local v13    # "halfContainerSize":I
    .restart local v14    # "distanceRatio":F
    .restart local v15    # "distance":F
    :cond_2
    move/from16 v18, v9

    if-eqz v18, :cond_3

    move/from16 v18, v7

    :goto_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 5218
    .local v17, "absDelta":F
    move/from16 v18, v17

    move/from16 v19, v12

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v18, v18, v19

    const/high16 v19, 0x43960000    # 300.0f

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v16, v18

    .restart local v16    # "duration":I
    goto :goto_2

    .line 5217
    .end local v16    # "duration":I
    .end local v17    # "absDelta":F
    :cond_3
    move/from16 v18, v8

    goto :goto_3
.end method

.method private disableRunOnAnimationRequests()V
    .locals 3

    .prologue
    .line 5159
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 5160
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 5161
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    .prologue
    .line 5196
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    move v1, p1

    .local v1, "f":F
    move v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    move v1, v2

    .line 5197
    move v2, v1

    const v3, 0x3ef1463b

    mul-float/2addr v2, v3

    move v1, v2

    .line 5198
    move v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    return v0
.end method

.method private enableRunOnAnimationRequests()V
    .locals 3

    .prologue
    .line 5164
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 5165
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v1, :cond_0

    .line 5166
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5168
    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 14

    .prologue
    .line 5180
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    move v1, p1

    .local v1, "velocityX":I
    move/from16 v2, p2

    .local v2, "velocityY":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5181
    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v12, v4

    move v13, v5

    move v4, v13

    move-object v5, v12

    move v6, v13

    iput v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 5182
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v1

    move v7, v2

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 5184
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5185
    return-void
.end method

.method postOnAnimation()V
    .locals 3

    .prologue
    .line 5171
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v1, :cond_0

    .line 5172
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 5177
    :goto_0
    return-void

    .line 5174
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 5175
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 24

    .prologue
    .line 5039
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 5040
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    .line 5041
    .line 5156
    :goto_0
    return-void

    .line 5043
    :cond_0
    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 5044
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 5047
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v17, v0

    move-object/from16 v3, v17

    .line 5048
    .local v3, "scroller":Landroid/widget/OverScroller;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-object/from16 v17, v0

    move-object/from16 v4, v17

    .line 5049
    .local v4, "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 5050
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v17, v0

    move-object/from16 v5, v17

    .line 5051
    .local v5, "scrollConsumed":[I
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v17

    move/from16 v6, v17

    .line 5052
    .local v6, "x":I
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v17

    move/from16 v7, v17

    .line 5053
    .local v7, "y":I
    move/from16 v17, v6

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v8, v17

    .line 5054
    .local v8, "dx":I
    move/from16 v17, v7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v9, v17

    .line 5055
    .local v9, "dy":I
    const/16 v17, 0x0

    move/from16 v10, v17

    .line 5056
    .local v10, "hresult":I
    const/16 v17, 0x0

    move/from16 v11, v17

    .line 5057
    .local v11, "vresult":I
    move-object/from16 v17, v2

    move/from16 v18, v6

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 5058
    move-object/from16 v17, v2

    move/from16 v18, v7

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 5059
    const/16 v17, 0x0

    move/from16 v12, v17

    .local v12, "overscrollX":I
    const/16 v17, 0x0

    move/from16 v13, v17

    .line 5061
    .local v13, "overscrollY":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v5

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v17 .. v22}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 5062
    move/from16 v17, v8

    move-object/from16 v18, v5

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v8, v17

    .line 5063
    move/from16 v17, v9

    move-object/from16 v18, v5

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v9, v17

    .line 5066
    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 5067
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollStepConsumed:[I

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 5068
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollStepConsumed:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v10, v17

    .line 5069
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollStepConsumed:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v11, v17

    .line 5070
    move/from16 v17, v8

    move/from16 v18, v10

    sub-int v17, v17, v18

    move/from16 v12, v17

    .line 5071
    move/from16 v17, v9

    move/from16 v18, v11

    sub-int v17, v17, v18

    move/from16 v13, v17

    .line 5073
    move-object/from16 v17, v4

    if-eqz v17, :cond_2

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v17, v4

    .line 5074
    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 5075
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v17

    move/from16 v14, v17

    .line 5076
    .local v14, "adapterSize":I
    move/from16 v17, v14

    if-nez v17, :cond_16

    .line 5077
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 5086
    .end local v14    # "adapterSize":I
    :cond_2
    :goto_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_3

    .line 5087
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 5089
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 5090
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 5093
    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-virtual/range {v17 .. v23}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v17

    if-nez v17, :cond_b

    move/from16 v17, v12

    if-nez v17, :cond_5

    move/from16 v17, v13

    if-eqz v17, :cond_b

    .line 5096
    :cond_5
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v14, v17

    .line 5098
    .local v14, "vel":I
    const/16 v17, 0x0

    move/from16 v15, v17

    .line 5099
    .local v15, "velX":I
    move/from16 v17, v12

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 5100
    move/from16 v17, v12

    if-gez v17, :cond_18

    move/from16 v17, v14

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    :goto_2
    move/from16 v15, v17

    .line 5103
    :cond_6
    const/16 v17, 0x0

    move/from16 v16, v17

    .line 5104
    .local v16, "velY":I
    move/from16 v17, v13

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 5105
    move/from16 v17, v13

    if-gez v17, :cond_1a

    move/from16 v17, v14

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    :goto_3
    move/from16 v16, v17

    .line 5108
    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 5109
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move/from16 v18, v15

    move/from16 v19, v16

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    .line 5111
    :cond_8
    move/from16 v17, v15

    if-nez v17, :cond_9

    move/from16 v17, v12

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v17

    if-nez v17, :cond_b

    :cond_9
    move/from16 v17, v16

    if-nez v17, :cond_a

    move/from16 v17, v13

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v17, v3

    .line 5112
    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v17

    if-nez v17, :cond_b

    .line 5113
    :cond_a
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5116
    .end local v14    # "vel":I
    .end local v15    # "velX":I
    .end local v16    # "velY":I
    :cond_b
    move/from16 v17, v10

    if-nez v17, :cond_c

    move/from16 v17, v11

    if-eqz v17, :cond_d

    .line 5117
    :cond_c
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 5120
    :cond_d
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->access$200(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 5121
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 5124
    :cond_e
    move/from16 v17, v9

    if-eqz v17, :cond_1c

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v17

    if-eqz v17, :cond_1c

    move/from16 v17, v11

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    const/16 v17, 0x1

    :goto_4
    move/from16 v14, v17

    .line 5126
    .local v14, "fullyConsumedVertical":Z
    move/from16 v17, v8

    if-eqz v17, :cond_1d

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v17

    if-eqz v17, :cond_1d

    move/from16 v17, v10

    move/from16 v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d

    const/16 v17, 0x1

    :goto_5
    move/from16 v15, v17

    .line 5128
    .local v15, "fullyConsumedHorizontal":Z
    move/from16 v17, v8

    if-nez v17, :cond_f

    move/from16 v17, v9

    if-eqz v17, :cond_10

    :cond_f
    move/from16 v17, v15

    if-nez v17, :cond_10

    move/from16 v17, v14

    if-eqz v17, :cond_1e

    :cond_10
    const/16 v17, 0x1

    :goto_6
    move/from16 v16, v17

    .line 5131
    .local v16, "fullyConsumedAny":Z
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_11

    move/from16 v17, v16

    if-nez v17, :cond_1f

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    .line 5132
    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/RecyclerView;->hasNestedScrollingParent(I)Z

    move-result v17

    if-nez v17, :cond_1f

    .line 5134
    :cond_11
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5135
    sget-boolean v17, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v17, :cond_12

    .line 5136
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 5138
    :cond_12
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 5147
    .end local v5    # "scrollConsumed":[I
    .end local v6    # "x":I
    .end local v7    # "y":I
    .end local v8    # "dx":I
    .end local v9    # "dy":I
    .end local v10    # "hresult":I
    .end local v11    # "vresult":I
    .end local v12    # "overscrollX":I
    .end local v13    # "overscrollY":I
    .end local v14    # "fullyConsumedVertical":Z
    .end local v15    # "fullyConsumedHorizontal":Z
    .end local v16    # "fullyConsumedAny":Z
    :cond_13
    :goto_7
    move-object/from16 v17, v4

    if-eqz v17, :cond_15

    .line 5148
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 5149
    move-object/from16 v17, v4

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 5151
    :cond_14
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    move/from16 v17, v0

    if-nez v17, :cond_15

    .line 5152
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 5155
    :cond_15
    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    .line 5156
    goto/16 :goto_0

    .line 5078
    .restart local v5    # "scrollConsumed":[I
    .restart local v6    # "x":I
    .restart local v7    # "y":I
    .restart local v8    # "dx":I
    .restart local v9    # "dy":I
    .restart local v10    # "hresult":I
    .restart local v11    # "vresult":I
    .restart local v12    # "overscrollX":I
    .restart local v13    # "overscrollY":I
    .local v14, "adapterSize":I
    :cond_16
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v17

    move/from16 v18, v14

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_17

    .line 5079
    move-object/from16 v17, v4

    move/from16 v18, v14

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 5080
    move-object/from16 v17, v4

    move/from16 v18, v8

    move/from16 v19, v12

    sub-int v18, v18, v19

    move/from16 v19, v9

    move/from16 v20, v13

    sub-int v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto/16 :goto_1

    .line 5082
    :cond_17
    move-object/from16 v17, v4

    move/from16 v18, v8

    move/from16 v19, v12

    sub-int v18, v18, v19

    move/from16 v19, v9

    move/from16 v20, v13

    sub-int v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto/16 :goto_1

    .line 5100
    .local v14, "vel":I
    .local v15, "velX":I
    :cond_18
    move/from16 v17, v12

    if-lez v17, :cond_19

    move/from16 v17, v14

    goto/16 :goto_2

    :cond_19
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 5105
    .local v16, "velY":I
    :cond_1a
    move/from16 v17, v13

    if-lez v17, :cond_1b

    move/from16 v17, v14

    goto/16 :goto_3

    :cond_1b
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 5124
    .end local v14    # "vel":I
    .end local v15    # "velX":I
    .end local v16    # "velY":I
    :cond_1c
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 5126
    .local v14, "fullyConsumedVertical":Z
    :cond_1d
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 5128
    .local v15, "fullyConsumedHorizontal":Z
    :cond_1e
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 5140
    .local v16, "fullyConsumedAny":Z
    :cond_1f
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5141
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    .line 5142
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v18, v0

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-virtual/range {v17 .. v20}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto/16 :goto_7
.end method

.method public smoothScrollBy(II)V
    .locals 8

    .prologue
    .line 5188
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    .line 5189
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 9

    .prologue
    .line 5224
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move v3, p3

    .local v3, "duration":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    sget-object v8, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 5225
    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 13

    .prologue
    .line 5192
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move/from16 v3, p3

    .local v3, "vx":I
    move/from16 v4, p4

    .local v4, "vy":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 5193
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 13

    .prologue
    .line 5233
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move/from16 v3, p3

    .local v3, "duration":I
    move-object/from16 v4, p4

    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object v6, v4

    if-eq v5, v6, :cond_0

    .line 5234
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5235
    move-object v5, v0

    new-instance v6, Landroid/widget/OverScroller;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 5237
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5238
    move-object v5, v0

    move-object v6, v0

    const/4 v7, 0x0

    move-object v11, v6

    move v12, v7

    move v6, v12

    move-object v7, v11

    move v8, v12

    iput v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 5239
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual/range {v5 .. v10}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5240
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_1

    .line 5244
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v5

    .line 5246
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5247
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 12

    .prologue
    .line 5228
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move-object v3, p3

    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v0

    move v8, v1

    move v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v7

    move-object v8, v3

    if-nez v8, :cond_0

    sget-object v8, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 5230
    return-void

    .line 5228
    :cond_0
    move-object v8, v3

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 5250
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 5251
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5252
    return-void
.end method
