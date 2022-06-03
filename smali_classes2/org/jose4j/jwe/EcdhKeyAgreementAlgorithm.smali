.class public Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "EcdhKeyAgreementAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# instance fields
.field algorithmIdHeaderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    move-object v1, v0

    invoke-direct {v1}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 58
    move-object v1, v0

    const-string/jumbo v2, "enc"

    iput-object v2, v1, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->algorithmIdHeaderName:Ljava/lang/String;

    .line 62
    move-object v1, v0

    const-string/jumbo v2, "ECDH-ES"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 63
    move-object v1, v0

    const-string/jumbo v2, "ECDH"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    .line 64
    move-object v1, v0

    const-string/jumbo v2, "EC"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 65
    move-object v1, v0

    sget-object v2, Lorg/jose4j/keys/KeyPersuasion;->ASYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {v1, v2}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    move-object v1, p1

    .local v1, "algorithmIdHeaderName":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;-><init>()V

    .line 71
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->algorithmIdHeaderName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private checkPointIsOnCurve(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 115
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    move-object/from16 v1, p1

    .local v1, "ephemeralPublicKey":Ljava/security/interfaces/ECPublicKey;
    move-object/from16 v2, p2

    .local v2, "privateKey":Ljava/security/interfaces/ECPrivateKey;
    move-object v14, v2

    invoke-interface {v14}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v14

    move-object v3, v14

    .line 116
    .local v3, "ecParameterSpec":Ljava/security/spec/ECParameterSpec;
    move-object v14, v3

    invoke-virtual {v14}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v14

    move-object v4, v14

    .line 117
    .local v4, "curve":Ljava/security/spec/EllipticCurve;
    move-object v14, v1

    invoke-interface {v14}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v14

    move-object v5, v14

    .line 118
    .local v5, "point":Ljava/security/spec/ECPoint;
    move-object v14, v5

    invoke-virtual {v14}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v14

    move-object v6, v14

    .line 119
    .local v6, "x":Ljava/math/BigInteger;
    move-object v14, v5

    invoke-virtual {v14}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v14

    move-object v7, v14

    .line 120
    .local v7, "y":Ljava/math/BigInteger;
    move-object v14, v4

    invoke-virtual {v14}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v14

    move-object v8, v14

    .line 121
    .local v8, "a":Ljava/math/BigInteger;
    move-object v14, v4

    invoke-virtual {v14}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v14

    move-object v9, v14

    .line 122
    .local v9, "b":Ljava/math/BigInteger;
    move-object v14, v4

    invoke-virtual {v14}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v14

    check-cast v14, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v14}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v14

    move-object v10, v14

    .line 123
    .local v10, "p":Ljava/math/BigInteger;
    move-object v14, v7

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v14

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    move-object v11, v14

    .line 124
    .local v11, "leftSide":Ljava/math/BigInteger;
    move-object v14, v6

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v14

    move-object v15, v8

    move-object/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    move-object v15, v9

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    move-object v12, v14

    .line 125
    .local v12, "rightSide":Ljava/math/BigInteger;
    move-object v14, v11

    move-object v15, v12

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v14

    move v13, v14

    .line 126
    .local v13, "onCurve":Z
    move v14, v13

    if-nez v14, :cond_0

    .line 128
    new-instance v14, Lorg/jose4j/lang/JoseException;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "epk is invalid for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/jose4j/keys/EllipticCurves;->getName(Ljava/security/spec/EllipticCurve;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 130
    :cond_0
    return-void
.end method

