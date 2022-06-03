.class public Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[B

.field private static KMHFMhWvbLR6BcwROl86Ae27EVmhPXebyJSDK0soo0mrl1FGujwY9r4FzsZi1nU8:Ljava/lang/String;

.field private static QHi0MvIC4Vmh8dk3viq5FQeF7BHEkyFy3KL8SPsty0tDmu5PHcHm4vKqfsZonFkq:Ljava/lang/String;

.field private static QMAkvNZ7PS9svrCQagoyYbfcp0VhAnlVqmqxnYH8cmskKuYxqiwVnZvGO7Q279iL:I

.field private static abVqdjzWUf0qcV22ffoGY2baT1hdAXtF0mYatOIcUbB0YHGmBcTv8wTlRtGteOtJ:Ljava/lang/String;

.field private static xII67GZG6kyH0lnPetzrSf3qVoLN1hwzGNETaRx4syTWFg4cA6mAvJ4Fkw0XSWhv:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/high16 v0, 0x10000

    sput v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->QMAkvNZ7PS9svrCQagoyYbfcp0VhAnlVqmqxnYH8cmskKuYxqiwVnZvGO7Q279iL:I

    .line 27
    const/16 v0, 0x100

    sput v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->xII67GZG6kyH0lnPetzrSf3qVoLN1hwzGNETaRx4syTWFg4cA6mAvJ4Fkw0XSWhv:I

    .line 28
    const-string/jumbo v0, "AES"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->QHi0MvIC4Vmh8dk3viq5FQeF7BHEkyFy3KL8SPsty0tDmu5PHcHm4vKqfsZonFkq:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->abVqdjzWUf0qcV22ffoGY2baT1hdAXtF0mYatOIcUbB0YHGmBcTv8wTlRtGteOtJ:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "PBKDF2WithHmacSHA256"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->KMHFMhWvbLR6BcwROl86Ae27EVmhPXebyJSDK0soo0mrl1FGujwY9r4FzsZi1nU8:Ljava/lang/String;

    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/crypt/CryptoPref;->getSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 75
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    sget-object v7, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[B

    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v3, v5

    .line 77
    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->KMHFMhWvbLR6BcwROl86Ae27EVmhPXebyJSDK0soo0mrl1FGujwY9r4FzsZi1nU8:Ljava/lang/String;

    invoke-static {v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    move-object v4, v5

    .line 78
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    sget v9, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->QMAkvNZ7PS9svrCQagoyYbfcp0VhAnlVqmqxnYH8cmskKuYxqiwVnZvGO7Q279iL:I

    sget v10, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->xII67GZG6kyH0lnPetzrSf3qVoLN1hwzGNETaRx4syTWFg4cA6mAvJ4Fkw0XSWhv:I

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    move-object v1, v5

    .line 79
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    move-object v1, v5

    .line 80
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    invoke-interface {v7}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    sget-object v8, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->QHi0MvIC4Vmh8dk3viq5FQeF7BHEkyFy3KL8SPsty0tDmu5PHcHm4vKqfsZonFkq:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v1, v5

    .line 82
    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->abVqdjzWUf0qcV22ffoGY2baT1hdAXtF0mYatOIcUbB0YHGmBcTv8wTlRtGteOtJ:Ljava/lang/String;

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 83
    move-object v2, v6

    const/4 v6, 0x2

    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 85
    new-instance v5, Ljava/lang/String;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v2

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 91
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 87
    const-string/jumbo v5, "KodularAES256"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "Error while decrypting: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 91
    const-string/jumbo v5, ""

    move-object v0, v5

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/crypt/CryptoPref;->getSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 44
    move-object v5, v2

    :try_start_0
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    move-object v2, v5

    .line 46
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    sget-object v7, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[B

    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v3, v5

    .line 48
    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->KMHFMhWvbLR6BcwROl86Ae27EVmhPXebyJSDK0soo0mrl1FGujwY9r4FzsZi1nU8:Ljava/lang/String;

    invoke-static {v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    move-object v4, v5

    .line 49
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    move-object v8, v2

    sget v9, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->QMAkvNZ7PS9svrCQagoyYbfcp0VhAnlVqmqxnYH8cmskKuYxqiwVnZvGO7Q279iL:I

    sget v10, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->xII67GZG6kyH0lnPetzrSf3qVoLN1hwzGNETaRx4syTWFg4cA6mAvJ4Fkw0XSWhv:I

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    move-object v1, v5

    .line 50
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    move-object v1, v5

    .line 51
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    invoke-interface {v7}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    sget-object v8, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->QHi0MvIC4Vmh8dk3viq5FQeF7BHEkyFy3KL8SPsty0tDmu5PHcHm4vKqfsZonFkq:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v1, v5

    .line 53
    sget-object v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->abVqdjzWUf0qcV22ffoGY2baT1hdAXtF0mYatOIcUbB0YHGmBcTv8wTlRtGteOtJ:Ljava/lang/String;

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 54
    move-object v2, v6

    const/4 v6, 0x1

    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 55
    move-object v5, v2

    move-object v6, v0

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    .line 61
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 57
    const-string/jumbo v5, "KodularAES256"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "Error while encrypting: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 61
    const-string/jumbo v5, ""

    move-object v0, v5

    goto :goto_0
.end method

.method public static generateKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 103
    :try_start_0
    const-string/jumbo v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    .line 104
    move-object v0, v2

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 105
    move-object v1, v0

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 106
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 108
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    .line 113
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 110
    const-string/jumbo v1, "KodularAES256"

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

    .line 113
    const-string/jumbo v1, ""

    move-object v0, v1

    goto :goto_0
.end method
