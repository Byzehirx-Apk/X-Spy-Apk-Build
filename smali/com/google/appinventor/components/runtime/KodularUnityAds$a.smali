.class final Lcom/google/appinventor/components/runtime/KodularUnityAds$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/ads/mediation/IUnityAdsExtendedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/KodularUnityAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/KodularUnityAds;)V
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/KodularUnityAds;B)V
    .locals 5

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/KodularUnityAds$a;-><init>(Lcom/google/appinventor/components/runtime/KodularUnityAds;)V

    return-void
.end method


# virtual methods
.method public final onUnityAdsClick(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->AdOpened(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v2, "Unity Ads"

    const-string/jumbo v3, "Unity Ads: ad opened"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 117
    return-void
.end method

.method public final onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularUnityAds$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds;

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->Error(Ljava/lang/String;)V

    .line 148
    const-string/jumbo v3, "Unity Ads"

    const-string/jumbo v4, "Unity Ads: "

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 149
    return-void
.end method

.method public final onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V
    .locals 8

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularUnityAds$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds;

    move-object v4, v1

    move-object v5, v2

    sget-object v6, Lcom/unity3d/ads/UnityAds$FinishState;->SKIPPED:Lcom/unity3d/ads/UnityAds$FinishState;

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v6, v2

    sget-object v7, Lcom/unity3d/ads/UnityAds$FinishState;->COMPLETED:Lcom/unity3d/ads/UnityAds$FinishState;

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->AdClosed(Ljava/lang/String;ZZ)V

    .line 142
    const-string/jumbo v3, "Unity Ads"

    const-string/jumbo v4, "Unity Ads: ad closed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 143
    return-void

    .line 141
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public final onUnityAdsPlacementStateChanged(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$PlacementState;Lcom/unity3d/ads/UnityAds$PlacementState;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public final onUnityAdsReady(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "Unity"

    const-string/jumbo v3, "Interstitial"

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularUnityAds$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularUnityAds;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 131
    return-void
.end method

.method public final onUnityAdsStart(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->AdStarted(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v2, "Unity Ads"

    const-string/jumbo v3, "Unity Ads: ad started"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 137
    return-void
.end method
