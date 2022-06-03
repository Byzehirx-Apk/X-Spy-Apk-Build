.class Landroidx/recyclerview/widget/ItemTouchHelper$3;
.super Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

.field final synthetic val$prevSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 19

    .prologue
    .line 635
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$3;
    move-object/from16 v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/ItemTouchHelper;
    move-object/from16 v2, p2

    .local v2, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move/from16 v3, p3

    .local v3, "animationType":I
    move/from16 v4, p4

    .local v4, "actionState":I
    move/from16 v5, p5

    .local v5, "startDx":F
    move/from16 v6, p6

    .local v6, "startDy":F
    move/from16 v7, p7

    .local v7, "targetX":F
    move/from16 v8, p8

    .local v8, "targetY":F
    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Landroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v11, v0

    move v12, v9

    iput v12, v11, Landroidx/recyclerview/widget/ItemTouchHelper$3;->val$swipeDir:I

    move-object v11, v0

    move-object v12, v10

    iput-object v12, v11, Landroidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v11, v0

    move-object v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-direct/range {v11 .. v18}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchHelper$3;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 639
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mOverridden:Z

    if-eqz v2, :cond_0

    .line 640
    .line 660
    :goto_0
    return-void

    .line 642
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper$3;->val$swipeDir:I

    if-gtz v2, :cond_3

    .line 644
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 657
    :cond_1
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v2, v3, :cond_2

    .line 658
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 660
    :cond_2
    goto :goto_0

    .line 648
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 649
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mIsPendingCleanup:Z

    .line 650
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper$3;->val$swipeDir:I

    if-lez v2, :cond_1

    .line 653
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper$3;->val$swipeDir:I

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->postDispatchSwipe(Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;I)V

    goto :goto_1
.end method
