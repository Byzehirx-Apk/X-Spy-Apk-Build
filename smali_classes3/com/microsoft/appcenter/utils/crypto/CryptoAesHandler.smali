.class Lcom/microsoft/appcenter/utils/crypto/CryptoAesHandler;
.super Ljava/lang/Object;
.source "CryptoAesHandler.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesHandler;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;ILjava/security/KeyStore$Entry;[B)[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesHandler;
    move-object v1, p1

    .local v1, "cryptoFactory":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    move/from16 v2, p2

    .local v2, "apiLevel":I
    move-object/from16 v3, p3

    .local v3, "keyStoreEntry":Ljava/security/KeyStore$Entry;
    move-object/from16 v4, p4

    .local v4, "data":[B
    move-object v8, v1

    const-string/jumbo v9, "AES/CBC/PKCS7Padding"

    const-string/jumbo v10, "AndroidKeyStoreBCWorkaround"

    invoke-interface {v8, v9, v10}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;->getCipher(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;

    move-result-object v8

    move-object v5, v8

    .line 64
    .local v5, "cipher":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;
    move-object v8, v5

    invoke-interface {v8}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->getBlockSize()I

    move-result v8

    move v6, v8

    .line 65
    .local v6, "blockSize":I
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v4

    const/4 v11, 0x0

    move v12, v6

    invoke-direct {v9, v10, v11, v12}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    move-object v7, v8

    .line 66
    .local v7, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    move-object v8, v5

    const/4 v9, 0x2

    move-object v10, v3

    check-cast v10, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v10}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v10

    move-object v11, v7

    invoke-interface {v8, v9, v10, v11}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 67
    move-object v8, v5

    move-object v9, v4

    move v10, v6

    move-object v11, v4

    array-length v11, v11

    move v12, v6

    sub-int/2addr v11, v12

    invoke-interface {v8, v9, v10, v11}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->doFinal([BII)[B

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesHandler;
    return-object v0
.end method

.method public encrypt(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;ILjava/security/KeyStore$Entry;[B)[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesHandler;
    move-object v1, p1

    .local v1, "cryptoFactory":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    move/from16 v2, p2

    .local v2, "apiLevel":I
    move-object/from16 v3, p3

    .local v3, "keyStoreEntry":Ljava/security/KeyStore$Entry;
    move-object/from16 v4, p4

    .local v4, "input":[B
    move-object v9, v1

    const-string/jumbo v10, "AES/CBC/PKCS7Padding"

    const-string/jumbo v11, "AndroidKeyStoreBCWorkaround"

    invoke-interface {v9, v10, v11}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;->getCipher(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;

    move-result-object v9

    move-object v5, v9

    .line 52
    .local v5, "cipher":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;
    move-object v9, v5

    const/4 v10, 0x1

    move-object v11, v3

    check-cast v11, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v11}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->init(ILjava/security/Key;)V

    .line 53
    move-object v9, v5

    invoke-interface {v9}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->getIV()[B

    move-result-object v9

    move-object v6, v9

    .line 54
    .local v6, "cipherIV":[B
    move-object v9, v5

    move-object v10, v4

    invoke-interface {v9, v10}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->doFinal([B)[B

    move-result-object v9

    move-object v7, v9

    .line 55
    .local v7, "output":[B
    move-object v9, v6

    array-length v9, v9

    move-object v10, v7

    array-length v10, v10

    add-int/2addr v9, v10

    new-array v9, v9, [B

    move-object v8, v9

    .line 56
    .local v8, "encryptedBytes":[B
    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v8

    const/4 v12, 0x0

    move-object v13, v6

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    move-object v9, v7

    const/4 v10, 0x0

    move-object v11, v8

    move-object v12, v6

    array-length v12, v12

    move-object v13, v7

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    move-object v9, v8

    move-object v0, v9

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesHandler;
    return-object v0
.end method

.method public generateKey(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;Ljava/lang/String;Landroid/content/Context;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesHandler;
    move-object v1, p1

    .local v1, "cryptoFactory":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    move-object v2, p2

    .local v2, "alias":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    move-object v4, v6

    .line 37
    .local v4, "writeExpiry":Ljava/util/Calendar;
    move-object v6, v4

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 38
    move-object v6, v1

    const-string/jumbo v7, "AES"

    const-string/jumbo v8, "AndroidKeyStore"

    invoke-interface {v6, v7, v8}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;->getKeyGenerator(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;

    move-result-object v6

    move-object v5, v6

    .line 39
    .local v5, "keyGenerator":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;
    move-object v6, v5

    new-instance v7, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    const/4 v10, 0x3

    invoke-direct {v8, v9, v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const-string/jumbo v11, "CBC"

    aput-object v11, v9, v10

    .line 41
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const-string/jumbo v11, "PKCS7Padding"

    aput-object v11, v9, v10

    .line 42
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v7

    const/16 v8, 0x100

    .line 43
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v7

    move-object v8, v4

    .line 44
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v7

    .line 45
    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v7

    .line 39
    invoke-interface {v6, v7}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 46
    move-object v6, v5

    invoke-interface {v6}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;->generateKey()V

    .line 47
    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesHandler;
    const-string/jumbo v1, "AES/CBC/PKCS7Padding/256"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesHandler;
    return-object v0
.end method
