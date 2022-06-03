.class public Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static YVNsLa2BpUWGzhTNtYSeh7by1SaqIwLHkFGvDAPqWStA5E6saDa7VpXzg6M8aqS3:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "KodularChromeCustomTabsHelper"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 57
    move-object v0, p0

    sget-object v8, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->YVNsLa2BpUWGzhTNtYSeh7by1SaqIwLHkFGvDAPqWStA5E6saDa7VpXzg6M8aqS3:Ljava/lang/String;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->YVNsLa2BpUWGzhTNtYSeh7by1SaqIwLHkFGvDAPqWStA5E6saDa7VpXzg6M8aqS3:Ljava/lang/String;

    move-object v0, v8

    .line 99
    :goto_0
    return-object v0

    .line 59
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    move-object v1, v8

    .line 61
    new-instance v8, Landroid/content/Intent;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "android.intent.action.VIEW"

    const-string/jumbo v11, "http://www.example.com"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v2, v8

    .line 62
    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    move-object v3, v8

    .line 63
    const/4 v8, 0x0

    move-object v4, v8

    .line 64
    move-object v8, v3

    if-eqz v8, :cond_1

    .line 65
    move-object v8, v3

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v4, v8

    .line 69
    :cond_1
    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    move-object v3, v8

    .line 70
    new-instance v8, Ljava/util/ArrayList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v8

    .line 71
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_1
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    move-object v6, v8

    .line 72
    new-instance v8, Landroid/content/Intent;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    .line 73
    move-object v7, v9

    const-string/jumbo v9, "android.support.customtabs.action.CustomTabsService"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 74
    move-object v8, v7

    move-object v9, v6

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 75
    move-object v8, v1

    move-object v9, v7

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 76
    move-object v8, v5

    move-object v9, v6

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 78
    :cond_2
    goto :goto_1

    .line 82
    :cond_3
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 83
    const/4 v8, 0x0

    sput-object v8, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->YVNsLa2BpUWGzhTNtYSeh7by1SaqIwLHkFGvDAPqWStA5E6saDa7VpXzg6M8aqS3:Ljava/lang/String;

    .line 99
    :cond_4
    :goto_2
    sget-object v8, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->YVNsLa2BpUWGzhTNtYSeh7by1SaqIwLHkFGvDAPqWStA5E6saDa7VpXzg6M8aqS3:Ljava/lang/String;

    move-object v0, v8

    goto/16 :goto_0

    .line 84
    :cond_5
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 85
    move-object v8, v5

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->YVNsLa2BpUWGzhTNtYSeh7by1SaqIwLHkFGvDAPqWStA5E6saDa7VpXzg6M8aqS3:Ljava/lang/String;

    goto :goto_2

    .line 86
    :cond_6
    move-object v8, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    move-object v8, v0

    move-object v9, v2

    .line 87
    invoke-static {v8, v9}, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_7

    move-object v8, v5

    move-object v9, v4

    .line 88
    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 89
    move-object v8, v4

    sput-object v8, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->YVNsLa2BpUWGzhTNtYSeh7by1SaqIwLHkFGvDAPqWStA5E6saDa7VpXzg6M8aqS3:Ljava/lang/String;

    goto :goto_2

    .line 90
    :cond_7
    move-object v8, v5

    const-string/jumbo v9, "com.android.chrome"

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 91
    const-string/jumbo v8, "com.android.chrome"

    sput-object v8, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->YVNsLa2BpUWGzhTNtYSeh7by1SaqIwLHkFGvDAPqWStA5E6saDa7VpXzg6M8aqS3:Ljava/lang/String;

    goto :goto_2

    .line 92
    :cond_8
    move-object v8, v5

    const-string/jumbo v9, "com.chrome.beta"

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 93
    const-string/jumbo v8, "com.chrome.beta"

    sput-object v8, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->YVNsLa2BpUWGzhTNtYSeh7by1SaqIwLHkFGvDAPqWStA5E6saDa7VpXzg6M8aqS3:Ljava/lang/String;

    goto :goto_2

    .line 94
    :cond_9
    move-object v8, v5

    const-string/jumbo v9, "com.chrome.dev"

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 95
    const-string/jumbo v8, "com.chrome.dev"

    sput-object v8, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->YVNsLa2BpUWGzhTNtYSeh7by1SaqIwLHkFGvDAPqWStA5E6saDa7VpXzg6M8aqS3:Ljava/lang/String;

    goto :goto_2

    .line 96
    :cond_a
    move-object v8, v5

    const-string/jumbo v9, "com.google.android.apps.chrome"

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 97
    const-string/jumbo v8, "com.google.android.apps.chrome"

    sput-object v8, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->YVNsLa2BpUWGzhTNtYSeh7by1SaqIwLHkFGvDAPqWStA5E6saDa7VpXzg6M8aqS3:Ljava/lang/String;

    goto :goto_2
.end method

.method public static getPackages()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 133
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "com.android.chrome"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "com.chrome.beta"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "com.chrome.dev"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "com.google.android.apps.chrome"

    aput-object v3, v1, v2

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 110
    move-object v4, v1

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 113
    move-object v0, v4

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 114
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 126
    :goto_0
    return v0

    .line 116
    :cond_1
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    :cond_2
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 117
    move-object v1, v4

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 118
    move-object v2, v4

    if-eqz v3, :cond_2

    .line 119
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    move-object v3, v1

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    .line 121
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 125
    .line 126
    :cond_3
    :goto_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 124
    :catch_0
    move-exception v3

    sget-object v3, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Runtime exception while getting specialized handlers"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method
