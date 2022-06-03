.class public Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAdListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "...in ode messages file"
    helpUrl = "https://docs.kodular.io/components/monetization/facebook-rewarded/"
    iconName = "images/facebook.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "AudienceNetwork.jar",
        "AudienceNetwork.aar",
        "exoplayer.jar",
        "play-services-basement.jar",
        "play-services-basement.aar",
        "unity-ads.jar",
        "unity-ads.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/facebook/ads/RewardedVideoAd;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

.field private kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

.field private kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

.field private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 55
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Ljava/lang/String;

    .line 65
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    .line 69
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 70
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->context:Landroid/content/Context;

    .line 71
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 72
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 73
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->context:Landroid/content/Context;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;-><init>(Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    .line 75
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    .line 76
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$1;-><init>(Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->setOnAdsSwitcherListener(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;)V

    .line 103
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;-><init>(Landroid/app/Activity;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    .line 104
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$2;-><init>(Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setOnValidationResultListener(Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;)V

    .line 126
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/ads/AudienceNetworkAds;->initialize(Landroid/content/Context;)V

    .line 127
    const-string/jumbo v2, "Facebook Rewarded Video Ad"

    const-string/jumbo v3, "Kodular Facebook Rewarded Video Ad created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 128
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->context:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/facebook/ads/RewardedVideoAd;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;
    .locals 7

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/facebook/ads/RewardedVideoAd;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;)Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;)Z
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public AdClosed()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the user is about to return to the application after clicking on an ad."
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdClosed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 183
    return-void
.end method

.method public AdFailedToLoad(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed to load. The message will display the error code and error message."
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "AdFailedToLoad"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 208
    return-void
.end method

.method public AdLoaded()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad is received."
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdLoaded"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 188
    return-void
.end method

.method public AdOpened()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was opened."
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdOpened"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 203
    return-void
.end method

.method public AdVideoCompleted()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an video ad was completed."
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdVideoCompleted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 193
    return-void
.end method

.method public AdVideoStarted()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an video ad started to show content."
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdVideoStarted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 198
    return-void
.end method

.method public CommissionRewardedAdsNetwork(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "unity"
        editorType = "commission_rewarded_ads_network"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the ad network used to take the commission."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->updateNetwork(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public Error(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed. message will display the reason for why the ad failed."
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "Error"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 178
    return-void
.end method

.method public LoadAd()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a new ad."
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    new-instance v1, Ljava/util/Random;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    const-string/jumbo v3, "facebook"

    const-string/jumbo v4, "video"

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->getCommision(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 133
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    .line 137
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->startContentValidation(Ljava/lang/String;)V

    .line 138
    return-void

    .line 135
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    goto :goto_0
.end method

.method public PlacementID()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public PlacementID(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public ShowAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows an ad to the user."
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    if-eqz v1, :cond_0

    .line 143
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->showAd()Z

    move-result v1

    if-nez v1, :cond_3

    .line 144
    move-object v1, v0

    const-string/jumbo v2, "Ad failed to show."

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->Error(Ljava/lang/String;)V

    .line 145
    .line 154
    :goto_0
    return-void

    .line 148
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v1}, Lcom/facebook/ads/RewardedVideoAd;->isAdLoaded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 149
    :cond_1
    goto :goto_0

    .line 152
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v1}, Lcom/facebook/ads/RewardedVideoAd;->show()Z

    move-result v1

    .line 154
    :cond_3
    goto :goto_0
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->AdOpened()V

    .line 237
    const-string/jumbo v2, "Facebook Rewarded Video Ad"

    const-string/jumbo v3, "Facebook Rewarded Video: Video ad opened"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 238
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 5

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "Facebook"

    const-string/jumbo v3, "Rewarded Video"

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 229
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->AdLoaded()V

    .line 230
    const-string/jumbo v2, "Facebook Rewarded Video Ad"

    const-string/jumbo v3, "Facebook Rewarded Video: Video ad loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 231
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v1, :cond_0

    .line 213
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v1}, Lcom/facebook/ads/RewardedVideoAd;->destroy()V

    .line 214
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/facebook/ads/RewardedVideoAd;

    .line 216
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 8

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v3, "Facebook Rewarded Video Ad"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Facebook Rewarded Video: Video ad failed to load: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    invoke-virtual {v5}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 222
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v5}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->Error(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 4

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->AdVideoStarted()V

    .line 245
    const-string/jumbo v2, "Facebook Rewarded Video Ad"

    const-string/jumbo v3, "Facebook Rewarded Video: Video started"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 246
    return-void
.end method

.method public onRewardedVideoClosed()V
    .locals 3

    .prologue
    .line 260
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->AdClosed()V

    .line 261
    const-string/jumbo v1, "Facebook Rewarded Video Ad"

    const-string/jumbo v2, "Facebook Rewarded Video: Video ad closed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 262
    return-void
.end method

.method public onRewardedVideoCompleted()V
    .locals 3

    .prologue
    .line 252
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->AdVideoCompleted()V

    .line 253
    const-string/jumbo v1, "Facebook Rewarded Video Ad"

    const-string/jumbo v2, "Facebook Rewarded Video: Video completed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 254
    return-void
.end method
