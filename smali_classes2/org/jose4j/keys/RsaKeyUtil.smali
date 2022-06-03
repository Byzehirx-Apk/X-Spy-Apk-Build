.class public Lorg/jose4j/keys/RsaKeyUtil;
.super Lorg/jose4j/keys/KeyPairUtil;
.source "RsaKeyUtil.java"


# static fields
.field public static final RSA:Ljava/lang/String; = "RSA"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/RsaKeyUtil;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/jose4j/keys/RsaKeyUtil;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/SecureRandom;)V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/RsaKeyUtil;
    move-object v1, p1

    .local v1, "provider":Ljava/lang/String;
    move-object v2, p2

    .local v2, "secureRandom":Ljava/security/SecureRandom;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/jose4j/keys/KeyPairUtil;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    .line 48
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
    .line 36
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/RsaKeyUtil;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/jose4j/keys/KeyPairUtil;->fromPemEncoded(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/keys/RsaKeyUtil;
    return-object v0
.end method

.method public generateKeyPair(I)Ljava/security/KeyPair;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/RsaKeyUtil;
    move v1, p1

    .local v1, "bits":I
    move-object v3, v0

    invoke-virtual {v3}, Lorg/jose4j/keys/RsaKeyUtil;->getKeyPairGenerator()Ljava/security/KeyPairGenerator;

    move-result-object v3

    move-object v2, v3

    .line 101
    .local v2, "keyGenerator":Ljava/security/KeyPairGenerator;
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/keys/RsaKeyUtil;->secureRandom:Ljava/security/SecureRandom;

    if-nez v3, :cond_0

    .line 103
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 109
    :goto_0
    move-object v3, v2

    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/keys/RsaKeyUtil;
    return-object v0

    .line 107
    .restart local v0    # "this":Lorg/jose4j/keys/RsaKeyUtil;
    :cond_0
    move-object v3, v2

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/keys/RsaKeyUtil;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    goto :goto_0
.end method

.method getAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/RsaKeyUtil;
    const-string/jumbo v1, "RSA"

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/keys/RsaKeyUtil;
    return-object v0
.end method

.method public getRsaPrivateKey(Ljava/security/spec/RSAPrivateKeySpec;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/RsaKeyUtil;
    move-object v1, p1

    .local v1, "keySpec":Ljava/security/spec/RSAPrivateKeySpec;
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lorg/jose4j/keys/RsaKeyUtil;->getKeyFactory()Ljava/security/KeyFactory;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    move-object v2, v3

    .line 90
    .local v2, "privateKey":Ljava/security/PrivateKey;
    move-object v3, v2

    check-cast v3, Ljava/security/interfaces/RSAPrivateKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/keys/RsaKeyUtil;
    return-object v0

    .line 92
    .end local v2    # "privateKey":Ljava/security/PrivateKey;
    .restart local v0    # "this":Lorg/jose4j/keys/RsaKeyUtil;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 94
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Lorg/jose4j/lang/JoseException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid key spec: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public bridge synthetic isAvailable()Z
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/RsaKeyUtil;
    move-object v1, v0

    invoke-super {v1}, Lorg/jose4j/keys/KeyPairUtil;->isAvailable()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/keys/RsaKeyUtil;
    return v0
.end method

.method public privateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/RsaKeyUtil;
    move-object v1, p1

    .local v1, "modulus":Ljava/math/BigInteger;
    move-object v2, p2

    .local v2, "privateExponent":Ljava/math/BigInteger;
    new-instance v4, Ljava/security/spec/RSAPrivateKeySpec;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v3, v4

    .line 73
    .local v3, "keySpec":Ljava/security/spec/RSAPrivateKeySpec;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/jose4j/keys/RsaKeyUtil;->getRsaPrivateKey(Ljava/security/spec/RSAPrivateKeySpec;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/keys/RsaKeyUtil;
    return-object v0
.end method

.method public privateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 80
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/keys/RsaKeyUtil;
    move-object/from16 v1, p1

    .local v1, "modulus":Ljava/math/BigInteger;
    move-object/from16 v2, p2

    .local v2, "publicExponent":Ljava/math/BigInteger;
    move-object/from16 v3, p3

    .local v3, "privateExponent":Ljava/math/BigInteger;
    move-object/from16 v4, p4

    .local v4, "primeP":Ljava/math/BigInteger;
    move-object/from16 v5, p5

    .local v5, "primeQ":Ljava/math/BigInteger;
    move-object/from16 v6, p6

    .local v6, "primeExponentP":Ljava/math/BigInteger;
    move-object/from16 v7, p7

    .local v7, "primeExponentQ":Ljava/math/BigInteger;
    move-object/from16 v8, p8

    .local v8, "crtCoefficient":Ljava/math/BigInteger;
    new-instance v10, Ljava/security/spec/RSAPrivateCrtKeySpec;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-direct/range {v11 .. v19}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v9, v10

    .line 82
    .local v9, "keySpec":Ljava/security/spec/RSAPrivateCrtKeySpec;
    move-object v10, v0

    move-object v11, v9

    invoke-virtual {v10, v11}, Lorg/jose4j/keys/RsaKeyUtil;->getRsaPrivateKey(Ljava/security/spec/RSAPrivateKeySpec;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "this":Lorg/jose4j/keys/RsaKeyUtil;
    return-object v0
.end method

.method public publicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/RsaKeyUtil;
    move-object v1, p1

    .local v1, "modulus":Ljava/math/BigInteger;
    move-object v2, p2

    .local v2, "publicExponent":Ljava/math/BigInteger;
    new-instance v5, Ljava/security/spec/RSAPublicKeySpec;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v3, v5

    .line 61
    .local v3, "rsaPublicKeySpec":Ljava/security/spec/RSAPublicKeySpec;
    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Lorg/jose4j/keys/RsaKeyUtil;->getKeyFactory()Ljava/security/KeyFactory;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    move-object v4, v5

    .line 62
    .local v4, "publicKey":Ljava/security/PublicKey;
    move-object v5, v4

    check-cast v5, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .end local v0    # "this":Lorg/jose4j/keys/RsaKeyUtil;
    return-object v0

    .line 64
    .end local v4    # "publicKey":Ljava/security/PublicKey;
    .restart local v0    # "this":Lorg/jose4j/keys/RsaKeyUtil;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 66
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
