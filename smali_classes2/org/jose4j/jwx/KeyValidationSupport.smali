.class public Lorg/jose4j/jwx/KeyValidationSupport;
.super Ljava/lang/Object;
.source "KeyValidationSupport.java"


# static fields
.field public static final MIN_RSA_KEY_LENGTH:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/KeyValidationSupport;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static castKey(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/Key;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/security/Key;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TK;>;)TK;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "key":Ljava/security/Key;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    move-object v3, v0

    invoke-static {v3}, Lorg/jose4j/jwx/KeyValidationSupport;->notNull(Ljava/security/Key;)V

    .line 60
    move-object v3, v1

    move-object v4, v0

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Key;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .end local v0    # "key":Ljava/security/Key;
    return-object v0

    .line 62
    .restart local v0    # "key":Ljava/security/Key;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 64
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/jose4j/lang/InvalidKeyException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid key "

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

.method public static cekNotAllowed([BLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "cekOverride":[B
    move-object v1, p1

    .local v1, "alg":Ljava/lang/String;
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 80
    new-instance v2, Lorg/jose4j/lang/InvalidKeyException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "An explicit content encryption key cannot be used with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_0
    return-void
.end method

.method public static checkRsaKeySize(Ljava/security/Key;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "key":Ljava/security/Key;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 36
    new-instance v3, Lorg/jose4j/lang/InvalidKeyException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "The RSA key must not be null."

    invoke-direct {v4, v5}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 42
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Ljava/security/interfaces/RSAKey;

    if-eqz v3, :cond_1

    .line 44
    move-object v3, v0

    check-cast v3, Ljava/security/interfaces/RSAKey;

    move-object v1, v3

    .line 45
    .local v1, "rsaKey":Ljava/security/interfaces/RSAKey;
    move-object v3, v1

    invoke-interface {v3}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    move v2, v3

    .line 46
    .local v2, "size":I
    move v3, v2

    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    .line 48
    new-instance v3, Lorg/jose4j/lang/InvalidKeyException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "An RSA key of size 2048 bits or larger MUST be used with the all JOSE RSA algorithms (given key was only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bits)."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 52
    .end local v1    # "rsaKey":Ljava/security/interfaces/RSAKey;
    .end local v2    # "size":I
    :cond_1
    return-void
.end method

.method public static notNull(Ljava/security/Key;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "key":Ljava/security/Key;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lorg/jose4j/lang/InvalidKeyException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "The key must not be null."

    invoke-direct {v2, v3}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_0
    return-void
.end method

.method public static validateAesWrappingKey(Ljava/security/Key;Ljava/lang/String;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "managementKey":Ljava/security/Key;
    move-object v1, p1

    .local v1, "joseAlg":Ljava/lang/String;
    move v2, p2

    .local v2, "expectedKeyByteLength":I
    move-object v5, v0

    invoke-static {v5}, Lorg/jose4j/jwx/KeyValidationSupport;->notNull(Ljava/security/Key;)V

    .line 88
    move-object v5, v0

    invoke-interface {v5}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 90
    .local v3, "alg":Ljava/lang/String;
    const-string/jumbo v5, "AES"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 92
    new-instance v5, Lorg/jose4j/lang/InvalidKeyException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid key for JWE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", expected an "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "AES"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " key but an "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " key was provided."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 96
    :cond_0
    move-object v5, v0

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 98
    move-object v5, v0

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    array-length v5, v5

    move v4, v5

    .line 99
    .local v4, "managementKeyByteLength":I
    move v5, v4

    move v6, v2

    if-eq v5, v6, :cond_1

    .line 101
    new-instance v5, Lorg/jose4j/lang/InvalidKeyException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid key for JWE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", expected a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-static {v8}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " bit key but a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v4

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

    .line 106
    .end local v4    # "managementKeyByteLength":I
    :cond_1
    return-void
.end method
