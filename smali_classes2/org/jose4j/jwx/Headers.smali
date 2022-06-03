.class public Lorg/jose4j/jwx/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# instance fields
.field protected base64url:Lorg/jose4j/base64url/Base64Url;

.field private encodedHeader:Ljava/lang/String;

.field private header:Ljava/lang/String;

.field private headerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/Headers;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v1, v0

    new-instance v2, Lorg/jose4j/base64url/Base64Url;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    iput-object v2, v1, Lorg/jose4j/jwx/Headers;->base64url:Lorg/jose4j/base64url/Base64Url;

    .line 35
    move-object v1, v0

    new-instance v2, Ljava/util/LinkedHashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lorg/jose4j/jwx/Headers;->headerMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getEncodedHeader()Ljava/lang/String;
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/Headers;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwx/Headers;->encodedHeader:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 52
    move-object v2, v0

    invoke-virtual {v2}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 53
    .local v1, "headerAsString":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwx/Headers;->base64url:Lorg/jose4j/base64url/Base64Url;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncodeUtf8ByteRepresentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/jose4j/jwx/Headers;->encodedHeader:Ljava/lang/String;

    .line 55
    .end local v1    # "headerAsString":Ljava/lang/String;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwx/Headers;->encodedHeader:Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwx/Headers;
    return-object v0
.end method

.method public getFullHeaderAsJsonString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/Headers;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwx/Headers;->header:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 43
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwx/Headers;->headerMap:Ljava/util/Map;

    invoke-static {v2}, Lorg/jose4j/json/JsonUtil;->toJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/jose4j/jwx/Headers;->header:Ljava/lang/String;

    .line 45
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwx/Headers;->header:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwx/Headers;
    return-object v0
.end method

.method public getJwkHeaderValue(Ljava/lang/String;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/Headers;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/jose4j/jwx/Headers;->getObjectHeaderValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 94
    .local v2, "objectHeaderValue":Ljava/lang/Object;
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    move-object v3, v4

    .line 95
    .local v3, "jwkParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-static {v4}, Lorg/jose4j/jwk/JsonWebKey$Factory;->newJwk(Ljava/util/Map;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object v4

    :goto_0
    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/jwx/Headers;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jwx/Headers;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getLongHeaderValue(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/Headers;
    move-object v1, p1

    .local v1, "headerName":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwx/Headers;->headerMap:Ljava/util/Map;

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/lang/JsonHelp;->getLong(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwx/Headers;
    return-object v0
.end method

.method public getObjectHeaderValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/Headers;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwx/Headers;->headerMap:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwx/Headers;
    return-object v0
.end method

.method public getPublicJwkHeaderValue(Ljava/lang/String;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/Headers;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "jcaProvider":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/jose4j/jwx/Headers;->getObjectHeaderValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 101
    .local v3, "objectHeaderValue":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Ljava/util/Map;

    move-object v4, v5

    .line 102
    .local v4, "jwkParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v2

    invoke-static {v5, v6}, Lorg/jose4j/jwk/PublicJsonWebKey$Factory;->newPublicJwk(Ljava/util/Map;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object v5

    :goto_0
    move-object v0, v5

    .end local v0    # "this":Lorg/jose4j/jwx/Headers;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jwx/Headers;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/Headers;
    move-object v1, p1

    .local v1, "headerName":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwx/Headers;->headerMap:Ljava/util/Map;

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/lang/JsonHelp;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwx/Headers;
    return-object v0
.end method

.method setEncodedHeader(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/Headers;
    move-object v1, p1

    .local v1, "encodedHeader":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwx/Headers;->encodedHeader:Ljava/lang/String;

    .line 116
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwx/Headers;->base64url:Lorg/jose4j/base64url/Base64Url;

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwx/Headers;->encodedHeader:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecodeToUtf8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/jose4j/jwx/Headers;->header:Ljava/lang/String;

    .line 117
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwx/Headers;->header:Ljava/lang/String;

    invoke-static {v3}, Lorg/jose4j/json/JsonUtil;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lorg/jose4j/jwx/Headers;->headerMap:Ljava/util/Map;

    .line 118
    return-void
.end method

.method public setFullHeaderAsJsonString(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/Headers;
    move-object v1, p1

    .local v1, "header":Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/jose4j/jwx/Headers;->encodedHeader:Ljava/lang/String;

    .line 109
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwx/Headers;->header:Ljava/lang/String;

    .line 110
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lorg/jose4j/json/JsonUtil;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lorg/jose4j/jwx/Headers;->headerMap:Ljava/util/Map;

    .line 111
    return-void
.end method

.method public setJwkHeaderValue(Ljava/lang/String;Lorg/jose4j/jwk/JsonWebKey;)V
    .locals 7

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/Headers;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "jwk":Lorg/jose4j/jwk/JsonWebKey;
    move-object v4, v2

    sget-object v5, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->PUBLIC_ONLY:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    invoke-virtual {v4, v5}, Lorg/jose4j/jwk/JsonWebKey;->toParams(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/util/Map;

    move-result-object v4

    move-object v3, v4

    .line 73
    .local v3, "jwkParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/jose4j/jwx/Headers;->setObjectHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public setObjectHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/Headers;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwx/Headers;->headerMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 66
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/jose4j/jwx/Headers;->header:Ljava/lang/String;

    .line 67
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/jose4j/jwx/Headers;->encodedHeader:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setStringHeaderValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/Headers;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/jose4j/jwx/Headers;->setObjectHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    return-void
.end method
