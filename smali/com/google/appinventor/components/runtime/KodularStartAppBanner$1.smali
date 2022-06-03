.class final Lcom/google/appinventor/components/runtime/KodularStartAppBanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularStartAppBanner;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularStartAppBanner;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppBanner;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZLjava/lang/String;)V
    .locals 7

    .prologue
    .line 98
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    if-eqz v4, :cond_1

    move v4, v2

    if-eqz v4, :cond_1

    .line 99
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppBanner;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->access$000(Lcom/google/appinventor/components/runtime/KodularStartAppBanner;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppBanner;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->access$100(Lcom/google/appinventor/components/runtime/KodularStartAppBanner;Z)V

    .line 101
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppBanner;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->access$002(Lcom/google/appinventor/components/runtime/KodularStartAppBanner;Z)Z

    move-result v4

    .line 106
    :goto_0
    const-string/jumbo v4, "StartApp"

    const-string/jumbo v5, "Banner"

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppBanner;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->access$200(Lcom/google/appinventor/components/runtime/KodularStartAppBanner;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 107
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppBanner;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->access$300(Lcom/google/appinventor/components/runtime/KodularStartAppBanner;)V

    .line 108
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppBanner;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->access$400(Lcom/google/appinventor/components/runtime/KodularStartAppBanner;)Lcom/startapp/android/publish/ads/banner/Banner;

    move-result-object v4

    const/16 v5, 0x140

    const/16 v6, 0x32

    invoke-virtual {v4, v5, v6}, Lcom/startapp/android/publish/ads/banner/Banner;->loadAd(II)V

    .line 109
    const-string/jumbo v4, "StartApp Banner"

    const-string/jumbo v5, "Loading banner ad"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 117
    :goto_1
    return-void

    .line 103
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppBanner;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->access$100(Lcom/google/appinventor/components/runtime/KodularStartAppBanner;Z)V

    goto :goto_0

    .line 110
    :cond_1
    move v4, v1

    if-eqz v4, :cond_2

    move v4, v2

    if-nez v4, :cond_2

    .line 111
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppBanner;

    const/16 v5, 0x65

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_2
    move v4, v1

    if-nez v4, :cond_3

    .line 113
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppBanner;

    const/16 v5, 0x66

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppBanner;

    const/16 v5, 0x67

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->AdFailedToLoad(ILjava/lang/String;)V

    .line 117
    goto :goto_1
.end method
