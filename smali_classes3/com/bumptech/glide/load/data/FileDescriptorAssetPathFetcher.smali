.class public Lcom/bumptech/glide/load/data/FileDescriptorAssetPathFetcher;
.super Lcom/bumptech/glide/load/data/AssetPathFetcher;
.source "FileDescriptorAssetPathFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/data/AssetPathFetcher",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/FileDescriptorAssetPathFetcher;
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
.method protected close(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/FileDescriptorAssetPathFetcher;
    move-object v1, p1

    .local v1, "data":Landroid/os/ParcelFileDescriptor;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

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

    .local v0, "this":Lcom/bumptech/glide/load/data/FileDescriptorAssetPathFetcher;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/data/FileDescriptorAssetPathFetcher;->close(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method protected loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/FileDescriptorAssetPathFetcher;
    move-object v1, p1

    .local v1, "assetManager":Landroid/content/res/AssetManager;
    move-object v2, p2

    .local v2, "path":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/data/FileDescriptorAssetPathFetcher;
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

    .local v0, "this":Lcom/bumptech/glide/load/data/FileDescriptorAssetPathFetcher;
    move-object v1, p1

    .local v1, "x0":Landroid/content/res/AssetManager;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/data/FileDescriptorAssetPathFetcher;->loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/data/FileDescriptorAssetPathFetcher;
    return-object v0
.end method
