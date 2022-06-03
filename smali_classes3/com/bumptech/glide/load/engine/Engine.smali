.class public Lcom/bumptech/glide/load/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/EngineJobListener;
.implements Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
.implements Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;,
        Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;,
        Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;,
        Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;,
        Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Engine"


# instance fields
.field private final activeResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

.field private final engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

.field private final jobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineJob;",
            ">;"
        }
    .end annotation
.end field

.field private final keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

.field private final resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

.field private resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 15

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine;
    move-object/from16 v1, p1

    .local v1, "memoryCache":Lcom/bumptech/glide/load/engine/cache/MemoryCache;
    move-object/from16 v2, p2

    .local v2, "diskCacheFactory":Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
    move-object/from16 v3, p3

    .local v3, "diskCacheService":Ljava/util/concurrent/ExecutorService;
    move-object/from16 v4, p4

    .local v4, "sourceService":Ljava/util/concurrent/ExecutorService;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/bumptech/glide/load/engine/Engine;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/bumptech/glide/load/engine/EngineKeyFactory;Ljava/util/Map;Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lcom/bumptech/glide/load/engine/ResourceRecycler;)V

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/bumptech/glide/load/engine/EngineKeyFactory;Ljava/util/Map;Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lcom/bumptech/glide/load/engine/ResourceRecycler;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/cache/MemoryCache;",
            "Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineJob;",
            ">;",
            "Lcom/bumptech/glide/load/engine/EngineKeyFactory;",
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;>;",
            "Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;",
            "Lcom/bumptech/glide/load/engine/ResourceRecycler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine;
    move-object/from16 v1, p1

    .local v1, "cache":Lcom/bumptech/glide/load/engine/cache/MemoryCache;
    move-object/from16 v2, p2

    .local v2, "diskCacheFactory":Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
    move-object/from16 v3, p3

    .local v3, "diskCacheService":Ljava/util/concurrent/ExecutorService;
    move-object/from16 v4, p4

    .local v4, "sourceService":Ljava/util/concurrent/ExecutorService;
    move-object/from16 v5, p5

    .local v5, "jobs":Ljava/util/Map;, "Ljava/util/Map<Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineJob;>;"
    move-object/from16 v6, p6

    .local v6, "keyFactory":Lcom/bumptech/glide/load/engine/EngineKeyFactory;
    move-object/from16 v7, p7

    .local v7, "activeResources":Ljava/util/Map;, "Ljava/util/Map<Lcom/bumptech/glide/load/Key;Ljava/lang/ref/WeakReference<Lcom/bumptech/glide/load/engine/EngineResource<*>;>;>;"
    move-object/from16 v8, p8

    .local v8, "engineJobFactory":Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
    move-object/from16 v9, p9

    .local v9, "resourceRecycler":Lcom/bumptech/glide/load/engine/ResourceRecycler;
    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 71
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 72
    move-object v10, v0

    new-instance v11, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v2

    invoke-direct {v12, v13}, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)V

    iput-object v11, v10, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    .line 74
    move-object v10, v7

    if-nez v10, :cond_0

    .line 75
    new-instance v10, Ljava/util/HashMap;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v7, v10

    .line 77
    :cond_0
    move-object v10, v0

    move-object v11, v7

    iput-object v11, v10, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    .line 79
    move-object v10, v6

    if-nez v10, :cond_1

    .line 80
    new-instance v10, Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Lcom/bumptech/glide/load/engine/EngineKeyFactory;-><init>()V

    move-object v6, v10

    .line 82
    :cond_1
    move-object v10, v0

    move-object v11, v6

    iput-object v11, v10, Lcom/bumptech/glide/load/engine/Engine;->keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    .line 84
    move-object v10, v5

    if-nez v10, :cond_2

    .line 85
    new-instance v10, Ljava/util/HashMap;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v5, v10

    .line 87
    :cond_2
    move-object v10, v0

    move-object v11, v5

    iput-object v11, v10, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    .line 89
    move-object v10, v8

    if-nez v10, :cond_3

    .line 90
    new-instance v10, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v3

    move-object v13, v4

    move-object v14, v0

    invoke-direct {v11, v12, v13, v14}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/EngineJobListener;)V

    move-object v8, v10

    .line 92
    :cond_3
    move-object v10, v0

    move-object v11, v8

    iput-object v11, v10, Lcom/bumptech/glide/load/engine/Engine;->engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    .line 94
    move-object v10, v9

    if-nez v10, :cond_4

    .line 95
    new-instance v10, Lcom/bumptech/glide/load/engine/ResourceRecycler;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Lcom/bumptech/glide/load/engine/ResourceRecycler;-><init>()V

    move-object v9, v10

    .line 97
    :cond_4
    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    .line 99
    move-object v10, v1

    move-object v11, v0

    invoke-interface {v10, v11}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V

    .line 100
    return-void
