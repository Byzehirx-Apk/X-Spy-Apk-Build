.class public Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP256UsingSha256;
.super Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
.source "EcdsaUsingShaAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EcdsaP256UsingSha256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP256UsingSha256;
    move-object v1, v0

    const-string/jumbo v2, "ES256"

    const-string/jumbo v3, "SHA256withECDSA"

    const-string/jumbo v4, "P-256"

    const/16 v5, 0x40

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    return-void
.end method
