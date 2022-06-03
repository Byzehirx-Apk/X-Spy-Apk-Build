.class Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;
.super Ljava/lang/Object;
.source "CryptoRsaHandler.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCipher(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;I)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;
    move-object v1, p1

    .local v1, "cipherFactory":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    move v2, p2

    .local v2, "apiLevel":I
    move v4, v2

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 69
    const-string/jumbo v4, "AndroidKeyStoreBCWorkaround"

    move-object v3, v4

    .line 73
    .local v3, "provider":Ljava/lang/String;
    :goto_0
    move-object v4, v1

    const-string/jumbo v5, "RSA/ECB/PKCS1Padding"

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;->getCipher(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;
    return-object v0

    .line 71
    .end local v3    # "provider":Ljava/lang/String;
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;
    :cond_0
    const-string/jumbo v4, "AndroidOpenSSL"

    move-object v3, v4

    .restart local v3    # "provider":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public decrypt(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;ILjava/security/KeyStore$Entry;[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;
    move-object v1, p1

    .local v1, "cryptoFactory":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    move v2, p2

    .local v2, "apiLevel":I
    move-object v3, p3

    .local v3, "keyStoreEntry":Ljava/security/KeyStore$Entry;
    move-object v4, p4

    .local v4, "data":[B
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-direct {v6, v7, v8}, Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;->getCipher(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;I)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;

    move-result-object v6

    move-object v5, v6

    .line 93
    .local v5, "cipher":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;
    move-object v6, v5

    const/4 v7, 0x2

    move-object v8, v3

    check-cast v8, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v8}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->init(ILjava/security/Key;)V

    .line 94
    move-object v6, v5

    move-object v7, v4

    invoke-interface {v6, v7}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->doFinal([B)[B

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;
    return-object v0
.end method

.method public encrypt(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;ILjava/security/KeyStore$Entry;[B)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;
    move-object v1, p1

    .local v1, "cryptoFactory":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    move v2, p2

    .local v2, "apiLevel":I
    move-object/from16 v3, p3

    .local v3, "keyStoreEntry":Ljava/security/KeyStore$Entry;
    move-object/from16 v4, p4

    .local v4, "input":[B
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    invoke-direct {v9, v10, v11}, Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;->getCipher(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;I)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;

    move-result-object v9

    move-object v5, v9

    .line 79
    .local v5, "cipher":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;
    move-object v9, v3

    check-cast v9, Ljava/security/KeyStore$PrivateKeyEntry;

    move-object v6, v9

    .line 80
    .local v6, "privateKeyEntry":Ljava/security/KeyStore$PrivateKeyEntry;
    move-object v9, v6

    invoke-virtual {v9}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    move-object v7, v9

    .line 82
    .local v7, "certificate":Ljava/security/cert/X509Certificate;
    move-object v9, v7

    :try_start_0
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    move-object v9, v5

    const/4 v10, 0x1

    move-object v11, v7

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->init(ILjava/security/Key;)V

    .line 87
    move-object v9, v5

    move-object v10, v4

    invoke-interface {v9, v10}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->doFinal([B)[B

    move-result-object v9

    move-object v0, v9

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;
    return-object v0

    .line 83
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 84
    .local v8, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v9, Ljava/security/InvalidKeyException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v8

    invoke-direct {v10, v11}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public generateKey(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;Ljava/lang/String;Landroid/content/Context;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "TrulyRandom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;
    move-object v1, p1

    .local v1, "cryptoFactory":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    move-object v2, p2

    .local v2, "alias":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    move-object v4, v6

    .line 50
    .local v4, "writeExpiry":Ljava/util/Calendar;
    move-object v6, v4

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 51
    const-string/jumbo v6, "RSA"

    const-string/jumbo v7, "AndroidKeyStore"

    invoke-static {v6, v7}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v6

    move-object v5, v6

    .line 52
    .local v5, "generator":Ljava/security/KeyPairGenerator;
    move-object v6, v5

    new-instance v7, Landroid/security/KeyPairGeneratorSpec$Builder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v3

    invoke-direct {v8, v9}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    move-object v8, v2

    .line 53
    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    new-instance v8, Ljavax/security/auth/x500/X500Principal;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "CN="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 55
    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    move-object v8, v4

    .line 56
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    sget-object v8, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 57
    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    const/16 v8, 0x800

    .line 58
    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setKeySize(I)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    .line 59
    invoke-virtual {v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v7

    .line 52
    invoke-virtual {v6, v7}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 60
    move-object v6, v5

    invoke-virtual {v6}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v6

    .line 61
    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;
    const-string/jumbo v1, "RSA/ECB/PKCS1Padding/2048"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;
    return-object v0
.end method
