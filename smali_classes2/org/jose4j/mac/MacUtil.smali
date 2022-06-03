.class public Lorg/jose4j/mac/MacUtil;
.super Ljava/lang/Object;
.source "MacUtil.java"


# static fields
.field public static final HMAC_SHA256:Ljava/lang/String; = "HmacSHA256"

.field public static final HMAC_SHA384:Ljava/lang/String; = "HmacSHA384"

.field public static final HMAC_SHA512:Ljava/lang/String; = "HmacSHA512"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/mac/MacUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitializedMac(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "algorithm":Ljava/lang/String;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/jose4j/mac/MacUtil;->getInitializedMac(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "algorithm":Ljava/lang/String;
    return-object v0
.end method

.method public static getInitializedMac(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "algorithm":Ljava/lang/String;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, p2

    .local v2, "provider":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v2

    invoke-static {v4, v5}, Lorg/jose4j/mac/MacUtil;->getMac(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    move-object v3, v4

    .line 43
    .local v3, "mac":Ljavax/crypto/Mac;
    move-object v4, v3

    move-object v5, v1

    invoke-static {v4, v5}, Lorg/jose4j/mac/MacUtil;->initMacWithKey(Ljavax/crypto/Mac;Ljava/security/Key;)V

    .line 44
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "algorithm":Ljava/lang/String;
    return-object v0
.end method

.method public static getMac(Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "algorithm":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/jose4j/mac/MacUtil;->getMac(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "algorithm":Ljava/lang/String;
    return-object v0
.end method

.method public static getMac(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "algorithm":Ljava/lang/String;
    move-object v1, p1

    .local v1, "provider":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "algorithm":Ljava/lang/String;
    return-object v0

    .restart local v0    # "algorithm":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;
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

    const-string/jumbo v6, "Unable to get a MAC implementation of algorithm name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string/jumbo v6, "Unable to get a MAC implementation of algorithm name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " using provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static initMacWithKey(Ljavax/crypto/Mac;Ljava/security/Key;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "mac":Ljavax/crypto/Mac;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    return-void

    .line 74
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 76
    .local v2, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Lorg/jose4j/lang/InvalidKeyException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Key is not valid for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
