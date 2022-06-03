.class public Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;
.super Ljava/lang/Object;
.source "PasswordBasedKeyDerivationFunction2.java"


# instance fields
.field private hmacAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;
    move-object v1, p1

    .local v1, "hmacAlgorithm":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;->hmacAlgorithm:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public derive([B[BII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;
    move-object v1, p1

    .local v1, "password":[B
    move-object v2, p2

    .local v2, "salt":[B
    move v3, p3

    .local v3, "iterationCount":I
    move v4, p4

    .local v4, "dkLen":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;->derive([B[BIILjava/lang/String;)[B

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;
    return-object v0
.end method

.method public derive([B[BIILjava/lang/String;)[B
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 47
    move-object/from16 v3, p0

    .local v3, "this":Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;
    move-object/from16 v4, p1

    .local v4, "password":[B
    move-object/from16 v5, p2

    .local v5, "salt":[B
    move/from16 v6, p3

    .local v6, "iterationCount":I
    move/from16 v7, p4

    .local v7, "dkLen":I
    move-object/from16 v8, p5

    .local v8, "provider":Ljava/lang/String;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;->hmacAlgorithm:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Lorg/jose4j/keys/HmacKey;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v21, v4

    invoke-direct/range {v20 .. v21}, Lorg/jose4j/keys/HmacKey;-><init>([B)V

    move-object/from16 v20, v8

    invoke-static/range {v18 .. v20}, Lorg/jose4j/mac/MacUtil;->getInitializedMac(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v18

    move-object/from16 v9, v18

    .line 48
    .local v9, "prf":Ljavax/crypto/Mac;
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v18

    move/from16 v10, v18

    .line 52
    .local v10, "hLen":I
    const-wide v18, 0xffffffffL

    move-wide/from16 v11, v18

    .line 53
    .local v11, "maxDerivedKeyLength":J
    move/from16 v18, v7

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v11

    cmp-long v18, v18, v20

    if-lez v18, :cond_0

    .line 55
    new-instance v18, Lorg/jose4j/lang/UncheckedJoseException;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "derived key too long "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/jose4j/lang/UncheckedJoseException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 67
    :cond_0
    move/from16 v18, v7

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v20, v10

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v13, v18

    .line 68
    .local v13, "l":I
    move/from16 v18, v7

    move/from16 v19, v13

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v20, v10

    mul-int v19, v19, v20

    sub-int v18, v18, v19

    move/from16 v14, v18

    .line 101
    .local v14, "r":I
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v15, v18

    .line 102
    .local v15, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x0

    move/from16 v16, v18

    .local v16, "i":I
    :goto_0
    move/from16 v18, v16

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 104
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v22, v9

    invoke-virtual/range {v18 .. v22}, Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;->f([BIILjavax/crypto/Mac;)[B

    move-result-object v18

    move-object/from16 v17, v18

    .line 105
    .local v17, "block":[B
    move/from16 v18, v16

    move/from16 v19, v13

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 107
    move-object/from16 v18, v17

    const/16 v19, 0x0

    move/from16 v20, v14

    invoke-static/range {v18 .. v20}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object v18

    move-object/from16 v17, v18

    .line 109
    :cond_1
    move-object/from16 v18, v15

    move-object/from16 v19, v17

    const/16 v20, 0x0

    move-object/from16 v21, v17

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 102
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 113
    .end local v17    # "block":[B
    :cond_2
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v3, v18

    .end local v3    # "this":Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;
    return-object v3
.end method

.method f([BIILjavax/crypto/Mac;)[B
    .locals 17

    .prologue
    .line 119
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;
    move-object/from16 v1, p1

    .local v1, "salt":[B
    move/from16 v2, p2

    .local v2, "iterationCount":I
    move/from16 v3, p3

    .local v3, "blockIndex":I
    move-object/from16 v4, p4

    .local v4, "prf":Ljavax/crypto/Mac;
    const/4 v11, 0x0

    move-object v6, v11

    .line 120
    .local v6, "lastU":[B
    const/4 v11, 0x0

    move-object v7, v11

    .line 122
    .local v7, "xorU":[B
    const/4 v11, 0x1

    move v8, v11

    .local v8, "i":I
    :goto_0
    move v11, v8

    move v12, v2

    if-gt v11, v12, :cond_2

    .line 125
    move v11, v8

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 127
    const/4 v11, 0x2

    new-array v11, v11, [[B

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v1

    aput-object v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x1

    move v14, v3

    invoke-static {v14}, Lorg/jose4j/lang/ByteUtil;->getBytes(I)[B

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11}, Lorg/jose4j/lang/ByteUtil;->concat([[B)[B

    move-result-object v11

    move-object v9, v11

    .line 128
    .local v9, "inputBytes":[B
    move-object v11, v4

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v11

    move-object v5, v11

    .line 129
    .local v5, "currentU":[B
    move-object v11, v5

    move-object v7, v11

    .line 140
    .end local v9    # "inputBytes":[B
    :cond_0
    move-object v11, v5

    move-object v6, v11

    .line 122
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 133
    .end local v5    # "currentU":[B
    :cond_1
    move-object v11, v4

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v11

    move-object v5, v11

    .line 134
    .restart local v5    # "currentU":[B
    const/4 v11, 0x0

    move v10, v11

    .local v10, "j":I
    :goto_1
    move v11, v10

    move-object v12, v5

    array-length v12, v12

    if-ge v11, v12, :cond_0

    .line 136
    move-object v11, v7

    move v12, v10

    move-object v13, v5

    move v14, v10

    aget-byte v13, v13, v14

    move-object v14, v7

    move v15, v10

    aget-byte v14, v14, v15

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 134
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 142
    .end local v5    # "currentU":[B
    .end local v10    # "j":I
    :cond_2
    move-object v11, v7

    move-object v0, v11

    .end local v0    # "this":Lorg/jose4j/jwe/kdf/PasswordBasedKeyDerivationFunction2;
    return-object v0
.end method
