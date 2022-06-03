.class Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;
.super Landroid/database/Observable;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdapterDataObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 11986
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;
    move-object v1, v0

    invoke-direct {v1}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .locals 2

    .prologue
    .line 11988
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyChanged()V
    .locals 4

    .prologue
    .line 11996
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    if-ltz v2, :cond_0

    .line 11997
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 11996
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 11999
    :cond_0
    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 8

    .prologue
    .line 12037
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;
    move v1, p1

    .local v1, "fromPosition":I
    move v2, p2

    .local v2, "toPosition":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    if-ltz v4, :cond_0

    .line 12038
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    move v5, v1

    move v6, v2

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 12037
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 12040
    :cond_0
    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 7

    .prologue
    .line 12002
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 12003
    return-void
.end method

.method public notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 9
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 12011
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v3, p3

    .local v3, "payload":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 12012
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 12011
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 12014
    :cond_0
    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 7

    .prologue
    .line 12021
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    if-ltz v4, :cond_0

    .line 12022
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 12021
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 12024
    :cond_0
    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 7

    .prologue
    .line 12031
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    if-ltz v4, :cond_0

    .line 12032
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 12031
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 12034
    :cond_0
    return-void
.end method
