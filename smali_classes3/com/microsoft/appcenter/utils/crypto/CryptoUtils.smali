.class public Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
.super Ljava/lang/Object;
.source "CryptoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;,
        Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;,
        Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;,
        Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;,
        Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    }
.end annotation


# static fields
.field static final DEFAULT_CRYPTO_FACTORY:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final M_KEY_EXPIRED_EXCEPTION:Ljava/lang/String; = "android.security.keystore.KeyExpiredException"

.field private static sInstance:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mApiLevel:I

.field private final mContext:Landroid/content/Context;

.field private final mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

.field private final mCryptoHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyStore:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->DEFAULT_CRYPTO_FACTORY:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->DEFAULT_CRYPTO_FACTORY:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {v2, v3, v4, v5}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;-><init>(Landroid/content/Context;Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;I)V

    .line 155
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;I)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "cryptoFactory":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    move/from16 v3, p3

    .local v3, "apiLevel":I
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 126
    move-object v6, v0

    new-instance v7, Ljava/util/LinkedHashMap;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v6, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    .line 162
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, v6, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mContext:Landroid/content/Context;

    .line 163
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    .line 164
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mApiLevel:I

    .line 167
    const/4 v6, 0x0

    move-object v4, v6

    .line 168
    .local v4, "keyStore":Ljava/security/KeyStore;
    move v6, v3

    const/16 v7, 0x13

    if-lt v6, v7, :cond_0

    .line 170
    :try_start_0
    const-string/jumbo v6, "AndroidKeyStore"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    move-object v4, v6

    .line 171
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .line 176
    :cond_0
    :goto_0
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    .line 179
    move-object v6, v4

    if-eqz v6, :cond_1

    move v6, v3

    const/16 v7, 0x17

    if-lt v6, v7, :cond_1

    .line 181
    move-object v6, v0

    :try_start_1
    new-instance v7, Lcom/microsoft/appcenter/utils/crypto/CryptoAesHandler;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/microsoft/appcenter/utils/crypto/CryptoAesHandler;-><init>()V

    invoke-direct {v6, v7}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->registerHandler(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    .line 192
    :cond_1
    :goto_1
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 194
    move-object v6, v0

    :try_start_2
    new-instance v7, Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;-><init>()V

    invoke-direct {v6, v7}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->registerHandler(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 197
    .line 201
    :cond_2
    :goto_2
    new-instance v6, Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;-><init>()V

    move-object v5, v6

    .line 202
    .local v5, "cryptoNoOpHandler":Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;
    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    move-object v7, v5

    invoke-virtual {v7}, Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;-><init>(ILcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 203
    return-void

    .line 172
    .end local v5    # "cryptoNoOpHandler":Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 173
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "AppCenter"

    const-string/jumbo v7, "Cannot use secure keystore on this device."

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 183
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "AppCenter"

    const-string/jumbo v7, "Cannot use modern encryption on this device."

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 195
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    move-object v5, v6

    .line 196
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "AppCenter"

    const-string/jumbo v7, "Cannot use old encryption on this device."

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;I)Ljava/lang/String;
    .locals 6
    .param p1    # Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    move-object v1, p1

    .local v1, "handler":Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
    move v2, p2

    .local v2, "index":I
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "appcenter."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v4}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    return-object v0
.end method

.method private getDecryptedData(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;ILjava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    .locals 15
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    move-object/from16 v1, p1

    .local v1, "cryptoHandler":Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
    move/from16 v2, p2

    .local v2, "aliasIndex":I
    move-object/from16 v3, p3

    .local v3, "data":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    invoke-direct {v8, v9, v10}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getKeyStoreEntry(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;I)Ljava/security/KeyStore$Entry;

    move-result-object v8

    move-object v4, v8

    .line 381
    .local v4, "keyStoreEntry":Ljava/security/KeyStore$Entry;
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    move-object v10, v0

    iget v10, v10, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mApiLevel:I

    move-object v11, v4

    move-object v12, v3

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v12

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->decrypt(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;ILjava/security/KeyStore$Entry;[B)[B

    move-result-object v8

    move-object v5, v8

    .line 382
    .local v5, "decryptedBytes":[B
    new-instance v8, Ljava/lang/String;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v5

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v6, v8

    .line 383
    .local v6, "decryptedString":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v7, v8

    .line 384
    .local v7, "newEncryptedData":Ljava/lang/String;
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;

    iget-object v9, v9, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;

    if-eq v8, v9, :cond_0

    .line 385
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 387
    :cond_0
    new-instance v8, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v6

    move-object v11, v7

    invoke-direct {v9, v10, v11}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->sInstance:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->sInstance:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    .line 215
    :cond_0
    sget-object v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->sInstance:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    move-object v0, v1

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private getKeyStoreEntry(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;I)Ljava/security/KeyStore$Entry;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    move-object v1, p1

    .local v1, "cryptoHandler":Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
    move v2, p2

    .local v2, "aliasIndex":I
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    if-nez v4, :cond_0

    .line 267
    const/4 v4, 0x0

    move-object v0, v4

    .line 270
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    :goto_0
    return-object v0

    .line 269
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 270
    .local v3, "alias":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private getKeyStoreEntry(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;)Ljava/security/KeyStore$Entry;
    .locals 5
    .param p1    # Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    move-object v1, p1

    .local v1, "handlerEntry":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;

    move-object v4, v1

    iget v4, v4, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    invoke-direct {v2, v3, v4}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getKeyStoreEntry(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;I)Ljava/security/KeyStore$Entry;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    return-object v0
.end method

.method private registerHandler(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V
    .locals 15
    .param p1    # Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    move-object/from16 v1, p1

    .local v1, "handler":Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;I)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 230
    .local v2, "alias0":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 231
    .local v3, "alias1":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/security/KeyStore;->getCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    move-object v4, v8

    .line 232
    .local v4, "aliasDate0":Ljava/util/Date;
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/security/KeyStore;->getCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    move-object v5, v8

    .line 233
    .local v5, "aliasDate1":Ljava/util/Date;
    const/4 v8, 0x0

    move v6, v8

    .line 234
    .local v6, "index":I
    move-object v8, v2

    move-object v7, v8

    .line 235
    .local v7, "alias":Ljava/lang/String;
    move-object v8, v5

    if-eqz v8, :cond_0

    move-object v8, v5

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 236
    const/4 v8, 0x1

    move v6, v8

    .line 237
    move-object v8, v3

    move-object v7, v8

    .line 241
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 242
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Creating alias: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    move-object v10, v7

    move-object v11, v0

    iget-object v11, v11, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mContext:Landroid/content/Context;

    invoke-interface {v8, v9, v10, v11}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->generateKey(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;Ljava/lang/String;Landroid/content/Context;)V

    .line 247
    :cond_1
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Using "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    move-object v9, v1

    invoke-interface {v9}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move v12, v6

    move-object v13, v1

    invoke-direct {v11, v12, v13}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;-><init>(ILcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 249
    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    move-object v1, p1

    .local v1, "data":Ljava/lang/String;
    move-object v7, v1

    if-nez v7, :cond_0

    .line 347
    new-instance v7, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .line 373
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    :goto_0
    return-object v0

    .line 351
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    :cond_0
    move-object v7, v1

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 352
    .local v2, "dataSplit":[Ljava/lang/String;
    move-object v7, v2

    array-length v7, v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    move-object v8, v2

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;

    :goto_1
    move-object v3, v7

    .line 353
    .local v3, "handlerEntry":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;
    move-object v7, v3

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_2
    move-object v4, v7

    .line 354
    .local v4, "cryptoHandler":Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
    move-object v7, v4

    if-nez v7, :cond_3

    .line 357
    const-string/jumbo v7, "AppCenter"

    const-string/jumbo v8, "Failed to decrypt data."

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v7, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    goto :goto_0

    .line 352
    .end local v3    # "handlerEntry":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;
    .end local v4    # "cryptoHandler":Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 353
    .restart local v3    # "handlerEntry":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;
    :cond_2
    move-object v7, v3

    iget-object v7, v7, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;

    goto :goto_2

    .line 363
    .restart local v4    # "cryptoHandler":Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
    :cond_3
    move-object v7, v0

    move-object v8, v4

    move-object v9, v3

    :try_start_0
    iget v9, v9, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    move-object v10, v2

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-direct {v7, v8, v9, v10}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getDecryptedData(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;ILjava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 364
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 368
    .local v5, "e":Ljava/lang/Exception;
    move-object v7, v0

    move-object v8, v4

    move-object v9, v3

    :try_start_1
    iget v9, v9, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    const/4 v10, 0x1

    xor-int/lit8 v9, v9, 0x1

    move-object v10, v2

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-direct {v7, v8, v9, v10}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getDecryptedData(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;ILjava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 369
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 372
    .local v6, "e2":Ljava/lang/Exception;
    const-string/jumbo v7, "AppCenter"

    const-string/jumbo v8, "Failed to decrypt data."

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    new-instance v7, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    goto :goto_0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    move-object v1, p1

    .local v1, "data":Ljava/lang/String;
    move-object v7, v1

    if-nez v7, :cond_0

    .line 282
    const/4 v7, 0x0

    move-object v0, v7

    .line 332
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    :goto_0
    return-object v0

    .line 287
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    :cond_0
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;

    move-object v2, v7

    .line 288
    .local v2, "handlerEntry":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;
    move-object v7, v2

    iget-object v7, v7, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v7

    .line 292
    .local v3, "handler":Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
    move-object v7, v0

    move-object v8, v2

    :try_start_1
    invoke-direct {v7, v8}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getKeyStoreEntry(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;)Ljava/security/KeyStore$Entry;

    move-result-object v7

    move-object v4, v7

    .line 293
    .local v4, "keyStoreEntry":Ljava/security/KeyStore$Entry;
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    move-object v9, v0

    iget v9, v9, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mApiLevel:I

    move-object v10, v4

    move-object v11, v1

    const-string/jumbo v12, "UTF-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->encrypt(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;ILjava/security/KeyStore$Entry;[B)[B

    move-result-object v7

    move-object v5, v7

    .line 294
    .local v5, "encryptedBytes":[B
    move-object v7, v5

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 300
    .local v6, "encryptedString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-interface {v8}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 301
    .end local v4    # "keyStoreEntry":Ljava/security/KeyStore$Entry;
    .end local v5    # "encryptedBytes":[B
    .end local v6    # "encryptedString":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 307
    .local v4, "e":Ljava/security/InvalidKeyException;
    move-object v7, v4

    :try_start_2
    invoke-virtual {v7}, Ljava/security/InvalidKeyException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/security/cert/CertificateExpiredException;

    if-nez v7, :cond_1

    const-string/jumbo v7, "android.security.keystore.KeyExpiredException"

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 308
    :cond_1
    const-string/jumbo v7, "AppCenter"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Alias expired: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    iget v9, v9, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    move-object v7, v2

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    const/4 v9, 0x1

    xor-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    .line 310
    move-object v7, v0

    move-object v8, v3

    move-object v9, v2

    iget v9, v9, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    invoke-direct {v7, v8, v9}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 313
    .local v5, "newAlias":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 314
    const-string/jumbo v7, "AppCenter"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Deleting alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 319
    :cond_2
    const-string/jumbo v7, "AppCenter"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Creating alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mContext:Landroid/content/Context;

    invoke-interface {v7, v8, v9, v10}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->generateKey(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;Ljava/lang/String;Landroid/content/Context;)V

    .line 323
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 325
    .end local v5    # "newAlias":Ljava/lang/String;
    :cond_3
    move-object v7, v4

    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 328
    .end local v2    # "handlerEntry":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;
    .end local v3    # "handler":Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
    .end local v4    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 331
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "AppCenter"

    const-string/jumbo v8, "Failed to encrypt data."

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    move-object v7, v1

    move-object v0, v7

    goto/16 :goto_0
.end method

.method getCryptoFactory()Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    return-object v0
.end method
