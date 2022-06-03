.class public Lorg/jose4j/jwk/HttpsJwks;
.super Ljava/lang/Object;
.source "HttpsJwks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwk/HttpsJwks$1;,
        Lorg/jose4j/jwk/HttpsJwks$Cache;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private volatile cache:Lorg/jose4j/jwk/HttpsJwks$Cache;

.field private volatile defaultCacheDuration:J

.field private final location:Ljava/lang/String;

.field private final refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private refreshReprieveThreshold:J

.field private volatile retainCacheOnErrorDurationMills:J

.field private volatile simpleHttpGet:Lorg/jose4j/http/SimpleGet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/jose4j/jwk/HttpsJwks;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwk/HttpsJwks;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 65
    move-object v1, p0

    .local v1, "this":Lorg/jose4j/jwk/HttpsJwks;
    move-object v2, p1

    .local v2, "location":Ljava/lang/String;
    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v3, v1

    const-wide/16 v4, 0xe10

    iput-wide v4, v3, Lorg/jose4j/jwk/HttpsJwks;->defaultCacheDuration:J

    .line 50
    move-object v3, v1

    new-instance v4, Lorg/jose4j/http/Get;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Lorg/jose4j/http/Get;-><init>()V

    iput-object v4, v3, Lorg/jose4j/jwk/HttpsJwks;->simpleHttpGet:Lorg/jose4j/http/SimpleGet;

    .line 51
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lorg/jose4j/jwk/HttpsJwks;->retainCacheOnErrorDurationMills:J

    .line 53
    move-object v3, v1

    new-instance v4, Lorg/jose4j/jwk/HttpsJwks$Cache;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/jose4j/jwk/HttpsJwks$Cache;-><init>(Ljava/util/List;JLorg/jose4j/jwk/HttpsJwks$1;)V

    iput-object v4, v3, Lorg/jose4j/jwk/HttpsJwks;->cache:Lorg/jose4j/jwk/HttpsJwks$Cache;

    .line 56
    move-object v3, v1

    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v4, v3, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 58
    move-object v3, v1

    const-wide/16 v4, 0x12c

    iput-wide v4, v3, Lorg/jose4j/jwk/HttpsJwks;->refreshReprieveThreshold:J

    .line 66
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lorg/jose4j/jwk/HttpsJwks;->location:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static getCacheLife(Lorg/jose4j/http/SimpleResponse;)J
    .locals 4

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "response":Lorg/jose4j/http/SimpleResponse;
    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/jose4j/jwk/HttpsJwks;->getCacheLife(Lorg/jose4j/http/SimpleResponse;J)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "response":Lorg/jose4j/http/SimpleResponse;
    return-wide v0
.end method

