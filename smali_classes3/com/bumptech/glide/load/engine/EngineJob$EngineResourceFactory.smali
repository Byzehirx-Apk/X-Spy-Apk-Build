.class Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
.super Ljava/lang/Object;
.source "EngineJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineResourceFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/engine/Resource;Z)Lcom/bumptech/glide/load/engine/EngineResource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TR;>;Z)",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
    move-object v1, p1

    .local v1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TR;>;"
    move v2, p2

    .local v2, "isMemoryCacheable":Z
    new-instance v3, Lcom/bumptech/glide/load/engine/EngineResource;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;Z)V

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
    return-object v0
.end method
