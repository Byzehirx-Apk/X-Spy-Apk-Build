.class public Lorg/jose4j/jwk/OctetSequenceJsonWebKey;
.super Lorg/jose4j/jwk/JsonWebKey;
.source "OctetSequenceJsonWebKey.java"


# static fields
.field public static final KEY_TYPE:Ljava/lang/String; = "oct"

.field public static final KEY_VALUE_MEMBER_NAME:Ljava/lang/String; = "k"


# instance fields
.field private octetSequence:[B


# direct methods
.method public constructor <init>(Ljava/security/Key;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/OctetSequenceJsonWebKey;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/jose4j/jwk/JsonWebKey;-><init>(Ljava/security/Key;)V

    .line 39
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    iput-object v3, v2, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->octetSequence:[B

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/OctetSequenceJsonWebKey;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lorg/jose4j/jwk/JsonWebKey;-><init>(Ljava/util/Map;)V

    .line 45
    new-instance v5, Lorg/jose4j/base64url/Base64Url;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    move-object v2, v5

    .line 46
    .local v2, "base64Url":Lorg/jose4j/base64url/Base64Url;
    move-object v5, v1

    const-string/jumbo v6, "k"

    invoke-static {v5, v6}, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->getStringRequired(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 47
    .local v3, "b64KeyBytes":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v5, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->octetSequence:[B

    .line 52
    const-string/jumbo v5, "AES"

    move-object v4, v5

    .line 53
    .local v4, "alg":Ljava/lang/String;
    move-object v5, v0

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->octetSequence:[B

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v6, v5, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->key:Ljava/security/Key;

    .line 54
    move-object v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "k"

    aput-object v9, v7, v8

    invoke-virtual {v5, v6}, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->removeFromOtherParams([Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private getEncoded()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/OctetSequenceJsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->octetSequence:[B

    invoke-static {v1}, Lorg/jose4j/base64url/Base64Url;->encode([B)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/OctetSequenceJsonWebKey;
    return-object v0
.end method


# virtual methods
.method protected fillTypeSpecificParams(Ljava/util/Map;Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/OctetSequenceJsonWebKey;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v2, p2

    .local v2, "outputLevel":Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;
    sget-object v3, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->INCLUDE_SYMMETRIC:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 78
    move-object v3, v1

    const-string/jumbo v4, "k"

    move-object v5, v0

    invoke-direct {v5}, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->getEncoded()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 80
    :cond_0
    return-void
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/OctetSequenceJsonWebKey;
    const-string/jumbo v1, "oct"

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/OctetSequenceJsonWebKey;
    return-object v0
.end method

.method public getOctetSequence()[B
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/OctetSequenceJsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->octetSequence:[B

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/OctetSequenceJsonWebKey;
    return-object v0
.end method

.method protected produceThumbprintHashInput()Ljava/lang/String;
    .locals 9

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/OctetSequenceJsonWebKey;
    const-string/jumbo v3, "{\"k\":\"%s\",\"kty\":\"oct\"}"

    move-object v1, v3

    .line 86
    .local v1, "template":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->getEncoded()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 87
    .local v2, "k":Ljava/lang/String;
    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v2

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwk/OctetSequenceJsonWebKey;
    return-object v0
.end method
