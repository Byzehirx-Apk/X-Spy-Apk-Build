.class Landroidx/recyclerview/widget/AsyncListUtil$2;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mFirstRequiredTileStart:I

.field private mGeneration:I

.field private mItemCount:I

.field private mLastRequiredTileStart:I

.field final mLoadedTiles:Landroid/util/SparseBooleanArray;

.field private mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/TileList$Tile",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/recyclerview/widget/AsyncListUtil;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/AsyncListUtil;)V
    .locals 6

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/AsyncListUtil;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 298
    move-object v2, v0

    new-instance v3, Landroid/util/SparseBooleanArray;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v2, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private acquireTile()Landroidx/recyclerview/widget/TileList$Tile;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/TileList$Tile",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil$2;->mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;

    if-eqz v2, :cond_0

    .line 393
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil$2;->mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;

    move-object v1, v2

    .line 394
    .local v1, "result":Landroidx/recyclerview/widget/TileList$Tile;, "Landroidx/recyclerview/widget/TileList$Tile<TT;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil$2;->mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;

    iget-object v3, v3, Landroidx/recyclerview/widget/TileList$Tile;->mNext:Landroidx/recyclerview/widget/TileList$Tile;

    iput-object v3, v2, Landroidx/recyclerview/widget/AsyncListUtil$2;->mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;

    .line 395
    move-object v2, v1

    move-object v0, v2

    .line 397
    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    .end local v1    # "result":Landroidx/recyclerview/widget/TileList$Tile;, "Landroidx/recyclerview/widget/TileList$Tile<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/TileList$Tile;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListUtil;->mTClass:Ljava/lang/Class;

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v5, v5, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/TileList$Tile;-><init>(Ljava/lang/Class;I)V

    move-object v0, v2

    goto :goto_0
.end method

