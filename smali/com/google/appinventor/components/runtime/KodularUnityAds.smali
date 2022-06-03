.class public Lcom/google/appinventor/components/runtime/KodularUnityAds;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "...in ode messages file"
    helpUrl = "https://docs.kodular.io/components/monetization/unity-ads_ads/"
    iconName = "images/unityads.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/KodularUnityAds$a;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds$a;

.field private kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

.field private kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

.field private nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:Ljava/lang/String;

.field private sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:[Ljava/lang/String;

.field private testMode:Z

.field private uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 45
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:Ljava/lang/String;

    .line 46
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Ljava/lang/String;

    .line 47
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->testMode:Z

    .line 48
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:Z

    .line 259
    move-object v2, v0

    const/16 v3, 0x1c

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "at"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "be"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "bg"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    const-string/jumbo v6, "cy"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    const-string/jumbo v6, "cz"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    const-string/jumbo v6, "de"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x6

    const-string/jumbo v6, "dk"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x7

    const-string/jumbo v6, "ee"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x8

    const-string/jumbo v6, "es"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x9

    const-string/jumbo v6, "fi"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xa

    const-string/jumbo v6, "fr"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xb

    const-string/jumbo v6, "gb"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xc

    const-string/jumbo v6, "gr"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xd

    const-string/jumbo v6, "hr"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xe

    const-string/jumbo v6, "hu"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xf

    const-string/jumbo v6, "ie"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x10

    const-string/jumbo v6, "it"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x11

    const-string/jumbo v6, "lt"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x12

    const-string/jumbo v6, "lu"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x13

    const-string/jumbo v6, "lv"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x14

    const-string/jumbo v6, "mt"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x15

    const-string/jumbo v6, "nl"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x16

    const-string/jumbo v6, "pl"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x17

    const-string/jumbo v6, "pt"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x18

    const-string/jumbo v6, "ro"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x19

    const-string/jumbo v6, "se"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x1a

    const-string/jumbo v6, "si"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x1b

    const-string/jumbo v6, "sk"

    aput-object v6, v4, v5

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:[Ljava/lang/String;

    .line 61
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 62
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->context:Landroid/content/Context;

    .line 63
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->activity:Landroid/app/Activity;

    .line 64
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 65
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 66
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularUnityAds$a;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularUnityAds$a;-><init>(Lcom/google/appinventor/components/runtime/KodularUnityAds;B)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds$a;

    .line 68
    const-string/jumbo v2, "Unity Ads"

    const-string/jumbo v3, "Kodular Unity Ads created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 70
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularUnityAds;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;-><init>(Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    .line 72
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularUnityAds;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;-><init>(Landroid/app/Activity;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    .line 73
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularUnityAds$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularUnityAds$1;-><init>(Lcom/google/appinventor/components/runtime/KodularUnityAds;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setOnValidationResultListener(Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;)V

    .line 101
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularUnityAds;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularUnityAds;->activity:Landroid/app/Activity;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularUnityAds;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularUnityAds;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularUnityAds;)Z
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularUnityAds;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public AdClosed(Ljava/lang/String;ZZ)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was closed."
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    const-string/jumbo v5, "AdClosed"

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

    move v9, v2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

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

    .line 222
    return-void
.end method

.method public AdOpened(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was opened."
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AdOpened"

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

    .line 217
    return-void
.end method

.method public AdStarted(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was started."
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AdStarted"

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

    .line 227
    return-void
.end method

.method public Error(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed. The message will display the reason for why the ad failed."
    .end annotation

    .prologue
    .line 205
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

    .line 206
    return-void
.end method

.method public GameID()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularUnityAds;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public GameID(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public IsReady()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the ad is finished loading and can now be shown."
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isReady()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public PlacementID()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularUnityAds;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Ljava/lang/String;

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
    .line 200
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public ShowAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows an ad to the user."
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularUnityAds;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->startContentValidation(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public TestMode(Z)V
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
    .line 232
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds;->testMode:Z

    .line 233
    return-void
.end method

.method public TestMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularUnityAds;->testMode:Z

    move v0, v1

    return v0
.end method

.method public onInitialize()V
    .locals 9

    .prologue
    .line 154
    move-object v0, p0

    move-object v4, v0

    move-object v1, v4

    .line 1103
    new-instance v4, Lcom/unity3d/ads/metadata/MetaData;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularUnityAds;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/unity3d/ads/metadata/MetaData;-><init>(Landroid/content/Context;)V

    move-object v2, v4

    .line 1104
    move-object v4, v1

    .line 1241
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularUnityAds;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 1242
    move-object v3, v5

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1243
    move-object v4, v3

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1244
    const-string/jumbo v4, "Unity Ads"

    const-string/jumbo v5, "Current user country is: "

    move-object v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1246
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularUnityAds;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1247
    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    move v1, v4

    .line 1248
    const-string/jumbo v4, "Unity Ads"

    const-string/jumbo v5, "Current user is in EUROPE: "

    move v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1249
    move v4, v1

    .line 1104
    :goto_0
    if-eqz v4, :cond_2

    .line 1105
    move-object v4, v2

    const-string/jumbo v5, "gdpr.consent"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lcom/unity3d/ads/metadata/MetaData;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    .line 1109
    :goto_1
    move-object v4, v2

    invoke-virtual {v4}, Lcom/unity3d/ads/metadata/MetaData;->commit()V

    .line 155
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->GameID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->GameID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    :cond_0
    move-object v4, v0

    const-string/jumbo v5, "The game id can not be empty."

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->Error(Ljava/lang/String;)V

    .line 168
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularUnityAds;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds$a;

    invoke-static {v4}, Lcom/unity3d/ads/UnityAds;->addListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 169
    return-void

    .line 1253
    :cond_1
    const-string/jumbo v4, "Unity Ads"

    const-string/jumbo v5, "It was not possible to get the country code. We returned the value true as default to cover the EU privacy policy."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1255
    const/4 v4, 0x1

    goto :goto_0

    .line 1107
    :cond_2
    move-object v4, v2

    const-string/jumbo v5, "gdpr.consent"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lcom/unity3d/ads/metadata/MetaData;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    .line 158
    :cond_3
    new-instance v4, Ljava/util/Random;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularUnityAds;->kodularAdsCommission:Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    const-string/jumbo v6, "unity"

    const-string/jumbo v7, "interstitial"

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->getCommision(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4

    .line 160
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/KodularUnityAds;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:Z

    .line 161
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularUnityAds;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "3140736"

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->TestMode()Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_2

    .line 164
    :cond_4
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/KodularUnityAds;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:Z

    .line 165
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularUnityAds;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->GameID()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->TestMode()Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_2
.end method
