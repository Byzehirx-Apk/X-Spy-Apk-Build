.class public Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP384UsingSha384;
.super Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
.source "EcdsaUsingShaAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EcdsaP384UsingSha384"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP384UsingSha384;
    move-object v1, v0

    const-string/jumbo v2, "ES384"

    const-string/jumbo v3, "SHA384withECDSA"

    const-string/jumbo v4, "P-384"

    const/16 v5, 0x60

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 257
    return-void
.end method
