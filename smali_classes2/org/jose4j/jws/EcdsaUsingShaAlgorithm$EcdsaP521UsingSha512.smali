.class public Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP521UsingSha512;
.super Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
.source "EcdsaUsingShaAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EcdsaP521UsingSha512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP521UsingSha512;
    move-object v1, v0

    const-string/jumbo v2, "ES512"

    const-string/jumbo v3, "SHA512withECDSA"

    const-string/jumbo v4, "P-521"

    const/16 v5, 0x84

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 265
    return-void
.end method
