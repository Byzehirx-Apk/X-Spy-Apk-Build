.class public Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "add description in OdeMessage "
    iconName = "images/admob.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
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
        "play-services-gass.aar"
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
.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Z

.field private activity:Landroid/app/Activity;

.field public adUnitId:Ljava/lang/String;

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

.field private isCompanion:Z

.field private kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

.field private kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 68
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Z

    .line 70
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->isCompanion:Z

    .line 71
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->testMode:Z

    .line 79
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 80
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->activity:Landroid/app/Activity;

    .line 81
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->context:Landroid/content/Context;

    .line 82
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 84
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 85
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 86
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 89
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 90
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 92
    move-object v2, v0

    const-string/jumbo v3, "ca-app-pub-3940256099942544/5224354917"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->adUnitId:Ljava/lang/String;

    .line 94
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->context:Landroid/content/Context;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;-><init>(Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    .line 96
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->context:Landroid/content/Context;

    sget-object v6, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->TYPE_AD_MOB_REWARDED_VIDEO:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    .line 97
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setRewardedVideoAd(Lcom/google/android/gms/ads/reward/RewardedVideoAd;)V

    .line 98
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    new-instance v3, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo$1;-><init>(Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setOnConsentListener(Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection$OnConsentListener;)V

    .line 105
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;-><init>(Landroid/app/Activity;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    .line 106
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    new-instance v3, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo$2;-><init>(Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setOnValidationResultListener(Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;)V

    .line 127
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;)Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;)Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public AdClosed()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was closed."
    .end annotation

    .prologue
    .line 272
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdClosed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 273
    return-void
.end method

.method public AdEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property must be set to true to receive ads."
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Z

    .line 162
    return-void
.end method

.method public AdEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Z

    move v0, v1

    return v0
.end method

.method public AdFailedToLoad(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed to load. The message will display the error code and error message."
    .end annotation

    .prologue
    .line 267
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

    .line 268
    return-void
.end method

.method public AdLeftApplication()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad leaves the application (e.g., to go to the browser)."
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdLeftApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 293
    return-void
.end method

.method public AdLoaded()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request was loaded."
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdLoaded"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 298
    return-void
.end method

.method public AdOpened()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was opened."
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdOpened"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 278
    return-void
.end method

.method public AdUnitId()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->adUnitId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public AdUnitId(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "ca-app-pub-3940256099942544/5224354917"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->adUnitId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->adUnitId:Ljava/lang/String;

    const-string/jumbo v3, "ca-app-pub-3940256099942544/5224354917"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->adUnitId:Ljava/lang/String;

    .line 140
    :cond_1
    return-void
.end method

.method public AdVideoCompleted()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an video ad was completed."
    .end annotation

    .prologue
    .line 287
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdVideoCompleted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 288
    return-void
.end method

.method public AdVideoStarted()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an video ad started to show content."
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdVideoStarted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 283
    return-void
.end method

.method public ConsentDevelopmentMode(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled you will see the consent dialog no matter if you are located in Europe or not. Please use this option only in development.  If this setting is enabled ALL taken consents will not be saved."
    .end annotation

    .prologue
    .line 369
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setDevelopmentMode(Z)V

    .line 370
    return-void
.end method

.method public ConsentDevelopmentMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 374
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->getDevelopmentMode()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public ConsentMessage()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 343
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public ConsentMessage(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Can we continue to use your data to tailor ads for you?"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The message for the consent dialog."
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setMessage(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public ConsentTitle()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 331
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->getTitle()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public ConsentTitle(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Data Protection"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The title for the consent dialog."
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setTitle(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public LoadAd()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a new AdMob Rewarded Video ad."
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Z

    if-nez v2, :cond_0

    .line 145
    move-object v2, v0

    const/16 v3, 0x194

    const-string/jumbo v4, "Make sure you enabled the ad in the component properties."

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->AdFailedToLoad(ILjava/lang/String;)V

    .line 146
    .line 156
    :goto_0
    return-void

    .line 148
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->testMode:Z

    if-eqz v2, :cond_1

    .line 149
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 150
    move-object v1, v3

    const-string/jumbo v3, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    .line 151
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/KodularAdsUtil;->guessSelfDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    .line 152
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    const-string/jumbo v3, "ca-app-pub-3940256099942544/5224354917"

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    .line 153
    goto :goto_0

    .line 155
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->startContentValidation(Ljava/lang/String;)V

    .line 156
    goto :goto_0
.end method

.method public OnConsentChanged(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the consent was changed."
    .end annotation

    .prologue
    .line 354
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "OnConsentChanged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 355
    return-void
.end method

.method public PersonalizedResult()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current personalized consent. If true user has consent to personalized ads."
    .end annotation

    .prologue
    .line 360
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->getPersonalizedResult()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public RevokeConsent()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes the user\'s consent. Useful if you want to test the consent dialog in development."
    .end annotation

    .prologue
    .line 349
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->RevokeConsent()V

    .line 350
    return-void
.end method

.method public Rewarded(Ljava/lang/String;I)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User watched video and should be rewarded."
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    const-string/jumbo v4, "Rewarded"

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

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 263
    return-void
.end method

.method public ShowAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It will show the Video"
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->show()V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->LoadAd()V

    .line 187
    goto :goto_0
.end method

.method public TestMode(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If you want to test the component, that this property to true. After it you will receive test ads."
        userVisible = false
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->testMode:Z

    .line 173
    return-void
.end method

.method public TestMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->testMode:Z

    move v0, v1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 316
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v1, :cond_0

    .line 317
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->destroy()V

    .line 318
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 320
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 309
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v1, :cond_0

    .line 310
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->pause()V

    .line 312
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 302
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v1, :cond_0

    .line 303
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->resume()V

    .line 305
    :cond_0
    return-void
.end method

.method public onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V
    .locals 7

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/android/gms/ads/reward/RewardItem;->getType()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/android/gms/ads/reward/RewardItem;->getAmount()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->Rewarded(Ljava/lang/String;I)V

    .line 193
    const-string/jumbo v2, "AdmobRewardedVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Admob Rewarded Video: Rewarded type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/android/gms/ads/reward/RewardItem;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Rewarded amount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/android/gms/ads/reward/RewardItem;->getAmount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 194
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 3

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->AdClosed()V

    .line 205
    const-string/jumbo v1, "AdmobRewardedVideo"

    const-string/jumbo v2, "Admob Rewarded Video: Video ad closed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 206
    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .locals 8

    .prologue
    .line 210
    move-object v0, p0

    move v1, p1

    move v3, v1

    .line 1216
    if-nez v3, :cond_0

    .line 1217
    const-string/jumbo v3, "Something happened internally; for instance, an invalid response was received from the ad server."

    .line 210
    :goto_0
    move-object v2, v3

    .line 211
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->AdFailedToLoad(ILjava/lang/String;)V

    .line 212
    const-string/jumbo v3, "AdmobRewardedVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Admob Rewarded Video: Video failed to load: Error code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,Error message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 213
    return-void

    .line 1218
    :cond_0
    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1219
    const-string/jumbo v3, "The ad request was invalid; for instance, the ad unit ID was incorrect."

    goto :goto_0

    .line 1220
    :cond_1
    move v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1221
    const-string/jumbo v3, "The ad request was unsuccessful due to network connectivity."

    goto :goto_0

    .line 1222
    :cond_2
    move v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 1223
    const-string/jumbo v3, "The ad request was successful, but no ad was returned due to lack of ad inventory."

    goto :goto_0

    .line 1225
    :cond_3
    const-string/jumbo v3, "No error message found."

    goto :goto_0
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 3

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->AdLeftApplication()V

    .line 199
    const-string/jumbo v1, "AdmobRewardedVideo"

    const-string/jumbo v2, "Admob Rewarded Video: LeftApplication"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 200
    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .locals 4

    .prologue
    .line 231
    move-object v0, p0

    const-string/jumbo v1, "Admob"

    const-string/jumbo v2, "Rewarded Video"

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 232
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->AdLoaded()V

    .line 233
    const-string/jumbo v1, "AdmobRewardedVideo"

    const-string/jumbo v2, "Admob Rewarded Video: Video ad loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 234
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 3

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->AdOpened()V

    .line 239
    const-string/jumbo v1, "AdmobRewardedVideo"

    const-string/jumbo v2, "Admob Rewarded Video: Video ad opened"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 240
    return-void
.end method

.method public onRewardedVideoCompleted()V
    .locals 3

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->AdVideoCompleted()V

    .line 251
    const-string/jumbo v1, "AdmobRewardedVideo"

    const-string/jumbo v2, "Admob Rewarded Video: Video completed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 252
    return-void
.end method

.method public onRewardedVideoStarted()V
    .locals 3

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->AdVideoStarted()V

    .line 245
    const-string/jumbo v1, "AdmobRewardedVideo"

    const-string/jumbo v2, "Admob Rewarded Video: Video started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 246
    return-void
.end method
