.class public Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "AesGcmKeyEncryptionAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes256Gcm;,
        Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes192Gcm;,
        Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes128Gcm;
    }
.end annotation


# static fields
.field private static final IV_BYTE_LENGTH:I = 0xc

.field private static final TAG_BYTE_LENGTH:I = 0x10


# instance fields
.field private keyByteLength:I

.field private simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 9

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;
    move-object v1, p1

    .local v1, "alg":Ljava/lang/String;
    move v2, p2

    .local v2, "keyByteLength":I
    move-object v3, v0

    invoke-direct {v3}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 47
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 48
    move-object v3, v0

    const-string/jumbo v4, "AES/GCM/NoPadding"

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    .line 49
    move-object v3, v0

    sget-object v4, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 50
    move-object v3, v0

    const-string/jumbo v4, "oct"

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 51
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwe/SimpleAeadCipher;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jwe/SimpleAeadCipher;-><init>(Ljava/lang/String;I)V

    iput-object v4, v3, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    .line 52
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->keyByteLength:I

    .line 53
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->log:Lorg/slf4j/Logger;

    move-object v3, v0

    iget v3, v3, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->keyByteLength:I

    const/16 v4, 0xc

    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/jose4j/jwe/SimpleAeadCipher;->isAvailable(Lorg/slf4j/Logger;IILjava/lang/String;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;
    return v0
.end method

.method public manageForDecrypt(Ljava/security/Key;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 90
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;
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
    new-instance v13, Lorg/jose4j/base64url/Base64Url;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    move-object v6, v13

    .line 91
    .local v6, "base64Url":Lorg/jose4j/base64url/Base64Url;
    move-object v13, v4

    const-string/jumbo v14, "iv"

    invoke-virtual {v13, v14}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    .line 92
    .local v7, "encodedIv":Ljava/lang/String;
    move-object v13, v6

    move-object v14, v7

    invoke-virtual {v13, v14}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v13

    move-object v8, v13

    .line 94
    .local v8, "iv":[B
    move-object v13, v4

    const-string/jumbo v14, "tag"

    invoke-virtual {v13, v14}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 95
    .local v9, "encodedTag":Ljava/lang/String;
    move-object v13, v6

    move-object v14, v9

    invoke-virtual {v13, v14}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v13

    move-object v10, v13

    .line 97
    .local v10, "tag":[B
    move-object v13, v5

    invoke-virtual {v13}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v13

    invoke-virtual {v13}, Lorg/jose4j/jca/ProviderContext$Context;->getCipherProvider()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 98
    .local v11, "cipherProvider":Ljava/lang/String;
    move-object v13, v0

    iget-object v13, v13, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    move-object v14, v1

    move-object v15, v8

    move-object/from16 v16, v2

    move-object/from16 v17, v10

    const/16 v18, 0x0

    move-object/from16 v19, v11

    invoke-virtual/range {v13 .. v19}, Lorg/jose4j/jwe/SimpleAeadCipher;->decrypt(Ljava/security/Key;[B[B[B[BLjava/lang/String;)[B

    move-result-object v13

    move-object v12, v13

    .line 99
    .local v12, "cek":[B
    new-instance v13, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v12

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyAlgorithm()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v0, v13

    .end local v0    # "this":Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;
    return-object v0
.end method

.method public manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 58
    move-object/from16 v1, p0

    .local v1, "this":Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;
    move-object/from16 v2, p1

    .local v2, "managementKey":Ljava/security/Key;
    move-object/from16 v3, p2

    .local v3, "cekDesc":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    move-object/from16 v4, p3

    .local v4, "headers":Lorg/jose4j/jwx/Headers;
    move-object/from16 v5, p4

    .local v5, "cekOverride":[B
    move-object/from16 v6, p5

    .local v6, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lorg/jose4j/jca/ProviderContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v17

    move-object/from16 v7, v17

    .line 59
    .local v7, "secureRandom":Ljava/security/SecureRandom;
    move-object/from16 v17, v5

    if-nez v17, :cond_0

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result v17

    move-object/from16 v18, v7

    invoke-static/range {v17 .. v18}, Lorg/jose4j/lang/ByteUtil;->randomBytes(ILjava/security/SecureRandom;)[B

    move-result-object v17

    :goto_0
    move-object/from16 v8, v17

    .line 61
    .local v8, "cek":[B
    new-instance v17, Lorg/jose4j/base64url/Base64Url;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    move-object/from16 v9, v17

    .line 63
    .local v9, "base64Url":Lorg/jose4j/base64url/Base64Url;
    move-object/from16 v17, v4

    const-string/jumbo v18, "iv"

    invoke-virtual/range {v17 .. v18}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v17

    .line 65
    .local v10, "encodedIv":Ljava/lang/String;
    move-object/from16 v17, v10

    if-nez v17, :cond_1

    .line 67
    const/16 v17, 0xc

    move-object/from16 v18, v7

    invoke-static/range {v17 .. v18}, Lorg/jose4j/lang/ByteUtil;->randomBytes(ILjava/security/SecureRandom;)[B

    move-result-object v17

    move-object/from16 v11, v17

    .line 68
    .local v11, "iv":[B
    move-object/from16 v17, v9

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v17

    .line 69
    move-object/from16 v17, v4

    const-string/jumbo v18, "iv"

    move-object/from16 v19, v10

    invoke-virtual/range {v17 .. v19}, Lorg/jose4j/jwx/Headers;->setStringHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_1
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/jose4j/jca/ProviderContext$Context;->getCipherProvider()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v12, v17

    .line 77
    .local v12, "cipherProvider":Ljava/lang/String;
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v11

    move-object/from16 v20, v8

    const/16 v21, 0x0

    move-object/from16 v22, v12

    invoke-virtual/range {v17 .. v22}, Lorg/jose4j/jwe/SimpleAeadCipher;->encrypt(Ljava/security/Key;[B[B[BLjava/lang/String;)Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;

    move-result-object v17

    move-object/from16 v13, v17

    .line 78
    .local v13, "encrypted":Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->getCiphertext()[B

    move-result-object v17

    move-object/from16 v14, v17

    .line 79
    .local v14, "encryptedKey":[B
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->getTag()[B

    move-result-object v17

    move-object/from16 v15, v17

    .line 81
    .local v15, "tag":[B
    move-object/from16 v17, v9

    move-object/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v16, v17

    .line 82
    .local v16, "encodedTag":Ljava/lang/String;
    move-object/from16 v17, v4

    const-string/jumbo v18, "tag"

    move-object/from16 v19, v16

    invoke-virtual/range {v17 .. v19}, Lorg/jose4j/jwx/Headers;->setStringHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v17, Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v8

    move-object/from16 v20, v14

    invoke-direct/range {v18 .. v20}, Lorg/jose4j/jwe/ContentEncryptionKeys;-><init>([B[B)V

    move-object/from16 v1, v17

    .end local v1    # "this":Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;
    return-object v1

    .line 59
    .end local v8    # "cek":[B
    .end local v9    # "base64Url":Lorg/jose4j/base64url/Base64Url;
    .end local v10    # "encodedIv":Ljava/lang/String;
    .end local v11    # "iv":[B
    .end local v12    # "cipherProvider":Ljava/lang/String;
    .end local v13    # "encrypted":Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    .end local v14    # "encryptedKey":[B
    .end local v15    # "tag":[B
    .end local v16    # "encodedTag":Ljava/lang/String;
    .restart local v1    # "this":Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;
    :cond_0
    move-object/from16 v17, v5

    goto/16 :goto_0

    .line 73
    .restart local v8    # "cek":[B
    .restart local v9    # "base64Url":Lorg/jose4j/base64url/Base64Url;
    .restart local v10    # "encodedIv":Ljava/lang/String;
    :cond_1
    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v11, v17

    .restart local v11    # "iv":[B
    goto :goto_1
.end method

.method public validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->validateKey(Ljava/security/Key;)V

    .line 112
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
    .line 105
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->validateKey(Ljava/security/Key;)V

    .line 106
    return-void
.end method

.method validateKey(Ljava/security/Key;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->keyByteLength:I

    invoke-static {v2, v3, v4}, Lorg/jose4j/jwx/KeyValidationSupport;->validateAesWrappingKey(Ljava/security/Key;Ljava/lang/String;I)V

    .line 117
    return-void
.end method
