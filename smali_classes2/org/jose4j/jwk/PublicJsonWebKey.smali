.class public abstract Lorg/jose4j/jwk/PublicJsonWebKey;
.super Lorg/jose4j/jwk/JsonWebKey;
.source "PublicJsonWebKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwk/PublicJsonWebKey$Factory;
    }
.end annotation


# static fields
.field public static final X509_CERTIFICATE_CHAIN_PARAMETER:Ljava/lang/String; = "x5c"

.field public static final X509_SHA256_THUMBPRINT_PARAMETER:Ljava/lang/String; = "x5t#S256"

.field public static final X509_THUMBPRINT_PARAMETER:Ljava/lang/String; = "x5t"

.field public static final X509_URL_PARAMETER:Ljava/lang/String; = "x5u"


# instance fields
.field private certificateChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field protected jcaProvider:Ljava/lang/String;

.field protected privateKey:Ljava/security/PrivateKey;

.field protected writeOutPrivateKeyToJson:Z

.field private x5t:Ljava/lang/String;

.field private x5tS256:Ljava/lang/String;

.field private x5u:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/security/PublicKey;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, p1

    .local v1, "publicKey":Ljava/security/PublicKey;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/jose4j/jwk/JsonWebKey;-><init>(Ljava/security/Key;)V

    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/jose4j/jwk/PublicJsonWebKey;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v2, p2

    .local v2, "jcaProvider":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lorg/jose4j/jwk/JsonWebKey;-><init>(Ljava/util/Map;)V

    .line 68
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lorg/jose4j/jwk/PublicJsonWebKey;->jcaProvider:Ljava/lang/String;

    .line 70
    move-object v8, v1

    const-string/jumbo v9, "x5c"

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 72
    move-object v8, v1

    const-string/jumbo v9, "x5c"

    invoke-static {v8, v9}, Lorg/jose4j/lang/JsonHelp;->getStringArray(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    move-object v3, v8

    .line 73
    .local v3, "x5cStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v8, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    .line 75
    move-object v8, v2

    invoke-static {v8}, Lorg/jose4j/keys/X509Util;->getX509Util(Ljava/lang/String;)Lorg/jose4j/keys/X509Util;

    move-result-object v8

    move-object v4, v8

    .line 77
    .local v4, "x509Util":Lorg/jose4j/keys/X509Util;
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    .line 79
    .local v6, "b64EncodedDer":Ljava/lang/String;
    move-object v8, v4

    move-object v9, v6

    invoke-virtual {v8, v9}, Lorg/jose4j/keys/X509Util;->fromBase64Der(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v8

    move-object v7, v8

    .line 80
    .local v7, "x509Certificate":Ljava/security/cert/X509Certificate;
    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 81
    goto :goto_0

    .line 84
    .end local v3    # "x5cStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "x509Util":Lorg/jose4j/keys/X509Util;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "b64EncodedDer":Ljava/lang/String;
    .end local v7    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_0
    move-object v8, v0

    move-object v9, v1

    const-string/jumbo v10, "x5t"

    invoke-static {v9, v10}, Lorg/jose4j/jwk/PublicJsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/jose4j/jwk/PublicJsonWebKey;->x5t:Ljava/lang/String;

    .line 85
    move-object v8, v0

    move-object v9, v1

    const-string/jumbo v10, "x5t#S256"

    invoke-static {v9, v10}, Lorg/jose4j/jwk/PublicJsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/jose4j/jwk/PublicJsonWebKey;->x5tS256:Ljava/lang/String;

    .line 87
    move-object v8, v0

    move-object v9, v1

    const-string/jumbo v10, "x5u"

    invoke-static {v9, v10}, Lorg/jose4j/jwk/PublicJsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/jose4j/jwk/PublicJsonWebKey;->x5u:Ljava/lang/String;

    .line 89
    move-object v8, v0

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const-string/jumbo v12, "x5c"

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    const-string/jumbo v12, "x5t#S256"

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    const-string/jumbo v12, "x5t"

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x3

    const-string/jumbo v12, "x5u"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9}, Lorg/jose4j/jwk/PublicJsonWebKey;->removeFromOtherParams([Ljava/lang/String;)V

    .line 93
    return-void
.end method


# virtual methods
.method checkForBareKeyCertMismatch()V
    .locals 8

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/jose4j/jwk/PublicJsonWebKey;->getLeafCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v3

    move-object v1, v3

    .line 229
    .local v1, "leafCertificate":Ljava/security/cert/X509Certificate;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lorg/jose4j/jwk/PublicJsonWebKey;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 230
    .local v2, "certAndBareKeyMismatch":Z
    move v3, v2

    if-eqz v3, :cond_1

    .line 232
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The key in the first certificate MUST match the bare public key represented by other members of the JWK. Public key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jwk/PublicJsonWebKey;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " cert = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    .end local v2    # "certAndBareKeyMismatch":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 235
    .restart local v2    # "certAndBareKeyMismatch":Z
    :cond_1
    return-void
.end method

.method protected abstract fillPrivateTypeSpecificParams(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract fillPublicTypeSpecificParams(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected fillTypeSpecificParams(Ljava/util/Map;Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v2, p2

    .local v2, "outputLevel":Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lorg/jose4j/jwk/PublicJsonWebKey;->fillPublicTypeSpecificParams(Ljava/util/Map;)V

    .line 102
    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    if-eqz v8, :cond_1

    .line 104
    new-instance v8, Lorg/jose4j/keys/X509Util;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lorg/jose4j/keys/X509Util;-><init>()V

    move-object v3, v8

    .line 105
    .local v3, "x509Util":Lorg/jose4j/keys/X509Util;
    new-instance v8, Ljava/util/ArrayList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v8

    .line 107
    .local v4, "x5cStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    move-object v6, v8

    .line 109
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    move-object v8, v3

    move-object v9, v6

    invoke-virtual {v8, v9}, Lorg/jose4j/keys/X509Util;->toBase64(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 110
    .local v7, "b64EncodedDer":Ljava/lang/String;
    move-object v8, v4

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 111
    goto :goto_0

    .line 113
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "b64EncodedDer":Ljava/lang/String;
    :cond_0
    move-object v8, v1

    const-string/jumbo v9, "x5c"

    move-object v10, v4

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 116
    .end local v3    # "x509Util":Lorg/jose4j/keys/X509Util;
    .end local v4    # "x5cStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object v8, v0

    const-string/jumbo v9, "x5t"

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/jwk/PublicJsonWebKey;->x5t:Ljava/lang/String;

    move-object v11, v1

    invoke-virtual {v8, v9, v10, v11}, Lorg/jose4j/jwk/PublicJsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 117
    move-object v8, v0

    const-string/jumbo v9, "x5t#S256"

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/jwk/PublicJsonWebKey;->x5tS256:Ljava/lang/String;

    move-object v11, v1

    invoke-virtual {v8, v9, v10, v11}, Lorg/jose4j/jwk/PublicJsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 118
    move-object v8, v0

    const-string/jumbo v9, "x5u"

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/jwk/PublicJsonWebKey;->x5u:Ljava/lang/String;

    move-object v11, v1

    invoke-virtual {v8, v9, v10, v11}, Lorg/jose4j/jwk/PublicJsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 120
    move-object v8, v0

    iget-boolean v8, v8, Lorg/jose4j/jwk/PublicJsonWebKey;->writeOutPrivateKeyToJson:Z

    if-nez v8, :cond_2

    move-object v8, v2

    sget-object v9, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->INCLUDE_PRIVATE:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    if-ne v8, v9, :cond_3

    .line 122
    :cond_2
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lorg/jose4j/jwk/PublicJsonWebKey;->fillPrivateTypeSpecificParams(Ljava/util/Map;)V

    .line 124
    :cond_3
    return-void
.end method

.method getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v2, p2

    .local v2, "parameterName":Ljava/lang/String;
    move v3, p3

    .local v3, "required":Z
    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-static {v5, v6, v7}, Lorg/jose4j/jwk/PublicJsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 245
    .local v4, "base64UrlValue":Ljava/lang/String;
    move-object v5, v4

    invoke-static {v5}, Lorg/jose4j/keys/BigEndianBigInteger;->fromBase64Url(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    return-object v0
.end method

.method public getCertificateChain()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    return-object v0
.end method

.method public getLeafCertificate()Ljava/security/cert/X509Certificate;
    .locals 3

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/PublicJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/PublicJsonWebKey;->key:Ljava/security/Key;

    check-cast v1, Ljava/security/PublicKey;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    return-object v0
.end method

.method public getX509CertificateSha1Thumbprint()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jose4j/jwk/PublicJsonWebKey;->getX509CertificateSha1Thumbprint(Z)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    return-object v0
.end method

.method public getX509CertificateSha1Thumbprint(Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move v1, p1

    .local v1, "allowFallbackDeriveFromX5c":Z
    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwk/PublicJsonWebKey;->x5t:Ljava/lang/String;

    move-object v2, v4

    .line 167
    .local v2, "result":Ljava/lang/String;
    move-object v4, v2

    if-nez v4, :cond_0

    move v4, v1

    if-eqz v4, :cond_0

    .line 169
    move-object v4, v0

    invoke-virtual {v4}, Lorg/jose4j/jwk/PublicJsonWebKey;->getLeafCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v4

    move-object v3, v4

    .line 170
    .local v3, "leafCertificate":Ljava/security/cert/X509Certificate;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 172
    move-object v4, v3

    invoke-static {v4}, Lorg/jose4j/keys/X509Util;->x5t(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 176
    .end local v3    # "leafCertificate":Ljava/security/cert/X509Certificate;
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    return-object v0
.end method

.method public getX509CertificateSha256Thumbprint()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jose4j/jwk/PublicJsonWebKey;->getX509CertificateSha256Thumbprint(Z)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    return-object v0
.end method

.method public getX509CertificateSha256Thumbprint(Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move v1, p1

    .local v1, "allowFallbackDeriveFromX5c":Z
    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwk/PublicJsonWebKey;->x5tS256:Ljava/lang/String;

    move-object v2, v4

    .line 187
    .local v2, "result":Ljava/lang/String;
    move-object v4, v2

    if-nez v4, :cond_0

    move v4, v1

    if-eqz v4, :cond_0

    .line 189
    move-object v4, v0

    invoke-virtual {v4}, Lorg/jose4j/jwk/PublicJsonWebKey;->getLeafCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v4

    move-object v3, v4

    .line 190
    .local v3, "leafCertificate":Ljava/security/cert/X509Certificate;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 192
    move-object v4, v3

    invoke-static {v4}, Lorg/jose4j/keys/X509Util;->x5tS256(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 196
    .end local v3    # "leafCertificate":Ljava/security/cert/X509Certificate;
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    return-object v0
.end method

.method public getX509Url()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/PublicJsonWebKey;->x5u:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    return-object v0
.end method

.method putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v2, p2

    .local v2, "parameterName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/math/BigInteger;
    move-object v5, v3

    invoke-static {v5}, Lorg/jose4j/keys/BigEndianBigInteger;->toBase64Url(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 251
    .local v4, "base64UrlValue":Ljava/lang/String;
    move-object v5, v1

    move-object v6, v2

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 252
    return-void
.end method

.method putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v2, p2

    .local v2, "parameterName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/math/BigInteger;
    move v4, p4

    .local v4, "minLength":I
    move-object v6, v3

    move v7, v4

    invoke-static {v6, v7}, Lorg/jose4j/keys/BigEndianBigInteger;->toBase64Url(Ljava/math/BigInteger;I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 257
    .local v5, "base64UrlValue":Ljava/lang/String;
    move-object v6, v1

    move-object v7, v2

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 258
    return-void
.end method

.method public setCertificateChain(Ljava/util/List;)V
    .locals 4
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
    .line 206
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, p1

    .local v1, "certificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lorg/jose4j/jwk/PublicJsonWebKey;->checkForBareKeyCertMismatch()V

    .line 208
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    .line 209
    return-void
.end method

.method public varargs setCertificateChain([Ljava/security/cert/X509Certificate;)V
    .locals 4

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, p1

    .local v1, "certificates":[Ljava/security/cert/X509Certificate;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jose4j/jwk/PublicJsonWebKey;->setCertificateChain(Ljava/util/List;)V

    .line 240
    return-void
.end method

.method public setPrivateKey(Ljava/security/PrivateKey;)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, p1

    .local v1, "privateKey":Ljava/security/PrivateKey;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwk/PublicJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    .line 147
    return-void
.end method

.method public setWriteOutPrivateKeyToJson(Z)V
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move v1, p1

    .local v1, "writeOutPrivateKeyToJson":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/jwk/PublicJsonWebKey;->writeOutPrivateKeyToJson:Z

    .line 137
    return-void
.end method

.method public setX509CertificateSha1Thumbprint(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, p1

    .local v1, "x5t":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwk/PublicJsonWebKey;->x5t:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setX509CertificateSha256Thumbprint(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, p1

    .local v1, "x5tS2":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwk/PublicJsonWebKey;->x5tS256:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setX509Url(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v1, p1

    .local v1, "x5u":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwk/PublicJsonWebKey;->x5u:Ljava/lang/String;

    .line 224
    return-void
.end method
