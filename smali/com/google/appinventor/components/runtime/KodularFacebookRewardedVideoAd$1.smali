.class final Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;


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
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdsClick()V
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->AdOpened()V

    .line 80
    return-void
.end method

.method public final onAdsClosed()V
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->AdClosed()V

    .line 90
    return-void
.end method

.method public final onAdsCompleted()V
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->AdVideoCompleted()V

    .line 95
    return-void
.end method

.method public final onAdsError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    const-string/jumbo v3, "Ad failed to load."

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->Error(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public final onAdsReady()V
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularFacebookRewardedVideoAd;->AdLoaded()V

    .line 85
    return-void
.end method
