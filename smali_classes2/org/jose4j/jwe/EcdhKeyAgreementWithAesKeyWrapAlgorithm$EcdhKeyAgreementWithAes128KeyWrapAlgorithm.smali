.class public Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes128KeyWrapAlgorithm;
.super Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;
.source "EcdhKeyAgreementWithAesKeyWrapAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EcdhKeyAgreementWithAes128KeyWrapAlgorithm"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes128KeyWrapAlgorithm;
    move-object v1, v0

    const-string/jumbo v2, "ECDH-ES+A128KW"

    new-instance v3, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes128;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes128;-><init>()V

    invoke-virtual {v3}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes128;->setUseGeneralProviderContext()Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;-><init>(Ljava/lang/String;Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;)V

    .line 93
    return-void
.end method
