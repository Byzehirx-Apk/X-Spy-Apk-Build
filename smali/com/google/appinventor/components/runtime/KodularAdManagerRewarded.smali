.class public Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "add description in OdeMessage "
    iconName = "images/kodularRewarded.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesActivities;
    activities = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            configChanges = "keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize"
            name = "com.google.android.gms.ads.AdActivity"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "play-services-ads.jar",
        "play-services-ads.aar",
        "browser.jar",
        "browser.aar",
        "play-services-ads-base.jar",
        "play-services-ads-base.aar",
        "play-services-ads-identifier.jar",
        "play-services-ads-identifier.aar",
        "play-services-ads-lite.jar",
        "play-services-ads-lite.aar",
        "play-services-basement.jar",
        "play-services-basement.aar",
        "play-services-gass.jar",
        "play-services-gass.aar",
        "play-services-measurement-sdk-api.jar",
        "play-services-measurement-sdk-api.aar",
        "play-services-measurement-sdk.jar",
        "play-services-measurement-sdk.aar",
        "play-services-measurement-impl.jar",
        "play-services-measurement-impl.aar",
        "play-services-measurement-base.jar",
        "play-services-measurement-base.aar",
        "play-services-measurement-api.jar",
        "play-services-measurement-api.aar",
        "play-services-measurement.jar",
        "play-services-measurement.aar",
        "ump.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.ACCESS_COARSE_LOCATION",
        "android.permission.ACCESS_FINE_LOCATION"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager;

.field private kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 103
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 104
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->context:Landroid/content/Context;

    .line 105
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->activity:Landroid/app/Activity;

    .line 106
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 107
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->context:Landroid/content/Context;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAdManager;-><init>(Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    .line 108
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;-><init>(Landroid/app/Activity;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    .line 109
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->context:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)Lcom/google/appinventor/components/runtime/util/KodularAdManager;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)Z
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->testMode:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public FailedToLoad(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an ad could not be loaded."
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "FailedToLoad"

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

    .line 193
    return-void
.end method

.method public FailedToShow(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an ad could not be displayd to the user."
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "FailedToShow"

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

    .line 198
    return-void
.end method

.method public Load()V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a rewarded ad and prepares it for showing to the user."
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    new-instance v3, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;-><init>()V

    const-string/jumbo v4, "k-ad-format"

    const-string/jumbo v5, "rewarded"

    .line 131
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->build()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v3

    move-object v1, v3

    .line 134
    new-instance v3, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$1;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$1;-><init>(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)V

    move-object v2, v3

    .line 156
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    new-instance v4, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$2;-><init>(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setOnValidationResultListener(Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;)V

    .line 169
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->startContentValidation(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public Loaded()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an ad was loaded successfully."
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "Loaded"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 203
    return-void
.end method

.method public ReadyToReward()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when the user has watched the ad and is now ready to receive a reward."
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "ReadyToReward"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 208
    return-void
.end method

.method public Show()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Displays a previously loaded interstitial ad."
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v1, :cond_0

    .line 175
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$3;-><init>(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string/jumbo v1, "KodularAdManagerRewarded"

    const-string/jumbo v2, "The rewarded ad wasn\'t ready yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 186
    move-object v1, v0

    const-string/jumbo v2, "Could not show ad: No ad loaded!"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->FailedToShow(Ljava/lang/String;)V

    .line 188
    goto :goto_0
.end method

.method public TestMode(Z)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->testMode:Z

    .line 117
    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->IsCompanion()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/KodularAdsUtil;->guessSelfDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    .line 122
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 123
    move-object v3, v5

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v4

    .line 124
    move-object v4, v3

    invoke-virtual {v4}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 125
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->activity:Landroid/app/Activity;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->context:Landroid/content/Context;

    move v6, v1

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->request(Landroid/app/Activity;Landroid/content/Context;Z)V

    .line 126
    return-void

    .line 120
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    goto :goto_0
.end method
