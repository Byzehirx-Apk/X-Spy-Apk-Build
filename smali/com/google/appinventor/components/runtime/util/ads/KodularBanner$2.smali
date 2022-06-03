.class final Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/services/banners/BannerView$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->loadAd(Landroid/widget/LinearLayout;Lcom/google/appinventor/components/runtime/Form;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)V
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBannerClick(Lcom/unity3d/services/banners/BannerView;)V
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 143
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;->onAdsClick()V

    .line 145
    :cond_0
    return-void
.end method

.method public final onBannerFailedToLoad(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerErrorInfo;)V
    .locals 5

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 150
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v3

    move-object v4, v2

    iget-object v4, v4, Lcom/unity3d/services/banners/BannerErrorInfo;->errorMessage:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;->onAdsError(Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method public final onBannerLeftApplication(Lcom/unity3d/services/banners/BannerView;)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public final onBannerLoaded(Lcom/unity3d/services/banners/BannerView;)V
    .locals 3

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 136
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;->onAdsReady()V

    .line 138
    :cond_0
    return-void
.end method
