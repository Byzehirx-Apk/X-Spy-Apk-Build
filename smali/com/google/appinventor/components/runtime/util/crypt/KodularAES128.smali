.class public Lcom/google/appinventor/components/runtime/util/crypt/KodularAES128;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "%16s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    const/4 v7, 0x0

    const-string/jumbo v8, "%.16s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 64
    :try_start_0
    const-string/jumbo v4, "AES/CBC/PKCS5PADDING"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    move-object v2, v4

    .line 65
    move-object v4, v1

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object v1, v4

    .line 66
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    move-object v6, v1

    const-string/jumbo v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v3, v4

    .line 67
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    move-object v6, v1

    invoke-direct {v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v1, v4

    .line 68
    move-object v4, v2

    const/4 v5, 0x2

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v4, v5, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 69
    move-object v4, v0

    const-string/jumbo v5, "UTF8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    move-object v0, v4

    .line 70
    new-instance v4, Ljava/lang/String;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 75
    .line 77
    move-object v4, v0

    move-object v0, v4

    :goto_0
    return-object v0

    .line 72
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 73
    const-string/jumbo v4, "KodularAES128"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    const-string/jumbo v7, "decrypt Exception : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 74
    const-string/jumbo v4, ""

    move-object v0, v4

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "%16s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    const/4 v7, 0x0

    const-string/jumbo v8, "%.16s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 38
    :try_start_0
    const-string/jumbo v4, "AES/CBC/PKCS5PADDING"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    move-object v2, v4

    .line 39
    move-object v4, v1

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object v1, v4

    .line 40
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    move-object v6, v1

    const-string/jumbo v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v3, v4

    .line 41
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    move-object v6, v1

    invoke-direct {v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v1, v4

    .line 42
    move-object v4, v2

    const/4 v5, 0x1

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v4, v5, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 43
    move-object v4, v2

    move-object v5, v0

    const-string/jumbo v6, "UTF8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 44
    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .line 49
    .line 51
    move-object v4, v0

    move-object v0, v4

    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 47
    const-string/jumbo v4, "KodularAES128"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    const-string/jumbo v7, "Encrypt Exception : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 48
    const-string/jumbo v4, ""

    move-object v0, v4

    goto :goto_0
.end method

.method public static generateKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 88
    :try_start_0
    const-string/jumbo v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    .line 89
    move-object v0, v2

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 90
    move-object v1, v0

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 93
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    .line 98
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 95
    const-string/jumbo v1, "KodularAES128"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "generateKey: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 98
    const-string/jumbo v1, ""

    move-object v0, v1

    goto :goto_0
.end method
