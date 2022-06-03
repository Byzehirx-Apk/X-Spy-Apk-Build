.class public Lorg/jose4j/base64url/Base64Url;
.super Ljava/lang/Object;
.source "Base64Url.java"


# instance fields
.field private base64urlCodec:Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/Base64Url;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v1, v0

    new-instance v2, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    iput-object v2, v1, Lorg/jose4j/base64url/Base64Url;->base64urlCodec:Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    .line 31
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "encodedValue":Ljava/lang/String;
    invoke-static {}, Lorg/jose4j/base64url/Base64Url;->getOne()Lorg/jose4j/base64url/Base64Url;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "encodedValue":Ljava/lang/String;
    return-object v0
.end method

.method public static decodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "encodedValue":Ljava/lang/String;
    move-object v1, p1

    .local v1, "charsetName":Ljava/lang/String;
    invoke-static {}, Lorg/jose4j/base64url/Base64Url;->getOne()Lorg/jose4j/base64url/Base64Url;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "encodedValue":Ljava/lang/String;
    return-object v0
.end method

.method public static decodeToUtf8String(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "encodedValue":Ljava/lang/String;
    invoke-static {}, Lorg/jose4j/base64url/Base64Url;->getOne()Lorg/jose4j/base64url/Base64Url;

    move-result-object v1

    move-object v2, v0

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v1, v2, v3}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "encodedValue":Ljava/lang/String;
    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    move-object v1, p1

    .local v1, "charsetName":Ljava/lang/String;
    invoke-static {}, Lorg/jose4j/base64url/Base64Url;->getOne()Lorg/jose4j/base64url/Base64Url;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "value":Ljava/lang/String;
    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "bytes":[B
    invoke-static {}, Lorg/jose4j/base64url/Base64Url;->getOne()Lorg/jose4j/base64url/Base64Url;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "bytes":[B
    return-object v0
.end method

.method public static encodeUtf8ByteRepresentation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    invoke-static {}, Lorg/jose4j/base64url/Base64Url;->getOne()Lorg/jose4j/base64url/Base64Url;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncodeUtf8ByteRepresentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":Ljava/lang/String;
    return-object v0
.end method

.method private static getOne()Lorg/jose4j/base64url/Base64Url;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lorg/jose4j/base64url/Base64Url;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    return-object v0
.end method


# virtual methods
.method public base64UrlDecode(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/Base64Url;
    move-object v1, p1

    .local v1, "encodedValue":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/base64url/Base64Url;->base64urlCodec:Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/base64url/Base64Url;
    return-object v0
.end method

.method public base64UrlDecodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/Base64Url;
    move-object v1, p1

    .local v1, "encodedValue":Ljava/lang/String;
    move-object v2, p2

    .local v2, "charsetName":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v4

    move-object v3, v4

    .line 41
    .local v3, "bytes":[B
    move-object v4, v3

    move-object v5, v2

    invoke-static {v4, v5}, Lorg/jose4j/lang/StringUtil;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/base64url/Base64Url;
    return-object v0
.end method

.method public base64UrlDecodeToUtf8String(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/Base64Url;
    move-object v1, p1

    .local v1, "encodedValue":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/base64url/Base64Url;
    return-object v0
.end method

.method public base64UrlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/Base64Url;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, p2

    .local v2, "charsetName":Ljava/lang/String;
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lorg/jose4j/lang/StringUtil;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    move-object v3, v4

    .line 57
    .local v3, "bytes":[B
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/base64url/Base64Url;
    return-object v0
.end method

.method public base64UrlEncode([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/Base64Url;
    move-object v1, p1

    .local v1, "bytes":[B
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/base64url/Base64Url;->base64urlCodec:Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/base64url/Base64Url;
    return-object v0
.end method

.method public base64UrlEncodeUtf8ByteRepresentation(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/Base64Url;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/base64url/Base64Url;
    return-object v0
.end method
