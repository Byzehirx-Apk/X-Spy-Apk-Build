.class public Lorg/jose4j/jwk/PublicJsonWebKey$Factory;
.super Ljava/lang/Object;
.source "PublicJsonWebKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwk/PublicJsonWebKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey$Factory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newPublicJwk(Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "json":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/jose4j/jwk/PublicJsonWebKey$Factory;->newPublicJwk(Ljava/lang/String;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "json":Ljava/lang/String;
    return-object v0
.end method

.method public static newPublicJwk(Ljava/lang/String;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "json":Ljava/lang/String;
    move-object v1, p1

    .local v1, "jcaProvider":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v3}, Lorg/jose4j/json/JsonUtil;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    move-object v2, v3

    .line 296
    .local v2, "parsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Lorg/jose4j/jwk/PublicJsonWebKey$Factory;->newPublicJwk(Ljava/util/Map;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "json":Ljava/lang/String;
    return-object v0
.end method

.method public static newPublicJwk(Ljava/security/Key;)Lorg/jose4j/jwk/PublicJsonWebKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "publicKey":Ljava/security/Key;
    move-object v2, v0

    invoke-static {v2}, Lorg/jose4j/jwk/JsonWebKey$Factory;->newJwk(Ljava/security/Key;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object v2

    move-object v1, v2

    .line 285
    .local v1, "jsonWebKey":Lorg/jose4j/jwk/JsonWebKey;
    move-object v2, v1

    check-cast v2, Lorg/jose4j/jwk/PublicJsonWebKey;

    move-object v0, v2

    .end local v0    # "publicKey":Ljava/security/Key;
    return-object v0
.end method

.method public static newPublicJwk(Ljava/util/Map;)Lorg/jose4j/jwk/PublicJsonWebKey;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/jose4j/jwk/PublicJsonWebKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/jose4j/jwk/PublicJsonWebKey$Factory;->newPublicJwk(Ljava/util/Map;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0
.end method

.method public static newPublicJwk(Ljava/util/Map;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jose4j/jwk/PublicJsonWebKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v1, p1

    .local v1, "jcaProvider":Ljava/lang/String;
    move-object v5, v0

    const-string/jumbo v6, "kty"

    invoke-static {v5, v6}, Lorg/jose4j/jwk/JsonWebKey;->getStringRequired(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 266
    .local v2, "kty":Ljava/lang/String;
    move-object v5, v2

    move-object v3, v5

    const/4 v5, -0x1

    move v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 273
    new-instance v5, Lorg/jose4j/lang/JoseException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown key type (for public keys): \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 266
    :sswitch_0
    move-object v5, v3

    const-string/jumbo v6, "RSA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    move v4, v5

    goto :goto_0

    :sswitch_1
    move-object v5, v3

    const-string/jumbo v6, "EC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v4, v5

    goto :goto_0

    .line 269
    :pswitch_0
    new-instance v5, Lorg/jose4j/jwk/RsaJsonWebKey;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lorg/jose4j/jwk/RsaJsonWebKey;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    move-object v0, v5

    .line 271
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    return-object v0

    .restart local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_1
    new-instance v5, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_1

    .line 266
    nop

    :sswitch_data_0
    .sparse-switch
        0x89e -> :sswitch_1
        0x13e20 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
