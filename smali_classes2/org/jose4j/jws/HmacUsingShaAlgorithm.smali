.class public Lorg/jose4j/jws/HmacUsingShaAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "HmacUsingShaAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jws/JsonWebSignatureAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha512;,
        Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha384;,
        Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha256;
    }
.end annotation


# instance fields
.field private minimumKeyLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/HmacUsingShaAlgorithm;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object v2, p2

    .local v2, "javaAlgo":Ljava/lang/String;
    move v3, p3

    .local v3, "minimumKeyLength":I
    move-object v4, v0

    invoke-direct {v4}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 41
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 42
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    .line 43
    move-object v4, v0

    sget-object v5, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {v4, v5}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 44
    move-object v4, v0

    const-string/jumbo v5, "oct"

    invoke-virtual {v4, v5}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 45
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->minimumKeyLength:I

    .line 46
    return-void
.end method

.method private getMacInstance(Ljava/security/Key;Lorg/jose4j/jca/ProviderContext;)Ljavax/crypto/Mac;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/HmacUsingShaAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, p2

    .local v2, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v4, v2

    invoke-virtual {v4}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jose4j/jca/ProviderContext$Context;->getMacProvider()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 70
    .local v3, "macProvider":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lorg/jose4j/mac/MacUtil;->getInitializedMac(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/jws/HmacUsingShaAlgorithm;
    return-object v0
.end method


# virtual methods
.method public isAvailable()Z
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/HmacUsingShaAlgorithm;
    const-string/jumbo v1, "Mac"

    move-object v2, v0

    invoke-virtual {v2}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jose4j/jwa/AlgorithmAvailability;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/HmacUsingShaAlgorithm;
    return v0
.end method

.method public sign(Ljava/security/Key;[BLorg/jose4j/jca/ProviderContext;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/HmacUsingShaAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, p2

    .local v2, "securedInputBytes":[B
    move-object v3, p3

    .local v3, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->getMacInstance(Ljava/security/Key;Lorg/jose4j/jca/ProviderContext;)Ljavax/crypto/Mac;

    move-result-object v5

    move-object v4, v5

    .line 64
    .local v4, "mac":Ljavax/crypto/Mac;
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lorg/jose4j/jws/HmacUsingShaAlgorithm;
    return-object v0
.end method

.method validateKey(Ljava/security/Key;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/HmacUsingShaAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 77
    new-instance v3, Lorg/jose4j/lang/InvalidKeyException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "key is null"

    invoke-direct {v4, v5}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 82
    move-object v3, v1

    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lorg/jose4j/lang/ByteUtil;->bitLength([B)I

    move-result v3

    move v2, v3

    .line 83
    .local v2, "length":I
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->minimumKeyLength:I

    if-ge v3, v4, :cond_1

    .line 85
    new-instance v3, Lorg/jose4j/lang/InvalidKeyException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "A key of the same size as the hash output (i.e. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->minimumKeyLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bits for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") or larger MUST be used with the HMAC SHA algorithms but this key is only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bits"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    .end local v2    # "length":I
    :cond_1
    return-void
.end method

.method public validateSigningKey(Ljava/security/Key;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/HmacUsingShaAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->validateKey(Ljava/security/Key;)V

    .line 95
    return-void
.end method

.method public validateVerificationKey(Ljava/security/Key;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/HmacUsingShaAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->validateKey(Ljava/security/Key;)V

    .line 100
    return-void
.end method

.method public verifySignature([BLjava/security/Key;[BLorg/jose4j/jca/ProviderContext;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/HmacUsingShaAlgorithm;
    move-object v1, p1

    .local v1, "signatureBytes":[B
    move-object v2, p2

    .local v2, "key":Ljava/security/Key;
    move-object v3, p3

    .local v3, "securedInputBytes":[B
    move-object/from16 v4, p4

    .local v4, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v7, v2

    instance-of v7, v7, Ljavax/crypto/SecretKey;

    if-nez v7, :cond_0

    .line 52
    new-instance v7, Lorg/jose4j/lang/InvalidKeyException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " cannot be used for HMAC verification."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 55
    :cond_0
    move-object v7, v0

    move-object v8, v2

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->getMacInstance(Ljava/security/Key;Lorg/jose4j/jca/ProviderContext;)Ljavax/crypto/Mac;

    move-result-object v7

    move-object v5, v7

    .line 56
    .local v5, "mac":Ljavax/crypto/Mac;
    move-object v7, v5

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v7

    move-object v6, v7

    .line 58
    .local v6, "calculatedSigature":[B
    move-object v7, v1

    move-object v8, v6

    invoke-static {v7, v8}, Lorg/jose4j/lang/ByteUtil;->secureEquals([B[B)Z

    move-result v7

    move v0, v7

    .end local v0    # "this":Lorg/jose4j/jws/HmacUsingShaAlgorithm;
    return v0
.end method
