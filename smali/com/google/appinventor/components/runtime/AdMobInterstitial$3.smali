.class final Lcom/google/appinventor/components/runtime/AdMobInterstitial$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;


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
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdMobInterstitial$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZLjava/lang/String;)V
    .locals 8

    .prologue
    .line 130
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    if-eqz v4, :cond_1

    move v4, v2

    if-eqz v4, :cond_1

    .line 131
    const-string/jumbo v4, "AdMobInterstitial"

    const-string/jumbo v5, "Serving real ads; production non-Test mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 132
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdMobInterstitial$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdMobInterstitial;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdMobInterstitial$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdMobInterstitial;)Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdMobInterstitial$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/AdMobInterstitial;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->loadAd(Z)V

    .line 146
    :goto_0
    return-void

    .line 135
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdMobInterstitial$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdMobInterstitial;)Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdMobInterstitial$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdMobInterstitial;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setInterstitialAd(Lcom/google/android/gms/ads/InterstitialAd;)V

    .line 136
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdMobInterstitial$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdMobInterstitial;)Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdMobInterstitial$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/AdMobInterstitial;)Z

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/AdMobInterstitial$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdMobInterstitial;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/AdMobInterstitial$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    iget v7, v7, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->targetAge:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setInterstitialOptions(ZLjava/lang/String;I)V

    .line 137
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdMobInterstitial$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdMobInterstitial;)Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->Start()V

    goto :goto_0

    .line 139
    :cond_1
    move v4, v1

    if-eqz v4, :cond_2

    move v4, v2

    if-nez v4, :cond_2

    .line 140
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdMobInterstitial$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    const/16 v5, 0x65

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    move v4, v1

    if-nez v4, :cond_3

    .line 142
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdMobInterstitial$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    const/16 v5, 0x66

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdMobInterstitial$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    const/16 v5, 0x67

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdFailedToLoad(ILjava/lang/String;)V

    .line 146
    goto :goto_0
.end method
