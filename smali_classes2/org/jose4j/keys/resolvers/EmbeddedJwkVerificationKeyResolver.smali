.class public Lorg/jose4j/keys/resolvers/EmbeddedJwkVerificationKeyResolver;
.super Ljava/lang/Object;
.source "EmbeddedJwkVerificationKeyResolver.java"

# interfaces
.implements Lorg/jose4j/keys/resolvers/VerificationKeyResolver;


# instance fields
.field private jwk:Lorg/jose4j/jwk/PublicJsonWebKey;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/resolvers/EmbeddedJwkVerificationKeyResolver;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJwk()Lorg/jose4j/jwk/PublicJsonWebKey;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/resolvers/EmbeddedJwkVerificationKeyResolver;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/keys/resolvers/EmbeddedJwkVerificationKeyResolver;->jwk:Lorg/jose4j/jwk/PublicJsonWebKey;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/keys/resolvers/EmbeddedJwkVerificationKeyResolver;
    return-object v0
.end method

.method public resolveKey(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Ljava/security/Key;
    .locals 9
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
    .line 28
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/resolvers/EmbeddedJwkVerificationKeyResolver;
    move-object v1, p1

    .local v1, "jws":Lorg/jose4j/jws/JsonWebSignature;
    move-object v2, p2

    .local v2, "nestingContext":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwx/JsonWebStructure;>;"
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Lorg/jose4j/jws/JsonWebSignature;->getJwkHeader()Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object v5

    iput-object v5, v4, Lorg/jose4j/keys/resolvers/EmbeddedJwkVerificationKeyResolver;->jwk:Lorg/jose4j/jwk/PublicJsonWebKey;
    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 35
    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/keys/resolvers/EmbeddedJwkVerificationKeyResolver;->jwk:Lorg/jose4j/jwk/PublicJsonWebKey;

    if-nez v4, :cond_0

    .line 37
    new-instance v4, Lorg/jose4j/lang/UnresolvableKeyException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "No jwk in JWS header"

    invoke-direct {v5, v6}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 30
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 32
    .local v3, "e":Lorg/jose4j/lang/JoseException;
    new-instance v4, Lorg/jose4j/lang/UnresolvableKeyException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "Problem processing jwk from JWS header"

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 40
    .end local v3    # "e":Lorg/jose4j/lang/JoseException;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/keys/resolvers/EmbeddedJwkVerificationKeyResolver;->jwk:Lorg/jose4j/jwk/PublicJsonWebKey;

    invoke-virtual {v4}, Lorg/jose4j/jwk/PublicJsonWebKey;->getKey()Ljava/security/Key;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/keys/resolvers/EmbeddedJwkVerificationKeyResolver;
    return-object v0
.end method
