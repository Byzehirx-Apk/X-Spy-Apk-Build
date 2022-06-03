.class final Lcom/google/appinventor/components/runtime/KodularUnityBanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularUnityBanner;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularUnityBanner;)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularUnityBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityBanner;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZLjava/lang/String;)V
    .locals 7

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    if-eqz v4, :cond_1

    move v4, v2

    if-eqz v4, :cond_1

    .line 66
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularUnityBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityBanner;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularUnityBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularUnityBanner;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularUnityBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityBanner;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/KodularUnityBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularUnityBanner;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "3140736"

    :goto_0
    invoke-static {v4, v5}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 68
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularUnityBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityBanner;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularUnityBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularUnityBanner;)Lcom/unity3d/services/banners/BannerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unity3d/services/banners/BannerView;->load()V

    .line 74
    :goto_1
    return-void

    .line 66
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularUnityBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityBanner;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/KodularUnityBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularUnityBanner;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 69
    :cond_1
    move v4, v1

    if-eqz v4, :cond_2

    .line 70
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularUnityBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityBanner;

    const/16 v5, 0x65

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularUnityBanner;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularUnityBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularUnityBanner;

    const/16 v5, 0x66

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularUnityBanner;->AdFailedToLoad(ILjava/lang/String;)V

    .line 74
    goto :goto_1
.end method
