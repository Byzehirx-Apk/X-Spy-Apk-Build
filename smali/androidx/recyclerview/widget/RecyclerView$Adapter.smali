.class public abstract Landroidx/recyclerview/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 6700
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6701
    move-object v1, v0

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 6702
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 6815
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move-object v2, p1

    .local v2, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    move v3, p2

    .local v3, "position":I
    move-object v5, v2

    move v6, v3

    iput v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6816
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6817
    move-object v5, v2

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 6819
    :cond_0
    move-object v5, v2

    const/4 v6, 0x1

    const/16 v7, 0x207

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6822
    const-string/jumbo v5, "RV OnBindView"

    invoke-static {v5}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6823
    move-object v5, v1

    move-object v6, v2

    move v7, v3

    move-object v8, v2

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 6824
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 6825
    move-object v5, v2

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v4, v5

    .line 6826
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v5, v4

    instance-of v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v5, :cond_1

    .line 6827
    move-object v5, v4

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6829
    :cond_1
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 6830
    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 10
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 6793
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move-object v1, p1

    .local v1, "parent":Landroid/view/ViewGroup;
    move v2, p2

    .local v2, "viewType":I
    :try_start_0
    const-string/jumbo v6, "RV CreateView"

    invoke-static {v6}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6794
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v3, v6

    .line 6795
    .local v3, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    move-object v6, v3

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 6796
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6803
    .end local v3    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    :catchall_0
    move-exception v6

    move-object v5, v6

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    move-object v6, v5

    throw v6

    .line 6800
    .restart local v3    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    :cond_0
    move-object v6, v3

    move v7, v2

    :try_start_1
    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6801
    move-object v6, v3

    move-object v4, v6

    .line 6803
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    return-object v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 6873
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move v1, p1

    .local v1, "position":I
    const-wide/16 v2, -0x1

    move-wide v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    .line 6845
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move v1, p1

    .local v1, "position":I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    return v0
.end method

.method public final hasObservers()Z
    .locals 2

    .prologue
    .line 6983
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    return v0
.end method

.method public final hasStableIds()Z
    .locals 2

    .prologue
    .line 6891
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 7070
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 7071
    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 5

    .prologue
    .line 7086
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 7087
    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 7
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 7114
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move v1, p1

    .local v1, "position":I
    move-object v2, p2

    .local v2, "payload":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    move v4, v1

    const/4 v5, 0x1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 7115
    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 5

    .prologue
    .line 7180
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 7181
    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 6

    .prologue
    .line 7195
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move v1, p1

    .local v1, "fromPosition":I
    move v2, p2

    .local v2, "toPosition":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    .line 7196
    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 6

    .prologue
    .line 7132
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 7133
    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 8
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 7163
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v3, p3

    .local v3, "payload":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 7164
    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 6

    .prologue
    .line 7214
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 7215
    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 6

    .prologue
    .line 7248
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move v1, p1

    .local v1, "positionStart":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 7249
    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 5

    .prologue
    .line 7231
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 7232
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 7029
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public abstract onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6781
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    move v2, p2

    .local v2, "position":I
    move-object v3, p3

    .local v3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 6782
    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 7038
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 6949
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move-object v1, p1

    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    return v0
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6963
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6975
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6912
    .local p0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 7003
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move-object v1, p1

    .local v1, "observer":Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 7004
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 6

    .prologue
    .line 6857
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move v1, p1

    .local v1, "hasStableIds":Z
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6858
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6861
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 6862
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 7017
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    move-object v1, p1

    .local v1, "observer":Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 7018
    return-void
.end method
