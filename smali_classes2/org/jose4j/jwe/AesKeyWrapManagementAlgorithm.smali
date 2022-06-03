.class public Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
.super Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
.source "AesKeyWrapManagementAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes256;,
        Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes192;,
        Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes128;
    }
.end annotation


# instance fields
.field keyByteLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
    move-object v1, p1

    .local v1, "alg":Ljava/lang/String;
    move v2, p2

    .local v2, "keyByteLength":I
    move-object v3, v0

    const-string/jumbo v4, "AESWrap"

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    move-object v3, v0

    const-string/jumbo v4, "oct"

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 37
    move-object v3, v0

    sget-object v4, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 38
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->keyByteLength:I

    .line 39
    return-void
.end method


# virtual methods
.method getKeyByteLength()I
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
    move-object v1, v0

    iget v1, v1, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->keyByteLength:I

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
    return v0
.end method

.method public isAvailable()Z
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->getKeyByteLength()I

    move-result v3

    move v1, v3

    .line 67
    .local v1, "aesByteKeyLength":I
    move-object v3, v0

    invoke-virtual {v3}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 68
    .local v2, "agl":Ljava/lang/String;
    const-string/jumbo v3, "Cipher"

    move-object v4, v2

    invoke-static {v3, v4}, Lorg/jose4j/jwa/AlgorithmAvailability;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    move v4, v1

    invoke-static {v3, v4}, Lorg/jose4j/jwe/CipherStrengthSupport;->isAvailable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
    return v0

    .restart local v0    # "this":Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method setUseGeneralProviderContext()Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->useSuppliedKeyProviderContext:Z

    .line 74
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
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
    .line 55
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->validateKey(Ljava/security/Key;)V

    .line 56
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
    .line 49
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->validateKey(Ljava/security/Key;)V

    .line 50
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
    .line 60
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->getKeyByteLength()I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/jose4j/jwx/KeyValidationSupport;->validateAesWrappingKey(Ljava/security/Key;Ljava/lang/String;I)V

    .line 61
    return-void
.end method
