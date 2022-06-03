.class public Landroidx/core/app/AppLaunchChecker;
.super Ljava/lang/Object;
.source "AppLaunchChecker.java"


# static fields
.field private static final KEY_STARTED_FROM_LAUNCHER:Ljava/lang/String; = "startedFromLauncher"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "android.support.AppLaunchChecker"


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/AppLaunchChecker;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static hasStartedFromLauncher(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, v0

    const-string/jumbo v2, "android.support.AppLaunchChecker"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "startedFromLauncher"

    const/4 v3, 0x0

    .line 52
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    .end local v0    # "context":Landroid/content/Context;
    return v0
.end method

.method public static onActivityCreate(Landroid/app/Activity;)V
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object v3, v0

    const-string/jumbo v4, "android.support.AppLaunchChecker"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object v1, v3

    .line 68
    .local v1, "sp":Landroid/content/SharedPreferences;
    move-object v3, v1

    const-string/jumbo v4, "startedFromLauncher"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    .line 82
    :goto_0
    return-void

    .line 72
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    move-object v2, v3

    .line 73
    .local v2, "launchIntent":Landroid/content/Intent;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 74
    goto :goto_0

    .line 77
    :cond_1
    const-string/jumbo v3, "android.intent.action.MAIN"

    move-object v4, v2

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v2

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    .line 78
    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    const-string/jumbo v4, "android.intent.category.LEANBACK_LAUNCHER"

    .line 79
    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    :cond_2
    move-object v3, v1

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "startedFromLauncher"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    :cond_3
    goto :goto_0
.end method
