.class public Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;,
        Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;
    }
.end annotation


# instance fields
.field private FIE8cugyTFVTdxJSfxM9EehRPnzPzIOAc9vSAeB8a1WUYj86HP0oOgrT11MLilPE:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v2, v0

    const-string/jumbo v3, "unity"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->FIE8cugyTFVTdxJSfxM9EehRPnzPzIOAc9vSAeB8a1WUYj86HP0oOgrT11MLilPE:Ljava/lang/String;

    .line 23
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:Z

    .line 28
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->context:Landroid/content/Context;

    .line 30
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->FIE8cugyTFVTdxJSfxM9EehRPnzPzIOAc9vSAeB8a1WUYj86HP0oOgrT11MLilPE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 33
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;-><init>(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;B)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;

    .line 36
    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;)Z
    .locals 6

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:Z

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;)Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;)Z
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public loadAd(Z)V
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->FIE8cugyTFVTdxJSfxM9EehRPnzPzIOAc9vSAeB8a1WUYj86HP0oOgrT11MLilPE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 72
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string/jumbo v3, "3140736"

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 73
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;

    invoke-static {v2}, Lcom/unity3d/ads/UnityAds;->addListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 74
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:Z

    .line 77
    return-void
.end method

.method public setOnAdsSwitcherListener(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;

    .line 55
    return-void
.end method

.method public showAd()Z
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->FIE8cugyTFVTdxJSfxM9EehRPnzPzIOAc9vSAeB8a1WUYj86HP0oOgrT11MLilPE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 86
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;)V

    .line 88
    const/4 v1, 0x1

    move v0, v1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public updateNetwork(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->FIE8cugyTFVTdxJSfxM9EehRPnzPzIOAc9vSAeB8a1WUYj86HP0oOgrT11MLilPE:Ljava/lang/String;

    .line 63
    return-void
.end method
