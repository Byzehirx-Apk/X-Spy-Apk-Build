.class public Lorg/jose4j/jwe/InitializationVectorHelp;
.super Ljava/lang/Object;
.source "InitializationVectorHelp.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/InitializationVectorHelp;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static iv(I[BLjava/security/SecureRandom;)[B
    .locals 5

    .prologue
    .line 26
    move v0, p0

    .local v0, "byteLength":I
    move-object v1, p1

    .local v1, "ivOverride":[B
    move-object v2, p2

    .local v2, "secureRandom":Ljava/security/SecureRandom;
    move-object v3, v1

    if-nez v3, :cond_0

    move v3, v0

    move-object v4, v2

    invoke-static {v3, v4}, Lorg/jose4j/lang/ByteUtil;->randomBytes(ILjava/security/SecureRandom;)[B

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "byteLength":I
    return-object v0

    .restart local v0    # "byteLength":I
    :cond_0
    move-object v3, v1

    goto :goto_0
.end method
