.class public Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "AesGcmContentEncryptionAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/ContentEncryptionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes128Gcm;,
        Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes192Gcm;,
        Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes256Gcm;
    }
.end annotation


# static fields
.field private static final IV_BYTE_LENGTH:I = 0xc

.field private static final TAG_BYTE_LENGTH:I = 0x10


# instance fields
.field private contentEncryptionKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

.field private simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 9

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
    move-object v1, p1

    .local v1, "alg":Ljava/lang/String;
    move v2, p2

    .local v2, "keyBitLength":I
    move-object v3, v0

    invoke-direct {v3}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 40
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 41
    move-object v3, v0

    const-string/jumbo v4, "AES/GCM/NoPadding"

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    .line 42
    move-object v3, v0

    sget-object v4, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 43
    move-object v3, v0

    const-string/jumbo v4, "AES"

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 44
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v2

    invoke-static {v6}, Lorg/jose4j/lang/ByteUtil;->byteLength(I)I

    move-result v6

    const-string/jumbo v7, "AES"

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;-><init>(ILjava/lang/String;)V

    iput-object v4, v3, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->contentEncryptionKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    .line 45
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwe/SimpleAeadCipher;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jwe/SimpleAeadCipher;-><init>(Ljava/lang/String;I)V

    iput-object v4, v3, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    .line 46
    return-void
.end method


# virtual methods
.method public decrypt(Lorg/jose4j/jwe/ContentEncryptionParts;[B[BLorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 74
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
    move-object/from16 v1, p1

    .local v1, "contentEncParts":Lorg/jose4j/jwe/ContentEncryptionParts;
    move-object/from16 v2, p2

    .local v2, "aad":[B
    move-object/from16 v3, p3

    .local v3, "contentEncryptionKey":[B
    move-object/from16 v4, p4

    .local v4, "headers":Lorg/jose4j/jwx/Headers;
    move-object/from16 v5, p5

    .local v5, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v11, v1

    invoke-virtual {v11}, Lorg/jose4j/jwe/ContentEncryptionParts;->getIv()[B

    move-result-object v11

    move-object v6, v11

    .line 75
    .local v6, "iv":[B
    new-instance v11, Lorg/jose4j/keys/AesKey;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v3

    invoke-direct {v12, v13}, Lorg/jose4j/keys/AesKey;-><init>([B)V

    move-object v7, v11

    .line 76
    .local v7, "cek":Lorg/jose4j/keys/AesKey;
    move-object v11, v1

    invoke-virtual {v11}, Lorg/jose4j/jwe/ContentEncryptionParts;->getCiphertext()[B

    move-result-object v11

    move-object v8, v11

    .line 77
    .local v8, "ciphertext":[B
    move-object v11, v1

    invoke-virtual {v11}, Lorg/jose4j/jwe/ContentEncryptionParts;->getAuthenticationTag()[B

    move-result-object v11

    move-object v9, v11

    .line 78
    .local v9, "tag":[B
    move-object v11, v4

    move-object v12, v5

    invoke-static {v11, v12}, Lorg/jose4j/jwe/ContentEncryptionHelp;->getCipherProvider(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 79
    .local v10, "cipherProvider":Ljava/lang/String;
    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    move-object v12, v7

    move-object v13, v6

    move-object v14, v8

    move-object v15, v9

    move-object/from16 v16, v2

    move-object/from16 v17, v10

    invoke-virtual/range {v11 .. v17}, Lorg/jose4j/jwe/SimpleAeadCipher;->decrypt(Ljava/security/Key;[B[B[B[BLjava/lang/String;)[B

    move-result-object v11

    move-object v0, v11

    .end local v0    # "this":Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
    return-object v0
.end method

.method public encrypt([B[B[BLorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionParts;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
    move-object/from16 v1, p1

    .local v1, "plaintext":[B
    move-object/from16 v2, p2

    .local v2, "aad":[B
    move-object/from16 v3, p3

    .local v3, "contentEncryptionKey":[B
    move-object/from16 v4, p4

    .local v4, "headers":Lorg/jose4j/jwx/Headers;
    move-object/from16 v5, p5

    .local v5, "ivOverride":[B
    move-object/from16 v6, p6

    .local v6, "providerContext":Lorg/jose4j/jca/ProviderContext;
    const/16 v9, 0xc

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v11}, Lorg/jose4j/jca/ProviderContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lorg/jose4j/jwe/InitializationVectorHelp;->iv(I[BLjava/security/SecureRandom;)[B

    move-result-object v9

    move-object v7, v9

    .line 57
    .local v7, "iv":[B
    move-object v9, v4

    move-object v10, v6

    invoke-static {v9, v10}, Lorg/jose4j/jwe/ContentEncryptionHelp;->getCipherProvider(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 58
    .local v8, "cipherProvider":Ljava/lang/String;
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v7

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->encrypt([B[B[B[BLjava/lang/String;)Lorg/jose4j/jwe/ContentEncryptionParts;

    move-result-object v9

    move-object v0, v9

    .end local v0    # "this":Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
    return-object v0
.end method

.method public encrypt([B[B[B[BLjava/lang/String;)Lorg/jose4j/jwe/ContentEncryptionParts;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
    move-object/from16 v1, p1

    .local v1, "plaintext":[B
    move-object/from16 v2, p2

    .local v2, "aad":[B
    move-object/from16 v3, p3

    .local v3, "contentEncryptionKey":[B
    move-object/from16 v4, p4

    .local v4, "iv":[B
    move-object/from16 v5, p5

    .local v5, "provider":Ljava/lang/String;
    new-instance v8, Lorg/jose4j/keys/AesKey;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v3

    invoke-direct {v9, v10}, Lorg/jose4j/keys/AesKey;-><init>([B)V

    move-object v6, v8

    .line 67
    .local v6, "cek":Lorg/jose4j/keys/AesKey;
    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    move-object v9, v6

    move-object v10, v4

    move-object v11, v1

    move-object v12, v2

    move-object v13, v5

    invoke-virtual/range {v8 .. v13}, Lorg/jose4j/jwe/SimpleAeadCipher;->encrypt(Ljava/security/Key;[B[B[BLjava/lang/String;)Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;

    move-result-object v8

    move-object v7, v8

    .line 68
    .local v7, "encrypted":Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    new-instance v8, Lorg/jose4j/jwe/ContentEncryptionParts;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v4

    move-object v11, v7

    invoke-virtual {v11}, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->getCiphertext()[B

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v12}, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->getTag()[B

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lorg/jose4j/jwe/ContentEncryptionParts;-><init>([B[B[B)V

    move-object v0, v8

    .end local v0    # "this":Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
    return-object v0
.end method

.method public getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->contentEncryptionKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
    return-object v0
.end method

.method public isAvailable()Z
    .locals 7

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result v2

    move v1, v2

    .line 86
    .local v1, "keyByteLength":I
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->log:Lorg/slf4j/Logger;

    move v4, v1

    const/16 v5, 0xc

    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/jose4j/jwe/SimpleAeadCipher;->isAvailable(Lorg/slf4j/Logger;IILjava/lang/String;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
    return v0
.end method
