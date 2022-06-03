.class Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;
.super Ljava/lang/Object;
.source "CryptoUtils.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CryptoHandlerEntry"
.end annotation


# instance fields
.field mAliasIndex:I

.field final mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;


# direct methods
.method constructor <init>(ILcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V
    .locals 5

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;
    move v1, p1

    .local v1, "aliasIndex":I
    move-object v2, p2

    .local v2, "cryptoHandler":Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 491
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    .line 492
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;

    .line 493
    return-void
.end method
