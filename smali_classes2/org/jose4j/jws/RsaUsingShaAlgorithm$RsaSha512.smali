.class public Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha512;
.super Lorg/jose4j/jws/RsaUsingShaAlgorithm;
.source "RsaUsingShaAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jws/RsaUsingShaAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RsaSha512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha512;
    move-object v1, v0

    const-string/jumbo v2, "RS512"

    const-string/jumbo v3, "SHA512withRSA"

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jws/RsaUsingShaAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method
