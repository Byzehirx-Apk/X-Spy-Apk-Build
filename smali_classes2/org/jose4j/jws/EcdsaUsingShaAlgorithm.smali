.class public Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
.super Lorg/jose4j/jws/BaseSignatureAlgorithm;
.source "EcdsaUsingShaAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jws/JsonWebSignatureAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP521UsingSha512;,
        Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP384UsingSha384;,
        Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP256UsingSha256;
    }
.end annotation


# instance fields
.field private curveName:Ljava/lang/String;

.field private signatureByteLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object v2, p2

    .local v2, "javaAlgo":Ljava/lang/String;
    move-object v3, p3

    .local v3, "curveName":Ljava/lang/String;
    move v4, p4

    .local v4, "signatureByteLength":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const-string/jumbo v8, "EC"

    invoke-direct {v5, v6, v7, v8}, Lorg/jose4j/jws/BaseSignatureAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->curveName:Ljava/lang/String;

    .line 48
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->signatureByteLength:I

    .line 49
    return-void
.end method

.method public static convertConcatenatedToDer([B)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "concatenatedSignatureBytes":[B
    move-object v9, v0

    array-length v9, v9

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    move v1, v9

    .line 100
    .local v1, "rawLen":I
    move v9, v1

    move v2, v9

    .local v2, "i":I
    :goto_0
    move v9, v2

    if-lez v9, :cond_0

    move-object v9, v0

    move v10, v1

    move v11, v2

    sub-int/2addr v10, v11

    aget-byte v9, v9, v10

    if-nez v9, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 102
    :cond_0
    move v9, v2

    move v3, v9

    .line 104
    .local v3, "j":I
    move-object v9, v0

    move v10, v1

    move v11, v2

    sub-int/2addr v10, v11

    aget-byte v9, v9, v10

    if-gez v9, :cond_1

    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 111
    :cond_1
    move v9, v1

    move v4, v9

    .local v4, "k":I
    :goto_1
    move v9, v4

    if-lez v9, :cond_2

    move-object v9, v0

    const/4 v10, 0x2

    move v11, v1

    mul-int/2addr v10, v11

    move v11, v4

    sub-int/2addr v10, v11

    aget-byte v9, v9, v10

    if-nez v9, :cond_2

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 113
    :cond_2
    move v9, v4

    move v5, v9

    .line 115
    .local v5, "l":I
    move-object v9, v0

    const/4 v10, 0x2

    move v11, v1

    mul-int/2addr v10, v11

    move v11, v4

    sub-int/2addr v10, v11

    aget-byte v9, v9, v10

    if-gez v9, :cond_3

    .line 117
    add-int/lit8 v5, v5, 0x1

    .line 120
    :cond_3
    const/4 v9, 0x2

    move v10, v3

    add-int/2addr v9, v10

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    move v10, v5

    add-int/2addr v9, v10

    move v6, v9

    .line 121
    .local v6, "len":I
    move v9, v6

    const/16 v10, 0xff

    if-le v9, v10, :cond_4

    .line 123
    new-instance v9, Ljava/io/IOException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "Invalid format of ECDSA signature"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 127
    :cond_4
    move v9, v6

    const/16 v10, 0x80

    if-ge v9, v10, :cond_5

    .line 129
    const/4 v9, 0x4

    move v10, v3

    add-int/2addr v9, v10

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    move v10, v5

    add-int/2addr v9, v10

    new-array v9, v9, [B

    move-object v8, v9

    .line 130
    .local v8, "derEncodedSignatureBytes":[B
    const/4 v9, 0x1

    move v7, v9

    .line 139
    .local v7, "offset":I
    :goto_2
    move-object v9, v8

    const/4 v10, 0x0

    const/16 v11, 0x30

    aput-byte v11, v9, v10

    .line 140
    move-object v9, v8

    move v10, v7

    add-int/lit8 v7, v7, 0x1

    move v11, v6

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 141
    move-object v9, v8

    move v10, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x2

    aput-byte v11, v9, v10

    .line 142
    move-object v9, v8

    move v10, v7

    add-int/lit8 v7, v7, 0x1

    move v11, v3

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 144
    move-object v9, v0

    move v10, v1

    move v11, v2

    sub-int/2addr v10, v11

    move-object v11, v8

    move v12, v7

    move v13, v3

    add-int/2addr v12, v13

    move v13, v2

    sub-int/2addr v12, v13

    move v13, v2

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    move v9, v7

    move v10, v3

    add-int/2addr v9, v10

    move v7, v9

    .line 148
    move-object v9, v8

    move v10, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x2

    aput-byte v11, v9, v10

    .line 149
    move-object v9, v8

    move v10, v7

    add-int/lit8 v7, v7, 0x1

    move v11, v5

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 151
    move-object v9, v0

    const/4 v10, 0x2

    move v11, v1

    mul-int/2addr v10, v11

    move v11, v4

    sub-int/2addr v10, v11

    move-object v11, v8

    move v12, v7

    move v13, v5

    add-int/2addr v12, v13

    move v13, v4

    sub-int/2addr v12, v13

    move v13, v4

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    move-object v9, v8

    move-object v0, v9

    .end local v0    # "concatenatedSignatureBytes":[B
    return-object v0

    .line 134
    .end local v7    # "offset":I
    .end local v8    # "derEncodedSignatureBytes":[B
    .restart local v0    # "concatenatedSignatureBytes":[B
    :cond_5
    const/4 v9, 0x5

    move v10, v3

    add-int/2addr v9, v10

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    move v10, v5

    add-int/2addr v9, v10

    new-array v9, v9, [B

    move-object v8, v9

    .line 135
    .restart local v8    # "derEncodedSignatureBytes":[B
    move-object v9, v8

    const/4 v10, 0x1

    const/16 v11, -0x7f

    aput-byte v11, v9, v10

    .line 136
    const/4 v9, 0x2

    move v7, v9

    .restart local v7    # "offset":I
    goto :goto_2
.end method

.method public static convertDerToConcatenated([BI)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "derEncodedBytes":[B
    move/from16 v1, p1

    .local v1, "outputLength":I
    move-object v9, v0

    array-length v9, v9

    const/16 v10, 0x8

    if-lt v9, v10, :cond_0

    move-object v9, v0

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    const/16 v10, 0x30

    if-eq v9, v10, :cond_1

    .line 162
    :cond_0
    new-instance v9, Ljava/io/IOException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "Invalid format of ECDSA signature"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 166
    :cond_1
    move-object v9, v0

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    if-lez v9, :cond_2

    .line 168
    const/4 v9, 0x2

    move v2, v9

    .line 179
    .local v2, "offset":I
    :goto_0
    move-object v9, v0

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    move v3, v9

    .line 182
    .local v3, "rLength":B
    move v9, v3

    move v4, v9

    .local v4, "i":I
    :goto_1
    move v9, v4

    if-lez v9, :cond_4

    move-object v9, v0

    move v10, v2

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move v11, v3

    add-int/2addr v10, v11

    move v11, v4

    sub-int/2addr v10, v11

    aget-byte v9, v9, v10

    if-nez v9, :cond_4

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 170
    .end local v2    # "offset":I
    .end local v3    # "rLength":B
    .end local v4    # "i":I
    :cond_2
    move-object v9, v0

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    const/16 v10, -0x7f

    if-ne v9, v10, :cond_3

    .line 172
    const/4 v9, 0x3

    move v2, v9

    .restart local v2    # "offset":I
    goto :goto_0

    .line 176
    .end local v2    # "offset":I
    :cond_3
    new-instance v9, Ljava/io/IOException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "Invalid format of ECDSA signature"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 184
    .restart local v2    # "offset":I
    .restart local v3    # "rLength":B
    .restart local v4    # "i":I
    :cond_4
    move-object v9, v0

    move v10, v2

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move v11, v3

    add-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    move v5, v9

    .line 187
    .local v5, "sLength":B
    move v9, v5

    move v6, v9

    .local v6, "j":I
    :goto_2
    move v9, v6

    if-lez v9, :cond_5

    move-object v9, v0

    move v10, v2

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move v11, v3

    add-int/2addr v10, v11

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move v11, v5

    add-int/2addr v10, v11

    move v11, v6

    sub-int/2addr v10, v11

    aget-byte v9, v9, v10

    if-nez v9, :cond_5

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 189
    :cond_5
    move v9, v4

    move v10, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v7, v9

    .line 190
    .local v7, "rawLen":I
    move v9, v7

    move v10, v1

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v7, v9

    .line 192
    move-object v9, v0

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move-object v10, v0

    array-length v10, v10

    move v11, v2

    sub-int/2addr v10, v11

    if-ne v9, v10, :cond_6

    move-object v9, v0

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    move v11, v3

    add-int/2addr v10, v11

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move v11, v5

    add-int/2addr v10, v11

    if-ne v9, v10, :cond_6

    move-object v9, v0

    move v10, v2

    aget-byte v9, v9, v10

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    move-object v9, v0

    move v10, v2

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move v11, v3

    add-int/2addr v10, v11

    aget-byte v9, v9, v10

    const/4 v10, 0x2

    if-eq v9, v10, :cond_7

    .line 197
    :cond_6
    new-instance v9, Ljava/io/IOException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "Invalid format of ECDSA signature"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 200
    :cond_7
    const/4 v9, 0x2

    move v10, v7

    mul-int/2addr v9, v10

    new-array v9, v9, [B

    move-object v8, v9

    .line 202
    .local v8, "concatenatedSignatureBytes":[B
    move-object v9, v0

    move v10, v2

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move v11, v3

    add-int/2addr v10, v11

    move v11, v4

    sub-int/2addr v10, v11

    move-object v11, v8

    move v12, v7

    move v13, v4

    sub-int/2addr v12, v13

    move v13, v4

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    move-object v9, v0

    move v10, v2

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move v11, v3

    add-int/2addr v10, v11

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move v11, v5

    add-int/2addr v10, v11

    move v11, v6

    sub-int/2addr v10, v11

    move-object v11, v8

    const/4 v12, 0x2

    move v13, v7

    mul-int/2addr v12, v13

    move v13, v6

    sub-int/2addr v12, v13

    move v13, v6

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    move-object v9, v8

    move-object v0, v9

    .end local v0    # "derEncodedBytes":[B
    return-object v0
.end method

.method private validateKeySpec(Ljava/security/Key;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v6, v1

    instance-of v6, v6, Ljava/security/interfaces/ECKey;

    if-eqz v6, :cond_0

    .line 225
    move-object v6, v1

    check-cast v6, Ljava/security/interfaces/ECKey;

    move-object v2, v6

    .line 226
    .local v2, "ecKey":Ljava/security/interfaces/ECKey;
    move-object v6, v2

    invoke-interface {v6}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v6

    move-object v3, v6

    .line 227
    .local v3, "spec":Ljava/security/spec/ECParameterSpec;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v6

    move-object v4, v6

    .line 229
    .local v4, "curve":Ljava/security/spec/EllipticCurve;
    move-object v6, v4

    invoke-static {v6}, Lorg/jose4j/keys/EllipticCurves;->getName(Ljava/security/spec/EllipticCurve;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 231
    .local v5, "name":Ljava/lang/String;
    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->getCurveName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 233
    new-instance v6, Lorg/jose4j/lang/InvalidKeyException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    invoke-virtual {v9}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " expects a key using "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->getCurveName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " but was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 237
    .end local v2    # "ecKey":Ljava/security/interfaces/ECKey;
    .end local v3    # "spec":Ljava/security/spec/ECParameterSpec;
    .end local v4    # "curve":Ljava/security/spec/EllipticCurve;
    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurveName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->curveName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
    return-object v0
.end method

.method public sign(Ljava/security/Key;[BLorg/jose4j/jca/ProviderContext;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, p2

    .local v2, "securedInputBytes":[B
    move-object v3, p3

    .local v3, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-super {v6, v7, v8, v9}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->sign(Ljava/security/Key;[BLorg/jose4j/jca/ProviderContext;)[B

    move-result-object v6

    move-object v4, v6

    .line 71
    .local v4, "derEncodedSignatureBytes":[B
    move-object v6, v4

    move-object v7, v0

    :try_start_0
    iget v7, v7, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->signatureByteLength:I

    invoke-static {v6, v7}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->convertDerToConcatenated([BI)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
    return-object v0

    .line 73
    .restart local v0    # "this":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 75
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Lorg/jose4j/lang/JoseException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Unable to convert DER encoding to R and S as a concatenated byte array."

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public validatePrivateKey(Ljava/security/PrivateKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
    move-object v1, p1

    .local v1, "privateKey":Ljava/security/PrivateKey;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->validateKeySpec(Ljava/security/Key;)V

    .line 211
    return-void
.end method

.method public validatePublicKey(Ljava/security/PublicKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
    move-object v1, p1

    .local v1, "publicKey":Ljava/security/PublicKey;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->validateKeySpec(Ljava/security/Key;)V

    .line 216
    return-void
.end method

.method public verifySignature([BLjava/security/Key;[BLorg/jose4j/jca/ProviderContext;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
    move-object v1, p1

    .local v1, "signatureBytes":[B
    move-object v2, p2

    .local v2, "key":Ljava/security/Key;
    move-object/from16 v3, p3

    .local v3, "securedInputBytes":[B
    move-object/from16 v4, p4

    .local v4, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v7, v1

    :try_start_0
    invoke-static {v7}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->convertConcatenatedToDer([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v5, v7

    .line 61
    .line 63
    .local v5, "derEncodedSignatureBytes":[B
    move-object v7, v0

    move-object v8, v5

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-super {v7, v8, v9, v10, v11}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->verifySignature([BLjava/security/Key;[BLorg/jose4j/jca/ProviderContext;)Z

    move-result v7

    move v0, v7

    .end local v0    # "this":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
    return v0

    .line 58
    .end local v5    # "derEncodedSignatureBytes":[B
    .restart local v0    # "this":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 60
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Lorg/jose4j/lang/JoseException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "Unable to convert R and S as a concatenated byte array to DER encoding."

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method
