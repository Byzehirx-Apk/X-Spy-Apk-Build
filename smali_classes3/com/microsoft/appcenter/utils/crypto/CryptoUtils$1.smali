.class final Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;
.super Ljava/lang/Object;
.source "CryptoUtils.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCipher(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;
    move-object v1, p1

    .local v1, "transformation":Ljava/lang/String;
    move-object v2, p2

    .local v2, "provider":Ljava/lang/String;
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    move-object v3, v4

    .line 72
    .local v3, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$2;-><init>(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;Ljavax/crypto/Cipher;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;
    return-object v0
.end method

.method public getKeyGenerator(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;
    move-object v1, p1

    .local v1, "algorithm":Ljava/lang/String;
    move-object v2, p2

    .local v2, "provider":Ljava/lang/String;
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4

    move-object v3, v4

    .line 55
    .local v3, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v4, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$1;-><init>(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;Ljavax/crypto/KeyGenerator;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;
    return-object v0
.end method
