.class final Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;
.super Lcom/amazon/device/ads/DefaultAdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)V
    .locals 4

    .prologue
    .line 348
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    move-object v2, v0

    invoke-direct {v2}, Lcom/amazon/device/ads/DefaultAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 4

    .prologue
    .line 351
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "AdAmazonInterstitial"

    const-string/jumbo v3, "Ad collapsed."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 352
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdCollapsed()V

    .line 353
    return-void
.end method

.method public final onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 4

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "AdAmazonInterstitial"

    const-string/jumbo v3, "Ad onAdDismissed finished"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 377
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdClosed()V

    .line 378
    return-void
.end method

.method public final onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 4

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "AdAmazonInterstitial"

    const-string/jumbo v3, "Ad expanded."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 357
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdExpanded()V

    .line 358
    return-void
.end method

.method public final onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 8

    .prologue
    .line 361
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v3, "AdAmazonInterstitial"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Ad failed to load. Code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    invoke-virtual {v5}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 363
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;Z)Z

    move-result v3

    .line 364
    move-object v3, v2

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 365
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    move-object v4, v2

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdError$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public final onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 7

    .prologue
    .line 369
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v3, "Amazon"

    const-string/jumbo v4, "Interstitial"

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 370
    const-string/jumbo v3, "AdAmazonInterstitial"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v5}, Lcom/amazon/device/ads/AdProperties;->getAdType()Lcom/amazon/device/ads/AdProperties$AdType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/device/ads/AdProperties$AdType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ad loaded successfully."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 371
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;Z)Z

    move-result v3

    .line 372
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdLoaded()V

    .line 373
    return-void
.end method
