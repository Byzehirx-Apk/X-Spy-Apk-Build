.class Lorg/jose4j/jwt/consumer/SimpleKeyResolver;
.super Ljava/lang/Object;
.source "SimpleKeyResolver.java"

# interfaces
.implements Lorg/jose4j/keys/resolvers/VerificationKeyResolver;
.implements Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;


# instance fields
.field private key:Ljava/security/Key;


# direct methods
.method constructor <init>(Ljava/security/Key;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/SimpleKeyResolver;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;->key:Ljava/security/Key;

    .line 38
    return-void
.end method


# virtual methods
.method public resolveKey(Lorg/jose4j/jwe/JsonWebEncryption;Ljava/util/List;)Ljava/security/Key;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jwe/JsonWebEncryption;",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;)",
            "Ljava/security/Key;"
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/SimpleKeyResolver;
    move-object v1, p1

    .local v1, "jwe":Lorg/jose4j/jwe/JsonWebEncryption;
    move-object v2, p2

    .local v2, "nestingContext":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwx/JsonWebStructure;>;"
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;->key:Ljava/security/Key;

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/SimpleKeyResolver;
    return-object v0
.end method

.method public resolveKey(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Ljava/security/Key;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jws/JsonWebSignature;",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;)",
            "Ljava/security/Key;"
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/SimpleKeyResolver;
    move-object v1, p1

    .local v1, "jws":Lorg/jose4j/jws/JsonWebSignature;
    move-object v2, p2

    .local v2, "nestingContext":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwx/JsonWebStructure;>;"
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;->key:Ljava/security/Key;

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/SimpleKeyResolver;
    return-object v0
.end method