.method private addTile(Landroidx/recyclerview/widget/TileList$Tile;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    move-object v1, p1

    .local v1, "tile":Landroidx/recyclerview/widget/TileList$Tile;, "Landroidx/recyclerview/widget/TileList$Tile<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 406
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/AsyncListUtil$2;->mGeneration:I

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V

    .line 410
    return-void
.end method

.method private flushTileCache(I)V
    .locals 10

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    move v1, p1

    .local v1, "scrollHint":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->getMaxCachedTiles()I

    move-result v7

    move v2, v7

    .line 422
    .local v2, "cacheSizeLimit":I
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    move v8, v2

    if-lt v7, v8, :cond_4

    .line 423
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    move v3, v7

    .line 424
    .local v3, "firstLoadedTileStart":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    move v4, v7

    .line 425
    .local v4, "lastLoadedTileStart":I
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/AsyncListUtil$2;->mFirstRequiredTileStart:I

    move v8, v3

    sub-int/2addr v7, v8

    move v5, v7

    .line 426
    .local v5, "startMargin":I
    move v7, v4

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLastRequiredTileStart:I

    sub-int/2addr v7, v8

    move v6, v7

    .line 427
    .local v6, "endMargin":I
    move v7, v5

    if-lez v7, :cond_1

    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_0

    move v7, v1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 429
    :cond_0
    move-object v7, v0

    move v8, v3

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/AsyncListUtil$2;->removeTile(I)V

    .line 437
    :goto_1
    goto :goto_0

    .line 430
    :cond_1
    move v7, v6

    if-lez v7, :cond_3

    move v7, v5

    move v8, v6

    if-lt v7, v8, :cond_2

    move v7, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 432
    :cond_2
    move-object v7, v0

    move v8, v4

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/AsyncListUtil$2;->removeTile(I)V

    goto :goto_1

    .line 435
    .line 438
    .end local v3    # "firstLoadedTileStart":I
    .end local v4    # "lastLoadedTileStart":I
    .end local v5    # "startMargin":I
    .end local v6    # "endMargin":I
    :cond_3
    :goto_2
    return-void

    :cond_4
    goto :goto_2
.end method

.method private getTileStart(I)I
    .locals 5

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    move v1, p1

    .local v1, "position":I
    move v2, v1

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v4, v4, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    rem-int/2addr v3, v4

    sub-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    return v0
.end method

.method private isTileLoaded(I)Z
    .locals 4

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    return v0
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    const-string/jumbo v3, "AsyncListUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[BKGR] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 442
    return-void
.end method

.method private removeTile(I)V
    .locals 5

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 414
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/AsyncListUtil$2;->mGeneration:I

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->removeTile(II)V

    .line 418
    return-void
.end method

.method private requestTiles(IIIZ)V
    .locals 10

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    move v1, p1

    .local v1, "firstTileStart":I
    move v2, p2

    .local v2, "lastTileStart":I
    move v3, p3

    .local v3, "scrollHint":I
    move v4, p4

    .local v4, "backwards":Z
    move v7, v1

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v2

    if-gt v7, v8, :cond_1

    .line 356
    move v7, v4

    if-eqz v7, :cond_0

    move v7, v2

    move v8, v1

    add-int/2addr v7, v8

    move v8, v5

    sub-int/2addr v7, v8

    :goto_1
    move v6, v7

    .line 360
    .local v6, "tileStart":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move v8, v6

    move v9, v3

    invoke-interface {v7, v8, v9}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->loadTile(II)V

    .line 355
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v8, v8, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    add-int/2addr v7, v8

    move v5, v7

    goto :goto_0

    .line 356
    .end local v6    # "tileStart":I
    :cond_0
    move v7, v5

    goto :goto_1

    .line 362
    :cond_1
    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .locals 8

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "scrollHint":I
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/AsyncListUtil$2;->isTileLoaded(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 370
    .line 378
    :goto_0
    return-void

    .line 372
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/AsyncListUtil$2;->acquireTile()Landroidx/recyclerview/widget/TileList$Tile;

    move-result-object v4

    move-object v3, v4

    .line 373
    .local v3, "tile":Landroidx/recyclerview/widget/TileList$Tile;, "Landroidx/recyclerview/widget/TileList$Tile<TT;>;"
    move-object v4, v3

    move v5, v1

    iput v5, v4, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    .line 374
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v5, v5, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/AsyncListUtil$2;->mItemCount:I

    move-object v7, v3

    iget v7, v7, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    .line 375
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    move-object v5, v3

    iget-object v5, v5, Landroidx/recyclerview/widget/TileList$Tile;->mItems:[Ljava/lang/Object;

    move-object v6, v3

    iget v6, v6, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    move-object v7, v3

    iget v7, v7, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->fillData([Ljava/lang/Object;II)V

    .line 376
    move-object v4, v0

    move v5, v2

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/AsyncListUtil$2;->flushTileCache(I)V

    .line 377
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/AsyncListUtil$2;->addTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    .line 378
    goto :goto_0
.end method

.method public recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    move-object v1, p1

    .local v1, "tile":Landroidx/recyclerview/widget/TileList$Tile;, "Landroidx/recyclerview/widget/TileList$Tile<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/TileList$Tile;->mItems:[Ljava/lang/Object;

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->recycleData([Ljava/lang/Object;I)V

    .line 387
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil$2;->mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;

    iput-object v3, v2, Landroidx/recyclerview/widget/TileList$Tile;->mNext:Landroidx/recyclerview/widget/TileList$Tile;

    .line 388
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/AsyncListUtil$2;->mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;

    .line 389
    return-void
.end method

.method public refresh(I)V
    .locals 5

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    move v1, p1

    .local v1, "generation":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/AsyncListUtil$2;->mGeneration:I

    .line 309
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 310
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->refreshData()I

    move-result v3

    iput v3, v2, Landroidx/recyclerview/widget/AsyncListUtil$2;->mItemCount:I

    .line 311
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/AsyncListUtil$2;->mGeneration:I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/AsyncListUtil$2;->mItemCount:I

    invoke-interface {v2, v3, v4}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    .line 312
    return-void
.end method

.method public updateRange(IIIII)V
    .locals 13

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$2;, "Landroidx/recyclerview/widget/AsyncListUtil$2;"
    move v1, p1

    .local v1, "rangeStart":I
    move v2, p2

    .local v2, "rangeEnd":I
    move/from16 v3, p3

    .local v3, "extRangeStart":I
    move/from16 v4, p4

    .local v4, "extRangeEnd":I
    move/from16 v5, p5

    .local v5, "scrollHint":I
    move v8, v1

    move v9, v2

    if-le v8, v9, :cond_0

    .line 323
    .line 347
    :goto_0
    return-void

    .line 326
    :cond_0
    move-object v8, v0

    move v9, v1

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/AsyncListUtil$2;->getTileStart(I)I

    move-result v8

    move v6, v8

    .line 327
    .local v6, "firstVisibleTileStart":I
    move-object v8, v0

    move v9, v2

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/AsyncListUtil$2;->getTileStart(I)I

    move-result v8

    move v7, v8

    .line 329
    .local v7, "lastVisibleTileStart":I
    move-object v8, v0

    move-object v9, v0

    move v10, v3

    invoke-direct {v9, v10}, Landroidx/recyclerview/widget/AsyncListUtil$2;->getTileStart(I)I

    move-result v9

    iput v9, v8, Landroidx/recyclerview/widget/AsyncListUtil$2;->mFirstRequiredTileStart:I

    .line 330
    move-object v8, v0

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroidx/recyclerview/widget/AsyncListUtil$2;->getTileStart(I)I

    move-result v9

    iput v9, v8, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLastRequiredTileStart:I

    .line 338
    move v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 339
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/AsyncListUtil$2;->mFirstRequiredTileStart:I

    move v10, v7

    move v11, v5

    const/4 v12, 0x1

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/AsyncListUtil$2;->requestTiles(IIIZ)V

    .line 340
    move-object v8, v0

    move v9, v7

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v10, v10, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    add-int/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLastRequiredTileStart:I

    move v11, v5

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/AsyncListUtil$2;->requestTiles(IIIZ)V

    .line 347
    :goto_1
    goto :goto_0

    .line 343
    :cond_1
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLastRequiredTileStart:I

    move v11, v5

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/AsyncListUtil$2;->requestTiles(IIIZ)V

    .line 344
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/AsyncListUtil$2;->mFirstRequiredTileStart:I

    move v10, v6

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v11, v11, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    sub-int/2addr v10, v11

    move v11, v5

    const/4 v12, 0x1

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/AsyncListUtil$2;->requestTiles(IIIZ)V

    goto :goto_1
.end method
