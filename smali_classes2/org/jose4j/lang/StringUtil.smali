.class public Lorg/jose4j/lang/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field public static final US_ASCII:Ljava/lang/String; = "US-ASCII"

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/lang/StringUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "string":Ljava/lang/String;
    move-object v1, p1

    .local v1, "charset":Ljava/nio/charset/Charset;
    move-object v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "string":Ljava/lang/String;
    return-object v0

    .restart local v0    # "string":Ljava/lang/String;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    goto :goto_0
.end method

.method public static getBytesAscii(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "string":Ljava/lang/String;
    move-object v1, v0

    const-string/jumbo v2, "US-ASCII"

    invoke-static {v1, v2}, Lorg/jose4j/lang/StringUtil;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "string":Ljava/lang/String;
    return-object v0
.end method

.method public static getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "string":Ljava/lang/String;
    move-object v1, p1

    .local v1, "charsetName":Ljava/lang/String;
    move-object v3, v0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    .end local v0    # "string":Ljava/lang/String;
    return-object v0

    .restart local v0    # "string":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 78
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 80
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    move-object v3, v1

    invoke-static {v3}, Lorg/jose4j/lang/StringUtil;->newISE(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v3

    throw v3
.end method

.method public static getBytesUtf8(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "string":Ljava/lang/String;
    move-object v1, v0

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/jose4j/lang/StringUtil;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "string":Ljava/lang/String;
    return-object v0
.end method

.method private static newISE(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "charsetName":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown or unsupported character set name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "charsetName":Ljava/lang/String;
    return-object v0
.end method

.method public static newString([BLjava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "bytes":[B
    move-object v1, p1

    .local v1, "charsetName":Ljava/lang/String;
    move-object v3, v0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    .end local v0    # "bytes":[B
    return-object v0

    .restart local v0    # "bytes":[B
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 48
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    move-object v3, v1

    invoke-static {v3}, Lorg/jose4j/lang/StringUtil;->newISE(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v3

    throw v3
.end method

.method public static newString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "bytes":[B
    move-object v1, p1

    .local v1, "charset":Ljava/nio/charset/Charset;
    move-object v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "bytes":[B
    return-object v0

    .restart local v0    # "bytes":[B
    :cond_0
    new-instance v2, Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public static newStringUsAscii([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "bytes":[B
    move-object v1, v0

    const-string/jumbo v2, "US-ASCII"

    invoke-static {v1, v2}, Lorg/jose4j/lang/StringUtil;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "bytes":[B
    return-object v0
.end method

.method public static newStringUtf8([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "bytes":[B
    move-object v1, v0

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/jose4j/lang/StringUtil;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "bytes":[B
    return-object v0
.end method
