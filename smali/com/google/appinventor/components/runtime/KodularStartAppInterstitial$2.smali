.class final Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->ShowInterstitialAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;)V
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adClicked(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "StartApp Interstitial"

    const-string/jumbo v3, "Ad clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 200
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->AdClicked()V

    .line 201
    return-void
.end method

.method public final adDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "StartApp Interstitial"

    const-string/jumbo v3, "Ad displayed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 190
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->AdDisplayed()V

    .line 191
    return-void
.end method

.method public final adHidden(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .locals 4

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "StartApp Interstitial"

    const-string/jumbo v3, "StartApp Ad hidden"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 180
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->AdHidden()V

    .line 181
    return-void
.end method

.method public final adNotDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .locals 4

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "StartApp Interstitial"

    const-string/jumbo v3, "Ad not displayed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 210
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/startapp/android/publish/adsCommon/Ad;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->AdFailedToShow(Ljava/lang/String;)V

    .line 211
    return-void
.end method
