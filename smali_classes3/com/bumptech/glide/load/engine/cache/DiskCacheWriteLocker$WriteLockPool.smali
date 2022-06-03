.class Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteLockPool"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa


# instance fields
.field private final pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 70
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayDeque;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;)V
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;-><init>()V

    return-void
.end method


# virtual methods
.method obtain()Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    .locals 8

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 75
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    move-object v1, v4

    .line 76
    .local v1, "result":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    move-object v4, v1

    if-nez v4, :cond_0

    .line 78
    new-instance v4, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;)V

    move-object v1, v4

    .line 80
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;
    return-object v0

    .line 76
    .end local v1    # "result":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method offer(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;)V
    .locals 7

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;
    move-object v1, p1

    .local v1, "writeLock":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 85
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    .line 86
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v4

    .line 88
    :cond_0
    move-object v4, v2

    monitor-exit v4

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method
