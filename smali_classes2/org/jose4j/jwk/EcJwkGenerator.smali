.class public Lorg/jose4j/jwk/EcJwkGenerator;
.super Ljava/lang/Object;
.source "EcJwkGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/EcJwkGenerator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateJwk(Ljava/security/spec/ECParameterSpec;)Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "spec":Ljava/security/spec/ECParameterSpec;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/jose4j/jwk/EcJwkGenerator;->generateJwk(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "spec":Ljava/security/spec/ECParameterSpec;
    return-object v0
.end method

.method public static generateJwk(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "spec":Ljava/security/spec/ECParameterSpec;
    move-object v1, p1

    .local v1, "provider":Ljava/lang/String;
    move-object v2, p2

    .local v2, "secureRandom":Ljava/security/SecureRandom;
    new-instance v7, Lorg/jose4j/keys/EcKeyUtil;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lorg/jose4j/keys/EcKeyUtil;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    move-object v3, v7

    .line 39
    .local v3, "keyUtil":Lorg/jose4j/keys/EcKeyUtil;
    move-object v7, v3

    move-object v8, v0

    invoke-virtual {v7, v8}, Lorg/jose4j/keys/EcKeyUtil;->generateKeyPair(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v7

    move-object v4, v7

    .line 40
    .local v4, "keyPair":Ljava/security/KeyPair;
    move-object v7, v4

    invoke-virtual {v7}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v7

    move-object v5, v7

    .line 41
    .local v5, "publicKey":Ljava/security/PublicKey;
    move-object v7, v5

    invoke-static {v7}, Lorg/jose4j/jwk/PublicJsonWebKey$Factory;->newPublicJwk(Ljava/security/Key;)Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object v7

    check-cast v7, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    move-object v6, v7

    .line 42
    .local v6, "ecJwk":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v8}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->setPrivateKey(Ljava/security/PrivateKey;)V

    .line 43
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "spec":Ljava/security/spec/ECParameterSpec;
    return-object v0
.end method
