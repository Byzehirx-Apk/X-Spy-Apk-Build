.class final Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->onResult(ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;Z)Z

    move-result v2

    .line 86
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/startapp/android/publish/adsCommon/Ad;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->OnFailedToReceiveAd(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public final onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "StartApp"

    const-string/jumbo v3, "Interstitial"

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 80
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;Z)Z

    move-result v2

    .line 81
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->OnReceiveAd()V

    .line 82
    return-void
.end method
