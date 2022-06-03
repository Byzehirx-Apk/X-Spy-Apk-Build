.class public Lcom/microsoft/appcenter/utils/HashUtils;
.super Ljava/lang/Object;
.source "HashUtils.java"


# static fields
.field private static final HEXADECIMAL_OUTPUT:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/microsoft/appcenter/utils/HashUtils;->HEXADECIMAL_OUTPUT:[C

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/HashUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private static encodeHex([B)Ljava/lang/String;
    .locals 10
    .param p0    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "bytes":[B
    move-object v4, v0

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [C

    move-object v1, v4

    .line 65
    .local v1, "output":[C
    const/4 v4, 0x0

    move v2, v4

    .local v2, "j":I
    :goto_0
    move v4, v2

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 66
    move-object v4, v0

    move v5, v2

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    move v3, v4

    .line 67
    .local v3, "v":I
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    sget-object v6, Lcom/microsoft/appcenter/utils/HashUtils;->HEXADECIMAL_OUTPUT:[C

    move v7, v3

    const/4 v8, 0x4

    ushr-int/lit8 v7, v7, 0x4

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    .line 68
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lcom/microsoft/appcenter/utils/HashUtils;->HEXADECIMAL_OUTPUT:[C

    move v7, v3

    const/16 v8, 0xf

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v3    # "v":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    move-object v0, v4

    .end local v0    # "bytes":[B
    return-object v0
.end method

.method public static sha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "data":Ljava/lang/String;
    move-object v1, v0

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/HashUtils;->sha256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "data":Ljava/lang/String;
    return-object v0
.end method

.method static sha256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "data":Ljava/lang/String;
    move-object v1, p1

    .local v1, "charsetName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    move-object v2, v3

    .line 44
    .local v2, "digest":Ljava/security/MessageDigest;
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 45
    move-object v3, v2

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/appcenter/utils/HashUtils;->encodeHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v0, v3

    .end local v0    # "data":Ljava/lang/String;
    return-object v0

    .line 46
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .restart local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v3

    :goto_0
    move-object v2, v3

    .line 52
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 46
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0
.end method
