.class final Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/startapp/android/publish/ads/banner/BannerListener;


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
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 112
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;->onAdsClick()V

    .line 114
    :cond_0
    return-void
.end method

.method public final onFailedToReceiveAd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v2

    const-string/jumbo v3, "Could not load ad"

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;->onAdsError(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public final onReceiveAd(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 98
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;->onAdsReady()V

    .line 100
    :cond_0
    return-void
.end method
