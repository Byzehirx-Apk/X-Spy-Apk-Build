.class public Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection$OnConsentListener;
    }
.end annotation


# static fields
.field public static TYPE_AD_MOB_BANNER:Ljava/lang/String;

.field public static TYPE_AD_MOB_INTERSTITIAL:Ljava/lang/String;

.field public static TYPE_AD_MOB_REWARDED_VIDEO:Ljava/lang/String;


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/AdView;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/InterstitialAd;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

.field private Czk3JxQndp8OXzdhVJbUdjsQzir0LjcvTO4sxxzJFetSb3s5Ea1z9Q4DZEvMPAr1:Ljava/lang/String;

.field private G6NGZkO3GzJPBmNJ6LwDoEfdjbnPkejEO5C5VyyDaUNT1yJXqTcFE5lxbNsfgCQk:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field private OOU2L6ZPvPBvVsNChdspsFDAiRPppRoUY09Zs89r9dCXQgf8whit7Vv4m0wrV8PG:Ljava/lang/String;

.field private PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:Z

.field private SZ5aRRQoo4RABtl0KnlkQDhNcppg3ZUNkmsRmBa9EW4UdQenZXJCu8cuK0SgtVYc:Ljava/lang/String;

.field private Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:Z

.field private UT8jc0jwpnlGoVnBZm9Vqfc7zQxpOFTo7zW0ZxKDjXZZsrQ7LsG7hsoko7RBNNg5:I

.field private ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Z

.field private ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/SharedPreferences$Editor;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection$OnConsentListener;

.field private ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Z

.field private iydqlq85U6KFMIBI7LRgMfKfWOWXdlnJs0rL9QevzYsIGMKLioEecnL9YVjuTN9v:Ljava/lang/String;

.field private nEkPfLDGYD22bahiHhpKxaqa4vdjROQiBAWGj9Zqw3V6ag4osXolkZLRAXiafTD:Ljava/lang/String;

.field private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/graphics/drawable/Drawable;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

.field private vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:Z

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/SharedPreferences;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/os/Bundle;

