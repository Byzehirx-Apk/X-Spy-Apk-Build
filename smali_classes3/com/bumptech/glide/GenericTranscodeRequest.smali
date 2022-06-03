.class public Lcom/bumptech/glide/GenericTranscodeRequest;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "GenericTranscodeRequest.java"

# interfaces
.implements Lcom/bumptech/glide/DownloadOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GenericRequestBuilder",
        "<TModelType;TDataType;TResourceType;TResourceType;>;",
        "Lcom/bumptech/glide/DownloadOptions;"
    }
.end annotation


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field private final modelLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;TDataType;>;"
        }
    .end annotation
.end field

.field private final optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

.field private final resourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TResourceType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/Glide;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Glide;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;TDataType;>;",
            "Ljava/lang/Class",
            "<TDataType;>;",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Lcom/bumptech/glide/manager/RequestTracker;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            "Lcom/bumptech/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericTranscodeRequest;, "Lcom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "glide":Lcom/bumptech/glide/Glide;
    move-object/from16 v3, p3

    .local v3, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModelType;>;"
    move-object/from16 v4, p4

    .local v4, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TModelType;TDataType;>;"
    move-object/from16 v5, p5

    .local v5, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TDataType;>;"
    move-object/from16 v6, p6

    .local v6, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TResourceType;>;"
    move-object/from16 v7, p7

    .local v7, "requestTracker":Lcom/bumptech/glide/manager/RequestTracker;
    move-object/from16 v8, p8

    .local v8, "lifecycle":Lcom/bumptech/glide/manager/Lifecycle;
    move-object/from16 v9, p9

    .local v9, "optionsApplier":Lcom/bumptech/glide/RequestManager$OptionsApplier;
    move-object v10, v0

    move-object v11, v1

    move-object v12, v3

    move-object v13, v2

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    invoke-static {}, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;->get()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v17

    invoke-static/range {v13 .. v17}, Lcom/bumptech/glide/GenericTranscodeRequest;->build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/LoadProvider;

    move-result-object v13

    move-object v14, v6

    move-object v15, v2

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-direct/range {v10 .. v17}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V

    .line 62
    move-object v10, v0

    move-object v11, v4

    iput-object v11, v10, Lcom/bumptech/glide/GenericTranscodeRequest;->modelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 63
    move-object v10, v0

    move-object v11, v5

    iput-object v11, v10, Lcom/bumptech/glide/GenericTranscodeRequest;->dataClass:Ljava/lang/Class;

    .line 64
    move-object v10, v0

    move-object v11, v6

    iput-object v11, v10, Lcom/bumptech/glide/GenericTranscodeRequest;->resourceClass:Ljava/lang/Class;

    .line 65
    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lcom/bumptech/glide/GenericTranscodeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    .line 66
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;***>;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;TDataType;>;",
            "Ljava/lang/Class",
            "<TDataType;>;",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Lcom/bumptech/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericTranscodeRequest;, "Lcom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
    move-object v1, p1

    .local v1, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TResourceType;>;"
    move-object v2, p2

    .local v2, "other":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;***>;"
    move-object/from16 v3, p3

    .local v3, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TModelType;TDataType;>;"
    move-object/from16 v4, p4

    .local v4, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TDataType;>;"
    move-object/from16 v5, p5

    .local v5, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TResourceType;>;"
    move-object/from16 v6, p6

    .local v6, "optionsApplier":Lcom/bumptech/glide/RequestManager$OptionsApplier;
    move-object v7, v0

    move-object v8, v2

    iget-object v8, v8, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-static {}, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;->get()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v12

    invoke-static {v8, v9, v10, v11, v12}, Lcom/bumptech/glide/GenericTranscodeRequest;->build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/LoadProvider;

    move-result-object v8

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 51
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/bumptech/glide/GenericTranscodeRequest;->modelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 52
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/bumptech/glide/GenericTranscodeRequest;->dataClass:Ljava/lang/Class;

    .line 53
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/bumptech/glide/GenericTranscodeRequest;->resourceClass:Ljava/lang/Class;

    .line 54
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/bumptech/glide/GenericTranscodeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    .line 55
    return-void
