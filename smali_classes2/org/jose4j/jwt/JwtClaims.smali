.class public Lorg/jose4j/jwt/JwtClaims;
.super Ljava/lang/Object;
.source "JwtClaims.java"


# instance fields
.field private claimsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private rawJson:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v1, v0

    new-instance v2, Ljava/util/LinkedHashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/JwtContext;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/InvalidJwtException;
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "jsonClaims":Ljava/lang/String;
    move-object v2, p2

    .local v2, "jwtContext":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lorg/jose4j/jwt/JwtClaims;->rawJson:Ljava/lang/String;

    .line 49
    move-object v6, v1

    :try_start_0
    invoke-static {v6}, Lorg/jose4j/json/JsonUtil;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    move-object v3, v6

    .line 50
    .local v3, "parsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v6, v0

    new-instance v7, Ljava/util/LinkedHashMap;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v3

    invoke-direct {v8, v9}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v7, v6, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;
    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    return-void

    .line 52
    .end local v3    # "parsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 54
    .local v3, "e":Lorg/jose4j/lang/JoseException;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to parse what was expected to be the JWT Claim Set JSON: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 55
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x10

    const-string/jumbo v9, "Invalid JSON."

    invoke-direct {v7, v8, v9}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v5, v6

    .line 56
    .local v5, "error":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    new-instance v6, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v4

    move-object v9, v5

    move-object v10, v3

    move-object v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;Ljava/lang/Throwable;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v6
.end method

.method private classCastMsg(Ljava/lang/ClassCastException;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "e":Ljava/lang/ClassCastException;
    move-object v2, p2

    .local v2, "o":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method private dfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 395
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object/from16 v1, p1

    .local v1, "baseName":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "value":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "flattenedClaims":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v1

    if-nez v13, :cond_0

    const-string/jumbo v13, ""

    :goto_0
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    .line 396
    .local v5, "key":Ljava/lang/String;
    move-object v12, v3

    instance-of v12, v12, Ljava/util/List;

    if-eqz v12, :cond_4

    .line 398
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v12

    .line 399
    .local v6, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v12, v3

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v7, v12

    :goto_1
    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    .line 401
    .local v8, "item":Ljava/lang/Object;
    move-object v12, v8

    instance-of v12, v12, Ljava/util/Map;

    if-eqz v12, :cond_2

    .line 403
    move-object v12, v8

    check-cast v12, Ljava/util/Map;

    move-object v9, v12

    .line 404
    .local v9, "mv":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object v12, v9

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v10, v12

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    move-object v12, v10

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v12, v10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    move-object v11, v12

    .line 406
    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    move-object v12, v0

    move-object v13, v5

    move-object v14, v11

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v11

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v4

    invoke-direct/range {v12 .. v16}, Lorg/jose4j/jwt/JwtClaims;->dfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 407
    goto :goto_2

    .line 395
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v8    # "item":Ljava/lang/Object;
    .end local v9    # "mv":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 408
    .line 413
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v8    # "item":Ljava/lang/Object;
    :cond_1
    :goto_3
    goto :goto_1

    .line 411
    :cond_2
    move-object v12, v6

    move-object v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_3

    .line 414
    .end local v8    # "item":Ljava/lang/Object;
    :cond_3
    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 415
    .line 428
    .end local v6    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_4
    return-void

    .line 416
    :cond_4
    move-object v12, v3

    instance-of v12, v12, Ljava/util/Map;

    if-eqz v12, :cond_6

    .line 418
    move-object v12, v3

    check-cast v12, Ljava/util/Map;

    move-object v6, v12

    .line 419
    .local v6, "mapValue":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v7, v12

    .local v7, "i$":Ljava/util/Iterator;
    :goto_5
    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    move-object v8, v12

    .line 421
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    move-object v12, v0

    move-object v13, v5

    move-object v14, v8

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v8

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v4

    invoke-direct/range {v12 .. v16}, Lorg/jose4j/jwt/JwtClaims;->dfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 422
    goto :goto_5

    .line 423
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_5
    goto :goto_4

    .line 426
    .end local v6    # "mapValue":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object v12, v4

    move-object v13, v5

    move-object v14, v3

    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_4
.end method

.method private offsetFromNow(F)Lorg/jose4j/jwt/NumericDate;
    .locals 8

    .prologue
    .line 184
    move-object v1, p0

    .local v1, "this":Lorg/jose4j/jwt/JwtClaims;
    move v2, p1

    .local v2, "offsetMinutes":F
    invoke-static {}, Lorg/jose4j/jwt/NumericDate;->now()Lorg/jose4j/jwt/NumericDate;

    move-result-object v5

    move-object v3, v5

    .line 185
    .local v3, "numericDate":Lorg/jose4j/jwt/NumericDate;
    move v5, v2

    const/high16 v6, 0x42700000    # 60.0f

    mul-float/2addr v5, v6

    move v4, v5

    .line 186
    .local v4, "secondsOffset":F
    move-object v5, v3

    move v6, v4

    float-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/jose4j/jwt/NumericDate;->addSeconds(J)V

    .line 187
    move-object v5, v3

    move-object v1, v5

    .end local v1    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v1
.end method

.method public static parse(Ljava/lang/String;)Lorg/jose4j/jwt/JwtClaims;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/InvalidJwtException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "jsonClaims":Ljava/lang/String;
    new-instance v1, Lorg/jose4j/jwt/JwtClaims;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/jose4j/jwt/JwtClaims;-><init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/JwtContext;)V

    move-object v0, v1

    .end local v0    # "jsonClaims":Ljava/lang/String;
    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/JwtClaims;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/InvalidJwtException;
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "jsonClaims":Ljava/lang/String;
    move-object v1, p1

    .local v1, "jwtContext":Lorg/jose4j/jwt/consumer/JwtContext;
    new-instance v2, Lorg/jose4j/jwt/JwtClaims;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/jose4j/jwt/JwtClaims;-><init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/JwtContext;)V

    move-object v0, v2

    .end local v0    # "jsonClaims":Ljava/lang/String;
    return-object v0
