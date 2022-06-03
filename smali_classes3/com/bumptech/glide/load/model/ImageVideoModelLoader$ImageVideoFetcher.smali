.class Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
.super Ljava/lang/Object;
.source "ImageVideoModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/ImageVideoModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageVideoFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final streamFetcher:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/data/DataFetcher;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
    move-object v1, p1

    .local v1, "streamFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"
    move-object v2, p2

    .local v2, "fileDescriptorFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<Landroid/os/ParcelFileDescriptor;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 59
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 60
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 61
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v1, :cond_0

    .line 120
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    .line 122
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v1, :cond_1

    .line 123
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    .line 125
    :cond_1
    return-void
.end method

.method public cleanup()V
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v1, :cond_0

    .line 100
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 102
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v1, :cond_1

    .line 103
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 105
    :cond_1
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v1, :cond_0

    .line 111
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 113
    .end local v0    # "this":Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
    move-object v1, p1

    .local v1, "priority":Lcom/bumptech/glide/Priority;
    const/4 v5, 0x0

    move-object v2, v5

    .line 68
    .local v2, "is":Ljava/io/InputStream;
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v5, :cond_0

    .line 70
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    move-object v6, v1

    invoke-interface {v5, v6}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 78
    .line 80
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    .line 81
    .local v3, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v5, :cond_1

    .line 83
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    move-object v6, v1

    invoke-interface {v5, v6}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v5

    .line 91
    .line 93
    :cond_1
    new-instance v5, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
    return-object v0

    .line 71
    .end local v3    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "this":Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 72
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "IVML"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    const-string/jumbo v5, "IVML"

    const-string/jumbo v6, "Exception fetching input stream, trying ParcelFileDescriptor"

    move-object v7, v3

    invoke-static {v5, v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 75
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    if-nez v5, :cond_0

    .line 76
    move-object v5, v3

    throw v5

    .line 84
    .local v3, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 85
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "IVML"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 86
    const-string/jumbo v5, "IVML"

    const-string/jumbo v6, "Exception fetching ParcelFileDescriptor"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 88
    :cond_3
    move-object v5, v2

    if-nez v5, :cond_1

    .line 89
    move-object v5, v4

    throw v5
.end method

.method public bridge synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/Priority;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->loadData(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
    return-object v0
.end method
