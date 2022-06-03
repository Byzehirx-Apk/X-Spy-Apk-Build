.class public Lorg/jose4j/jwe/JsonWebEncryption;
.super Lorg/jose4j/jwx/JsonWebStructure;
.source "JsonWebEncryption.java"


# static fields
.field public static final COMPACT_SERIALIZATION_PARTS:S = 0x5s


# instance fields
.field private base64url:Lorg/jose4j/base64url/Base64Url;

.field ciphertext:[B

.field private contentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

.field contentEncryptionKey:[B

.field encryptedKey:[B

.field iv:[B

.field private plaintext:[B

.field private plaintextCharEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, v0

    invoke-direct {v1}, Lorg/jose4j/jwx/JsonWebStructure;-><init>()V

    .line 42
    move-object v1, v0

    new-instance v2, Lorg/jose4j/base64url/Base64Url;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    iput-object v2, v1, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    .line 44
    move-object v1, v0

    const-string/jumbo v2, "UTF-8"

    iput-object v2, v1, Lorg/jose4j/jwe/JsonWebEncryption;->plaintextCharEncoding:Ljava/lang/String;

    .line 53
    move-object v1, v0

    sget-object v2, Lorg/jose4j/jwa/AlgorithmConstraints;->NO_CONSTRAINTS:Lorg/jose4j/jwa/AlgorithmConstraints;

    iput-object v2, v1, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-void
.end method

.method private decrypt()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v8, v0

    invoke-virtual {v8}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v8

    move-object v1, v8

    .line 196
    .local v1, "keyManagementModeAlg":Lorg/jose4j/jwe/KeyManagementAlgorithm;
    move-object v8, v0

    invoke-virtual {v8}, Lorg/jose4j/jwe/JsonWebEncryption;->getContentEncryptionAlgorithm()Lorg/jose4j/jwe/ContentEncryptionAlgorithm;

    move-result-object v8

    move-object v2, v8

    .line 198
    .local v2, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object v8, v2

    invoke-interface {v8}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-result-object v8

    move-object v3, v8

    .line 200
    .local v3, "contentEncryptionKeyDesc":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    move-object v8, v0

    invoke-virtual {v8}, Lorg/jose4j/jwe/JsonWebEncryption;->isDoKeyValidation()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 202
    move-object v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Lorg/jose4j/jwe/JsonWebEncryption;->getKey()Ljava/security/Key;

    move-result-object v9

    move-object v10, v2

    invoke-interface {v8, v9, v10}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V

    .line 205
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lorg/jose4j/jwe/JsonWebEncryption;->checkCrit()V

    .line 207
    move-object v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Lorg/jose4j/jwe/JsonWebEncryption;->getKey()Ljava/security/Key;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v10}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncryptedKey()[B

    move-result-object v10

    move-object v11, v3

    move-object v12, v0

    invoke-virtual {v12}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v12

    move-object v13, v0

    invoke-virtual {v13}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v13

    invoke-interface/range {v8 .. v13}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->manageForDecrypt(Ljava/security/Key;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;

    move-result-object v8

    move-object v4, v8

    .line 209
    .local v4, "cek":Ljava/security/Key;
    new-instance v8, Lorg/jose4j/jwe/ContentEncryptionParts;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/jwe/JsonWebEncryption;->iv:[B

    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwe/JsonWebEncryption;->ciphertext:[B

    move-object v12, v0

    invoke-virtual {v12}, Lorg/jose4j/jwe/JsonWebEncryption;->getIntegrity()[B

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lorg/jose4j/jwe/ContentEncryptionParts;-><init>([B[B[B)V

    move-object v5, v8

    .line 210
    .local v5, "contentEncryptionParts":Lorg/jose4j/jwe/ContentEncryptionParts;
    move-object v8, v0

    invoke-virtual {v8}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncodedHeaderAsciiBytesForAdditionalAuthenticatedData()[B

    move-result-object v8

    move-object v6, v8

    .line 211
    .local v6, "aad":[B
    move-object v8, v2

    move-object v9, v5

    move-object v10, v6

    move-object v11, v4

    invoke-interface {v11}, Ljava/security/Key;->getEncoded()[B

    move-result-object v11

    move-object v12, v0

    invoke-virtual {v12}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v12

    move-object v13, v0

    invoke-virtual {v13}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v13

    invoke-interface/range {v8 .. v13}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->decrypt(Lorg/jose4j/jwe/ContentEncryptionParts;[B[BLorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)[B

    move-result-object v8

    move-object v7, v8

    .line 213
    .local v7, "decrypted":[B
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Lorg/jose4j/jwe/JsonWebEncryption;->decompress(Lorg/jose4j/jwx/Headers;[B)[B

    move-result-object v8

    move-object v7, v8

    .line 215
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Lorg/jose4j/jwe/JsonWebEncryption;->setPlaintext([B)V

    .line 216
    return-void
.end method


# virtual methods
.method compress(Lorg/jose4j/jwx/Headers;[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, p1

    .local v1, "headers":Lorg/jose4j/jwx/Headers;
    move-object v2, p2

    .local v2, "data":[B
    move-object v7, v1

    const-string/jumbo v8, "zip"

    invoke-virtual {v7, v8}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 245
    .local v3, "zipHeaderValue":Ljava/lang/String;
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 247
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object v7

    move-object v4, v7

    .line 248
    .local v4, "factoryFactory":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    move-object v7, v4

    invoke-virtual {v7}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getCompressionAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object v7

    move-object v5, v7

    .line 249
    .local v5, "zipAlgFactory":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<Lorg/jose4j/zip/CompressionAlgorithm;>;"
    move-object v7, v5

    move-object v8, v3

    invoke-virtual {v7, v8}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object v7

    check-cast v7, Lorg/jose4j/zip/CompressionAlgorithm;

    move-object v6, v7

    .line 250
    .local v6, "compressionAlgorithm":Lorg/jose4j/zip/CompressionAlgorithm;
    move-object v7, v6

    move-object v8, v2

    invoke-interface {v7, v8}, Lorg/jose4j/zip/CompressionAlgorithm;->compress([B)[B

    move-result-object v7

    move-object v2, v7

    .line 252
    .end local v4    # "factoryFactory":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    .end local v5    # "zipAlgFactory":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<Lorg/jose4j/zip/CompressionAlgorithm;>;"
    .end local v6    # "compressionAlgorithm":Lorg/jose4j/zip/CompressionAlgorithm;
    :cond_0
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method decompress(Lorg/jose4j/jwx/Headers;[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, p1

    .local v1, "headers":Lorg/jose4j/jwx/Headers;
    move-object v2, p2

    .local v2, "data":[B
    move-object v7, v1

    const-string/jumbo v8, "zip"

    invoke-virtual {v7, v8}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 232
    .local v3, "zipHeaderValue":Ljava/lang/String;
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 234
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object v7

    move-object v4, v7

    .line 235
    .local v4, "factoryFactory":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    move-object v7, v4

    invoke-virtual {v7}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getCompressionAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object v7

    move-object v5, v7

    .line 236
    .local v5, "zipAlgFactory":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<Lorg/jose4j/zip/CompressionAlgorithm;>;"
    move-object v7, v5

    move-object v8, v3

    invoke-virtual {v7, v8}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object v7

    check-cast v7, Lorg/jose4j/zip/CompressionAlgorithm;

    move-object v6, v7

    .line 237
    .local v6, "compressionAlgorithm":Lorg/jose4j/zip/CompressionAlgorithm;
    move-object v7, v6

    move-object v8, v2

    invoke-interface {v7, v8}, Lorg/jose4j/zip/CompressionAlgorithm;->decompress([B)[B

    move-result-object v7

    move-object v2, v7

    .line 239
    .end local v4    # "factoryFactory":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    .end local v5    # "zipAlgFactory":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<Lorg/jose4j/zip/CompressionAlgorithm;>;"
    .end local v6    # "compressionAlgorithm":Lorg/jose4j/zip/CompressionAlgorithm;
    :cond_0
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method public enableDefaultCompression()V
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, v0

    const-string/jumbo v2, "DEF"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwe/JsonWebEncryption;->setCompressionAlgorithmHeaderParameter(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public bridge synthetic getAlgorithm()Lorg/jose4j/jwa/Algorithm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method public getAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method public bridge synthetic getAlgorithmNoConstraintCheck()Lorg/jose4j/jwa/Algorithm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method public getAlgorithmNoConstraintCheck()Lorg/jose4j/jwe/KeyManagementAlgorithm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm(Z)Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method public getCompactSerialization()Ljava/lang/String;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 257
    move-object/from16 v2, p0

    .local v2, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v17

    move-object/from16 v3, v17

    .line 258
    .local v3, "keyManagementModeAlg":Lorg/jose4j/jwe/KeyManagementAlgorithm;
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lorg/jose4j/jwe/JsonWebEncryption;->getContentEncryptionAlgorithm()Lorg/jose4j/jwe/ContentEncryptionAlgorithm;

    move-result-object v17

    move-object/from16 v4, v17

    .line 260
    .local v4, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object/from16 v17, v4

    invoke-interface/range {v17 .. v17}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-result-object v17

    move-object/from16 v5, v17

    .line 261
    .local v5, "contentEncryptionKeyDesc":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lorg/jose4j/jwe/JsonWebEncryption;->getKey()Ljava/security/Key;

    move-result-object v17

    move-object/from16 v6, v17

    .line 262
    .local v6, "managementKey":Ljava/security/Key;
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lorg/jose4j/jwe/JsonWebEncryption;->isDoKeyValidation()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 264
    move-object/from16 v17, v3

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lorg/jose4j/jwe/JsonWebEncryption;->getKey()Ljava/security/Key;

    move-result-object v18

    move-object/from16 v19, v4

    invoke-interface/range {v17 .. v19}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->validateEncryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V

    .line 267
    :cond_0
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v5

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v20

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionKey:[B

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v22

    invoke-interface/range {v17 .. v22}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-result-object v17

    move-object/from16 v7, v17

    .line 268
    .local v7, "contentEncryptionKeys":Lorg/jose4j/jwe/ContentEncryptionKeys;
    move-object/from16 v17, v2

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getContentEncryptionKey()[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/jose4j/jwe/JsonWebEncryption;->setContentEncryptionKey([B)V

    .line 269
    move-object/from16 v17, v2

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getEncryptedKey()[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jose4j/jwe/JsonWebEncryption;->encryptedKey:[B

    .line 271
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncodedHeaderAsciiBytesForAdditionalAuthenticatedData()[B

    move-result-object v17

    move-object/from16 v8, v17

    .line 272
    .local v8, "aad":[B
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getContentEncryptionKey()[B

    move-result-object v17

    move-object/from16 v9, v17

    .line 274
    .local v9, "contentEncryptionKey":[B
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    move-object/from16 v17, v0

    move-object/from16 v10, v17

    .line 275
    .local v10, "plaintextBytes":[B
    move-object/from16 v17, v10

    if-nez v17, :cond_1

    .line 277
    new-instance v17, Ljava/lang/NullPointerException;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const-string/jumbo v19, "The plaintext payload for the JWE has not been set."

    invoke-direct/range {v18 .. v19}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 280
    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v18

    move-object/from16 v19, v10

    invoke-virtual/range {v17 .. v19}, Lorg/jose4j/jwe/JsonWebEncryption;->compress(Lorg/jose4j/jwx/Headers;[B)[B

    move-result-object v17

    move-object/from16 v10, v17

    .line 282
    move-object/from16 v17, v4

    move-object/from16 v18, v10

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v21

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lorg/jose4j/jwe/JsonWebEncryption;->getIv()[B

    move-result-object v22

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v23

    invoke-interface/range {v17 .. v23}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->encrypt([B[B[BLorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionParts;

    move-result-object v17

    move-object/from16 v11, v17

    .line 283
    .local v11, "contentEncryptionParts":Lorg/jose4j/jwe/ContentEncryptionParts;
    move-object/from16 v17, v2

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Lorg/jose4j/jwe/ContentEncryptionParts;->getIv()[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/jose4j/jwe/JsonWebEncryption;->setIv([B)V

    .line 284
    move-object/from16 v17, v2

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Lorg/jose4j/jwe/ContentEncryptionParts;->getCiphertext()[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jose4j/jwe/JsonWebEncryption;->ciphertext:[B

    .line 286
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Lorg/jose4j/jwe/ContentEncryptionParts;->getIv()[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v12, v17

    .line 287
    .local v12, "encodedIv":Ljava/lang/String;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Lorg/jose4j/jwe/ContentEncryptionParts;->getCiphertext()[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v13, v17

    .line 288
    .local v13, "encodedCiphertext":Ljava/lang/String;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Lorg/jose4j/jwe/ContentEncryptionParts;->getAuthenticationTag()[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v14, v17

    .line 291
    .local v14, "encodedTag":Ljava/lang/String;
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getEncryptedKey()[B

    move-result-object v17

    move-object/from16 v15, v17

    .line 292
    .local v15, "encryptedKey":[B
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    move-object/from16 v17, v0

    move-object/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v16, v17

    .line 294
    .local v16, "encodedEncryptedKey":Ljava/lang/String;
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const/16 v19, 0x0

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncodedHeader()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const/16 v19, 0x1

    move-object/from16 v20, v16

    aput-object v20, v18, v19

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const/16 v19, 0x2

    move-object/from16 v20, v12

    aput-object v20, v18, v19

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const/16 v19, 0x3

    move-object/from16 v20, v13

    aput-object v20, v18, v19

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const/16 v19, 0x4

    move-object/from16 v20, v14

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v17}, Lorg/jose4j/jwx/CompactSerializer;->serialize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v2, v17

    .end local v2    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v2
.end method

.method public getCompressionAlgorithmHeaderParameter()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, v0

    const-string/jumbo v2, "zip"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method public getContentEncryptionAlgorithm()Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncryptionMethodHeaderParameter()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 129
    .local v1, "encValue":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 131
    new-instance v4, Lorg/jose4j/lang/InvalidAlgorithmException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Content encryption header (enc) not set."

    invoke-direct {v5, v6}, Lorg/jose4j/lang/InvalidAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/jose4j/jwa/AlgorithmConstraints;->checkConstraint(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object v4

    move-object v2, v4

    .line 136
    .local v2, "factoryFactory":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    move-object v4, v2

    invoke-virtual {v4}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getJweContentEncryptionAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object v4

    move-object v3, v4

    .line 137
    .local v3, "factory":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<Lorg/jose4j/jwe/ContentEncryptionAlgorithm;>;"
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object v4

    check-cast v4, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method public getContentEncryptionKey()[B
    .locals 2

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionKey:[B

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method getEncodedHeaderAsciiBytesForAdditionalAuthenticatedData()[B
    .locals 3

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncodedHeader()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 226
    .local v1, "encodedHeader":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lorg/jose4j/lang/StringUtil;->getBytesAscii(Ljava/lang/String;)[B

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method public getEncryptedKey()[B
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/JsonWebEncryption;->encryptedKey:[B

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method public getEncryptionMethodHeaderParameter()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, v0

    const-string/jumbo v2, "enc"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method public getIv()[B
    .locals 2

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/JsonWebEncryption;->iv:[B

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method public getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm(Z)Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method getKeyManagementModeAlgorithm(Z)Lorg/jose4j/jwe/KeyManagementAlgorithm;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move v1, p1

    .local v1, "checkConstraints":Z
    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithmHeaderValue()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 148
    .local v2, "algo":Ljava/lang/String;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 150
    new-instance v5, Lorg/jose4j/lang/InvalidAlgorithmException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Encryption key management algorithm header (alg) not set."

    invoke-direct {v6, v7}, Lorg/jose4j/lang/InvalidAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 153
    :cond_0
    move v5, v1

    if-eqz v5, :cond_1

    .line 155
    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithmConstraints()Lorg/jose4j/jwa/AlgorithmConstraints;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/jose4j/jwa/AlgorithmConstraints;->checkConstraint(Ljava/lang/String;)V

    .line 157
    :cond_1
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object v5

    move-object v3, v5

    .line 158
    .local v3, "factoryFactory":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    move-object v5, v3

    invoke-virtual {v5}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getJweKeyManagementAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object v5

    move-object v4, v5

    .line 159
    .local v4, "factory":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<Lorg/jose4j/jwe/KeyManagementAlgorithm;>;"
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object v5

    check-cast v5, Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-object v0, v5

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/jwe/JsonWebEncryption;->getPlaintextString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method public getPlaintextBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    if-nez v1, :cond_0

    .line 79
    move-object v1, v0

    invoke-direct {v1}, Lorg/jose4j/jwe/JsonWebEncryption;->decrypt()V

    .line 81
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method public getPlaintextString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/jwe/JsonWebEncryption;->getPlaintextBytes()[B

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwe/JsonWebEncryption;->plaintextCharEncoding:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jose4j/lang/StringUtil;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method protected setCompactSerializationParts([Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, p1

    .local v1, "parts":[Ljava/lang/String;
    move-object v5, v1

    array-length v5, v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    .line 178
    new-instance v5, Lorg/jose4j/lang/JoseException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "A JWE Compact Serialization must have exactly 5 parts separated by period (\'.\') characters"

    invoke-direct {v6, v7}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 181
    :cond_0
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/jose4j/jwe/JsonWebEncryption;->setEncodedHeader(Ljava/lang/String;)V

    .line 182
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    move-object v7, v1

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v5, Lorg/jose4j/jwe/JsonWebEncryption;->encryptedKey:[B

    .line 183
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/jose4j/jwe/JsonWebEncryption;->setEncodedIv(Ljava/lang/String;)V

    .line 184
    move-object v5, v1

    const/4 v6, 0x3

    aget-object v5, v5, v6

    move-object v2, v5

    .line 185
    .local v2, "encodedCiphertext":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v2

    const-string/jumbo v7, "Encoded JWE Ciphertext"

    invoke-virtual {v5, v6, v7}, Lorg/jose4j/jwe/JsonWebEncryption;->checkNotEmptyPart(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v5, Lorg/jose4j/jwe/JsonWebEncryption;->ciphertext:[B

    .line 187
    move-object v5, v1

    const/4 v6, 0x4

    aget-object v5, v5, v6

    move-object v3, v5

    .line 188
    .local v3, "encodedAuthenticationTag":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v3

    const-string/jumbo v7, "Encoded JWE Authentication Tag"

    invoke-virtual {v5, v6, v7}, Lorg/jose4j/jwe/JsonWebEncryption;->checkNotEmptyPart(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    move-object v6, v3

    invoke-virtual {v5, v6}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v5

    move-object v4, v5

    .line 190
    .local v4, "tag":[B
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lorg/jose4j/jwe/JsonWebEncryption;->setIntegrity([B)V

    .line 191
    return-void
.end method

.method public setCompressionAlgorithmHeaderParameter(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, p1

    .local v1, "zip":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "zip"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwe/JsonWebEncryption;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public setContentEncryptionAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, p1

    .local v1, "contentEncryptionAlgorithmConstraints":Lorg/jose4j/jwa/AlgorithmConstraints;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 124
    return-void
.end method

.method public setContentEncryptionKey([B)V
    .locals 4

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, p1

    .local v1, "contentEncryptionKey":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionKey:[B

    .line 305
    return-void
.end method

.method public setEncodedContentEncryptionKey(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, p1

    .local v1, "encodedContentEncryptionKey":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    move-object v3, v1

    invoke-static {v3}, Lorg/jose4j/base64url/Base64Url;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jose4j/jwe/JsonWebEncryption;->setContentEncryptionKey([B)V

    .line 310
    return-void
.end method

.method public setEncodedIv(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, p1

    .local v1, "encodedIv":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jose4j/jwe/JsonWebEncryption;->setIv([B)V

    .line 326
    return-void
.end method

.method public setEncryptionMethodHeaderParameter(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, p1

    .local v1, "enc":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "enc"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwe/JsonWebEncryption;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setIv([B)V
    .locals 4

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, p1

    .local v1, "iv":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwe/JsonWebEncryption;->iv:[B

    .line 320
    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, p1

    .local v1, "payload":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/jwe/JsonWebEncryption;->setPlaintext(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setPlainTextCharEncoding(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, p1

    .local v1, "plaintextCharEncoding":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwe/JsonWebEncryption;->plaintextCharEncoding:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPlaintext(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, p1

    .local v1, "plaintext":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwe/JsonWebEncryption;->plaintextCharEncoding:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/jose4j/lang/StringUtil;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v2, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    .line 68
    return-void
.end method

.method public setPlaintext([B)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v1, p1

    .local v1, "plaintext":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    .line 63
    return-void
.end method