.end method

.method private static build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/LoadProvider;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;)",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "glide":Lcom/bumptech/glide/Glide;
    move-object v1, p1

    .local v1, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    move-object v2, p2

    .local v2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v3, p3

    .local v3, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    move-object/from16 v4, p4

    .local v4, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/bumptech/glide/Glide;->buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v6

    move-object v5, v6

    .line 42
    .local v5, "dataLoadProvider":Lcom/bumptech/glide/provider/DataLoadProvider;, "Lcom/bumptech/glide/provider/DataLoadProvider<TT;TZ;>;"
    new-instance v6, Lcom/bumptech/glide/provider/FixedLoadProvider;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move-object v9, v4

    move-object v10, v5

    invoke-direct {v7, v8, v9, v10}, Lcom/bumptech/glide/provider/FixedLoadProvider;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    move-object v0, v6

    .end local v0    # "glide":Lcom/bumptech/glide/Glide;
    return-object v0
.end method

.method private getDownloadOnlyRequest()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericTranscodeRequest;, "Lcom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
    invoke-static {}, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;->get()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v4

    move-object v1, v4

    .line 101
    .local v1, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Ljava/io/File;Ljava/io/File;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/GenericTranscodeRequest;->glide:Lcom/bumptech/glide/Glide;

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/GenericTranscodeRequest;->dataClass:Ljava/lang/Class;

    const-class v6, Ljava/io/File;

    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/Glide;->buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v4

    move-object v2, v4

    .line 102
    .local v2, "dataLoadProvider":Lcom/bumptech/glide/provider/DataLoadProvider;, "Lcom/bumptech/glide/provider/DataLoadProvider<TDataType;Ljava/io/File;>;"
    new-instance v4, Lcom/bumptech/glide/provider/FixedLoadProvider;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/GenericTranscodeRequest;->modelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/bumptech/glide/provider/FixedLoadProvider;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    move-object v3, v4

    .line 104
    .local v3, "fixedLoadProvider":Lcom/bumptech/glide/provider/FixedLoadProvider;, "Lcom/bumptech/glide/provider/FixedLoadProvider<TModelType;TDataType;Ljava/io/File;Ljava/io/File;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/GenericTranscodeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v5, Lcom/bumptech/glide/GenericRequestBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    const-class v8, Ljava/io/File;

    move-object v9, v0

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/GenericRequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/GenericTranscodeRequest;, "Lcom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
    return-object v0
.end method


# virtual methods
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
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericTranscodeRequest;, "Lcom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/GenericTranscodeRequest;->getDownloadOnlyRequest()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/GenericRequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/GenericTranscodeRequest;, "Lcom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
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
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericTranscodeRequest;, "Lcom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
    move-object v1, p1

    .local v1, "target":Lcom/bumptech/glide/request/target/Target;, "TY;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/GenericTranscodeRequest;->getDownloadOnlyRequest()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GenericTranscodeRequest;, "Lcom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
    return-object v0
.end method

.method public transcode(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericTranscodeRequest;, "Lcom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
    move-object v1, p1

    .local v1, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TResourceType;TTranscodeType;>;"
    move-object v2, p2

    .local v2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/GenericTranscodeRequest;->glide:Lcom/bumptech/glide/Glide;

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/GenericTranscodeRequest;->modelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/GenericTranscodeRequest;->dataClass:Ljava/lang/Class;

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/GenericTranscodeRequest;->resourceClass:Ljava/lang/Class;

    move-object v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Lcom/bumptech/glide/GenericTranscodeRequest;->build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/LoadProvider;

    move-result-object v4

    move-object v3, v4

    .line 81
    .local v3, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/GenericTranscodeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v5, Lcom/bumptech/glide/GenericRequestBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    move-object v8, v2

    move-object v9, v0

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/GenericTranscodeRequest;, "Lcom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
    return-object v0
.end method
