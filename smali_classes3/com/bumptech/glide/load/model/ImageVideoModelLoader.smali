.class public Lcom/bumptech/glide/load/model/ImageVideoModelLoader;
.super Ljava/lang/Object;
.source "ImageVideoModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<TA;",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IVML"


# instance fields
.field private final fileDescriptorLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final streamLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ImageVideoModelLoader;, "Lcom/bumptech/glide/load/model/ImageVideoModelLoader<TA;>;"
    move-object v1, p1

    .local v1, "streamLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;Ljava/io/InputStream;>;"
    move-object v2, p2

    .local v2, "fileDescriptorLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;Landroid/os/ParcelFileDescriptor;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v3, v1

    if-nez v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_0

    .line 29
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "At least one of streamLoader and fileDescriptorLoader must be non null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 31
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->streamLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 32
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->fileDescriptorLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 33
    return-void
.end method


# virtual methods
.method public getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ImageVideoModelLoader;, "Lcom/bumptech/glide/load/model/ImageVideoModelLoader<TA;>;"
    move-object v1, p1

    .local v1, "model":Ljava/lang/Object;, "TA;"
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    const/4 v6, 0x0

    move-object v4, v6

    .line 38
    .local v4, "streamFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->streamLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    if-eqz v6, :cond_0

    .line 39
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->streamLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-interface {v6, v7, v8, v9}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v6

    move-object v4, v6

    .line 41
    :cond_0
    const/4 v6, 0x0

    move-object v5, v6

    .line 42
    .local v5, "fileDescriptorFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<Landroid/os/ParcelFileDescriptor;>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->fileDescriptorLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    if-eqz v6, :cond_1

    .line 43
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->fileDescriptorLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-interface {v6, v7, v8, v9}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v6

    move-object v5, v6

    .line 46
    :cond_1
    move-object v6, v4

    if-nez v6, :cond_2

    move-object v6, v5

    if-eqz v6, :cond_3

    .line 47
    :cond_2
    new-instance v6, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;-><init>(Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/data/DataFetcher;)V

    move-object v0, v6

    .line 49
    .end local v0    # "this":Lcom/bumptech/glide/load/model/ImageVideoModelLoader;, "Lcom/bumptech/glide/load/model/ImageVideoModelLoader<TA;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/model/ImageVideoModelLoader;, "Lcom/bumptech/glide/load/model/ImageVideoModelLoader<TA;>;"
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method
