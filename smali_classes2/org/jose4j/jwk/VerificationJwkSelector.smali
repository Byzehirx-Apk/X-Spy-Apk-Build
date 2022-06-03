.class public Lorg/jose4j/jwk/VerificationJwkSelector;
.super Ljava/lang/Object;
.source "VerificationJwkSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/VerificationJwkSelector;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasMoreThanOne(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/VerificationJwkSelector;
    move-object v1, p1

    .local v1, "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jwk/VerificationJwkSelector;
    return v0

    .restart local v0    # "this":Lorg/jose4j/jwk/VerificationJwkSelector;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public select(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jws/JsonWebSignature;",
            "Ljava/util/Collection",
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
    .line 33
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/VerificationJwkSelector;
    move-object v1, p1

    .local v1, "jws":Lorg/jose4j/jws/JsonWebSignature;
    move-object v2, p2

    .local v2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/jose4j/jwk/VerificationJwkSelector;->selectList(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    .line 34
    .local v3, "jsonWebKeys":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/jwk/VerificationJwkSelector;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jwk/VerificationJwkSelector;
    :cond_0
    move-object v4, v3

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jose4j/jwk/JsonWebKey;

    goto :goto_0
.end method

.method public selectList(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jws/JsonWebSignature;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/VerificationJwkSelector;
    move-object v1, p1

    .local v1, "jws":Lorg/jose4j/jws/JsonWebSignature;
    move-object v2, p2

    .local v2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v7, v1

    invoke-static {v7}, Lorg/jose4j/jwk/SelectorSupport;->filterForInboundSigned(Lorg/jose4j/jws/JsonWebSignature;)Lorg/jose4j/jwk/SimpleJwkFilter;

    move-result-object v7

    move-object v3, v7

    .line 40
    .local v3, "filter":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v7, v8}, Lorg/jose4j/jwk/SimpleJwkFilter;->filter(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    move-object v4, v7

    .line 42
    .local v4, "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/jose4j/jwk/VerificationJwkSelector;->hasMoreThanOne(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 44
    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmHeaderValue()Ljava/lang/String;

    move-result-object v8

    sget-boolean v9, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    invoke-virtual {v7, v8, v9}, Lorg/jose4j/jwk/SimpleJwkFilter;->setAlg(Ljava/lang/String;Z)V

    .line 45
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Lorg/jose4j/jwk/SimpleJwkFilter;->filter(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    move-object v4, v7

    .line 48
    :cond_0
    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/jose4j/jwk/VerificationJwkSelector;->hasMoreThanOne(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "EC"

    move-object v8, v1

    invoke-virtual {v8}, Lorg/jose4j/jws/JsonWebSignature;->getKeyType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 50
    move-object v7, v1

    invoke-virtual {v7}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v7

    move-object v5, v7

    .line 51
    .local v5, "algorithm":Lorg/jose4j/jws/JsonWebSignatureAlgorithm;
    move-object v7, v5

    check-cast v7, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;

    move-object v6, v7

    .line 52
    .local v6, "ecdsaAlgorithm":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
    move-object v7, v3

    move-object v8, v6

    invoke-virtual {v8}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->getCurveName()Ljava/lang/String;

    move-result-object v8

    sget-boolean v9, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    invoke-virtual {v7, v8, v9}, Lorg/jose4j/jwk/SimpleJwkFilter;->setCrv(Ljava/lang/String;Z)V

    .line 53
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Lorg/jose4j/jwk/SimpleJwkFilter;->filter(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    move-object v4, v7

    .line 56
    .end local v5    # "algorithm":Lorg/jose4j/jws/JsonWebSignatureAlgorithm;
    .end local v6    # "ecdsaAlgorithm":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
    :cond_1
    move-object v7, v4

    move-object v0, v7

    .end local v0    # "this":Lorg/jose4j/jwk/VerificationJwkSelector;
    return-object v0
.end method

.method public selectWithVerifySignatureDisambiguate(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jws/JsonWebSignature;",
            "Ljava/util/Collection",
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
    .line 63
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/VerificationJwkSelector;
    move-object v1, p1

    .local v1, "jws":Lorg/jose4j/jws/JsonWebSignature;
    move-object v2, p2

    .local v2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/jose4j/jwk/VerificationJwkSelector;->selectList(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    move-object v3, v6

    .line 64
    .local v3, "jsonWebKeys":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    const/4 v6, 0x0

    move-object v0, v6

    .line 83
    .end local v0    # "this":Lorg/jose4j/jwk/VerificationJwkSelector;
    :goto_0
    return-object v0

    .line 68
    .restart local v0    # "this":Lorg/jose4j/jwk/VerificationJwkSelector;
    :cond_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 70
    move-object v6, v3

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jose4j/jwk/JsonWebKey;

    move-object v0, v6

    goto :goto_0

    .line 74
    :cond_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jose4j/jwk/JsonWebKey;

    move-object v5, v6

    .line 76
    .local v5, "jwk":Lorg/jose4j/jwk/JsonWebKey;
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Lorg/jose4j/jwk/JsonWebKey;->getKey()Ljava/security/Key;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jose4j/jws/JsonWebSignature;->setKey(Ljava/security/Key;)V

    .line 77
    move-object v6, v1

    invoke-virtual {v6}, Lorg/jose4j/jws/JsonWebSignature;->verifySignature()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 81
    :cond_2
    goto :goto_1

    .line 83
    .end local v5    # "jwk":Lorg/jose4j/jwk/JsonWebKey;
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method
