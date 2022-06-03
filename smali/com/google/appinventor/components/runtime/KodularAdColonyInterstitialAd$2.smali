.class final Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$2;
.super Lcom/adcolony/sdk/AdColonyInterstitialListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    move-object v2, v0

    invoke-direct {v2}, Lcom/adcolony/sdk/AdColonyInterstitialListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->AdExpiring()V

    .line 135
    const-string/jumbo v2, "AdColony Interstitial Ad"

    const-string/jumbo v3, "AdColony Interstitial: Interstitial ad is expiring"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 136
    return-void
.end method

.method public final onOpened(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->AdOpened()V

    .line 128
    const-string/jumbo v2, "AdColony Interstitial Ad"

    const-string/jumbo v3, "AdColony Interstitial: Interstitial ad opened"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 129
    return-void
.end method

.method public final onRequestFilled(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 5

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "AdColony"

    const-string/jumbo v3, "Interstitial"

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 114
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;

    move-result-object v2

    .line 115
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->AdLoaded()V

    .line 116
    const-string/jumbo v2, "AdColony Interstitial Ad"

    const-string/jumbo v3, "AdColony Interstitial: Interstitial ad loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 117
    return-void
.end method

.method public final onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    const-string/jumbo v3, "Request not filled."

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->Error(Ljava/lang/String;)V

    .line 122
    const-string/jumbo v2, "AdColony Interstitial Ad"

    const-string/jumbo v3, "AdColony Interstitial: Interstitial ad failed to load: request not filled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 123
    return-void
.end method
