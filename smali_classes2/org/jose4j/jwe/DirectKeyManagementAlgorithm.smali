.class public Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "DirectKeyManagementAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;
    move-object v1, v0

    invoke-direct {v1}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 37
    move-object v1, v0

    const-string/jumbo v2, "dir"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 38
    move-object v1, v0

    sget-object v2, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {v1, v2}, Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 39
    move-object v1, v0

    const-string/jumbo v2, "oct"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private validateKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object v5, v1

    invoke-static {v5}, Lorg/jose4j/jwx/KeyValidationSupport;->notNull(Ljava/security/Key;)V

    .line 69
    move-object v5, v1

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    if-eqz v5, :cond_0

    .line 71
    move-object v5, v1

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    array-length v5, v5

    move v3, v5

    .line 72
    .local v3, "managementKeyByteLength":I
    move-object v5, v2

    invoke-interface {v5}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result v5

    move v4, v5

    .line 73
    .local v4, "expectedByteLength":I
    move v5, v4

    move v6, v3

    if-eq v5, v6, :cond_0

    .line 75
    new-instance v5, Lorg/jose4j/lang/InvalidKeyException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid key for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-interface {v8}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", expected a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v4

    invoke-static {v8}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " bit key but a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-static {v8}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " bit key was provided."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 81
    .end local v3    # "managementKeyByteLength":I
    .end local v4    # "expectedByteLength":I
    :cond_0
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;
    return v0
.end method

.method public manageForDecrypt(Ljava/security/Key;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "encryptedKey":[B
    move-object v3, p3

    .local v3, "cekDesc":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    move-object v4, p4

    .local v4, "headers":Lorg/jose4j/jwx/Headers;
    move-object/from16 v5, p5

    .local v5, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v6, v2

    array-length v6, v6

    if-eqz v6, :cond_0

    .line 53
    new-instance v6, Lorg/jose4j/lang/InvalidKeyException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "An empty octet sequence is to be used as the JWE Encrypted Key value when utilizing direct encryption but this JWE has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " octets in the encrypted key part."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 56
    :cond_0
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "this":Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;
    return-object v0
.end method

.method public manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;
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

    move-object v8, v0

    invoke-virtual {v8}, Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/jose4j/jwx/KeyValidationSupport;->cekNotAllowed([BLjava/lang/String;)V

    .line 45
    move-object v7, v1

    invoke-interface {v7}, Ljava/security/Key;->getEncoded()[B

    move-result-object v7

    move-object v6, v7

    .line 46
    .local v6, "cekBytes":[B
    new-instance v7, Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    sget-object v10, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    invoke-direct {v8, v9, v10}, Lorg/jose4j/jwe/ContentEncryptionKeys;-><init>([B[B)V

    move-object v0, v7

    .end local v0    # "this":Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;
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
    .line 86
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;->validateKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V

    .line 87
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
    .line 62
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;->validateKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V

    .line 63
    return-void
.end method
