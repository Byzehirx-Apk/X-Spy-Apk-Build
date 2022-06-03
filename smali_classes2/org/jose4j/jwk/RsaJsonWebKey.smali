.class public Lorg/jose4j/jwk/RsaJsonWebKey;
.super Lorg/jose4j/jwk/PublicJsonWebKey;
.source "RsaJsonWebKey.java"


# static fields
.field public static final EXPONENT_MEMBER_NAME:Ljava/lang/String; = "e"

.field public static final FACTOR_CRT_COEFFICIENT:Ljava/lang/String; = "t"

.field public static final FACTOR_CRT_EXPONENT_OTHER_MEMBER_NAME:Ljava/lang/String; = "d"

.field public static final FIRST_CRT_COEFFICIENT_MEMBER_NAME:Ljava/lang/String; = "qi"

.field public static final FIRST_FACTOR_CRT_EXPONENT_MEMBER_NAME:Ljava/lang/String; = "dp"

.field public static final FIRST_PRIME_FACTOR_MEMBER_NAME:Ljava/lang/String; = "p"

.field public static final KEY_TYPE:Ljava/lang/String; = "RSA"

.field public static final MODULUS_MEMBER_NAME:Ljava/lang/String; = "n"

.field public static final OTHER_PRIMES_INFO_MEMBER_NAME:Ljava/lang/String; = "oth"

.field public static final PRIME_FACTOR_OTHER_MEMBER_NAME:Ljava/lang/String; = "r"

.field public static final PRIVATE_EXPONENT_MEMBER_NAME:Ljava/lang/String; = "d"

.field public static final SECOND_FACTOR_CRT_EXPONENT_MEMBER_NAME:Ljava/lang/String; = "dq"

.field public static final SECOND_PRIME_FACTOR_MEMBER_NAME:Ljava/lang/String; = "q"


