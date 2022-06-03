.class public final Lcom/google/appinventor/components/runtime/AdmobBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "AdMob Banner component"
    iconName = "images/admob.png"
    nonVisible = false
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
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
        "unity-ads.jar",
        "unity-ads.aar",
        "startapp-ads.jar"
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

.field private adUnitId:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

.field private isCompanion:Z

.field private kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

.field private kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

.field private l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Z

.field private linearLayout:Landroid/widget/LinearLayout;

.field private mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Z

.field private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 9

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 79
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->isCompanion:Z

    .line 80
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->testMode:Z

    .line 81
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Z

    .line 89
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Z

    .line 90
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Z

    .line 94
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    .line 99
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 100
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->context:Landroid/content/Context;

    .line 101
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->activity:Landroid/app/Activity;

    .line 102
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 104
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 105
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 106
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 108
    move-object v3, v0

    const-string/jumbo v4, "ca-app-pub-3940256099942544/6300978111"

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->adUnitId:Ljava/lang/String;

    .line 110
    move-object v3, v0

    new-instance v4, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/AdmobBanner;->context:Landroid/content/Context;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/AdmobBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;-><init>(Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    .line 111
    move-object v3, v0

    new-instance v4, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/AdmobBanner;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    .line 112
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    new-instance v4, Lcom/google/appinventor/components/runtime/AdmobBanner$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/AdmobBanner$1;-><init>(Lcom/google/appinventor/components/runtime/AdmobBanner;)V

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->setOnAdsSwitcherListener(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;)V

    .line 129
    move-object v3, v0

    new-instance v4, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/AdmobBanner;->context:Landroid/content/Context;

    sget-object v7, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->TYPE_AD_MOB_BANNER:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    .line 130
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    new-instance v4, Lcom/google/appinventor/components/runtime/AdmobBanner$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/AdmobBanner$2;-><init>(Lcom/google/appinventor/components/runtime/AdmobBanner;)V

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setOnConsentListener(Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection$OnConsentListener;)V

    .line 137
    move-object v3, v0

    new-instance v4, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/AdmobBanner;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;-><init>(Landroid/app/Activity;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    .line 138
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    new-instance v4, Lcom/google/appinventor/components/runtime/AdmobBanner$3;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/AdmobBanner$3;-><init>(Lcom/google/appinventor/components/runtime/AdmobBanner;)V

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setOnValidationResultListener(Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;)V

    .line 159
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v3, v3, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v3, :cond_0

    .line 160
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->isCompanion:Z

    .line 163
    :cond_0
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 1174
    move-object v1, v4

    new-instance v4, Landroid/widget/LinearLayout;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/AdmobBanner;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->linearLayout:Landroid/widget/LinearLayout;

    .line 1176
    move-object v3, v1

    new-instance v4, Lcom/google/android/gms/ads/AdView;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/AdmobBanner;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

    .line 1177
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 1179
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 1180
    move-object v2, v4

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1181
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1184
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

    new-instance v4, Lcom/google/appinventor/components/runtime/AdmobBanner$4;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/AdmobBanner$4;-><init>(Lcom/google/appinventor/components/runtime/AdmobBanner;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 1223
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setAdView(Lcom/google/android/gms/ads/AdView;)V

    .line 1225
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->linearLayout:Landroid/widget/LinearLayout;

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/LinearLayout;Lcom/google/android/gms/ads/AdView;)V

    .line 1226
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 164
    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    move v0, p0

    move v1, v0

    .line 1239
    if-nez v1, :cond_0

    .line 1240
    const-string/jumbo v1, "Something happened internally; for instance, an invalid response was received from the ad server."

    move-object v0, v1

    .line 1246
    :goto_0
    return-object v0

    .line 1241
    :cond_0
    move v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1242
    const-string/jumbo v1, "The ad request was invalid; for instance, the ad unit ID was incorrect."

    move-object v0, v1

    goto :goto_0

    .line 1243
    :cond_1
    move v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1244
    const-string/jumbo v1, "The ad request was unsuccessful due to network connectivity."

    move-object v0, v1

    goto :goto_0

    .line 1245
    :cond_2
    move v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1246
    const-string/jumbo v1, "The ad request was successful, but no ad was returned due to lack of ad inventory."

    move-object v0, v1

    goto :goto_0

    .line 1248
    :cond_3
    const-string/jumbo v1, "No error message found."

    .line 73
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Landroid/widget/LinearLayout;Lcom/google/android/gms/ads/AdView;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/LinearLayout;Lcom/google/android/gms/ads/AdView;)V

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/AdmobBanner;)Z
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->testMode:Z

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobBanner;)Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->linearLayout:Landroid/widget/LinearLayout;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobBanner;)Lcom/google/android/gms/ads/AdView;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobBanner;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobBanner;)Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    move-object v0, v1

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/LinearLayout;Lcom/google/android/gms/ads/AdView;)V
    .locals 8

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 231
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 232
    move-object v2, v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobBanner;)Z
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public final AdClosed()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was closed."
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdClosed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 312
    return-void
