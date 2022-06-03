.class Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThumbnailStreamOpenerFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
    .locals 9

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v4, v1

    invoke-static {v4}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->access$000(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    const/16 v5, 0x200

    if-gt v4, v5, :cond_0

    move v4, v3

    const/16 v5, 0x180

    if-le v4, v5, :cond_1

    .line 254
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 258
    .end local v0    # "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;
    :goto_0
    return-object v0

    .line 255
    .restart local v0    # "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;
    :cond_1
    move-object v4, v1

    invoke-static {v4}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->access$100(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 256
    new-instance v4, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery;-><init>()V

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;-><init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V

    move-object v0, v4

    goto :goto_0

    .line 258
    :cond_2
    new-instance v4, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ImageThumbnailQuery;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ImageThumbnailQuery;-><init>()V

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;-><init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V

    move-object v0, v4

    goto :goto_0
.end method
