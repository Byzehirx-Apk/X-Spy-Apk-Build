.class public abstract Lorg/jose4j/jwx/JsonWebStructure;
.super Ljava/lang/Object;
.source "JsonWebStructure.java"


# static fields
.field private static final DEFAULT_PROVIDER_CONTEXT:Lorg/jose4j/jca/ProviderContext;


# instance fields
.field private algorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

.field protected base64url:Lorg/jose4j/base64url/Base64Url;

.field protected doKeyValidation:Z

.field protected headers:Lorg/jose4j/jwx/Headers;

.field private integrity:[B

.field private key:Ljava/security/Key;

.field private knownCriticalHeaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private providerCtx:Lorg/jose4j/jca/ProviderContext;

.field protected rawCompactSerialization:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lorg/jose4j/jca/ProviderContext;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/jose4j/jca/ProviderContext;-><init>()V

    sput-object v0, Lorg/jose4j/jwx/JsonWebStructure;->DEFAULT_PROVIDER_CONTEXT:Lorg/jose4j/jca/ProviderContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v1, v0

    new-instance v2, Lorg/jose4j/base64url/Base64Url;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    iput-object v2, v1, Lorg/jose4j/jwx/JsonWebStructure;->base64url:Lorg/jose4j/base64url/Base64Url;

    .line 50
    move-object v1, v0

    new-instance v2, Lorg/jose4j/jwx/Headers;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/jose4j/jwx/Headers;-><init>()V

    iput-object v2, v1, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    .line 56
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/jwx/JsonWebStructure;->doKeyValidation:Z

    .line 60
    move-object v1, v0

    sget-object v2, Lorg/jose4j/jwa/AlgorithmConstraints;->NO_CONSTRAINTS:Lorg/jose4j/jwa/AlgorithmConstraints;

    iput-object v2, v1, Lorg/jose4j/jwx/JsonWebStructure;->algorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 62
    move-object v1, v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lorg/jose4j/jwx/JsonWebStructure;->knownCriticalHeaders:Ljava/util/Set;

    .line 65
    move-object v1, v0

    sget-object v2, Lorg/jose4j/jwx/JsonWebStructure;->DEFAULT_PROVIDER_CONTEXT:Lorg/jose4j/jca/ProviderContext;

    iput-object v2, v1, Lorg/jose4j/jwx/JsonWebStructure;->providerCtx:Lorg/jose4j/jca/ProviderContext;

    return-void
.end method

.method public static fromCompactSerialization(Ljava/lang/String;)Lorg/jose4j/jwx/JsonWebStructure;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "cs":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v3}, Lorg/jose4j/jwx/CompactSerializer;->deserialize(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 80
    .local v2, "parts":[Ljava/lang/String;
    move-object v3, v2

    array-length v3, v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 82
    new-instance v3, Lorg/jose4j/jwe/JsonWebEncryption;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/jose4j/jwe/JsonWebEncryption;-><init>()V

    move-object v1, v3

    .line 96
    .local v1, "jsonWebObject":Lorg/jose4j/jwx/JsonWebStructure;
    :goto_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/jose4j/jwx/JsonWebStructure;->setCompactSerializationParts([Ljava/lang/String;)V

    .line 97
    move-object v3, v1

    move-object v4, v0

    iput-object v4, v3, Lorg/jose4j/jwx/JsonWebStructure;->rawCompactSerialization:Ljava/lang/String;

    .line 98
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "cs":Ljava/lang/String;
    return-object v0

    .line 84
    .end local v1    # "jsonWebObject":Lorg/jose4j/jwx/JsonWebStructure;
    .restart local v0    # "cs":Ljava/lang/String;
    :cond_0
    move-object v3, v2

    array-length v3, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 86
    new-instance v3, Lorg/jose4j/jws/JsonWebSignature;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/jose4j/jws/JsonWebSignature;-><init>()V

    move-object v1, v3

    .restart local v1    # "jsonWebObject":Lorg/jose4j/jwx/JsonWebStructure;
    goto :goto_0

    .line 90
    .end local v1    # "jsonWebObject":Lorg/jose4j/jwx/JsonWebStructure;
    :cond_1
    new-instance v3, Lorg/jose4j/lang/JoseException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid JOSE Compact Serialization. Expecting either 3 or 5 parts for JWS or JWE respectively but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method protected checkCrit()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    const-string/jumbo v6, "crit"

    invoke-virtual {v5, v6}, Lorg/jose4j/jwx/Headers;->getObjectHeaderValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 360
    .local v1, "criticalHeaderObjectValue":Ljava/lang/Object;
    move-object v5, v1

    if-eqz v5, :cond_3

    .line 364
    move-object v5, v1

    instance-of v5, v5, Ljava/util/List;

    if-eqz v5, :cond_0

    .line 366
    move-object v5, v1

    check-cast v5, Ljava/util/List;

    move-object v2, v5

    .line 377
    .local v2, "criticalHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 379
    .local v4, "criticalHeader":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/jwx/JsonWebStructure;->knownCriticalHeaders:Ljava/util/Set;

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lorg/jose4j/jwx/JsonWebStructure;->isSupportedCriticalHeader(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 381
    new-instance v5, Lorg/jose4j/lang/JoseException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unrecognized header \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' marked as critical."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 368
    .end local v2    # "criticalHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "criticalHeader":Ljava/lang/String;
    :cond_0
    move-object v5, v1

    instance-of v5, v5, [Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 370
    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v2, v5

    .restart local v2    # "criticalHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 374
    .end local v2    # "criticalHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v5, Lorg/jose4j/lang/JoseException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "crit header value not an array ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 383
    .restart local v2    # "criticalHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "criticalHeader":Ljava/lang/String;
    :cond_2
    goto/16 :goto_1

    .line 385
    .end local v2    # "criticalHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "criticalHeader":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected checkNotEmptyPart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "encodedPart":Ljava/lang/String;
    move-object v2, p2

    .local v2, "partName":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 141
    :cond_0
    new-instance v3, Lorg/jose4j/lang/JoseException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " cannot be empty."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    :cond_1
    return-void
.end method

.method public abstract getAlgorithm()Lorg/jose4j/jwa/Algorithm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation
.end method

.method protected getAlgorithmConstraints()Lorg/jose4j/jwa/AlgorithmConstraints;
    .locals 2

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwx/JsonWebStructure;->algorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method

.method public getAlgorithmHeaderValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, v0

    const-string/jumbo v2, "alg"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwx/JsonWebStructure;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method

.method public abstract getAlgorithmNoConstraintCheck()Lorg/jose4j/jwa/Algorithm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation
.end method

.method public getCertificateChainHeaderValue()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    const-string/jumbo v8, "x5c"

    invoke-virtual {v7, v8}, Lorg/jose4j/jwx/Headers;->getObjectHeaderValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    .line 224
    .local v1, "x5c":Ljava/lang/Object;
    move-object v7, v1

    instance-of v7, v7, Ljava/util/List;

    if-eqz v7, :cond_1

    .line 226
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    move-object v2, v7

    .line 227
    .local v2, "x5cList":Ljava/util/List;
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v7

    .line 228
    .local v3, "certificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v7, Lorg/jose4j/keys/X509Util;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lorg/jose4j/keys/X509Util;-><init>()V

    move-object v4, v7

    .line 229
    .local v4, "x509Util":Lorg/jose4j/keys/X509Util;
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 231
    .local v6, "certificate":Ljava/lang/Object;
    move-object v7, v3

    move-object v8, v4

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/jose4j/keys/X509Util;->fromBase64Der(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 232
    goto :goto_0

    .line 234
    .end local v6    # "certificate":Ljava/lang/Object;
    :cond_0
    move-object v7, v3

    move-object v0, v7

    .line 237
    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    .end local v2    # "x5cList":Ljava/util/List;
    .end local v3    # "certificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v4    # "x509Util":Lorg/jose4j/keys/X509Util;
    .end local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    :cond_1
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_1
.end method

.method public abstract getCompactSerialization()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation
.end method

.method public getContentTypeHeaderValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, v0

    const-string/jumbo v2, "cty"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwx/JsonWebStructure;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method

.method protected getEncodedHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    invoke-virtual {v1}, Lorg/jose4j/jwx/Headers;->getEncodedHeader()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/jwx/JsonWebStructure;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method

.method public getHeaders()Lorg/jose4j/jwx/Headers;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method

.method protected getIntegrity()[B
    .locals 2

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwx/JsonWebStructure;->integrity:[B

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method

.method public getJwkHeader()Lorg/jose4j/jwk/PublicJsonWebKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    const-string/jumbo v2, "jwk"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/jose4j/jwx/Headers;->getPublicJwkHeaderValue(Ljava/lang/String;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method

.method public getKey()Ljava/security/Key;
    .locals 2

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwx/JsonWebStructure;->key:Ljava/security/Key;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method

.method public getKeyIdHeaderValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, v0

    const-string/jumbo v2, "kid"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwx/JsonWebStructure;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method

.method public getLeafCertificateHeaderValue()Ljava/security/cert/X509Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/jose4j/jwx/JsonWebStructure;->getCertificateChainHeaderValue()Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    .line 217
    .local v1, "certificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    :cond_1
    move-object v2, v1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    goto :goto_0
.end method

.method public getObjectHeader(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/jwx/Headers;->getObjectHeaderValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method

.method public abstract getPayload()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation
.end method

.method protected getProviderCtx()Lorg/jose4j/jca/ProviderContext;
    .locals 2

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwx/JsonWebStructure;->providerCtx:Lorg/jose4j/jca/ProviderContext;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method

.method public getX509CertSha1ThumbprintHeaderValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, v0

    const-string/jumbo v2, "x5t"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwx/JsonWebStructure;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method

.method public getX509CertSha256ThumbprintHeaderValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, v0

    const-string/jumbo v2, "x5t#S256"

    invoke-virtual {v1, v2}, Lorg/jose4j/jwx/JsonWebStructure;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method

.method public isDoKeyValidation()Z
    .locals 2

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, v0

    iget-boolean v1, v1, Lorg/jose4j/jwx/JsonWebStructure;->doKeyValidation:Z

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return v0
.end method

.method protected isSupportedCriticalHeader(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "headerName":Ljava/lang/String;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return v0
.end method

.method protected onNewKey()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public setAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V
    .locals 4

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "algorithmConstraints":Lorg/jose4j/jwa/AlgorithmConstraints;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwx/JsonWebStructure;->algorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 333
    return-void
.end method

.method public setAlgorithmHeaderValue(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "alg":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "alg"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwx/JsonWebStructure;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public varargs setCertificateChainHeaderValue([Ljava/security/cert/X509Certificate;)V
    .locals 12

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "chain":[Ljava/security/cert/X509Certificate;
    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    .line 243
    .local v2, "chainStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Lorg/jose4j/keys/X509Util;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/jose4j/keys/X509Util;-><init>()V

    move-object v3, v8

    .line 244
    .local v3, "x509Util":Lorg/jose4j/keys/X509Util;
    move-object v8, v1

    move-object v4, v8

    .local v4, "arr$":[Ljava/security/cert/X509Certificate;
    move-object v8, v4

    array-length v8, v8

    move v5, v8

    .local v5, "len$":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i$":I
    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_0

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 246
    .local v7, "certificate":Ljava/security/cert/X509Certificate;
    move-object v8, v2

    move-object v9, v3

    move-object v10, v7

    invoke-virtual {v9, v10}, Lorg/jose4j/keys/X509Util;->toBase64(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 244
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 249
    .end local v7    # "certificate":Ljava/security/cert/X509Certificate;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    const-string/jumbo v9, "x5c"

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lorg/jose4j/jwx/Headers;->setObjectHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method public setCompactSerialization(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "compactSerialization":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v3}, Lorg/jose4j/jwx/CompactSerializer;->deserialize(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 104
    .local v2, "parts":[Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/jose4j/jwx/JsonWebStructure;->setCompactSerializationParts([Ljava/lang/String;)V

    .line 105
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/jose4j/jwx/JsonWebStructure;->rawCompactSerialization:Ljava/lang/String;

    .line 106
    return-void
.end method

.method protected abstract setCompactSerializationParts([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation
.end method

.method public setContentTypeHeaderValue(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "cty":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "cty"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwx/JsonWebStructure;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public varargs setCriticalHeaderNames([Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "headerNames":[Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    const-string/jumbo v3, "crit"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwx/Headers;->setObjectHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.method public setDoKeyValidation(Z)V
    .locals 4

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move v1, p1

    .local v1, "doKeyValidation":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/jwx/JsonWebStructure;->doKeyValidation:Z

    .line 323
    return-void
.end method

.method protected setEncodedHeader(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "encodedHeader":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "Encoded Header"

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwx/JsonWebStructure;->checkNotEmptyPart(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/jwx/Headers;->setEncodedHeader(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/jose4j/jwx/Headers;->setObjectHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/jose4j/jwx/Headers;->setStringHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method protected setIntegrity([B)V
    .locals 4

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "integrity":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwx/JsonWebStructure;->integrity:[B

    .line 313
    return-void
.end method

.method public setJwkHeader(Lorg/jose4j/jwk/PublicJsonWebKey;)V
    .locals 5

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "jwk":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    const-string/jumbo v3, "jwk"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwx/Headers;->setJwkHeaderValue(Ljava/lang/String;Lorg/jose4j/jwk/JsonWebKey;)V

    .line 211
    return-void
.end method

.method public setKey(Ljava/security/Key;)V
    .locals 5

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v3, v1

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwx/JsonWebStructure;->key:Ljava/security/Key;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 292
    .local v2, "same":Z
    move v3, v2

    if-nez v3, :cond_0

    .line 294
    move-object v3, v0

    invoke-virtual {v3}, Lorg/jose4j/jwx/JsonWebStructure;->onNewKey()V

    .line 297
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/jose4j/jwx/JsonWebStructure;->key:Ljava/security/Key;

    .line 298
    return-void

    .line 291
    .end local v2    # "same":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwx/JsonWebStructure;->key:Ljava/security/Key;

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwx/JsonWebStructure;->key:Ljava/security/Key;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setKeyIdHeaderValue(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "kid":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "kid"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwx/JsonWebStructure;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public varargs setKnownCriticalHeaders([Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "knownCriticalHeaders":[Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lorg/jose4j/jwx/JsonWebStructure;->knownCriticalHeaders:Ljava/util/Set;

    .line 355
    return-void
.end method

.method public abstract setPayload(Ljava/lang/String;)V
.end method

.method public setProviderContext(Lorg/jose4j/jca/ProviderContext;)V
    .locals 4

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "providerCtx":Lorg/jose4j/jca/ProviderContext;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwx/JsonWebStructure;->providerCtx:Lorg/jose4j/jca/ProviderContext;

    .line 409
    return-void
.end method

.method public setX509CertSha1ThumbprintHeaderValue(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "x5t":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "x5t"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwx/JsonWebStructure;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public setX509CertSha1ThumbprintHeaderValue(Ljava/security/cert/X509Certificate;)V
    .locals 5

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "certificate":Ljava/security/cert/X509Certificate;
    move-object v3, v1

    invoke-static {v3}, Lorg/jose4j/keys/X509Util;->x5t(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 265
    .local v2, "x5t":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/jose4j/jwx/JsonWebStructure;->setX509CertSha1ThumbprintHeaderValue(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public setX509CertSha256ThumbprintHeaderValue(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "x5tS256":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "x5t#S256"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/jwx/JsonWebStructure;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public setX509CertSha256ThumbprintHeaderValue(Ljava/security/cert/X509Certificate;)V
    .locals 5

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    move-object v1, p1

    .local v1, "certificate":Ljava/security/cert/X509Certificate;
    move-object v3, v1

    invoke-static {v3}, Lorg/jose4j/keys/X509Util;->x5tS256(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 281
    .local v2, "x5tS256":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/jose4j/jwx/JsonWebStructure;->setX509CertSha256ThumbprintHeaderValue(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/JsonWebStructure;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 415
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/jose4j/jwx/JsonWebStructure;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 416
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwx/JsonWebStructure;->rawCompactSerialization:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 418
    move-object v2, v1

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwx/JsonWebStructure;->rawCompactSerialization:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 420
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwx/JsonWebStructure;
    return-object v0
.end method
