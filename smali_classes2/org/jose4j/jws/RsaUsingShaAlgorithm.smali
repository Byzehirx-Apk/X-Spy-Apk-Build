.class public Lorg/jose4j/jws/RsaUsingShaAlgorithm;
.super Lorg/jose4j/jws/BaseSignatureAlgorithm;
.source "RsaUsingShaAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jws/JsonWebSignatureAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha512;,
        Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha384;,
        Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha256;,
        Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha512;,
        Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha384;,
        Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha256;
    }
.end annotation


# static fields
.field static final MGF1:Ljava/lang/String; = "MGF1"

.field public static final RSASSA_PSS:Ljava/lang/String; = "RSASSA-PSS"

.field static final TRAILER:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/RsaUsingShaAlgorithm;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object v2, p2

    .local v2, "javaAlgo":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const-string/jumbo v6, "RSA"

    invoke-direct {v3, v4, v5, v6}, Lorg/jose4j/jws/BaseSignatureAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method static choosePssAlgorithmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "legacyName":Ljava/lang/String;
    const-string/jumbo v3, "Signature"

    invoke-static {v3}, Ljava/security/Security;->getAlgorithms(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 113
    .local v2, "sigAlg":Ljava/lang/String;
    const-string/jumbo v3, "RSASSA-PSS"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    move-object v3, v2

    move-object v0, v3

    .line 119
    .end local v0    # "legacyName":Ljava/lang/String;
    .end local v2    # "sigAlg":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 117
    .restart local v0    # "legacyName":Ljava/lang/String;
    .restart local v2    # "sigAlg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 119
    .end local v2    # "sigAlg":Ljava/lang/String;
    :cond_1
    move-object v3, v0

    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method public validatePrivateKey(Ljava/security/PrivateKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/RsaUsingShaAlgorithm;
    move-object v1, p1

    .local v1, "privateKey":Ljava/security/PrivateKey;
    move-object v2, v1

    invoke-static {v2}, Lorg/jose4j/jwx/KeyValidationSupport;->checkRsaKeySize(Ljava/security/Key;)V

    .line 50
    return-void
.end method

.method public validatePublicKey(Ljava/security/PublicKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/RsaUsingShaAlgorithm;
    move-object v1, p1

    .local v1, "key":Ljava/security/PublicKey;
    move-object v2, v1

    invoke-static {v2}, Lorg/jose4j/jwx/KeyValidationSupport;->checkRsaKeySize(Ljava/security/Key;)V

    .line 45
    return-void
.end method
