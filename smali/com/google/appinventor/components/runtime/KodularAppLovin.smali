.class public Lcom/google/appinventor/components/runtime/KodularAppLovin;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "...in ode messages file"
    helpUrl = "https://docs.kodular.io/components/monetization/app-lovin/"
    iconName = "images/applovin.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "app-lovin.aar",
        "app-lovin.jar",
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
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation


# instance fields
.field private ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:Ljava/lang/String;

.field private AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:Z

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinAd;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdk;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdkSettings;

.field private kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

.field private kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;


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

    .line 61
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin;->ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:Ljava/lang/String;

    .line 69
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin;->AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:Z

    .line 79
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 80
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 81
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin;->context:Landroid/content/Context;

    .line 82
    move-object v2, v0

    new-instance v3, Lcom/applovin/sdk/AppLovinSdkSettings;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdkSettings;

    .line 83
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularAppLovin;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;-><init>(Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin;->kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    .line 85
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;-><init>(Landroid/app/Activity;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    .line 86
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;-><init>(Lcom/google/appinventor/components/runtime/KodularAppLovin;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setOnValidationResultListener(Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;)V

    .line 122
    const-string/jumbo v2, "AppLovin"

    const-string/jumbo v3, "Kodular AppLovin created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 123
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->context:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;
    .locals 7

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinAd;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdk;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 7

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdk;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;)Lcom/applovin/sdk/AppLovinSdkSettings;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdkSettings;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;)Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    move v0, p0

    move v1, v0

    .line 1237
    sparse-switch v1, :sswitch_data_0

    .line 1296
    const-string/jumbo v1, "No error message available"

    .line 58
    move-object v0, v1

    .line 1293
    :goto_0
    return-object v0

    .line 1239
    :sswitch_0
    const-string/jumbo v1, "Indicates that the SDK is currently disabled."

    move-object v0, v1

    goto :goto_0

    .line 1242
    :sswitch_1
    const-string/jumbo v1, "Indicates that the network conditions prevented the SDK from receiving an ad."

    move-object v0, v1

    goto :goto_0

    .line 1245
    :sswitch_2
    const-string/jumbo v1, "Indicates that the device had no network connectivity at the time of an ad request, either due to airplane mode or no service."

    move-object v0, v1

    goto :goto_0

    .line 1248
    :sswitch_3
    const-string/jumbo v1, "Indicates that no ads are currently eligible for your device."

    move-object v0, v1

    goto :goto_0

    .line 1251
    :sswitch_4
    const-string/jumbo v1, "Indicates that there has been a failure to render an ad on screen."

    move-object v0, v1

    goto :goto_0

    .line 1254
    :sswitch_5
    const-string/jumbo v1, "Indicates that the zone provided is invalid; the zone needs to be added to your AppLovin account or may still be propagating to our servers."

    move-object v0, v1

    goto :goto_0

    .line 1257
    :sswitch_6
    const-string/jumbo v1, "Indicates that the provided ad token is invalid; ad token must be returned from AppLovin S2S integration."

    move-object v0, v1

    goto :goto_0

    .line 1260
    :sswitch_7
    const-string/jumbo v1, "Indicates that the system is in unexpected state."

    move-object v0, v1

    goto :goto_0

    .line 1263
    :sswitch_8
    const-string/jumbo v1, "Indicates that the developer called for a rewarded video before one was available. Note: This code is only possible when working with rewarded videos."

    move-object v0, v1

    goto :goto_0

    .line 1266
    :sswitch_9
    const-string/jumbo v1, "Indicates that an unknown server-side error occurred. Note: This code is only possible when working with rewarded videos."

    move-object v0, v1

    goto :goto_0

    .line 1269
    :sswitch_a
    const-string/jumbo v1, "Indicates that a reward validation requested timed out (usually due to poor connectivity). Note: This code is only possible when working with rewarded videos."

    move-object v0, v1

    goto :goto_0

    .line 1272
    :sswitch_b
    const-string/jumbo v1, "Indicates that the user exited out of the ad early. You may or may not wish to grant a reward depending on your preference. Note: This code is only possible when working with rewarded ads."

    move-object v0, v1

    goto :goto_0

    .line 1275
    :sswitch_c
    const-string/jumbo v1, "Indicates that a AppLovin servers have returned an invalid response"

    move-object v0, v1

    goto :goto_0

    .line 1278
    :sswitch_d
    const-string/jumbo v1, "Indicates that a postback URL you attempted to dispatch was empty or nil."

    move-object v0, v1

    goto :goto_0

    .line 1281
    :sswitch_e
    const-string/jumbo v1, "Indicates that there was an error while attempting to render a native ad."

    move-object v0, v1

    goto :goto_0

    .line 1284
    :sswitch_f
    const-string/jumbo v1, "Indicates that the impression has already been tracked."

    move-object v0, v1

    goto :goto_0

    .line 1287
    :sswitch_10
    const-string/jumbo v1, "Indicates that an attempt to cache a resource to the filesystem failed; the device may be out of space."

    move-object v0, v1

    goto :goto_0

    .line 1290
    :sswitch_11
    const-string/jumbo v1, "Indicates that an attempt to cache an image resource to the filesystem failed; the device may be out of space."

    move-object v0, v1

    goto :goto_0

    .line 1293
    :sswitch_12
    const-string/jumbo v1, "Indicates that an attempt to cache a video resource to the filesystem failed; the device may be out of space."

    move-object v0, v1

    goto :goto_0

    .line 1237
    nop

    :sswitch_data_0
    .sparse-switch
        -0x384 -> :sswitch_d
        -0x320 -> :sswitch_c
        -0x2be -> :sswitch_f
        -0x2bc -> :sswitch_e
        -0x258 -> :sswitch_b
        -0x1f4 -> :sswitch_a
        -0x190 -> :sswitch_9
        -0x12c -> :sswitch_8
        -0xca -> :sswitch_12
        -0xc9 -> :sswitch_11
        -0xc8 -> :sswitch_10
        -0x67 -> :sswitch_2
        -0x66 -> :sswitch_1
        -0x16 -> :sswitch_0
        -0x8 -> :sswitch_6
        -0x7 -> :sswitch_5
        -0x6 -> :sswitch_4
        -0x1 -> :sswitch_7
        0xcc -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public AdClosed()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was closed."
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdClosed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 192
    return-void
.end method

.method public AdFailedToLoad(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed to load. The message will display the error code and error message."
    .end annotation

    .prologue
    .line 201
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

    .line 202
    return-void
.end method

.method public AdLoaded()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad is received."
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdLoaded"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 182
    return-void
.end method

.method public AdOpened()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was opened."
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdOpened"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 187
    return-void
.end method

.method public AdStarted()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was started."
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdStarted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 197
    return-void
.end method

.method public Error(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed. The message will display the reason for why the ad failed."
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "Error"

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

    .line 177
    return-void
.end method

.method public IsEuropeanUser()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the current app user is located in europe. If true you must ask the user as example in a dialog if he give his consent for personalized ads."
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/KodularGDPRUtil;->isRequestLocationInEurope(Landroid/content/Context;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public LoadAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a new ad."
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->startContentValidation(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public SdkKey()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public SdkKey(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin;->ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public ShowAd()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows an ad to the user."
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdk;

    if-nez v1, :cond_0

    .line 133
    .line 161
    :goto_0
    return-void

    .line 135
    :cond_0
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdk;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularAppLovin;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    .line 136
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularAppLovin$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/KodularAppLovin$2;-><init>(Lcom/google/appinventor/components/runtime/KodularAppLovin;)V

    invoke-interface {v1, v2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 144
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularAppLovin$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/KodularAppLovin$3;-><init>(Lcom/google/appinventor/components/runtime/KodularAppLovin;)V

    invoke-interface {v1, v2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 158
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v1, :cond_1

    .line 159
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v1, v2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    .line 161
    :cond_1
    goto :goto_0
.end method

.method public TestMode(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If you want to test the component then that this property to true. Then you will receive test ads."
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdkSettings;

    if-eqz v2, :cond_0

    .line 208
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdkSettings;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/applovin/sdk/AppLovinSdkSettings;->setTestAdsEnabled(Z)V

    .line 210
    :cond_0
    return-void
.end method

.method public TestMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdkSettings;

    if-eqz v1, :cond_0

    .line 215
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->isTestAdsEnabled()Z

    move-result v1

    move v0, v1

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public UserConsent(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true the user allowed the ad network to show personalized ads. You only need to request the consent from european users."
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin;->AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:Z

    .line 223
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularAppLovin;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    .line 224
    return-void
.end method

.method public UserConsent()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularAppLovin;->AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:Z

    move v0, v1

    return v0
.end method
