.class final Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdsClick()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public final onAdsClosed()V
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->AdClosed()V

    .line 86
    return-void
.end method

.method public final onAdsError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->Error(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public final onAdsReady()V
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->AdLoaded()V

    .line 81
    return-void
.end method
