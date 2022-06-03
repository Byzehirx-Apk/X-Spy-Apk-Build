.class abstract Lorg/jose4j/keys/KeyPairUtil;
.super Ljava/lang/Object;
.source "KeyPairUtil.java"


# static fields
.field private static final BEGIN_PUBLIC_KEY:Ljava/lang/String; = "-----BEGIN PUBLIC KEY-----"

.field private static final END_PUBLIC_KEY:Ljava/lang/String; = "-----END PUBLIC KEY-----"


# instance fields
.field protected provider:Ljava/lang/String;

.field protected secureRandom:Ljava/security/SecureRandom;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/security/SecureRandom;)V
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/KeyPairUtil;
    move-object v1, p1

    .local v1, "provider":Ljava/lang/String;
    move-object v2, p2

    .local v2, "secureRandom":Ljava/security/SecureRandom;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/jose4j/keys/KeyPairUtil;->provider:Ljava/lang/String;

    .line 46
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/jose4j/keys/KeyPairUtil;->secureRandom:Ljava/security/SecureRandom;

    .line 47
    return-void
.end method

.method public static pemEncode(Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "publicKey":Ljava/security/PublicKey;
    move-object v2, v0

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    move-object v1, v2

    .line 99
    .local v1, "encoded":[B
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "-----BEGIN PUBLIC KEY-----\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-static {v3}, Lorg/jose4j/base64url/SimplePEMEncoder;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-----END PUBLIC KEY-----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "publicKey":Ljava/security/PublicKey;
    return-object v0
.end method


# virtual methods
.method public fromPemEncoded(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/KeyPairUtil;
    move-object v1, p1

    .local v1, "pem":Ljava/lang/String;
    move-object v8, v1

    const-string/jumbo v9, "-----BEGIN PUBLIC KEY-----"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "-----BEGIN PUBLIC KEY-----"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    move v2, v8

    .line 88
    .local v2, "beginIndex":I
    move-object v8, v1

    const-string/jumbo v9, "-----END PUBLIC KEY-----"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move v3, v8

    .line 89
    .local v3, "endIndex":I
    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 90
    .local v4, "base64":Ljava/lang/String;
    move-object v8, v4

    invoke-static {v8}, Lorg/jose4j/base64url/SimplePEMEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v8

    move-object v5, v8

    .line 91
    .local v5, "decode":[B
    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v5

    invoke-direct {v9, v10}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    move-object v6, v8

    .line 92
    .local v6, "spec":Ljava/security/spec/X509EncodedKeySpec;
    move-object v8, v0

    invoke-virtual {v8}, Lorg/jose4j/keys/KeyPairUtil;->getKeyFactory()Ljava/security/KeyFactory;

    move-result-object v8

    move-object v7, v8

    .line 93
    .local v7, "kf":Ljava/security/KeyFactory;
    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Lorg/jose4j/keys/KeyPairUtil;
    return-object v0
.end method

.method abstract getAlgorithm()Ljava/lang/String;
.end method

.method protected getKeyFactory()Ljava/security/KeyFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/KeyPairUtil;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/jose4j/keys/KeyPairUtil;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 56
    .local v1, "agl":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/jose4j/keys/KeyPairUtil;->provider:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v3, v1

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/keys/KeyPairUtil;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/keys/KeyPairUtil;
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/keys/KeyPairUtil;->provider:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 58
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 60
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Lorg/jose4j/lang/JoseException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t find "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " KeyFactory! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 62
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 64
    .local v2, "e":Ljava/security/NoSuchProviderException;
    new-instance v3, Lorg/jose4j/lang/JoseException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot get KeyFactory instance with provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/keys/KeyPairUtil;->provider:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected getKeyPairGenerator()Ljava/security/KeyPairGenerator;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/KeyPairUtil;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/jose4j/keys/KeyPairUtil;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 73
    .local v1, "alg":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/jose4j/keys/KeyPairUtil;->provider:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v3, v1

    invoke-static {v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/keys/KeyPairUtil;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/keys/KeyPairUtil;
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/keys/KeyPairUtil;->provider:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 75
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 77
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Lorg/jose4j/lang/JoseException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t find "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " KeyPairGenerator! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 79
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 81
    .local v2, "e":Ljava/security/NoSuchProviderException;
    new-instance v3, Lorg/jose4j/lang/JoseException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot get KeyPairGenerator instance with provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/keys/KeyPairUtil;->provider:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isAvailable()Z
    .locals 6

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/KeyPairUtil;
    const-string/jumbo v4, "KeyFactory"

    invoke-static {v4}, Ljava/security/Security;->getAlgorithms(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    move-object v1, v4

    .line 105
    .local v1, "keyFactories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v4, "KeyPairGenerator"

    invoke-static {v4}, Ljava/security/Security;->getAlgorithms(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    move-object v2, v4

    .line 106
    .local v2, "keyPairGenerators":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lorg/jose4j/keys/KeyPairUtil;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 107
    .local v3, "algorithm":Ljava/lang/String;
    move-object v4, v2

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Lorg/jose4j/keys/KeyPairUtil;
    return v0

    .restart local v0    # "this":Lorg/jose4j/keys/KeyPairUtil;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
