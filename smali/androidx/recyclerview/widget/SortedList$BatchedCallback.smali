.class public Landroidx/recyclerview/widget/SortedList$BatchedCallback;
.super Landroidx/recyclerview/widget/SortedList$Callback;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/SortedList$Callback",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field private final mBatchingListUpdateCallback:Landroidx/recyclerview/widget/BatchingListUpdateCallback;

.field final mWrappedCallback:Landroidx/recyclerview/widget/SortedList$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/SortedList$Callback",
            "<TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/SortedList$Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/SortedList$Callback",
            "<TT2;>;)V"
        }
    .end annotation

    .prologue
    .line 951
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList$BatchedCallback;, "Landroidx/recyclerview/widget/SortedList$BatchedCallback<TT2;>;"
    move-object v1, p1

    .local v1, "wrappedCallback":Landroidx/recyclerview/widget/SortedList$Callback;, "Landroidx/recyclerview/widget/SortedList$Callback<TT2;>;"
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/SortedList$Callback;-><init>()V

    .line 952
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mWrappedCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 953
    move-object v2, v0

    new-instance v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mWrappedCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    iput-object v3, v2, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    .line 954
    return-void
.end method


# virtual methods
.method public areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .line 988
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList$BatchedCallback;, "Landroidx/recyclerview/widget/SortedList$BatchedCallback<TT2;>;"
    move-object v1, p1

    .local v1, "oldItem":Ljava/lang/Object;, "TT2;"
    move-object v2, p2

    .local v2, "newItem":Ljava/lang/Object;, "TT2;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mWrappedCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList$BatchedCallback;, "Landroidx/recyclerview/widget/SortedList$BatchedCallback<TT2;>;"
    return v0
.end method

.method public areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .line 993
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList$BatchedCallback;, "Landroidx/recyclerview/widget/SortedList$BatchedCallback<TT2;>;"
    move-object v1, p1

    .local v1, "item1":Ljava/lang/Object;, "TT2;"
    move-object v2, p2

    .local v2, "item2":Ljava/lang/Object;, "TT2;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mWrappedCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList$BatchedCallback;, "Landroidx/recyclerview/widget/SortedList$BatchedCallback<TT2;>;"
    return v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation

    .prologue
    .line 958
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList$BatchedCallback;, "Landroidx/recyclerview/widget/SortedList$BatchedCallback<TT2;>;"
    move-object v1, p1

    .local v1, "o1":Ljava/lang/Object;, "TT2;"
    move-object v2, p2

    .local v2, "o2":Ljava/lang/Object;, "TT2;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mWrappedCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList$BatchedCallback;, "Landroidx/recyclerview/widget/SortedList$BatchedCallback<TT2;>;"
    return v0
.end method

.method public dispatchLastEvent()V
    .locals 2

    .prologue
    .line 1007
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList$BatchedCallback;, "Landroidx/recyclerview/widget/SortedList$BatchedCallback<TT2;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 1008
    return-void
.end method

.method public getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 999
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList$BatchedCallback;, "Landroidx/recyclerview/widget/SortedList$BatchedCallback<TT2;>;"
    move-object v1, p1

    .local v1, "item1":Ljava/lang/Object;, "TT2;"
    move-object v2, p2

    .local v2, "item2":Ljava/lang/Object;, "TT2;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mWrappedCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList$BatchedCallback;, "Landroidx/recyclerview/widget/SortedList$BatchedCallback<TT2;>;"
    return-object v0
.end method

.method public onChanged(II)V
    .locals 7

    .prologue
    .line 978
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList$BatchedCallback;, "Landroidx/recyclerview/widget/SortedList$BatchedCallback<TT2;>;"
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "count":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 979
    return-void
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 8

    .prologue
    .line 983
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList$BatchedCallback;, "Landroidx/recyclerview/widget/SortedList$BatchedCallback<TT2;>;"
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "count":I
    move-object v3, p3

    .local v3, "payload":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 984
    return-void
.end method

.method public onInserted(II)V
    .locals 6

    .prologue
    .line 963
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList$BatchedCallback;, "Landroidx/recyclerview/widget/SortedList$BatchedCallback<TT2;>;"
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "count":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onInserted(II)V

    .line 964
    return-void
.end method

.method public onMoved(II)V
    .locals 6

    .prologue
    .line 973
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList$BatchedCallback;, "Landroidx/recyclerview/widget/SortedList$BatchedCallback<TT2;>;"
    move v1, p1

    .local v1, "fromPosition":I
    move v2, p2

    .local v2, "toPosition":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    .line 974
    return-void
.end method

.method public onRemoved(II)V
    .locals 6

    .prologue
    .line 968
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList$BatchedCallback;, "Landroidx/recyclerview/widget/SortedList$BatchedCallback<TT2;>;"
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "count":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onRemoved(II)V

    .line 969
    return-void
.end method
