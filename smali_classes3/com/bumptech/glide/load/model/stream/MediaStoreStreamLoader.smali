.class public Lcom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;
.super Ljava/lang/Object;
.source "MediaStoreStreamLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/stream/StreamModelLoader",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final uriLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
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
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "uriLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;Ljava/io/InputStream;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;->context:Landroid/content/Context;

    .line 26
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;->uriLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 27
    return-void
.end method


# virtual methods
.method public getResourceFetcher(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;
    move-object v1, p1

    .local v1, "model":Landroid/net/Uri;
    move v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    new-instance v4, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;->context:Landroid/content/Context;

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;->uriLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v9, v1

    move v10, v2

    move v11, v3

    invoke-interface {v8, v9, v10, v11}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v8

    move v9, v2

    move v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/DataFetcher;II)V

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;
    return-object v0
.end method

.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 8

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;
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

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;->getResourceFetcher(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;
    return-object v0
.end method
