.class final Lcom/google/appinventor/components/runtime/AdmobRewardedVideo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;)V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZLjava/lang/String;)V
    .locals 9

    .prologue
    .line 109
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    if-eqz v4, :cond_1

    move v4, v2

    if-eqz v4, :cond_1

    .line 110
    new-instance v4, Ljava/util/Random;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;)Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;

    move-result-object v5

    const-string/jumbo v6, "admob"

    const-string/jumbo v7, "video"

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularAdsCommission;->getCommision(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 112
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;)Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->adUnitId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setRewardedOptions(Ljava/lang/String;)V

    .line 113
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;)Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->Start()V

    .line 125
    :goto_0
    return-void

    .line 115
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;)Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->adUnitId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setRewardedOptions(Ljava/lang/String;)V

    .line 116
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;)Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->Start()V

    goto :goto_0

    .line 118
    :cond_1
    move v4, v1

    if-eqz v4, :cond_2

    move v4, v2

    if-nez v4, :cond_2

    .line 119
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;

    const/16 v5, 0x65

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    move v4, v1

    if-nez v4, :cond_3

    .line 121
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;

    const/16 v5, 0x66

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;

    const/16 v5, 0x67

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/AdmobRewardedVideo;->AdFailedToLoad(ILjava/lang/String;)V

    .line 125
    goto :goto_0
.end method
