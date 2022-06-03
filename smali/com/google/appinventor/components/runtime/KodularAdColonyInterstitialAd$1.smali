.class final Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
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
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZLjava/lang/String;)V
    .locals 7

    .prologue
    .line 79
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    if-eqz v4, :cond_0

    move v4, v2

    if-eqz v4, :cond_0

    .line 80
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;)Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z

    move-result v4

    .line 88
    :goto_0
    return-void

    .line 81
    :cond_0
    move v4, v1

    if-eqz v4, :cond_1

    move v4, v2

    if-nez v4, :cond_1

    .line 82
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    const/16 v5, 0x65

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_1
    move v4, v1

    if-nez v4, :cond_2

    .line 84
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    const/16 v5, 0x66

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    const/16 v5, 0x67

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->AdFailedToLoad(ILjava/lang/String;)V

    .line 88
    goto :goto_0
.end method
