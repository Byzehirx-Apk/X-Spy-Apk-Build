.class public Lorg/jose4j/keys/EcKeyUtil;
.super Lorg/jose4j/keys/KeyPairUtil;
.source "EcKeyUtil.java"


# static fields
.field public static final EC:Ljava/lang/String; = "EC"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/EcKeyUtil;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/jose4j/keys/EcKeyUtil;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/SecureRandom;)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/EcKeyUtil;
    move-object v1, p1

    .local v1, "provider":Ljava/lang/String;
    move-object v2, p2

    .local v2, "secureRandom":Ljava/security/SecureRandom;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/jose4j/keys/KeyPairUtil;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic fromPemEncoded(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/EcKeyUtil;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/jose4j/keys/KeyPairUtil;->fromPemEncoded(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/keys/EcKeyUtil;
    return-object v0
.end method

.method public generateKeyPair(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/EcKeyUtil;
    move-object v1, p1

    .local v1, "spec":Ljava/security/spec/ECParameterSpec;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/jose4j/keys/EcKeyUtil;->getKeyPairGenerator()Ljava/security/KeyPairGenerator;

    move-result-object v4

    move-object v2, v4

    .line 86
    .local v2, "keyGenerator":Ljava/security/KeyPairGenerator;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/jose4j/keys/EcKeyUtil;->secureRandom:Ljava/security/SecureRandom;

    if-nez v4, :cond_0

    .line 88
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 94
    :goto_0
    move-object v4, v2

    invoke-virtual {v4}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/keys/EcKeyUtil;
    return-object v0

    .line 92
    .restart local v0    # "this":Lorg/jose4j/keys/EcKeyUtil;
    :cond_0
    move-object v4, v2

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/keys/EcKeyUtil;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v6}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 98
    .local v3, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v4, Lorg/jose4j/lang/JoseException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to create EC key pair with spec "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method getAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/EcKeyUtil;
    const-string/jumbo v1, "EC"

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/keys/EcKeyUtil;
    return-object v0
.end method

.method public bridge synthetic isAvailable()Z
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/EcKeyUtil;
    move-object v1, v0

    invoke-super {v1}, Lorg/jose4j/keys/KeyPairUtil;->isAvailable()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/keys/EcKeyUtil;
    return v0
.end method

.method public privateKey(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/interfaces/ECPrivateKey;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/EcKeyUtil;
    move-object v1, p1

    .local v1, "d":Ljava/math/BigInteger;
    move-object v2, p2

    .local v2, "spec":Ljava/security/spec/ECParameterSpec;
    new-instance v5, Ljava/security/spec/ECPrivateKeySpec;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    move-object v3, v5

    .line 71
    .local v3, "ecPrivateKeySpec":Ljava/security/spec/ECPrivateKeySpec;
    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Lorg/jose4j/keys/EcKeyUtil;->getKeyFactory()Ljava/security/KeyFactory;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v5

    move-object v4, v5

    .line 72
    .local v4, "privateKey":Ljava/security/PrivateKey;
    move-object v5, v4

    check-cast v5, Ljava/security/interfaces/ECPrivateKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .end local v0    # "this":Lorg/jose4j/keys/EcKeyUtil;
    return-object v0

    .line 74
    .end local v4    # "privateKey":Ljava/security/PrivateKey;
    .restart local v0    # "this":Lorg/jose4j/keys/EcKeyUtil;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 76
    .local v4, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v5, Lorg/jose4j/lang/JoseException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid key spec: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public publicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/interfaces/ECPublicKey;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/EcKeyUtil;
    move-object v1, p1

    .local v1, "x":Ljava/math/BigInteger;
    move-object v2, p2

    .local v2, "y":Ljava/math/BigInteger;
    move-object v3, p3

    .local v3, "spec":Ljava/security/spec/ECParameterSpec;
    new-instance v7, Ljava/security/spec/ECPoint;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v4, v7

    .line 52
    .local v4, "w":Ljava/security/spec/ECPoint;
    new-instance v7, Ljava/security/spec/ECPublicKeySpec;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    move-object v5, v7

    .line 56
    .local v5, "ecPublicKeySpec":Ljava/security/spec/ECPublicKeySpec;
    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Lorg/jose4j/keys/EcKeyUtil;->getKeyFactory()Ljava/security/KeyFactory;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    move-object v6, v7

    .line 57
    .local v6, "publicKey":Ljava/security/PublicKey;
    move-object v7, v6

    check-cast v7, Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    .end local v0    # "this":Lorg/jose4j/keys/EcKeyUtil;
    return-object v0

    .line 59
    .end local v6    # "publicKey":Ljava/security/PublicKey;
    .restart local v0    # "this":Lorg/jose4j/keys/EcKeyUtil;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 61
    .local v6, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v7, Lorg/jose4j/lang/JoseException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid key spec: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method
