.class public Landroidx/browser/customtabs/TrustedWebUtils;
.super Ljava/lang/Object;
.source "TrustedWebUtils.java"


# static fields
.field public static final EXTRA_LAUNCH_AS_TRUSTED_WEB_ACTIVITY:Ljava/lang/String; = "android.support.customtabs.extra.LAUNCH_AS_TRUSTED_WEB_ACTIVITY"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/TrustedWebUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static launchAsTrustedWebActivity(Landroid/content/Context;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/browser/customtabs/CustomTabsIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "customTabsIntent":Landroidx/browser/customtabs/CustomTabsIntent;
    move-object v2, p2

    .local v2, "uri":Landroid/net/Uri;
    move-object v3, v1

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 76
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "android.support.customtabs.extra.SESSION"

    .line 75
    invoke-static {v3, v4}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_0

    .line 77
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Given CustomTabsIntent should be associated with a valid CustomTabsSession"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const-string/jumbo v4, "android.support.customtabs.extra.LAUNCH_AS_TRUSTED_WEB_ACTIVITY"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    .line 81
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 82
    return-void
.end method
