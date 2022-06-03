.class Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field private mShouldReactToLongPress:Z

.field final synthetic this$0:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 4

    .prologue
    .line 2316
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v2, v0

    invoke-direct {v2}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2314
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    .line 2317
    return-void
.end method


# virtual methods
.method doNotReactToLongPress()V
    .locals 3

    .prologue
    .line 2324
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    .line 2325
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 2329
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;
    move-object v1, p1

    .local v1, "e":Landroid/view/MotionEvent;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;
    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 14

    .prologue
    .line 2334
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;
    move-object v1, p1

    .local v1, "e":Landroid/view/MotionEvent;
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    if-nez v8, :cond_0

    .line 2335
    .line 2365
    :goto_0
    return-void

    .line 2337
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v8

    move-object v2, v8

    .line 2338
    .local v2, "child":Landroid/view/View;
    move-object v8, v2

    if-eqz v8, :cond_2

    .line 2339
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v3, v8

    .line 2340
    .local v3, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v8, v3

    if-eqz v8, :cond_2

    .line 2341
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->hasDragFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2342
    goto :goto_0

    .line 2344
    :cond_1
    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    move v4, v8

    .line 2348
    .local v4, "pointerId":I
    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    if-ne v8, v9, :cond_2

    .line 2349
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    move v5, v8

    .line 2350
    .local v5, "index":I
    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    move v6, v8

    .line 2351
    .local v6, "x":F
    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    move v7, v8

    .line 2352
    .local v7, "y":F
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move v9, v6

    iput v9, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 2353
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move v9, v7

    iput v9, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 2354
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v10, 0x0

    move-object v12, v9

    move v13, v10

    move v9, v13

    move-object v10, v12

    move v11, v13

    iput v11, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    iput v9, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 2359
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2360
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v9, v3

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 2365
    .end local v3    # "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v4    # "pointerId":I
    .end local v5    # "index":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_2
    goto/16 :goto_0
.end method
