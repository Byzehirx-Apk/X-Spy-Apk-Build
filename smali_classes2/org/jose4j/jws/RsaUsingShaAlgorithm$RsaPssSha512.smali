.class public Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha512;
.super Lorg/jose4j/jws/RsaUsingShaAlgorithm;
.source "RsaUsingShaAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jws/RsaUsingShaAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RsaPssSha512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha512;
    move-object v3, v0

    const-string/jumbo v4, "PS512"

    const-string/jumbo v5, "SHA512withRSAandMGF1"

    invoke-static {v5}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha512;->choosePssAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/jose4j/jws/RsaUsingShaAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    move-object v1, v3

    .line 80
    .local v1, "mgf1pec":Ljava/security/spec/MGF1ParameterSpec;
    new-instance v3, Ljava/security/spec/PSSParameterSpec;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    invoke-virtual {v5}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "MGF1"

    move-object v7, v1

    const/16 v8, 0x40

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    move-object v2, v3

    .line 81
    .local v2, "pssSpec":Ljava/security/spec/PSSParameterSpec;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha512;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 82
    return-void
.end method
