.class Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;
.super Ljava/lang/Object;
.source "CryptoNoOpHandler.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;ILjava/security/KeyStore$Entry;[B)[B
    .locals 6

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;
    move-object v1, p1

    .local v1, "cryptoFactory":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    move v2, p2

    .local v2, "apiLevel":I
    move-object v3, p3

    .local v3, "keyStoreEntry":Ljava/security/KeyStore$Entry;
    move-object v4, p4

    .local v4, "data":[B
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;
    return-object v0
.end method

.method public encrypt(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;ILjava/security/KeyStore$Entry;[B)[B
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;
    move-object v1, p1

    .local v1, "cryptoFactory":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    move v2, p2

    .local v2, "apiLevel":I
    move-object v3, p3

    .local v3, "keyStoreEntry":Ljava/security/KeyStore$Entry;
    move-object v4, p4

    .local v4, "data":[B
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;
    return-object v0
.end method

.method public generateKey(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "cryptoFactory"    # Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;
    const-string/jumbo v1, "None"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;
    return-object v0
.end method
