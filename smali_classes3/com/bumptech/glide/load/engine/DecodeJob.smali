.class Lcom/bumptech/glide/load/engine/DecodeJob;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;,
        Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;,
        Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

.field private static final TAG:Ljava/lang/String; = "DecodeJob"


# instance fields
.field private final diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

.field private final diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private final fetcher:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final fileOpener:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

.field private final height:I

.field private volatile isCancelled:Z

.field private final loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final priority:Lcom/bumptech/glide/Priority;

.field private final resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

.field private final transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TT;TZ;>;"
        }
    .end annotation
.end field

.field private final transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob;->DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineKey;",
            "II",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TA;>;",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TA;TT;>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/Priority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    move-object/from16 v1, p1

    .local v1, "resultKey":Lcom/bumptech/glide/load/engine/EngineKey;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    move-object/from16 v4, p4

    .local v4, "fetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TA;>;"
    move-object/from16 v5, p5

    .local v5, "loadProvider":Lcom/bumptech/glide/provider/DataLoadProvider;, "Lcom/bumptech/glide/provider/DataLoadProvider<TA;TT;>;"
    move-object/from16 v6, p6

    .local v6, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    move-object/from16 v7, p7

    .local v7, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TT;TZ;>;"
    move-object/from16 v8, p8

    .local v8, "diskCacheProvider":Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
    move-object/from16 v9, p9

    .local v9, "diskCacheStrategy":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    move-object/from16 v10, p10

    .local v10, "priority":Lcom/bumptech/glide/Priority;
    move-object v11, v0

    move-object v12, v1

    move v13, v2

    move v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    sget-object v22, Lcom/bumptech/glide/load/engine/DecodeJob;->DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    invoke-direct/range {v11 .. v22}, Lcom/bumptech/glide/load/engine/DecodeJob;-><init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;)V

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineKey;",
            "II",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TA;>;",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TA;TT;>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    move-object v1, p1

    .local v1, "resultKey":Lcom/bumptech/glide/load/engine/EngineKey;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    move-object/from16 v4, p4

    .local v4, "fetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TA;>;"
    move-object/from16 v5, p5

    .local v5, "loadProvider":Lcom/bumptech/glide/provider/DataLoadProvider;, "Lcom/bumptech/glide/provider/DataLoadProvider<TA;TT;>;"
    move-object/from16 v6, p6

    .local v6, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    move-object/from16 v7, p7

    .local v7, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TT;TZ;>;"
    move-object/from16 v8, p8

    .local v8, "diskCacheProvider":Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
    move-object/from16 v9, p9

    .local v9, "diskCacheStrategy":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    move-object/from16 v10, p10

    .local v10, "priority":Lcom/bumptech/glide/Priority;
    move-object/from16 v11, p11

    .local v11, "fileOpener":Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
    move-object v12, v0

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v12, v0

    move-object v13, v1

    iput-object v13, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    .line 61
    move-object v12, v0

    move v13, v2

    iput v13, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    .line 62
    move-object v12, v0

    move v13, v3

    iput v13, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    .line 63
    move-object v12, v0

    move-object v13, v4

    iput-object v13, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 64
    move-object v12, v0

    move-object v13, v5

    iput-object v13, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    .line 65
    move-object v12, v0

    move-object v13, v6

    iput-object v13, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 66
    move-object v12, v0

    move-object v13, v7

    iput-object v13, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 67
    move-object v12, v0

    move-object v13, v8

    iput-object v13, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 68
    move-object v12, v0

    move-object v13, v9

    iput-object v13, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 69
    move-object v12, v0

    move-object v13, v10

    iput-object v13, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    .line 70
    move-object v12, v0

    move-object v13, v11

    iput-object v13, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->fileOpener:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/load/engine/DecodeJob;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->fileOpener:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/load/engine/DecodeJob;
    return-object v0
.end method

.method private cacheAndDecodeSourceData(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    move-object v1, p1

    .local v1, "data":Ljava/lang/Object;, "TA;"
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v6

    move-wide v2, v6

    .line 200
    .local v2, "startTime":J
    new-instance v6, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v9}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder()Lcom/bumptech/glide/load/Encoder;

    move-result-object v9

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V

    move-object v4, v6

    .line 201
    .local v4, "writer":Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>.SourceWriter<TA;>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v6}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v7}, Lcom/bumptech/glide/load/engine/EngineKey;->getOriginalKey()Lcom/bumptech/glide/load/Key;

    move-result-object v7

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    .line 202
    const-string/jumbo v6, "DecodeJob"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 203
    move-object v6, v0

    const-string/jumbo v7, "Wrote source to cache"

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 206
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v6

    move-wide v2, v6

    .line 207
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v7}, Lcom/bumptech/glide/load/engine/EngineKey;->getOriginalKey()Lcom/bumptech/glide/load/Key;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/engine/DecodeJob;->loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v6

    move-object v5, v6

    .line 208
    .local v5, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    const-string/jumbo v6, "DecodeJob"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v5

    if-eqz v6, :cond_1

    .line 209
    move-object v6, v0

    const-string/jumbo v7, "Decoded source from cache"

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 211
    :cond_1
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    return-object v0
.end method

