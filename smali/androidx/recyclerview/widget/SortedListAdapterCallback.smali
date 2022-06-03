.class public abstract Landroidx/recyclerview/widget/SortedListAdapterCallback;
.super Landroidx/recyclerview/widget/SortedList$Callback;
.source "SortedListAdapterCallback.java"


# annotations
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
.field final mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedListAdapterCallback;, "Landroidx/recyclerview/widget/SortedListAdapterCallback<TT2;>;"
    move-object v1, p1

    .local v1, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/SortedList$Callback;-><init>()V

    .line 34
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 35
    return-void
.end method


# virtual methods
.method public onChanged(II)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedListAdapterCallback;, "Landroidx/recyclerview/widget/SortedListAdapterCallback<TT2;>;"
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "count":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 55
    return-void
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 8

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedListAdapterCallback;, "Landroidx/recyclerview/widget/SortedListAdapterCallback<TT2;>;"
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "count":I
    move-object v3, p3

    .local v3, "payload":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public onInserted(II)V
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedListAdapterCallback;, "Landroidx/recyclerview/widget/SortedListAdapterCallback<TT2;>;"
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "count":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 40
    return-void
.end method

.method public onMoved(II)V
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedListAdapterCallback;, "Landroidx/recyclerview/widget/SortedListAdapterCallback<TT2;>;"
    move v1, p1

    .local v1, "fromPosition":I
    move v2, p2

    .local v2, "toPosition":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 50
    return-void
.end method

.method public onRemoved(II)V
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedListAdapterCallback;, "Landroidx/recyclerview/widget/SortedListAdapterCallback<TT2;>;"
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "count":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 45
    return-void
.end method
