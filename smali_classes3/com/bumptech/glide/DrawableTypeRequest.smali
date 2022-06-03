.class public Lcom/bumptech/glide/DrawableTypeRequest;
.super Lcom/bumptech/glide/DrawableRequestBuilder;
.source "DrawableTypeRequest.java"

# interfaces
.implements Lcom/bumptech/glide/DownloadOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/DrawableRequestBuilder",
        "<TModelType;>;",
        "Lcom/bumptech/glide/DownloadOptions;"
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
.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/manager/RequestTracker;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            "Lcom/bumptech/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    move-object/from16 v1, p1

    .local v1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModelType;>;"
    move-object/from16 v2, p2

    .local v2, "streamModelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Ljava/io/InputStream;>;"
    move-object/from16 v3, p3

    .local v3, "fileDescriptorModelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Landroid/os/ParcelFileDescriptor;>;"
    move-object/from16 v4, p4

    .local v4, "context":Landroid/content/Context;
    move-object/from16 v5, p5

    .local v5, "glide":Lcom/bumptech/glide/Glide;
    move-object/from16 v6, p6

    .local v6, "requestTracker":Lcom/bumptech/glide/manager/RequestTracker;
    move-object/from16 v7, p7

    .local v7, "lifecycle":Lcom/bumptech/glide/manager/Lifecycle;
    move-object/from16 v8, p8

    .local v8, "optionsApplier":Lcom/bumptech/glide/RequestManager$OptionsApplier;
    move-object v9, v0

    move-object v10, v4

    move-object v11, v1

    move-object v12, v5

    move-object v13, v2

    move-object v14, v3

    const-class v15, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    const-class v16, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/bumptech/glide/DrawableTypeRequest;->buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;

    move-result-object v12

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    invoke-direct/range {v9 .. v15}, Lcom/bumptech/glide/DrawableRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V

    .line 61
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Lcom/bumptech/glide/DrawableTypeRequest;->streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 62
    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Lcom/bumptech/glide/DrawableTypeRequest;->fileDescriptorModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 63
    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    .line 64
    return-void
.end method

.method private static buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "Z:",
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
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;)",
            "Lcom/bumptech/glide/provider/FixedLoadProvider",
            "<TA;",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "glide":Lcom/bumptech/glide/Glide;
    move-object v1, p1

    .local v1, "streamModelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;Ljava/io/InputStream;>;"
    move-object/from16 v2, p2

    .local v2, "fileDescriptorModelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;Landroid/os/ParcelFileDescriptor;>;"
    move-object/from16 v3, p3

    .local v3, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    move-object/from16 v4, p4

    .local v4, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    move-object/from16 v5, p5

    .local v5, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    move-object v8, v1

    if-nez v8, :cond_0

    move-object v8, v2

    if-nez v8, :cond_0

    .line 41
    const/4 v8, 0x0

    move-object v0, v8

    .line 51
    .end local v0    # "glide":Lcom/bumptech/glide/Glide;
    :goto_0
    return-object v0

    .line 44
    .restart local v0    # "glide":Lcom/bumptech/glide/Glide;
    :cond_0
    move-object v8, v5

    if-nez v8, :cond_1

    .line 45
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lcom/bumptech/glide/Glide;->buildTranscoder(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v8

    move-object v5, v8

    .line 47
    :cond_1
    move-object v8, v0

    const-class v9, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Lcom/bumptech/glide/Glide;->buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v8

    move-object v6, v8

    .line 49
    .local v6, "dataLoadProvider":Lcom/bumptech/glide/provider/DataLoadProvider;, "Lcom/bumptech/glide/provider/DataLoadProvider<Lcom/bumptech/glide/load/model/ImageVideoWrapper;TZ;>;"
    new-instance v8, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;)V

    move-object v7, v8

    .line 51
    .local v7, "modelLoader":Lcom/bumptech/glide/load/model/ImageVideoModelLoader;, "Lcom/bumptech/glide/load/model/ImageVideoModelLoader<TA;>;"
    new-instance v8, Lcom/bumptech/glide/provider/FixedLoadProvider;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v7

    move-object v11, v5

    move-object v12, v6

    invoke-direct {v9, v10, v11, v12}, Lcom/bumptech/glide/provider/FixedLoadProvider;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    move-object v0, v8

    goto :goto_0
.end method

.method private getDownloadOnlyRequest()Lcom/bumptech/glide/GenericTranscodeRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GenericTranscodeRequest",
            "<TModelType;",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v2, Lcom/bumptech/glide/GenericTranscodeRequest;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const-class v4, Ljava/io/File;

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/DrawableTypeRequest;->streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    const-class v7, Ljava/io/InputStream;

    const-class v8, Ljava/io/File;

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    invoke-direct/range {v3 .. v9}, Lcom/bumptech/glide/GenericTranscodeRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/GenericTranscodeRequest;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    return-object v0
.end method


# virtual methods
.method public asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapTypeRequest",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v2, Lcom/bumptech/glide/BitmapTypeRequest;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/DrawableTypeRequest;->streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/DrawableTypeRequest;->fileDescriptorModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/bumptech/glide/BitmapTypeRequest;-><init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/BitmapTypeRequest;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    return-object v0
.end method

.method public asGif()Lcom/bumptech/glide/GifTypeRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifTypeRequest",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v2, Lcom/bumptech/glide/GifTypeRequest;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/DrawableTypeRequest;->streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    invoke-direct {v3, v4, v5, v6}, Lcom/bumptech/glide/GifTypeRequest;-><init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/GifTypeRequest;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    return-object v0
.end method

.method public downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/FutureTarget",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->getDownloadOnlyRequest()Lcom/bumptech/glide/GenericTranscodeRequest;

    move-result-object v3

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/GenericTranscodeRequest;->downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    return-object v0
.end method

.method public downloadOnly(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    move-object v1, p1

    .local v1, "target":Lcom/bumptech/glide/request/target/Target;, "TY;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->getDownloadOnlyRequest()Lcom/bumptech/glide/GenericTranscodeRequest;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GenericTranscodeRequest;->downloadOnly(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableTypeRequest;, "Lcom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    return-object v0
.end method
