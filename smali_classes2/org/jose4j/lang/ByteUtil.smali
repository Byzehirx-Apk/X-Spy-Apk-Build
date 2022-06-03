.class public Lorg/jose4j/lang/ByteUtil;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# static fields
.field public static final EMPTY_BYTES:[B

.field private static final MAX_BYTE_LENGTH:I = 0xfffffff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/lang/ByteUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitLength(I)I
    .locals 6

    .prologue
    .line 145
    move v0, p0

    .local v0, "byteLength":I
    move v1, v0

    const v2, 0xfffffff

    if-gt v1, v2, :cond_0

    move v1, v0

    if-gez v1, :cond_1

    .line 147
    :cond_0
    new-instance v1, Lorg/jose4j/lang/UncheckedJoseException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid byte length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") for converting to bit length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jose4j/lang/UncheckedJoseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_1
    move v1, v0

    const/16 v2, 0x8

    mul-int/lit8 v1, v1, 0x8

    move v0, v1

    .end local v0    # "byteLength":I
    return v0
.end method

.method public static bitLength([B)I
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "bytes":[B
    move-object v1, v0

    array-length v1, v1

    invoke-static {v1}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result v1

    move v0, v1

    .end local v0    # "bytes":[B
    return v0
.end method

.method public static byteLength(I)I
    .locals 3

    .prologue
    .line 154
    move v0, p0

    .local v0, "numberOfBits":I
    move v1, v0

    const/16 v2, 0x8

    div-int/lit8 v1, v1, 0x8

    move v0, v1

    .end local v0    # "numberOfBits":I
    return v0
.end method

.method public static varargs concat([[B)[B
    .locals 11

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "byteArrays":[[B
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v6

    .line 107
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    move-object v6, v0

    move-object v2, v6

    .local v2, "arr$":[[B
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .local v3, "len$":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i$":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 109
    .local v5, "bytes":[B
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 111
    .end local v5    # "bytes":[B
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .end local v0    # "byteArrays":[[B
    return-object v0

    .line 113
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "arr$":[[B
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .restart local v0    # "byteArrays":[[B
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 115
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "IOEx from ByteArrayOutputStream?!"

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static convertSignedTwosCompToUnsigned([B)[I
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "bytes":[B
    move-object v3, v0

    array-length v3, v3

    new-array v3, v3, [I

    move-object v1, v3

    .line 47
    .local v1, "ints":[I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "idx":I
    :goto_0
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 49
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    aget-byte v5, v5, v6

    invoke-static {v5}, Lorg/jose4j/lang/ByteUtil;->getInt(B)I

    move-result v5

    aput v5, v3, v4

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "bytes":[B
    return-object v0
.end method

.method public static convertUnsignedToSignedTwosComp([I)[B
    .locals 7

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "ints":[I
    move-object v3, v0

    array-length v3, v3

    new-array v3, v3, [B

    move-object v1, v3

    .line 37
    .local v1, "bytes":[B
    const/4 v3, 0x0

    move v2, v3

    .local v2, "idx":I
    :goto_0
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 39
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    aget v5, v5, v6

    invoke-static {v5}, Lorg/jose4j/lang/ByteUtil;->getByte(I)B

    move-result v5

    aput-byte v5, v3, v4

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "ints":[I
    return-object v0
.end method

.method public static getByte(I)B
    .locals 7

    .prologue
    .line 56
    move v0, p0

    .local v0, "intValue":I
    move v2, v0

    invoke-static {v2}, Lorg/jose4j/lang/ByteUtil;->getBytes(I)[B

    move-result-object v2

    move-object v1, v2

    .line 57
    .local v1, "bytes":[B
    move-object v2, v1

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-nez v2, :cond_0

    move-object v2, v1

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    if-nez v2, :cond_0

    move-object v2, v1

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    if-eqz v2, :cond_1

    .line 59
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Integer value ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") too large to stuff into one byte."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_1
    move-object v2, v1

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    move v0, v2

    .end local v0    # "intValue":I
    return v0
.end method

.method public static getBytes(I)[B
    .locals 4

    .prologue
    .line 66
    move v0, p0

    .local v0, "intValue":I
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v1, v2

    .line 67
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    move-object v2, v1

    move v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 68
    move-object v2, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move-object v0, v2

    .end local v0    # "intValue":I
    return-object v0
.end method

.method public static getBytes(J)[B
    .locals 6

    .prologue
    .line 73
    move-wide v0, p0

    .local v0, "longValue":J
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v2, v3

    .line 74
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    move-object v3, v2

    move-wide v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 75
    move-object v3, v2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    move-object v0, v3

    .end local v0    # "longValue":J
    return-object v0
.end method

.method public static getInt(B)I
    .locals 4

    .prologue
    .line 80
    move v0, p0

    .local v0, "b":B
    move v1, v0

    if-ltz v1, :cond_0

    move v1, v0

    :goto_0
    move v0, v1

    .end local v0    # "b":B
    return v0

    .restart local v0    # "b":B
    :cond_0
    const/16 v1, 0x100

    move v2, v0

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    xor-int/lit8 v2, v2, -0x1

    rsub-int v1, v2, 0x100

    goto :goto_0
.end method

.method public static leftHalf([B)[B
    .locals 5

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "inputBytes":[B
    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2, v3}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "inputBytes":[B
    return-object v0
.end method

.method public static randomBytes(I)[B
    .locals 3

    .prologue
    .line 167
    move v0, p0

    .local v0, "length":I
    move v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/jose4j/lang/ByteUtil;->randomBytes(ILjava/security/SecureRandom;)[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "length":I
    return-object v0
.end method

.method public static randomBytes(ILjava/security/SecureRandom;)[B
    .locals 6

    .prologue
    .line 159
    move v0, p0

    .local v0, "length":I
    move-object v1, p1

    .local v1, "secureRandom":Ljava/security/SecureRandom;
    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/security/SecureRandom;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    :goto_0
    move-object v1, v3

    .line 160
    move v3, v0

    new-array v3, v3, [B

    move-object v2, v3

    .line 161
    .local v2, "bytes":[B
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 162
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "length":I
    return-object v0

    .line 159
    .end local v2    # "bytes":[B
    .restart local v0    # "length":I
    :cond_0
    move-object v3, v1

    goto :goto_0
.end method

.method public static rightHalf([B)[B
    .locals 5

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "inputBytes":[B
    move-object v2, v0

    array-length v2, v2

    const/4 v3, 0x2

    div-int/lit8 v2, v2, 0x2

    move v1, v2

    .line 134
    .local v1, "half":I
    move-object v2, v0

    move v3, v1

    move v4, v1

    invoke-static {v2, v3, v4}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object v2

    move-object v0, v2

    .end local v0    # "inputBytes":[B
    return-object v0
.end method

.method public static secureEquals([B[B)Z
    .locals 10

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "bytes1":[B
    move-object v1, p1

    .local v1, "bytes2":[B
    move-object v6, v0

    if-nez v6, :cond_0

    sget-object v6, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    :goto_0
    move-object v0, v6

    .line 86
    move-object v6, v1

    if-nez v6, :cond_1

    sget-object v6, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    :goto_1
    move-object v1, v6

    .line 88
    move-object v6, v0

    array-length v6, v6

    move-object v7, v1

    array-length v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v2, v6

    .line 89
    .local v2, "shortest":I
    move-object v6, v0

    array-length v6, v6

    move-object v7, v1

    array-length v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v3, v6

    .line 91
    .local v3, "longest":I
    const/4 v6, 0x0

    move v4, v6

    .line 94
    .local v4, "result":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_2
    move v6, v5

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 96
    move v6, v4

    move-object v7, v0

    move v8, v5

    aget-byte v7, v7, v8

    move-object v8, v1

    move v9, v5

    aget-byte v8, v8, v9

    xor-int/2addr v7, v8

    or-int/2addr v6, v7

    move v4, v6

    .line 94
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 85
    .end local v2    # "shortest":I
    .end local v3    # "longest":I
    .end local v4    # "result":I
    .end local v5    # "i":I
    :cond_0
    move-object v6, v0

    goto :goto_0

    .line 86
    :cond_1
    move-object v6, v1

    goto :goto_1

    .line 99
    .restart local v2    # "shortest":I
    .restart local v3    # "longest":I
    .restart local v4    # "result":I
    .restart local v5    # "i":I
    :cond_2
    move v6, v4

    if-nez v6, :cond_3

    move v6, v2

    move v7, v3

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    :goto_3
    move v0, v6

    .end local v0    # "bytes1":[B
    return v0

    .restart local v0    # "bytes1":[B
    :cond_3
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public static subArray([BII)[B
    .locals 9

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "inputBytes":[B
    move v1, p1

    .local v1, "startPos":I
    move v2, p2

    .local v2, "length":I
    move v4, v2

    new-array v4, v4, [B

    move-object v3, v4

    .line 122
    .local v3, "subArray":[B
    move-object v4, v0

    move v5, v1

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v3

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "inputBytes":[B
    return-object v0
.end method

.method public static toDebugString([B)Ljava/lang/String;
    .locals 7

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "bytes":[B
    new-instance v4, Lorg/jose4j/base64url/Base64Url;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    move-object v1, v4

    .line 173
    .local v1, "base64Url":Lorg/jose4j/base64url/Base64Url;
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 174
    .local v2, "s":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v4}, Lorg/jose4j/lang/ByteUtil;->convertSignedTwosCompToUnsigned([B)[I

    move-result-object v4

    move-object v3, v4

    .line 175
    .local v3, "ints":[I
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "bytes/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    array-length v5, v5

    invoke-static {v5}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "bits) | base64url encoded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "bytes":[B
    return-object v0
.end method
