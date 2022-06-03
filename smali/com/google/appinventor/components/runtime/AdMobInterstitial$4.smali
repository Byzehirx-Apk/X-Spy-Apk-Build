.class final Lcom/google/appinventor/components/runtime/AdMobInterstitial$4;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/AdMobInterstitial;
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
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdMobInterstitial$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 3

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdMobInterstitial$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdClosed()V

    .line 186
    const-string/jumbo v1, "AdMobInterstitial"

    const-string/jumbo v2, "Admob Interstitial: Ad closed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 187
    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .locals 8

    .prologue
    .line 166
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AdMobInterstitial$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    move v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdMobInterstitial;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdMobInterstitial$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    move v6, v2

    move-object v7, v3

    move-object v2, v7

    move v3, v6

    move-object v4, v7

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/AdMobInterstitial;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdFailedToLoad(ILjava/lang/String;)V

    .line 168
    const-string/jumbo v2, "AdMobInterstitial"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Admob Interstitial: Ad failed to load: Error code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , Error message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdMobInterstitial$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/AdMobInterstitial;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 169
    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 3

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdMobInterstitial$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdLeftApplication()V

    .line 180
    const-string/jumbo v1, "AdMobInterstitial"

    const-string/jumbo v2, "Admob Interstitial: Ad left application"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 181
    return-void
.end method

.method public final onAdLoaded()V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    const-string/jumbo v1, "Admob"

    const-string/jumbo v2, "Interstitial"

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdMobInterstitial$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdMobInterstitial;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 160
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdMobInterstitial$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdLoaded()V

    .line 161
    const-string/jumbo v1, "AdMobInterstitial"

    const-string/jumbo v2, "Admob Interstitial: Ad loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 162
    return-void
.end method

.method public final onAdOpened()V
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdMobInterstitial$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdOpened()V

    .line 174
    const-string/jumbo v1, "AdMobInterstitial"

    const-string/jumbo v2, "Admob Interstitial: Ad opened"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 175
    return-void
.end method
