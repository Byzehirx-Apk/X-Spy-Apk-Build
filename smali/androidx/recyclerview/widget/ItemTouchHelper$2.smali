.class Landroidx/recyclerview/widget/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 4

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$2;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "event":Landroid/view/MotionEvent;
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 321
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    move v3, v5

    .line 322
    .local v3, "action":I
    move v5, v3

    if-nez v5, :cond_3

    .line 323
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 324
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 325
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 326
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->obtainVelocityTracker()V

    .line 327
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v5, :cond_1

    .line 328
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    move-result-object v5

    move-object v4, v5

    .line 329
    .local v4, "animation":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 330
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    move-object v7, v4

    iget v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 331
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    move-object v7, v4

    iget v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 332
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v6, v4

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 333
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    move-object v6, v4

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 334
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v7, v4

    iget-object v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 336
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v6, v4

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v7, v4

    iget v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 337
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroidx/recyclerview/widget/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 339
    .line 354
    .end local v4    # "animation":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    :cond_1
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_2

    .line 355
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 357
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    .end local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$2;
    return v0

    .line 340
    .restart local v0    # "this":Landroidx/recyclerview/widget/ItemTouchHelper$2;
    :cond_3
    move v5, v3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    move v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 341
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v6, -0x1

    iput v6, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 342
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 343
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 346
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    move v4, v5

    .line 350
    .local v4, "index":I
    move v5, v4

    if-ltz v5, :cond_1

    .line 351
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move v6, v3

    move-object v7, v2

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)V

    goto :goto_0

    .line 357
    .end local v4    # "index":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 5

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$2;
    move v1, p1

    .local v1, "disallowIntercept":Z
    move v2, v1

    if-nez v2, :cond_0

    .line 421
    .line 424
    :goto_0
    return-void

    .line 423
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 424
    goto :goto_0
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 13
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$2;
    move-object v1, p1

    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, p2

    .local v2, "event":Landroid/view/MotionEvent;
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 367
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_0

    .line 368
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 370
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 371
    .line 416
    :goto_0
    return-void

    .line 373
    :cond_1
    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    move v3, v9

    .line 374
    .local v3, "action":I
    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    move v4, v9

    .line 375
    .local v4, "activePointerIndex":I
    move v9, v4

    if-ltz v9, :cond_2

    .line 376
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move v10, v3

    move-object v11, v2

    move v12, v4

    invoke-virtual {v9, v10, v11, v12}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)V

    .line 378
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v5, v9

    .line 379
    .local v5, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v9, v5

    if-nez v9, :cond_3

    .line 380
    goto :goto_0

    .line 382
    :cond_3
    move v9, v3

    packed-switch v9, :pswitch_data_0

    .line 416
    :cond_4
    :goto_1
    :pswitch_0
    goto :goto_0

    .line 385
    :pswitch_1
    move v9, v4

    if-ltz v9, :cond_4

    .line 386
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget v11, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    move v12, v4

    invoke-virtual {v9, v10, v11, v12}, Landroidx/recyclerview/widget/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 387
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/ItemTouchHelper;->moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 388
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v9

    .line 389
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 390
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    goto :goto_1

    .line 395
    :pswitch_2
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_5

    .line 396
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 400
    :cond_5
    :pswitch_3
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 401
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v10, -0x1

    iput v10, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 402
    goto :goto_1

    .line 404
    :pswitch_4
    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    move v6, v9

    .line 405
    .local v6, "pointerIndex":I
    move-object v9, v2

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    move v7, v9

    .line 406
    .local v7, "pointerId":I
    move v9, v7

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget v10, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    if-ne v9, v10, :cond_4

    .line 409
    move v9, v6

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_2
    move v8, v9

    .line 410
    .local v8, "newPointerIndex":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v10, v2

    move v11, v8

    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, v9, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 411
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget v11, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    move v12, v6

    invoke-virtual {v9, v10, v11, v12}, Landroidx/recyclerview/widget/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 412
    goto/16 :goto_1

    .line 409
    .end local v8    # "newPointerIndex":I
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 382
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
