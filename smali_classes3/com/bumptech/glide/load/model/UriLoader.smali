.class public abstract Lcom/bumptech/glide/load/model/UriLoader;
.super Ljava/lang/Object;
.source "UriLoader.java"

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
        "Landroid/net/Uri;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final urlLoader:Lcom/bumptech/glide/load/model/ModelLoader;
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
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/UriLoader;, "Lcom/bumptech/glide/load/model/UriLoader<TT;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "urlLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/model/UriLoader;->context:Landroid/content/Context;

    .line 22
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/model/UriLoader;->urlLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 23
    return-void
.end method

.method private static isLocalUri(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "file"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "content"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.resource"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "scheme":Ljava/lang/String;
    return v0

    .restart local v0    # "scheme":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract getAssetPathFetcher(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract getLocalUriFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TT;>;"
        }
    .end annotation
.end method

.method public final getResourceFetcher(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/UriLoader;, "Lcom/bumptech/glide/load/model/UriLoader<TT;>;"
    move-object v1, p1

    .local v1, "model":Landroid/net/Uri;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v7, v1

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 29
    .local v4, "scheme":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v5, v7

    .line 30
    .local v5, "result":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"
    move-object v7, v4

    invoke-static {v7}, Lcom/bumptech/glide/load/model/UriLoader;->isLocalUri(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 31
    move-object v7, v1

    invoke-static {v7}, Lcom/bumptech/glide/load/model/AssetUriParser;->isAssetUri(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 32
    move-object v7, v1

    invoke-static {v7}, Lcom/bumptech/glide/load/model/AssetUriParser;->toAssetPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 33
    .local v6, "path":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/model/UriLoader;->context:Landroid/content/Context;

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/bumptech/glide/load/model/UriLoader;->getAssetPathFetcher(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v7

    move-object v5, v7

    .line 41
    .end local v6    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Lcom/bumptech/glide/load/model/UriLoader;, "Lcom/bumptech/glide/load/model/UriLoader<TT;>;"
    return-object v0

    .line 35
    .restart local v0    # "this":Lcom/bumptech/glide/load/model/UriLoader;, "Lcom/bumptech/glide/load/model/UriLoader<TT;>;"
    :cond_1
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/model/UriLoader;->context:Landroid/content/Context;

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lcom/bumptech/glide/load/model/UriLoader;->getLocalUriFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v7

    move-object v5, v7

    goto :goto_0

    .line 37
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/model/UriLoader;->urlLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    if-eqz v7, :cond_0

    const-string/jumbo v7, "http"

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "https"

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 38
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/model/UriLoader;->urlLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    new-instance v8, Lcom/bumptech/glide/load/model/GlideUrl;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v1

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    move v9, v2

    move v10, v3

    invoke-interface {v7, v8, v9, v10}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v7

    move-object v5, v7

    goto :goto_0
.end method

.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 8

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/UriLoader;, "Lcom/bumptech/glide/load/model/UriLoader<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Landroid/net/Uri;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/model/UriLoader;->getResourceFetcher(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/model/UriLoader;, "Lcom/bumptech/glide/load/model/UriLoader<TT;>;"
    return-object v0
.end method
