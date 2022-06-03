.class final Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/ads/mediation/IUnityAdsExtendedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;)V
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;B)V
    .locals 5

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;-><init>(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;)V

    return-void
.end method


# virtual methods
.method public final onUnityAdsClick(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;)Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    const-string/jumbo v2, "Kodular Commission Interstitial"

    const-string/jumbo v3, "Triggering onAdsClick() for Unity Ads"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 108
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;)Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;->onAdsClick()V

    .line 110
    :cond_0
    return-void
.end method

.method public final onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;)Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 138
    const-string/jumbo v3, "Kodular Commission Interstitial"

    const-string/jumbo v4, "Triggering onAdsError() for Unity Ads"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 139
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;)Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;->onAdsError(Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method

.method public final onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V
    .locals 5

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;)Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 130
    const-string/jumbo v3, "Kodular Commission Interstitial"

    const-string/jumbo v4, "Triggering onAdsClosed() for Unity Ads"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 131
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;)Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;->onAdsClosed()V

    .line 133
    :cond_0
    return-void
.end method

.method public final onUnityAdsPlacementStateChanged(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$PlacementState;Lcom/unity3d/ads/UnityAds$PlacementState;)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public final onUnityAdsReady(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;)Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;)Z

    move-result v2

    .line 119
    const-string/jumbo v2, "Kodular Commission Interstitial"

    const-string/jumbo v3, "Triggering onAdsReady() for Unity Ads"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 120
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;)Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;->onAdsReady()V

    .line 122
    :cond_0
    return-void
.end method

.method public final onUnityAdsStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
