.class public Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;
.super Ljava/lang/Object;
.source "HttpUrlGlideUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/stream/StreamModelLoader",
        "<",
        "Lcom/bumptech/glide/load/model/GlideUrl;",
        ">;"
    }
.end annotation


# instance fields
.field private final modelCache:Lcom/bumptech/glide/load/model/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;-><init>(Lcom/bumptech/glide/load/model/ModelCache;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelCache;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;
    move-object v1, p1

    .local v1, "modelCache":Lcom/bumptech/glide/load/model/ModelCache;, "Lcom/bumptech/glide/load/model/ModelCache<Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/load/model/GlideUrl;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    .line 46
    return-void
.end method


# virtual methods
.method public getResourceFetcher(Lcom/bumptech/glide/load/model/GlideUrl;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "II)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;
    move-object v1, p1

    .local v1, "model":Lcom/bumptech/glide/load/model/GlideUrl;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v5, v1

    move-object v4, v5

    .line 52
    .local v4, "url":Lcom/bumptech/glide/load/model/GlideUrl;
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    if-eqz v5, :cond_0

    .line 53
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/bumptech/glide/load/model/ModelCache;->get(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/model/GlideUrl;

    move-object v4, v5

    .line 54
    move-object v5, v4

    if-nez v5, :cond_0

    .line 55
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/bumptech/glide/load/model/ModelCache;->put(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 56
    move-object v5, v1

    move-object v4, v5

    .line 59
    :cond_0
    new-instance v5, Lcom/bumptech/glide/load/data/HttpUrlFetcher;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;-><init>(Lcom/bumptech/glide/load/model/GlideUrl;)V

    move-object v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;
    return-object v0
.end method

.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 8

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Lcom/bumptech/glide/load/model/GlideUrl;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;->getResourceFetcher(Lcom/bumptech/glide/load/model/GlideUrl;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;
    return-object v0
.end method
