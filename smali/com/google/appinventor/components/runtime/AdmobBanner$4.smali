.class final Lcom/google/appinventor/components/runtime/AdmobBanner$4;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/AdmobBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AdmobBanner;)V
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdmobBanner$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 3

    .prologue
    .line 219
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdmobBanner;->AdClosed()V

    .line 220
    const-string/jumbo v1, "AdMob Banner"

    const-string/jumbo v2, "onAdClosed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 221
    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .locals 8

    .prologue
    .line 195
    move-object v0, p0

    move v1, p1

    move v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/AdmobBanner;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 197
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/AdmobBanner;->AdFailedToLoad(ILjava/lang/String;)V

    .line 198
    const-string/jumbo v3, "AdMob Banner"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Admob Banner: Ad failed to load - Error code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , Error message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 199
    return-void
.end method

.method public final onAdLoaded()V
    .locals 4

    .prologue
    .line 188
    move-object v0, p0

    const-string/jumbo v1, "Admob"

    const-string/jumbo v2, "Banner"

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/AdmobBanner$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobBanner;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 189
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdmobBanner;->AdLoaded()V

    .line 190
    const-string/jumbo v1, "AdMob Banner"

    const-string/jumbo v2, "Admob Banner: Ad loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 191
    return-void
.end method

.method public final onAdOpened()V
    .locals 3

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdmobBanner$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AdmobBanner;->AdOpened()V

    .line 206
    const-string/jumbo v1, "AdMob Banner"

    const-string/jumbo v2, "Admob Banner: Ad opened"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 207
    return-void
.end method
