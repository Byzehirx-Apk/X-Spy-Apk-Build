.class public abstract Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "WrappingKeyManagementAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# instance fields
.field private algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field protected final log:Lorg/slf4j/Logger;

.field protected useSuppliedKeyProviderContext:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
    move-object v1, p1

    .local v1, "javaAlg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "alg":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 41
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    iput-object v4, v3, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->log:Lorg/slf4j/Logger;

    .line 44
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->useSuppliedKeyProviderContext:Z

    .line 48
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    .line 49
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method initCipher(Ljavax/crypto/Cipher;ILjava/security/Key;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
    move-object v1, p1

    .local v1, "cipher":Ljavax/crypto/Cipher;
    move v2, p2

    .local v2, "mode":I
    move-object v3, p3

    .local v3, "key":Ljava/security/Key;
    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-nez v4, :cond_0

    .line 91
    move-object v4, v1

    move v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    move-object v4, v1

    move v5, v2

    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v4, v5, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0
.end method

.method public manageForDecrypt(Ljava/security/Key;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 101
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
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
    move-object v11, v5

    invoke-virtual {v11}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v11

    invoke-virtual {v11}, Lorg/jose4j/jca/ProviderContext$Context;->getCipherProvider()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 102
    .local v6, "provider":Ljava/lang/String;
    move-object v11, v0

    invoke-virtual {v11}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v11

    move-object v12, v6

    invoke-static {v11, v12}, Lorg/jose4j/jwe/CipherUtil;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v11

    move-object v7, v11

    .line 106
    .local v7, "cipher":Ljavax/crypto/Cipher;
    move-object v11, v0

    move-object v12, v7

    const/4 v13, 0x4

    move-object v14, v1

    :try_start_0
    invoke-virtual {v11, v12, v13, v14}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->initCipher(Ljavax/crypto/Cipher;ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .line 117
    move-object v11, v3

    invoke-virtual {v11}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyAlgorithm()Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 121
    .local v8, "cekAlg":Ljava/lang/String;
    move-object v11, v7

    move-object v12, v2

    move-object v13, v8

    const/4 v14, 0x3

    :try_start_1
    invoke-virtual {v11, v12, v13, v14}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v11

    move-object v0, v11

    .line 141
    .end local v0    # "this":Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
    :goto_0
    return-object v0

    .line 108
    .end local v8    # "cekAlg":Ljava/lang/String;
    .restart local v0    # "this":Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
    :catch_0
    move-exception v11

    move-object v8, v11

    .line 110
    .local v8, "e":Ljava/security/InvalidKeyException;
    new-instance v11, Lorg/jose4j/lang/InvalidKeyException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unable to initialize cipher ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v14}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ") for key decryption - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v14, v8

    invoke-direct {v12, v13, v14}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 112
    .end local v8    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v11

    move-object v8, v11

    .line 114
    .local v8, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v11, Lorg/jose4j/lang/JoseException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unable to initialize cipher ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v14}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ") for key decryption - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v14, v8

    invoke-direct {v12, v13, v14}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 123
    .local v8, "cekAlg":Ljava/lang/String;
    :catch_2
    move-exception v11

    move-object v9, v11

    .line 125
    .local v9, "e":Ljava/lang/Exception;
    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->log:Lorg/slf4j/Logger;

    invoke-interface {v11}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 127
    move-object v11, v9

    const-class v12, Lorg/jose4j/jwe/JsonWebEncryption;

    invoke-static {v11, v12}, Lorg/jose4j/lang/ExceptionHelp;->toStringWithCausesAndAbbreviatedStack(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 128
    .local v10, "flatStack":Ljava/lang/String;
    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->log:Lorg/slf4j/Logger;

    const-string/jumbo v12, "Key unwrap failed. Substituting a randomly generated CEK and proceeding. {}"

    move-object v13, v10

    invoke-interface {v11, v12, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    .end local v10    # "flatStack":Ljava/lang/String;
    :cond_0
    move-object v11, v3

    invoke-virtual {v11}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result v11

    invoke-static {v11}, Lorg/jose4j/lang/ByteUtil;->randomBytes(I)[B

    move-result-object v11

    move-object v10, v11

    .line 141
    .local v10, "bytes":[B
    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v10

    move-object v14, v8

    invoke-direct {v12, v13, v14}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v0, v11

    goto/16 :goto_0
.end method

.method protected manageForEnc(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 65
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
    move-object/from16 v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object/from16 v2, p2

    .local v2, "cekDesc":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    move-object/from16 v3, p3

    .local v3, "contentEncryptionKey":[B
    move-object/from16 v4, p4

    .local v4, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v10, v0

    iget-boolean v10, v10, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->useSuppliedKeyProviderContext:Z

    if-eqz v10, :cond_0

    move-object v10, v4

    invoke-virtual {v10}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v10

    :goto_0
    move-object v5, v10

    .line 66
    .local v5, "ctx":Lorg/jose4j/jca/ProviderContext$Context;
    move-object v10, v5

    invoke-virtual {v10}, Lorg/jose4j/jca/ProviderContext$Context;->getCipherProvider()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 68
    .local v6, "provider":Ljava/lang/String;
    move-object v10, v0

    invoke-virtual {v10}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v10

    move-object v11, v6

    invoke-static {v10, v11}, Lorg/jose4j/jwe/CipherUtil;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v10

    move-object v7, v10

    .line 72
    .local v7, "cipher":Ljavax/crypto/Cipher;
    move-object v10, v0

    move-object v11, v7

    const/4 v12, 0x3

    move-object v13, v1

    :try_start_0
    invoke-virtual {v10, v11, v12, v13}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->initCipher(Ljavax/crypto/Cipher;ILjava/security/Key;)V

    .line 73
    move-object v10, v2

    invoke-virtual {v10}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyAlgorithm()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 74
    .local v8, "contentEncryptionKeyAlgorithm":Ljava/lang/String;
    move-object v10, v7

    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v3

    move-object v14, v8

    invoke-direct {v12, v13, v14}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v10, v11}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v10

    move-object v9, v10

    .line 75
    .local v9, "encryptedKey":[B
    new-instance v10, Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v3

    move-object v13, v9

    invoke-direct {v11, v12, v13}, Lorg/jose4j/jwe/ContentEncryptionKeys;-><init>([B[B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v10

    .end local v0    # "this":Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
    return-object v0

    .line 65
    .end local v5    # "ctx":Lorg/jose4j/jca/ProviderContext$Context;
    .end local v6    # "provider":Ljava/lang/String;
    .end local v7    # "cipher":Ljavax/crypto/Cipher;
    .end local v8    # "contentEncryptionKeyAlgorithm":Ljava/lang/String;
    .end local v9    # "encryptedKey":[B
    .restart local v0    # "this":Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
    :cond_0
    move-object v10, v4

    invoke-virtual {v10}, Lorg/jose4j/jca/ProviderContext;->getGeneralProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v10

    goto :goto_0

    .line 77
    .restart local v5    # "ctx":Lorg/jose4j/jca/ProviderContext$Context;
    .restart local v6    # "provider":Ljava/lang/String;
    .restart local v7    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v10

    move-object v8, v10

    .line 79
    .local v8, "e":Ljava/security/InvalidKeyException;
    new-instance v10, Lorg/jose4j/lang/InvalidKeyException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to encrypt ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v7

    invoke-virtual {v13}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") the Content Encryption Key: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v8

    invoke-direct {v11, v12, v13}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 81
    .end local v8    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v10

    :goto_1
    move-object v8, v10

    .line 83
    .local v8, "e":Ljava/security/GeneralSecurityException;
    new-instance v10, Lorg/jose4j/lang/JoseException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to encrypt ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v7

    invoke-virtual {v13}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") the Content Encryption Key: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v8

    invoke-direct {v11, v12, v13}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 81
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v10

    goto :goto_1
.end method

.method public manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "cekDesc":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    move-object v3, p3

    .local v3, "headers":Lorg/jose4j/jwx/Headers;
    move-object/from16 v4, p4

    .local v4, "cekOverride":[B
    move-object/from16 v5, p5

    .local v5, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v7, v4

    if-nez v7, :cond_0

    move-object v7, v2

    invoke-virtual {v7}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result v7

    invoke-static {v7}, Lorg/jose4j/lang/ByteUtil;->randomBytes(I)[B

    move-result-object v7

    :goto_0
    move-object v6, v7

    .line 60
    .local v6, "contentEncryptionKey":[B
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v6

    move-object v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->manageForEnc(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
    return-object v0

    .line 59
    .end local v6    # "contentEncryptionKey":[B
    .restart local v0    # "this":Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
    :cond_0
    move-object v7, v4

    goto :goto_0
.end method

.method public setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
    move-object v1, p1

    .local v1, "algorithmParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 55
    return-void
.end method
