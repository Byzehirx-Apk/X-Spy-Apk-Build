.class final Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZLjava/lang/String;)V
    .locals 9

    .prologue
    .line 117
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    if-eqz v4, :cond_3

    move v4, v2

    if-eqz v4, :cond_3

    .line 118
    new-instance v4, Ljava/util/Random;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    move-result-object v5

    const-string/jumbo v6, "amazon"

    const-string/jumbo v7, "interstitial"

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->getCommision(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;Z)Z

    move-result v4

    .line 120
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->loadAd(Z)V

    .line 155
    :goto_0
    return-void

    .line 122
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;Z)Z

    move-result v4

    .line 123
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2$1;-><init>(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    goto :goto_0

    .line 145
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)V

    goto :goto_0

    .line 148
    :cond_3
    move v4, v1

    if-eqz v4, :cond_4

    move v4, v2

    if-nez v4, :cond_4

    .line 149
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    const-string/jumbo v5, "101"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_4
    move v4, v1

    if-nez v4, :cond_5

    .line 151
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    const-string/jumbo v5, "102"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    const-string/jumbo v5, "103"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    goto :goto_0
.end method