.method private generateEcdhSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;Lorg/jose4j/jca/ProviderContext;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    move-object v1, p1

    .local v1, "privateKey":Ljava/security/PrivateKey;
    move-object v2, p2

    .local v2, "publicKey":Ljava/security/PublicKey;
    move-object v3, p3

    .local v3, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v7, v3

    invoke-virtual {v7}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jose4j/jca/ProviderContext$Context;->getKeyAgreementProvider()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 170
    .local v4, "keyAgreementProvider":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v7

    move-object v5, v7

    .line 174
    .local v5, "keyAgreement":Ljavax/crypto/KeyAgreement;
    move-object v7, v5

    move-object v8, v1

    :try_start_0
    invoke-virtual {v7, v8}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 175
    move-object v7, v5

    move-object v8, v2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 180
    .line 182
    move-object v7, v5

    invoke-virtual {v7}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    return-object v0

    .line 177
    .restart local v0    # "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 179
    .local v6, "e":Ljava/security/InvalidKeyException;
    new-instance v7, Lorg/jose4j/lang/InvalidKeyException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid Key for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v10}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " key agreement - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    move-object v1, p1

    .local v1, "provider":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 155
    .local v2, "javaAlgorithm":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    move-object v4, v2

    :try_start_0
    invoke-static {v4}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v4

    :goto_0
    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    :cond_0
    move-object v4, v2

    move-object v5, v1

    invoke-static {v4, v5}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    .line 157
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 159
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Lorg/jose4j/lang/UncheckedJoseException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " KeyAgreement available."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/jose4j/lang/UncheckedJoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 161
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 163
    .local v3, "e":Ljava/security/NoSuchProviderException;
    new-instance v4, Lorg/jose4j/lang/JoseException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot get "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " KeyAgreement with provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private kdf(Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)[B
    .locals 18

    .prologue
    .line 134
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    move-object/from16 v1, p1

    .local v1, "cekDesc":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    move-object/from16 v2, p2

    .local v2, "headers":Lorg/jose4j/jwx/Headers;
    move-object/from16 v3, p3

    .local v3, "z":[B
    move-object/from16 v4, p4

    .local v4, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v11, v4

    invoke-virtual {v11}, Lorg/jose4j/jca/ProviderContext;->getGeneralProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v11

    invoke-virtual {v11}, Lorg/jose4j/jca/ProviderContext$Context;->getMessageDigestProvider()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 135
    .local v5, "messageDigestProvider":Ljava/lang/String;
    new-instance v11, Lorg/jose4j/jwe/kdf/KdfUtil;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v5

    invoke-direct {v12, v13}, Lorg/jose4j/jwe/kdf/KdfUtil;-><init>(Ljava/lang/String;)V

    move-object v6, v11

    .line 136
    .local v6, "kdf":Lorg/jose4j/jwe/kdf/KdfUtil;
    move-object v11, v1

    invoke-virtual {v11}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result v11

    invoke-static {v11}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result v11

    move v7, v11

    .line 143
    .local v7, "keydatalen":I
    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->algorithmIdHeaderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 144
    .local v8, "algorithmID":Ljava/lang/String;
    move-object v11, v2

    const-string/jumbo v12, "apu"

    invoke-virtual {v11, v12}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 145
    .local v9, "partyUInfo":Ljava/lang/String;
    move-object v11, v2

    const-string/jumbo v12, "apv"

    invoke-virtual {v11, v12}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 146
    .local v10, "partyVInfo":Ljava/lang/String;
    move-object v11, v6

    move-object v12, v3

    move v13, v7

    move-object v14, v8

    move-object v15, v9

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Lorg/jose4j/jwe/kdf/KdfUtil;->kdf([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v11

    move-object v0, v11

    .end local v0    # "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    return-object v0
.end method


# virtual methods
.method public isAvailable()Z
    .locals 5

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    new-instance v2, Lorg/jose4j/keys/EcKeyUtil;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/jose4j/keys/EcKeyUtil;-><init>()V

    move-object v1, v2

    .line 201
    .local v1, "ecKeyUtil":Lorg/jose4j/keys/EcKeyUtil;
    move-object v2, v1

    invoke-virtual {v2}, Lorg/jose4j/keys/EcKeyUtil;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "KeyAgreement"

    move-object v3, v0

    invoke-virtual {v3}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jose4j/jwa/AlgorithmAvailability;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    return v0

    .restart local v0    # "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public manageForDecrypt(Ljava/security/Key;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 94
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    move-object/from16 v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object/from16 v2, p2

    .local v2, "encryptedKey":[B
    move-object/from16 v3, p3

    .local v3, "cekDesc":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    move-object/from16 v4, p4

    .local v4, "headers":Lorg/jose4j/jwx/Headers;
    move-object/from16 v5, p5

    .local v5, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v13, v5

    invoke-virtual {v13}, Lorg/jose4j/jca/ProviderContext;->getGeneralProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v13

    invoke-virtual {v13}, Lorg/jose4j/jca/ProviderContext$Context;->getKeyFactoryProvider()Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    .line 95
    .local v6, "keyFactoryProvider":Ljava/lang/String;
    move-object v13, v4

    const-string/jumbo v14, "epk"

    move-object v15, v6

    invoke-virtual {v13, v14, v15}, Lorg/jose4j/jwx/Headers;->getPublicJwkHeaderValue(Ljava/lang/String;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object v13

    move-object v7, v13

    .line 96
    .local v7, "ephemeralJwk":Lorg/jose4j/jwk/JsonWebKey;
    move-object v13, v7

    invoke-virtual {v13}, Lorg/jose4j/jwk/JsonWebKey;->getKey()Ljava/security/Key;

    move-result-object v13

    check-cast v13, Ljava/security/interfaces/ECPublicKey;

    move-object v8, v13

    .line 97
    .local v8, "ephemeralPublicKey":Ljava/security/interfaces/ECPublicKey;
    move-object v13, v1

    check-cast v13, Ljava/security/interfaces/ECPrivateKey;

    move-object v9, v13

    .line 98
    .local v9, "privateKey":Ljava/security/interfaces/ECPrivateKey;
    move-object v13, v0

    move-object v14, v8

    move-object v15, v9

    invoke-direct {v13, v14, v15}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->checkPointIsOnCurve(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)V

    .line 99
    move-object v13, v0

    move-object v14, v1

    check-cast v14, Ljava/security/interfaces/ECPrivateKey;

    move-object v15, v8

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v16}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->generateEcdhSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;Lorg/jose4j/jca/ProviderContext;)[B

    move-result-object v13

    move-object v10, v13

    .line 100
    .local v10, "z":[B
    move-object v13, v0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v10

    move-object/from16 v17, v5

    invoke-direct/range {v13 .. v17}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->kdf(Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)[B

    move-result-object v13

    move-object v11, v13

    .line 101
    .local v11, "derivedKey":[B
    move-object v13, v3

    invoke-virtual {v13}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyAlgorithm()Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 102
    .local v12, "cekAlg":Ljava/lang/String;
    new-instance v13, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v11

    move-object/from16 v16, v12

    invoke-direct/range {v14 .. v16}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v0, v13

    .end local v0    # "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    return-object v0
.end method

.method manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jwk/PublicJsonWebKey;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object/from16 v2, p2

    .local v2, "cekDesc":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    move-object/from16 v3, p3

    .local v3, "headers":Lorg/jose4j/jwx/Headers;
    move-object/from16 v4, p4

    .local v4, "ephemeralJwk":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object/from16 v5, p5

    .local v5, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v8, v3

    const-string/jumbo v9, "epk"

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lorg/jose4j/jwx/Headers;->setJwkHeaderValue(Ljava/lang/String;Lorg/jose4j/jwk/JsonWebKey;)V

    .line 87
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v9}, Lorg/jose4j/jwk/PublicJsonWebKey;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v9

    move-object v10, v1

    check-cast v10, Ljava/security/PublicKey;

    move-object v11, v5

    invoke-direct {v8, v9, v10, v11}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->generateEcdhSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;Lorg/jose4j/jca/ProviderContext;)[B

    move-result-object v8

    move-object v6, v8

    .line 88
    .local v6, "z":[B
    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    move-object v11, v6

    move-object v12, v5

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->kdf(Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)[B

    move-result-object v8

    move-object v7, v8

    .line 89
    .local v7, "derivedKey":[B
    new-instance v8, Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v7

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lorg/jose4j/jwe/ContentEncryptionKeys;-><init>([B[B)V

    move-object v0, v8

    .end local v0    # "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    return-object v0
.end method

.method public manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 76
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    move-object/from16 v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object/from16 v2, p2

    .local v2, "cekDesc":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    move-object/from16 v3, p3

    .local v3, "headers":Lorg/jose4j/jwx/Headers;
    move-object/from16 v4, p4

    .local v4, "cekOverride":[B
    move-object/from16 v5, p5

    .local v5, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v10, v4

    move-object v11, v0

    invoke-virtual {v11}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/jose4j/jwx/KeyValidationSupport;->cekNotAllowed([BLjava/lang/String;)V

    .line 77
    move-object v10, v1

    check-cast v10, Ljava/security/interfaces/ECPublicKey;

    move-object v6, v10

    .line 78
    .local v6, "receiversKey":Ljava/security/interfaces/ECPublicKey;
    move-object v10, v5

    invoke-virtual {v10}, Lorg/jose4j/jca/ProviderContext;->getGeneralProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v10

    invoke-virtual {v10}, Lorg/jose4j/jca/ProviderContext$Context;->getKeyPairGeneratorProvider()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 79
    .local v7, "keyPairGeneratorProvider":Ljava/lang/String;
    move-object v10, v5

    invoke-virtual {v10}, Lorg/jose4j/jca/ProviderContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v10

    move-object v8, v10

    .line 80
    .local v8, "secureRandom":Ljava/security/SecureRandom;
    move-object v10, v6

    invoke-interface {v10}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v10

    move-object v11, v7

    move-object v12, v8

    invoke-static {v10, v11, v12}, Lorg/jose4j/jwk/EcJwkGenerator;->generateJwk(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    move-result-object v10

    move-object v9, v10

    .line 81
    .local v9, "ephemeralJwk":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v9

    move-object v15, v5

    invoke-virtual/range {v10 .. v15}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jwk/PublicJsonWebKey;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    return-object v0
.end method

.method public validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object v3, v1

    const-class v4, Ljava/security/interfaces/ECPrivateKey;

    invoke-static {v3, v4}, Lorg/jose4j/jwx/KeyValidationSupport;->castKey(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/Key;

    move-result-object v3

    .line 195
    return-void
.end method

.method public validateEncryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object v3, v1

    const-class v4, Ljava/security/interfaces/ECPublicKey;

    invoke-static {v3, v4}, Lorg/jose4j/jwx/KeyValidationSupport;->castKey(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/Key;

    move-result-object v3

    .line 189
    return-void
.end method
