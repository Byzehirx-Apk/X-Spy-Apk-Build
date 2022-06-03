.class public Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;
.super Ljava/lang/Object;
.source "JwksVerificationKeyResolver.java"

# interfaces
.implements Lorg/jose4j/keys/resolvers/VerificationKeyResolver;


# instance fields
.field private disambiguateWithVerifySignature:Z

.field private jsonWebKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation
.end field

.field private selector:Lorg/jose4j/jwk/VerificationJwkSelector;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;
    move-object v1, p1

    .local v1, "jsonWebKeys":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v2, v0

    new-instance v3, Lorg/jose4j/jwk/VerificationJwkSelector;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/jose4j/jwk/VerificationJwkSelector;-><init>()V

    iput-object v3, v2, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->selector:Lorg/jose4j/jwk/VerificationJwkSelector;

    .line 39
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->jsonWebKeys:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public resolveKey(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Ljava/security/Key;
    .locals 11
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
    .line 48
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;
    move-object v1, p1

    .local v1, "jws":Lorg/jose4j/jws/JsonWebSignature;
    move-object v2, p2

    .local v2, "nestingContext":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwx/JsonWebStructure;>;"
    move-object v6, v0

    :try_start_0
    iget-boolean v6, v6, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->disambiguateWithVerifySignature:Z

    if-eqz v6, :cond_0

    .line 50
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->selector:Lorg/jose4j/jwk/VerificationJwkSelector;

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->jsonWebKeys:Ljava/util/List;

    invoke-virtual {v6, v7, v8}, Lorg/jose4j/jwk/VerificationJwkSelector;->selectWithVerifySignatureDisambiguate(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Lorg/jose4j/jwk/JsonWebKey;
    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v3, v6

    .line 63
    .line 65
    .local v3, "selected":Lorg/jose4j/jwk/JsonWebKey;
    :goto_0
    move-object v6, v3

    if-nez v6, :cond_1

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v6

    .line 68
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v6, v4

    const-string/jumbo v7, "Unable to find a suitable verification key for JWS w/ header "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lorg/jose4j/jws/JsonWebSignature;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 69
    move-object v6, v4

    const-string/jumbo v7, " from JWKs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->jsonWebKeys:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 70
    new-instance v6, Lorg/jose4j/lang/UnresolvableKeyException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 54
    .end local v3    # "selected":Lorg/jose4j/jwk/JsonWebKey;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->selector:Lorg/jose4j/jwk/VerificationJwkSelector;

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->jsonWebKeys:Ljava/util/List;

    invoke-virtual {v6, v7, v8}, Lorg/jose4j/jwk/VerificationJwkSelector;->select(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Lorg/jose4j/jwk/JsonWebKey;
    :try_end_1
    .catch Lorg/jose4j/lang/JoseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    move-object v3, v6

    .restart local v3    # "selected":Lorg/jose4j/jwk/JsonWebKey;
    goto :goto_0

    .line 57
    .end local v3    # "selected":Lorg/jose4j/jwk/JsonWebKey;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 59
    .local v4, "e":Lorg/jose4j/lang/JoseException;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v6

    .line 60
    .local v5, "sb":Ljava/lang/StringBuilder;
    move-object v6, v5

    const-string/jumbo v7, "Unable to find a suitable verification key for JWS w/ header "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lorg/jose4j/jws/JsonWebSignature;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 61
    move-object v6, v5

    const-string/jumbo v7, " due to an unexpected exception ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") selecting from keys: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->jsonWebKeys:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 62
    new-instance v6, Lorg/jose4j/lang/UnresolvableKeyException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 73
    .end local v4    # "e":Lorg/jose4j/lang/JoseException;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "selected":Lorg/jose4j/jwk/JsonWebKey;
    :cond_1
    move-object v6, v3

    invoke-virtual {v6}, Lorg/jose4j/jwk/JsonWebKey;->getKey()Ljava/security/Key;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;
    return-object v0
.end method

.method public setDisambiguateWithVerifySignature(Z)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;
    move v1, p1

    .local v1, "disambiguateWithVerifySignature":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->disambiguateWithVerifySignature:Z

    .line 83
    return-void
.end method
