.class final Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;,
        Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;,
        Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    }
.end annotation


# instance fields
.field private final locks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;",
            ">;"
        }
    .end annotation
.end field

.field private final writeLockPool:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    .line 22
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;)V

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->writeLockPool:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;

    .line 68
    return-void
.end method


# virtual methods
.method acquire(Lcom/bumptech/glide/load/Key;)V
    .locals 9

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 27
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    move-object v2, v5

    .line 28
    .local v2, "writeLock":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 29
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->writeLockPool:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->obtain()Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    move-result-object v5

    move-object v2, v5

    .line 30
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 32
    :cond_0
    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    .line 33
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    move-object v5, v2

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 36
    return-void

    .line 33
    .end local v2    # "writeLock":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method release(Lcom/bumptech/glide/load/Key;)V
    .locals 12

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v3, v7

    monitor-enter v6

    .line 41
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    move-object v2, v6

    .line 42
    .local v2, "writeLock":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    iget v6, v6, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    if-gtz v6, :cond_2

    .line 43
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Cannot release a lock that is not held, key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", interestedThreads: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    if-nez v9, :cond_1

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 58
    .end local v2    # "writeLock":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6

    .line 43
    .restart local v2    # "writeLock":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    :cond_1
    move-object v9, v2

    :try_start_1
    iget v9, v9, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    goto :goto_0

    .line 48
    :cond_2
    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    iput v8, v7, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    if-nez v6, :cond_4

    .line 49
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    move-object v4, v6

    .line 50
    .local v4, "removed":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 51
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Removed the wrong lock, expected to remove: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", but actually removed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 56
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->writeLockPool:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->offer(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;)V

    .line 58
    .end local v4    # "removed":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    :cond_4
    move-object v6, v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    move-object v6, v2

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 61
    return-void
.end method
