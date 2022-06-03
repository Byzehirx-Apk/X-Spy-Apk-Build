.class public Lorg/jose4j/jwk/JsonWebKeySet;
.super Ljava/lang/Object;
.source "JsonWebKeySet.java"


# static fields
.field public static final JWK_SET_MEMBER_NAME:Ljava/lang/String; = "keys"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/jose4j/jwk/JsonWebKeySet;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwk/JsonWebKeySet;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKeySet;
    move-object v1, p1

    .local v1, "json":Ljava/lang/String;
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v7, v1

    invoke-static {v7}, Lorg/jose4j/json/JsonUtil;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    move-object v2, v7

    .line 39
    .local v2, "parsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v7, v2

    const-string/jumbo v8, "keys"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move-object v3, v7

    .line 41
    .local v3, "jwkParamMapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    move-object v7, v3

    if-nez v7, :cond_0

    .line 43
    new-instance v7, Lorg/jose4j/lang/JoseException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string/jumbo v9, "The JSON JWKS content does not include the keys member."

    invoke-direct {v8, v9}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 46
    :cond_0
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v7, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    .line 47
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    move-object v5, v7

    .line 51
    .local v5, "jwkParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v7, v5

    :try_start_0
    invoke-static {v7}, Lorg/jose4j/jwk/JsonWebKey$Factory;->newJwk(Ljava/util/Map;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object v7

    move-object v6, v7

    .line 52
    .local v6, "jwk":Lorg/jose4j/jwk/JsonWebKey;
    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 57
    .line 58
    .end local v6    # "jwk":Lorg/jose4j/jwk/JsonWebKey;
    :goto_1
    goto :goto_0

    .line 54
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 56
    .local v6, "e":Ljava/lang/Exception;
    sget-object v7, Lorg/jose4j/jwk/JsonWebKeySet;->log:Lorg/slf4j/Logger;

    const-string/jumbo v8, "Ignoring an individual JWK in a JWKS due to a problem processing it. JWK params: {} and the full JWKS content: {}. {}"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v5

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move-object v12, v6

    aput-object v12, v10, v11

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 59
    .end local v5    # "jwkParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKeySet;
    move-object v1, p1

    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<+Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 68
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v4, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    .line 69
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jose4j/jwk/JsonWebKey;

    move-object v3, v4

    .line 71
    .local v3, "jwk":Lorg/jose4j/jwk/JsonWebKey;
    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 72
    goto :goto_0

    .line 73
    .end local v3    # "jwk":Lorg/jose4j/jwk/JsonWebKey;
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lorg/jose4j/jwk/JsonWebKey;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKeySet;
    move-object v1, p1

    .local v1, "keys":[Lorg/jose4j/jwk/JsonWebKey;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jose4j/jwk/JsonWebKeySet;-><init>(Ljava/util/List;)V

    .line 64
    return-void
.end method


# virtual methods
.method public addJsonWebKey(Lorg/jose4j/jwk/JsonWebKey;)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKeySet;
    move-object v1, p1

    .local v1, "jsonWebKey":Lorg/jose4j/jwk/JsonWebKey;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 78
    return-void
.end method

.method public findJsonWebKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 11

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKeySet;
    move-object v1, p1

    .local v1, "keyId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "keyType":Ljava/lang/String;
    move-object v3, p3

    .local v3, "use":Ljava/lang/String;
    move-object v4, p4

    .local v4, "algorithm":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/jose4j/jwk/JsonWebKeySet;->findJsonWebKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move-object v5, v6

    .line 88
    .local v5, "found":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    move-object v0, v6

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKeySet;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jwk/JsonWebKeySet;
    :cond_0
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jose4j/jwk/JsonWebKey;

    goto :goto_0
.end method

.method public findJsonWebKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKeySet;
    move-object v1, p1

    .local v1, "keyId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "keyType":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "use":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "algorithm":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v9

    .line 94
    .local v5, "found":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v6, v9

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jose4j/jwk/JsonWebKey;

    move-object v7, v9

    .line 96
    .local v7, "jwk":Lorg/jose4j/jwk/JsonWebKey;
    const/4 v9, 0x1

    move v8, v9

    .line 98
    .local v8, "isMeetsCriteria":Z
    move-object v9, v1

    if-eqz v9, :cond_0

    .line 100
    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v10}, Lorg/jose4j/jwk/JsonWebKey;->getKeyId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v8, v9

    .line 103
    :cond_0
    move-object v9, v3

    if-eqz v9, :cond_1

    .line 105
    move v9, v8

    move-object v10, v3

    move-object v11, v7

    invoke-virtual {v11}, Lorg/jose4j/jwk/JsonWebKey;->getUse()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    and-int/2addr v9, v10

    move v8, v9

    .line 108
    :cond_1
    move-object v9, v2

    if-eqz v9, :cond_2

    .line 110
    move v9, v8

    move-object v10, v2

    move-object v11, v7

    invoke-virtual {v11}, Lorg/jose4j/jwk/JsonWebKey;->getKeyType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    and-int/2addr v9, v10

    move v8, v9

    .line 113
    :cond_2
    move-object v9, v4

    if-eqz v9, :cond_3

    .line 115
    move v9, v8

    move-object v10, v4

    move-object v11, v7

    invoke-virtual {v11}, Lorg/jose4j/jwk/JsonWebKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    and-int/2addr v9, v10

    move v8, v9

    .line 118
    :cond_3
    move v9, v8

    if-eqz v9, :cond_4

    .line 120
    move-object v9, v5

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 122
    :cond_4
    goto :goto_0

    .line 123
    .end local v7    # "jwk":Lorg/jose4j/jwk/JsonWebKey;
    .end local v8    # "isMeetsCriteria":Z
    :cond_5
    move-object v9, v5

    move-object v0, v9

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKeySet;
    return-object v0
.end method

.method public getJsonWebKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKeySet;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKeySet;
    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKeySet;
    move-object v1, v0

    sget-object v2, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->INCLUDE_SYMMETRIC:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    invoke-virtual {v1, v2}, Lorg/jose4j/jwk/JsonWebKeySet;->toJson(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKeySet;
    return-object v0
.end method

.method public toJson(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKeySet;
    move-object v1, p1

    .local v1, "outputControlLevel":Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v6

    .line 135
    .local v2, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jose4j/jwk/JsonWebKey;

    move-object v4, v6

    .line 137
    .local v4, "key":Lorg/jose4j/jwk/JsonWebKey;
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/jose4j/jwk/JsonWebKey;->toParams(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/util/Map;

    move-result-object v6

    move-object v5, v6

    .line 138
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v6, v2

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 139
    goto :goto_0

    .line 141
    .end local v4    # "key":Lorg/jose4j/jwk/JsonWebKey;
    .end local v5    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v6, Ljava/util/LinkedHashMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v3, v6

    .line 142
    .local v3, "jwks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v6, v3

    const-string/jumbo v7, "keys"

    move-object v8, v2

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 143
    move-object v6, v3

    invoke-static {v6}, Lorg/jose4j/json/JsonUtil;->toJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKeySet;
    return-object v0
.end method
