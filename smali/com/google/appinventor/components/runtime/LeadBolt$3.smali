.class final Lcom/google/appinventor/components/runtime/LeadBolt$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/apptracker/android/listener/AppModuleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/LeadBolt;
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
    .line 250
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onModuleCached(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 278
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LeadBolt$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LeadBolt;->LBCached(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public final onModuleClicked(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LeadBolt$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LeadBolt;->LBClicked(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public final onModuleClosed(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LeadBolt$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LeadBolt;->LBClosed(Ljava/lang/String;Z)V

    .line 269
    return-void
.end method

.method public final onModuleFailed(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LeadBolt$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/LeadBolt;->LBFailed(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    return-void
.end method

.method public final onModuleLoaded(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 253
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "Leadbolt"

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LeadBolt$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    .line 255
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/LeadBolt;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/LeadBolt;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Rewarded Video"

    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LeadBolt$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LeadBolt;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 253
    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 258
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LeadBolt$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LeadBolt;->LBLoaded(Ljava/lang/String;)V

    .line 259
    return-void

    .line 255
    :cond_0
    const-string/jumbo v3, "Interstitial"

    goto :goto_0
.end method
