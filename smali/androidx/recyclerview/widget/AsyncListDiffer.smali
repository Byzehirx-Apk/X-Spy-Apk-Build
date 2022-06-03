.class public Landroidx/recyclerview/widget/AsyncListDiffer;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field final mConfig:Landroidx/recyclerview/widget/AsyncDifferConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncDifferConfig",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mMainThreadExecutor:Ljava/util/concurrent/Executor;

.field mMaxScheduledGeneration:I

.field private mReadOnlyList:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/AsyncListDiffer;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/ListUpdateCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/AsyncDifferConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Landroidx/recyclerview/widget/AsyncDifferConfig",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListDiffer;, "Landroidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    move-object v1, p1

    .local v1, "listUpdateCallback":Landroidx/recyclerview/widget/ListUpdateCallback;
    move-object v2, p2

    .local v2, "config":Landroidx/recyclerview/widget/AsyncDifferConfig;, "Landroidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 179
    move-object v3, v0

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 162
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 163
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/AsyncDifferConfig;

    .line 164
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 165
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    iput-object v4, v3, Landroidx/recyclerview/widget/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    move-object v3, v0

    sget-object v4, Landroidx/recyclerview/widget/AsyncListDiffer;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    iput-object v4, v3, Landroidx/recyclerview/widget/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListDiffer;, "Landroidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    move-object v1, p1

    .local v1, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    move-object v2, p2

    .local v2, "diffCallback":Landroidx/recyclerview/widget/DiffUtil$ItemCallback;, "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<TT;>;"
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v5, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 146
    invoke-virtual {v5}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object v5

    .line 145
    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    .line 147
    return-void
.end method


# virtual methods
.method public getCurrentList()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListDiffer;, "Landroidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncListDiffer;, "Landroidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    return-object v0
.end method

.method latchList(Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/DiffUtil$DiffResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListDiffer;, "Landroidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    move-object v1, p1

    .local v1, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v2, p2

    .local v2, "diffResult":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    .line 317
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 318
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 319
    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .locals 13
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListDiffer;, "Landroidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    move-object v1, p1

    .local v1, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v4, v0

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    iget v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer;->mMaxScheduledGeneration:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v11, v4

    move v12, v5

    move v4, v12

    move-object v5, v11

    move v6, v12

    iput v6, v5, Landroidx/recyclerview/widget/AsyncListDiffer;->mMaxScheduledGeneration:I

    move v2, v4

    .line 217
    .local v2, "runGeneration":I
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    if-ne v4, v5, :cond_0

    .line 219
    .line 311
    :goto_0
    return-void

    .line 223
    :cond_0
    move-object v4, v1

    if-nez v4, :cond_1

    .line 225
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    .line 226
    .local v3, "countRemoved":I
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    .line 227
    move-object v4, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 229
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    const/4 v5, 0x0

    move v6, v3

    invoke-interface {v4, v5, v6}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 230
    goto :goto_0

    .line 234
    .end local v3    # "countRemoved":I
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    if-nez v4, :cond_2

    .line 235
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    .line 236
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 238
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    const/4 v5, 0x0

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 239
    goto :goto_0

    .line 242
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    move-object v3, v4

    .line 243
    .local v3, "oldList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/AsyncDifferConfig;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Landroidx/recyclerview/widget/AsyncListDiffer$1;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v3

    move-object v9, v1

    move v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/AsyncListDiffer$1;-><init>(Landroidx/recyclerview/widget/AsyncListDiffer;Ljava/util/List;Ljava/util/List;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 311
    goto :goto_0
.end method
