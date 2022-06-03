.class public Lorg/jose4j/base64url/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/Base64;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "encoded":Ljava/lang/String;
    invoke-static {}, Lorg/jose4j/base64url/Base64;->getCodec()Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "encoded":Ljava/lang/String;
    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "bytes":[B
    invoke-static {}, Lorg/jose4j/base64url/Base64;->getCodec()Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "bytes":[B
    return-object v0
.end method

.method private static getCodec()Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;-><init>()V

    return-object v0
.end method
