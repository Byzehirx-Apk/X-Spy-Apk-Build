.class public Lorg/jose4j/jwk/SimpleJwkFilter;
.super Ljava/lang/Object;
.source "SimpleJwkFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwk/SimpleJwkFilter$1;,
        Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;,
        Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;
    }
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/String;

.field public static OMITTED_OKAY:Z

.field public static VALUE_REQUIRED:Z


# instance fields
.field private alg:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private allowThumbsFallbackDeriveFromX5c:Z

.field private crv:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private keyOps:Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;

.field private kid:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private kty:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private use:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private x5t:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private x5tS256:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lorg/jose4j/jwk/SimpleJwkFilter;->VALUE_REQUIRED:Z

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/jose4j/jwk/SimpleJwkFilter;->EMPTY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method


# virtual methods
.method public filter(Ljava/util/Collection;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v1, p1

    .local v1, "jsonWebKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jose4j/jwk/JsonWebKey;>;"
    new-instance v7, Ljava/util/ArrayList;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    .line 90
    .local v2, "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jose4j/jwk/JsonWebKey;

    move-object v4, v7

    .line 92
    .local v4, "jwk":Lorg/jose4j/jwk/JsonWebKey;
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/jwk/SimpleJwkFilter;->kid:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    move-object v9, v4

    invoke-virtual {v9}, Lorg/jose4j/jwk/JsonWebKey;->getKeyId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v7

    move v5, v7

    .line 93
    .local v5, "match":Z
    move v7, v5

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/jwk/SimpleJwkFilter;->kty:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    move-object v10, v4

    invoke-virtual {v10}, Lorg/jose4j/jwk/JsonWebKey;->getKeyType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v7, v8

    move v5, v7

    .line 94
    move v7, v5

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/jwk/SimpleJwkFilter;->use:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    move-object v10, v4

    invoke-virtual {v10}, Lorg/jose4j/jwk/JsonWebKey;->getUse()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v7, v8

    move v5, v7

    .line 95
    move v7, v5

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/jwk/SimpleJwkFilter;->alg:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    move-object v10, v4

    invoke-virtual {v10}, Lorg/jose4j/jwk/JsonWebKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v7, v8

    move v5, v7

    .line 96
    move-object v7, v0

    move-object v8, v4

    move-object v9, v0

    iget-boolean v9, v9, Lorg/jose4j/jwk/SimpleJwkFilter;->allowThumbsFallbackDeriveFromX5c:Z

    invoke-virtual {v7, v8, v9}, Lorg/jose4j/jwk/SimpleJwkFilter;->getThumbs(Lorg/jose4j/jwk/JsonWebKey;Z)[Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 97
    .local v6, "thumbs":[Ljava/lang/String;
    move v7, v5

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/jwk/SimpleJwkFilter;->x5t:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    move-object v10, v6

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v8, v9, v10}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v7, v8

    move v5, v7

    .line 98
    move v7, v5

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/jwk/SimpleJwkFilter;->x5tS256:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    move-object v10, v6

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v8, v9, v10}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v7, v8

    move v5, v7

    .line 99
    move v7, v5

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/jwk/SimpleJwkFilter;->crv:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    move-object v10, v0

    move-object v11, v4

    invoke-virtual {v10, v11}, Lorg/jose4j/jwk/SimpleJwkFilter;->getCrv(Lorg/jose4j/jwk/JsonWebKey;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v7, v8

    move v5, v7

    .line 100
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/jwk/SimpleJwkFilter;->keyOps:Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lorg/jose4j/jwk/SimpleJwkFilter;->keyOps:Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;

    move-object v9, v4

    invoke-virtual {v9}, Lorg/jose4j/jwk/JsonWebKey;->getKeyOps()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;->meetsCriteria(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const/4 v8, 0x1

    :goto_1
    and-int/2addr v7, v8

    move v5, v7

    .line 102
    move v7, v5

    if-eqz v7, :cond_1

    .line 104
    move-object v7, v2

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 106
    :cond_1
    goto/16 :goto_0

    .line 100
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 107
    .end local v4    # "jwk":Lorg/jose4j/jwk/JsonWebKey;
    .end local v5    # "match":Z
    .end local v6    # "thumbs":[Ljava/lang/String;
    :cond_3
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    return-object v0
.end method

.method getCrv(Lorg/jose4j/jwk/JsonWebKey;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v1, p1

    .local v1, "jwk":Lorg/jose4j/jwk/JsonWebKey;
    move-object v2, v1

    instance-of v2, v2, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    invoke-virtual {v2}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getCurveName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getThumbs(Lorg/jose4j/jwk/JsonWebKey;Z)[Ljava/lang/String;
    .locals 11

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v1, p1

    .local v1, "jwk":Lorg/jose4j/jwk/JsonWebKey;
    move v2, p2

    .local v2, "allowFallbackDeriveFromX5c":Z
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwk/SimpleJwkFilter;->x5t:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwk/SimpleJwkFilter;->x5tS256:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    if-nez v6, :cond_0

    .line 124
    sget-object v6, Lorg/jose4j/jwk/SimpleJwkFilter;->EMPTY:[Ljava/lang/String;

    move-object v0, v6

    .line 137
    .end local v0    # "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    :goto_0
    return-object v0

    .line 127
    .restart local v0    # "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    :cond_0
    move-object v6, v1

    instance-of v6, v6, Lorg/jose4j/jwk/PublicJsonWebKey;

    if-eqz v6, :cond_1

    .line 129
    move-object v6, v1

    check-cast v6, Lorg/jose4j/jwk/PublicJsonWebKey;

    move-object v3, v6

    .line 130
    .local v3, "publicJwk":Lorg/jose4j/jwk/PublicJsonWebKey;
    move-object v6, v3

    move v7, v2

    invoke-virtual {v6, v7}, Lorg/jose4j/jwk/PublicJsonWebKey;->getX509CertificateSha1Thumbprint(Z)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 131
    .local v4, "x5t":Ljava/lang/String;
    move-object v6, v3

    move v7, v2

    invoke-virtual {v6, v7}, Lorg/jose4j/jwk/PublicJsonWebKey;->getX509CertificateSha256Thumbprint(Z)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 133
    .local v5, "x5tS256":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v4

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v5

    aput-object v9, v7, v8

    move-object v0, v6

    goto :goto_0

    .line 137
    .end local v3    # "publicJwk":Lorg/jose4j/jwk/PublicJsonWebKey;
    .end local v4    # "x5t":Ljava/lang/String;
    .end local v5    # "x5tS256":Ljava/lang/String;
    :cond_1
    sget-object v6, Lorg/jose4j/jwk/SimpleJwkFilter;->EMPTY:[Ljava/lang/String;

    move-object v0, v6

    goto :goto_0
.end method

.method isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v1, p1

    .local v1, "criteria":Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;->meetsCriteria(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    return v0

    .restart local v0    # "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setAlg(Ljava/lang/String;Z)V
    .locals 10

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v1, p1

    .local v1, "expectedAlg":Ljava/lang/String;
    move v2, p2

    .local v2, "omittedValueAcceptable":Z
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v4, v3, Lorg/jose4j/jwk/SimpleJwkFilter;->alg:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    .line 65
    return-void
.end method

.method public setAllowFallbackDeriveFromX5cForX5Thumbs(Z)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    move v1, p1

    .local v1, "allow":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/jwk/SimpleJwkFilter;->allowThumbsFallbackDeriveFromX5c:Z

    .line 80
    return-void
.end method

.method public setCrv(Ljava/lang/String;Z)V
    .locals 10

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v1, p1

    .local v1, "expectedCrv":Ljava/lang/String;
    move v2, p2

    .local v2, "omittedValueAcceptable":Z
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v4, v3, Lorg/jose4j/jwk/SimpleJwkFilter;->crv:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    .line 85
    return-void
.end method

.method public setKeyOperations([Ljava/lang/String;Z)V
    .locals 10

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v1, p1

    .local v1, "expectedKeyOps":[Ljava/lang/String;
    move v2, p2

    .local v2, "omittedValueAcceptable":Z
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;-><init>([Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v4, v3, Lorg/jose4j/jwk/SimpleJwkFilter;->keyOps:Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;

    .line 60
    return-void
.end method

.method public setKid(Ljava/lang/String;Z)V
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v1, p1

    .local v1, "expectedKid":Ljava/lang/String;
    move v2, p2

    .local v2, "omittedValueAcceptable":Z
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v4, v3, Lorg/jose4j/jwk/SimpleJwkFilter;->kid:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    .line 45
    return-void
.end method

.method public setKty(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v1, p1

    .local v1, "expectedKty":Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v3, v2, Lorg/jose4j/jwk/SimpleJwkFilter;->kty:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    .line 50
    return-void
.end method

.method public setUse(Ljava/lang/String;Z)V
    .locals 10

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v1, p1

    .local v1, "expectedUse":Ljava/lang/String;
    move v2, p2

    .local v2, "omittedValueAcceptable":Z
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v4, v3, Lorg/jose4j/jwk/SimpleJwkFilter;->use:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    .line 55
    return-void
.end method

.method public setX5t(Ljava/lang/String;Z)V
    .locals 10

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v1, p1

    .local v1, "expectedThumb":Ljava/lang/String;
    move v2, p2

    .local v2, "omittedValueAcceptable":Z
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v4, v3, Lorg/jose4j/jwk/SimpleJwkFilter;->x5t:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    .line 70
    return-void
.end method

.method public setX5tS256(Ljava/lang/String;Z)V
    .locals 10

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter;
    move-object v1, p1

    .local v1, "expectedThumb":Ljava/lang/String;
    move v2, p2

    .local v2, "omittedValueAcceptable":Z
    move-object v3, v0

    new-instance v4, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v4, v3, Lorg/jose4j/jwk/SimpleJwkFilter;->x5tS256:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    .line 75
    return-void
.end method
