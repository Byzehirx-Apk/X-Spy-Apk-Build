.class public Lorg/jose4j/jws/PlaintextNoneAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "PlaintextNoneAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jws/JsonWebSignatureAlgorithm;


# static fields
.field private static final CANNOT_HAVE_KEY_MESSAGE:Ljava/lang/String; = "JWS Plaintext (alg=none) must not use a key."


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/PlaintextNoneAlgorithm;
    move-object v1, v0

    invoke-direct {v1}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 38
    move-object v1, v0

    const-string/jumbo v2, "none"

    invoke-virtual {v1, v2}, Lorg/jose4j/jws/PlaintextNoneAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 39
    move-object v1, v0

    sget-object v2, Lorg/jose4j/keys/KeyPersuasion;->NONE:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {v1, v2}, Lorg/jose4j/jws/PlaintextNoneAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 40
    return-void
.end method

.method private validateKey(Ljava/security/Key;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/PlaintextNoneAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 74
    new-instance v2, Lorg/jose4j/lang/InvalidKeyException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "JWS Plaintext (alg=none) must not use a key."

    invoke-direct {v3, v4}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/PlaintextNoneAlgorithm;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/PlaintextNoneAlgorithm;
    return v0
.end method

.method public sign(Ljava/security/Key;[BLorg/jose4j/jca/ProviderContext;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/PlaintextNoneAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, p2

    .local v2, "securedInputBytes":[B
    move-object v3, p3

    .local v3, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/jose4j/jws/PlaintextNoneAlgorithm;->validateKey(Ljava/security/Key;)V

    .line 55
    sget-object v4, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/jws/PlaintextNoneAlgorithm;
    return-object v0
.end method

.method public validateSigningKey(Ljava/security/Key;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/PlaintextNoneAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/jose4j/jws/PlaintextNoneAlgorithm;->validateKey(Ljava/security/Key;)V

    .line 62
    return-void
.end method

.method public validateVerificationKey(Ljava/security/Key;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/PlaintextNoneAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/jose4j/jws/PlaintextNoneAlgorithm;->validateKey(Ljava/security/Key;)V

    .line 68
    return-void
.end method

.method public verifySignature([BLjava/security/Key;[BLorg/jose4j/jca/ProviderContext;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/PlaintextNoneAlgorithm;
    move-object v1, p1

    .local v1, "signatureBytes":[B
    move-object v2, p2

    .local v2, "key":Ljava/security/Key;
    move-object v3, p3

    .local v3, "securedInputBytes":[B
    move-object v4, p4

    .local v4, "providerContext":Lorg/jose4j/jca/ProviderContext;
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lorg/jose4j/jws/PlaintextNoneAlgorithm;->validateKey(Ljava/security/Key;)V

    .line 47
    move-object v5, v1

    array-length v5, v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Lorg/jose4j/jws/PlaintextNoneAlgorithm;
    return v0

    .restart local v0    # "this":Lorg/jose4j/jws/PlaintextNoneAlgorithm;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
