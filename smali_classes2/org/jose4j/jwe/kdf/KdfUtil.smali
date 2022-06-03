.class public Lorg/jose4j/jwe/kdf/KdfUtil;
.super Ljava/lang/Object;
.source "KdfUtil.java"


# instance fields
.field private base64Url:Lorg/jose4j/base64url/Base64Url;

.field private kdf:Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/kdf/KdfUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v1, v0

    new-instance v2, Lorg/jose4j/base64url/Base64Url;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    iput-object v2, v1, Lorg/jose4j/jwe/kdf/KdfUtil;->base64Url:Lorg/jose4j/base64url/Base64Url;

    .line 32
    move-object v1, v0

    new-instance v2, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "SHA-256"

    invoke-direct {v3, v4}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lorg/jose4j/jwe/kdf/KdfUtil;->kdf:Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/kdf/KdfUtil;
    move-object v1, p1

    .local v1, "provider":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v2, v0

    new-instance v3, Lorg/jose4j/base64url/Base64Url;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    iput-object v3, v2, Lorg/jose4j/jwe/kdf/KdfUtil;->base64Url:Lorg/jose4j/base64url/Base64Url;

    .line 37
    move-object v2, v0

    new-instance v3, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "SHA-256"

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Lorg/jose4j/jwe/kdf/KdfUtil;->kdf:Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;

    .line 38
    return-void
.end method


# virtual methods
.method getDatalenDataFormat(Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/kdf/KdfUtil;
    move-object v1, p1

    .local v1, "encodedValue":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwe/kdf/KdfUtil;->base64Url:Lorg/jose4j/base64url/Base64Url;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v3

    move-object v2, v3

    .line 64
    .local v2, "data":[B
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/kdf/KdfUtil;->prependDatalen([B)[B

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwe/kdf/KdfUtil;
    return-object v0
.end method

.method public kdf([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 19

    .prologue
    .line 42
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwe/kdf/KdfUtil;
    move-object/from16 v1, p1

    .local v1, "sharedSecret":[B
    move/from16 v2, p2

    .local v2, "keydatalen":I
    move-object/from16 v3, p3

    .local v3, "algorithmId":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "partyUInfo":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "partyVInfo":Ljava/lang/String;
    move-object v11, v0

    move-object v12, v3

    invoke-static {v12}, Lorg/jose4j/lang/StringUtil;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jose4j/jwe/kdf/KdfUtil;->prependDatalen([B)[B

    move-result-object v11

    move-object v6, v11

    .line 43
    .local v6, "algorithmIdBytes":[B
    move-object v11, v0

    move-object v12, v4

    invoke-virtual {v11, v12}, Lorg/jose4j/jwe/kdf/KdfUtil;->getDatalenDataFormat(Ljava/lang/String;)[B

    move-result-object v11

    move-object v7, v11

    .line 44
    .local v7, "partyUInfoBytes":[B
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v11, v12}, Lorg/jose4j/jwe/kdf/KdfUtil;->getDatalenDataFormat(Ljava/lang/String;)[B

    move-result-object v11

    move-object v8, v11

    .line 45
    .local v8, "partyVInfoBytes":[B
    move v11, v2

    invoke-static {v11}, Lorg/jose4j/lang/ByteUtil;->getBytes(I)[B

    move-result-object v11

    move-object v9, v11

    .line 46
    .local v9, "suppPubInfo":[B
    sget-object v11, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    move-object v10, v11

    .line 48
    .local v10, "suppPrivInfo":[B
    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwe/kdf/KdfUtil;->kdf:Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;

    move-object v12, v1

    move v13, v2

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-virtual/range {v11 .. v18}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->kdf([BI[B[B[B[B[B)[B

    move-result-object v11

    move-object v0, v11

    .end local v0    # "this":Lorg/jose4j/jwe/kdf/KdfUtil;
    return-object v0
.end method

.method prependDatalen([B)[B
    .locals 8

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/kdf/KdfUtil;
    move-object v1, p1

    .local v1, "data":[B
    move-object v3, v1

    if-nez v3, :cond_0

    .line 55
    sget-object v3, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    move-object v1, v3

    .line 57
    :cond_0
    move-object v3, v1

    array-length v3, v3

    invoke-static {v3}, Lorg/jose4j/lang/ByteUtil;->getBytes(I)[B

    move-result-object v3

    move-object v2, v3

    .line 58
    .local v2, "datalen":[B
    const/4 v3, 0x2

    new-array v3, v3, [[B

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v2

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v1

    aput-object v6, v4, v5

    invoke-static {v3}, Lorg/jose4j/lang/ByteUtil;->concat([[B)[B

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwe/kdf/KdfUtil;
    return-object v0
.end method
