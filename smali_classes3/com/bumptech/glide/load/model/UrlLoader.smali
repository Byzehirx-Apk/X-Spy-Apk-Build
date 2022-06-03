.class public Lcom/bumptech/glide/load/model/UrlLoader;
.super Ljava/lang/Object;
.source "UrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<",
        "Ljava/net/URL;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final glideUrlLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/UrlLoader;, "Lcom/bumptech/glide/load/model/UrlLoader<TT;>;"
    move-object v1, p1

    .local v1, "glideUrlLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 18
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/model/UrlLoader;->glideUrlLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 8

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/UrlLoader;, "Lcom/bumptech/glide/load/model/UrlLoader<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/net/URL;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/model/UrlLoader;->getResourceFetcher(Ljava/net/URL;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/model/UrlLoader;, "Lcom/bumptech/glide/load/model/UrlLoader<TT;>;"
    return-object v0
.end method

.method public getResourceFetcher(Ljava/net/URL;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "II)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/UrlLoader;, "Lcom/bumptech/glide/load/model/UrlLoader<TT;>;"
    move-object v1, p1

    .local v1, "model":Ljava/net/URL;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/model/UrlLoader;->glideUrlLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    new-instance v5, Lcom/bumptech/glide/load/model/GlideUrl;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/net/URL;)V

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/model/UrlLoader;, "Lcom/bumptech/glide/load/model/UrlLoader<TT;>;"
    return-object v0
.end method
