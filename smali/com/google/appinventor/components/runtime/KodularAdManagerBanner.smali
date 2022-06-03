.class public final Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A visible component that displays banner ads from multiple advertisers and mediation partners"
    iconName = "images/kodularBanner.png"
    nonVisible = false
    version = 0x1
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
        "browser.jar",
        "browser.aar",
        "play-services-ads.jar",
        "play-services-ads.aar",
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

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager;

.field private kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:Z

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 10

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 107
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 108
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->context:Landroid/content/Context;

    .line 109
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->activity:Landroid/app/Activity;

    .line 110
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 111
    move-object v4, v0

    new-instance v5, Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->context:Landroid/content/Context;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/KodularAdManager;-><init>(Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    .line 112
    move-object v4, v0

    new-instance v5, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;-><init>(Landroid/app/Activity;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    .line 114
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 115
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 116
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 117
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 1229
    move-object v2, v5

    new-instance v5, Landroid/widget/LinearLayout;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->linearLayout:Landroid/widget/LinearLayout;

    .line 1230
    move-object v4, v2

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1231
    move-object v4, v2

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1235
    move-object v4, v2

    new-instance v5, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 1236
    move-object v4, v2

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/android/gms/ads/AdSize;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    sget-object v8, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x2

    sget-object v8, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x3

    sget-object v8, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    .line 1237
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 1238
    move-object v3, v5

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1239
    move-object v4, v2

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1241
    move-object v4, v2

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    new-instance v5, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$2;-><init>(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 1273
    move-object v4, v2

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->linearLayout:Landroid/widget/LinearLayout;

    move-object v5, v2

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    move-object v4, v1

    move-object v5, v0

    invoke-interface {v4, v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 119
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;)Lcom/google/android/gms/ads/admanager/AdManagerAdView;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;)Z
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->testMode:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public final FailedToLoad(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an ad could not be loaded"
    .end annotation

    .prologue
    .line 172
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

    .line 173
    return-void
.end method

.method public final Height()I
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final Height(I)V
    .locals 5

    .prologue
    .line 209
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 210
    return-void
.end method

.method public final HeightPercent(I)V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public final Load()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a banner ad and displays it"
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    new-instance v2, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;-><init>()V

    const-string/jumbo v3, "k-ad-format"

    const-string/jumbo v4, "banner"

    .line 141
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->build()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v2

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    .line 143
    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;->isTestDevice(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->testMode:Z

    if-eqz v2, :cond_0

    .line 144
    move-object v2, v0

    const-string/jumbo v3, "Could not load ad: Expected test device but got other"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->FailedToLoad(Ljava/lang/String;)V

    .line 145
    .line 168
    :goto_0
    return-void

    .line 147
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:Z

    if-nez v2, :cond_2

    .line 148
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->testMode:Z

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->IsCompanion()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    const-string/jumbo v3, "/6499/example/banner"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 153
    :goto_1
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:Z

    .line 156
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$1;-><init>(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setOnValidationResultListener(Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;)V

    .line 167
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->startContentValidation(Ljava/lang/String;)V

    .line 168
    goto :goto_0

    .line 151
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/KodularAdManager;->getAdUnit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdUnitId(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final TestMode(Z)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->testMode:Z

    .line 127
    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->IsCompanion()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/KodularAdsUtil;->guessSelfDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    .line 132
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 133
    move-object v3, v5

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v4

    .line 134
    move-object v4, v3

    invoke-virtual {v4}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 135
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->activity:Landroid/app/Activity;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->context:Landroid/content/Context;

    move v6, v1

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->request(Landroid/app/Activity;Landroid/content/Context;Z)V

    .line 136
    return-void

    .line 130
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    goto :goto_0
.end method

.method public final Width()I
    .locals 2

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final Width(I)V
    .locals 5

    .prologue
    .line 219
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 220
    return-void
.end method

.method public final WidthPercent(I)V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->linearLayout:Landroid/widget/LinearLayout;

    move-object v0, v1

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    if-eqz v1, :cond_0

    .line 197
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->destroy()V

    .line 199
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->destroy()V

    .line 200
    return-void
.end method

.method public final onPause()V
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    if-eqz v1, :cond_0

    .line 183
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->pause()V

    .line 185
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    if-eqz v1, :cond_0

    .line 190
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->resume()V

    .line 192
    :cond_0
    return-void
.end method
