.class final Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;
.super Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->Load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;)V
    .locals 4

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 7
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "KodularAdManagerInterstitial"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Failed to load with message: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 190
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/android/gms/ads/LoadAdError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->FailedToLoad(Ljava/lang/String;)V

    .line 191
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    move-result-object v2

    .line 192
    return-void
.end method

.method public final synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    move-object v2, v4

    move-object v1, v3

    .line 1159
    move-object v3, v2

    new-instance v4, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1$1;-><init>(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 1175
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    move-result-object v3

    .line 1176
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->Loaded()V

    .line 1177
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1178
    const-string/jumbo v3, "Ad Manager"

    const-string/jumbo v4, "Interstitial"

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    .line 1181
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    .line 1178
    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 156
    :cond_0
    return-void
.end method
