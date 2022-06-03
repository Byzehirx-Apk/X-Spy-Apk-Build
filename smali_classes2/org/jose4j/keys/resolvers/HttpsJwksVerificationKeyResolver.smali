.class public Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;
.super Ljava/lang/Object;
.source "HttpsJwksVerificationKeyResolver.java"

# interfaces
.implements Lorg/jose4j/keys/resolvers/VerificationKeyResolver;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private disambiguateWithVerifySignature:Z

.field private httpsJkws:Lorg/jose4j/jwk/HttpsJwks;

.field private verificationJwkSelector:Lorg/jose4j/jwk/VerificationJwkSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/jose4j/jwk/HttpsJwks;)V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;
    move-object v1, p1

    .local v1, "httpsJkws":Lorg/jose4j/jwk/HttpsJwks;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v2, v0

    new-instance v3, Lorg/jose4j/jwk/VerificationJwkSelector;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/jose4j/jwk/VerificationJwkSelector;-><init>()V

    iput-object v3, v2, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->verificationJwkSelector:Lorg/jose4j/jwk/VerificationJwkSelector;

    .line 47
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->httpsJkws:Lorg/jose4j/jwk/HttpsJwks;

    .line 48
    return-void
.end method


# virtual methods
.method public resolveKey(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Ljava/security/Key;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jws/JsonWebSignature;",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;)",
            "Ljava/security/Key;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/UnresolvableKeyException;
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;
    move-object v1, p1

    .local v1, "jws":Lorg/jose4j/jws/JsonWebSignature;
    move-object/from16 v2, p2

    .local v2, "nestingContext":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwx/JsonWebStructure;>;"
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->httpsJkws:Lorg/jose4j/jwk/HttpsJwks;

    invoke-virtual {v7}, Lorg/jose4j/jwk/HttpsJwks;->getJsonWebKeys()Ljava/util/List;

    move-result-object v7

    move-object v4, v7

    .line 60
    .local v4, "jsonWebKeys":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->select(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object v7

    move-object v3, v7

    .line 61
    .local v3, "theChosenOne":Lorg/jose4j/jwk/JsonWebKey;
    move-object v7, v3

    if-nez v7, :cond_0

    .line 63
    sget-object v7, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->log:Lorg/slf4j/Logger;

    const-string/jumbo v8, "Refreshing JWKs from {} as no suitable verification key for JWS w/ header {} was found in {}"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->httpsJkws:Lorg/jose4j/jwk/HttpsJwks;

    invoke-virtual {v12}, Lorg/jose4j/jwk/HttpsJwks;->getLocation()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v1

    invoke-virtual {v12}, Lorg/jose4j/jws/JsonWebSignature;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v12

    invoke-virtual {v12}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move-object v12, v4

    aput-object v12, v10, v11

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->httpsJkws:Lorg/jose4j/jwk/HttpsJwks;

    invoke-virtual {v7}, Lorg/jose4j/jwk/HttpsJwks;->refresh()V

    .line 66
    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->httpsJkws:Lorg/jose4j/jwk/HttpsJwks;

    invoke-virtual {v7}, Lorg/jose4j/jwk/HttpsJwks;->getJsonWebKeys()Ljava/util/List;

    move-result-object v7

    move-object v4, v7

    .line 67
    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->select(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Lorg/jose4j/jwk/JsonWebKey;
    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    move-object v3, v7

    .line 76
    .line 78
    :cond_0
    move-object v7, v3

    if-nez v7, :cond_1

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v7

    .line 81
    .local v5, "sb":Ljava/lang/StringBuilder;
    move-object v7, v5

    const-string/jumbo v8, "Unable to find a suitable verification key for JWS w/ header "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Lorg/jose4j/jws/JsonWebSignature;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 82
    move-object v7, v5

    const-string/jumbo v8, " from JWKs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " obtained from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->httpsJkws:Lorg/jose4j/jwk/HttpsJwks;

    invoke-virtual {v8}, Lorg/jose4j/jwk/HttpsJwks;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 83
    new-instance v7, Lorg/jose4j/lang/UnresolvableKeyException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 70
    .end local v3    # "theChosenOne":Lorg/jose4j/jwk/JsonWebKey;
    .end local v4    # "jsonWebKeys":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    :goto_0
    move-object v5, v7

    .line 72
    .local v5, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v7

    .line 73
    .local v6, "sb":Ljava/lang/StringBuilder;
    move-object v7, v6

    const-string/jumbo v8, "Unable to find a suitable verification key for JWS w/ header "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Lorg/jose4j/jws/JsonWebSignature;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 74
    move-object v7, v6

    const-string/jumbo v8, " due to an unexpected exception ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") while obtaining or using keys from JWKS endpoint at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->httpsJkws:Lorg/jose4j/jwk/HttpsJwks;

    invoke-virtual {v8}, Lorg/jose4j/jwk/HttpsJwks;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 75
    new-instance v7, Lorg/jose4j/lang/UnresolvableKeyException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 86
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "theChosenOne":Lorg/jose4j/jwk/JsonWebKey;
    .restart local v4    # "jsonWebKeys":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Lorg/jose4j/jwk/JsonWebKey;->getKey()Ljava/security/Key;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;
    return-object v0

    .line 70
    .end local v3    # "theChosenOne":Lorg/jose4j/jwk/JsonWebKey;
    .end local v4    # "jsonWebKeys":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    .restart local v0    # "this":Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method protected select(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jws/JsonWebSignature;",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;)",
            "Lorg/jose4j/jwk/JsonWebKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;
    move-object v1, p1

    .local v1, "jws":Lorg/jose4j/jws/JsonWebSignature;
    move-object v2, p2

    .local v2, "jsonWebKeys":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v3, v0

    iget-boolean v3, v3, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->disambiguateWithVerifySignature:Z

    if-eqz v3, :cond_0

    .line 93
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->verificationJwkSelector:Lorg/jose4j/jwk/VerificationJwkSelector;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/jose4j/jwk/VerificationJwkSelector;->selectWithVerifySignatureDisambiguate(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object v3

    move-object v0, v3

    .line 97
    .end local v0    # "this":Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->verificationJwkSelector:Lorg/jose4j/jwk/VerificationJwkSelector;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/jose4j/jwk/VerificationJwkSelector;->select(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public setDisambiguateWithVerifySignature(Z)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;
    move v1, p1

    .local v1, "disambiguateWithVerifySignature":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->disambiguateWithVerifySignature:Z

    .line 108
    return-void
.end method
