.class final Lcom/google/appinventor/components/runtime/KodularAppLovin$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularAppLovin;->ShowAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularAppLovin;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->AdStarted()V

    .line 148
    const-string/jumbo v2, "AppLovin"

    const-string/jumbo v3, "Unity Ads: ad started"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 149
    return-void
.end method

.method public final adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularAppLovin$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->AdClosed()V

    .line 154
    const-string/jumbo v2, "AppLovin"

    const-string/jumbo v3, "Unity Ads: ad closed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 155
    return-void
.end method