.method private decodeFromSourceData(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    move-object v2, p1

    .local v2, "data":Ljava/lang/Object;, "TA;"
    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 187
    move-object v6, v1

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/engine/DecodeJob;->cacheAndDecodeSourceData(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v6

    move-object v3, v6

    .line 195
    .local v3, "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    :cond_0
    :goto_0
    move-object v6, v3

    move-object v1, v6

    .end local v1    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    return-object v1

    .line 189
    .end local v3    # "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    .restart local v1    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    :cond_1
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v6

    move-wide v4, v6

    .line 190
    .local v4, "startTime":J
    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v6}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v6

    move-object v7, v2

    move-object v8, v1

    iget v8, v8, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    move-object v9, v1

    iget v9, v9, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v6, v7, v8, v9}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v6

    move-object v3, v6

    .line 191
    .restart local v3    # "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    const-string/jumbo v6, "DecodeJob"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 192
    move-object v6, v1

    const-string/jumbo v7, "Decoded from source"

    move-wide v8, v4

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private decodeSource()Lcom/bumptech/glide/load/engine/Resource;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    const/4 v8, 0x0

    move-object v2, v8

    .line 169
    .local v2, "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v8

    move-wide v3, v8

    .line 170
    .local v3, "startTime":J
    move-object v8, v1

    iget-object v8, v8, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    move-object v9, v1

    iget-object v9, v9, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    invoke-interface {v8, v9}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .line 171
    .local v5, "data":Ljava/lang/Object;, "TA;"
    const-string/jumbo v8, "DecodeJob"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 172
    move-object v8, v1

    const-string/jumbo v9, "Fetched data"

    move-wide v10, v3

    invoke-direct {v8, v9, v10, v11}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 174
    :cond_0
    move-object v8, v1

    iget-boolean v8, v8, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    .line 175
    const/4 v8, 0x0

    move-object v6, v8

    .line 179
    move-object v8, v1

    iget-object v8, v8, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v8}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    move-object v8, v6

    move-object v1, v8

    .line 181
    .end local v1    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    :goto_0
    return-object v1

    .line 177
    .restart local v1    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    :cond_1
    move-object v8, v1

    move-object v9, v5

    :try_start_1
    invoke-direct {v8, v9}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeFromSourceData(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    move-object v2, v8

    .line 179
    move-object v8, v1

    iget-object v8, v8, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v8}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 180
    .line 181
    move-object v8, v2

    move-object v1, v8

    goto :goto_0

    .line 179
    .end local v3    # "startTime":J
    .end local v5    # "data":Ljava/lang/Object;, "TA;"
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v8}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    move-object v8, v7

    throw v8
.end method

.method private loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    move-object v1, p1

    .local v1, "key":Lcom/bumptech/glide/load/Key;
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v5}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    move-result-object v5

    move-object v2, v5

    .line 216
    .local v2, "cacheFile":Ljava/io/File;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 217
    const/4 v5, 0x0

    move-object v0, v5

    .line 228
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    :goto_0
    return-object v0

    .line 220
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    .line 222
    .local v3, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v5}, Lcom/bumptech/glide/provider/DataLoadProvider;->getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v5

    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    move-object v8, v0

    iget v8, v8, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v5, v6, v7, v8}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 224
    move-object v5, v3

    if-nez v5, :cond_1

    .line 225
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v5}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->delete(Lcom/bumptech/glide/load/Key;)V

    .line 228
    :cond_1
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    if-nez v5, :cond_2

    .line 225
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v5}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->delete(Lcom/bumptech/glide/load/Key;)V

    :cond_2
    move-object v5, v4

    throw v5
.end method

.method private logWithTimeAndKey(Ljava/lang/String;J)V
    .locals 10

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "startTime":J
    const-string/jumbo v4, "DecodeJob"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide v6, v2

    invoke-static {v6, v7}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 252
    return-void
.end method

