.class public Lcom/google/appinventor/components/runtime/LeadBolt;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "LeadBolt is a non-visible component allowing you to show Network and Rewarded ads."
    helpUrl = "https://docs.kodular.io/components/monetization/leadbolt/"
    iconName = "images/leadbolt.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "AppTracker.jar",
        "AdMobAppTracker.jar",
        "unity-ads.aar",
        "unity-ads.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation


# instance fields
.field private MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Z

.field private bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Z

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Z

.field private ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/apptracker/android/listener/AppModuleListener;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

.field private kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

.field private nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Z

.field private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

.field private sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 54
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    .line 55
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Z

    .line 60
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    .line 61
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Z

    .line 62
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Z

    .line 63
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Z

    .line 65
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Z

    .line 250
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/LeadBolt$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/LeadBolt$3;-><init>(Lcom/google/appinventor/components/runtime/LeadBolt;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/apptracker/android/listener/AppModuleListener;

    .line 74
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 75
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    .line 76
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    move-object v6, v1

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;-><init>(Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    .line 78
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    .line 79
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    new-instance v3, Lcom/google/appinventor/components/runtime/LeadBolt$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/LeadBolt$1;-><init>(Lcom/google/appinventor/components/runtime/LeadBolt;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->setOnAdsSwitcherListener(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;)V

    .line 103
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    .line 104
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    new-instance v3, Lcom/google/appinventor/components/runtime/LeadBolt$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/LeadBolt$2;-><init>(Lcom/google/appinventor/components/runtime/LeadBolt;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->setOnAdsSwitcherListener(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;)V

    .line 131
    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/LeadBolt;)Z
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Z

    move v0, v1

    return v0
.end method

.method static synthetic hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/LeadBolt;)Z
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Z

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LeadBolt;)Z
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Z

    move v0, v1

    return v0
.end method

.method private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Z

    if-eqz v2, :cond_0

    .line 135
    .line 145
    :goto_0
    return-void

    .line 137
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/apptracker/android/listener/AppModuleListener;

    invoke-static {v2}, Lcom/apptracker/android/track/AppTracker;->setModuleListener(Lcom/apptracker/android/listener/AppModuleListener;)V

    .line 138
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LeadBolt;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/apptracker/android/track/AppTracker;->startSession(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 139
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Z

    .line 140
    move-object v2, v1

    const-string/jumbo v3, "NetworkAd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LeadBolt;->LoadNetworkAd()V

    goto :goto_0

    .line 142
    :cond_1
    move-object v2, v1

    const-string/jumbo v3, "RewardedAd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LeadBolt;->LoadRewardedAd()V

    .line 145
    :cond_2
    goto :goto_0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/LeadBolt;)Z
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Z

    move v0, v1

    return v0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/LeadBolt;)Z
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public APIKey(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public CommissionInterstitialAdsNetwork(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "unity"
        editorType = "commission_interstitial_ads_network"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the ad network used to take the commission."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->updateNetwork(Ljava/lang/String;)V

    .line 159
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
    .line 166
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->updateNetwork(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public IsNetworkAdReady()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block after loading an ad to check whether it\'s ready to show."
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Z

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "inapp"

    invoke-static {v1}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public IsRewardedAdReady()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block after loading an ad to check whether it\'s ready to show."
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Z

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "reward"

    invoke-static {v1}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public LBCached(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when ads are loaded"
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "LBCached"

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

    .line 305
    return-void
.end method

.method public LBClicked(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when ads are clicked"
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "LBClicked"

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

    .line 300
    return-void
.end method

.method public LBClosed(Ljava/lang/String;Z)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when ads are closed"
    .end annotation

    .prologue
    .line 294
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    const-string/jumbo v4, "LBClosed"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move v8, v2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 295
    return-void
.end method

.method public LBFailed(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when ads are failed to load"
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    const-string/jumbo v5, "LBFailed"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move v9, v3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    .line 290
    return-void
.end method

.method public LBLoaded(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when ads are shown"
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "LBLoaded"

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

    .line 285
    return-void
.end method

.method public LoadNetworkAd()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to load a Network ad."
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Z

    .line 172
    new-instance v1, Ljava/util/Random;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    const-string/jumbo v3, "leadbolt"

    const-string/jumbo v4, "interstitial"

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->getCommision(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    .line 174
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->loadAd(Z)V

    .line 184
    :goto_0
    return-void

    .line 176
    :cond_1
    move-object v1, v0

    const-string/jumbo v2, "NetworkAd"

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/LeadBolt;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v1, "inapp"

    invoke-static {v1}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    const-string/jumbo v2, "inapp"

    invoke-static {v1, v2}, Lcom/apptracker/android/track/AppTracker;->loadModuleToCache(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_2
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Z

    .line 181
    const-string/jumbo v1, "LeadBolt"

    const-string/jumbo v2, "No ads ready"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 184
    goto :goto_0
.end method

.method public LoadRewardedAd()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to load a Rewarded Video ad."
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Z

    .line 208
    new-instance v1, Ljava/util/Random;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    const-string/jumbo v3, "leadbolt"

    const-string/jumbo v4, "video"

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->getCommision(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 209
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Z

    .line 210
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->loadAd(Z)V

    .line 220
    :goto_0
    return-void

    .line 212
    :cond_0
    move-object v1, v0

    const-string/jumbo v2, "RewardedAd"

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/LeadBolt;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)V

    .line 213
    const-string/jumbo v1, "reward"

    invoke-static {v1}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    const-string/jumbo v2, "reward"

    invoke-static {v1, v2}, Lcom/apptracker/android/track/AppTracker;->loadModuleToCache(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Z

    .line 217
    const-string/jumbo v1, "LeadBolt"

    const-string/jumbo v2, "No ads ready"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 220
    goto :goto_0
.end method

.method public ShowNetworkAd()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block after LoadNetworkAd to show the loaded ad."
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    if-eqz v1, :cond_1

    .line 189
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->showAd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    move-object v1, v0

    const-string/jumbo v2, ""

    const-string/jumbo v3, "Ad failed to show."

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/LeadBolt;->LBFailed(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 191
    .line 203
    :goto_0
    return-void

    .line 193
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    .line 194
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Z

    goto :goto_0

    .line 196
    :cond_1
    const-string/jumbo v1, "inapp"

    invoke-static {v1}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    const-string/jumbo v2, "inapp"

    invoke-static {v1, v2}, Lcom/apptracker/android/track/AppTracker;->loadModule(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Z

    .line 200
    const-string/jumbo v1, "LeadBolt"

    const-string/jumbo v2, "No ads ready"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 203
    goto :goto_0
.end method

.method public ShowRewardedAd()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block after LoadRewardedAd to show the loaded ad."
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Z

    if-eqz v1, :cond_1

    .line 225
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->showAd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    move-object v1, v0

    const-string/jumbo v2, ""

    const-string/jumbo v3, "Ad failed to show."

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/LeadBolt;->LBFailed(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 227
    .line 238
    :goto_0
    return-void

    .line 229
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Z

    goto :goto_0

    .line 231
    :cond_1
    const-string/jumbo v1, "reward"

    invoke-static {v1}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    const-string/jumbo v2, "reward"

    invoke-static {v1, v2}, Lcom/apptracker/android/track/AppTracker;->loadModule(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Z

    .line 235
    const-string/jumbo v1, "LeadBolt"

    const-string/jumbo v2, "No ads ready"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 238
    goto :goto_0
.end method
