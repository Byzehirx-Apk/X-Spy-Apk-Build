.class public Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "EcdhKeyAgreementWithAesKeyWrapAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes256KeyWrapAlgorithm;,
        Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes192KeyWrapAlgorithm;,
        Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes128KeyWrapAlgorithm;
    }
.end annotation


# instance fields
.field private ecdh:Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

.field private keyWrap:Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

.field private keyWrapKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;)V
    .locals 9

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;
    move-object v1, p1

    .local v1, "alg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "keyWrapAlgorithm":Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
    move-object v3, v0

    invoke-direct {v3}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 45
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 46
    move-object v3, v0

    const-string/jumbo v4, "N/A"

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    .line 47
    move-object v3, v0

    const-string/jumbo v4, "EC"

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 48
    move-object v3, v0

    sget-object v4, Lorg/jose4j/keys/KeyPersuasion;->ASYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 49
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->keyWrap:Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    .line 50
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "alg"

    invoke-direct {v5, v6}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->ecdh:Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

    .line 51
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    invoke-virtual {v6}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->getKeyByteLength()I

    move-result v6

    const-string/jumbo v7, "AES"

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;-><init>(ILjava/lang/String;)V

    iput-object v4, v3, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->keyWrapKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    .line 52
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->ecdh:Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

    invoke-virtual {v1}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->keyWrap:Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    invoke-virtual {v1}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;
    return v0

    .restart local v0    # "this":Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public manageForDecrypt(Ljava/security/Key;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "encryptedKey":[B
    move-object/from16 v3, p3

    .local v3, "cekDesc":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    move-object/from16 v4, p4

    .local v4, "headers":Lorg/jose4j/jwx/Headers;
    move-object/from16 v5, p5

    .local v5, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->ecdh:Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

    move-object v8, v1

    sget-object v9, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->keyWrapKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-object v11, v4

    move-object v12, v5

    invoke-virtual/range {v7 .. v12}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->manageForDecrypt(Ljava/security/Key;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;

    move-result-object v7

    move-object v6, v7

    .line 67
    .local v6, "agreedKey":Ljava/security/Key;
    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->keyWrap:Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    move-object v8, v6

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-virtual/range {v7 .. v12}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->manageForDecrypt(Ljava/security/Key;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;
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
    .line 57
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;
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
    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->ecdh:Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->keyWrapKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-object v12, v3

    const/4 v13, 0x0

    check-cast v13, [B

    move-object v14, v5

    invoke-virtual/range {v9 .. v14}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-result-object v9

    move-object v6, v9

    .line 58
    .local v6, "agreedKeys":Lorg/jose4j/jwe/ContentEncryptionKeys;
    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->keyWrapKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    invoke-virtual {v9}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyAlgorithm()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 59
    .local v7, "contentEncryptionKeyAlgorithm":Ljava/lang/String;
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v6

    invoke-virtual {v11}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getContentEncryptionKey()[B

    move-result-object v11

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v8, v9

    .line 60
    .local v8, "agreedKey":Ljava/security/Key;
    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->keyWrap:Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    move-object v10, v8

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    invoke-virtual/range {v9 .. v14}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-result-object v9

    move-object v0, v9

    .end local v0    # "this":Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;
    return-object v0
.end method

.method public validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->ecdh:Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V

    .line 80
    return-void
.end method

.method public validateEncryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->ecdh:Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->validateEncryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V

    .line 74
    return-void
.end method
