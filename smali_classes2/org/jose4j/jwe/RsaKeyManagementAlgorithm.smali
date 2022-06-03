.class public Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;
.super Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
.source "RsaKeyManagementAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$Rsa1_5;,
        Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep256;,
        Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;
    move-object v1, p1

    .local v1, "javaAlg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "alg":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    move-object v3, v0

    const-string/jumbo v4, "RSA"

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 46
    move-object v3, v0

    sget-object v4, Lorg/jose4j/keys/KeyPersuasion;->ASYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {v3, v4}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 47
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/jose4j/jwe/CipherUtil;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 72
    .end local v0    # "this":Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;
    :goto_1
    return v0

    .line 68
    .restart local v0    # "this":Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 72
    .local v1, "e":Lorg/jose4j/lang/JoseException;
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method public validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object v4, v1

    const-class v5, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {v4, v5}, Lorg/jose4j/jwx/KeyValidationSupport;->castKey(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljava/security/PrivateKey;

    move-object v3, v4

    .line 60
    .local v3, "pk":Ljava/security/PrivateKey;
    move-object v4, v3

    invoke-static {v4}, Lorg/jose4j/jwx/KeyValidationSupport;->checkRsaKeySize(Ljava/security/Key;)V

    .line 61
    return-void
.end method

.method public validateEncryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;
    move-object v1, p1

    .local v1, "managementKey":Ljava/security/Key;
    move-object v2, p2

    .local v2, "contentEncryptionAlg":Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    move-object v4, v1

    const-class v5, Ljava/security/PublicKey;

    invoke-static {v4, v5}, Lorg/jose4j/jwx/KeyValidationSupport;->castKey(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljava/security/PublicKey;

    move-object v3, v4

    .line 53
    .local v3, "pk":Ljava/security/PublicKey;
    move-object v4, v3

    invoke-static {v4}, Lorg/jose4j/jwx/KeyValidationSupport;->checkRsaKeySize(Ljava/security/Key;)V

    .line 54
    return-void
.end method
