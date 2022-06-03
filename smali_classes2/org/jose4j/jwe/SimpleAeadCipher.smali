.class public Lorg/jose4j/jwe/SimpleAeadCipher;
.super Ljava/lang/Object;
.source "SimpleAeadCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    }
.end annotation


# static fields
.field public static final GCM_TRANSFORMATION_NAME:Ljava/lang/String; = "AES/GCM/NoPadding"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private tagByteLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/SimpleAeadCipher;
    move-object v1, p1

    .local v1, "algorithm":Ljava/lang/String;
    move v2, p2

    .local v2, "tagByteLength":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/jose4j/jwe/SimpleAeadCipher;->algorithm:Ljava/lang/String;

    .line 46
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/jose4j/jwe/SimpleAeadCipher;->tagByteLength:I

    .line 47
    return-void
.end method

.method private getInitialisedCipher(Ljava/security/Key;[BILjava/lang/String;)Ljavax/crypto/Cipher;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/SimpleAeadCipher;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, p2

    .local v2, "iv":[B
    move v3, p3

    .local v3, "mode":I
    move-object/from16 v4, p4

    .local v4, "provider":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/jwe/SimpleAeadCipher;->algorithm:Ljava/lang/String;

    move-object v8, v4

    invoke-static {v7, v8}, Lorg/jose4j/jwe/CipherUtil;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    move-object v5, v7

    .line 54
    .local v5, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget v9, v9, Lorg/jose4j/jwe/SimpleAeadCipher;->tagByteLength:I

    invoke-static {v9}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result v9

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    move-object v6, v7

    .line 55
    .local v6, "parameterSpec":Ljavax/crypto/spec/GCMParameterSpec;
    move-object v7, v5

    move v8, v3

    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v7, v8, v9, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Lorg/jose4j/jwe/SimpleAeadCipher;
    return-object v0

    .line 58
    .end local v6    # "parameterSpec":Ljavax/crypto/spec/GCMParameterSpec;
    .restart local v0    # "this":Lorg/jose4j/jwe/SimpleAeadCipher;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 60
    .local v6, "e":Ljava/security/InvalidKeyException;
    new-instance v7, Lorg/jose4j/lang/JoseException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid key for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/jwe/SimpleAeadCipher;->algorithm:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 62
    .end local v6    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 64
    .local v6, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v7, Lorg/jose4j/lang/JoseException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    invoke-virtual {v9}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private updateAad(Ljavax/crypto/Cipher;[B)V
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/SimpleAeadCipher;
    move-object v1, p1

    .local v1, "cipher":Ljavax/crypto/Cipher;
    move-object v2, p2

    .local v2, "aad":[B
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    array-length v3, v3

    if-lez v3, :cond_0

    .line 94
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public decrypt(Ljava/security/Key;[B[B[B[BLjava/lang/String;)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/SimpleAeadCipher;
    move-object/from16 v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object/from16 v2, p2

    .local v2, "iv":[B
    move-object/from16 v3, p3

    .local v3, "ciphertext":[B
    move-object/from16 v4, p4

    .local v4, "tag":[B
    move-object/from16 v5, p5

    .local v5, "aad":[B
    move-object/from16 v6, p6

    .local v6, "provider":Ljava/lang/String;
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    const/4 v12, 0x2

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/jose4j/jwe/SimpleAeadCipher;->getInitialisedCipher(Ljava/security/Key;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v9

    move-object v7, v9

    .line 101
    .local v7, "cipher":Ljavax/crypto/Cipher;
    move-object v9, v0

    move-object v10, v7

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Lorg/jose4j/jwe/SimpleAeadCipher;->updateAad(Ljavax/crypto/Cipher;[B)V

    .line 105
    move-object v9, v7

    const/4 v10, 0x2

    :try_start_0
    new-array v10, v10, [[B

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v3

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v4

    aput-object v13, v11, v12

    invoke-static {v10}, Lorg/jose4j/lang/ByteUtil;->concat([[B)[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    move-object v0, v9

    .end local v0    # "this":Lorg/jose4j/jwe/SimpleAeadCipher;
    return-object v0

    .line 107
    .restart local v0    # "this":Lorg/jose4j/jwe/SimpleAeadCipher;
    :catch_0
    move-exception v9

    :goto_0
    move-object v8, v9

    .line 109
    .local v8, "e":Ljava/security/GeneralSecurityException;
    new-instance v9, Lorg/jose4j/lang/JoseException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v8

    invoke-virtual {v11}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v8

    invoke-direct {v10, v11, v12}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 107
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method public encrypt(Ljava/security/Key;[B[B[BLjava/lang/String;)Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 70
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwe/SimpleAeadCipher;
    move-object/from16 v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object/from16 v2, p2

    .local v2, "iv":[B
    move-object/from16 v3, p3

    .local v3, "plaintext":[B
    move-object/from16 v4, p4

    .local v4, "aad":[B
    move-object/from16 v5, p5

    .local v5, "provider":Ljava/lang/String;
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    const/4 v13, 0x1

    move-object v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Lorg/jose4j/jwe/SimpleAeadCipher;->getInitialisedCipher(Ljava/security/Key;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v10

    move-object v6, v10

    .line 71
    .local v6, "cipher":Ljavax/crypto/Cipher;
    move-object v10, v0

    move-object v11, v6

    move-object v12, v4

    invoke-direct {v10, v11, v12}, Lorg/jose4j/jwe/SimpleAeadCipher;->updateAad(Ljavax/crypto/Cipher;[B)V

    .line 76
    move-object v10, v6

    move-object v11, v3

    :try_start_0
    invoke-virtual {v10, v11}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    move-object v7, v10

    .line 81
    .line 83
    .local v7, "cipherOutput":[B
    new-instance v10, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;-><init>()V

    move-object v8, v10

    .line 84
    .local v8, "result":Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    move-object v10, v7

    array-length v10, v10

    move-object v11, v0

    iget v11, v11, Lorg/jose4j/jwe/SimpleAeadCipher;->tagByteLength:I

    sub-int/2addr v10, v11

    move v9, v10

    .line 85
    .local v9, "tagIndex":I
    move-object v10, v8

    move-object v11, v7

    const/4 v12, 0x0

    move v13, v9

    invoke-static {v11, v12, v13}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object v11

    invoke-static {v10, v11}, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->access$002(Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;[B)[B

    move-result-object v10

    .line 86
    move-object v10, v8

    move-object v11, v7

    move v12, v9

    move-object v13, v0

    iget v13, v13, Lorg/jose4j/jwe/SimpleAeadCipher;->tagByteLength:I

    invoke-static {v11, v12, v13}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object v11

    invoke-static {v10, v11}, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->access$102(Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;[B)[B

    move-result-object v10

    .line 87
    move-object v10, v8

    move-object v0, v10

    .end local v0    # "this":Lorg/jose4j/jwe/SimpleAeadCipher;
    return-object v0

    .line 78
    .end local v7    # "cipherOutput":[B
    .end local v8    # "result":Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    .end local v9    # "tagIndex":I
    .restart local v0    # "this":Lorg/jose4j/jwe/SimpleAeadCipher;
    :catch_0
    move-exception v10

    :goto_0
    move-object v8, v10

    .line 80
    .local v8, "e":Ljava/security/GeneralSecurityException;
    new-instance v10, Lorg/jose4j/lang/JoseException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v8

    invoke-virtual {v12}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v8

    invoke-direct {v11, v12, v13}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 78
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v10

    goto :goto_0
.end method

.method public isAvailable(Lorg/slf4j/Logger;IILjava/lang/String;)Z
    .locals 18

    .prologue
    .line 116
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jose4j/jwe/SimpleAeadCipher;
    move-object/from16 v1, p1

    .local v1, "log":Lorg/slf4j/Logger;
    move/from16 v2, p2

    .local v2, "keyByteLength":I
    move/from16 v3, p3

    .local v3, "ivByteLength":I
    move-object/from16 v4, p4

    .local v4, "joseAlg":Ljava/lang/String;
    const/4 v11, 0x0

    move v5, v11

    .line 123
    .local v5, "isAvailable":Z
    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/jwe/SimpleAeadCipher;->algorithm:Ljava/lang/String;

    move v12, v2

    invoke-static {v11, v12}, Lorg/jose4j/jwe/CipherStrengthSupport;->isAvailable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 125
    const/16 v11, 0x9

    new-array v11, v11, [B

    fill-array-data v11, :array_0

    move-object v6, v11

    .line 126
    .local v6, "plain":[B
    const/4 v11, 0x3

    new-array v11, v11, [B

    fill-array-data v11, :array_1

    move-object v7, v11

    .line 127
    .local v7, "aad":[B
    move v11, v2

    new-array v11, v11, [B

    move-object v8, v11

    .line 128
    .local v8, "cek":[B
    move v11, v3

    new-array v11, v11, [B

    move-object v9, v11

    .line 131
    .local v9, "iv":[B
    move-object v11, v0

    :try_start_0
    new-instance v12, Lorg/jose4j/keys/AesKey;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v8

    invoke-direct {v13, v14}, Lorg/jose4j/keys/AesKey;-><init>([B)V

    move-object v13, v9

    move-object v14, v6

    move-object v15, v7

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lorg/jose4j/jwe/SimpleAeadCipher;->encrypt(Ljava/security/Key;[B[B[BLjava/lang/String;)Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 132
    const/4 v11, 0x1

    move v5, v11

    .line 137
    .line 139
    .end local v6    # "plain":[B
    .end local v7    # "aad":[B
    .end local v8    # "cek":[B
    .end local v9    # "iv":[B
    :cond_0
    :goto_0
    move v11, v5

    move v0, v11

    .end local v0    # "this":Lorg/jose4j/jwe/SimpleAeadCipher;
    return v0

    .line 134
    .restart local v0    # "this":Lorg/jose4j/jwe/SimpleAeadCipher;
    .restart local v6    # "plain":[B
    .restart local v7    # "aad":[B
    .restart local v8    # "cek":[B
    .restart local v9    # "iv":[B
    :catch_0
    move-exception v11

    move-object v10, v11

    .line 136
    .local v10, "e":Ljava/lang/Throwable;
    move-object v11, v1

    const-string/jumbo v12, "{} is not available ({})."

    move-object v13, v4

    move-object v14, v10

    invoke-static {v14}, Lorg/jose4j/lang/ExceptionHelp;->toStringWithCauses(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :array_0
    .array-data 1
        0x70t
        0x6ct
        0x61t
        0x69t
        0x6et
        0x74t
        0x65t
        0x78t
        0x74t
    .end array-data

    .line 126
    nop

    :array_1
    .array-data 1
        0x61t
        0x61t
        0x64t
    .end array-data
.end method
