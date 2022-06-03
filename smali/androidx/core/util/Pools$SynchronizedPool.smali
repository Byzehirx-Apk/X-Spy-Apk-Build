.class public Landroidx/core/util/Pools$SynchronizedPool;
.super Landroidx/core/util/Pools$SimplePool;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronizedPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/core/util/Pools$SimplePool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/Pools$SynchronizedPool;, "Landroidx/core/util/Pools$SynchronizedPool<TT;>;"
    move v1, p1

    .local v1, "maxPoolSize":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    .line 143
    move-object v2, v0

    new-instance v3, Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Landroidx/core/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    .line 154
    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/Pools$SynchronizedPool;, "Landroidx/core/util/Pools$SynchronizedPool<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 159
    move-object v3, v0

    :try_start_0
    invoke-super {v3}, Landroidx/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/util/Pools$SynchronizedPool;, "Landroidx/core/util/Pools$SynchronizedPool<TT;>;"
    return-object v0

    .line 160
    .restart local v0    # "this":Landroidx/core/util/Pools$SynchronizedPool;, "Landroidx/core/util/Pools$SynchronizedPool<TT;>;"
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/Pools$SynchronizedPool;, "Landroidx/core/util/Pools$SynchronizedPool<TT;>;"
    move-object v1, p1

    .local v1, "element":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 166
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-super {v4, v5}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Landroidx/core/util/Pools$SynchronizedPool;, "Landroidx/core/util/Pools$SynchronizedPool<TT;>;"
    return v0

    .line 167
    .restart local v0    # "this":Landroidx/core/util/Pools$SynchronizedPool;, "Landroidx/core/util/Pools$SynchronizedPool<TT;>;"
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
