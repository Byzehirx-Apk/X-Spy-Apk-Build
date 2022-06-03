.class final Lcom/google/appinventor/components/runtime/KodularAppLovin$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->onResult(ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularAppLovin$1;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin$1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 5

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "AppLovin"

    const-string/jumbo v3, "Interstitial"

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAppLovin$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin$1;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 100
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin$1;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v2

    .line 101
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin$1;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->AdLoaded()V

    .line 102
    const-string/jumbo v2, "AppLovin"

    const-string/jumbo v3, "AppLovin: ad loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 103
    return-void
.end method

.method public final failedToReceiveAd(I)V
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    move v1, p1

    move v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 108
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularAppLovin$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin$1;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->Error(ILjava/lang/String;)V

    .line 109
    const-string/jumbo v3, "AppLovin"

    const-string/jumbo v4, "AppLovin: "

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 110
    return-void
.end method