.field private yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "AdMob Banner"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->TYPE_AD_MOB_BANNER:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "AdMob Interstitial"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->TYPE_AD_MOB_INTERSTITIAL:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "AdMob Rewarded Video"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->TYPE_AD_MOB_REWARDED_VIDEO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v2, v0

    const-string/jumbo v3, "Makeroid Data Protection"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    .line 38
    move-object v2, v0

    const-string/jumbo v3, "Makeroid Data Protection Database 18"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->G6NGZkO3GzJPBmNJ6LwDoEfdjbnPkejEO5C5VyyDaUNT1yJXqTcFE5lxbNsfgCQk:Ljava/lang/String;

    .line 55
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->nEkPfLDGYD22bahiHhpKxaqa4vdjROQiBAWGj9Zqw3V6ag4osXolkZLRAXiafTD:Ljava/lang/String;

    .line 56
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/graphics/drawable/Drawable;

    .line 62
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:Z

    .line 65
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:Z

    .line 66
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Z

    .line 69
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:Z

    .line 71
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    .line 73
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Z

    .line 81
    move-object v2, v0

    new-instance v3, Landroid/os/Bundle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/os/Bundle;

    .line 84
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setContext(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v3, v0

    const-string/jumbo v4, "Makeroid Data Protection"

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    .line 38
    move-object v3, v0

    const-string/jumbo v4, "Makeroid Data Protection Database 18"

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->G6NGZkO3GzJPBmNJ6LwDoEfdjbnPkejEO5C5VyyDaUNT1yJXqTcFE5lxbNsfgCQk:Ljava/lang/String;

    .line 55
    move-object v3, v0

    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->nEkPfLDGYD22bahiHhpKxaqa4vdjROQiBAWGj9Zqw3V6ag4osXolkZLRAXiafTD:Ljava/lang/String;

    .line 56
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/graphics/drawable/Drawable;

    .line 62
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:Z

    .line 65
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:Z

    .line 66
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Z

    .line 69
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:Z

    .line 71
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    .line 73
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Z

    .line 81
    move-object v3, v0

    new-instance v4, Landroid/os/Bundle;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/os/Bundle;

    .line 88
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setContext(Landroid/content/Context;)V

    .line 89
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->setComponentType(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)V
    .locals 8

    .prologue
    .line 265
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->TYPE_AD_MOB_BANNER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/AdView;

    if-eqz v2, :cond_1

    .line 267
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 269
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Z)V

    .line 270
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Trying to load now a personalized AdMob Banner ad"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 271
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/AdView;

    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 332
    :goto_0
    return-void

    .line 274
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Z)V

    .line 275
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Trying to load now a non-personalized AdMob Banner ad"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 276
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/AdView;

    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-class v4, Lcom/google/ads/mediation/admob/AdMobAdapter;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0

    .line 279
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Please add your AdView in \'void setAdView(AdView adView);\'"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 281
    :cond_2
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->TYPE_AD_MOB_INTERSTITIAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 282
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v2, :cond_7

    .line 283
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:Z

    if-eqz v2, :cond_6

    .line 284
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 286
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Z)V

    .line 287
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Trying to load now a personalized AdMob Interstitial ad"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 288
    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->UT8jc0jwpnlGoVnBZm9Vqfc7zQxpOFTo7zW0ZxKDjXZZsrQ7LsG7hsoko7RBNNg5:I

    if-lez v2, :cond_3

    .line 289
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5()V

    goto :goto_0

    .line 291
    :cond_3
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU()V

    goto :goto_0

    .line 295
    :cond_4
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Z)V

    .line 296
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Trying to load now a non-personalized AdMob Interstitial ad"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 297
    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->UT8jc0jwpnlGoVnBZm9Vqfc7zQxpOFTo7zW0ZxKDjXZZsrQ7LsG7hsoko7RBNNg5:I

    if-lez v2, :cond_5

    .line 298
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b()V

    goto/16 :goto_0

    .line 300
    :cond_5
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes()V

    goto/16 :goto_0

    .line 304
    :cond_6
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Please add your \'void setInterstitialOptions(boolean targetForChildren, String targetGender, int targetAge);\'"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 307
    :cond_7
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Please add your InterstitialAd in \'void setInterstitialAd(InterstitialAd interstitialAd);\'"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 309
    :cond_8
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->TYPE_AD_MOB_REWARDED_VIDEO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 310
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v2, :cond_b

    .line 311
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Z

    if-eqz v2, :cond_a

    .line 312
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 314
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Z)V

    .line 315
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Trying to load now a personalized AdMob Rewarded Video ad"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 316
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->iydqlq85U6KFMIBI7LRgMfKfWOWXdlnJs0rL9QevzYsIGMKLioEecnL9YVjuTN9v:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/ads/AdRequest$Builder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    goto/16 :goto_0

    .line 319
    :cond_9
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Z)V

    .line 320
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Trying to load now a non-personalized Rewarded Video ad"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 321
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->iydqlq85U6KFMIBI7LRgMfKfWOWXdlnJs0rL9QevzYsIGMKLioEecnL9YVjuTN9v:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/ads/AdRequest$Builder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-class v5, Lcom/google/ads/mediation/admob/AdMobAdapter;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    goto/16 :goto_0

    .line 324
    :cond_a
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Please add your \'void setRewardedOptions(String id);\'"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 327
    :cond_b
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Please add your RewardedVideoAd in \'void setRewardedOptions(RewardedVideoAd rewardedVideoAd);\'"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 329
    :cond_c
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TYPE_WAS_NOT_FOUND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 330
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Make sure you have added a component type in \'void setComponentType(String type);\'"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 332
    :cond_d
    goto/16 :goto_0
.end method

.method private J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU()V
    .locals 5

    .prologue
    .line 379
    move-object v0, p0

    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:Z

    .line 380
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    .line 381
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    move-object v1, v2

    .line 383
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/InterstitialAd;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 384
    return-void
.end method