.method static getCacheLife(Lorg/jose4j/http/SimpleResponse;J)J
    .locals 19

    .prologue
    .line 265
    move-object/from16 v0, p0

    .local v0, "response":Lorg/jose4j/http/SimpleResponse;
    move-wide/from16 v1, p1

    .local v1, "currentTime":J
    move-object v14, v0

    invoke-static {v14}, Lorg/jose4j/jwk/HttpsJwks;->getExpires(Lorg/jose4j/http/SimpleResponse;)J

    move-result-wide v14

    move-wide v3, v14

    .line 266
    .local v3, "expires":J
    move-wide v14, v3

    move-wide/from16 v16, v1

    sub-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    move-wide v5, v14

    .line 269
    .local v5, "life":J
    move-object v14, v0

    const-string/jumbo v15, "cache-control"

    invoke-static {v14, v15}, Lorg/jose4j/jwk/HttpsJwks;->getHeaderValues(Lorg/jose4j/http/SimpleResponse;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    move-object v7, v14

    .line 270
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v8, v14

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v14, v8

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v9, v14

    .line 275
    .local v9, "value":Ljava/lang/String;
    move-object v14, v9

    if-nez v14, :cond_1

    :try_start_0
    const-string/jumbo v14, ""

    :goto_1
    move-object v9, v14

    .line 276
    move-object v14, v9

    const-string/jumbo v15, "max-age"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    move v10, v14

    .line 277
    .local v10, "indexOfMaxAge":I
    move-object v14, v9

    const/16 v15, 0x2c

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    move v11, v14

    .line 278
    .local v11, "indexOfComma":I
    move v14, v11

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2

    move-object v14, v9

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    :goto_2
    move v12, v14

    .line 279
    .local v12, "end":I
    move-object v14, v9

    move v15, v10

    move/from16 v16, v12

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 280
    .local v13, "part":Ljava/lang/String;
    move-object v14, v13

    move-object v15, v13

    const/16 v16, 0x3d

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 281
    move-object v14, v13

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 282
    move-object v14, v13

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-wide v5, v14

    .line 283
    .line 292
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "indexOfMaxAge":I
    .end local v11    # "indexOfComma":I
    .end local v12    # "end":I
    .end local v13    # "part":Ljava/lang/String;
    :cond_0
    move-wide v14, v5

    move-wide v0, v14

    .end local v0    # "response":Lorg/jose4j/http/SimpleResponse;
    return-wide v0

    .line 275
    .restart local v0    # "response":Lorg/jose4j/http/SimpleResponse;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_1
    move-object v14, v9

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    goto :goto_1

    .line 278
    .restart local v10    # "indexOfMaxAge":I
    .restart local v11    # "indexOfComma":I
    :cond_2
    move v14, v11

    goto :goto_2

    .line 285
    .end local v10    # "indexOfMaxAge":I
    .end local v11    # "indexOfComma":I
    :catch_0
    move-exception v14

    move-object v10, v14

    .line 290
    goto :goto_0
.end method

.method static getDateHeaderValue(Lorg/jose4j/http/SimpleResponse;Ljava/lang/String;J)J
    .locals 12

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "response":Lorg/jose4j/http/SimpleResponse;
    move-object v1, p1

    .local v1, "headerName":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "defaultValue":J
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Lorg/jose4j/jwk/HttpsJwks;->getHeaderValues(Lorg/jose4j/http/SimpleResponse;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 227
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    .line 231
    .local v6, "value":Ljava/lang/String;
    move-object v8, v6

    :try_start_0
    const-string/jumbo v9, "GMT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 233
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " GMT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 236
    :cond_0
    move-object v8, v6

    invoke-static {v8}, Ljava/util/Date;->parse(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    move-wide v0, v8

    .line 243
    .end local v0    # "response":Lorg/jose4j/http/SimpleResponse;
    .end local v6    # "value":Ljava/lang/String;
    :goto_1
    return-wide v0

    .line 238
    .restart local v0    # "response":Lorg/jose4j/http/SimpleResponse;
    .restart local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 242
    goto :goto_0

    .line 243
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    move-wide v8, v2

    move-wide v0, v8

    goto :goto_1
.end method

.method static getExpires(Lorg/jose4j/http/SimpleResponse;)J
    .locals 6

    .prologue
    .line 254
    move-object v1, p0

    .local v1, "response":Lorg/jose4j/http/SimpleResponse;
    move-object v2, v1

    const-string/jumbo v3, "expires"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/jose4j/jwk/HttpsJwks;->getDateHeaderValue(Lorg/jose4j/http/SimpleResponse;Ljava/lang/String;J)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "response":Lorg/jose4j/http/SimpleResponse;
    return-wide v1
.end method

.method private static getHeaderValues(Lorg/jose4j/http/SimpleResponse;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/http/SimpleResponse;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "response":Lorg/jose4j/http/SimpleResponse;
    move-object v1, p1

    .local v1, "headerName":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/jose4j/http/SimpleResponse;->getHeaderValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 249
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "response":Lorg/jose4j/http/SimpleResponse;
    return-object v0

    .restart local v0    # "response":Lorg/jose4j/http/SimpleResponse;
    :cond_0
    move-object v3, v2

    goto :goto_0
.end method


# virtual methods
.method public getJsonWebKeys()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwk/HttpsJwks;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v1, v6

    .line 140
    .local v1, "now":J
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwk/HttpsJwks;->cache:Lorg/jose4j/jwk/HttpsJwks$Cache;

    move-object v3, v6

    .line 141
    .local v3, "c":Lorg/jose4j/jwk/HttpsJwks$Cache;
    move-object v6, v3

    invoke-static {v6}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$100(Lorg/jose4j/jwk/HttpsJwks$Cache;)J

    move-result-wide v6

    move-wide v8, v1

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 144
    move-object v6, v3

    invoke-static {v6}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;

    move-result-object v6

    move-object v0, v6

    .line 180
    .end local v0    # "this":Lorg/jose4j/jwk/HttpsJwks;
    :goto_0
    return-object v0

    .line 146
    .restart local v0    # "this":Lorg/jose4j/jwk/HttpsJwks;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v6

    if-nez v6, :cond_2

    .line 149
    move-object v6, v3

    invoke-static {v6}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 151
    move-object v6, v3

    invoke-static {v6}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 155
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 161
    :cond_2
    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lorg/jose4j/jwk/HttpsJwks;->refresh()V

    .line 162
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwk/HttpsJwks;->cache:Lorg/jose4j/jwk/HttpsJwks$Cache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v6

    .line 178
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 179
    .line 180
    :goto_1
    move-object v6, v3

    invoke-static {v6}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 164
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 166
    .local v4, "e":Ljava/lang/Exception;
    move-object v6, v0

    :try_start_1
    iget-wide v6, v6, Lorg/jose4j/jwk/HttpsJwks;->retainCacheOnErrorDurationMills:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    move-object v6, v3

    invoke-static {v6}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 168
    move-object v6, v0

    new-instance v7, Lorg/jose4j/jwk/HttpsJwks$Cache;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v3

    invoke-static {v9}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;

    move-result-object v9

    move-wide v10, v1

    move-object v12, v0

    iget-wide v12, v12, Lorg/jose4j/jwk/HttpsJwks;->retainCacheOnErrorDurationMills:J

    add-long/2addr v10, v12

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/jose4j/jwk/HttpsJwks$Cache;-><init>(Ljava/util/List;JLorg/jose4j/jwk/HttpsJwks$1;)V

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v3, v8

    iput-object v7, v6, Lorg/jose4j/jwk/HttpsJwks;->cache:Lorg/jose4j/jwk/HttpsJwks$Cache;

    .line 169
    sget-object v6, Lorg/jose4j/jwk/HttpsJwks;->log:Lorg/slf4j/Logger;

    const-string/jumbo v7, "Because of {} unable to refresh JWKS content from {} so will continue to use cached keys for more {} seconds until about {} -> {}"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    move-object v11, v4

    invoke-static {v11}, Lorg/jose4j/lang/ExceptionHelp;->toStringWithCauses(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwk/HttpsJwks;->location:Ljava/lang/String;

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x2

    move-object v11, v0

    iget-wide v11, v11, Lorg/jose4j/jwk/HttpsJwks;->retainCacheOnErrorDurationMills:J

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x3

    new-instance v11, Ljava/util/Date;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v3

    invoke-static {v13}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$100(Lorg/jose4j/jwk/HttpsJwks$Cache;)J

    move-result-wide v13

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x4

    move-object v11, v3

    invoke-static {v11}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 179
    goto/16 :goto_1

    .line 173
    :cond_3
    move-object v6, v4

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v6, v5

    throw v6
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/HttpsJwks;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/HttpsJwks;->location:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/HttpsJwks;
    return-object v0
.end method

.method public refresh()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    move-object/from16 v1, p0

    .local v1, "this":Lorg/jose4j/jwk/HttpsJwks;
    move-object v12, v1

    iget-object v12, v12, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 195
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object v14, v1

    iget-object v14, v14, Lorg/jose4j/jwk/HttpsJwks;->cache:Lorg/jose4j/jwk/HttpsJwks$Cache;

    invoke-static {v14}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$300(Lorg/jose4j/jwk/HttpsJwks$Cache;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    move-wide v2, v12

    .line 197
    .local v2, "last":J
    move-wide v12, v2

    move-object v14, v1

    iget-wide v14, v14, Lorg/jose4j/jwk/HttpsJwks;->refreshReprieveThreshold:J

    cmp-long v12, v12, v14

    if-gez v12, :cond_0

    move-object v12, v1

    iget-object v12, v12, Lorg/jose4j/jwk/HttpsJwks;->cache:Lorg/jose4j/jwk/HttpsJwks$Cache;

    invoke-static {v12}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 199
    sget-object v12, Lorg/jose4j/jwk/HttpsJwks;->log:Lorg/slf4j/Logger;

    const-string/jumbo v13, "NOT refreshing/loading JWKS from {} because it just happened {} mills ago"

    move-object v14, v1

    iget-object v14, v14, Lorg/jose4j/jwk/HttpsJwks;->location:Ljava/lang/String;

    move-wide v15, v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :goto_0
    move-object v12, v1

    iget-object v12, v12, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 221
    .line 222
    return-void

    .line 203
    :cond_0
    :try_start_1
    sget-object v12, Lorg/jose4j/jwk/HttpsJwks;->log:Lorg/slf4j/Logger;

    const-string/jumbo v13, "Refreshing/loading JWKS from {}"

    move-object v14, v1

    iget-object v14, v14, Lorg/jose4j/jwk/HttpsJwks;->location:Ljava/lang/String;

    invoke-interface {v12, v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    move-object v12, v1

    iget-object v12, v12, Lorg/jose4j/jwk/HttpsJwks;->simpleHttpGet:Lorg/jose4j/http/SimpleGet;

    move-object v13, v1

    iget-object v13, v13, Lorg/jose4j/jwk/HttpsJwks;->location:Ljava/lang/String;

    invoke-interface {v12, v13}, Lorg/jose4j/http/SimpleGet;->get(Ljava/lang/String;)Lorg/jose4j/http/SimpleResponse;

    move-result-object v12

    move-object v4, v12

    .line 205
    .local v4, "simpleResponse":Lorg/jose4j/http/SimpleResponse;
    new-instance v12, Lorg/jose4j/jwk/JsonWebKeySet;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    move-object v14, v4

    invoke-interface {v14}, Lorg/jose4j/http/SimpleResponse;->getBody()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/jose4j/jwk/JsonWebKeySet;-><init>(Ljava/lang/String;)V

    move-object v5, v12

    .line 206
    .local v5, "jwks":Lorg/jose4j/jwk/JsonWebKeySet;
    move-object v12, v5

    invoke-virtual {v12}, Lorg/jose4j/jwk/JsonWebKeySet;->getJsonWebKeys()Ljava/util/List;

    move-result-object v12

    move-object v6, v12

    .line 207
    .local v6, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v12, v4

    invoke-static {v12}, Lorg/jose4j/jwk/HttpsJwks;->getCacheLife(Lorg/jose4j/http/SimpleResponse;)J

    move-result-wide v12

    move-wide v7, v12

    .line 208
    .local v7, "cacheLife":J
    move-wide v12, v7

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gtz v12, :cond_1

    .line 210
    sget-object v12, Lorg/jose4j/jwk/HttpsJwks;->log:Lorg/slf4j/Logger;

    const-string/jumbo v13, "Will use default cache duration of {} seconds for content from {}"

    move-object v14, v1

    iget-wide v14, v14, Lorg/jose4j/jwk/HttpsJwks;->defaultCacheDuration:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object v15, v1

    iget-object v15, v15, Lorg/jose4j/jwk/HttpsJwks;->location:Ljava/lang/String;

    invoke-interface {v12, v13, v14, v15}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    move-object v12, v1

    iget-wide v12, v12, Lorg/jose4j/jwk/HttpsJwks;->defaultCacheDuration:J

    move-wide v7, v12

    .line 213
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-wide v14, v7

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    move-wide v9, v12

    .line 214
    .local v9, "exp":J
    sget-object v12, Lorg/jose4j/jwk/HttpsJwks;->log:Lorg/slf4j/Logger;

    const-string/jumbo v13, "Updated JWKS content from {} will be cached for {} seconds until about {} -> {}"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jose4j/jwk/HttpsJwks;->location:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    const/16 v16, 0x1

    move-wide/from16 v17, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    const/16 v16, 0x2

    new-instance v17, Ljava/util/Date;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-wide/from16 v19, v9

    invoke-direct/range {v18 .. v20}, Ljava/util/Date;-><init>(J)V

    aput-object v17, v15, v16

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    const/16 v16, 0x3

    move-object/from16 v17, v6

    aput-object v17, v15, v16

    invoke-interface {v12, v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    move-object v12, v1

    new-instance v13, Lorg/jose4j/jwk/HttpsJwks$Cache;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    move-object v15, v6

    move-wide/from16 v16, v9

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Lorg/jose4j/jwk/HttpsJwks$Cache;-><init>(Ljava/util/List;JLorg/jose4j/jwk/HttpsJwks$1;)V

    iput-object v13, v12, Lorg/jose4j/jwk/HttpsJwks;->cache:Lorg/jose4j/jwk/HttpsJwks$Cache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 220
    .end local v2    # "last":J
    .end local v4    # "simpleResponse":Lorg/jose4j/http/SimpleResponse;
    .end local v5    # "jwks":Lorg/jose4j/jwk/JsonWebKeySet;
    .end local v6    # "keys":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    .end local v7    # "cacheLife":J
    .end local v9    # "exp":J
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v1

    iget-object v12, v12, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v12, v11

    throw v12
.end method

.method public setDefaultCacheDuration(J)V
    .locals 7

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/HttpsJwks;
    move-wide v1, p1

    .local v1, "defaultCacheDuration":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lorg/jose4j/jwk/HttpsJwks;->defaultCacheDuration:J

    .line 83
    return-void
.end method

.method public setRefreshReprieveThreshold(J)V
    .locals 7

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/HttpsJwks;
    move-wide v1, p1

    .local v1, "refreshReprieveThreshold":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lorg/jose4j/jwk/HttpsJwks;->refreshReprieveThreshold:J

    .line 129
    return-void
.end method

.method public setRetainCacheOnErrorDuration(J)V
    .locals 9

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/HttpsJwks;
    move-wide v1, p1

    .local v1, "retainCacheOnErrorDuration":J
    move-object v3, v0

    move-wide v4, v1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v3, Lorg/jose4j/jwk/HttpsJwks;->retainCacheOnErrorDurationMills:J

    .line 96
    return-void
.end method

.method public setSimpleHttpGet(Lorg/jose4j/http/SimpleGet;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/HttpsJwks;
    move-object v1, p1

    .local v1, "simpleHttpGet":Lorg/jose4j/http/SimpleGet;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwk/HttpsJwks;->simpleHttpGet:Lorg/jose4j/http/SimpleGet;

    .line 108
    return-void
.end method
