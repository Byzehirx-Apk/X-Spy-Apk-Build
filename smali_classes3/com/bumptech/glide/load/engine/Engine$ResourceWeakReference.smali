.class Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceWeakReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/bumptech/glide/load/engine/EngineResource",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final key:Lcom/bumptech/glide/load/Key;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move-object v2, p2

    .local v2, "r":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    move-object v3, p3

    .local v3, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-Lcom/bumptech/glide/load/engine/EngineResource<*>;>;"
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 340
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    .line 341
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;)Lcom/bumptech/glide/load/Key;
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;
    return-object v0
.end method