# direct methods
.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/RsaJsonWebKey;
    move-object v1, p1

    .local v1, "publicKey":Ljava/security/interfaces/RSAPublicKey;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/jose4j/jwk/PublicJsonWebKey;-><init>(Ljava/security/PublicKey;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
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
    .line 59
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/RsaJsonWebKey;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/jose4j/jwk/RsaJsonWebKey;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 64
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwk/RsaJsonWebKey;
    move-object/from16 v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v2, p2

    .local v2, "jcaProvider":Ljava/lang/String;
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    invoke-direct {v12, v13, v14}, Lorg/jose4j/jwk/PublicJsonWebKey;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 66
    move-object v12, v0

    move-object v13, v1

    const-string/jumbo v14, "n"

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v12

    move-object v3, v12

    .line 68
    .local v3, "modulus":Ljava/math/BigInteger;
    move-object v12, v0

    move-object v13, v1

    const-string/jumbo v14, "e"

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v12

    move-object v4, v12

    .line 70
    .local v4, "publicExponent":Ljava/math/BigInteger;
    new-instance v12, Lorg/jose4j/keys/RsaKeyUtil;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    move-object v14, v2

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lorg/jose4j/keys/RsaKeyUtil;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    move-object v5, v12

    .line 71
    .local v5, "rsaKeyUtil":Lorg/jose4j/keys/RsaKeyUtil;
    move-object v12, v0

    move-object v13, v5

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Lorg/jose4j/keys/RsaKeyUtil;->publicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v13

    iput-object v13, v12, Lorg/jose4j/jwk/RsaJsonWebKey;->key:Ljava/security/Key;

    .line 72
    move-object v12, v0

    invoke-virtual {v12}, Lorg/jose4j/jwk/RsaJsonWebKey;->checkForBareKeyCertMismatch()V

    .line 74
    move-object v12, v1

    const-string/jumbo v13, "d"

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 76
    move-object v12, v0

    move-object v13, v1

    const-string/jumbo v14, "d"

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v12

    move-object v6, v12

    .line 78
    .local v6, "d":Ljava/math/BigInteger;
    move-object v12, v1

    const-string/jumbo v13, "p"

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 80
    move-object v12, v0

    move-object v13, v1

    const-string/jumbo v14, "p"

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v12

    move-object v7, v12

    .line 81
    .local v7, "p":Ljava/math/BigInteger;
    move-object v12, v0

    move-object v13, v1

    const-string/jumbo v14, "q"

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v12

    move-object v8, v12

    .line 82
    .local v8, "q":Ljava/math/BigInteger;
    move-object v12, v0

    move-object v13, v1

    const-string/jumbo v14, "dp"

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v12

    move-object v9, v12

    .line 83
    .local v9, "dp":Ljava/math/BigInteger;
    move-object v12, v0

    move-object v13, v1

    const-string/jumbo v14, "dq"

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v12

    move-object v10, v12

    .line 84
    .local v10, "dq":Ljava/math/BigInteger;
    move-object v12, v0

    move-object v13, v1

    const-string/jumbo v14, "qi"

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v12

    move-object v11, v12

    .line 85
    .local v11, "qi":Ljava/math/BigInteger;
    move-object v12, v0

    move-object v13, v5

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    invoke-virtual/range {v13 .. v21}, Lorg/jose4j/keys/RsaKeyUtil;->privateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v13

    iput-object v13, v12, Lorg/jose4j/jwk/RsaJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    .line 86
    .line 93
    .end local v6    # "d":Ljava/math/BigInteger;
    .end local v7    # "p":Ljava/math/BigInteger;
    .end local v8    # "q":Ljava/math/BigInteger;
    .end local v9    # "dp":Ljava/math/BigInteger;
    .end local v10    # "dq":Ljava/math/BigInteger;
    .end local v11    # "qi":Ljava/math/BigInteger;
    :cond_0
    :goto_0
    move-object v12, v0

    const/16 v13, 0x8

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const/4 v15, 0x0

    const-string/jumbo v16, "n"

    aput-object v16, v14, v15

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const/4 v15, 0x1

    const-string/jumbo v16, "e"

    aput-object v16, v14, v15

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const/4 v15, 0x2

    const-string/jumbo v16, "d"

    aput-object v16, v14, v15

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const/4 v15, 0x3

    const-string/jumbo v16, "p"

    aput-object v16, v14, v15

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const/4 v15, 0x4

    const-string/jumbo v16, "q"

    aput-object v16, v14, v15

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const/4 v15, 0x5

    const-string/jumbo v16, "dp"

    aput-object v16, v14, v15

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const/4 v15, 0x6

    const-string/jumbo v16, "dq"

    aput-object v16, v14, v15

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const/4 v15, 0x7

    const-string/jumbo v16, "qi"

    aput-object v16, v14, v15

    invoke-virtual {v12, v13}, Lorg/jose4j/jwk/RsaJsonWebKey;->removeFromOtherParams([Ljava/lang/String;)V

    .line 101
    return-void

    .line 89
    .restart local v6    # "d":Ljava/math/BigInteger;
    :cond_1
    move-object v12, v0

    move-object v13, v5

    move-object v14, v3

    move-object v15, v6

    invoke-virtual {v13, v14, v15}, Lorg/jose4j/keys/RsaKeyUtil;->privateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v13

    iput-object v13, v12, Lorg/jose4j/jwk/RsaJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    goto :goto_0
.end method


# virtual methods
.method protected fillPrivateTypeSpecificParams(Ljava/util/Map;)V
    .locals 8
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

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/RsaJsonWebKey;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lorg/jose4j/jwk/RsaJsonWebKey;->getRsaPrivateKey()Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v4

    move-object v2, v4

    .line 137
    .local v2, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 139
    move-object v4, v0

    move-object v5, v1

    const-string/jumbo v6, "d"

    move-object v7, v2

    invoke-interface {v7}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 141
    move-object v4, v2

    instance-of v4, v4, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v4, :cond_0

    .line 143
    move-object v4, v2

    check-cast v4, Ljava/security/interfaces/RSAPrivateCrtKey;

    move-object v3, v4

    .line 144
    .local v3, "crt":Ljava/security/interfaces/RSAPrivateCrtKey;
    move-object v4, v0

    move-object v5, v1

    const-string/jumbo v6, "p"

    move-object v7, v3

    invoke-interface {v7}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 145
    move-object v4, v0

    move-object v5, v1

    const-string/jumbo v6, "q"

    move-object v7, v3

    invoke-interface {v7}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 146
    move-object v4, v0

    move-object v5, v1

    const-string/jumbo v6, "dp"

    move-object v7, v3

    invoke-interface {v7}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 147
    move-object v4, v0

    move-object v5, v1

    const-string/jumbo v6, "dq"

    move-object v7, v3

    invoke-interface {v7}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 148
    move-object v4, v0

    move-object v5, v1

    const-string/jumbo v6, "qi"

    move-object v7, v3

    invoke-interface {v7}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 151
    .end local v3    # "crt":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_0
    return-void
.end method

.method protected fillPublicTypeSpecificParams(Ljava/util/Map;)V
    .locals 7
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

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/RsaJsonWebKey;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lorg/jose4j/jwk/RsaJsonWebKey;->getRsaPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v3

    move-object v2, v3

    .line 129
    .local v2, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "n"

    move-object v6, v2

    invoke-interface {v6}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 130
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "e"

    move-object v6, v2

    invoke-interface {v6}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 131
    return-void
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/RsaJsonWebKey;
    const-string/jumbo v1, "RSA"

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/RsaJsonWebKey;
    return-object v0
.end method

.method public getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/RsaJsonWebKey;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/jwk/RsaJsonWebKey;->getRsaPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/RsaJsonWebKey;
    return-object v0
.end method

.method public getRsaPrivateKey()Ljava/security/interfaces/RSAPrivateKey;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/RsaJsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/RsaJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/RsaJsonWebKey;
    return-object v0
.end method

.method public getRsaPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/RsaJsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/RsaJsonWebKey;->key:Ljava/security/Key;

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/RsaJsonWebKey;
    return-object v0
.end method

.method protected produceThumbprintHashInput()Ljava/lang/String;
    .locals 10

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/RsaJsonWebKey;
    const-string/jumbo v3, "{\"e\":\"%s\",\"kty\":\"RSA\",\"n\":\"%s\"}"

    move-object v1, v3

    .line 157
    .local v1, "template":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    .line 158
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/jose4j/jwk/RsaJsonWebKey;->fillPublicTypeSpecificParams(Ljava/util/Map;)V

    .line 159
    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v2

    const-string/jumbo v8, "e"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    move-object v7, v2

    const-string/jumbo v8, "n"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwk/RsaJsonWebKey;
    return-object v0
.end method
