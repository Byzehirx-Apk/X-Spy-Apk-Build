.class final Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZLjava/lang/String;)V
    .locals 9

    .prologue
    .line 74
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    if-eqz v4, :cond_0

    move v4, v2

    if-eqz v4, :cond_0

    .line 75
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;)V

    .line 76
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;)Lcom/startapp/android/publish/adsCommon/StartAppAd;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1$1;-><init>(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;)V

    invoke-virtual {v4, v5}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->loadAd(Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    move v4, v1

    if-eqz v4, :cond_1

    move v4, v2

    if-nez v4, :cond_1

    .line 90
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    const/16 v5, 0x65

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    move v4, v1

    if-nez v4, :cond_2

    .line 92
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    const/16 v5, 0x66

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    const/16 v5, 0x67

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->AdFailedToLoad(ILjava/lang/String;)V

    .line 96
    goto :goto_0
.end method
