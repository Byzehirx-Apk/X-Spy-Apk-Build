.class final Lcom/google/appinventor/components/runtime/KodularUnityAds$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularUnityAds;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularUnityAds;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityAds$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZLjava/lang/String;)V
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    if-eqz v4, :cond_2

    move v4, v2

    if-eqz v4, :cond_2

    .line 77
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isReady()Z

    move-result v4

    if-nez v4, :cond_0

    .line 78
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularUnityAds$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds;

    const-string/jumbo v5, "The ad was not ready to be shown."

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->Error(Ljava/lang/String;)V

    .line 79
    .line 99
    :goto_0
    return-void

    .line 82
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularUnityAds$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularUnityAds;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularUnityAds$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularUnityAds;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;)V

    goto :goto_0

    .line 87
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularUnityAds$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularUnityAds;)Landroid/app/Activity;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularUnityAds$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->PlacementID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularUnityAds$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityAds;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->Error(Ljava/lang/String;)V

    .line 99
    goto :goto_0
.end method
