.class public Landroidx/recyclerview/widget/ItemTouchHelper;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;,
        Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;,
        Landroidx/recyclerview/widget/ItemTouchHelper$Callback;,
        Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field private static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field private static final DEBUG:Z = false

.field static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field private mActionState:I

.field mActivePointerId:I

.field mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field mDx:F

.field mDy:F

.field mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field private mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

.field private mMaxSwipeVelocity:F

.field private final mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field mOverdrawChild:Landroid/view/View;

.field mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final mScrollRunnable:Ljava/lang/Runnable;

.field mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mSelectedFlags:I

.field private mSelectedStartX:F

.field private mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeEscapeVelocity:F

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "callback":Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 167
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 172
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [F

    iput-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    .line 177
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 217
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 229
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 246
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 256
    move-object v2, v0

    new-instance v3, Landroidx/recyclerview/widget/ItemTouchHelper$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/ItemTouchHelper$1;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 284
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 291
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 299
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 313
    move-object v2, v0

    new-instance v3, Landroidx/recyclerview/widget/ItemTouchHelper$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/ItemTouchHelper$2;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 447
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 448
    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .locals 6

    .prologue
    .line 1290
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1291
    .line 1313
    :goto_0
    return-void

    .line 1293
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v1, :cond_1

    .line 1294
    move-object v1, v0

    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$5;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1312
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1313
    goto :goto_0
.end method

.method private checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .locals 12

    .prologue
    .line 1237
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v2, p2

    .local v2, "flags":I
    move v8, v2

    const/16 v9, 0xc

    and-int/lit8 v8, v8, 0xc

    if-eqz v8, :cond_3

    .line 1238
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    const/16 v8, 0x8

    :goto_0
    move v3, v8

    .line 1239
    .local v3, "dirFlag":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_2

    .line 1240
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1241
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v10

    .line 1240
    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1242
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    move v4, v8

    .line 1243
    .local v4, "xVelocity":F
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v8

    move v5, v8

    .line 1244
    .local v5, "yVelocity":F
    move v8, v4

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    const/16 v8, 0x8

    :goto_1
    move v6, v8

    .line 1245
    .local v6, "velDirFlag":I
    move v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move v7, v8

    .line 1246
    .local v7, "absXVelocity":F
    move v8, v6

    move v9, v2

    and-int/2addr v8, v9

    if-eqz v8, :cond_2

    move v8, v3

    move v9, v6

    if-ne v8, v9, :cond_2

    move v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1247
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    move v8, v7

    move v9, v5

    .line 1248
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 1249
    move v8, v6

    move v0, v8

    .line 1260
    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    .end local v3    # "dirFlag":I
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    .end local v6    # "velDirFlag":I
    .end local v7    # "absXVelocity":F
    :goto_2
    return v0

    .line 1238
    .restart local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    :cond_0
    const/4 v8, 0x4

    goto :goto_0

    .line 1244
    .restart local v3    # "dirFlag":I
    .restart local v4    # "xVelocity":F
    .restart local v5    # "yVelocity":F
    :cond_1
    const/4 v8, 0x4

    goto :goto_1

    .line 1253
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v10, v1

    .line 1254
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result v9

    mul-float/2addr v8, v9

    move v4, v8

    .line 1256
    .local v4, "threshold":F
    move v8, v2

    move v9, v3

    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move v9, v4

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 1257
    move v8, v3

    move v0, v8

    goto :goto_2

    .line 1260
    .end local v3    # "dirFlag":I
    .end local v4    # "threshold":F
    :cond_3
    const/4 v8, 0x0

    move v0, v8

    goto :goto_2
.end method

.method private checkVerticalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .locals 12

    .prologue
    .line 1264
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v2, p2

    .local v2, "flags":I
    move v8, v2

    const/4 v9, 0x3

    and-int/lit8 v8, v8, 0x3

    if-eqz v8, :cond_3

    .line 1265
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    const/4 v8, 0x2

    :goto_0
    move v3, v8

    .line 1266
    .local v3, "dirFlag":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_2

    .line 1267
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1268
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v10

    .line 1267
    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1269
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    move v4, v8

    .line 1270
    .local v4, "xVelocity":F
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v8

    move v5, v8

    .line 1271
    .local v5, "yVelocity":F
    move v8, v5

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    const/4 v8, 0x2

    :goto_1
    move v6, v8

    .line 1272
    .local v6, "velDirFlag":I
    move v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move v7, v8

    .line 1273
    .local v7, "absYVelocity":F
    move v8, v6

    move v9, v2

    and-int/2addr v8, v9

    if-eqz v8, :cond_2

    move v8, v6

    move v9, v3

    if-ne v8, v9, :cond_2

    move v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1274
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    move v8, v7

    move v9, v4

    .line 1275
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 1276
    move v8, v6

    move v0, v8

    .line 1286
    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    .end local v3    # "dirFlag":I
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    .end local v6    # "velDirFlag":I
    .end local v7    # "absYVelocity":F
    :goto_2
    return v0

    .line 1265
    .restart local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    .line 1271
    .restart local v3    # "dirFlag":I
    .restart local v4    # "xVelocity":F
    .restart local v5    # "yVelocity":F
    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    .line 1280
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v10, v1

    .line 1281
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result v9

    mul-float/2addr v8, v9

    move v4, v8

    .line 1282
    .local v4, "threshold":F
    move v8, v2

    move v9, v3

    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move v9, v4

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 1283
    move v8, v3

    move v0, v8

    goto :goto_2

    .line 1286
    .end local v3    # "dirFlag":I
    .end local v4    # "threshold":F
    :cond_3
    const/4 v8, 0x0

    move v0, v8

    goto :goto_2
.end method

.method private destroyCallbacks()V
    .locals 7

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 495
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 496
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 498
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v1, v4

    .line 499
    .local v1, "recoverAnimSize":I
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    if-ltz v4, :cond_0

    .line 500
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    move-object v3, v4

    .line 501
    .local v3, "recoverAnimation":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v6, v3

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 499
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 503
    .end local v3    # "recoverAnimation":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 504
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 505
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 506
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->releaseVelocityTracker()V

    .line 507
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->stopGestureDetection()V

    .line 508
    return-void
.end method

.method private findSwapTargets(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 800
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object/from16 v3, p1

    .local v3, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 801
    move-object/from16 v22, v2

    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 802
    move-object/from16 v22, v2

    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 807
    :goto_0
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v22

    move/from16 v4, v22

    .line 808
    .local v4, "margin":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    move/from16 v23, v4

    sub-int v22, v22, v23

    move/from16 v5, v22

    .line 809
    .local v5, "left":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    move/from16 v23, v4

    sub-int v22, v22, v23

    move/from16 v6, v22

    .line 810
    .local v6, "top":I
    move/from16 v22, v5

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    const/16 v23, 0x2

    move/from16 v24, v4

    mul-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v7, v22

    .line 811
    .local v7, "right":I
    move/from16 v22, v6

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getHeight()I

    move-result v23

    add-int v22, v22, v23

    const/16 v23, 0x2

    move/from16 v24, v4

    mul-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v8, v22

    .line 812
    .local v8, "bottom":I
    move/from16 v22, v5

    move/from16 v23, v7

    add-int v22, v22, v23

    const/16 v23, 0x2

    div-int/lit8 v22, v22, 0x2

    move/from16 v9, v22

    .line 813
    .local v9, "centerX":I
    move/from16 v22, v6

    move/from16 v23, v8

    add-int v22, v22, v23

    const/16 v23, 0x2

    div-int/lit8 v22, v22, 0x2

    move/from16 v10, v22

    .line 814
    .local v10, "centerY":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v22

    move-object/from16 v11, v22

    .line 815
    .local v11, "lm":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v22

    move/from16 v12, v22

    .line 816
    .local v12, "childCount":I
    const/16 v22, 0x0

    move/from16 v13, v22

    .local v13, "i":I
    :goto_1
    move/from16 v22, v13

    move/from16 v23, v12

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 817
    move-object/from16 v22, v11

    move/from16 v23, v13

    invoke-virtual/range {v22 .. v23}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v14, v22

    .line 818
    .local v14, "other":Landroid/view/View;
    move-object/from16 v22, v14

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 819
    .line 816
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 804
    .end local v4    # "margin":I
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    .end local v9    # "centerX":I
    .end local v10    # "centerY":I
    .end local v11    # "lm":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .end local v12    # "childCount":I
    .end local v13    # "i":I
    .end local v14    # "other":Landroid/view/View;
    :cond_1
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 805
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 821
    .restart local v4    # "margin":I
    .restart local v5    # "left":I
    .restart local v6    # "top":I
    .restart local v7    # "right":I
    .restart local v8    # "bottom":I
    .restart local v9    # "centerX":I
    .restart local v10    # "centerY":I
    .restart local v11    # "lm":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .restart local v12    # "childCount":I
    .restart local v13    # "i":I
    .restart local v14    # "other":Landroid/view/View;
    :cond_2
    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v23, v6

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v23, v8

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_0

    move-object/from16 v22, v14

    .line 822
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v22

    move/from16 v23, v5

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v23, v7

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    .line 823
    goto :goto_2

    .line 825
    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v23, v14

    invoke-virtual/range {v22 .. v23}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v22

    move-object/from16 v15, v22

    .line 826
    .local v15, "otherVh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object/from16 v24, v0

    move-object/from16 v25, v15

    invoke-virtual/range {v22 .. v25}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 828
    move/from16 v22, v9

    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v23

    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRight()I

    move-result v24

    add-int v23, v23, v24

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move/from16 v16, v22

    .line 829
    .local v16, "dx":I
    move/from16 v22, v10

    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v23

    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBottom()I

    move-result v24

    add-int v23, v23, v24

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move/from16 v17, v22

    .line 830
    .local v17, "dy":I
    move/from16 v22, v16

    move/from16 v23, v16

    mul-int v22, v22, v23

    move/from16 v23, v17

    move/from16 v24, v17

    mul-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v18, v22

    .line 832
    .local v18, "dist":I
    const/16 v22, 0x0

    move/from16 v19, v22

    .line 833
    .local v19, "pos":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v20, v22

    .line 834
    .local v20, "cnt":I
    const/16 v22, 0x0

    move/from16 v21, v22

    .local v21, "j":I
    :goto_3
    move/from16 v22, v21

    move/from16 v23, v20

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 835
    move/from16 v22, v18

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v23, v0

    move/from16 v24, v21

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    .line 836
    add-int/lit8 v19, v19, 0x1

    .line 834
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 841
    :cond_4
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    move/from16 v23, v19

    move-object/from16 v24, v15

    invoke-interface/range {v22 .. v24}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 842
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    move/from16 v23, v19

    move/from16 v24, v18

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 845
    .end local v14    # "other":Landroid/view/View;
    .end local v15    # "otherVh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v16    # "dx":I
    .end local v17    # "dy":I
    .end local v18    # "dist":I
    .end local v19    # "pos":I
    .end local v20    # "cnt":I
    .end local v21    # "j":I
    :cond_5
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v2, v22

    .end local v2    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    return-object v2
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 11

    .prologue
    .line 950
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "motionEvent":Landroid/view/MotionEvent;
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v9

    move-object v2, v9

    .line 951
    .local v2, "lm":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 952
    const/4 v9, 0x0

    move-object v0, v9

    .line 972
    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    :goto_0
    return-object v0

    .line 954
    .restart local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    :cond_0
    move-object v9, v1

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    move v3, v9

    .line 955
    .local v3, "pointerIndex":I
    move-object v9, v1

    move v10, v3

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v9, v10

    move v4, v9

    .line 956
    .local v4, "dx":F
    move-object v9, v1

    move v10, v3

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr v9, v10

    move v5, v9

    .line 957
    .local v5, "dy":F
    move v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move v6, v9

    .line 958
    .local v6, "absDx":F
    move v9, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move v7, v9

    .line 960
    .local v7, "absDy":F
    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    move v9, v7

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 961
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 963
    :cond_1
    move v9, v6

    move v10, v7

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    move-object v9, v2

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 964
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 965
    :cond_2
    move v9, v7

    move v10, v6

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    move-object v9, v2

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 966
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 968
    :cond_3
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v9

    move-object v8, v9

    .line 969
    .local v8, "child":Landroid/view/View;
    move-object v9, v8

    if-nez v9, :cond_4

    .line 970
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 972
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v0, v9

    goto :goto_0
.end method

.method private getSelectedDxDy([F)V
    .locals 6

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "outPosition":[F
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    const/16 v3, 0xc

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_0

    .line 528
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    add-float/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 532
    :goto_0
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    const/4 v3, 0x3

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_1

    .line 533
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 537
    :goto_1
    return-void

    .line 530
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    aput v4, v2, v3

    goto :goto_0

    .line 535
    :cond_1
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v2, v3

    goto :goto_1
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .locals 8

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "child":Landroid/view/View;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "left":F
    move v4, p4

    .local v4, "top":F
    move v5, v1

    move v6, v3

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    move v5, v1

    move v6, v3

    move-object v7, v0

    .line 452
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    move v5, v2

    move v6, v4

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    move v5, v2

    move v6, v4

    move-object v7, v0

    .line 454
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "child":Landroid/view/View;
    return v0

    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private releaseVelocityTracker()V
    .locals 3

    .prologue
    .line 943
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 944
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 945
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 947
    :cond_0
    return-void
.end method

.method private setupCallbacks()V
    .locals 4

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    move-object v1, v2

    .line 486
    .local v1, "vc":Landroid/view/ViewConfiguration;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    .line 487
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 488
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 489
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 490
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->startGestureDetection()V

    .line 491
    return-void
.end method

.method private startGestureDetection()V
    .locals 7

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, v0

    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 512
    move-object v1, v0

    new-instance v2, Landroidx/core/view/GestureDetectorCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-direct {v3, v4, v5}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 514
    return-void
.end method

.method private stopGestureDetection()V
    .locals 3

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    if-eqz v1, :cond_0

    .line 518
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->doNotReactToLongPress()V

    .line 519
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 521
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    if-eqz v1, :cond_1

    .line 522
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 524
    :cond_1
    return-void
.end method

.method private swipeIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 11

    .prologue
    .line 1191
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 1192
    const/4 v7, 0x0

    move v0, v7

    .line 1233
    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    :goto_0
    return v0

    .line 1194
    .restart local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v7

    move v2, v7

    .line 1195
    .local v2, "originalMovementFlags":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1197
    invoke-static {v9}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    .line 1195
    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v7

    move v3, v7

    .line 1198
    .local v3, "absoluteMovementFlags":I
    move v7, v3

    const v8, 0xff00

    and-int/2addr v7, v8

    const/16 v8, 0x8

    shr-int/lit8 v7, v7, 0x8

    move v4, v7

    .line 1200
    .local v4, "flags":I
    move v7, v4

    if-nez v7, :cond_1

    .line 1201
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1203
    :cond_1
    move v7, v2

    const v8, 0xff00

    and-int/2addr v7, v8

    const/16 v8, 0x8

    shr-int/lit8 v7, v7, 0x8

    move v5, v7

    .line 1206
    .local v5, "originalFlags":I
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 1207
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-direct {v7, v8, v9}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v7

    move v10, v7

    move v7, v10

    move v8, v10

    move v6, v8

    .local v6, "swipeDir":I
    if-lez v7, :cond_3

    .line 1209
    move v7, v5

    move v8, v6

    and-int/2addr v7, v8

    if-nez v7, :cond_2

    .line 1211
    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1212
    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    .line 1211
    invoke-static {v7, v8}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 1214
    :cond_2
    move v7, v6

    move v0, v7

    goto :goto_0

    .line 1216
    :cond_3
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-direct {v7, v8, v9}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkVerticalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v7

    move v10, v7

    move v7, v10

    move v8, v10

    move v6, v8

    if-lez v7, :cond_7

    .line 1217
    move v7, v6

    move v0, v7

    goto :goto_0

    .line 1220
    .end local v6    # "swipeDir":I
    :cond_4
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-direct {v7, v8, v9}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkVerticalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v7

    move v10, v7

    move v7, v10

    move v8, v10

    move v6, v8

    .restart local v6    # "swipeDir":I
    if-lez v7, :cond_5

    .line 1221
    move v7, v6

    move v0, v7

    goto/16 :goto_0

    .line 1223
    :cond_5
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-direct {v7, v8, v9}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v7

    move v10, v7

    move v7, v10

    move v8, v10

    move v6, v8

    if-lez v7, :cond_7

    .line 1225
    move v7, v5

    move v8, v6

    and-int/2addr v7, v8

    if-nez v7, :cond_6

    .line 1227
    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1228
    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    .line 1227
    invoke-static {v7, v8}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v7

    move v0, v7

    goto/16 :goto_0

    .line 1230
    :cond_6
    move v7, v6

    move v0, v7

    goto/16 :goto_0

    .line 1233
    :cond_7
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 468
    .line 482
    :goto_0
    return-void

    .line 470
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_1

    .line 471
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->destroyCallbacks()V

    .line 473
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 474
    move-object v3, v1

    if-eqz v3, :cond_2

    .line 475
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v2, v3

    .line 476
    .local v2, "resources":Landroid/content/res/Resources;
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/recyclerview/R$dimen;->item_touch_helper_swipe_escape_velocity:I

    .line 477
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 478
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroidx/recyclerview/R$dimen;->item_touch_helper_swipe_escape_max_velocity:I

    .line 479
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 480
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->setupCallbacks()V

    .line 482
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_2
    goto :goto_0
.end method

.method checkSelectForSwipe(ILandroid/view/MotionEvent;I)V
    .locals 21

    .prologue
    .line 980
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move/from16 v3, p1

    .local v3, "action":I
    move-object/from16 v4, p2

    .local v4, "motionEvent":Landroid/view/MotionEvent;
    move/from16 v5, p3

    .local v5, "pointerIndex":I
    move-object v15, v2

    iget-object v15, v15, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v15, :cond_0

    move v15, v3

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    move-object v15, v2

    iget v15, v15, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object v15, v2

    iget-object v15, v15, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 981
    invoke-virtual {v15}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v15

    if-nez v15, :cond_1

    .line 982
    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    move-object v15, v2

    iget-object v15, v15, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 985
    goto :goto_0

    .line 987
    :cond_2
    move-object v15, v2

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v16}, Landroidx/recyclerview/widget/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v15

    move-object v6, v15

    .line 988
    .local v6, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v15, v6

    if-nez v15, :cond_3

    .line 989
    goto :goto_0

    .line 991
    :cond_3
    move-object v15, v2

    iget-object v15, v15, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v16, v0

    move-object/from16 v17, v6

    invoke-virtual/range {v15 .. v17}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v15

    move v7, v15

    .line 993
    .local v7, "movementFlags":I
    move v15, v7

    const v16, 0xff00

    and-int v15, v15, v16

    const/16 v16, 0x8

    shr-int/lit8 v15, v15, 0x8

    move v8, v15

    .line 996
    .local v8, "swipeFlags":I
    move v15, v8

    if-nez v15, :cond_4

    .line 997
    goto :goto_0

    .line 1002
    :cond_4
    move-object v15, v4

    move/from16 v16, v5

    invoke-virtual/range {v15 .. v16}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    move v9, v15

    .line 1003
    .local v9, "x":F
    move-object v15, v4

    move/from16 v16, v5

    invoke-virtual/range {v15 .. v16}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    move v10, v15

    .line 1006
    .local v10, "y":F
    move v15, v9

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move v11, v15

    .line 1007
    .local v11, "dx":F
    move v15, v10

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move v12, v15

    .line 1010
    .local v12, "dy":F
    move v15, v11

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move v13, v15

    .line 1011
    .local v13, "absDx":F
    move v15, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move v14, v15

    .line 1013
    .local v14, "absDy":F
    move v15, v13

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_5

    move v15, v14

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_5

    .line 1014
    goto/16 :goto_0

    .line 1016
    :cond_5
    move v15, v13

    move/from16 v16, v14

    cmpl-float v15, v15, v16

    if-lez v15, :cond_7

    .line 1017
    move v15, v11

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_6

    move v15, v8

    const/16 v16, 0x4

    and-int/lit8 v15, v15, 0x4

    if-nez v15, :cond_6

    .line 1018
    goto/16 :goto_0

    .line 1020
    :cond_6
    move v15, v11

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_9

    move v15, v8

    const/16 v16, 0x8

    and-int/lit8 v15, v15, 0x8

    if-nez v15, :cond_9

    .line 1021
    goto/16 :goto_0

    .line 1024
    :cond_7
    move v15, v12

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_8

    move v15, v8

    const/16 v16, 0x1

    and-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_8

    .line 1025
    goto/16 :goto_0

    .line 1027
    :cond_8
    move v15, v12

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_9

    move v15, v8

    const/16 v16, 0x2

    and-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_9

    .line 1028
    goto/16 :goto_0

    .line 1031
    :cond_9
    move-object v15, v2

    move-object/from16 v16, v2

    const/16 v17, 0x0

    move-object/from16 v19, v16

    move/from16 v20, v17

    move/from16 v16, v20

    move-object/from16 v17, v19

    move/from16 v18, v20

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1032
    move-object v15, v2

    move-object/from16 v16, v4

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 1033
    move-object v15, v2

    move-object/from16 v16, v6

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 1034
    goto/16 :goto_0
.end method

.method endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 10

    .prologue
    .line 914
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move v2, p2

    .local v2, "override":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v3, v6

    .line 915
    .local v3, "recoverAnimSize":I
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    if-ltz v6, :cond_2

    .line 916
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    move-object v5, v6

    .line 917
    .local v5, "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    move-object v6, v5

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 918
    move-object v6, v5

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget-boolean v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    move v8, v2

    or-int/2addr v7, v8

    iput-boolean v7, v6, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 919
    move-object v6, v5

    iget-boolean v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v6, :cond_0

    .line 920
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 922
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    .line 923
    .line 926
    .end local v5    # "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    :goto_1
    return-void

    .line 915
    .restart local v5    # "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 926
    .end local v5    # "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    :cond_2
    goto :goto_1
.end method

.method findAnimation(Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    .locals 7

    .prologue
    .line 1155
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1156
    const/4 v5, 0x0

    move-object v0, v5

    .line 1165
    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    :goto_0
    return-object v0

    .line 1158
    .restart local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 1159
    .local v2, "target":Landroid/view/View;
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    if-ltz v5, :cond_2

    .line 1160
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    move-object v4, v5

    .line 1161
    .local v4, "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    move-object v5, v4

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, v2

    if-ne v5, v6, :cond_1

    .line 1162
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 1159
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1165
    .end local v4    # "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 13

    .prologue
    .line 1039
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move v2, v7

    .line 1040
    .local v2, "x":F
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move v3, v7

    .line 1041
    .local v3, "y":F
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v7, :cond_0

    .line 1042
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, v7

    .line 1043
    .local v4, "selectedView":Landroid/view/View;
    move-object v7, v4

    move v8, v2

    move v9, v3

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    add-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    move-object v12, v0

    iget v12, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    add-float/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1044
    move-object v7, v4

    move-object v0, v7

    .line 1054
    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    .end local v4    # "selectedView":Landroid/view/View;
    :goto_0
    return-object v0

    .line 1047
    .restart local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .local v4, "i":I
    :goto_1
    move v7, v4

    if-ltz v7, :cond_2

    .line 1048
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    move-object v5, v7

    .line 1049
    .local v5, "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    move-object v7, v5

    iget-object v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, v7

    .line 1050
    .local v6, "view":Landroid/view/View;
    move-object v7, v6

    move v8, v2

    move v9, v3

    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    move-object v11, v5

    iget v11, v11, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1051
    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 1047
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1054
    .end local v5    # "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .prologue
    .line 931
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "outRect":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v3, p3

    .local v3, "parent":Landroidx/recyclerview/widget/RecyclerView;
    move-object v4, p4

    .local v4, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 932
    return-void
.end method

.method hasRunningRecoverAnim()Z
    .locals 5

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    .line 724
    .local v1, "size":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_1

    .line 725
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_0

    .line 726
    const/4 v3, 0x1

    move v0, v3

    .line 729
    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    :goto_1
    return v0

    .line 724
    .restart local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 729
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 17

    .prologue
    .line 853
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object/from16 v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->isLayoutRequested()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 854
    .line 886
    :goto_0
    return-void

    .line 856
    :cond_0
    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    .line 857
    goto :goto_0

    .line 860
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result v9

    move v2, v9

    .line 861
    .local v2, "threshold":F
    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    move v3, v9

    .line 862
    .local v3, "x":I
    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    move v4, v9

    .line 863
    .local v4, "y":I
    move v9, v4

    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    move v11, v2

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    move v9, v3

    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 864
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 865
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    move v11, v2

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 866
    goto :goto_0

    .line 868
    :cond_2
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroidx/recyclerview/widget/ItemTouchHelper;->findSwapTargets(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v9

    move-object v5, v9

    .line 869
    .local v5, "swapTargets":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 870
    goto :goto_0

    .line 873
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v10, v1

    move-object v11, v5

    move v12, v3

    move v13, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v6, v9

    .line 874
    .local v6, "target":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v9, v6

    if-nez v9, :cond_4

    .line 875
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 876
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 877
    goto/16 :goto_0

    .line 879
    :cond_4
    move-object v9, v6

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v9

    move v7, v9

    .line 880
    .local v7, "toPosition":I
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v9

    move v8, v9

    .line 881
    .local v8, "fromPosition":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v11, v1

    move-object v12, v6

    invoke-virtual {v9, v10, v11, v12}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 883
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v11, v1

    move v12, v8

    move-object v13, v6

    move v14, v7

    move v15, v3

    move/from16 v16, v4

    invoke-virtual/range {v9 .. v16}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    .line 886
    :cond_5
    goto/16 :goto_0
.end method

.method obtainVelocityTracker()V
    .locals 3

    .prologue
    .line 936
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 937
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 939
    :cond_0
    move-object v1, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 940
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 890
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 894
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 895
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 896
    .local v2, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 897
    .line 907
    :goto_0
    return-void

    .line 899
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_2

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v3, v4, :cond_2

    .line 900
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 907
    :cond_1
    :goto_1
    goto :goto_0

    .line 902
    :cond_2
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 903
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 904
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 14

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "c":Landroid/graphics/Canvas;
    move-object/from16 v2, p2

    .local v2, "parent":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 555
    const/4 v6, 0x0

    move v4, v6

    .local v4, "dx":F
    const/4 v6, 0x0

    move v5, v6

    .line 556
    .local v5, "dy":F
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v6, :cond_0

    .line 557
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 558
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    move v4, v6

    .line 559
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    move v5, v6

    .line 561
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    move v12, v4

    move v13, v5

    invoke-virtual/range {v6 .. v13}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 563
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 14

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "c":Landroid/graphics/Canvas;
    move-object/from16 v2, p2

    .local v2, "parent":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v3, p3

    .local v3, "state":Landroidx/recyclerview/widget/RecyclerView$State;
    const/4 v6, 0x0

    move v4, v6

    .local v4, "dx":F
    const/4 v6, 0x0

    move v5, v6

    .line 542
    .local v5, "dy":F
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v6, :cond_0

    .line 543
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 544
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    move v4, v6

    .line 545
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    move v5, v6

    .line 547
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    move v12, v4

    move v13, v5

    invoke-virtual/range {v6 .. v13}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 549
    return-void
.end method

.method postDispatchSwipe(Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;I)V
    .locals 10

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "anim":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    move v2, p2

    .local v2, "swipeDir":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/ItemTouchHelper$4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroidx/recyclerview/widget/ItemTouchHelper$4;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 719
    return-void
.end method

.method removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1317
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne v2, v3, :cond_0

    .line 1318
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1320
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v2, :cond_0

    .line 1321
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1324
    :cond_0
    return-void
.end method

.method scrollIfNecessary()Z
    .locals 20

    .prologue
    .line 737
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v12, :cond_0

    .line 738
    move-object v12, v1

    const-wide/high16 v13, -0x8000000000000000L

    iput-wide v13, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 739
    const/4 v12, 0x0

    move v1, v12

    .line 796
    .end local v1    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    .local v2, "now":J
    .local v4, "scrollDuration":J
    .local v6, "lm":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .local v7, "scrollX":I
    .local v8, "scrollY":I
    :goto_0
    return v1

    .line 741
    .end local v2    # "now":J
    .end local v4    # "scrollDuration":J
    .end local v6    # "lm":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .end local v7    # "scrollX":I
    .end local v8    # "scrollY":I
    .restart local v1    # "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-wide v2, v12

    .line 742
    .restart local v2    # "now":J
    move-object v12, v1

    iget-wide v12, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v12, v12, v14

    if-nez v12, :cond_8

    const-wide/16 v12, 0x0

    :goto_1
    move-wide v4, v12

    .line 744
    .restart local v4    # "scrollDuration":J
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v12

    move-object v6, v12

    .line 745
    .restart local v6    # "lm":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v12, :cond_1

    .line 746
    move-object v12, v1

    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    iput-object v13, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 748
    :cond_1
    const/4 v12, 0x0

    move v7, v12

    .line 749
    .restart local v7    # "scrollX":I
    const/4 v12, 0x0

    move v8, v12

    .line 750
    .restart local v8    # "scrollY":I
    move-object v12, v6

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 751
    move-object v12, v6

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 752
    move-object v12, v1

    iget v12, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    move-object v13, v1

    iget v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    add-float/2addr v12, v13

    float-to-int v12, v12

    move v9, v12

    .line 753
    .local v9, "curX":I
    move v12, v9

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    move v10, v12

    .line 754
    .local v10, "leftDiff":I
    move-object v12, v1

    iget v12, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_9

    move v12, v10

    if-gez v12, :cond_9

    .line 755
    move v12, v10

    move v7, v12

    .line 765
    .end local v9    # "curX":I
    .end local v10    # "leftDiff":I
    :cond_2
    :goto_2
    move-object v12, v6

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 766
    move-object v12, v1

    iget v12, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    move-object v13, v1

    iget v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    add-float/2addr v12, v13

    float-to-int v12, v12

    move v9, v12

    .line 767
    .local v9, "curY":I
    move v12, v9

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    move v10, v12

    .line 768
    .local v10, "topDiff":I
    move-object v12, v1

    iget v12, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_a

    move v12, v10

    if-gez v12, :cond_a

    .line 769
    move v12, v10

    move v8, v12

    .line 778
    .end local v9    # "curY":I
    .end local v10    # "topDiff":I
    :cond_3
    :goto_3
    move v12, v7

    if-eqz v12, :cond_4

    .line 779
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 780
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    move v15, v7

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v16, v0

    .line 781
    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v16

    move-wide/from16 v17, v4

    .line 779
    invoke-virtual/range {v12 .. v18}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    move-result v12

    move v7, v12

    .line 783
    :cond_4
    move v12, v8

    if-eqz v12, :cond_5

    .line 784
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 785
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    move v15, v8

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v16, v0

    .line 786
    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v16

    move-wide/from16 v17, v4

    .line 784
    invoke-virtual/range {v12 .. v18}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    move-result v12

    move v8, v12

    .line 788
    :cond_5
    move v12, v7

    if-nez v12, :cond_6

    move v12, v8

    if-eqz v12, :cond_b

    .line 789
    :cond_6
    move-object v12, v1

    iget-wide v12, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    .line 790
    move-object v12, v1

    move-wide v13, v2

    iput-wide v13, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 792
    :cond_7
    move-object v12, v1

    iget-object v12, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move v13, v7

    move v14, v8

    invoke-virtual {v12, v13, v14}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 793
    const/4 v12, 0x1

    move v1, v12

    goto/16 :goto_0

    .line 742
    .end local v4    # "scrollDuration":J
    .end local v6    # "lm":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .end local v7    # "scrollX":I
    .end local v8    # "scrollY":I
    :cond_8
    move-wide v12, v2

    move-object v14, v1

    iget-wide v14, v14, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    sub-long/2addr v12, v14

    goto/16 :goto_1

    .line 756
    .restart local v4    # "scrollDuration":J
    .restart local v6    # "lm":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .restart local v7    # "scrollX":I
    .restart local v8    # "scrollY":I
    .local v9, "curX":I
    .local v10, "leftDiff":I
    :cond_9
    move-object v12, v1

    iget v12, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 757
    move v12, v9

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 758
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 759
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v13

    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    move v11, v12

    .line 760
    .local v11, "rightDiff":I
    move v12, v11

    if-lez v12, :cond_2

    .line 761
    move v12, v11

    move v7, v12

    goto/16 :goto_2

    .line 770
    .end local v11    # "rightDiff":I
    .local v9, "curY":I
    .local v10, "topDiff":I
    :cond_a
    move-object v12, v1

    iget v12, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    .line 771
    move v12, v9

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 772
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v13

    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    move v11, v12

    .line 773
    .local v11, "bottomDiff":I
    move v12, v11

    if-lez v12, :cond_3

    .line 774
    move v12, v11

    move v8, v12

    goto/16 :goto_3

    .line 795
    .end local v9    # "curY":I
    .end local v10    # "topDiff":I
    .end local v11    # "bottomDiff":I
    :cond_b
    move-object v12, v1

    const-wide/high16 v13, -0x8000000000000000L

    iput-wide v13, v12, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 796
    const/4 v12, 0x0

    move v1, v12

    goto/16 :goto_0
.end method

.method select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 32
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 574
    move-object/from16 v3, p0

    .local v3, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object/from16 v4, p1

    .local v4, "selected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move/from16 v5, p2

    .local v5, "actionState":I
    move-object/from16 v19, v4

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    move/from16 v19, v5

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 575
    .line 695
    :goto_0
    return-void

    .line 577
    :cond_0
    move-object/from16 v19, v3

    const-wide/high16 v20, -0x8000000000000000L

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 578
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    move/from16 v19, v0

    move/from16 v6, v19

    .line 580
    .local v6, "prevActionState":I
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 581
    move-object/from16 v19, v3

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 582
    move/from16 v19, v5

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 583
    move-object/from16 v19, v4

    if-nez v19, :cond_1

    .line 584
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v31, v19

    move-object/from16 v19, v31

    move-object/from16 v20, v31

    const-string/jumbo v21, "Must pass a ViewHolder when dragging"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 590
    :cond_1
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 591
    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v19}, Landroidx/recyclerview/widget/ItemTouchHelper;->addChildDrawingOrderCallback()V

    .line 593
    :cond_2
    const/16 v19, 0x1

    const/16 v20, 0x8

    const/16 v21, 0x8

    move/from16 v22, v5

    mul-int v21, v21, v22

    add-int v20, v20, v21

    shl-int v19, v19, v20

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v7, v19

    .line 595
    .local v7, "actionStateMask":I
    const/16 v19, 0x0

    move/from16 v8, v19

    .line 597
    .local v8, "preventLayout":Z
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 598
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object/from16 v19, v0

    move-object/from16 v9, v19

    .line 599
    .local v9, "prevSelected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    if-eqz v19, :cond_a

    .line 600
    move/from16 v19, v6

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const/16 v19, 0x0

    .line 601
    :goto_1
    move/from16 v10, v19

    .line 602
    .local v10, "swipeDir":I
    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v19}, Landroidx/recyclerview/widget/ItemTouchHelper;->releaseVelocityTracker()V

    .line 606
    move/from16 v19, v10

    sparse-switch v19, :sswitch_data_0

    .line 620
    const/16 v19, 0x0

    move/from16 v11, v19

    .line 621
    .local v11, "targetTranslateX":F
    const/16 v19, 0x0

    move/from16 v12, v19

    .line 623
    .local v12, "targetTranslateY":F
    :goto_2
    move/from16 v19, v6

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 624
    const/16 v19, 0x8

    move/from16 v13, v19

    .line 630
    .local v13, "animationType":I
    :goto_3
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 631
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move/from16 v14, v19

    .line 632
    .local v14, "currentTranslateX":F
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v15, v19

    .line 633
    .local v15, "currentTranslateY":F
    new-instance v19, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    move-object/from16 v31, v19

    move-object/from16 v19, v31

    move-object/from16 v20, v31

    move-object/from16 v21, v3

    move-object/from16 v22, v9

    move/from16 v23, v13

    move/from16 v24, v6

    move/from16 v25, v14

    move/from16 v26, v15

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v10

    move-object/from16 v30, v9

    invoke-direct/range {v20 .. v30}, Landroidx/recyclerview/widget/ItemTouchHelper$3;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    move-object/from16 v16, v19

    .line 662
    .local v16, "rv":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v20, v0

    move/from16 v21, v13

    move/from16 v22, v11

    move/from16 v23, v14

    sub-float v22, v22, v23

    move/from16 v23, v12

    move/from16 v24, v15

    sub-float v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J

    move-result-wide v19

    move-wide/from16 v17, v19

    .line 664
    .local v17, "duration":J
    move-object/from16 v19, v16

    move-wide/from16 v20, v17

    invoke-virtual/range {v19 .. v21}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 665
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v20, v16

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 666
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->start()V

    .line 667
    const/16 v19, 0x1

    move/from16 v8, v19

    .line 672
    .end local v10    # "swipeDir":I
    .end local v11    # "targetTranslateX":F
    .end local v12    # "targetTranslateY":F
    .end local v13    # "animationType":I
    .end local v14    # "currentTranslateX":F
    .end local v15    # "currentTranslateY":F
    .end local v16    # "rv":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    .end local v17    # "duration":J
    :goto_4
    move-object/from16 v19, v3

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 674
    .end local v9    # "prevSelected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_3
    move-object/from16 v19, v4

    if-eqz v19, :cond_4

    .line 675
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v21, v0

    move-object/from16 v22, v4

    .line 676
    invoke-virtual/range {v20 .. v22}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v20

    move/from16 v21, v7

    and-int v20, v20, v21

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    move/from16 v21, v0

    const/16 v22, 0x8

    mul-int/lit8 v21, v21, 0x8

    shr-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    .line 678
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 679
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 680
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 682
    move/from16 v19, v5

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 683
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result v19

    .line 686
    :cond_4
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    move-object/from16 v9, v19

    .line 687
    .local v9, "rvParent":Landroid/view/ViewParent;
    move-object/from16 v19, v9

    if-eqz v19, :cond_5

    .line 688
    move-object/from16 v19, v9

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    const/16 v20, 0x1

    :goto_5
    invoke-interface/range {v19 .. v20}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 690
    :cond_5
    move/from16 v19, v8

    if-nez v19, :cond_6

    .line 691
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 693
    :cond_6
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 694
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 695
    goto/16 :goto_0

    .line 600
    .local v9, "prevSelected":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_7
    move-object/from16 v19, v3

    move-object/from16 v20, v9

    .line 601
    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/ItemTouchHelper;->swipeIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v19

    goto/16 :goto_1

    .line 611
    .restart local v10    # "swipeDir":I
    :sswitch_0
    const/16 v19, 0x0

    move/from16 v12, v19

    .line 612
    .restart local v12    # "targetTranslateY":F
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->signum(F)F

    move-result v19

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v11, v19

    .line 613
    .restart local v11    # "targetTranslateX":F
    goto/16 :goto_2

    .line 616
    .end local v11    # "targetTranslateX":F
    .end local v12    # "targetTranslateY":F
    :sswitch_1
    const/16 v19, 0x0

    move/from16 v11, v19

    .line 617
    .restart local v11    # "targetTranslateX":F
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->signum(F)F

    move-result v19

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v12, v19

    .line 618
    .restart local v12    # "targetTranslateY":F
    goto/16 :goto_2

    .line 625
    :cond_8
    move/from16 v19, v10

    if-lez v19, :cond_9

    .line 626
    const/16 v19, 0x2

    move/from16 v13, v19

    .restart local v13    # "animationType":I
    goto/16 :goto_3

    .line 628
    .end local v13    # "animationType":I
    :cond_9
    const/16 v19, 0x4

    move/from16 v13, v19

    .restart local v13    # "animationType":I
    goto/16 :goto_3

    .line 669
    .end local v10    # "swipeDir":I
    .end local v11    # "targetTranslateX":F
    .end local v12    # "targetTranslateY":F
    .end local v13    # "animationType":I
    :cond_a
    move-object/from16 v19, v3

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 670
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v19 .. v21}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto/16 :goto_4

    .line 688
    .local v9, "rvParent":Landroid/view/ViewParent;
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 606
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1092
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->hasDragFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1093
    const-string/jumbo v2, "ItemTouchHelper"

    const-string/jumbo v3, "Start drag has been called but dragging is not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1094
    .line 1104
    :goto_0
    return-void

    .line 1096
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v2, v3, :cond_1

    .line 1097
    const-string/jumbo v2, "ItemTouchHelper"

    const-string/jumbo v3, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1099
    goto :goto_0

    .line 1101
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1102
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    iput v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1103
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 1104
    goto :goto_0
.end method

.method public startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1139
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->hasSwipeFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1140
    const-string/jumbo v2, "ItemTouchHelper"

    const-string/jumbo v3, "Start swipe has been called but swiping is not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1141
    .line 1151
    :goto_0
    return-void

    .line 1143
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v2, v3, :cond_1

    .line 1144
    const-string/jumbo v2, "ItemTouchHelper"

    const-string/jumbo v3, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1146
    goto :goto_0

    .line 1148
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1149
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    iput v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1150
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 1151
    goto :goto_0
.end method

.method updateDxDy(Landroid/view/MotionEvent;II)V
    .locals 9

    .prologue
    .line 1170
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move v2, p2

    .local v2, "directionFlags":I
    move v3, p3

    .local v3, "pointerIndex":I
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    move v4, v6

    .line 1171
    .local v4, "x":F
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    move v5, v6

    .line 1174
    .local v5, "y":F
    move-object v6, v0

    move v7, v4

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v7, v8

    iput v7, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1175
    move-object v6, v0

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr v7, v8

    iput v7, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 1176
    move v6, v2

    const/4 v7, 0x4

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_0

    .line 1177
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1179
    :cond_0
    move v6, v2

    const/16 v7, 0x8

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1

    .line 1180
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1182
    :cond_1
    move v6, v2

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_2

    .line 1183
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 1185
    :cond_2
    move v6, v2

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_3

    .line 1186
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 1188
    :cond_3
    return-void
.end method
