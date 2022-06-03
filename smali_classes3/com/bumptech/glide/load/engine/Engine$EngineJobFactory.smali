.class Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineJobFactory"
.end annotation


# instance fields
.field private final diskCacheService:Ljava/util/concurrent/ExecutorService;

.field private final listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

.field private final sourceService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/EngineJobListener;)V
    .locals 6

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
    move-object v1, p1

    .local v1, "diskCacheService":Ljava/util/concurrent/ExecutorService;
    move-object v2, p2

    .local v2, "sourceService":Ljava/util/concurrent/ExecutorService;
    move-object v3, p3

    .local v3, "listener":Lcom/bumptech/glide/load/engine/EngineJobListener;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 374
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    .line 375
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceService:Ljava/util/concurrent/ExecutorService;

    .line 376
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    .line 377
    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineJob;
    .locals 11

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move v2, p2

    .local v2, "isMemoryCacheable":Z
    new-instance v3, Lcom/bumptech/glide/load/engine/EngineJob;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceService:Ljava/util/concurrent/ExecutorService;

    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    invoke-direct/range {v4 .. v9}, Lcom/bumptech/glide/load/engine/EngineJob;-><init>(Lcom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/EngineJobListener;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
    return-object v0
.end method
