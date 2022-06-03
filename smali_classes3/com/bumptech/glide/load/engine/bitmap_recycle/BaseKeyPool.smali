.class abstract Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;
.super Ljava/lang/Object;
.source "BaseKeyPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MAX_SIZE:I = 0x14


# instance fields
.field private final keyPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    move-object v1, v0

    const/16 v2, 0x14

    invoke-static {v2}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;->keyPool:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method protected abstract create()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected get()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;->keyPool:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    move-object v1, v2

    .line 13
    .local v1, "result":Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;, "TT;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 14
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;->create()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v2

    move-object v1, v2

    .line 16
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool<TT;>;"
    return-object v0
.end method

.method public offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool<TT;>;"
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;->keyPool:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 21
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;->keyPool:Ljava/util/Queue;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    .line 23
    :cond_0
    return-void
.end method
