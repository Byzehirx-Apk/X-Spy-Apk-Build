.class public Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha512Aes256;
.super Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
.source "Pbes2HmacShaWithAesKeyWrapAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSha512Aes256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha512Aes256;
    move-object v1, v0

    const-string/jumbo v2, "PBES2-HS512+A256KW"

    const-string/jumbo v3, "HmacSHA512"

    new-instance v4, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes256;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes256;-><init>()V

    invoke-virtual {v4}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes256;->setUseGeneralProviderContext()Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;)V

    .line 182
    return-void
.end method
