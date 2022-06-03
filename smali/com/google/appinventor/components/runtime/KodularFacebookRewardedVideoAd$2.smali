.class final Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZLjava/lang/String;)V
    .locals 10

    .prologue
    .line 107
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    if-eqz v4, :cond_1

    move v4, v2

    if-eqz v4, :cond_1

    .line 108
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;)Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->loadAd(Z)V

    .line 123
    :goto_0
    return-void

    .line 111
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    new-instance v5, Lcom/facebook/ads/RewardedVideoAd;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;)Landroid/content/Context;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->PlacementID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/facebook/ads/RewardedVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v4

    .line 112
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    .line 113
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/RewardedVideoAd;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    invoke-interface {v5, v6}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object v5

    .line 112
    invoke-virtual {v4, v5}, Lcom/facebook/ads/RewardedVideoAd;->loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V

    goto :goto_0

    .line 116
    :cond_1
    move v4, v1

    if-eqz v4, :cond_2

    move v4, v2

    if-nez v4, :cond_2

    .line 117
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    const/16 v5, 0x65

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_2
    move v4, v1

    if-nez v4, :cond_3

    .line 119
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    const/16 v5, 0x66

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    const/16 v5, 0x67

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->AdFailedToLoad(ILjava/lang/String;)V

    .line 123
    goto :goto_0
.end method
