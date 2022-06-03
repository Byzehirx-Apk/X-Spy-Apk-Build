.class public Lcom/google/appinventor/components/runtime/AdAmazon;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "AdAmazon component allows you to monetize your app. You must have a valid publisher id that can be obtained from https://developer.amazon.com. If your publisher id is invalid, the AdAmazon banner will not display on the emulator or the device."
    helpUrl = "https://docs.kodular.io/components/monetization/amazon-banner/"
    iconName = "images/amazon.png"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "amazon-ads.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.ACCESS_FINE_LOCATION",
        "android.permission.ACCESS_COARSE_LOCATION",
        "android.permission.ACCESS_WIFI_STATE"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Z

.field private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private final androidUIHandler:Landroid/os/Handler;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private havePermission:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/AdLayout;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Z

.field private kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 49
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Z

    .line 50
    move-object v2, v0

    const-string/jumbo v3, "AdAmazon"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->TAG:Ljava/lang/String;

    .line 53
    move-object v2, v0

    const-string/jumbo v3, "AmazonPublisherId"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    .line 56
    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->androidUIHandler:Landroid/os/Handler;

    .line 57
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->havePermission:Z

    .line 58
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Z

    .line 68
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 71
    move-object v2, v0

    new-instance v3, Lcom/amazon/device/ads/AdLayout;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    sget-object v6, Lcom/amazon/device/ads/AdSize;->SIZE_320x50:Lcom/amazon/device/ads/AdSize;

    invoke-direct {v4, v5, v6}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/AdLayout;

    .line 72
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/AdLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 79
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/AdLayout;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdLayout;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 81
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/AdAmazon;->TestMode(Z)V

    .line 82
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/AdAmazon;->RefreshAd(Z)V

    .line 84
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;-><init>(Landroid/app/Activity;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    .line 85
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    new-instance v3, Lcom/google/appinventor/components/runtime/AdAmazon$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/AdAmazon$1;-><init>(Lcom/google/appinventor/components/runtime/AdAmazon;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setOnValidationResultListener(Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;)V

    .line 99
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazon;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdAmazon;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazon;)Lcom/google/appinventor/components/runtime/util/KodularContentProtection;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdAmazon;->kodularContentProtection:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazon;Z)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Z)V

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Z)V
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 153
    :try_start_0
    new-instance v2, Lcom/amazon/device/ads/AdTargetingOptions;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    move-object v1, v2

    .line 154
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/AdLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdLayout;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 160
    .line 162
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 156
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "RefreshAd"

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 157
    move-object v2, v0

    const-string/jumbo v3, "PERMISSION_ERROR"

    const-string/jumbo v4, "Permission \"android.permission.ACCESS_FINE_LOCATION\" was denied but needed."

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    goto :goto_0

    .line 158
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 159
    const-string/jumbo v2, "AdAmazon"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 162
    :cond_0
    goto :goto_0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazon;)Z
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/AdAmazon;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Z

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazon;Z)Z
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/AdAmazon;->havePermission:Z

    move v0, v2

    return v0
.end method


# virtual methods
.method public AdDismissed()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a ad was dismissed."
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdDismissed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 259
    return-void
.end method

.method public AdExpanded()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a ad was expanded."
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdExpanded"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 264
    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the try to load a ad was not successful."
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "AdFailedToLoad"

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

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 269
    return-void
.end method

.method public AdLoaded()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a ad was loaded."
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdLoaded"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 274
    return-void
.end method

.method public Height()I
    .locals 2

    .prologue
    .line 278
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdAmazon;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public Height(I)V
    .locals 5

    .prologue
    .line 283
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 284
    return-void
.end method

.method public HeightPercent(I)V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public PublisherId()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdAmazon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public PublisherId(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "AmazonPublisherId"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the Amazon Ad Publisher Id and refreshes the ad."
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 110
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    .line 111
    move-object v2, v1

    invoke-static {v2}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V

    .line 112
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/AdAmazon;->RefreshAd(Z)V

    .line 113
    return-void
.end method

.method public RefreshAd(Z)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Refreshes the ad."
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Z

    .line 122
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->havePermission:Z

    if-nez v2, :cond_0

    .line 124
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/AdAmazon$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/AdAmazon$2;-><init>(Lcom/google/appinventor/components/runtime/AdAmazon;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Z)V

    .line 145
    goto :goto_0
.end method

.method public TestMode(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Z

    .line 187
    move v2, v1

    invoke-static {v2}, Lcom/amazon/device/ads/AdRegistration;->enableLogging(Z)V

    .line 189
    move v2, v1

    invoke-static {v2}, Lcom/amazon/device/ads/AdRegistration;->enableTesting(Z)V

    .line 190
    return-void
.end method

.method public TestMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Z

    move v0, v1

    return v0
.end method

.method public Width()I
    .locals 2

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdAmazon;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public Width(I)V
    .locals 5

    .prologue
    .line 293
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 294
    return-void
.end method

.method public WidthPercent(I)V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/AdLayout;

    move-object v0, v1

    return-object v0
.end method

.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 4

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Ad collapsed."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 219
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdDismissed()V

    .line 220
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 4

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Ad Dismissed."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 225
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdDismissed()V

    .line 226
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdAmazon;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Ad expanded."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 234
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdExpanded()V

    .line 235
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 8

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v3, "AmazonInterstitialAds"

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

    .line 243
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdError$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 7

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v3, "Amazon"

    const-string/jumbo v4, "Banner"

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdAmazon;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 252
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdAmazon;->TAG:Ljava/lang/String;

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

    .line 253
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdLoaded()V

    .line 254
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/AdLayout;

    if-eqz v1, :cond_0

    .line 209
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdLayout;->destroy()V

    .line 211
    :cond_0
    return-void
.end method
