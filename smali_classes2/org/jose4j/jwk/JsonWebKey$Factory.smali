.class public Lorg/jose4j/jwk/JsonWebKey$Factory;
.super Ljava/lang/Object;
.source "JsonWebKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwk/JsonWebKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey$Factory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newJwk(Ljava/lang/String;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "json":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v2}, Lorg/jose4j/json/JsonUtil;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    move-object v1, v2

    .line 275
    .local v1, "parsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v2, v1

    invoke-static {v2}, Lorg/jose4j/jwk/JsonWebKey$Factory;->newJwk(Ljava/util/Map;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "json":Ljava/lang/String;
    return-object v0
.end method

.method public static newJwk(Ljava/security/Key;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "key":Ljava/security/Key;
    const-class v1, Ljava/security/interfaces/RSAPublicKey;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    new-instance v1, Lorg/jose4j/jwk/RsaJsonWebKey;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {v2, v3}, Lorg/jose4j/jwk/RsaJsonWebKey;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    move-object v0, v1

    .line 268
    .end local v0    # "key":Ljava/security/Key;
    :goto_0
    return-object v0

    .line 258
    .restart local v0    # "key":Ljava/security/Key;
    :cond_0
    const-class v1, Ljava/security/interfaces/ECPublicKey;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    new-instance v1, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    invoke-direct {v2, v3}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    move-object v0, v1

    goto :goto_0

    .line 262
    :cond_1
    const-class v1, Ljava/security/PublicKey;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    new-instance v1, Lorg/jose4j/lang/JoseException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported or unknown public key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :cond_2
    new-instance v1, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;-><init>(Ljava/security/Key;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static newJwk(Ljava/util/Map;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/jose4j/jwk/JsonWebKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v4, v0

    const-string/jumbo v5, "kty"

    invoke-static {v4, v5}, Lorg/jose4j/jwk/JsonWebKey;->getStringRequired(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 239
    .local v1, "kty":Ljava/lang/String;
    move-object v4, v1

    move-object v2, v4

    const/4 v4, -0x1

    move v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 248
    new-instance v4, Lorg/jose4j/lang/JoseException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown key type algorithm: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 239
    :sswitch_0
    move-object v4, v2

    const-string/jumbo v5, "RSA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    :sswitch_1
    move-object v4, v2

    const-string/jumbo v5, "EC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v3, v4

    goto :goto_0

    :sswitch_2
    move-object v4, v2

    const-string/jumbo v5, "oct"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    move v3, v4

    goto :goto_0

    .line 242
    :pswitch_0
    new-instance v4, Lorg/jose4j/jwk/RsaJsonWebKey;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/jose4j/jwk/RsaJsonWebKey;-><init>(Ljava/util/Map;)V

    move-object v0, v4

    .line 246
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    return-object v0

    .line 244
    .restart local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_1
    new-instance v4, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;-><init>(Ljava/util/Map;)V

    move-object v0, v4

    goto :goto_1

    .line 246
    :pswitch_2
    new-instance v4, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;-><init>(Ljava/util/Map;)V

    move-object v0, v4

    goto :goto_1

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x89e -> :sswitch_1
        0x13e20 -> :sswitch_0
        0x1ad20 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
