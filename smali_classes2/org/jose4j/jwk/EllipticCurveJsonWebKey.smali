.class public Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
.super Lorg/jose4j/jwk/PublicJsonWebKey;
.source "EllipticCurveJsonWebKey.java"


# static fields
.field public static final CURVE_MEMBER_NAME:Ljava/lang/String; = "crv"

.field public static final KEY_TYPE:Ljava/lang/String; = "EC"

.field public static final PRIVATE_KEY_MEMBER_NAME:Ljava/lang/String; = "d"

.field public static final X_MEMBER_NAME:Ljava/lang/String; = "x"

.field public static final Y_MEMBER_NAME:Ljava/lang/String; = "y"


# instance fields
.field private curveName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    move-object v1, p1

    .local v1, "publicKey":Ljava/security/interfaces/ECPublicKey;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/jose4j/jwk/PublicJsonWebKey;-><init>(Ljava/security/PublicKey;)V

    .line 50
    move-object v4, v1

    invoke-interface {v4}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    move-object v2, v4

    .line 51
    .local v2, "spec":Ljava/security/spec/ECParameterSpec;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v4

    move-object v3, v4

    .line 52
    .local v3, "curve":Ljava/security/spec/EllipticCurve;
    move-object v4, v0

    move-object v5, v3

    invoke-static {v5}, Lorg/jose4j/keys/EllipticCurves;->getName(Ljava/security/spec/EllipticCurve;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->curveName:Ljava/lang/String;

    .line 53
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
    .line 57
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 14
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
    .line 62
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v2, p2

    .local v2, "jcaProvider":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lorg/jose4j/jwk/PublicJsonWebKey;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 64
    move-object v8, v0

    move-object v9, v1

    const-string/jumbo v10, "crv"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->curveName:Ljava/lang/String;

    .line 65
    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->curveName:Ljava/lang/String;

    invoke-static {v8}, Lorg/jose4j/keys/EllipticCurves;->getSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v8

    move-object v3, v8

    .line 67
    .local v3, "curve":Ljava/security/spec/ECParameterSpec;
    move-object v8, v0

    move-object v9, v1

    const-string/jumbo v10, "x"

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v8

    move-object v4, v8

    .line 69
    .local v4, "x":Ljava/math/BigInteger;
    move-object v8, v0

    move-object v9, v1

    const-string/jumbo v10, "y"

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v8

    move-object v5, v8

    .line 71
    .local v5, "y":Ljava/math/BigInteger;
    new-instance v8, Lorg/jose4j/keys/EcKeyUtil;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v2

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lorg/jose4j/keys/EcKeyUtil;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    move-object v6, v8

    .line 72
    .local v6, "keyUtil":Lorg/jose4j/keys/EcKeyUtil;
    move-object v8, v0

    move-object v9, v6

    move-object v10, v4

    move-object v11, v5

    move-object v12, v3

    invoke-virtual {v9, v10, v11, v12}, Lorg/jose4j/keys/EcKeyUtil;->publicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/interfaces/ECPublicKey;

    move-result-object v9

    iput-object v9, v8, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->key:Ljava/security/Key;

    .line 73
    move-object v8, v0

    invoke-virtual {v8}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->checkForBareKeyCertMismatch()V

    .line 75
    move-object v8, v1

    const-string/jumbo v9, "d"

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 77
    move-object v8, v0

    move-object v9, v1

    const-string/jumbo v10, "d"

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v8

    move-object v7, v8

    .line 78
    .local v7, "d":Ljava/math/BigInteger;
    move-object v8, v0

    move-object v9, v6

    move-object v10, v7

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lorg/jose4j/keys/EcKeyUtil;->privateKey(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/interfaces/ECPrivateKey;

    move-result-object v9

    iput-object v9, v8, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    .line 81
    .end local v7    # "d":Ljava/math/BigInteger;
    :cond_0
    move-object v8, v0

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const-string/jumbo v12, "crv"

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    const-string/jumbo v12, "x"

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    const-string/jumbo v12, "y"

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x3

    const-string/jumbo v12, "d"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->removeFromOtherParams([Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private getCoordinateByteLength()I
    .locals 6

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getCurveName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jose4j/keys/EllipticCurves;->getSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    move-object v1, v2

    .line 107
    .local v1, "spec":Ljava/security/spec/ECParameterSpec;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    return v0
.end method


# virtual methods
.method protected fillPrivateTypeSpecificParams(Ljava/util/Map;)V
    .locals 9
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
    .line 122
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getEcPrivateKey()Ljava/security/interfaces/ECPrivateKey;

    move-result-object v4

    move-object v2, v4

    .line 124
    .local v2, "ecPrivateKey":Ljava/security/interfaces/ECPrivateKey;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 129
    move-object v4, v0

    invoke-direct {v4}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getCoordinateByteLength()I

    move-result v4

    move v3, v4

    .line 130
    .local v3, "coordinateByteLength":I
    move-object v4, v0

    move-object v5, v1

    const-string/jumbo v6, "d"

    move-object v7, v2

    invoke-interface {v7}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v7

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;I)V

    .line 132
    .end local v3    # "coordinateByteLength":I
    :cond_0
    return-void
.end method

.method protected fillPublicTypeSpecificParams(Ljava/util/Map;)V
    .locals 10
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
    .line 112
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getECPublicKey()Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    move-object v2, v5

    .line 113
    .local v2, "ecPublicKey":Ljava/security/interfaces/ECPublicKey;
    move-object v5, v2

    invoke-interface {v5}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v5

    move-object v3, v5

    .line 114
    .local v3, "w":Ljava/security/spec/ECPoint;
    move-object v5, v0

    invoke-direct {v5}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getCoordinateByteLength()I

    move-result v5

    move v4, v5

    .line 115
    .local v4, "coordinateByteLength":I
    move-object v5, v0

    move-object v6, v1

    const-string/jumbo v7, "x"

    move-object v8, v3

    invoke-virtual {v8}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v8

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;I)V

    .line 116
    move-object v5, v0

    move-object v6, v1

    const-string/jumbo v7, "y"

    move-object v8, v3

    invoke-virtual {v8}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v8

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;I)V

    .line 117
    move-object v5, v1

    const-string/jumbo v6, "crv"

    move-object v7, v0

    invoke-virtual {v7}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getCurveName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 118
    return-void
.end method

.method public getCurveName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->curveName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    return-object v0
.end method

.method public getECPublicKey()Ljava/security/interfaces/ECPublicKey;
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->key:Ljava/security/Key;

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    return-object v0
.end method

.method public getEcPrivateKey()Ljava/security/interfaces/ECPrivateKey;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    const-string/jumbo v1, "EC"

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    return-object v0
.end method

.method protected produceThumbprintHashInput()Ljava/lang/String;
    .locals 12

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    const-string/jumbo v6, "{\"crv\":\"%s\",\"kty\":\"EC\",\"x\":\"%s\",\"y\":\"%s\"}"

    move-object v1, v6

    .line 138
    .local v1, "template":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v2, v6

    .line 139
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->fillPublicTypeSpecificParams(Ljava/util/Map;)V

    .line 140
    move-object v6, v2

    const-string/jumbo v7, "crv"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 141
    .local v3, "crv":Ljava/lang/Object;
    move-object v6, v2

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 142
    .local v4, "x":Ljava/lang/Object;
    move-object v6, v2

    const-string/jumbo v7, "y"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 143
    .local v5, "y":Ljava/lang/Object;
    move-object v6, v1

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v4

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v5

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    return-object v0
.end method
