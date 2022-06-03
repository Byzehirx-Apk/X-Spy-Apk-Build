.class public Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
.super Ljava/lang/Object;
.source "TranscoderRegistry.java"


# static fields
.field private static final GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;


# instance fields
.field private final factories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/util/MultiClassKey;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lcom/bumptech/glide/util/MultiClassKey;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/util/MultiClassKey;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->factories:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
    move-object v1, p1

    .local v1, "decodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    move-object v2, p2

    .local v2, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 45
    invoke-static {}, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;->get()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v6

    move-object v0, v6

    .line 56
    .end local v0    # "this":Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
    :goto_0
    return-object v0

    .line 48
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
    :cond_0
    sget-object v6, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v4, v7

    monitor-enter v6

    .line 49
    :try_start_0
    sget-object v6, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/bumptech/glide/util/MultiClassKey;->set(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 50
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->factories:Ljava/util/Map;

    sget-object v7, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-object v3, v6

    .line 51
    .local v3, "result":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<**>;"
    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    move-object v6, v3

    if-nez v6, :cond_1

    .line 53
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No transcoder registered for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 51
    .end local v3    # "result":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<**>;"
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    throw v6

    .line 56
    .restart local v3    # "result":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<**>;"
    :cond_1
    move-object v6, v3

    move-object v0, v6

    goto :goto_0
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
    move-object v1, p1

    .local v1, "decodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    move-object v2, p2

    .local v2, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    move-object v3, p3

    .local v3, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->factories:Ljava/util/Map;

    new-instance v5, Lcom/bumptech/glide/util/MultiClassKey;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/util/MultiClassKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 30
    return-void
.end method
