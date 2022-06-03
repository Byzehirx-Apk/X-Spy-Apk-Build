.class public Lorg/jose4j/jwk/DecryptionJwkSelector;
.super Ljava/lang/Object;
.source "DecryptionJwkSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/DecryptionJwkSelector;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Lorg/jose4j/jwe/JsonWebEncryption;Ljava/util/Collection;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jwe/JsonWebEncryption;",
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
    .line 32
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/DecryptionJwkSelector;
    move-object v1, p1

    .local v1, "jwe":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v2, p2

    .local v2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/jose4j/jwk/DecryptionJwkSelector;->selectList(Lorg/jose4j/jwe/JsonWebEncryption;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    .line 33
    .local v3, "jsonWebKeys":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/jwk/DecryptionJwkSelector;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jwk/DecryptionJwkSelector;
    :cond_0
    move-object v4, v3

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jose4j/jwk/JsonWebKey;

    goto :goto_0
.end method

.method public selectList(Lorg/jose4j/jwe/JsonWebEncryption;Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jwe/JsonWebEncryption;",
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
    .line 38
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/DecryptionJwkSelector;
    move-object v1, p1

    .local v1, "jwe":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v2, p2

    .local v2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v4, v1

    invoke-static {v4}, Lorg/jose4j/jwk/SelectorSupport;->filterForInboundEncrypted(Lorg/jose4j/jwe/JsonWebEncryption;)Lorg/jose4j/jwk/SimpleJwkFilter;

    move-result-object v4

    move-object v3, v4

    .line 39
    .local v3, "filter":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/jose4j/jwk/SimpleJwkFilter;->filter(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/jwk/DecryptionJwkSelector;
    return-object v0
.end method
