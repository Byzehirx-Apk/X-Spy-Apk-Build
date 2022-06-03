.class public Lorg/jose4j/jwk/OctJwkGenerator;
.super Ljava/lang/Object;
.source "OctJwkGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/OctJwkGenerator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateJwk(I)Lorg/jose4j/jwk/OctetSequenceJsonWebKey;
    .locals 3

    .prologue
    .line 30
    move v0, p0

    .local v0, "keyLengthInBits":I
    move v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/jose4j/jwk/OctJwkGenerator;->generateJwk(ILjava/security/SecureRandom;)Lorg/jose4j/jwk/OctetSequenceJsonWebKey;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "keyLengthInBits":I
    return-object v0
.end method

.method public static generateJwk(ILjava/security/SecureRandom;)Lorg/jose4j/jwk/OctetSequenceJsonWebKey;
    .locals 9

    .prologue
    .line 35
    move v0, p0

    .local v0, "keyLengthInBits":I
    move-object v1, p1

    .local v1, "secureRandom":Ljava/security/SecureRandom;
    move v3, v0

    invoke-static {v3}, Lorg/jose4j/lang/ByteUtil;->byteLength(I)I

    move-result v3

    move-object v4, v1

    invoke-static {v3, v4}, Lorg/jose4j/lang/ByteUtil;->randomBytes(ILjava/security/SecureRandom;)[B

    move-result-object v3

    move-object v2, v3

    .line 36
    .local v2, "bytes":[B
    new-instance v3, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Lorg/jose4j/keys/AesKey;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lorg/jose4j/keys/AesKey;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;-><init>(Ljava/security/Key;)V

    move-object v0, v3

    .end local v0    # "keyLengthInBits":I
    return-object v0
.end method
