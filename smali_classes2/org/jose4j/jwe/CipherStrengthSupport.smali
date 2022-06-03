.class public Lorg/jose4j/jwe/CipherStrengthSupport;
.super Ljava/lang/Object;
.source "CipherStrengthSupport.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/jose4j/jwe/CipherStrengthSupport;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwe/CipherStrengthSupport;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/CipherStrengthSupport;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAvailable(Ljava/lang/String;I)Z
    .locals 9

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "algorithm":Ljava/lang/String;
    move v1, p1

    .local v1, "keyByteLength":I
    move v5, v1

    invoke-static {v5}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result v5

    move v3, v5

    .line 39
    .local v3, "bitKeyLength":I
    move-object v5, v0

    :try_start_0
    invoke-static {v5}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 40
    .local v4, "maxAllowedKeyLength":I
    move v5, v3

    move v6, v4

    if-gt v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 42
    .local v2, "isAvailable":Z
    move v5, v2

    if-nez v5, :cond_0

    .line 44
    sget-object v5, Lorg/jose4j/jwe/CipherStrengthSupport;->log:Lorg/slf4j/Logger;

    const-string/jumbo v6, "max allowed key length for {} is {}"

    move-object v7, v0

    move v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .end local v4    # "maxAllowedKeyLength":I
    :cond_0
    :goto_1
    move v5, v2

    move v0, v5

    .end local v0    # "algorithm":Ljava/lang/String;
    return v0

    .line 40
    .end local v2    # "isAvailable":Z
    .restart local v0    # "algorithm":Ljava/lang/String;
    .restart local v4    # "maxAllowedKeyLength":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 47
    .end local v4    # "maxAllowedKeyLength":I
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 49
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v5, Lorg/jose4j/jwe/CipherStrengthSupport;->log:Lorg/slf4j/Logger;

    const-string/jumbo v6, "Unknown/unsupported algorithm, {} {}"

    move-object v7, v0

    move-object v8, v4

    invoke-interface {v5, v6, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    const/4 v5, 0x0

    move v2, v5

    .restart local v2    # "isAvailable":Z
    goto :goto_1
.end method
