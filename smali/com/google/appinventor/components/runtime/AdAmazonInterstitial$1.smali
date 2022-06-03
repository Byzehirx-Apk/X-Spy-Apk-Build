.class final Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdsClick()V
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdExpanded()V

    .line 94
    return-void
.end method

.method public final onAdsClosed()V
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdCollapsed()V

    .line 104
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdClosed()V

    .line 105
    return-void
.end method

.method public final onAdsError(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    const-string/jumbo v3, "401"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public final onAdsReady()V
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdLoaded()V

    .line 99
    return-void
.end method
