.class public Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;
.super Ljava/lang/Object;
.source "X509VerificationKeyResolver.java"

# interfaces
.implements Lorg/jose4j/keys/resolvers/VerificationKeyResolver;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private tryAllOnNoThumbHeader:Z

.field private x5tMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private x5tS256Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;
    move-object v1, p1

    .local v1, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 50
    move-object v6, v0

    new-instance v7, Ljava/util/LinkedHashMap;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v6, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tMap:Ljava/util/Map;

    .line 51
    move-object v6, v0

    new-instance v7, Ljava/util/LinkedHashMap;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v6, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tS256Map:Ljava/util/Map;

    .line 53
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    move-object v3, v6

    .line 57
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    move-object v6, v3

    :try_start_0
    invoke-static {v6}, Lorg/jose4j/keys/X509Util;->x5t(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 58
    .local v4, "x5t":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tMap:Ljava/util/Map;

    move-object v7, v4

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 60
    move-object v6, v3

    invoke-static {v6}, Lorg/jose4j/keys/X509Util;->x5tS256(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 61
    .local v5, "x5tS256":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tS256Map:Ljava/util/Map;

    move-object v7, v5

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jose4j/lang/UncheckedJoseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 66
    .line 67
    .end local v4    # "x5t":Ljava/lang/String;
    .end local v5    # "x5tS256":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 63
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 65
    .local v4, "e":Lorg/jose4j/lang/UncheckedJoseException;
    sget-object v6, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->log:Lorg/slf4j/Logger;

    const-string/jumbo v7, "Unable to get certificate thumbprint."

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 68
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "e":Lorg/jose4j/lang/UncheckedJoseException;
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Ljava/security/cert/X509Certificate;)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;
    move-object v1, p1

    .local v1, "certificates":[Ljava/security/cert/X509Certificate;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;-><init>(Ljava/util/List;)V

    .line 73
    return-void
.end method

.method private attemptAll(Lorg/jose4j/jws/JsonWebSignature;)Ljava/security/Key;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/UnresolvableKeyException;
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;
    move-object v1, p1

    .local v1, "jws":Lorg/jose4j/jws/JsonWebSignature;
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    move-object v3, v6

    .line 129
    .local v3, "certificate":Ljava/security/cert/X509Certificate;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    move-object v4, v6

    .line 130
    .local v4, "publicKey":Ljava/security/PublicKey;
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/jose4j/jws/JsonWebSignature;->setKey(Ljava/security/Key;)V

    .line 134
    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Lorg/jose4j/jws/JsonWebSignature;->verifySignature()Z
    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 136
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;
    return-object v0

    .line 142
    .line 143
    .restart local v0    # "this":Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;
    :cond_0
    :goto_1
    goto :goto_0

    .line 139
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 141
    .local v5, "e":Lorg/jose4j/lang/JoseException;
    sget-object v6, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->log:Lorg/slf4j/Logger;

    const-string/jumbo v7, "Verify signature didn\'t work: {}"

    move-object v8, v5

    invoke-static {v8}, Lorg/jose4j/lang/ExceptionHelp;->toStringWithCauses(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 144
    .end local v3    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v4    # "publicKey":Ljava/security/PublicKey;
    .end local v5    # "e":Lorg/jose4j/lang/JoseException;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v6

    .line 145
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v6, v2

    const-string/jumbo v7, "Unable to verify the signature with any of the provided keys - SHA-1 thumbs of provided certificates: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 146
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 147
    move-object v6, v2

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 148
    new-instance v6, Lorg/jose4j/lang/UnresolvableKeyException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public resolveKey(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Ljava/security/Key;
    .locals 11
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/UnresolvableKeyException;
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;
    move-object v1, p1

    .local v1, "jws":Lorg/jose4j/jws/JsonWebSignature;
    move-object v2, p2

    .local v2, "nestingContext":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwx/JsonWebStructure;>;"
    move-object v7, v1

    invoke-virtual {v7}, Lorg/jose4j/jws/JsonWebSignature;->getX509CertSha1ThumbprintHeaderValue()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 84
    .local v3, "x5t":Ljava/lang/String;
    move-object v7, v1

    invoke-virtual {v7}, Lorg/jose4j/jws/JsonWebSignature;->getX509CertSha256ThumbprintHeaderValue()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 86
    .local v4, "x5tS256":Ljava/lang/String;
    move-object v7, v3

    if-nez v7, :cond_1

    move-object v7, v4

    if-nez v7, :cond_1

    .line 88
    move-object v7, v0

    iget-boolean v7, v7, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->tryAllOnNoThumbHeader:Z

    if-eqz v7, :cond_0

    .line 90
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->attemptAll(Lorg/jose4j/jws/JsonWebSignature;)Ljava/security/Key;

    move-result-object v7

    move-object v0, v7

    .line 122
    .end local v0    # "this":Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;
    :goto_0
    return-object v0

    .line 92
    .restart local v0    # "this":Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;
    :cond_0
    new-instance v7, Lorg/jose4j/lang/UnresolvableKeyException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "Neither the x5t header nor the x5t#S256 header are present in the JWS."

    invoke-direct {v8, v9}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 95
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tMap:Ljava/util/Map;

    move-object v8, v3

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    move-object v5, v7

    .line 96
    .local v5, "x509Certificate":Ljava/security/cert/X509Certificate;
    move-object v7, v5

    if-nez v7, :cond_2

    .line 98
    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tS256Map:Ljava/util/Map;

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    move-object v5, v7

    .line 101
    :cond_2
    move-object v7, v5

    if-nez v7, :cond_5

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v7

    .line 105
    .local v6, "sb":Ljava/lang/StringBuilder;
    move-object v7, v6

    const-string/jumbo v8, "The X.509 Certificate Thumbprint header(s) in the JWS do not identify any of the provided Certificates -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 106
    move-object v7, v3

    if-eqz v7, :cond_3

    .line 108
    move-object v7, v6

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x5t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 109
    move-object v7, v6

    const-string/jumbo v8, " vs. SHA-1 thumbs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 112
    :cond_3
    move-object v7, v4

    if-eqz v7, :cond_4

    .line 114
    move-object v7, v6

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x5t#S256"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 115
    move-object v7, v6

    const-string/jumbo v8, " vs. SHA-256 thumbs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tS256Map:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 118
    :cond_4
    move-object v7, v6

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 119
    new-instance v7, Lorg/jose4j/lang/UnresolvableKeyException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 122
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    move-object v7, v5

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0
.end method

.method public setTryAllOnNoThumbHeader(Z)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;
    move v1, p1

    .local v1, "tryAllOnNoThumbHeader":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->tryAllOnNoThumbHeader:Z

    .line 78
    return-void
.end method
