.class public Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$CannotPerformOperationException;,
        Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;
    }
.end annotation


# static fields
.field public static final HASH_ALGORITHM_INDEX:I = 0x0

.field public static final HASH_SECTIONS:I = 0x5

.field public static final HASH_SIZE_INDEX:I = 0x2

.field public static final ITERATION_INDEX:I = 0x1

.field public static final PBKDF2_ALGORITHM:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field public static final PBKDF2_INDEX:I = 0x4

.field public static final SALT_INDEX:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHash(Ljava/lang/String;III)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$CannotPerformOperationException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2;->createHash([CIII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public static createHash([CIII)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$CannotPerformOperationException;
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    new-instance v5, Ljava/security/SecureRandom;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    move-object v4, v5

    .line 62
    move v5, v2

    new-array v5, v5, [B

    move-object v2, v5

    .line 63
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 66
    move-object v5, v0

    move-object v6, v2

    move v7, v1

    move v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([C[BII)[B

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 67
    move-object v0, v6

    array-length v5, v5

    move v3, v5

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "sha1:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    .line 1190
    invoke-static {v6}, Ljavax/xml/bind/DatatypeConverter;->printBase64Binary([B)Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    .line 2190
    invoke-static {v6}, Ljavax/xml/bind/DatatypeConverter;->printBase64Binary([B)Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 77
    move-object v0, v5

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([B[B)Z
    .locals 8

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    array-length v4, v4

    move-object v5, v1

    array-length v5, v5

    xor-int/2addr v4, v5

    move v2, v4

    .line 161
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 162
    move v4, v2

    move-object v5, v0

    move v6, v3

    aget-byte v5, v5, v6

    move-object v6, v1

    move v7, v3

    aget-byte v6, v6, v7

    xor-int/2addr v5, v6

    or-int/2addr v4, v5

    move v2, v4

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    :cond_0
    move v4, v2

    if-nez v4, :cond_1

    const/4 v4, 0x1

    move v0, v4

    :goto_1
    return v0

    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([C[BII)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$CannotPerformOperationException;
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :try_start_0
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    const/4 v10, 0x3

    shl-int/lit8 v9, v9, 0x3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    move-object v0, v4

    .line 171
    const-string/jumbo v4, "PBKDF2WithHmacSHA1"

    invoke-static {v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 172
    move-object v5, v0

    invoke-virtual {v4, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    move-object v0, v4

    .line 178
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 174
    const-string/jumbo v4, "MakeroidCrypt"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 175
    const/4 v4, 0x0

    new-array v4, v4, [B

    move-object v0, v4

    goto :goto_0

    .line 176
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 177
    const-string/jumbo v4, "MakeroidCrypt"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 178
    const/4 v4, 0x0

    new-array v4, v4, [B

    move-object v0, v4

    goto :goto_0
.end method

.method public static verifyPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$CannotPerformOperationException;,
            Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2;->verifyPassword([CLjava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static verifyPassword([CLjava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$CannotPerformOperationException;,
            Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 91
    move-object v1, v6

    array-length v5, v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    .line 92
    new-instance v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Fields are missing from the password hash."

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 98
    :cond_0
    move-object v5, v1

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string/jumbo v6, "sha1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 99
    new-instance v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$CannotPerformOperationException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Unsupported hash type."

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$CannotPerformOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 106
    :cond_1
    move-object v5, v1

    const/4 v6, 0x1

    :try_start_0
    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v2, v5

    .line 110
    .line 112
    move v5, v2

    if-gtz v5, :cond_2

    .line 113
    new-instance v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Invalid number of iterations. Must be >= 1."

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 107
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 108
    const-string/jumbo v5, "MakeroidCrypt"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 109
    const/4 v5, 0x0

    move v0, v5

    .line 155
    :goto_0
    return v0

    .line 121
    :cond_2
    move-object v5, v1

    const/4 v6, 0x3

    :try_start_1
    aget-object v5, v5, v6

    .line 3185
    invoke-static {v5}, Ljavax/xml/bind/DatatypeConverter;->parseBase64Binary(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 121
    move-object v3, v5

    .line 125
    .line 129
    move-object v5, v1

    const/4 v6, 0x4

    :try_start_2
    aget-object v5, v5, v6

    .line 4185
    invoke-static {v5}, Ljavax/xml/bind/DatatypeConverter;->parseBase64Binary(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 129
    move-object v4, v5

    .line 133
    .line 138
    move-object v5, v1

    const/4 v6, 0x2

    :try_start_3
    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v5

    move v1, v5

    .line 142
    .line 144
    move v5, v1

    move-object v6, v4

    array-length v6, v6

    if-eq v5, v6, :cond_3

    .line 145
    new-instance v5, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Hash length doesn\'t match stored hash length."

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2$InvalidHashException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 122
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 123
    const-string/jumbo v5, "MakeroidCrypt"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 124
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 130
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 131
    const-string/jumbo v5, "MakeroidCrypt"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 132
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 139
    :catch_3
    move-exception v5

    move-object v0, v5

    .line 140
    const-string/jumbo v5, "MakeroidCrypt"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 141
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 152
    :cond_3
    move-object v5, v0

    move-object v6, v3

    move v7, v2

    move-object v8, v4

    array-length v8, v8

    invoke-static {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([C[BII)[B

    move-result-object v5

    move-object v0, v5

    .line 155
    move-object v5, v4

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([B[B)Z

    move-result v5

    move v0, v5

    goto/16 :goto_0
.end method
