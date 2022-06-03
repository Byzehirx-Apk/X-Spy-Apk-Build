.class public Lcom/bumptech/glide/GifTypeRequest;
.super Lcom/bumptech/glide/GifRequestBuilder;
.source "GifTypeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GifRequestBuilder",
        "<TModelType;>;"
    }
.end annotation


# instance fields
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
.method constructor <init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;***>;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifTypeRequest;, "Lcom/bumptech/glide/GifTypeRequest<TModelType;>;"
    move-object v1, p1

    .local v1, "other":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;***>;"
    move-object v2, p2

    .local v2, "streamModelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Ljava/io/InputStream;>;"
    move-object v3, p3

    .local v3, "optionsApplier":Lcom/bumptech/glide/RequestManager$OptionsApplier;
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    move-object v6, v2

    const-class v7, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/bumptech/glide/GifTypeRequest;->buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;

    move-result-object v5

    const-class v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/bumptech/glide/GifRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 42
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/bumptech/glide/GifTypeRequest;->streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 43
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/bumptech/glide/GifTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    .line 46
    move-object v4, v0

    invoke-virtual {v4}, Lcom/bumptech/glide/GifTypeRequest;->crossFade()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v4

    .line 47
    return-void
.end method

.method private static buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;
    .locals 11
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
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "TR;>;)",
            "Lcom/bumptech/glide/provider/FixedLoadProvider",
            "<TA;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "glide":Lcom/bumptech/glide/Glide;
    move-object v1, p1

    .local v1, "streamModelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;Ljava/io/InputStream;>;"
    move-object v2, p2

    .local v2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    move-object v3, p3

    .local v3, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Lcom/bumptech/glide/load/resource/gif/GifDrawable;TR;>;"
    move-object v5, v1

    if-nez v5, :cond_0

    .line 28
    const/4 v5, 0x0

    move-object v0, v5

    .line 36
    .end local v0    # "glide":Lcom/bumptech/glide/Glide;
    :goto_0
    return-object v0

    .line 31
    .restart local v0    # "glide":Lcom/bumptech/glide/Glide;
    :cond_0
    move-object v5, v3

    if-nez v5, :cond_1

    .line 32
    move-object v5, v0

    const-class v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/bumptech/glide/Glide;->buildTranscoder(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v5

    move-object v3, v5

    .line 34
    :cond_1
    move-object v5, v0

    const-class v6, Ljava/io/InputStream;

    const-class v7, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v5, v6, v7}, Lcom/bumptech/glide/Glide;->buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v5

    move-object v4, v5

    .line 36
    .local v4, "dataLoadProvider":Lcom/bumptech/glide/provider/DataLoadProvider;, "Lcom/bumptech/glide/provider/DataLoadProvider<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    new-instance v5, Lcom/bumptech/glide/provider/FixedLoadProvider;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/provider/FixedLoadProvider;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    move-object v0, v5

    goto :goto_0
.end method


# virtual methods
.method public toBytes()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifTypeRequest;, "Lcom/bumptech/glide/GifTypeRequest<TModelType;>;"
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;-><init>()V

    const-class v3, [B

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/GifTypeRequest;->transcode(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GifTypeRequest;, "Lcom/bumptech/glide/GifTypeRequest<TModelType;>;"
    return-object v0
.end method

.method public transcode(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "TR;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifTypeRequest;, "Lcom/bumptech/glide/GifTypeRequest<TModelType;>;"
    move-object v1, p1

    .local v1, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Lcom/bumptech/glide/load/resource/gif/GifDrawable;TR;>;"
    move-object v2, p2

    .local v2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/GifTypeRequest;->glide:Lcom/bumptech/glide/Glide;

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/GifTypeRequest;->streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v6, v2

    move-object v7, v1

    invoke-static {v4, v5, v6, v7}, Lcom/bumptech/glide/GifTypeRequest;->buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;

    move-result-object v4

    move-object v3, v4

    .line 65
    .local v3, "provider":Lcom/bumptech/glide/provider/FixedLoadProvider;, "Lcom/bumptech/glide/provider/FixedLoadProvider<TModelType;Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;TR;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/GifTypeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

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

    .end local v0    # "this":Lcom/bumptech/glide/GifTypeRequest;, "Lcom/bumptech/glide/GifTypeRequest<TModelType;>;"
    return-object v0
.end method
