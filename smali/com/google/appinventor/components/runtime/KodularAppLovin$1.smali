.class final Lcom/google/appinventor/components/runtime/KodularAppLovin$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularAppLovin;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularAppLovin;)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZLjava/lang/String;)V
    .locals 10

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    if-eqz v4, :cond_1

    move v4, v2

    if-eqz v4, :cond_1

    .line 90
    new-instance v4, Ljava/util/Random;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;)Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    move-result-object v5

    const-string/jumbo v6, "applovin"

    const-string/jumbo v7, "interstitial"

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->getCommision(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 91
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    const-string/jumbo v5, "EbEMcQnBzVuo9cK-oUIPKlMIiouhV1uxC-HlJeLJzP0TQG80dzkM3GgicsTXJvShe-8QJ6GrvmQcPeqltqgEkG"

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;)Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v4

    .line 96
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v4

    sget-object v5, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v6, Lcom/google/appinventor/components/runtime/KodularAppLovin$1$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/KodularAppLovin$1$1;-><init>(Lcom/google/appinventor/components/runtime/KodularAppLovin$1;)V

    invoke-interface {v4, v5, v6}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 119
    :goto_1
    return-void

    .line 93
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->SdkKey()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;)Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v4

    goto :goto_0

    .line 112
    :cond_1
    move v4, v1

    if-eqz v4, :cond_2

    move v4, v2

    if-nez v4, :cond_2

    .line 113
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    const/16 v5, 0x65

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_2
    move v4, v1

    if-nez v4, :cond_3

    .line 115
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    const/16 v5, 0x66

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    const/16 v5, 0x67

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->AdFailedToLoad(ILjava/lang/String;)V

    .line 119
    goto :goto_1
.end method
