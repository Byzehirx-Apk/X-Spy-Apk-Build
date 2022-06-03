.class public Lcom/google/appinventor/components/runtime/util/crypt/KodularTripleDES;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    if-nez v4, :cond_0

    .line 72
    const-string/jumbo v4, ""

    move-object v0, v4

    .line 89
    :goto_0
    return-object v0

    .line 74
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    move-object v0, v4

    .line 76
    const-string/jumbo v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 77
    move-object v5, v1

    const-string/jumbo v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 78
    const/16 v5, 0x18

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    move-object v1, v4

    .line 80
    const/4 v4, 0x0

    move v2, v4

    const/16 v4, 0x10

    move v3, v4

    :goto_1
    move v4, v2

    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    .line 81
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v1

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    goto :goto_1

    .line 84
    :cond_1
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    const-string/jumbo v7, "DESede"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v2, v4

    .line 85
    const-string/jumbo v4, "DESede/ECB/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 86
    move-object v3, v5

    const/4 v5, 0x2

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 87
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    move-object v0, v4

    .line 89
    new-instance v4, Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v4, "md5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 39
    move-object v5, v1

    const-string/jumbo v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 40
    const/16 v5, 0x18

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    move-object v1, v4

    .line 42
    const/4 v4, 0x0

    move v2, v4

    const/16 v4, 0x10

    move v3, v4

    :goto_0
    move v4, v2

    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    .line 43
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v1

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    goto :goto_0

    .line 46
    :cond_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    const-string/jumbo v7, "DESede"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v2, v4

    .line 47
    const-string/jumbo v4, "DESede/ECB/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 48
    move-object v3, v5

    const/4 v5, 0x1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 50
    move-object v4, v0

    const-string/jumbo v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object v0, v4

    .line 51
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    move-object v0, v4

    .line 52
    new-instance v4, Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 54
    move-object v0, v4

    return-object v0
.end method
