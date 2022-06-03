.class public Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "Pbes2HmacShaWithAesKeyWrapAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha512Aes256;,
        Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha384Aes192;,
        Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha256Aes128;
    }
.end annotation


# static fields
.field private static final ZERO_BYTE:[B


# instance fields
.field private defaultIterationCount:J

.field private defaultSaltByteLength:I

.field private keyWrap:Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

.field private keyWrapKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

.field private pbkdf2:Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [B

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    sput-object v0, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->ZERO_BYTE:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;)V
    .locals 11

    .prologue
    .line 55
    move-object v1, p0

    .local v1, "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    move-object v2, p1

    .local v2, "alg":Ljava/lang/String;
    move-object v3, p2

    .local v3, "hmacAlg":Ljava/lang/String;
    move-object v4, p3

    .local v4, "keyWrapAlg":Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
    move-object v5, v1

    invoke-direct {v5}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 51
    move-object v5, v1

    const-wide/16 v6, 0x2000

    iput-wide v6, v5, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->defaultIterationCount:J

    .line 52
    move-object v5, v1

    const/16 v6, 0xc

    iput v6, v5, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->defaultSaltByteLength:I

    .line 56
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 57
    move-object v5, v1

    const-string/jumbo v6, "n/a"

    invoke-virtual {v5, v6}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    .line 58
    move-object v5, v1

    new-instance v6, Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-direct {v7, v8}, Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->pbkdf2:Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;

    .line 59
    move-object v5, v1

    sget-object v6, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {v5, v6}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 60
    move-object v5, v1

    const-string/jumbo v6, "PBKDF2"

    invoke-virtual {v5, v6}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 61
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->keyWrap:Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    .line 62
    move-object v5, v1

    new-instance v6, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    iget-object v8, v8, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->keyWrap:Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    invoke-virtual {v8}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->getKeyByteLength()I

    move-result v8

    const-string/jumbo v9, "AES"

    invoke-direct {v7, v8, v9}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;-><init>(ILjava/lang/String;)V

    iput-object v6, v5, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->keyWrapKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    .line 63
    return-void
.end method

.method private deriveKey(Ljava/security/Key;Ljava/lang/Long;[BLorg/jose4j/jca/ProviderContext;)Ljava/security/Key;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 111
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    move-object/from16 v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object/from16 v2, p2

    .local v2, "iterationCount":Ljava/lang/Long;
    move-object/from16 v3, p3

    .local v3, "saltInput":[B
    move-object/from16 v4, p4

    .local v4, "providerContext":Lorg/jose4j/jca/ProviderContext;
    const/4 v9, 0x3

    new-array v9, v9, [[B

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    move-object v12, v0

    invoke-virtual {v12}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/jose4j/lang/StringUtil;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    sget-object v12, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->ZERO_BYTE:[B

    aput-object v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x2

    move-object v12, v3

    aput-object v12, v10, v11

    invoke-static {v9}, Lorg/jose4j/lang/ByteUtil;->concat([[B)[B

    move-result-object v9

    move-object v5, v9

    .line 112
    .local v5, "salt":[B
    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->keyWrapKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    invoke-virtual {v9}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result v9

    move v6, v9

    .line 113
    .local v6, "dkLen":I
    move-object v9, v4

    invoke-virtual {v9}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v9

    invoke-virtual {v9}, Lorg/jose4j/jca/ProviderContext$Context;->getMacProvider()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 114
    .local v7, "macProvider":Ljava/lang/String;
    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->pbkdf2:Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;

    move-object v10, v1

    invoke-interface {v10}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    move-object v11, v5

    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v12

    move v13, v6

    move-object v14, v7

    invoke-virtual/range {v9 .. v14}, Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;->derive([B[BIILjava/lang/String;)[B

    move-result-object v9

    move-object v8, v9

    .line 115
    .local v8, "derivedKeyBytes":[B
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v8

    move-object v12, v0

    iget-object v12, v12, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->keyWrapKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    invoke-virtual {v12}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v0, v9

    .end local v0    # "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    return-object v0
.end method


# virtual methods
.method protected deriveForEncrypt(Ljava/security/Key;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object/from16 v2, p2

    .local v2, "headers":Lorg/jose4j/jwx/Headers;
    move-object/from16 v3, p3

    .local v3, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v8, v2

    const-string/jumbo v9, "p2c"

    invoke-virtual {v8, v9}, Lorg/jose4j/jwx/Headers;->getLongHeaderValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    move-object v4, v8

    .line 75
    .local v4, "iterationCount":Ljava/lang/Long;
    move-object v8, v4

    if-nez v8, :cond_0

    .line 77
    move-object v8, v0

    iget-wide v8, v8, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->defaultIterationCount:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object v4, v8

    .line 78
    move-object v8, v2

    const-string/jumbo v9, "p2c"

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lorg/jose4j/jwx/Headers;->setObjectHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    :cond_0
    move-object v8, v2

    const-string/jumbo v9, "p2s"

    invoke-virtual {v8, v9}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 83
    .local v5, "saltInputString":Ljava/lang/String;
    new-instance v8, Lorg/jose4j/base64url/Base64Url;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    move-object v7, v8

    .line 84
    .local v7, "base64Url":Lorg/jose4j/base64url/Base64Url;
    move-object v8, v5

    if-nez v8, :cond_1

    .line 86
    move-object v8, v0

    iget v8, v8, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->defaultSaltByteLength:I

    move-object v9, v3

    invoke-virtual {v9}, Lorg/jose4j/jca/ProviderContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/jose4j/lang/ByteUtil;->randomBytes(ILjava/security/SecureRandom;)[B

    move-result-object v8

    move-object v6, v8

    .line 87
    .local v6, "saltInput":[B
    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v8, v9}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 88
    move-object v8, v2

    const-string/jumbo v9, "p2s"

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Lorg/jose4j/jwx/Headers;->setStringHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v4

    move-object v11, v6

    move-object v12, v3

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->deriveKey(Ljava/security/Key;Ljava/lang/Long;[BLorg/jose4j/jca/ProviderContext;)Ljava/security/Key;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    return-object v0

    .line 92
    .end local v6    # "saltInput":[B
    .restart local v0    # "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    :cond_1
    move-object v8, v7

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v8

    move-object v6, v8

    .restart local v6    # "saltInput":[B
    goto :goto_0
.end method

.method public getDefaultIterationCount()J
    .locals 3

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    move-object v1, v0

    iget-wide v1, v1, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->defaultIterationCount:J

    move-wide v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    return-wide v0
.end method

.method public getDefaultSaltByteLength()I
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    move-object v1, v0

    iget v1, v1, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->defaultSaltByteLength:I

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    return v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->keyWrap:Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    invoke-virtual {v1}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->isAvailable()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    return v0
.end method

.method public manageForDecrypt(Ljava/security/Key;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 101
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
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
    move-object v11, v4

    const-string/jumbo v12, "p2c"

    invoke-virtual {v11, v12}, Lorg/jose4j/jwx/Headers;->getLongHeaderValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    move-object v6, v11

    .line 102
    .local v6, "iterationCount":Ljava/lang/Long;
    move-object v11, v4

    const-string/jumbo v12, "p2s"

    invoke-virtual {v11, v12}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 103
    .local v7, "saltInputString":Ljava/lang/String;
    new-instance v11, Lorg/jose4j/base64url/Base64Url;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    move-object v8, v11

    .line 104
    .local v8, "base64Url":Lorg/jose4j/base64url/Base64Url;
    move-object v11, v8

    move-object v12, v7

    invoke-virtual {v11, v12}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v11

    move-object v9, v11

    .line 105
    .local v9, "saltInput":[B
    move-object v11, v0

    move-object v12, v1

    move-object v13, v6

    move-object v14, v9

    move-object v15, v5

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->deriveKey(Ljava/security/Key;Ljava/lang/Long;[BLorg/jose4j/jca/ProviderContext;)Ljava/security/Key;

    move-result-object v11

    move-object v10, v11

    .line 106
    .local v10, "derivedKey":Ljava/security/Key;
    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->keyWrap:Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    move-object v12, v10

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->manageForDecrypt(Ljava/security/Key;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;

    move-result-object v11

    move-object v0, v11

    .end local v0    # "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    return-object v0
.end method

.method public manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "cekDesc":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    move-object/from16 v3, p3

    .local v3, "headers":Lorg/jose4j/jwx/Headers;
    move-object/from16 v4, p4

    .local v4, "cekOverride":[B
    move-object/from16 v5, p5

    .local v5, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    move-object v10, v5

    invoke-virtual {v7, v8, v9, v10}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->deriveForEncrypt(Ljava/security/Key;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;

    move-result-object v7

    move-object v6, v7

    .line 69
    .local v6, "derivedKey":Ljava/security/Key;
    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->keyWrap:Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    move-object v8, v6

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-virtual/range {v7 .. v12}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    return-object v0
.end method

.method public setDefaultIterationCount(J)V
    .locals 7

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    move-wide v1, p1

    .local v1, "defaultIterationCount":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->defaultIterationCount:J

    .line 149
    return-void
.end method

.method public setDefaultSaltByteLength(I)V
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    move v1, p1

    .local v1, "defaultSaltByteLength":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->defaultSaltByteLength:I

    .line 159
    return-void
.end method

.method public validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->validateKey(Ljava/security/Key;)V

    .line 128
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
    .line 121
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;->validateKey(Ljava/security/Key;)V

    .line 122
    return-void
.end method

.method public validateKey(Ljava/security/Key;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, v1

    invoke-static {v2}, Lorg/jose4j/jwx/KeyValidationSupport;->notNull(Ljava/security/Key;)V

    .line 133
    return-void
.end method