.method private transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    move-object v1, p1

    .local v1, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 245
    const/4 v2, 0x0

    move-object v0, v2

    .line 247
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private transform(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    move-object v1, p1

    .local v1, "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 233
    const/4 v3, 0x0

    move-object v0, v3

    .line 240
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    :goto_0
    return-object v0

    .line 236
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/DecodeJob;->transformation:Lcom/bumptech/glide/load/Transformation;

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v3, v4, v5, v6}, Lcom/bumptech/glide/load/Transformation;->transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v3

    move-object v2, v3

    .line 237
    .local v2, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    move-object v3, v1

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 240
    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method private transformEncodeAndTranscode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    move-object v1, p1

    .local v1, "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v6

    move-wide v2, v6

    .line 139
    .local v2, "startTime":J
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/engine/DecodeJob;->transform(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v6

    move-object v4, v6

    .line 140
    .local v4, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    const-string/jumbo v6, "DecodeJob"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    move-object v6, v0

    const-string/jumbo v7, "Transformed resource from source"

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 144
    :cond_0
    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/engine/DecodeJob;->writeTransformedToCache(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 146
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v6

    move-wide v2, v6

    .line 147
    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/engine/DecodeJob;->transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v6

    move-object v5, v6

    .line 148
    .local v5, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    const-string/jumbo v6, "DecodeJob"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 149
    move-object v6, v0

    const-string/jumbo v7, "Transcoded transformed from source"

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 151
    :cond_1
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    return-object v0
.end method

.method private writeTransformedToCache(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    move-object v2, p1

    .local v2, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v6

    if-nez v6, :cond_1

    .line 156
    .line 164
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v6

    move-wide v3, v6

    .line 159
    .local v3, "startTime":J
    new-instance v6, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Lcom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v9}, Lcom/bumptech/glide/provider/DataLoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v9

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V

    move-object v5, v6

    .line 160
    .local v5, "writer":Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>.SourceWriter<Lcom/bumptech/glide/load/engine/Resource<TT;>;>;"
    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v6}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    .line 161
    const-string/jumbo v6, "DecodeJob"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 162
    move-object v6, v1

    const-string/jumbo v7, "Wrote transformed from source to cache"

    move-wide v8, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 164
    :cond_2
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    .line 134
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    .line 135
    return-void
.end method

.method public decodeFromSource()Lcom/bumptech/glide/load/engine/Resource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeSource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    move-object v1, v2

    .line 129
    .local v1, "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->transformEncodeAndTranscode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    return-object v0
.end method

.method public decodeResultFromCache()Lcom/bumptech/glide/load/engine/Resource;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v6

    if-nez v6, :cond_0

    .line 81
    const/4 v6, 0x0

    move-object v1, v6

    .line 94
    .end local v1    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local v2, "startTime":J
    .local v4, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    .local v5, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    :goto_0
    return-object v1

    .line 84
    .end local v2    # "startTime":J
    .end local v4    # "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    .end local v5    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    .restart local v1    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v6

    move-wide v2, v6

    .line 85
    .restart local v2    # "startTime":J
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/engine/DecodeJob;->loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v6

    move-object v4, v6

    .line 86
    .restart local v4    # "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    const-string/jumbo v6, "DecodeJob"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    move-object v6, v1

    const-string/jumbo v7, "Decoded transformed from cache"

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 89
    :cond_1
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v6

    move-wide v2, v6

    .line 90
    move-object v6, v1

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/engine/DecodeJob;->transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v6

    move-object v5, v6

    .line 91
    .restart local v5    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    const-string/jumbo v6, "DecodeJob"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 92
    move-object v6, v1

    const-string/jumbo v7, "Transcoded transformed from cache"

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 94
    :cond_2
    move-object v6, v5

    move-object v1, v6

    goto :goto_0
.end method

.method public decodeSourceFromCache()Lcom/bumptech/glide/load/engine/Resource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    const/4 v4, 0x0

    move-object v0, v4

    .line 113
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local v1, "startTime":J
    .local v3, "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    :goto_0
    return-object v0

    .line 108
    .end local v1    # "startTime":J
    .end local v3    # "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v4

    move-wide v1, v4

    .line 109
    .restart local v1    # "startTime":J
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/EngineKey;->getOriginalKey()Lcom/bumptech/glide/load/Key;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/engine/DecodeJob;->loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v4

    move-object v3, v4

    .line 110
    .restart local v3    # "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    const-string/jumbo v4, "DecodeJob"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    move-object v4, v0

    const-string/jumbo v5, "Decoded source from cache"

    move-wide v6, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 113
    :cond_1
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/engine/DecodeJob;->transformEncodeAndTranscode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method
