.class final Lcom/google/appinventor/components/runtime/AdMobInterstitial$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdMobInterstitial;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AdMobInterstitial;)V
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdMobInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdsClick()V
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdMobInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdOpened()V

    .line 107
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdMobInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdLeftApplication()V

    .line 108
    return-void
.end method

.method public final onAdsClosed()V
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdMobInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdClosed()V

    .line 118
    return-void
.end method

.method public final onAdsError(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdMobInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    const/16 v3, 0x191

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdFailedToLoad(ILjava/lang/String;)V

    .line 123
    return-void
.end method

.method public final onAdsReady()V
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdMobInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdLoaded()V

    .line 113
    return-void
.end method
