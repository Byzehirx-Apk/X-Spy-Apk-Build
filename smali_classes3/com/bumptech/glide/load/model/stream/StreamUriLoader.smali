.class public Lcom/bumptech/glide/load/model/stream/StreamUriLoader;
.super Lcom/bumptech/glide/load/model/UriLoader;
.source "StreamUriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/StreamUriLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/UriLoader",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/bumptech/glide/load/model/stream/StreamModelLoader",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/StreamUriLoader;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const-class v4, Lcom/bumptech/glide/load/model/GlideUrl;

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/bumptech/glide/Glide;->buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/model/stream/StreamUriLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/StreamUriLoader;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "urlLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/model/UriLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected getAssetPathFetcher(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/StreamUriLoader;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "assetPath":Ljava/lang/String;
    new-instance v3, Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/model/stream/StreamUriLoader;
    return-object v0
.end method

.method protected getLocalUriFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/StreamUriLoader;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/model/stream/StreamUriLoader;
    return-object v0
.end method
