.class public Landroidx/core/content/pm/ShortcutManagerCompat;
.super Ljava/lang/Object;
.source "ShortcutManagerCompat.java"


# static fields
.field static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final INSTALL_SHORTCUT_PERMISSION:Ljava/lang/String; = "com.android.launcher.permission.INSTALL_SHORTCUT"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutManagerCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static createShortcutResultIntent(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Landroid/content/Intent;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/content/pm/ShortcutInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "shortcut":Landroidx/core/content/pm/ShortcutInfoCompat;
    const/4 v3, 0x0

    move-object v2, v3

    .line 135
    .local v2, "result":Landroid/content/Intent;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 136
    move-object v3, v0

    const-class v4, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutManager;

    move-object v4, v1

    .line 137
    invoke-virtual {v4}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutManager;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v3

    move-object v2, v3

    .line 139
    :cond_0
    move-object v3, v2

    if-nez v3, :cond_1

    .line 140
    new-instance v3, Landroid/content/Intent;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object v2, v3

    .line 142
    :cond_1
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/core/content/pm/ShortcutInfoCompat;->addToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static isRequestPinShortcutSupported(Landroid/content/Context;)Z
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_0

    .line 55
    move-object v4, v0

    const-class v5, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v4

    move v0, v4

    .line 69
    .end local v0    # "context":Landroid/content/Context;
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    .local v3, "permission":Ljava/lang/String;
    :goto_0
    return v0

    .line 58
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "permission":Ljava/lang/String;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v4, v0

    const-string/jumbo v5, "com.android.launcher.permission.INSTALL_SHORTCUT"

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 62
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_1
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    move-object v2, v4

    .line 64
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    move-object v4, v2

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object v3, v4

    .line 65
    .restart local v3    # "permission":Ljava/lang/String;
    move-object v4, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "com.android.launcher.permission.INSTALL_SHORTCUT"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 66
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 68
    :cond_3
    goto :goto_1

    .line 69
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "permission":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public static requestPinShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z
    .locals 13
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/content/pm/ShortcutInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/IntentSender;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "shortcut":Landroidx/core/content/pm/ShortcutInfoCompat;
    move-object v2, p2

    .local v2, "callback":Landroid/content/IntentSender;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_0

    .line 92
    move-object v4, v0

    const-class v5, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutManager;

    move-object v5, v1

    .line 93
    invoke-virtual {v5}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    move-object v6, v2

    .line 92
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    move-result v4

    move v0, v4

    .line 118
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return v0

    .line 96
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/content/pm/ShortcutManagerCompat;->isRequestPinShortcutSupported(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 97
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 99
    :cond_1
    move-object v4, v1

    new-instance v5, Landroid/content/Intent;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string/jumbo v7, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroidx/core/content/pm/ShortcutInfoCompat;->addToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    move-object v3, v4

    .line 102
    .local v3, "intent":Landroid/content/Intent;
    move-object v4, v2

    if-nez v4, :cond_2

    .line 103
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 108
    :cond_2
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    new-instance v7, Landroidx/core/content/pm/ShortcutManagerCompat$1;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    invoke-direct {v8, v9}, Landroidx/core/content/pm/ShortcutManagerCompat$1;-><init>(Landroid/content/IntentSender;)V

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 118
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method
