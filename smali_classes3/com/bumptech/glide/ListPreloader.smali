.class public Lcom/bumptech/glide/ListPreloader;
.super Ljava/lang/Object;
.source "ListPreloader.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/ListPreloader$PreloadTarget;,
        Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;,
        Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;,
        Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private isIncreasing:Z

.field private lastEnd:I

.field private lastFirstVisible:I

.field private lastStart:I

.field private final maxPreload:I

.field private final preloadDimensionProvider:Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/ListPreloader$PreloadModelProvider",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

.field private totalItemCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    move v1, p1

    .local v1, "maxPreload":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/bumptech/glide/ListPreloader;->isIncreasing:Z

    .line 103
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/ListPreloader$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/bumptech/glide/ListPreloader$1;-><init>(Lcom/bumptech/glide/ListPreloader;)V

    iput-object v3, v2, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    .line 114
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/ListPreloader$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/bumptech/glide/ListPreloader$2;-><init>(Lcom/bumptech/glide/ListPreloader;)V

    iput-object v3, v2, Lcom/bumptech/glide/ListPreloader;->preloadDimensionProvider:Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;

    .line 121
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    .line 122
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;-><init>(I)V

    iput-object v3, v2, Lcom/bumptech/glide/ListPreloader;->preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/ListPreloader$PreloadModelProvider",
            "<TT;>;",
            "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    move-object v1, p1

    .local v1, "preloadModelProvider":Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;, "Lcom/bumptech/glide/ListPreloader$PreloadModelProvider<TT;>;"
    move-object v2, p2

    .local v2, "preloadDimensionProvider":Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;, "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<TT;>;"
    move v3, p3

    .local v3, "maxPreload":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/bumptech/glide/ListPreloader;->isIncreasing:Z

    .line 136
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    .line 137
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/bumptech/glide/ListPreloader;->preloadDimensionProvider:Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;

    .line 138
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    .line 139
    move-object v4, v0

    new-instance v5, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;-><init>(I)V

    iput-object v5, v4, Lcom/bumptech/glide/ListPreloader;->preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    .line 140
    return-void
.end method

.method private cancelAll()V
    .locals 5

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    if-ge v2, v3, :cond_0

    .line 277
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/ListPreloader;->preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->next(II)Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method

.method private preload(II)V
    .locals 10

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move v6, v1

    move v7, v2

    if-ge v6, v7, :cond_0

    .line 228
    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/ListPreloader;->lastEnd:I

    move v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v3, v6

    .line 229
    .local v3, "start":I
    move v6, v2

    move v4, v6

    .line 234
    .local v4, "end":I
    :goto_0
    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/ListPreloader;->totalItemCount:I

    move v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v4, v6

    .line 235
    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/ListPreloader;->totalItemCount:I

    const/4 v7, 0x0

    move v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v3, v6

    .line 237
    move v6, v1

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 239
    move v6, v3

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 240
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    move v8, v5

    invoke-interface {v7, v8}, Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;->getPreloadItems(I)Ljava/util/List;

    move-result-object v7

    move v8, v5

    const/4 v9, 0x1

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/ListPreloader;->preloadAdapterPosition(Ljava/util/List;IZ)V

    .line 239
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 231
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "i":I
    :cond_0
    move v6, v2

    move v3, v6

    .line 232
    .restart local v3    # "start":I
    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/ListPreloader;->lastStart:I

    move v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v4, v6

    .restart local v4    # "end":I
    goto :goto_0

    .line 239
    .line 249
    .restart local v5    # "i":I
    :cond_1
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/bumptech/glide/ListPreloader;->lastStart:I

    .line 250
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/bumptech/glide/ListPreloader;->lastEnd:I

    .line 251
    return-void

    .line 244
    .end local v5    # "i":I
    :cond_2
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v5, v6

    .restart local v5    # "i":I
    :goto_2
    move v6, v5

    move v7, v3

    if-lt v6, v7, :cond_1

    .line 245
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    move v8, v5

    invoke-interface {v7, v8}, Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;->getPreloadItems(I)Ljava/util/List;

    move-result-object v7

    move v8, v5

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/ListPreloader;->preloadAdapterPosition(Ljava/util/List;IZ)V

    .line 244
    add-int/lit8 v5, v5, -0x1

    goto :goto_2