.end method

.method private toStringList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "list":Ljava/util/List;
    move-object/from16 v2, p2

    .local v2, "claimName":Ljava/lang/String;
    move-object v7, v1

    if-nez v7, :cond_0

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object v0, v7

    .line 164
    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    :goto_0
    return-object v0

    .line 152
    .restart local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 153
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 157
    .local v5, "object":Ljava/lang/Object;
    move-object v7, v3

    move-object v8, v5

    :try_start_0
    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 162
    .line 163
    goto :goto_1

    .line 159
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 161
    .local v6, "e":Ljava/lang/ClassCastException;
    new-instance v7, Lorg/jose4j/jwt/MalformedClaimException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "The array value of the \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' claim contains non string values "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move-object v11, v6

    move-object v12, v5

    invoke-direct {v10, v11, v12}, Lorg/jose4j/jwt/JwtClaims;->classCastMsg(Ljava/lang/ClassCastException;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Lorg/jose4j/jwt/MalformedClaimException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 164
    .end local v5    # "object":Ljava/lang/Object;
    .end local v6    # "e":Ljava/lang/ClassCastException;
    :cond_1
    move-object v7, v3

    move-object v0, v7

    goto :goto_0
.end method


# virtual methods
.method public flattenClaims()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jose4j/jwt/JwtClaims;->flattenClaims(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public flattenClaims(Ljava/util/Set;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "omittedClaims":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v6, v1

    if-nez v6, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    :goto_0
    move-object v1, v6

    .line 381
    new-instance v6, Ljava/util/LinkedHashMap;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v2, v6

    .line 382
    .local v2, "flattenedClaims":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v4, v6

    .line 384
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 385
    .local v5, "key":Ljava/lang/String;
    move-object v6, v1

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 387
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v5

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/jose4j/jwt/JwtClaims;->dfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 389
    :cond_0
    goto :goto_1

    .line 380
    .end local v2    # "flattenedClaims":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_1
    move-object v6, v1

    goto :goto_0

    .line 390
    .restart local v2    # "flattenedClaims":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public getAudience()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    const-string/jumbo v5, "aud"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 132
    .local v1, "audienceObject":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 134
    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    .line 140
    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    :goto_0
    return-object v0

    .line 136
    .restart local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Ljava/util/List;

    if-nez v4, :cond_1

    move-object v4, v1

    if-nez v4, :cond_2

    .line 138
    :cond_1
    move-object v4, v1

    check-cast v4, Ljava/util/List;

    move-object v2, v4

    .line 139
    .local v2, "audienceList":Ljava/util/List;
    const-string/jumbo v4, "aud"

    move-object v3, v4

    .line 140
    .local v3, "claimName":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lorg/jose4j/jwt/JwtClaims;->toStringList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 143
    .end local v2    # "audienceList":Ljava/util/List;
    .end local v3    # "claimName":Ljava/lang/String;
    :cond_2
    new-instance v4, Lorg/jose4j/jwt/MalformedClaimException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "The value of the \'aud\' claim is not an array of strings or a single string value."

    invoke-direct {v5, v6}, Lorg/jose4j/jwt/MalformedClaimException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getClaimNames()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jose4j/jwt/JwtClaims;->getClaimNames(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public getClaimNames(Ljava/util/Set;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "omittedClaims":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/jwt/JwtClaims;->getClaimsMap(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public getClaimValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "claimName":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public getClaimValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "claimName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 252
    .local v3, "o":Ljava/lang/Object;
    move-object v5, v2

    move-object v6, v3

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0

    .line 254
    .restart local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 256
    .local v4, "e":Ljava/lang/ClassCastException;
    new-instance v5, Lorg/jose4j/jwt/MalformedClaimException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "The value of the \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' claim is not the expected type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    move-object v9, v4

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lorg/jose4j/jwt/JwtClaims;->classCastMsg(Ljava/lang/ClassCastException;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/jose4j/jwt/MalformedClaimException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getClaimValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "claimName":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 299
    .local v2, "claimObjectValue":Ljava/lang/Object;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getClaimsMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jose4j/jwt/JwtClaims;->getClaimsMap(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public getClaimsMap(Ljava/util/Set;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "omittedClaims":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    :goto_0
    move-object v1, v5

    .line 434
    new-instance v5, Ljava/util/LinkedHashMap;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    invoke-direct {v6, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v2, v5

    .line 435
    .local v2, "claims":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 437
    .local v4, "omittedClaim":Ljava/lang/String;
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 438
    goto :goto_1

    .line 433
    .end local v2    # "claims":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "omittedClaim":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    goto :goto_0

    .line 440
    .restart local v2    # "claims":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public getExpirationTime()Lorg/jose4j/jwt/NumericDate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, v0

    const-string/jumbo v2, "exp"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwt/JwtClaims;->getNumericDateClaimValue(Ljava/lang/String;)Lorg/jose4j/jwt/NumericDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public getIssuedAt()Lorg/jose4j/jwt/NumericDate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, v0

    const-string/jumbo v2, "iat"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwt/JwtClaims;->getNumericDateClaimValue(Ljava/lang/String;)Lorg/jose4j/jwt/NumericDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, v0

    const-string/jumbo v2, "iss"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public getJwtId()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, v0

    const-string/jumbo v2, "jti"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public getNotBefore()Lorg/jose4j/jwt/NumericDate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, v0

    const-string/jumbo v2, "nbf"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwt/JwtClaims;->getNumericDateClaimValue(Ljava/lang/String;)Lorg/jose4j/jwt/NumericDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public getNumericDateClaimValue(Ljava/lang/String;)Lorg/jose4j/jwt/NumericDate;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 277
    move-object v1, p0

    .local v1, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v2, p1

    .local v2, "claimName":Ljava/lang/String;
    move-object v4, v1

    move-object v5, v2

    const-class v6, Ljava/lang/Number;

    invoke-virtual {v4, v5, v6}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    move-object v3, v4

    .line 278
    .local v3, "number":Ljava/lang/Number;
    move-object v4, v3

    instance-of v4, v4, Ljava/math/BigInteger;

    if-eqz v4, :cond_0

    .line 280
    new-instance v4, Lorg/jose4j/jwt/MalformedClaimException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is unreasonable for a NumericDate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jose4j/jwt/MalformedClaimException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 282
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/jose4j/jwt/NumericDate;->fromSeconds(J)Lorg/jose4j/jwt/NumericDate;

    move-result-object v4

    :goto_0
    move-object v1, v4

    .end local v1    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v1

    .restart local v1    # "this":Lorg/jose4j/jwt/JwtClaims;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getRawJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwt/JwtClaims;->rawJson:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public getStringClaimValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "claimName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public getStringListClaimValue(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "claimName":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    const-class v5, Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v2, v3

    .line 311
    .local v2, "listClaimValue":Ljava/util/List;
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/jose4j/jwt/JwtClaims;->toStringList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, v0

    const-string/jumbo v2, "sub"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public hasAudience()Z
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, v0

    const-string/jumbo v2, "aud"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwt/JwtClaims;->hasClaim(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return v0
.end method

.method public hasClaim(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "claimName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return v0

    .restart local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isClaimValueOfType(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 7

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "claimName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Ljava/lang/Class;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    :try_start_0
    invoke-virtual {v4, v5, v6}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jose4j/jwt/MalformedClaimException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 347
    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    :goto_1
    return v0

    .line 343
    .restart local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 347
    .local v3, "e":Lorg/jose4j/jwt/MalformedClaimException;
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public isClaimValueString(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "claimName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwt/JwtClaims;->isClaimValueOfType(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return v0
.end method

.method public isClaimValueStringList(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "claimName":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/JwtClaims;->hasClaim(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/jwt/JwtClaims;->getStringListClaimValue(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lorg/jose4j/jwt/MalformedClaimException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 369
    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    :goto_1
    return v0

    .line 365
    .restart local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 369
    .local v2, "e":Lorg/jose4j/jwt/MalformedClaimException;
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public setAudience(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "audience":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    const-string/jumbo v3, "aud"

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 93
    return-void
.end method

.method public setAudience(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "audiences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 104
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/jose4j/jwt/JwtClaims;->setAudience(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    const-string/jumbo v3, "aud"

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public varargs setAudience([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "audience":[Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jose4j/jwt/JwtClaims;->setAudience(Ljava/util/List;)V

    .line 98
    return-void
.end method

.method public setClaim(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "claimName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 337
    return-void
.end method

.method public setExpirationTime(Lorg/jose4j/jwt/NumericDate;)V
    .locals 5

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "expirationTime":Lorg/jose4j/jwt/NumericDate;
    move-object v2, v0

    const-string/jumbo v3, "exp"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwt/JwtClaims;->setNumericDateClaim(Ljava/lang/String;Lorg/jose4j/jwt/NumericDate;)V

    .line 175
    return-void
.end method

.method public setExpirationTimeMinutesInTheFuture(F)V
    .locals 5

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move v1, p1

    .local v1, "minutes":F
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lorg/jose4j/jwt/JwtClaims;->offsetFromNow(F)Lorg/jose4j/jwt/NumericDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jose4j/jwt/JwtClaims;->setExpirationTime(Lorg/jose4j/jwt/NumericDate;)V

    .line 180
    return-void
.end method

.method public setGeneratedJwtId()V
    .locals 3

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, v0

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/jose4j/jwt/JwtClaims;->setGeneratedJwtId(I)V

    .line 240
    return-void
.end method

.method public setGeneratedJwtId(I)V
    .locals 6

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move v1, p1

    .local v1, "numberOfBytes":I
    move v4, v1

    invoke-static {v4}, Lorg/jose4j/lang/ByteUtil;->randomBytes(I)[B

    move-result-object v4

    move-object v2, v4

    .line 233
    .local v2, "rndbytes":[B
    move-object v4, v2

    invoke-static {v4}, Lorg/jose4j/base64url/Base64Url;->encode([B)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 234
    .local v3, "jti":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/jose4j/jwt/JwtClaims;->setJwtId(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public setIssuedAt(Lorg/jose4j/jwt/NumericDate;)V
    .locals 5

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "issuedAt":Lorg/jose4j/jwt/NumericDate;
    move-object v2, v0

    const-string/jumbo v3, "iat"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwt/JwtClaims;->setNumericDateClaim(Ljava/lang/String;Lorg/jose4j/jwt/NumericDate;)V

    .line 213
    return-void
.end method

.method public setIssuedAtToNow()V
    .locals 3

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, v0

    invoke-static {}, Lorg/jose4j/jwt/NumericDate;->now()Lorg/jose4j/jwt/NumericDate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jose4j/jwt/JwtClaims;->setIssuedAt(Lorg/jose4j/jwt/NumericDate;)V

    .line 218
    return-void
.end method

.method public setIssuer(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "issuer":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    const-string/jumbo v3, "iss"

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 78
    return-void
.end method

.method public setJwtId(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "jwtId":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    const-string/jumbo v3, "jti"

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 228
    return-void
.end method

.method public setNotBefore(Lorg/jose4j/jwt/NumericDate;)V
    .locals 5

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "notBefore":Lorg/jose4j/jwt/NumericDate;
    move-object v2, v0

    const-string/jumbo v3, "nbf"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwt/JwtClaims;->setNumericDateClaim(Ljava/lang/String;Lorg/jose4j/jwt/NumericDate;)V

    .line 198
    return-void
.end method

.method public setNotBeforeMinutesInThePast(F)V
    .locals 6

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move v1, p1

    .local v1, "minutes":F
    move-object v2, v0

    move-object v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    move v5, v1

    mul-float/2addr v4, v5

    invoke-direct {v3, v4}, Lorg/jose4j/jwt/JwtClaims;->offsetFromNow(F)Lorg/jose4j/jwt/NumericDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jose4j/jwt/JwtClaims;->setNotBefore(Lorg/jose4j/jwt/NumericDate;)V

    .line 203
    return-void
.end method

.method public setNumericDateClaim(Ljava/lang/String;Lorg/jose4j/jwt/NumericDate;)V
    .locals 8

    .prologue
    .line 316
    move-object v1, p0

    .local v1, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v2, p1

    .local v2, "claimName":Ljava/lang/String;
    move-object v3, p2

    .local v3, "value":Lorg/jose4j/jwt/NumericDate;
    move-object v4, v1

    iget-object v4, v4, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    move-object v5, v2

    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_0
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 317
    return-void

    .line 316
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public setStringClaim(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "claimName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 322
    return-void
.end method

.method public setStringListClaim(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "claimName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 327
    return-void
.end method

.method public varargs setStringListClaim(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "claimName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "values":[Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 332
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "subject":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    const-string/jumbo v3, "sub"

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 88
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    invoke-static {v1}, Lorg/jose4j/json/JsonUtil;->toJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JWT Claims Set:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/JwtClaims;
    return-object v0
.end method

.method public unsetClaim(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/JwtClaims;
    move-object v1, p1

    .local v1, "claimName":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 245
    return-void
.end method
