.class Landroidx/recyclerview/widget/AsyncListUtil$1;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;


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
        "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/AsyncListUtil;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/AsyncListUtil;)V
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$1;, "Landroidx/recyclerview/widget/AsyncListUtil$1;"
    move-object v1, p1

    .local v1, "this$0":Landroidx/recyclerview/widget/AsyncListUtil;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRequestedGeneration(I)Z
    .locals 4

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$1;, "Landroidx/recyclerview/widget/AsyncListUtil$1;"
    move v1, p1

    .local v1, "generation":I
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v3, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/AsyncListUtil$1;, "Landroidx/recyclerview/widget/AsyncListUtil$1;"
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/AsyncListUtil$1;, "Landroidx/recyclerview/widget/AsyncListUtil$1;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private recycleAllTiles()V
    .locals 5

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$1;, "Landroidx/recyclerview/widget/AsyncListUtil$1;"
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/TileList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 283
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/TileList;->getAtIndex(I)Landroidx/recyclerview/widget/TileList$Tile;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/TileList;->clear()V

    .line 286
    return-void
.end method


# virtual methods
.method public addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/recyclerview/widget/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$1;, "Landroidx/recyclerview/widget/AsyncListUtil$1;"
    move v1, p1

    .local v1, "generation":I
    move-object v2, p2

    .local v2, "tile":Landroidx/recyclerview/widget/TileList$Tile;, "Landroidx/recyclerview/widget/TileList$Tile<TT;>;"
    move-object v7, v0

    move v8, v1

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/AsyncListUtil$1;->isRequestedGeneration(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 237
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move-object v8, v2

    invoke-interface {v7, v8}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    .line 238
    .line 260
    :goto_0
    return-void

    .line 240
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/TileList;->addOrReplace(Landroidx/recyclerview/widget/TileList$Tile;)Landroidx/recyclerview/widget/TileList$Tile;

    move-result-object v7

    move-object v3, v7

    .line 241
    .local v3, "duplicate":Landroidx/recyclerview/widget/TileList$Tile;, "Landroidx/recyclerview/widget/TileList$Tile<TT;>;"
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 242
    const-string/jumbo v7, "AsyncListUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "duplicate tile @"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    iget v9, v9, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 243
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move-object v8, v3

    invoke-interface {v7, v8}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    .line 249
    :cond_1
    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    add-int/2addr v7, v8

    move v4, v7

    .line 250
    .local v4, "endPosition":I
    const/4 v7, 0x0

    move v5, v7

    .line 251
    .local v5, "index":I
    :goto_1
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v8, v8, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 252
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    move v6, v7

    .line 253
    .local v6, "position":I
    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    move v8, v6

    if-gt v7, v8, :cond_2

    move v7, v6

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 254
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 255
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v7, v7, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    move v8, v6

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->onItemLoaded(I)V

    .line 259
    :goto_2
    goto :goto_1

    .line 257
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 260
    .end local v6    # "position":I
    :cond_3
    goto :goto_0
.end method

.method public removeTile(II)V
    .locals 8

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$1;, "Landroidx/recyclerview/widget/AsyncListUtil$1;"
    move v1, p1

    .local v1, "generation":I
    move v2, p2

    .local v2, "position":I
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/AsyncListUtil$1;->isRequestedGeneration(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 265
    .line 276
    :goto_0
    return-void

    .line 267
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/TileList;->removeAtPos(I)Landroidx/recyclerview/widget/TileList$Tile;

    move-result-object v4

    move-object v3, v4

    .line 268
    .local v3, "tile":Landroidx/recyclerview/widget/TileList$Tile;, "Landroidx/recyclerview/widget/TileList$Tile<TT;>;"
    move-object v4, v3

    if-nez v4, :cond_1

    .line 269
    const-string/jumbo v4, "AsyncListUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tile not found @"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 270
    goto :goto_0

    .line 275
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move-object v5, v3

    invoke-interface {v4, v5}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    .line 276
    goto :goto_0
.end method

.method public updateItemCount(II)V
    .locals 5

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AsyncListUtil$1;, "Landroidx/recyclerview/widget/AsyncListUtil$1;"
    move v1, p1

    .local v1, "generation":I
    move v2, p2

    .local v2, "itemCount":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/AsyncListUtil$1;->isRequestedGeneration(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    .line 229
    :goto_0
    return-void

    .line 221
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    .line 222
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->onDataRefresh()V

    .line 223
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v4, v4, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    iput v4, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    .line 224
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/AsyncListUtil$1;->recycleAllTiles()V

    .line 226
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mAllowScrollHints:Z

    .line 228
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/AsyncListUtil;->updateRange()V

    .line 229
    goto :goto_0
.end method
