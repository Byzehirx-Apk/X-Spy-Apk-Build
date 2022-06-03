.class public Lorg/jose4j/keys/BigEndianBigInteger;
.super Ljava/lang/Object;
.source "BigEndianBigInteger.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/BigEndianBigInteger;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBase64Url(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "base64urlEncodedBytes":Ljava/lang/String;
    new-instance v3, Lorg/jose4j/base64url/Base64Url;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    move-object v1, v3

    .line 36
    .local v1, "base64Url":Lorg/jose4j/base64url/Base64Url;
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v3

    move-object v2, v3

    .line 37
    .local v2, "magnitude":[B
    move-object v3, v2

    invoke-static {v3}, Lorg/jose4j/keys/BigEndianBigInteger;->fromBytes([B)Ljava/math/BigInteger;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "base64urlEncodedBytes":Ljava/lang/String;
    return-object v0
.end method

.method public static fromBytes([B)Ljava/math/BigInteger;
    .locals 6

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "magnitude":[B
    new-instance v1, Ljava/math/BigInteger;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v0, v1

    .end local v0    # "magnitude":[B
    return-object v0
.end method

.method public static toBase64Url(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "bigInteger":Ljava/math/BigInteger;
    new-instance v3, Lorg/jose4j/base64url/Base64Url;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    move-object v1, v3

    .line 75
    .local v1, "base64Url":Lorg/jose4j/base64url/Base64Url;
    move-object v3, v0

    invoke-static {v3}, Lorg/jose4j/keys/BigEndianBigInteger;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v3

    move-object v2, v3

    .line 76
    .local v2, "bytes":[B
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "bigInteger":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static toBase64Url(Ljava/math/BigInteger;I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "bigInteger":Ljava/math/BigInteger;
    move v1, p1

    .local v1, "minByteArrayLength":I
    new-instance v4, Lorg/jose4j/base64url/Base64Url;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    move-object v2, v4

    .line 82
    .local v2, "base64Url":Lorg/jose4j/base64url/Base64Url;
    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lorg/jose4j/keys/BigEndianBigInteger;->toByteArray(Ljava/math/BigInteger;I)[B

    move-result-object v4

    move-object v3, v4

    .line 83
    .local v3, "bytes":[B
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "bigInteger":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static toByteArray(Ljava/math/BigInteger;)[B
    .locals 8

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "bigInteger":Ljava/math/BigInteger;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_0

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot convert negative values to an unsigned magnitude byte array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 54
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    move-object v1, v3

    .line 60
    .local v1, "twosComplementBytes":[B
    move-object v3, v0

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0x8

    rem-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    move-object v3, v1

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v1

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 62
    move-object v3, v1

    const/4 v4, 0x1

    move-object v5, v1

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v5}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object v3

    move-object v2, v3

    .line 69
    .local v2, "magnitude":[B
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "bigInteger":Ljava/math/BigInteger;
    return-object v0

    .line 66
    .end local v2    # "magnitude":[B
    .restart local v0    # "bigInteger":Ljava/math/BigInteger;
    :cond_1
    move-object v3, v1

    move-object v2, v3

    .restart local v2    # "magnitude":[B
    goto :goto_0
.end method

.method public static toByteArray(Ljava/math/BigInteger;I)[B
    .locals 9

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "bigInteger":Ljava/math/BigInteger;
    move v1, p1

    .local v1, "minArrayLength":I
    move-object v3, v0

    invoke-static {v3}, Lorg/jose4j/keys/BigEndianBigInteger;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v3

    move-object v2, v3

    .line 42
    .local v2, "bytes":[B
    move v3, v1

    move-object v4, v2

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 44
    const/4 v3, 0x2

    new-array v3, v3, [[B

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move v6, v1

    move-object v7, v2

    array-length v7, v7

    sub-int/2addr v6, v7

    new-array v6, v6, [B

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    move-object v6, v2

    aput-object v6, v4, v5

    invoke-static {v3}, Lorg/jose4j/lang/ByteUtil;->concat([[B)[B

    move-result-object v3

    move-object v2, v3

    .line 46
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "bigInteger":Ljava/math/BigInteger;
    return-object v0
.end method
