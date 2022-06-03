.class public abstract Lorg/jose4j/jws/BaseSignatureAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "BaseSignatureAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jws/JsonWebSignatureAlgorithm;


# instance fields
.field private algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object v2, p2

    .local v2, "javaAlgo":Ljava/lang/String;
    move-object v3, p3

    .local v3, "keyAlgo":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 35
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    iput-object v5, v4, Lorg/jose4j/jws/BaseSignatureAlgorithm;->log:Lorg/slf4j/Logger;

    .line 41
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 42
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    .line 43
    move-object v4, v0

    sget-object v5, Lorg/jose4j/keys/KeyPersuasion;->ASYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {v4, v5}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 44
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private checkForNullKey(Ljava/security/Key;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 202
    new-instance v2, Lorg/jose4j/lang/InvalidKeyException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Key cannot be null"

    invoke-direct {v3, v4}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_0
    return-void
.end method

.method private getBadKeyMessage(Ljava/security/Key;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, "key is null"

    :goto_0
    move-object v2, v3

    .line 122
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The given key ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") is not valid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    return-object v0

    .line 121
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v0    # "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "algorithm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v4}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getSignature(Lorg/jose4j/jca/ProviderContext;)Ljava/security/Signature;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    move-object v1, p1

    .local v1, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v6, v1

    invoke-virtual {v6}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jose4j/jca/ProviderContext$Context;->getSignatureProvider()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 128
    .local v2, "sigProvider":Ljava/lang/String;
    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 132
    .local v3, "javaAlg":Ljava/lang/String;
    move-object v6, v2

    if-nez v6, :cond_1

    move-object v6, v3

    :try_start_0
    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v6

    :goto_0
    move-object v4, v6

    .line 133
    .local v4, "signature":Ljava/security/Signature;
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jws/BaseSignatureAlgorithm;->algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v6, :cond_0

    .line 137
    move-object v6, v4

    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Lorg/jose4j/jws/BaseSignatureAlgorithm;->algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v6, v7}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_3

    .line 146
    .line 148
    :cond_0
    :goto_1
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    return-object v0

    .line 132
    .end local v4    # "signature":Ljava/security/Signature;
    .restart local v0    # "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    :cond_1
    move-object v6, v3

    move-object v7, v2

    :try_start_2
    invoke-static {v6, v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v6

    goto :goto_0

    .line 139
    .restart local v4    # "signature":Ljava/security/Signature;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 141
    .local v5, "e":Ljava/lang/UnsupportedOperationException;
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jws/BaseSignatureAlgorithm;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 143
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jws/BaseSignatureAlgorithm;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to set algorithm parameter spec on Signature (java algorithm name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") so ignoring the UnsupportedOperationException and relying on the default parameters."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 150
    .end local v4    # "signature":Ljava/security/Signature;
    .end local v5    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 152
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Lorg/jose4j/lang/JoseException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to get an implementation of algorithm name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 154
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v6

    move-object v4, v6

    .line 156
    .local v4, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v6, Lorg/jose4j/lang/JoseException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid algorithm parameter ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/jws/BaseSignatureAlgorithm;->algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 158
    .end local v4    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v6

    move-object v4, v6

    .line 160
    .local v4, "e":Ljava/security/NoSuchProviderException;
    new-instance v6, Lorg/jose4j/lang/JoseException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to get an implementation of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " for provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private initForSign(Ljava/security/Signature;Ljava/security/Key;Lorg/jose4j/jca/ProviderContext;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    move-object v1, p1

    .local v1, "signature":Ljava/security/Signature;
    move-object v2, p2

    .local v2, "key":Ljava/security/Key;
    move-object v3, p3

    .local v3, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v6, v2

    :try_start_0
    check-cast v6, Ljava/security/PrivateKey;

    move-object v4, v6

    .line 90
    .local v4, "privateKey":Ljava/security/PrivateKey;
    move-object v6, v3

    invoke-virtual {v6}, Lorg/jose4j/jca/ProviderContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    move-object v5, v6

    .line 91
    .local v5, "secureRandom":Ljava/security/SecureRandom;
    move-object v6, v5

    if-nez v6, :cond_0

    .line 93
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 103
    .line 104
    :goto_0
    return-void

    .line 97
    :cond_0
    move-object v6, v1

    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v4    # "privateKey":Ljava/security/PrivateKey;
    .end local v5    # "secureRandom":Ljava/security/SecureRandom;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 102
    .local v4, "e":Ljava/security/InvalidKeyException;
    new-instance v6, Lorg/jose4j/lang/InvalidKeyException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->getBadKeyMessage(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private initForVerify(Ljava/security/Signature;Ljava/security/Key;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    move-object v1, p1

    .local v1, "signature":Ljava/security/Signature;
    move-object v2, p2

    .local v2, "key":Ljava/security/Key;
    move-object v4, v2

    :try_start_0
    check-cast v4, Ljava/security/PublicKey;

    move-object v3, v4

    .line 111
    .local v3, "publicKey":Ljava/security/PublicKey;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    return-void

    .line 113
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 115
    .local v3, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Lorg/jose4j/lang/InvalidKeyException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->getBadKeyMessage(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public isAvailable()Z
    .locals 6

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    move-object v2, v0

    :try_start_0
    new-instance v3, Lorg/jose4j/jca/ProviderContext;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/jose4j/jca/ProviderContext;-><init>()V

    invoke-direct {v2, v3}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->getSignature(Lorg/jose4j/jca/ProviderContext;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v1, v2

    .line 212
    .local v1, "signature":Ljava/security/Signature;
    move-object v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 218
    .end local v0    # "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    .end local v1    # "signature":Ljava/security/Signature;
    :goto_1
    return v0

    .line 212
    .restart local v0    # "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    .restart local v1    # "signature":Ljava/security/Signature;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 214
    .end local v1    # "signature":Ljava/security/Signature;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jws/BaseSignatureAlgorithm;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    invoke-virtual {v4}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " vai "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is NOT available from the underlying JCE ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-static {v4}, Lorg/jose4j/lang/ExceptionHelp;->toStringWithCauses(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 218
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method protected setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    move-object v1, p1

    .local v1, "algorithmParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jws/BaseSignatureAlgorithm;->algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 50
    return-void
.end method

.method public sign(Ljava/security/Key;[BLorg/jose4j/jca/ProviderContext;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, p2

    .local v2, "securedInputBytes":[B
    move-object v3, p3

    .local v3, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v6, v0

    move-object v7, v3

    invoke-direct {v6, v7}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->getSignature(Lorg/jose4j/jca/ProviderContext;)Ljava/security/Signature;

    move-result-object v6

    move-object v4, v6

    .line 73
    .local v4, "signature":Ljava/security/Signature;
    move-object v6, v0

    move-object v7, v4

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->initForSign(Ljava/security/Signature;Ljava/security/Key;Lorg/jose4j/jca/ProviderContext;)V

    .line 76
    move-object v6, v4

    move-object v7, v2

    :try_start_0
    invoke-virtual {v6, v7}, Ljava/security/Signature;->update([B)V

    .line 77
    move-object v6, v4

    invoke-virtual {v6}, Ljava/security/Signature;->sign()[B
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    return-object v0

    .line 79
    .restart local v0    # "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 81
    .local v5, "e":Ljava/security/SignatureException;
    new-instance v6, Lorg/jose4j/lang/JoseException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Problem creating signature."

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public abstract validatePrivateKey(Ljava/security/PrivateKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract validatePublicKey(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation
.end method

.method public validateSigningKey(Ljava/security/Key;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->checkForNullKey(Ljava/security/Key;)V

    .line 172
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    check-cast v4, Ljava/security/PrivateKey;

    invoke-virtual {v3, v4}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->validatePrivateKey(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    return-void

    .line 174
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 176
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/jose4j/lang/InvalidKeyException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->getBadKeyMessage(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "(not a private key or is the wrong type of key) for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public validateVerificationKey(Ljava/security/Key;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->checkForNullKey(Ljava/security/Key;)V

    .line 189
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    check-cast v4, Ljava/security/PublicKey;

    invoke-virtual {v3, v4}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->validatePublicKey(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .line 196
    return-void

    .line 191
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 193
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/jose4j/lang/InvalidKeyException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->getBadKeyMessage(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "(not a public key or is the wrong type of key) for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public verifySignature([BLjava/security/Key;[BLorg/jose4j/jca/ProviderContext;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    move-object v1, p1

    .local v1, "signatureBytes":[B
    move-object v2, p2

    .local v2, "key":Ljava/security/Key;
    move-object v3, p3

    .local v3, "securedInputBytes":[B
    move-object v4, p4

    .local v4, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->getSignature(Lorg/jose4j/jca/ProviderContext;)Ljava/security/Signature;

    move-result-object v7

    move-object v5, v7

    .line 56
    .local v5, "signature":Ljava/security/Signature;
    move-object v7, v0

    move-object v8, v5

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->initForVerify(Ljava/security/Signature;Ljava/security/Key;)V

    .line 59
    move-object v7, v5

    move-object v8, v3

    :try_start_0
    invoke-virtual {v7, v8}, Ljava/security/Signature;->update([B)V

    .line 60
    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    move v0, v7

    .line 65
    .end local v0    # "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    :goto_0
    return v0

    .line 62
    .restart local v0    # "this":Lorg/jose4j/jws/BaseSignatureAlgorithm;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 64
    .local v6, "e":Ljava/security/SignatureException;
    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/jws/BaseSignatureAlgorithm;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/jws/BaseSignatureAlgorithm;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Problem verifying signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 65
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method
