.class public Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadStatus"
.end annotation


# instance fields
.field private final cb:Lcom/bumptech/glide/request/ResourceCallback;

.field private final engineJob:Lcom/bumptech/glide/load/engine/EngineJob;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    move-object v1, p1

    .local v1, "cb":Lcom/bumptech/glide/request/ResourceCallback;
    move-object v2, p2

    .local v2, "engineJob":Lcom/bumptech/glide/load/engine/EngineJob;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    .line 53
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->engineJob:Lcom/bumptech/glide/load/engine/EngineJob;

    .line 54
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->engineJob:Lcom/bumptech/glide/load/engine/EngineJob;

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/EngineJob;->removeCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 58
    return-void
.end method
