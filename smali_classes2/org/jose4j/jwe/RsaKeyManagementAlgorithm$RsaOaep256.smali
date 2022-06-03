.class public Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep256;
.super Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;
.source "RsaKeyManagementAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RsaOaep256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep256;
    move-object v1, v0

    const-string/jumbo v2, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    const-string/jumbo v3, "RSA-OAEP-256"

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    move-object v1, v0

    new-instance v2, Ljavax/crypto/spec/OAEPParameterSpec;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "SHA-256"

    const-string/jumbo v5, "MGF1"

    sget-object v6, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v7, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-virtual {v1, v2}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep256;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 90
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 12

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep256;
    :try_start_0
    const-string/jumbo v4, "{\"kty\":\"RSA\",\"n\":\"sXchDaQebHnPiGvyDOAT4saGEUetSyo9MKLOoWFsueri23bOdgWp4Dy1WlUzewbgBHod5pcM9H95GQRV3JDXboIRROSBigeC5yjU1hGzHHyXss8UDprecbAYxknTcQkhslANGRUZmdTOQ5qTRsLAt6BTYuyvVRdhS8exSZEy_c4gs_7svlJJQ4H9_NxsiIoLwAEk7-Q3UXERGYw_75IDrGA84-lA_-Ct4eTlXHBIY2EaV7t7LjJaynVJCpkv4LKjTTAumiGUIuQhrNhZLuF_RJLqHpM2kgWFLU7-VTdL1VbC2tejvcI2BlMkEpk1BzBZI0KQB0GaDWFLN-aEAw3vRw\",\"e\":\"AQAB\"}"

    invoke-static {v4}, Lorg/jose4j/jwk/JsonWebKey$Factory;->newJwk(Ljava/lang/String;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object v4

    move-object v1, v4

    .line 112
    .local v1, "jwk":Lorg/jose4j/jwk/JsonWebKey;
    new-instance v4, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/16 v6, 0x10

    const-string/jumbo v7, "AES"

    invoke-direct {v5, v6, v7}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;-><init>(ILjava/lang/String;)V

    move-object v2, v4

    .line 113
    .local v2, "cekDesc":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lorg/jose4j/jwk/JsonWebKey;->getKey()Ljava/security/Key;

    move-result-object v5

    move-object v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lorg/jose4j/jca/ProviderContext;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Lorg/jose4j/jca/ProviderContext;-><init>()V

    invoke-virtual/range {v4 .. v9}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep256;->manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;
    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v3, v4

    .line 114
    .local v3, "contentEncryptionKeys":Lorg/jose4j/jwe/ContentEncryptionKeys;
    move-object v4, v3

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 119
    .end local v0    # "this":Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep256;
    .end local v1    # "jwk":Lorg/jose4j/jwk/JsonWebKey;
    .end local v2    # "cekDesc":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    .end local v3    # "contentEncryptionKeys":Lorg/jose4j/jwe/ContentEncryptionKeys;
    :goto_1
    return v0

    .line 114
    .restart local v0    # "this":Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep256;
    .restart local v1    # "jwk":Lorg/jose4j/jwk/JsonWebKey;
    .restart local v2    # "cekDesc":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    .restart local v3    # "contentEncryptionKeys":Lorg/jose4j/jwe/ContentEncryptionKeys;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 116
    .end local v1    # "jwk":Lorg/jose4j/jwk/JsonWebKey;
    .end local v2    # "cekDesc":Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    .end local v3    # "contentEncryptionKeys":Lorg/jose4j/jwe/ContentEncryptionKeys;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 118
    .local v1, "e":Lorg/jose4j/lang/JoseException;
    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep256;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep256;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not available due to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-static {v6}, Lorg/jose4j/lang/ExceptionHelp;->toStringWithCauses(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 119
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method
