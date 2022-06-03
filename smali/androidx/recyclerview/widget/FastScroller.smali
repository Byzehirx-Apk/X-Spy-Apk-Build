.class Landroidx/recyclerview/widget/FastScroller;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FastScroller.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;,
        Landroidx/recyclerview/widget/FastScroller$AnimatorListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_FADING_IN:I = 0x1

.field private static final ANIMATION_STATE_FADING_OUT:I = 0x3

.field private static final ANIMATION_STATE_IN:I = 0x2

.field private static final ANIMATION_STATE_OUT:I = 0x0

.field private static final DRAG_NONE:I = 0x0

.field private static final DRAG_X:I = 0x1

.field private static final DRAG_Y:I = 0x2

.field private static final EMPTY_STATE_SET:[I

.field private static final HIDE_DELAY_AFTER_DRAGGING_MS:I = 0x4b0

.field private static final HIDE_DELAY_AFTER_VISIBLE_MS:I = 0x5dc

.field private static final HIDE_DURATION_MS:I = 0x1f4

.field private static final PRESSED_STATE_SET:[I

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xff

.field private static final SHOW_DURATION_MS:I = 0x1f4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1


# instance fields
.field mAnimationState:I

.field private mDragState:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field mHorizontalDragX:F
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalRange:[I

.field mHorizontalThumbCenterX:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private final mHorizontalThumbHeight:I

.field mHorizontalThumbWidth:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHorizontalTrackHeight:I

.field private final mMargin:I

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private final mScrollbarMinimumRange:I

.field final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field mVerticalDragY:F
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalRange:[I

.field mVerticalThumbCenterY:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field mVerticalThumbHeight:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalThumbWidth:I

.field final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalTrackWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    sput-object v0, Landroidx/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 15

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object/from16 v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v2, p2

    .local v2, "verticalThumbDrawable":Landroid/graphics/drawable/StateListDrawable;
    move-object/from16 v3, p3

    .local v3, "verticalTrackDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v4, p4

    .local v4, "horizontalThumbDrawable":Landroid/graphics/drawable/StateListDrawable;
    move-object/from16 v5, p5

    .local v5, "horizontalTrackDrawable":Landroid/graphics/drawable/Drawable;
    move/from16 v6, p6

    .local v6, "defaultWidth":I
    move/from16 v7, p7

    .local v7, "scrollbarMinimumRange":I
    move/from16 v8, p8

    .local v8, "margin":I
    move-object v9, v0

    invoke-direct {v9}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 104
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 105
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 112
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 113
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 114
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 115
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 117
    move-object v9, v0

    const/4 v10, 0x2

    new-array v10, v10, [I

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    .line 118
    move-object v9, v0

    const/4 v10, 0x2

    new-array v10, v10, [I

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    .line 119
    move-object v9, v0

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    .line 120
    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 121
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 123
    move-object v9, v0

    new-instance v10, Landroidx/recyclerview/widget/FastScroller$1;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/recyclerview/widget/FastScroller$1;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    .line 129
    move-object v9, v0

    new-instance v10, Landroidx/recyclerview/widget/FastScroller$2;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 142
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 143
    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 145
    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 146
    move-object v9, v0

    move v10, v6

    move-object v11, v2

    invoke-virtual {v11}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    .line 147
    move-object v9, v0

    move v10, v6

    move-object v11, v3

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    .line 148
    move-object v9, v0

    move v10, v6

    move-object v11, v4

    .line 149
    invoke-virtual {v11}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    .line 150
    move-object v9, v0

    move v10, v6

    move-object v11, v5

    .line 151
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 152
    move-object v9, v0

    move v10, v7

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    .line 153
    move-object v9, v0

    move v10, v8

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    .line 154
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/16 v10, 0xff

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 155
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v10, 0xff

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/FastScroller;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 161
    return-void

    .line 119
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cancelHide()V
    .locals 3

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 268
    return-void
.end method

.method private destroyCallbacks()V
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 184
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 185
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 186
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/FastScroller;->cancelHide()V

    .line 187
    return-void
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    move v2, v5

    .line 327
    .local v2, "viewHeight":I
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 328
    .local v3, "top":I
    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    move v4, v5

    .line 329
    .local v4, "left":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 330
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 331
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    move-object v5, v1

    const/4 v6, 0x0

    move v7, v3

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 334
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 335
    move-object v5, v1

    move v6, v4

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 336
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 337
    move-object v5, v1

    move v6, v4

    neg-int v6, v6

    int-to-float v6, v6

    move v7, v3

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 338
    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    move v2, v5

    .line 302
    .local v2, "viewWidth":I
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 303
    .local v3, "left":I
    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    move v4, v5

    .line 304
    .local v4, "top":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 305
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 306
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 308
    move-object v5, v0

    invoke-direct {v5}, Landroidx/recyclerview/widget/FastScroller;->isLayoutRTL()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 309
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    int-to-float v6, v6

    move v7, v4

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 311
    move-object v5, v1

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 312
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 313
    move-object v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 314
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    neg-int v6, v6

    int-to-float v6, v6

    move v7, v4

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 322
    :goto_0
    return-void

    .line 316
    :cond_0
    move-object v5, v1

    move v6, v3

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 317
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 318
    move-object v5, v1

    const/4 v6, 0x0

    move v7, v4

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 319
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 320
    move-object v5, v1

    move v6, v3

    neg-int v6, v6

    int-to-float v6, v6

    move v7, v4

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private getHorizontalRange()[I
    .locals 5

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    const/4 v2, 0x0

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    aput v3, v1, v2

    .line 552
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    const/4 v2, 0x1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 553
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    return-object v0
.end method

.method private getVerticalRange()[I
    .locals 5

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    const/4 v2, 0x0

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    aput v3, v1, v2

    .line 543
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    const/4 v2, 0x1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 544
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .locals 11

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move v1, p1

    .local v1, "x":F
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/FastScroller;->getHorizontalRange()[I

    move-result-object v4

    move-object v2, v4

    .line 471
    .local v2, "scrollbarRange":[I
    move-object v4, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    move-object v5, v2

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    move v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v1, v4

    .line 472
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    int-to-float v4, v4

    move v5, v1

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 473
    .line 484
    :goto_0
    return-void

    .line 476
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    move v6, v1

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 477
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 478
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 476
    invoke-direct/range {v4 .. v10}, Landroidx/recyclerview/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v4

    move v3, v4

    .line 479
    .local v3, "scrollingBy":I
    move v4, v3

    if-eqz v4, :cond_1

    .line 480
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 483
    :cond_1
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 484
    goto :goto_0
.end method

.method private isLayoutRTL()Z
    .locals 3

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetHideDelay(I)V
    .locals 6

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move v1, p1

    .local v1, "delay":I
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/FastScroller;->cancelHide()V

    .line 272
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    move v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 273
    return-void
.end method

.method private scrollTo(FF[IIII)I
    .locals 15

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move/from16 v1, p1

    .local v1, "oldDragPos":F
    move/from16 v2, p2

    .local v2, "newDragPos":F
    move-object/from16 v3, p3

    .local v3, "scrollbarRange":[I
    move/from16 v4, p4

    .local v4, "scrollRange":I
    move/from16 v5, p5

    .local v5, "scrollOffset":I
    move/from16 v6, p6

    .local v6, "viewLength":I
    move-object v12, v3

    const/4 v13, 0x1

    aget v12, v12, v13

    move-object v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    sub-int/2addr v12, v13

    move v7, v12

    .line 489
    .local v7, "scrollbarLength":I
    move v12, v7

    if-nez v12, :cond_0

    .line 490
    const/4 v12, 0x0

    move v0, v12

    .line 499
    .end local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    :goto_0
    return v0

    .line 492
    .restart local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    :cond_0
    move v12, v2

    move v13, v1

    sub-float/2addr v12, v13

    move v13, v7

    int-to-float v13, v13

    div-float/2addr v12, v13

    move v8, v12

    .line 493
    .local v8, "percentage":F
    move v12, v4

    move v13, v6

    sub-int/2addr v12, v13

    move v9, v12

    .line 494
    .local v9, "totalPossibleOffset":I
    move v12, v8

    move v13, v9

    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    move v10, v12

    .line 495
    .local v10, "scrollingBy":I
    move v12, v5

    move v13, v10

    add-int/2addr v12, v13

    move v11, v12

    .line 496
    .local v11, "absoluteOffset":I
    move v12, v11

    move v13, v9

    if-ge v12, v13, :cond_1

    move v12, v11

    if-ltz v12, :cond_1

    .line 497
    move v12, v10

    move v0, v12

    goto :goto_0

    .line 499
    :cond_1
    const/4 v12, 0x0

    move v0, v12

    goto :goto_0
.end method

.method private setupCallbacks()V
    .locals 3

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 178
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 179
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 180
    return-void
.end method

.method private verticalScrollTo(F)V
    .locals 11

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move v1, p1

    .local v1, "y":F
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/FastScroller;->getVerticalRange()[I

    move-result-object v4

    move-object v2, v4

    .line 456
    .local v2, "scrollbarRange":[I
    move-object v4, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    move-object v5, v2

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    move v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v1, v4

    .line 457
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    int-to-float v4, v4

    move v5, v1

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 458
    .line 467
    :goto_0
    return-void

    .line 460
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    move v6, v1

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 461
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 462
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 460
    invoke-direct/range {v4 .. v10}, Landroidx/recyclerview/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v4

    move v3, v4

    .line 463
    .local v3, "scrollingBy":I
    move v4, v3

    if-eqz v4, :cond_1

    .line 464
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 466
    :cond_1
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 467
    goto :goto_0
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 165
    .line 174
    :goto_0
    return-void

    .line 167
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1

    .line 168
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/FastScroller;->destroyCallbacks()V

    .line 170
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_2

    .line 172
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/FastScroller;->setupCallbacks()V

    .line 174
    :cond_2
    goto :goto_0
.end method

.method getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    return-object v0
.end method

.method getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    return-object v0
.end method

.method getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    return-object v0
.end method

.method getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 530
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/FastScroller;->hide(I)V

    .line 249
    return-void
.end method

.method hide(I)V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 253
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/FastScroller;
    move v2, p1

    .local v2, "duration":I
    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    packed-switch v3, :pswitch_data_0

    .line 264
    :goto_0
    return-void

    .line 255
    :pswitch_0
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 258
    :pswitch_1
    move-object v3, v1

    const/4 v4, 0x3

    iput v4, v3, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 259
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    iget-object v7, v7, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 260
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 261
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isDragging()Z
    .locals 3

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isHidden()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isPointInsideHorizontalThumb(FF)Z
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isPointInsideVerticalThumb(FF)Z
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/FastScroller;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    :cond_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    :cond_1
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gez v3, :cond_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isVisible()Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "parent":Landroidx/recyclerview/widget/RecyclerView;
    move-object v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 278
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 279
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v5

    iput v5, v4, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 280
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v5

    iput v5, v4, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 285
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 286
    .line 297
    :goto_0
    return-void

    .line 289
    :cond_1
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    if-eqz v4, :cond_3

    .line 290
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz v4, :cond_2

    .line 291
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/FastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    .line 293
    :cond_2
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v4, :cond_3

    .line 294
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/FastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    .line 297
    :cond_3
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "ev":Landroid/view/MotionEvent;
    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 391
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v6

    move v4, v6

    .line 392
    .local v4, "insideVerticalThumb":Z
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v6

    move v5, v6

    .line 393
    .local v5, "insideHorizontalThumb":Z
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v4

    if-nez v6, :cond_0

    move v6, v5

    if-eqz v6, :cond_3

    .line 395
    :cond_0
    move v6, v5

    if-eqz v6, :cond_2

    .line 396
    move-object v6, v0

    const/4 v7, 0x1

    iput v7, v6, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 397
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    iput v7, v6, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 403
    :cond_1
    :goto_0
    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 404
    const/4 v6, 0x1

    move v3, v6

    .line 408
    .line 413
    .end local v4    # "insideVerticalThumb":Z
    .end local v5    # "insideHorizontalThumb":Z
    .local v3, "handled":Z
    :goto_1
    move v6, v3

    move v0, v6

    .end local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    return v0

    .line 398
    .end local v3    # "handled":Z
    .restart local v0    # "this":Landroidx/recyclerview/widget/FastScroller;
    .restart local v4    # "insideVerticalThumb":Z
    .restart local v5    # "insideHorizontalThumb":Z
    :cond_2
    move v6, v4

    if-eqz v6, :cond_1

    .line 399
    move-object v6, v0

    const/4 v7, 0x2

    iput v7, v6, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 400
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    iput v7, v6, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    goto :goto_0

    .line 406
    :cond_3
    const/4 v6, 0x0

    move v3, v6

    .restart local v3    # "handled":Z
    goto :goto_1

    .line 408
    .end local v3    # "handled":Z
    .end local v4    # "insideVerticalThumb":Z
    .end local v5    # "insideHorizontalThumb":Z
    :cond_4
    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 409
    const/4 v6, 0x1

    move v3, v6

    .restart local v3    # "handled":Z
    goto :goto_1

    .line 411
    .end local v3    # "handled":Z
    :cond_5
    const/4 v6, 0x0

    move v3, v6

    .restart local v3    # "handled":Z
    goto :goto_1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 452
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "me":Landroid/view/MotionEvent;
    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-nez v5, :cond_0

    .line 419
    .line 449
    :goto_0
    return-void

    .line 422
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    .line 423
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v5

    move v3, v5

    .line 424
    .local v3, "insideVerticalThumb":Z
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v5

    move v4, v5

    .line 425
    .local v4, "insideHorizontalThumb":Z
    move v5, v3

    if-nez v5, :cond_1

    move v5, v4

    if-eqz v5, :cond_3

    .line 426
    :cond_1
    move v5, v4

    if-eqz v5, :cond_4

    .line 427
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 428
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 433
    :cond_2
    :goto_1
    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 435
    .line 449
    .end local v3    # "insideVerticalThumb":Z
    .end local v4    # "insideHorizontalThumb":Z
    :cond_3
    :goto_2
    goto :goto_0

    .line 429
    .restart local v3    # "insideVerticalThumb":Z
    .restart local v4    # "insideHorizontalThumb":Z
    :cond_4
    move v5, v3

    if-eqz v5, :cond_2

    .line 430
    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 431
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    goto :goto_1

    .line 435
    .end local v3    # "insideVerticalThumb":Z
    .end local v4    # "insideHorizontalThumb":Z
    :cond_5
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 436
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 437
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 438
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 439
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    goto :goto_2

    .line 440
    :cond_6
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 441
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/FastScroller;->show()V

    .line 442
    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 443
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/FastScroller;->horizontalScrollTo(F)V

    .line 445
    :cond_7
    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 446
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/FastScroller;->verticalScrollTo(F)V

    goto :goto_2
.end method

.method requestRedraw()V
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 192
    return-void
.end method

.method setState(I)V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move v1, p1

    .local v1, "state":I
    move v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 196
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v3, Landroidx/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    move-result v2

    .line 197
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/FastScroller;->cancelHide()V

    .line 200
    :cond_0
    move v2, v1

    if-nez v2, :cond_2

    .line 201
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/FastScroller;->requestRedraw()V

    .line 206
    :goto_0
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 207
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v3, Landroidx/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    move-result v2

    .line 208
    move-object v2, v0

    const/16 v3, 0x4b0

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/FastScroller;->resetHideDelay(I)V

    .line 212
    :cond_1
    :goto_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 213
    return-void

    .line 203
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/FastScroller;->show()V

    goto :goto_0

    .line 209
    :cond_3
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 210
    move-object v2, v0

    const/16 v3, 0x5dc

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/FastScroller;->resetHideDelay(I)V

    goto :goto_1
.end method

.method public show()V
    .locals 7

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    packed-switch v1, :pswitch_data_0

    .line 245
    :goto_0
    :pswitch_0
    return-void

    .line 235
    :pswitch_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 238
    :pswitch_2
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 239
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 240
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 241
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 242
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateScrollPosition(II)V
    .locals 12

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller;
    move v1, p1

    .local v1, "offsetX":I
    move v2, p2

    .local v2, "offsetY":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v8

    move v3, v8

    .line 349
    .local v3, "verticalContentLength":I
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    move v4, v8

    .line 350
    .local v4, "verticalVisibleLength":I
    move-object v8, v0

    move v9, v3

    move v10, v4

    sub-int/2addr v9, v10

    if-lez v9, :cond_1

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, v8, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 353
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v8

    move v5, v8

    .line 354
    .local v5, "horizontalContentLength":I
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    move v6, v8

    .line 355
    .local v6, "horizontalVisibleLength":I
    move-object v8, v0

    move v9, v5

    move v10, v6

    sub-int/2addr v9, v10

    if-lez v9, :cond_2

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v8, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 358
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v8, :cond_3

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-nez v8, :cond_3

    .line 359
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eqz v8, :cond_0

    .line 360
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 362
    .line 384
    :cond_0
    :goto_2
    return-void

    .line 350
    .end local v5    # "horizontalContentLength":I
    .end local v6    # "horizontalVisibleLength":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 355
    .restart local v5    # "horizontalContentLength":I
    .restart local v6    # "horizontalVisibleLength":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 365
    :cond_3
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz v8, :cond_4

    .line 366
    move v8, v2

    int-to-float v8, v8

    move v9, v4

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    move v7, v8

    .line 367
    .local v7, "middleScreenPos":F
    move-object v8, v0

    move v9, v4

    int-to-float v9, v9

    move v10, v7

    mul-float/2addr v9, v10

    move v10, v3

    int-to-float v10, v10

    div-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 369
    move-object v8, v0

    move v9, v4

    move v10, v4

    move v11, v4

    mul-int/2addr v10, v11

    move v11, v3

    div-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v8, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    .line 373
    .end local v7    # "middleScreenPos":F
    :cond_4
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v8, :cond_5

    .line 374
    move v8, v1

    int-to-float v8, v8

    move v9, v6

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    move v7, v8

    .line 375
    .restart local v7    # "middleScreenPos":F
    move-object v8, v0

    move v9, v6

    int-to-float v9, v9

    move v10, v7

    mul-float/2addr v9, v10

    move v10, v5

    int-to-float v10, v10

    div-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    .line 377
    move-object v8, v0

    move v9, v6

    move v10, v6

    move v11, v6

    mul-int/2addr v10, v11

    move v11, v5

    div-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v8, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    .line 381
    .end local v7    # "middleScreenPos":F
    :cond_5
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eqz v8, :cond_6

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 382
    :cond_6
    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 384
    :cond_7
    goto :goto_2
.end method
