.class Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileService"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exists(Ljava/io/File;)Z
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
    move-object v1, p1

    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
    return-object v0
.end method

.method public length(Ljava/io/File;)J
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
    return-wide v0
.end method
