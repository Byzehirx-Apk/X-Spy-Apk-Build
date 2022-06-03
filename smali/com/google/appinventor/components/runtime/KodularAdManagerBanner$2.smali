.class final Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$2;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;)V
    .locals 4

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public final onAdClosed()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 7

    .prologue
    .line 256
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/android/gms/ads/LoadAdError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->FailedToLoad(Ljava/lang/String;)V

    .line 257
    const-string/jumbo v2, "KodularAdManagerBanner"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Failed to load with message: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/gms/ads/LoadAdError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 258
    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public final onAdLoaded()V
    .locals 4

    .prologue
    .line 244
    move-object v0, p0

    const-string/jumbo v1, "KodularAdManagerBanner"

    const-string/jumbo v2, "Loaded ad successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 245
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    const-string/jumbo v1, "Ad Manager"

    const-string/jumbo v2, "Banner"

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;

    .line 249
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    .line 246
    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 252
    :cond_0
    return-void
.end method

.method public final onAdOpened()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method
