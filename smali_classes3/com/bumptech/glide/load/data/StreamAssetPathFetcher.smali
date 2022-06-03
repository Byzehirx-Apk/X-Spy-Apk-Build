.class public Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;
.super Lcom/bumptech/glide/load/data/AssetPathFetcher;
.source "StreamAssetPathFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/data/AssetPathFetcher",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;
    move-object v1, p1

    .local v1, "assetManager":Landroid/content/res/AssetManager;
    move-object v2, p2

    .local v2, "assetPath":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/data/AssetPathFetcher;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected close(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;
    move-object v1, p1

    .local v1, "data":Ljava/io/InputStream;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 24
    return-void
.end method

.method protected bridge synthetic close(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;->close(Ljava/io/InputStream;)V

    return-void
.end method

.method protected loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;
    move-object v1, p1

    .local v1, "assetManager":Landroid/content/res/AssetManager;
    move-object v2, p2

    .local v2, "path":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;
    return-object v0
.end method

.method protected bridge synthetic loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;
    move-object v1, p1

    .local v1, "x0":Landroid/content/res/AssetManager;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;->loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;
    return-object v0
.end method