.end method

.method private getEngineResourceFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v4

    move-object v2, v4

    .line 235
    .local v2, "cached":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    move-object v4, v2

    if-nez v4, :cond_0

    .line 236
    const/4 v4, 0x0

    move-object v3, v4

    .line 243
    .local v3, "result":Lcom/bumptech/glide/load/engine/EngineResource;
    :goto_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/Engine;
    return-object v0

    .line 237
    .end local v3    # "result":Lcom/bumptech/glide/load/engine/EngineResource;
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/Engine;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Lcom/bumptech/glide/load/engine/EngineResource;

    if-eqz v4, :cond_1

    .line 239
    move-object v4, v2

    check-cast v4, Lcom/bumptech/glide/load/engine/EngineResource;

    move-object v3, v4

    .restart local v3    # "result":Lcom/bumptech/glide/load/engine/EngineResource;
    goto :goto_0

    .line 241
    .end local v3    # "result":Lcom/bumptech/glide/load/engine/EngineResource;
    :cond_1
    new-instance v4, Lcom/bumptech/glide/load/engine/EngineResource;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;Z)V

    move-object v3, v4

    .restart local v3    # "result":Lcom/bumptech/glide/load/engine/EngineResource;
    goto :goto_0
.end method

.method private getReferenceQueue()Ljava/lang/ref/ReferenceQueue;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    if-nez v2, :cond_0

    .line 303
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/ReferenceQueue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 304
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    move-object v1, v2

    .line 305
    .local v1, "queue":Landroid/os/MessageQueue;
    move-object v2, v1

    new-instance v3, Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 307
    .end local v1    # "queue":Landroid/os/MessageQueue;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/Engine;
    return-object v0
.end method

