.class public Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
.super Ljava/lang/Object;
.source "CryptoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecryptedData"
.end annotation


# instance fields
.field final mDecryptedData:Ljava/lang/String;

.field final mNewEncryptedData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    move-object v1, p1

    .local v1, "decryptedData":Ljava/lang/String;
    move-object v2, p2

    .local v2, "newEncryptedData":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 519
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;->mDecryptedData:Ljava/lang/String;

    .line 520
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;->mNewEncryptedData:Ljava/lang/String;

    .line 521
    return-void
.end method


# virtual methods
.method public getDecryptedData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;->mDecryptedData:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    return-object v0
.end method

.method public getNewEncryptedData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;->mNewEncryptedData:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    return-object v0
.end method
