.class final Lcom/google/appinventor/components/runtime/AdmobBanner$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdmobBanner;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AdmobBanner;)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/AdmobBanner$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZLjava/lang/String;)V
    .locals 8

    .prologue
    .line 141
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    if-eqz v4, :cond_1

    move v4, v2

    if-eqz v4, :cond_1

    .line 142
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobBanner$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobBanner;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobBanner$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobBanner;)Landroid/widget/LinearLayout;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdmobBanner$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobBanner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 144
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobBanner$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdmobBanner$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobBanner;)Landroid/widget/LinearLayout;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/AdmobBanner$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobBanner;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/AdmobBanner$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/AdmobBanner;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/AdmobBanner;)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->loadAd(Landroid/widget/LinearLayout;Lcom/google/appinventor/components/runtime/Form;Z)V

    .line 156
    :goto_0
    return-void

    .line 146
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobBanner$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobBanner;)Landroid/widget/LinearLayout;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AdmobBanner$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobBanner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/AdmobBanner;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Landroid/widget/LinearLayout;Lcom/google/android/gms/ads/AdView;)V

    .line 147
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobBanner$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/AdmobBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdmobBanner;)Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->Start()V

    goto :goto_0

    .line 149
    :cond_1
    move v4, v1

    if-eqz v4, :cond_2

    move v4, v2

    if-nez v4, :cond_2

    .line 150
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobBanner$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    const/16 v5, 0x65

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/AdmobBanner;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_2
    move v4, v1

    if-nez v4, :cond_3

    .line 152
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobBanner$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    const/16 v5, 0x66

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/AdmobBanner;->AdFailedToLoad(ILjava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AdmobBanner$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdmobBanner;

    const/16 v5, 0x67

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/AdmobBanner;->AdFailedToLoad(ILjava/lang/String;)V

    .line 156
    goto :goto_0
.end method
