.class Lorg/jose4j/jwk/SelectorSupport;
.super Ljava/lang/Object;
.source "SelectorSupport.java"


# static fields
.field private static final DECRYPT_OPS:[Ljava/lang/String;

.field private static final VERIFY_OPS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lorg/jose4j/jwk/KeyOperations;->VERIFY:Ljava/lang/String;

    aput-object v3, v1, v2

    sput-object v0, Lorg/jose4j/jwk/SelectorSupport;->VERIFY_OPS:[Ljava/lang/String;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lorg/jose4j/jwk/KeyOperations;->DECRYPT:Ljava/lang/String;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lorg/jose4j/jwk/KeyOperations;->DERIVE_KEY:Ljava/lang/String;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lorg/jose4j/jwk/KeyOperations;->UNWRAP_KEY:Ljava/lang/String;

    aput-object v3, v1, v2

    sput-object v0, Lorg/jose4j/jwk/SelectorSupport;->DECRYPT_OPS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SelectorSupport;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static commonFilterForInbound(Lorg/jose4j/jwx/JsonWebStructure;)Lorg/jose4j/jwk/SimpleJwkFilter;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "jwx":Lorg/jose4j/jwx/JsonWebStructure;
    new-instance v6, Lorg/jose4j/jwk/SimpleJwkFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lorg/jose4j/jwk/SimpleJwkFilter;-><init>()V

    move-object v1, v6

    .line 51
    .local v1, "filter":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jwx/JsonWebStructure;->getKeyIdHeaderValue()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 52
    .local v2, "kid":Ljava/lang/String;
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 54
    move-object v6, v1

    move-object v7, v2

    sget-boolean v8, Lorg/jose4j/jwk/SimpleJwkFilter;->VALUE_REQUIRED:Z

    invoke-virtual {v6, v7, v8}, Lorg/jose4j/jwk/SimpleJwkFilter;->setKid(Ljava/lang/String;Z)V

    .line 57
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jwx/JsonWebStructure;->getX509CertSha1ThumbprintHeaderValue()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 58
    .local v3, "x5t":Ljava/lang/String;
    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jwx/JsonWebStructure;->getX509CertSha256ThumbprintHeaderValue()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 59
    .local v4, "x5tS256":Ljava/lang/String;
    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/jose4j/jwk/SimpleJwkFilter;->setAllowFallbackDeriveFromX5cForX5Thumbs(Z)V

    .line 60
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 62
    move-object v6, v1

    move-object v7, v3

    sget-boolean v8, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    invoke-virtual {v6, v7, v8}, Lorg/jose4j/jwk/SimpleJwkFilter;->setX5t(Ljava/lang/String;Z)V

    .line 64
    :cond_1
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 66
    move-object v6, v1

    move-object v7, v4

    sget-boolean v8, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    invoke-virtual {v6, v7, v8}, Lorg/jose4j/jwk/SimpleJwkFilter;->setX5tS256(Ljava/lang/String;Z)V

    .line 69
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jwx/JsonWebStructure;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jwa/Algorithm;

    move-result-object v6

    invoke-interface {v6}, Lorg/jose4j/jwa/Algorithm;->getKeyType()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 70
    .local v5, "keyType":Ljava/lang/String;
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Lorg/jose4j/jwk/SimpleJwkFilter;->setKty(Ljava/lang/String;)V

    .line 72
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "jwx":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method

.method public static filterForInboundEncrypted(Lorg/jose4j/jwe/JsonWebEncryption;)Lorg/jose4j/jwk/SimpleJwkFilter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "jwe":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v2, v0

    invoke-static {v2}, Lorg/jose4j/jwk/SelectorSupport;->commonFilterForInbound(Lorg/jose4j/jwx/JsonWebStructure;)Lorg/jose4j/jwk/SimpleJwkFilter;

    move-result-object v2

    move-object v1, v2

    .line 43
    .local v1, "filter":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v2, v1

    const-string/jumbo v3, "enc"

    sget-boolean v4, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwk/SimpleJwkFilter;->setUse(Ljava/lang/String;Z)V

    .line 44
    move-object v2, v1

    sget-object v3, Lorg/jose4j/jwk/SelectorSupport;->DECRYPT_OPS:[Ljava/lang/String;

    sget-boolean v4, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwk/SimpleJwkFilter;->setKeyOperations([Ljava/lang/String;Z)V

    .line 45
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "jwe":Lorg/jose4j/jwe/JsonWebEncryption;
    return-object v0
.end method

.method public static filterForInboundSigned(Lorg/jose4j/jws/JsonWebSignature;)Lorg/jose4j/jwk/SimpleJwkFilter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "jws":Lorg/jose4j/jws/JsonWebSignature;
    move-object v2, v0

    invoke-static {v2}, Lorg/jose4j/jwk/SelectorSupport;->commonFilterForInbound(Lorg/jose4j/jwx/JsonWebStructure;)Lorg/jose4j/jwk/SimpleJwkFilter;

    move-result-object v2

    move-object v1, v2

    .line 35
    .local v1, "filter":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v2, v1

    const-string/jumbo v3, "sig"

    sget-boolean v4, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwk/SimpleJwkFilter;->setUse(Ljava/lang/String;Z)V

    .line 36
    move-object v2, v1

    sget-object v3, Lorg/jose4j/jwk/SelectorSupport;->VERIFY_OPS:[Ljava/lang/String;

    sget-boolean v4, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwk/SimpleJwkFilter;->setKeyOperations([Ljava/lang/String;Z)V

    .line 37
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "jws":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method