.method private KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes()V
    .locals 6

    .prologue
    .line 387
    move-object v0, p0

    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:Z

    .line 388
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    .line 389
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/os/Bundle;

    .line 390
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    move-object v1, v2

    .line 392
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/InterstitialAd;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 393
    return-void
.end method

.method private bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b()V
    .locals 6

    .prologue
    .line 369
    move-object v0, p0

    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:Z

    .line 370
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    .line 371
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->UT8jc0jwpnlGoVnBZm9Vqfc7zQxpOFTo7zW0ZxKDjXZZsrQ7LsG7hsoko7RBNNg5:I

    .line 372
    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/os/Bundle;

    .line 373
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    move-object v1, v2

    .line 375
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/InterstitialAd;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 376
    return-void
.end method

.method private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Z)V
    .locals 5

    .prologue
    .line 335
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:Z

    if-eqz v2, :cond_0

    .line 336
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "I don\'t save setting now because development mode is on."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 349
    :goto_0
    return-void

    .line 338
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "Personalized"

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 339
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "AdsFree"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 340
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "FirstTime"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 341
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 342
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection$OnConsentListener;

    if-eqz v2, :cond_1

    .line 343
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection$OnConsentListener;

    const/4 v3, 0x0

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection$OnConsentListener;->result(ZZ)V

    .line 345
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:Z

    .line 346
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Z

    .line 347
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "SaveOptionsHelper was running and options are now saved."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 349
    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Ljava/util/Date;
    .locals 9

    .prologue
    .line 396
    move-object v1, p0

    move v2, p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 397
    move-object v3, v5

    const/4 v5, 0x1

    move v6, v2

    neg-int v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 398
    new-instance v4, Ljava/util/Date;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object v3, v4

    .line 399
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "The calculated date based on age of "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 400
    move-object v4, v3

    move-object v1, v4

    return-object v1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;I)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)V

    return-void
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    .line 94
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->G6NGZkO3GzJPBmNJ6LwDoEfdjbnPkejEO5C5VyyDaUNT1yJXqTcFE5lxbNsfgCQk:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/SharedPreferences;

    .line 95
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/SharedPreferences$Editor;

    .line 96
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/os/Bundle;

    const-string/jumbo v3, "npa"

    const-string/jumbo v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Context was added."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 100
    return-void
.end method

.method private static vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .line 355
    :goto_0
    return-object v0

    :cond_1
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->SZ5aRRQoo4RABtl0KnlkQDhNcppg3ZUNkmsRmBa9EW4UdQenZXJCu8cuK0SgtVYc:Ljava/lang/String;

    const-string/jumbo v2, "TYPE_WAS_NOT_FOUND"

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5()V
    .locals 6

    .prologue
    .line 360
    move-object v0, p0

    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:Z

    .line 361
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    .line 362
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->UT8jc0jwpnlGoVnBZm9Vqfc7zQxpOFTo7zW0ZxKDjXZZsrQ7LsG7hsoko7RBNNg5:I

    .line 363
    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    move-object v1, v2

    .line 365
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/InterstitialAd;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 366
    return-void
.end method


# virtual methods
.method public RevokeConsent()V
    .locals 4

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "AdsFree"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 176
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "Personalized"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 177
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "FirstTime"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 178
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 179
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "The user withdrew the consent."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 180
    return-void
.end method

