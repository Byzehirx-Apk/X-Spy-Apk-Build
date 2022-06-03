.class public Lcom/bumptech/glide/BitmapTypeRequest;
.super Lcom/bumptech/glide/BitmapRequestBuilder;
.source "BitmapTypeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/BitmapRequestBuilder",
        "<TModelType;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final fileDescriptorModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final glide:Lcom/bumptech/glide/Glide;

.field private final optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

.field private final streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;***>;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/bumptech/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapTypeRequest;, "Lcom/bumptech/glide/BitmapTypeRequest<TModelType;>;"
    move-object v1, p1

    .local v1, "other":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;***>;"
    move-object v2, p2

    .local v2, "streamModelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Ljava/io/InputStream;>;"
    move-object v3, p3

    .local v3, "fileDescriptorModelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Landroid/os/ParcelFileDescriptor;>;"
    move-object v4, p4

    .local v4, "optionsApplier":Lcom/bumptech/glide/RequestManager$OptionsApplier;
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    move-object v7, v2

    move-object v8, v3

    const-class v9, Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/bumptech/glide/BitmapTypeRequest;->buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;

    move-result-object v6

    const-class v7, Landroid/graphics/Bitmap;

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Lcom/bumptech/glide/BitmapRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 54
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/bumptech/glide/BitmapTypeRequest;->streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 55
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/bumptech/glide/BitmapTypeRequest;->fileDescriptorModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 56
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    iput-object v6, v5, Lcom/bumptech/glide/BitmapTypeRequest;->glide:Lcom/bumptech/glide/Glide;

    .line 57
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/bumptech/glide/BitmapTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    .line 58
    return-void
.end method

.method private static buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Landroid/graphics/Bitmap;",
            "TR;>;)",
            "Lcom/bumptech/glide/provider/FixedLoadProvider",
            "<TA;",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "glide":Lcom/bumptech/glide/Glide;
    move-object v1, p1

    .local v1, "streamModelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;Ljava/io/InputStream;>;"
    move-object v2, p2

    .local v2, "fileDescriptorModelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;Landroid/os/ParcelFileDescriptor;>;"
    move-object/from16 v3, p3

    .local v3, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    move-object/from16 v4, p4

    .local v4, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Landroid/graphics/Bitmap;TR;>;"
    move-object v7, v1

    if-nez v7, :cond_0

    move-object v7, v2

    if-nez v7, :cond_0

    .line 34
    const/4 v7, 0x0

    move-object v0, v7

    .line 45
    .end local v0    # "glide":Lcom/bumptech/glide/Glide;
    :goto_0
    return-object v0

    .line 37
    .restart local v0    # "glide":Lcom/bumptech/glide/Glide;
    :cond_0
    move-object v7, v4

    if-nez v7, :cond_1

    .line 38
    move-object v7, v0

    const-class v8, Landroid/graphics/Bitmap;

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lcom/bumptech/glide/Glide;->buildTranscoder(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v7

    move-object v4, v7

    .line 40
    :cond_1
    move-object v7, v0

    const-class v8, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    const-class v9, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8, v9}, Lcom/bumptech/glide/Glide;->buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v7

    move-object v5, v7

    .line 42
    .local v5, "loadProvider":Lcom/bumptech/glide/provider/DataLoadProvider;, "Lcom/bumptech/glide/provider/DataLoadProvider<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;"
    new-instance v7, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;)V

    move-object v6, v7

    .line 45
    .local v6, "modelLoader":Lcom/bumptech/glide/load/model/ImageVideoModelLoader;, "Lcom/bumptech/glide/load/model/ImageVideoModelLoader<TA;>;"
    new-instance v7, Lcom/bumptech/glide/provider/FixedLoadProvider;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v6

    move-object v10, v4

    move-object v11, v5

    invoke-direct {v8, v9, v10, v11}, Lcom/bumptech/glide/provider/FixedLoadProvider;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    move-object v0, v7

    goto :goto_0
.end method


# virtual methods
.method public toBytes()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;[B>;"
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapTypeRequest;, "Lcom/bumptech/glide/BitmapTypeRequest<TModelType;>;"
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>()V

    const-class v3, [B

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/BitmapTypeRequest;->transcode(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/BitmapTypeRequest;, "Lcom/bumptech/glide/BitmapTypeRequest<TModelType;>;"
    return-object v0
.end method

.method public toBytes(Landroid/graphics/Bitmap$CompressFormat;I)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            "I)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;[B>;"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapTypeRequest;, "Lcom/bumptech/glide/BitmapTypeRequest<TModelType;>;"
    move-object v1, p1

    .local v1, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    move v2, p2

    .local v2, "quality":I
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    const-class v5, [B

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/BitmapTypeRequest;->transcode(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/BitmapTypeRequest;, "Lcom/bumptech/glide/BitmapTypeRequest<TModelType;>;"
    return-object v0
.end method

.method public transcode(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Landroid/graphics/Bitmap;",
            "TR;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TR;>;"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapTypeRequest;, "Lcom/bumptech/glide/BitmapTypeRequest<TModelType;>;"
    move-object v1, p1

    .local v1, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Landroid/graphics/Bitmap;TR;>;"
    move-object v2, p2

    .local v2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/BitmapTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v4, Lcom/bumptech/glide/BitmapRequestBuilder;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/BitmapTypeRequest;->glide:Lcom/bumptech/glide/Glide;

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/BitmapTypeRequest;->streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/BitmapTypeRequest;->fileDescriptorModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v9, v2

    move-object v10, v1

    invoke-static {v6, v7, v8, v9, v10}, Lcom/bumptech/glide/BitmapTypeRequest;->buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;

    move-result-object v6

    move-object v7, v2

    move-object v8, v0

    invoke-direct {v5, v6, v7, v8}, Lcom/bumptech/glide/BitmapRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/BitmapRequestBuilder;

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/BitmapTypeRequest;, "Lcom/bumptech/glide/BitmapTypeRequest<TModelType;>;"
    return-object v0
.end method
