.class public Lcom/bumptech/glide/provider/ChildLoadProvider;
.super Ljava/lang/Object;
.source "ChildLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/provider/LoadProvider;
.implements Ljava/lang/Cloneable;


# annotations
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
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/LoadProvider",
        "<TA;TT;TZ;TR;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation
.end field

.field private encoder:Lcom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private final parent:Lcom/bumptech/glide/provider/LoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private sourceDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TZ;>;"
        }
    .end annotation
.end field

.field private sourceEncoder:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<TT;>;"
        }
    .end annotation
.end field

.field private transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/provider/LoadProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    move-object v1, p1

    .local v1, "parent":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/provider/ChildLoadProvider;->parent:Lcom/bumptech/glide/provider/LoadProvider;

    .line 31
    return-void
.end method


# virtual methods
.method public clone()Lcom/bumptech/glide/provider/ChildLoadProvider;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/provider/ChildLoadProvider",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    move-object v2, v0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/provider/ChildLoadProvider;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    return-object v0

    .line 150
    .restart local v0    # "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 151
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/provider/ChildLoadProvider;->clone()Lcom/bumptech/glide/provider/ChildLoadProvider;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    return-object v0
.end method

.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/provider/ChildLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v1, :cond_0

    .line 91
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/provider/ChildLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    move-object v0, v1

    .line 93
    .end local v0    # "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/provider/ChildLoadProvider;->parent:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v1}, Lcom/bumptech/glide/provider/LoadProvider;->getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/provider/ChildLoadProvider;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v1, :cond_0

    .line 127
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/provider/ChildLoadProvider;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    move-object v0, v1

    .line 129
    .end local v0    # "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/provider/ChildLoadProvider;->parent:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v1}, Lcom/bumptech/glide/provider/LoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/provider/ChildLoadProvider;->parent:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v1}, Lcom/bumptech/glide/provider/LoadProvider;->getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    return-object v0
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/provider/ChildLoadProvider;->sourceDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v1, :cond_0

    .line 103
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/provider/ChildLoadProvider;->sourceDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    move-object v0, v1

    .line 105
    .end local v0    # "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/provider/ChildLoadProvider;->parent:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v1}, Lcom/bumptech/glide/provider/LoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Encoder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/provider/ChildLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v1, :cond_0

    .line 115
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/provider/ChildLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    move-object v0, v1

    .line 117
    .end local v0    # "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/provider/ChildLoadProvider;->parent:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v1}, Lcom/bumptech/glide/provider/LoadProvider;->getSourceEncoder()Lcom/bumptech/glide/load/Encoder;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/provider/ChildLoadProvider;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v1, :cond_0

    .line 139
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/provider/ChildLoadProvider;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-object v0, v1

    .line 141
    .end local v0    # "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/provider/ChildLoadProvider;->parent:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v1}, Lcom/bumptech/glide/provider/LoadProvider;->getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public setCacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    move-object v1, p1

    .local v1, "cacheDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;TZ;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/provider/ChildLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 45
    return-void
.end method

.method public setEncoder(Lcom/bumptech/glide/load/ResourceEncoder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    move-object v1, p1

    .local v1, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/provider/ChildLoadProvider;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 64
    return-void
.end method

.method public setSourceDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    move-object v1, p1

    .local v1, "sourceDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TT;TZ;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/provider/ChildLoadProvider;->sourceDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 54
    return-void
.end method

.method public setSourceEncoder(Lcom/bumptech/glide/load/Encoder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    move-object v1, p1

    .local v1, "sourceEncoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/provider/ChildLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    .line 83
    return-void
.end method

.method public setTranscoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/ChildLoadProvider;, "Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    move-object v1, p1

    .local v1, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/provider/ChildLoadProvider;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 74
    return-void
.end method
