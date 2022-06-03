.class public Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "AesCbcHmacSha2ContentEncryptionAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/ContentEncryptionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes256CbcHmacSha512;,
        Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes192CbcHmacSha384;,
        Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes128CbcHmacSha256;
    }
.end annotation


# static fields
.field public static final IV_BYTE_LENGTH:I = 0x10


# instance fields
.field private final contentEncryptionKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

.field private final hmacJavaAlgorithm:Ljava/lang/String;

.field private final tagTruncationLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 11

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    move-object v1, p1

    .local v1, "alg":Ljava/lang/String;
    move v2, p2

    .local v2, "cekByteLen":I
    move-object v3, p3

    .local v3, "javaHmacAlg":Ljava/lang/String;
    move v4, p4

    .local v4, "tagTruncationLength":I
    move-object v5, v0

    invoke-direct {v5}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 52
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 53
    move-object v5, v0

    new-instance v6, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move v8, v2

    const-string/jumbo v9, "AES"

    invoke-direct {v7, v8, v9}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;-><init>(ILjava/lang/String;)V

    iput-object v6, v5, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->contentEncryptionKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    .line 54
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->hmacJavaAlgorithm:Ljava/lang/String;

    .line 55
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->tagTruncationLength:I

    .line 59
    move-object v5, v0

    const-string/jumbo v6, "AES/CBC/PKCS5Padding"

    invoke-virtual {v5, v6}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    .line 61
    move-object v5, v0

    sget-object v6, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {v5, v6}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 62
    move-object v5, v0

    const-string/jumbo v6, "AES"

    invoke-virtual {v5, v6}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private getAdditionalAuthenticatedDataLengthBytes([B)[B
    .locals 6

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    move-object v1, p1

    .local v1, "additionalAuthenticatedData":[B
    move-object v4, v1

    invoke-static {v4}, Lorg/jose4j/lang/ByteUtil;->bitLength([B)I

    move-result v4

    int-to-long v4, v4

    move-wide v2, v4

    .line 181
    .local v2, "aadLength":J
    move-wide v4, v2

    invoke-static {v4, v5}, Lorg/jose4j/lang/ByteUtil;->getBytes(J)[B

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    return-object v0
.end method


# virtual methods
.method public decrypt(Lorg/jose4j/jwe/ContentEncryptionParts;[B[BLorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)[B
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 131
    move-object/from16 v1, p0

    .local v1, "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    move-object/from16 v2, p1

    .local v2, "contentEncryptionParts":Lorg/jose4j/jwe/ContentEncryptionParts;
    move-object/from16 v3, p2

    .local v3, "aad":[B
    move-object/from16 v4, p3

    .local v4, "contentEncryptionKey":[B
    move-object/from16 v5, p4

    .local v5, "headers":Lorg/jose4j/jwx/Headers;
    move-object/from16 v6, p5

    .local v6, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    invoke-static/range {v21 .. v22}, Lorg/jose4j/jwe/ContentEncryptionHelp;->getCipherProvider(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v7, v21

    .line 132
    .local v7, "cipherProvider":Ljava/lang/String;
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    invoke-static/range {v21 .. v22}, Lorg/jose4j/jwe/ContentEncryptionHelp;->getMacProvider(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v8, v21

    .line 134
    .local v8, "macProvider":Ljava/lang/String;
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lorg/jose4j/jwe/ContentEncryptionParts;->getIv()[B

    move-result-object v21

    move-object/from16 v9, v21

    .line 135
    .local v9, "iv":[B
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lorg/jose4j/jwe/ContentEncryptionParts;->getCiphertext()[B

    move-result-object v21

    move-object/from16 v10, v21

    .line 136
    .local v10, "ciphertext":[B
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lorg/jose4j/jwe/ContentEncryptionParts;->getAuthenticationTag()[B

    move-result-object v21

    move-object/from16 v11, v21

    .line 137
    .local v11, "authenticationTag":[B
    move-object/from16 v21, v1

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v22}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getAdditionalAuthenticatedDataLengthBytes([B)[B

    move-result-object v21

    move-object/from16 v12, v21

    .line 138
    .local v12, "al":[B
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [[B

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x0

    move-object/from16 v24, v3

    aput-object v24, v22, v23

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x1

    move-object/from16 v24, v9

    aput-object v24, v22, v23

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x2

    move-object/from16 v24, v10

    aput-object v24, v22, v23

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x3

    move-object/from16 v24, v12

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v21}, Lorg/jose4j/lang/ByteUtil;->concat([[B)[B

    move-result-object v21

    move-object/from16 v13, v21

    .line 139
    .local v13, "authenticationTagInput":[B
    new-instance v21, Lorg/jose4j/keys/HmacKey;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v4

    invoke-static/range {v23 .. v23}, Lorg/jose4j/lang/ByteUtil;->leftHalf([B)[B

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/jose4j/keys/HmacKey;-><init>([B)V

    move-object/from16 v14, v21

    .line 140
    .local v14, "hmacKey":Ljava/security/Key;
    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getHmacJavaAlgorithm()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v14

    move-object/from16 v23, v8

    invoke-static/range {v21 .. v23}, Lorg/jose4j/mac/MacUtil;->getInitializedMac(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v21

    move-object/from16 v15, v21

    .line 141
    .local v15, "mac":Ljavax/crypto/Mac;
    move-object/from16 v21, v15

    move-object/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v21

    move-object/from16 v16, v21

    .line 142
    .local v16, "calculatedAuthenticationTag":[B
    move-object/from16 v21, v16

    const/16 v22, 0x0

    move-object/from16 v23, v1

    invoke-virtual/range {v23 .. v23}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getTagTruncationLength()I

    move-result v23

    invoke-static/range {v21 .. v23}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object v21

    move-object/from16 v16, v21

    .line 143
    move-object/from16 v21, v11

    move-object/from16 v22, v16

    invoke-static/range {v21 .. v22}, Lorg/jose4j/lang/ByteUtil;->secureEquals([B[B)Z

    move-result v21

    move/from16 v17, v21

    .line 144
    .local v17, "tagMatch":Z
    move/from16 v21, v17

    if-nez v21, :cond_0

    .line 146
    new-instance v21, Lorg/jose4j/base64url/Base64Url;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    move-object/from16 v18, v21

    .line 147
    .local v18, "base64Url":Lorg/jose4j/base64url/Base64Url;
    move-object/from16 v21, v18

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v19, v21

    .line 148
    .local v19, "encTag":Ljava/lang/String;
    new-instance v21, Lorg/jose4j/lang/IntegrityException;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Authentication tag check failed. Message="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v19

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/jose4j/lang/IntegrityException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 151
    .end local v18    # "base64Url":Lorg/jose4j/base64url/Base64Url;
    .end local v19    # "encTag":Ljava/lang/String;
    :cond_0
    new-instance v21, Lorg/jose4j/keys/AesKey;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v4

    invoke-static/range {v23 .. v23}, Lorg/jose4j/lang/ByteUtil;->rightHalf([B)[B

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/jose4j/keys/AesKey;-><init>([B)V

    move-object/from16 v18, v21

    .line 152
    .local v18, "encryptionKey":Ljava/security/Key;
    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v7

    invoke-static/range {v21 .. v22}, Lorg/jose4j/jwe/CipherUtil;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v21

    move-object/from16 v19, v21

    .line 155
    .local v19, "cipher":Ljavax/crypto/Cipher;
    move-object/from16 v21, v19

    const/16 v22, 0x2

    move-object/from16 v23, v18

    :try_start_0
    new-instance v24, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v27, v24

    move-object/from16 v24, v27

    move-object/from16 v25, v27

    move-object/from16 v26, v9

    invoke-direct/range {v25 .. v26}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual/range {v21 .. v24}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    .line 168
    move-object/from16 v21, v19

    move-object/from16 v22, v10

    :try_start_1
    invoke-virtual/range {v21 .. v22}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v21

    move-object/from16 v1, v21

    .end local v1    # "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    return-object v1

    .line 157
    .restart local v1    # "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    :catch_0
    move-exception v21

    move-object/from16 v20, v21

    .line 159
    .local v20, "e":Ljava/security/InvalidKeyException;
    new-instance v21, Lorg/jose4j/lang/JoseException;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Invalid key for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v20

    invoke-direct/range {v22 .. v24}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 161
    .end local v20    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v21

    move-object/from16 v20, v21

    .line 163
    .local v20, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v21, Lorg/jose4j/lang/JoseException;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v20

    invoke-virtual/range {v23 .. v23}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v20

    invoke-direct/range {v22 .. v24}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 170
    .end local v20    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_2
    move-exception v21

    :goto_0
    move-object/from16 v20, v21

    .line 172
    .local v20, "e":Ljava/security/GeneralSecurityException;
    new-instance v21, Lorg/jose4j/lang/JoseException;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v20

    invoke-virtual/range {v23 .. v23}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v20

    invoke-direct/range {v22 .. v24}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 170
    .end local v20    # "e":Ljava/security/GeneralSecurityException;
    :catch_3
    move-exception v21

    goto :goto_0
.end method

.method public encrypt([B[B[BLorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionParts;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
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
    const/16 v8, 0x10

    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v10}, Lorg/jose4j/jca/ProviderContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lorg/jose4j/jwe/InitializationVectorHelp;->iv(I[BLjava/security/SecureRandom;)[B

    move-result-object v8

    move-object v7, v8

    .line 84
    .local v7, "iv":[B
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v7

    move-object v13, v4

    move-object v14, v6

    invoke-virtual/range {v8 .. v14}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->encrypt([B[B[B[BLorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionParts;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    return-object v0
.end method

.method encrypt([B[B[B[BLorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionParts;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 89
    move-object/from16 v1, p0

    .local v1, "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    move-object/from16 v2, p1

    .local v2, "plaintext":[B
    move-object/from16 v3, p2

    .local v3, "aad":[B
    move-object/from16 v4, p3

    .local v4, "key":[B
    move-object/from16 v5, p4

    .local v5, "iv":[B
    move-object/from16 v6, p5

    .local v6, "headers":Lorg/jose4j/jwx/Headers;
    move-object/from16 v7, p6

    .local v7, "providerContext":Lorg/jose4j/jca/ProviderContext;
    new-instance v18, Lorg/jose4j/keys/HmacKey;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v4

    invoke-static/range {v20 .. v20}, Lorg/jose4j/lang/ByteUtil;->leftHalf([B)[B

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/jose4j/keys/HmacKey;-><init>([B)V

    move-object/from16 v8, v18

    .line 90
    .local v8, "hmacKey":Ljava/security/Key;
    new-instance v18, Lorg/jose4j/keys/AesKey;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v4

    invoke-static/range {v20 .. v20}, Lorg/jose4j/lang/ByteUtil;->rightHalf([B)[B

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/jose4j/keys/AesKey;-><init>([B)V

    move-object/from16 v9, v18

    .line 91
    .local v9, "encryptionKey":Ljava/security/Key;
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-static/range {v18 .. v19}, Lorg/jose4j/jwe/ContentEncryptionHelp;->getCipherProvider(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v10, v18

    .line 92
    .local v10, "cipherProvider":Ljava/lang/String;
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v10

    invoke-static/range {v18 .. v19}, Lorg/jose4j/jwe/CipherUtil;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v18

    move-object/from16 v11, v18

    .line 96
    .local v11, "cipher":Ljavax/crypto/Cipher;
    move-object/from16 v18, v11

    const/16 v19, 0x1

    move-object/from16 v20, v9

    :try_start_0
    new-instance v21, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    move-object/from16 v23, v5

    invoke-direct/range {v22 .. v23}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual/range {v18 .. v21}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    .line 110
    move-object/from16 v18, v11

    move-object/from16 v19, v2

    :try_start_1
    invoke-virtual/range {v18 .. v19}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v18

    move-object/from16 v12, v18

    .line 115
    .line 117
    .local v12, "cipherText":[B
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-static/range {v18 .. v19}, Lorg/jose4j/jwe/ContentEncryptionHelp;->getMacProvider(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v13, v18

    .line 118
    .local v13, "macProvider":Ljava/lang/String;
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getHmacJavaAlgorithm()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v8

    move-object/from16 v20, v13

    invoke-static/range {v18 .. v20}, Lorg/jose4j/mac/MacUtil;->getInitializedMac(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v18

    move-object/from16 v14, v18

    .line 120
    .local v14, "mac":Ljavax/crypto/Mac;
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getAdditionalAuthenticatedDataLengthBytes([B)[B

    move-result-object v18

    move-object/from16 v15, v18

    .line 122
    .local v15, "al":[B
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [[B

    move-object/from16 v18, v0

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x0

    move-object/from16 v21, v3

    aput-object v21, v19, v20

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x1

    move-object/from16 v21, v5

    aput-object v21, v19, v20

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x2

    move-object/from16 v21, v12

    aput-object v21, v19, v20

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x3

    move-object/from16 v21, v15

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v18}, Lorg/jose4j/lang/ByteUtil;->concat([[B)[B

    move-result-object v18

    move-object/from16 v16, v18

    .line 123
    .local v16, "authenticationTagInput":[B
    move-object/from16 v18, v14

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v18

    move-object/from16 v17, v18

    .line 124
    .local v17, "authenticationTag":[B
    move-object/from16 v18, v17

    const/16 v19, 0x0

    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getTagTruncationLength()I

    move-result v20

    invoke-static/range {v18 .. v20}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object v18

    move-object/from16 v17, v18

    .line 126
    new-instance v18, Lorg/jose4j/jwe/ContentEncryptionParts;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v5

    move-object/from16 v21, v12

    move-object/from16 v22, v17

    invoke-direct/range {v19 .. v22}, Lorg/jose4j/jwe/ContentEncryptionParts;-><init>([B[B[B)V

    move-object/from16 v1, v18

    .end local v1    # "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    return-object v1

    .line 98
    .end local v12    # "cipherText":[B
    .end local v13    # "macProvider":Ljava/lang/String;
    .end local v14    # "mac":Ljavax/crypto/Mac;
    .end local v15    # "al":[B
    .end local v16    # "authenticationTagInput":[B
    .end local v17    # "authenticationTag":[B
    .restart local v1    # "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    :catch_0
    move-exception v18

    move-object/from16 v12, v18

    .line 100
    .local v12, "e":Ljava/security/InvalidKeyException;
    new-instance v18, Lorg/jose4j/lang/JoseException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Invalid key for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v12

    invoke-direct/range {v19 .. v21}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 102
    .end local v12    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v18

    move-object/from16 v12, v18

    .line 104
    .local v12, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v18, Lorg/jose4j/lang/JoseException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v12

    invoke-direct/range {v19 .. v21}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 112
    .end local v12    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_2
    move-exception v18

    :goto_0
    move-object/from16 v13, v18

    .line 114
    .local v13, "e":Ljava/security/GeneralSecurityException;
    new-instance v18, Lorg/jose4j/lang/JoseException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v13

    invoke-direct/range {v19 .. v21}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 112
    .end local v13    # "e":Ljava/security/GeneralSecurityException;
    :catch_3
    move-exception v18

    goto :goto_0
.end method

.method public getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->contentEncryptionKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    return-object v0
.end method

.method public getHmacJavaAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->hmacJavaAlgorithm:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    return-object v0
.end method

.method public getTagTruncationLength()I
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    move-object v1, v0

    iget v1, v1, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->tagTruncationLength:I

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    return v0
.end method

.method public isAvailable()Z
    .locals 5

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result v3

    move v1, v3

    .line 188
    .local v1, "contentEncryptionKeyByteLength":I
    move v3, v1

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    move v2, v3

    .line 189
    .local v2, "aesByteKeyLength":I
    move-object v3, v0

    invoke-virtual {v3}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v3

    move v4, v2

    invoke-static {v3, v4}, Lorg/jose4j/jwe/CipherStrengthSupport;->isAvailable(Ljava/lang/String;I)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
    return v0
.end method
