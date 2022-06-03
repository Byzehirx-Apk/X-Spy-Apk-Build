.class final Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/ads/mediation/IUnityAdsExtendedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;B)V
    .locals 5

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;-><init>(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;)V

    return-void
.end method


# virtual methods
.method public final onUnityAdsClick(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;)Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 101
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;)Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;->onAdsClick()V

    .line 103
    :cond_0
    return-void
.end method

.method public final onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;)Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 132
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;)Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;->onAdsError(Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method public final onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V
    .locals 5

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;)Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 122
    move-object v3, v2

    sget-object v4, Lcom/unity3d/ads/UnityAds$FinishState;->COMPLETED:Lcom/unity3d/ads/UnityAds$FinishState;

    if-ne v3, v4, :cond_0

    .line 123
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;)Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;->onAdsCompleted()V

    .line 125
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;)Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;->onAdsClosed()V

    .line 127
    :cond_1
    return-void
.end method

.method public final onUnityAdsPlacementStateChanged(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$PlacementState;Lcom/unity3d/ads/UnityAds$PlacementState;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public final onUnityAdsReady(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;)Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;)Z

    move-result v2

    .line 112
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo;)Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;->onAdsReady()V

    .line 114
    :cond_0
    return-void
.end method

.method public final onUnityAdsStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