.method public Start()V
    .locals 10

    .prologue
    .line 199
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/KodularGDPRUtil;->isRequestLocationInEurope(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:Z

    if-nez v3, :cond_0

    .line 200
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "isRequestLocationInEurope = false."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 201
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)V

    .line 202
    .line 231
    :goto_0
    return-void

    .line 205
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:Z

    if-nez v3, :cond_3

    .line 206
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "FirstTime"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 207
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "The user has already made a selection."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 209
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "Personalized"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Personalized was loaded from the db."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 211
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)V

    goto :goto_0

    .line 213
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "AdsFree"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "AdsFree was loaded from the db."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 215
    goto :goto_0

    .line 217
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Non-Personalized was loaded from the db."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 218
    move-object v3, v0

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)V

    .line 221
    goto :goto_0

    .line 225
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    if-nez v3, :cond_4

    .line 226
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Please add your context in \'void setContext(Context context);\'"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 227
    goto :goto_0

    .line 229
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "Development mode is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 230
    move-object v3, v0

    move-object v1, v3

    .line 1235
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_5

    .line 1236
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    const v6, 0x1030239

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    move-object v2, v3

    .line 1243
    :goto_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1244
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1245
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1247
    move-object v3, v2

    const/4 v4, -0x1

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection$1;-><init>(Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1254
    move-object v3, v2

    const/4 v4, -0x2

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection$2;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection$2;-><init>(Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1261
    move-object v3, v2

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 231
    goto/16 :goto_0

    .line 1238
    :cond_5
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    const v6, 0x1030132

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    move-object v2, v3

    goto :goto_1
.end method

.method public getAdsFreeResult()Z
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getDevelopmentMode()Z
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:Z

    move v0, v1

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->OOU2L6ZPvPBvVsNChdspsFDAiRPppRoUY09Zs89r9dCXQgf8whit7Vv4m0wrV8PG:Ljava/lang/String;

    const-string/jumbo v2, "Can we continue to use your data to tailor ads for you?"

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getPersonalizedResult()Z
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Z

    move v0, v1

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->Czk3JxQndp8OXzdhVJbUdjsQzir0LjcvTO4sxxzJFetSb3s5Ea1z9Q4DZEvMPAr1:Ljava/lang/String;

    const-string/jumbo v2, "Data Protection"

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public setAdView(Lcom/google/android/gms/ads/AdView;)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/AdView;

    .line 116
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "AdView was added."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 117
    return-void
.end method

.method public setComponentType(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->SZ5aRRQoo4RABtl0KnlkQDhNcppg3ZUNkmsRmBa9EW4UdQenZXJCu8cuK0SgtVYc:Ljava/lang/String;

    .line 149
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " component was added."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 150
    return-void
.end method

.method public setDevelopmentMode(Z)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:Z

    .line 192
    return-void
.end method

.method public setInterstitialAd(Lcom/google/android/gms/ads/InterstitialAd;)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/InterstitialAd;

    .line 121
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "InterstitialAd was added."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 122
    return-void
.end method

.method public setInterstitialOptions(ZLjava/lang/String;I)V
    .locals 6

    .prologue
    .line 130
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:Z

    .line 131
    move-object v4, v2

    const-string/jumbo v5, "female"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    .line 138
    :goto_0
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->UT8jc0jwpnlGoVnBZm9Vqfc7zQxpOFTo7zW0ZxKDjXZZsrQ7LsG7hsoko7RBNNg5:I

    .line 139
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:Z

    .line 140
    return-void

    .line 133
    :cond_0
    move-object v4, v2

    const-string/jumbo v5, "male"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    goto :goto_0

    .line 136
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->OOU2L6ZPvPBvVsNChdspsFDAiRPppRoUY09Zs89r9dCXQgf8whit7Vv4m0wrV8PG:Ljava/lang/String;

    .line 167
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "DialogMessage was added."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 168
    return-void
.end method

.method public setOnConsentListener(Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection$OnConsentListener;)V
    .locals 4

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection$OnConsentListener;

    .line 409
    return-void
.end method

.method public setRewardedOptions(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->iydqlq85U6KFMIBI7LRgMfKfWOWXdlnJs0rL9QevzYsIGMKLioEecnL9YVjuTN9v:Ljava/lang/String;

    .line 144
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Z

    .line 145
    return-void
.end method

.method public setRewardedVideoAd(Lcom/google/android/gms/ads/reward/RewardedVideoAd;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 126
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "RewardedVideoAd was added."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 127
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->Czk3JxQndp8OXzdhVJbUdjsQzir0LjcvTO4sxxzJFetSb3s5Ea1z9Q4DZEvMPAr1:Ljava/lang/String;

    .line 158
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/MakeroidDataProtection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "DialogTitle was added."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 159
    return-void
.end method