.end method

.method public final AdEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property must be set to true to receive ads."
    .end annotation

    .prologue
    .line 317
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Z

    .line 318
    return-void
.end method

.method public final AdEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Z

    move v0, v1

    return v0
.end method

.method public final AdFailedToLoad(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed to load. The message will display the error code and error message."
    .end annotation

    .prologue
    .line 301
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

    .line 302
    return-void
.end method

.method public final AdLoaded()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request was loaded."
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdLoaded"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 297
    return-void
.end method

.method public final AdOpened()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was opened."
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdOpened"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 307
    return-void
.end method

.method public final AdUnitId()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set Ad Unit ID"
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->adUnitId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final AdUnitId(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "ca-app-pub-3940256099942544/6300978111"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->adUnitId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->adUnitId:Ljava/lang/String;

    const-string/jumbo v3, "ca-app-pub-3940256099942544/6300978111"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->adUnitId:Ljava/lang/String;

    .line 286
    :cond_1
    return-void
.end method

.method public final ConsentDevelopmentMode(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled you will see the consent dialog no matter if you are located in Europe or not. Please use this option only in development.  If this setting is enabled ALL taken consents will not be saved."
    .end annotation

    .prologue
    .line 430
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setDevelopmentMode(Z)V

    .line 431
    return-void
.end method

.method public final ConsentDevelopmentMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 435
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->getDevelopmentMode()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final ConsentMessage()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 404
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final ConsentMessage(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Can we continue to use your data to tailor ads for you?"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The message for the consent dialog."
    .end annotation

    .prologue
    .line 399
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setMessage(Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public final ConsentTitle()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 392
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->getTitle()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final ConsentTitle(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Data Protection"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The title for the consent dialog."
    .end annotation

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setTitle(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public final Height()I
    .locals 2

    .prologue
    .line 359
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdmobBanner;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final Height(I)V
    .locals 5

    .prologue
    .line 364
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 365
    return-void
.end method

.method public final HeightPercent(I)V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public final LoadAd()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a new AdMob Banner ad."
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    move-object v2, v0

    new-instance v3, Ljava/util/Random;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobBanner;->kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    const-string/jumbo v5, "admob"

    const-string/jumbo v6, "banner"

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->getCommision(Ljava/lang/String;Ljava/lang/String;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    .line 255
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Z

    if-nez v2, :cond_1

    .line 256
    move-object v2, v0

    const/16 v3, 0x194

    const-string/jumbo v4, "Make sure you enabled the ad in the component properties."

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/AdmobBanner;->AdFailedToLoad(ILjava/lang/String;)V

    .line 257
    .line 277
    :goto_1
    return-void

    .line 254
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 259
    :cond_1
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->testMode:Z

    if-eqz v2, :cond_3

    .line 260
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    .line 261
    move-object v1, v3

    const-string/jumbo v3, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    .line 262
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/KodularAdsUtil;->guessSelfDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    .line 263
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Z

    if-nez v2, :cond_2

    .line 264
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

    const-string/jumbo v3, "ca-app-pub-3940256099942544/6300978111"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 265
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Z

    .line 267
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 268
    goto :goto_1

    .line 271
    :cond_3
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Z

    if-nez v2, :cond_4

    .line 272
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 273
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Z

    .line 276
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->startContentValidation(Ljava/lang/String;)V

    .line 277
    goto :goto_1
.end method

.method public final OnConsentChanged(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the consent was changed."
    .end annotation

    .prologue
    .line 415
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

    .line 416
    return-void
.end method

.method public final PersonalizedResult()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current personalized consent. If true user has consent to personalized ads."
    .end annotation

    .prologue
    .line 421
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->getPersonalizedResult()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final RevokeConsent()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes the user\'s consent. Useful if you want to test the consent dialog in development."
    .end annotation

    .prologue
    .line 410
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->RevokeConsent()V

    .line 411
    return-void
.end method

.method public final TestMode(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If you want to test the component then that this property to true. Then you will receive test ads."
        userVisible = false
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->testMode:Z

    .line 329
    return-void
.end method

.method public final TestMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->testMode:Z

    move v0, v1

    return v0
.end method

.method public final Width()I
    .locals 2

    .prologue
    .line 369
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdmobBanner;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final Width(I)V
    .locals 5

    .prologue
    .line 374
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdmobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 375
    return-void
.end method

.method public final WidthPercent(I)V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->linearLayout:Landroid/widget/LinearLayout;

    move-object v0, v1

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

    if-eqz v1, :cond_0

    .line 353
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 355
    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

    if-eqz v1, :cond_0

    .line 339
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 341
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 345
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

    if-eqz v1, :cond_0

    .line 346
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 348
    :cond_0
    return-void
.end method
