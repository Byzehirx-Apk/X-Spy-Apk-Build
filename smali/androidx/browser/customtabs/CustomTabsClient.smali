.class public Landroidx/browser/customtabs/CustomTabsClient;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"


# instance fields
.field private final mService:Landroid/support/customtabs/ICustomTabsService;

.field private final mServiceComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient;
    move-object v1, p1

    .local v1, "service":Landroid/support/customtabs/ICustomTabsService;
    move-object v2, p2

    .local v2, "componentName":Landroid/content/ComponentName;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    .line 54
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/browser/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    .line 55
    return-void
.end method

.method public static bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z
    .locals 9

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "connection":Landroidx/browser/customtabs/CustomTabsServiceConnection;
    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 72
    .local v3, "intent":Landroid/content/Intent;
    move-object v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 73
    :cond_0
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    move v0, v4

    .end local v0    # "context":Landroid/content/Context;
    return v0
.end method

.method public static connectAndInitialize(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 158
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return v0

    .line 140
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object v2, v5

    .line 141
    .local v2, "applicationContext":Landroid/content/Context;
    new-instance v5, Landroidx/browser/customtabs/CustomTabsClient$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Landroidx/browser/customtabs/CustomTabsClient$1;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    .line 156
    .local v3, "connection":Landroidx/browser/customtabs/CustomTabsServiceConnection;
    move-object v5, v2

    move-object v6, v1

    move-object v7, v3

    :try_start_0
    invoke-static {v5, v6, v7}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    goto :goto_0

    .line 157
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 158
    .local v4, "e":Ljava/lang/SecurityException;
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public static getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static getPackageName(Landroid/content/Context;Ljava/util/List;Z)Ljava/lang/String;
    .locals 14
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v2, p2

    .local v2, "ignoreDefault":Z
    move-object v9, v0

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    move-object v3, v9

    .line 103
    .local v3, "pm":Landroid/content/pm/PackageManager;
    move-object v9, v1

    if-nez v9, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v4, v9

    .line 104
    .local v4, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Landroid/content/Intent;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string/jumbo v11, "android.intent.action.VIEW"

    const-string/jumbo v12, "http://"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v5, v9

    .line 106
    .local v5, "activityIntent":Landroid/content/Intent;
    move v9, v2

    if-nez v9, :cond_0

    .line 107
    move-object v9, v3

    move-object v10, v5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    move-object v6, v9

    .line 108
    .local v6, "defaultViewHandlerInfo":Landroid/content/pm/ResolveInfo;
    move-object v9, v6

    if-eqz v9, :cond_0

    .line 109
    move-object v9, v6

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v7, v9

    .line 110
    .local v7, "packageName":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v9

    .line 111
    move-object v9, v4

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 112
    move-object v9, v1

    if-eqz v9, :cond_0

    move-object v9, v4

    move-object v10, v1

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v9

    .line 116
    .end local v6    # "defaultViewHandlerInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_0
    new-instance v9, Landroid/content/Intent;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string/jumbo v11, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v9

    .line 117
    .local v6, "serviceIntent":Landroid/content/Intent;
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v9

    :goto_1
    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v8, v9

    .line 118
    .local v8, "packageName":Ljava/lang/String;
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 119
    move-object v9, v3

    move-object v10, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_2

    move-object v9, v8

    move-object v0, v9

    .line 121
    .end local v0    # "context":Landroid/content/Context;
    .end local v8    # "packageName":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 103
    .end local v4    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "activityIntent":Landroid/content/Intent;
    .end local v6    # "serviceIntent":Landroid/content/Intent;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    move-object v9, v1

    goto :goto_0

    .line 120
    .restart local v4    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "activityIntent":Landroid/content/Intent;
    .restart local v6    # "serviceIntent":Landroid/content/Intent;
    .restart local v8    # "packageName":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 121
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_2
.end method


# virtual methods
.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient;
    move-object v1, p1

    .local v1, "commandName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":Landroid/os/Bundle;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/support/customtabs/ICustomTabsService;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .line 268
    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsClient;
    :goto_0
    return-object v0

    .line 267
    .restart local v0    # "this":Landroidx/browser/customtabs/CustomTabsClient;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 268
    .local v3, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;
    .locals 10

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsClient;
    move-object v1, p1

    .local v1, "callback":Landroidx/browser/customtabs/CustomTabsCallback;
    new-instance v4, Landroidx/browser/customtabs/CustomTabsClient$2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroidx/browser/customtabs/CustomTabsClient$2;-><init>(Landroidx/browser/customtabs/CustomTabsClient;Landroidx/browser/customtabs/CustomTabsCallback;)V

    move-object v2, v4

    .line 257
    .local v2, "wrapper":Landroid/support/customtabs/ICustomTabsCallback$Stub;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    move-object v5, v2

    invoke-interface {v4, v5}, Landroid/support/customtabs/ICustomTabsService;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 261
    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsClient;
    :goto_0
    return-object v0

    .line 260
    .line 261
    .restart local v0    # "this":Landroidx/browser/customtabs/CustomTabsClient;
    :cond_0
    new-instance v4, Landroidx/browser/customtabs/CustomTabsSession;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/browser/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    invoke-direct {v5, v6, v7, v8}, Landroidx/browser/customtabs/CustomTabsSession;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V

    move-object v0, v4

    goto :goto_0

    .line 258
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 259
    .local v3, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public warmup(J)Z
    .locals 9

    .prologue
    .line 173
    move-object v1, p0

    .local v1, "this":Landroidx/browser/customtabs/CustomTabsClient;
    move-wide v2, p1

    .local v2, "flags":J
    move-object v5, v1

    :try_start_0
    iget-object v5, v5, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    move-wide v6, v2

    invoke-interface {v5, v6, v7}, Landroid/support/customtabs/ICustomTabsService;->warmup(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v1, v5

    .line 175
    .end local v1    # "this":Landroidx/browser/customtabs/CustomTabsClient;
    :goto_0
    return v1

    .line 174
    .restart local v1    # "this":Landroidx/browser/customtabs/CustomTabsClient;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 175
    .local v4, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    move v1, v5

    goto :goto_0
.end method
