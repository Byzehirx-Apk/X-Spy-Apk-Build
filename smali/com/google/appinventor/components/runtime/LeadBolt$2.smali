.class final Lcom/google/appinventor/components/runtime/LeadBolt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/ads/KodularRewardedVideo$OnAdsSwitcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LeadBolt;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LeadBolt;)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdsClick()V
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/LeadBolt;->LBClicked(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public final onAdsClosed()V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/LeadBolt;->LBClosed(Ljava/lang/String;Z)V

    .line 121
    return-void
.end method

.method public final onAdsCompleted()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public final onAdsError(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LeadBolt$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "Ad failed to load."

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/LeadBolt;->LBFailed(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 129
    return-void
.end method

.method public final onAdsReady()V
    .locals 3

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/LeadBolt;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/LeadBolt;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/LeadBolt;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/LeadBolt;)Z

    move-result v1

    .line 115
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/LeadBolt;->LBCached(Ljava/lang/String;)V

    .line 116
    return-void
.end method
