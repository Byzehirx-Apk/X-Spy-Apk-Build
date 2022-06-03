.class Landroidx/recyclerview/widget/RecyclerView$6;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/RecyclerView;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 963
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$6;
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 7

    .prologue
    .line 1008
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$6;
    move-object v1, p1

    .local v1, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v2, v1

    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v2, :pswitch_data_0

    .line 1023
    :goto_0
    :pswitch_0
    return-void

    .line 1010
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v5, v1

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1011
    goto :goto_0

    .line 1013
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v5, v1

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1014
    goto :goto_0

    .line 1016
    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v5, v1

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v6, v1

    iget-object v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    .line 1018
    goto :goto_0

    .line 1020
    :pswitch_4
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v5, v1

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    goto :goto_0

    .line 1008
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public findViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    .prologue
    .line 966
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$6;
    move v1, p1

    .local v1, "position":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 967
    .local v2, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 968
    const/4 v3, 0x0

    move-object v0, v3

    .line 978
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$6;
    :goto_0
    return-object v0

    .line 972
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$6;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 976
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 978
    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 8

    .prologue
    .line 998
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$6;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v3, p3

    .local v3, "payload":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 999
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 1000
    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 6

    .prologue
    .line 1032
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$6;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 1033
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 1034
    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 6

    .prologue
    .line 1038
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$6;
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 1040
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 1041
    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 8

    .prologue
    .line 983
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$6;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move v4, v1

    move v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 984
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 985
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 986
    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 7

    .prologue
    .line 991
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$6;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 992
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 993
    return-void
.end method

.method public onDispatchFirstPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 4

    .prologue
    .line 1004
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$6;
    move-object v1, p1

    .local v1, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$6;->dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 1005
    return-void
.end method

.method public onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 4

    .prologue
    .line 1027
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$6;
    move-object v1, p1

    .local v1, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$6;->dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 1028
    return-void
.end method