.end method

.method private preload(IZ)V
    .locals 7

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "increasing":Z
    move-object v3, v0

    iget-boolean v3, v3, Lcom/bumptech/glide/ListPreloader;->isIncreasing:Z

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 218
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/bumptech/glide/ListPreloader;->isIncreasing:Z

    .line 219
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/ListPreloader;->cancelAll()V

    .line 221
    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v1

    move v6, v2

    if-eqz v6, :cond_1

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    :goto_0
    add-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/ListPreloader;->preload(II)V

    .line 222
    return-void

    .line 221
    :cond_1
    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    neg-int v6, v6

    goto :goto_0
.end method

.method private preloadAdapterPosition(Ljava/util/List;IZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    move-object v1, p1

    .local v1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move v2, p2

    .local v2, "position":I
    move v3, p3

    .local v3, "isIncreasing":Z
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v4, v6

    .line 255
    .local v4, "numItems":I
    move v6, v3

    if-eqz v6, :cond_1

    .line 256
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 257
    move-object v6, v0

    move-object v7, v1

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move v8, v2

    move v9, v5

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/ListPreloader;->preloadItem(Ljava/lang/Object;II)V

    .line 256
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 264
    :cond_0
    return-void

    .line 260
    .end local v5    # "i":I
    :cond_1
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v5, v6

    .restart local v5    # "i":I
    :goto_1
    move v6, v5

    if-ltz v6, :cond_0

    .line 261
    move-object v6, v0

    move-object v7, v1

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move v8, v2

    move v9, v5

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/ListPreloader;->preloadItem(Ljava/lang/Object;II)V

    .line 260
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private preloadItem(Ljava/lang/Object;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "position":I
    move v3, p3

    .local v3, "i":I
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/ListPreloader;->preloadDimensionProvider:Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-interface {v6, v7, v8, v9}, Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;->getPreloadSize(Ljava/lang/Object;II)[I

    move-result-object v6

    move-object v4, v6

    .line 269
    .local v4, "dimensions":[I
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 270
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    move-object v7, v1

    invoke-interface {v6, v7}, Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;->getPreloadRequestBuilder(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v6

    move-object v5, v6

    .line 271
    .local v5, "preloadRequestBuilder":Lcom/bumptech/glide/GenericRequestBuilder;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/ListPreloader;->preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    move-object v8, v4

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object v9, v4

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->next(II)Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v6

    .line 273
    .end local v5    # "preloadRequestBuilder":Lcom/bumptech/glide/GenericRequestBuilder;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getDimensions(Ljava/lang/Object;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "You must either provide a PreloadDimensionProvider or override getDimensions()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getItems(II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "You must either provide a PreloadModelProvider or override getItems()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected getRequestBuilder(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bumptech/glide/GenericRequestBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "You must either provide a PreloadModelProvider, or override getRequestBuilder()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    move-object v1, p1

    .local v1, "absListView":Landroid/widget/AbsListView;
    move v2, p2

    .local v2, "firstVisible":I
    move v3, p3

    .local v3, "visibleCount":I
    move v4, p4

    .local v4, "totalCount":I
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/bumptech/glide/ListPreloader;->totalItemCount:I

    .line 151
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/ListPreloader;->lastFirstVisible:I

    if-le v5, v6, :cond_1

    .line 152
    move-object v5, v0

    move v6, v2

    move v7, v3

    add-int/2addr v6, v7

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/ListPreloader;->preload(IZ)V

    .line 156
    :cond_0
    :goto_0
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/bumptech/glide/ListPreloader;->lastFirstVisible:I

    .line 157
    return-void

    .line 153
    :cond_1
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/ListPreloader;->lastFirstVisible:I

    if-ge v5, v6, :cond_0

    .line 154
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/ListPreloader;->preload(IZ)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 145
    .local p0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    return-void
.end method
