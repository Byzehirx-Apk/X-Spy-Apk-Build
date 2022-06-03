.class public Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
.super Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
.source "Base64.java"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x6

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x4

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x3

.field static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final MASK_6BITS:I = 0x3f

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    .line 93
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    .line 106
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 125
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    return-void

    .line 84
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 93
    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 106
    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 125
    :array_3
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;-><init>(I)V

    .line 184
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    move v1, p1

    .local v1, "lineLength":I
    move-object v2, v0

    move v3, v1

    sget-object v4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {v2, v3, v4}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;-><init>(I[B)V

    .line 226
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 7

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    move v1, p1

    .local v1, "lineLength":I
    move-object v2, p2

    .local v2, "lineSeparator":[B
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    .line 253
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 11

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    move v1, p1

    .local v1, "lineLength":I
    move-object v2, p2

    .local v2, "lineSeparator":[B
    move v3, p3

    .local v3, "urlSafe":Z
    move-object v5, v0

    const/4 v6, 0x3

    const/4 v7, 0x4

    move v8, v1

    move-object v9, v2

    if-nez v9, :cond_0

    const/4 v9, 0x0

    :goto_0
    invoke-direct {v5, v6, v7, v8, v9}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;-><init>(IIII)V

    .line 153
    move-object v5, v0

    sget-object v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    iput-object v6, v5, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->decodeTable:[B

    .line 288
    move-object v5, v2

    if-eqz v5, :cond_3

    .line 289
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->containsAlphabetOrPad([B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 290
    move-object v5, v2

    invoke-static {v5}, Lorg/jose4j/lang/StringUtil;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 291
    .local v4, "sep":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lineSeparator must not contain base64 characters: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 283
    .end local v4    # "sep":Ljava/lang/String;
    :cond_0
    move-object v9, v2

    array-length v9, v9

    goto :goto_0

    .line 293
    :cond_1
    move v5, v1

    if-lez v5, :cond_2

    .line 294
    move-object v5, v0

    const/4 v6, 0x4

    move-object v7, v2

    array-length v7, v7

    add-int/2addr v6, v7

    iput v6, v5, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 295
    move-object v5, v0

    move-object v6, v2

    array-length v6, v6

    new-array v6, v6, [B

    iput-object v6, v5, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->lineSeparator:[B

    .line 296
    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->lineSeparator:[B

    const/4 v8, 0x0

    move-object v9, v2

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    :goto_1
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->decodeSize:I

    .line 306
    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_4

    sget-object v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_2
    iput-object v6, v5, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeTable:[B

    .line 307
    return-void

    .line 298
    :cond_2
    move-object v5, v0

    const/4 v6, 0x4

    iput v6, v5, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 299
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->lineSeparator:[B

    goto :goto_1

    .line 302
    :cond_3
    move-object v5, v0

    const/4 v6, 0x4

    iput v6, v5, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 303
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->lineSeparator:[B

    goto :goto_1

    .line 306
    :cond_4
    sget-object v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 6

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    move v1, p1

    .local v1, "urlSafe":Z
    move-object v2, v0

    const/16 v3, 0x4c

    sget-object v4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    move v5, v1

    invoke-direct {v2, v3, v4, v5}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    .line 203
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "base64String":Ljava/lang/String;
    new-instance v1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;-><init>()V

    move-object v2, v0

    invoke-virtual {v1, v2}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "base64String":Ljava/lang/String;
    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 4

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "base64Data":[B
    new-instance v1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;-><init>()V

    move-object v2, v0

    invoke-virtual {v1, v2}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "base64Data":[B
    return-object v0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 6

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "pArray":[B
    new-instance v1, Ljava/math/BigInteger;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    invoke-static {v4}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v0, v1

    .end local v0    # "pArray":[B
    return-object v0
.end method

.method public static encodeBase64([B)[B
    .locals 3

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "binaryData":[B
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "binaryData":[B
    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 5

    .prologue
    .line 631
    move-object v0, p0

    .local v0, "binaryData":[B
    move v1, p1

    .local v1, "isChunked":Z
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v2

    move-object v0, v2

    .end local v0    # "binaryData":[B
    return-object v0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 7

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "binaryData":[B
    move v1, p1

    .local v1, "isChunked":Z
    move v2, p2

    .local v2, "urlSafe":Z
    move-object v3, v0

    move v4, v1

    move v5, v2

    const v6, 0x7fffffff

    invoke-static {v3, v4, v5, v6}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeBase64([BZZI)[B

    move-result-object v3

    move-object v0, v3

    .end local v0    # "binaryData":[B
    return-object v0
.end method

.method public static encodeBase64([BZZI)[B
    .locals 14

    .prologue
    .line 672
    move-object v1, p0

    .local v1, "binaryData":[B
    move v2, p1

    .local v2, "isChunked":Z
    move/from16 v3, p2

    .local v3, "urlSafe":Z
    move/from16 v4, p3

    .local v4, "maxResultSize":I
    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v1

    array-length v8, v8

    if-nez v8, :cond_1

    .line 673
    :cond_0
    move-object v8, v1

    move-object v1, v8

    .line 687
    .end local v1    # "binaryData":[B
    :goto_0
    return-object v1

    .line 678
    .restart local v1    # "binaryData":[B
    :cond_1
    move v8, v2

    if-eqz v8, :cond_2

    new-instance v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move v10, v3

    invoke-direct {v9, v10}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;-><init>(Z)V

    :goto_1
    move-object v5, v8

    .line 679
    .local v5, "b64":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    move-object v8, v5

    move-object v9, v1

    invoke-virtual {v8, v9}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->getEncodedLength([B)J

    move-result-wide v8

    move-wide v6, v8

    .line 680
    .local v6, "len":J
    move-wide v8, v6

    move v10, v4

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 681
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Input array too big, the output array would be bigger ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide v11, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") than the specified maximum size of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 678
    .end local v5    # "b64":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    .end local v6    # "len":J
    :cond_2
    new-instance v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    sget-object v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    move v12, v3

    invoke-direct {v9, v10, v11, v12}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    goto :goto_1

    .line 687
    .restart local v5    # "b64":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    .restart local v6    # "len":J
    :cond_3
    move-object v8, v5

    move-object v9, v1

    invoke-virtual {v8, v9}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object v8

    move-object v1, v8

    goto :goto_0
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 3

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "binaryData":[B
    move-object v1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "binaryData":[B
    return-object v0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "binaryData":[B
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v1

    invoke-static {v1}, Lorg/jose4j/lang/StringUtil;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "binaryData":[B
    return-object v0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 4

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "binaryData":[B
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "binaryData":[B
    return-object v0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "binaryData":[B
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v1

    invoke-static {v1}, Lorg/jose4j/lang/StringUtil;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "binaryData":[B
    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 5

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "bigInt":Ljava/math/BigInteger;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 740
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "encodeInteger called with null parameter"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 742
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "bigInt":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "arrayOctet":[B
    move-object v1, v0

    invoke-static {v1}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->isBase64([B)Z

    move-result v1

    move v0, v1

    .end local v0    # "arrayOctet":[B
    return v0
.end method

.method public static isBase64(B)Z
    .locals 3

    .prologue
    .line 520
    move v0, p0

    .local v0, "octet":B
    move v1, v0

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_0

    move v1, v0

    if-ltz v1, :cond_1

    move v1, v0

    sget-object v2, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "octet":B
    return v0

    .restart local v0    # "octet":B
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBase64(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "base64":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lorg/jose4j/lang/StringUtil;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->isBase64([B)Z

    move-result v1

    move v0, v1

    .end local v0    # "base64":Ljava/lang/String;
    return v0
.end method

.method public static isBase64([B)Z
    .locals 4

    .prologue
    .line 548
    move-object v0, p0

    .local v0, "arrayOctet":[B
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 549
    move-object v2, v0

    move v3, v1

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    move v3, v1

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->isWhiteSpace(B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 550
    const/4 v2, 0x0

    move v0, v2

    .line 553
    .end local v0    # "arrayOctet":[B
    :goto_1
    return v0

    .line 548
    .restart local v0    # "arrayOctet":[B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 12

    .prologue
    .line 753
    move-object v0, p0

    .local v0, "bigInt":Ljava/math/BigInteger;
    move-object v7, v0

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    move v1, v7

    .line 755
    .local v1, "bitlen":I
    move v7, v1

    const/4 v8, 0x7

    add-int/lit8 v7, v7, 0x7

    const/4 v8, 0x3

    shr-int/lit8 v7, v7, 0x3

    const/4 v8, 0x3

    shl-int/lit8 v7, v7, 0x3

    move v1, v7

    .line 756
    move-object v7, v0

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    move-object v2, v7

    .line 758
    .local v2, "bigBytes":[B
    move-object v7, v0

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x8

    rem-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x8

    div-int/lit8 v7, v7, 0x8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v1

    const/16 v9, 0x8

    div-int/lit8 v8, v8, 0x8

    if-ne v7, v8, :cond_0

    .line 759
    move-object v7, v2

    move-object v0, v7

    .line 773
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    :goto_0
    return-object v0

    .line 762
    .restart local v0    # "bigInt":Ljava/math/BigInteger;
    :cond_0
    const/4 v7, 0x0

    move v3, v7

    .line 763
    .local v3, "startSrc":I
    move-object v7, v2

    array-length v7, v7

    move v4, v7

    .line 766
    .local v4, "len":I
    move-object v7, v0

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x8

    rem-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_1

    .line 767
    const/4 v7, 0x1

    move v3, v7

    .line 768
    add-int/lit8 v4, v4, -0x1

    .line 770
    :cond_1
    move v7, v1

    const/16 v8, 0x8

    div-int/lit8 v7, v7, 0x8

    move v8, v4

    sub-int/2addr v7, v8

    move v5, v7

    .line 771
    .local v5, "startDst":I
    move v7, v1

    const/16 v8, 0x8

    div-int/lit8 v7, v7, 0x8

    new-array v7, v7, [B

    move-object v6, v7

    .line 772
    .local v6, "resizedBytes":[B
    move-object v7, v2

    move v8, v3

    move-object v9, v6

    move v10, v5

    move v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 773
    move-object v7, v6

    move-object v0, v7

    goto :goto_0
.end method


# virtual methods
.method decode([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 16

    .prologue
    .line 439
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    move-object/from16 v1, p1

    .local v1, "in":[B
    move/from16 v2, p2

    .local v2, "inPos":I
    move/from16 v3, p3

    .local v3, "inAvail":I
    move-object/from16 v4, p4

    .local v4, "context":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;
    move-object v9, v4

    iget-boolean v9, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v9, :cond_0

    .line 440
    .line 494
    :goto_0
    return-void

    .line 442
    :cond_0
    move v9, v3

    if-gez v9, :cond_1

    .line 443
    move-object v9, v4

    const/4 v10, 0x1

    iput-boolean v10, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 445
    :cond_1
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    :goto_1
    move v9, v5

    move v10, v3

    if-ge v9, v10, :cond_2

    .line 446
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->decodeSize:I

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->ensureBufferSize(ILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v9

    move-object v6, v9

    .line 447
    .local v6, "buffer":[B
    move-object v9, v1

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v9, v9, v10

    move v7, v9

    .line 448
    .local v7, "b":B
    move v9, v7

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_3

    .line 450
    move-object v9, v4

    const/4 v10, 0x1

    iput-boolean v10, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 451
    .line 471
    .end local v6    # "buffer":[B
    .end local v7    # "b":B
    :cond_2
    move-object v9, v4

    iget-boolean v9, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v9, :cond_5

    move-object v9, v4

    iget v9, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-eqz v9, :cond_5

    .line 472
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->decodeSize:I

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->ensureBufferSize(ILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v9

    move-object v5, v9

    .line 476
    .local v5, "buffer":[B
    move-object v9, v4

    iget v9, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v9, :pswitch_data_0

    .line 491
    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Impossible modulus "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v4

    iget v12, v12, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 453
    .local v5, "i":I
    .restart local v6    # "buffer":[B
    .restart local v7    # "b":B
    :cond_3
    move v9, v7

    if-ltz v9, :cond_4

    move v9, v7

    sget-object v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v10, v10

    if-ge v9, v10, :cond_4

    .line 454
    sget-object v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    move v10, v7

    aget-byte v9, v9, v10

    move v8, v9

    .line 455
    .local v8, "result":I
    move v9, v8

    if-ltz v9, :cond_4

    .line 456
    move-object v9, v4

    move-object v10, v4

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x4

    rem-int/lit8 v10, v10, 0x4

    iput v10, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    .line 457
    move-object v9, v4

    move-object v10, v4

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/4 v11, 0x6

    shl-int/lit8 v10, v10, 0x6

    move v11, v8

    add-int/2addr v10, v11

    iput v10, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 458
    move-object v9, v4

    iget v9, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v9, :cond_4

    .line 459
    move-object v9, v6

    move-object v10, v4

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/16 v12, 0x10

    shr-int/lit8 v11, v11, 0x10

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 460
    move-object v9, v6

    move-object v10, v4

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/16 v12, 0x8

    shr-int/lit8 v11, v11, 0x8

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 461
    move-object v9, v6

    move-object v10, v4

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 445
    .end local v8    # "result":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 480
    .line 494
    .end local v5    # "i":I
    .end local v6    # "buffer":[B
    .end local v7    # "b":B
    :cond_5
    :goto_2
    :pswitch_0
    goto/16 :goto_0

    .line 482
    .local v5, "buffer":[B
    :pswitch_1
    move-object v9, v4

    move-object v10, v4

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/4 v11, 0x4

    shr-int/lit8 v10, v10, 0x4

    iput v10, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 483
    move-object v9, v5

    move-object v10, v4

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 484
    goto :goto_2

    .line 486
    :pswitch_2
    move-object v9, v4

    move-object v10, v4

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/4 v11, 0x2

    shr-int/lit8 v10, v10, 0x2

    iput v10, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 487
    move-object v9, v5

    move-object v10, v4

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/16 v12, 0x8

    shr-int/lit8 v11, v11, 0x8

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 488
    move-object v9, v5

    move-object v10, v4

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 489
    goto :goto_2

    .line 476
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method encode([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 15

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    move-object/from16 v1, p1

    .local v1, "in":[B
    move/from16 v2, p2

    .local v2, "inPos":I
    move/from16 v3, p3

    .local v3, "inAvail":I
    move-object/from16 v4, p4

    .local v4, "context":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;
    move-object v8, v4

    iget-boolean v8, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v8, :cond_0

    .line 343
    .line 410
    :goto_0
    return-void

    .line 347
    :cond_0
    move v8, v3

    if-gez v8, :cond_4

    .line 348
    move-object v8, v4

    const/4 v9, 0x1

    iput-boolean v9, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 349
    const/4 v8, 0x0

    move-object v9, v4

    iget v9, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-ne v8, v9, :cond_1

    move-object v8, v0

    iget v8, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->lineLength:I

    if-nez v8, :cond_1

    .line 350
    goto :goto_0

    .line 352
    :cond_1
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeSize:I

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->ensureBufferSize(ILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v8

    move-object v5, v8

    .line 353
    .local v5, "buffer":[B
    move-object v8, v4

    iget v8, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move v6, v8

    .line 354
    .local v6, "savedPos":I
    move-object v8, v4

    iget v8, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v8, :pswitch_data_0

    .line 379
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Impossible modulus "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 356
    .line 381
    :cond_2
    :goto_1
    :pswitch_0
    move-object v8, v4

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    move-object v10, v4

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move v11, v6

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 383
    move-object v8, v0

    iget v8, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->lineLength:I

    if-lez v8, :cond_3

    move-object v8, v4

    iget v8, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-lez v8, :cond_3

    .line 384
    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->lineSeparator:[B

    const/4 v9, 0x0

    move-object v10, v5

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v12, v0

    iget-object v12, v12, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    move-object v8, v4

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v10, v10

    add-int/2addr v9, v10

    iput v9, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 387
    .line 410
    .end local v5    # "buffer":[B
    .end local v6    # "savedPos":I
    :cond_3
    goto :goto_0

    .line 359
    .restart local v5    # "buffer":[B
    .restart local v6    # "savedPos":I
    :pswitch_1
    move-object v8, v5

    move-object v9, v4

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeTable:[B

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/4 v12, 0x2

    shr-int/lit8 v11, v11, 0x2

    const/16 v12, 0x3f

    and-int/lit8 v11, v11, 0x3f

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    .line 361
    move-object v8, v5

    move-object v9, v4

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeTable:[B

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/4 v12, 0x4

    shl-int/lit8 v11, v11, 0x4

    const/16 v12, 0x3f

    and-int/lit8 v11, v11, 0x3f

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    .line 363
    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v8, v9, :cond_2

    .line 364
    move-object v8, v5

    move-object v9, v4

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v10, 0x3d

    aput-byte v10, v8, v9

    .line 365
    move-object v8, v5

    move-object v9, v4

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v10, 0x3d

    aput-byte v10, v8, v9

    goto/16 :goto_1

    .line 370
    :pswitch_2
    move-object v8, v5

    move-object v9, v4

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeTable:[B

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/16 v12, 0xa

    shr-int/lit8 v11, v11, 0xa

    const/16 v12, 0x3f

    and-int/lit8 v11, v11, 0x3f

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    .line 371
    move-object v8, v5

    move-object v9, v4

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeTable:[B

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/4 v12, 0x4

    shr-int/lit8 v11, v11, 0x4

    const/16 v12, 0x3f

    and-int/lit8 v11, v11, 0x3f

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    .line 372
    move-object v8, v5

    move-object v9, v4

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeTable:[B

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/4 v12, 0x2

    shl-int/lit8 v11, v11, 0x2

    const/16 v12, 0x3f

    and-int/lit8 v11, v11, 0x3f

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    .line 374
    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v8, v9, :cond_2

    .line 375
    move-object v8, v5

    move-object v9, v4

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v10, 0x3d

    aput-byte v10, v8, v9

    goto/16 :goto_1

    .line 388
    .end local v5    # "buffer":[B
    .end local v6    # "savedPos":I
    :cond_4
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_2
    move v8, v5

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 389
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeSize:I

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->ensureBufferSize(ILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v8

    move-object v6, v8

    .line 390
    .local v6, "buffer":[B
    move-object v8, v4

    move-object v9, v4

    iget v9, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x3

    rem-int/lit8 v9, v9, 0x3

    iput v9, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    .line 391
    move-object v8, v1

    move v9, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v8, v8, v9

    move v7, v8

    .line 392
    .local v7, "b":I
    move v8, v7

    if-gez v8, :cond_5

    .line 393
    add-int/lit16 v7, v7, 0x100

    .line 395
    :cond_5
    move-object v8, v4

    move-object v9, v4

    iget v9, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/16 v10, 0x8

    shl-int/lit8 v9, v9, 0x8

    move v10, v7

    add-int/2addr v9, v10

    iput v9, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 396
    const/4 v8, 0x0

    move-object v9, v4

    iget v9, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-ne v8, v9, :cond_6

    .line 397
    move-object v8, v6

    move-object v9, v4

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeTable:[B

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/16 v12, 0x12

    shr-int/lit8 v11, v11, 0x12

    const/16 v12, 0x3f

    and-int/lit8 v11, v11, 0x3f

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    .line 398
    move-object v8, v6

    move-object v9, v4

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeTable:[B

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/16 v12, 0xc

    shr-int/lit8 v11, v11, 0xc

    const/16 v12, 0x3f

    and-int/lit8 v11, v11, 0x3f

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    .line 399
    move-object v8, v6

    move-object v9, v4

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeTable:[B

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/4 v12, 0x6

    shr-int/lit8 v11, v11, 0x6

    const/16 v12, 0x3f

    and-int/lit8 v11, v11, 0x3f

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    .line 400
    move-object v8, v6

    move-object v9, v4

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeTable:[B

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/16 v12, 0x3f

    and-int/lit8 v11, v11, 0x3f

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    .line 401
    move-object v8, v4

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    const/4 v10, 0x4

    add-int/lit8 v9, v9, 0x4

    iput v9, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 402
    move-object v8, v0

    iget v8, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->lineLength:I

    if-lez v8, :cond_6

    move-object v8, v0

    iget v8, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->lineLength:I

    move-object v9, v4

    iget v9, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-gt v8, v9, :cond_6

    .line 403
    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->lineSeparator:[B

    const/4 v9, 0x0

    move-object v10, v6

    move-object v11, v4

    iget v11, v11, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v12, v0

    iget-object v12, v12, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    move-object v8, v4

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v10, v10

    add-int/2addr v9, v10

    iput v9, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 405
    move-object v8, v4

    const/4 v9, 0x0

    iput v9, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 388
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected isInAlphabet(B)Z
    .locals 4

    .prologue
    .line 785
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    move v1, p1

    .local v1, "octet":B
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->decodeTable:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->decodeTable:[B

    move v3, v1

    aget-byte v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    return v0

    .restart local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isUrlSafe()Z
    .locals 3

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v2, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    return v0

    .restart local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
