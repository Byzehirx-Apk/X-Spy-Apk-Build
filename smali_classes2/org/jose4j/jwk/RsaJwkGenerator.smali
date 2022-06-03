.class public Lorg/jose4j/jwk/RsaJwkGenerator;
.super Ljava/lang/Object;
.source "RsaJwkGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/RsaJwkGenerator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateJwk(I)Lorg/jose4j/jwk/RsaJsonWebKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 31
    move v0, p0

    .local v0, "bits":I
    move v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/jose4j/jwk/RsaJwkGenerator;->generateJwk(ILjava/lang/String;Ljava/security/SecureRandom;)Lorg/jose4j/jwk/RsaJsonWebKey;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "bits":I
    return-object v0
.end method

.method public static generateJwk(ILjava/lang/String;Ljava/security/SecureRandom;)Lorg/jose4j/jwk/RsaJsonWebKey;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 36
    move v0, p0

    .local v0, "bits":I
    move-object v1, p1

    .local v1, "provider":Ljava/lang/String;
    move-object v2, p2

    .local v2, "secureRandom":Ljava/security/SecureRandom;
    new-instance v6, Lorg/jose4j/keys/RsaKeyUtil;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lorg/jose4j/keys/RsaKeyUtil;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    move-object v3, v6

    .line 37
    .local v3, "keyUtil":Lorg/jose4j/keys/RsaKeyUtil;
    move-object v6, v3

    move v7, v0

    invoke-virtual {v6, v7}, Lorg/jose4j/keys/RsaKeyUtil;->generateKeyPair(I)Ljava/security/KeyPair;

    move-result-object v6

    move-object v4, v6

    .line 38
    .local v4, "keyPair":Ljava/security/KeyPair;
    move-object v6, v4

    invoke-virtual {v6}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v6

    invoke-static {v6}, Lorg/jose4j/jwk/PublicJsonWebKey$Factory;->newPublicJwk(Ljava/security/Key;)Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object v6

    check-cast v6, Lorg/jose4j/jwk/RsaJsonWebKey;

    move-object v5, v6

    .line 39
    .local v5, "rsaJwk":Lorg/jose4j/jwk/RsaJsonWebKey;
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v7}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jose4j/jwk/RsaJsonWebKey;->setPrivateKey(Ljava/security/PrivateKey;)V

    .line 40
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "bits":I
    return-object v0
.end method