.method private loadFromActiveResources(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move v2, p2

    .local v2, "isMemoryCacheable":Z
    move v5, v2

    if-nez v5, :cond_0

    .line 200
    const/4 v5, 0x0

    move-object v0, v5

    .line 214
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/Engine;
    :goto_0
    return-object v0

    .line 203
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/Engine;
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    .line 204
    .local v3, "active":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v4, v5

    .line 205
    .local v4, "activeRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/bumptech/glide/load/engine/EngineResource<*>;>;"
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 206
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/engine/EngineResource;

    move-object v3, v5

    .line 207
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 208
    move-object v5, v3

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 214
    :cond_1
    :goto_1
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 210
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1
.end method

.method private loadFromCache(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move v2, p2

    .local v2, "isMemoryCacheable":Z
    move v4, v2

    if-nez v4, :cond_0

    .line 219
    const/4 v4, 0x0

    move-object v0, v4

    .line 227
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/Engine;
    :goto_0
    return-object v0

    .line 222
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/Engine;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/engine/Engine;->getEngineResourceFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v4

    move-object v3, v4

    .line 223
    .local v3, "cached":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 224
    move-object v4, v3

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 225
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    move-object v5, v1

    new-instance v6, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move-object v9, v3

    move-object v10, v0

    invoke-direct {v10}, Lcom/bumptech/glide/load/engine/Engine;->getReferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 227
    :cond_1
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method private static logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V
    .locals 9

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "log":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "startTime":J
    move-object v3, p3

    .local v3, "key":Lcom/bumptech/glide/load/Key;
    const-string/jumbo v4, "Engine"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide v6, v1

    invoke-static {v6, v7}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms, key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 196
    return-void
.end method


# virtual methods
.method public clearDiskCache()V
    .locals 2

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v1

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->clear()V

    .line 299
    return-void
.end method

.method public load(Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TT;>;",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Z",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            ")",
            "Lcom/bumptech/glide/load/engine/Engine$LoadStatus;"
        }
    .end annotation

    .prologue
    .line 145
    move-object/from16 v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/engine/Engine;
    move-object/from16 v2, p1

    .local v2, "signature":Lcom/bumptech/glide/load/Key;
    move/from16 v3, p2

    .local v3, "width":I
    move/from16 v4, p3

    .local v4, "height":I
    move-object/from16 v5, p4

    .local v5, "fetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"
    move-object/from16 v6, p5

    .local v6, "loadProvider":Lcom/bumptech/glide/provider/DataLoadProvider;, "Lcom/bumptech/glide/provider/DataLoadProvider<TT;TZ;>;"
    move-object/from16 v7, p6

    .local v7, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TZ;>;"
    move-object/from16 v8, p7

    .local v8, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    move-object/from16 v9, p8

    .local v9, "priority":Lcom/bumptech/glide/Priority;
    move/from16 v10, p9

    .local v10, "isMemoryCacheable":Z
    move-object/from16 v11, p10

    .local v11, "diskCacheStrategy":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    move-object/from16 v12, p11

    .local v12, "cb":Lcom/bumptech/glide/request/ResourceCallback;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 146
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v23

    move-wide/from16 v13, v23

    .line 148
    .local v13, "startTime":J
    move-object/from16 v23, v5

    invoke-interface/range {v23 .. v23}, Lcom/bumptech/glide/load/data/DataFetcher;->getId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v15, v23

    .line 149
    .local v15, "id":Ljava/lang/String;
    move-object/from16 v23, v1

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/Engine;->keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    move-object/from16 v23, v0

    move-object/from16 v24, v15

    move-object/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v4

    move-object/from16 v28, v6

    invoke-interface/range {v28 .. v28}, Lcom/bumptech/glide/provider/DataLoadProvider;->getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v28

    move-object/from16 v29, v6

    invoke-interface/range {v29 .. v29}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v29

    move-object/from16 v30, v7

    move-object/from16 v31, v6

    invoke-interface/range {v31 .. v31}, Lcom/bumptech/glide/provider/DataLoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v31

    move-object/from16 v32, v8

    move-object/from16 v33, v6

    invoke-interface/range {v33 .. v33}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder()Lcom/bumptech/glide/load/Encoder;

    move-result-object v33

    invoke-virtual/range {v23 .. v33}, Lcom/bumptech/glide/load/engine/EngineKeyFactory;->buildKey(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/load/engine/EngineKey;

    move-result-object v23

    move-object/from16 v16, v23

    .line 153
    .local v16, "key":Lcom/bumptech/glide/load/engine/EngineKey;
    move-object/from16 v23, v1

    move-object/from16 v24, v16

    move/from16 v25, v10

    invoke-direct/range {v23 .. v25}, Lcom/bumptech/glide/load/engine/Engine;->loadFromCache(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v23

    move-object/from16 v17, v23

    .line 154
    .local v17, "cached":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    move-object/from16 v23, v17

    if-eqz v23, :cond_1

    .line 155
    move-object/from16 v23, v12

    move-object/from16 v24, v17

    invoke-interface/range {v23 .. v24}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 156
    const-string/jumbo v23, "Engine"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 157
    const-string/jumbo v23, "Loaded resource from cache"

    move-wide/from16 v24, v13

    move-object/from16 v26, v16

    invoke-static/range {v23 .. v26}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 159
    :cond_0
    const/16 v23, 0x0

    move-object/from16 v1, v23

    .line 191
    .end local v1    # "this":Lcom/bumptech/glide/load/engine/Engine;
    :goto_0
    return-object v1

    .line 162
    .restart local v1    # "this":Lcom/bumptech/glide/load/engine/Engine;
    :cond_1
    move-object/from16 v23, v1

    move-object/from16 v24, v16

    move/from16 v25, v10

    invoke-direct/range {v23 .. v25}, Lcom/bumptech/glide/load/engine/Engine;->loadFromActiveResources(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v23

    move-object/from16 v18, v23

    .line 163
    .local v18, "active":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    move-object/from16 v23, v18

    if-eqz v23, :cond_3

    .line 164
    move-object/from16 v23, v12

    move-object/from16 v24, v18

    invoke-interface/range {v23 .. v24}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 165
    const-string/jumbo v23, "Engine"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 166
    const-string/jumbo v23, "Loaded resource from active resources"

    move-wide/from16 v24, v13

    move-object/from16 v26, v16

    invoke-static/range {v23 .. v26}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 168
    :cond_2
    const/16 v23, 0x0

    move-object/from16 v1, v23

    goto :goto_0

    .line 171
    :cond_3
    move-object/from16 v23, v1

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v24, v16

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/bumptech/glide/load/engine/EngineJob;

    move-object/from16 v19, v23

    .line 172
    .local v19, "current":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object/from16 v23, v19

    if-eqz v23, :cond_5

    .line 173
    move-object/from16 v23, v19

    move-object/from16 v24, v12

    invoke-virtual/range {v23 .. v24}, Lcom/bumptech/glide/load/engine/EngineJob;->addCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 174
    const-string/jumbo v23, "Engine"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 175
    const-string/jumbo v23, "Added to existing load"

    move-wide/from16 v24, v13

    move-object/from16 v26, v16

    invoke-static/range {v23 .. v26}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 177
    :cond_4
    new-instance v23, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-object/from16 v35, v23

    move-object/from16 v23, v35

    move-object/from16 v24, v35

    move-object/from16 v25, v12

    move-object/from16 v26, v19

    invoke-direct/range {v24 .. v26}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V

    move-object/from16 v1, v23

    goto :goto_0

    .line 180
    :cond_5
    move-object/from16 v23, v1

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/Engine;->engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    move-object/from16 v23, v0

    move-object/from16 v24, v16

    move/from16 v25, v10

    invoke-virtual/range {v23 .. v25}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->build(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object v23

    move-object/from16 v20, v23

    .line 181
    .local v20, "engineJob":Lcom/bumptech/glide/load/engine/EngineJob;
    new-instance v23, Lcom/bumptech/glide/load/engine/DecodeJob;

    move-object/from16 v35, v23

    move-object/from16 v23, v35

    move-object/from16 v24, v35

    move-object/from16 v25, v16

    move/from16 v26, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v1

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    move-object/from16 v32, v0

    move-object/from16 v33, v11

    move-object/from16 v34, v9

    invoke-direct/range {v24 .. v34}, Lcom/bumptech/glide/load/engine/DecodeJob;-><init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V

    move-object/from16 v21, v23

    .line 183
    .local v21, "decodeJob":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TT;TZ;TR;>;"
    new-instance v23, Lcom/bumptech/glide/load/engine/EngineRunnable;

    move-object/from16 v35, v23

    move-object/from16 v23, v35

    move-object/from16 v24, v35

    move-object/from16 v25, v20

    move-object/from16 v26, v21

    move-object/from16 v27, v9

    invoke-direct/range {v24 .. v27}, Lcom/bumptech/glide/load/engine/EngineRunnable;-><init>(Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/Priority;)V

    move-object/from16 v22, v23

    .line 184
    .local v22, "runnable":Lcom/bumptech/glide/load/engine/EngineRunnable;
    move-object/from16 v23, v1

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v24, v16

    move-object/from16 v25, v20

    invoke-interface/range {v23 .. v25}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 185
    move-object/from16 v23, v20

    move-object/from16 v24, v12

    invoke-virtual/range {v23 .. v24}, Lcom/bumptech/glide/load/engine/EngineJob;->addCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 186
    move-object/from16 v23, v20

    move-object/from16 v24, v22

    invoke-virtual/range {v23 .. v24}, Lcom/bumptech/glide/load/engine/EngineJob;->start(Lcom/bumptech/glide/load/engine/EngineRunnable;)V

    .line 188
    const-string/jumbo v23, "Engine"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 189
    const-string/jumbo v23, "Started new load"

    move-wide/from16 v24, v13

    move-object/from16 v26, v16

    invoke-static/range {v23 .. v26}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 191
    :cond_6
    new-instance v23, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-object/from16 v35, v23

    move-object/from16 v23, v35

    move-object/from16 v24, v35

    move-object/from16 v25, v12

    move-object/from16 v26, v20

    invoke-direct/range {v24 .. v26}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V

    move-object/from16 v1, v23

    goto/16 :goto_0
.end method

.method public onEngineJobCancelled(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V
    .locals 6

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine;
    move-object v1, p1

    .local v1, "engineJob":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v2, p2

    .local v2, "key":Lcom/bumptech/glide/load/Key;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 274
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/engine/EngineJob;

    move-object v3, v4

    .line 275
    .local v3, "current":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 278
    :cond_0
    return-void
.end method

.method public onEngineJobComplete(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move-object v2, p2

    .local v2, "resource":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 260
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 261
    move-object v3, v2

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/engine/EngineResource;->setResourceListener(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V

    .line 263
    move-object v3, v2

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/EngineResource;->isCacheable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    move-object v4, v1

    new-instance v5, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    invoke-direct {v9}, Lcom/bumptech/glide/load/engine/Engine;->getReferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 268
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 269
    return-void
.end method

.method public onResourceReleased(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .locals 6

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine;
    move-object v1, p1

    .local v1, "cacheKey":Lcom/bumptech/glide/load/Key;
    move-object v2, p2

    .local v2, "resource":Lcom/bumptech/glide/load/engine/EngineResource;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 289
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 290
    move-object v3, v2

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/EngineResource;->isCacheable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v3

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/engine/ResourceRecycler;->recycle(Lcom/bumptech/glide/load/engine/Resource;)V

    goto :goto_0
.end method

.method public onResourceRemoved(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine;
    move-object v1, p1

    .local v1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 283
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/ResourceRecycler;->recycle(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 284
    return-void
.end method

.method public release(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 6

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine;
    move-object v1, p1

    .local v1, "resource":Lcom/bumptech/glide/load/engine/Resource;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 248
    move-object v2, v1

    instance-of v2, v2, Lcom/bumptech/glide/load/engine/EngineResource;

    if-eqz v2, :cond_0

    .line 249
    move-object v2, v1

    check-cast v2, Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineResource;->release()V

    .line 253
    return-void

    .line 251
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Cannot release anything but an EngineResource"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
