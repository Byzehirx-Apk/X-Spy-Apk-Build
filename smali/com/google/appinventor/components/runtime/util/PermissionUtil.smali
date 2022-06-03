.class public Lcom/google/appinventor/components/runtime/util/PermissionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "Permission Util"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/PermissionUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static appSettings(Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 79
    move-object v0, p0

    new-instance v2, Landroid/content/Intent;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string/jumbo v5, "package"

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 80
    move-object v1, v3

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 81
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public static appSystemSettings(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 91
    new-instance v2, Landroid/content/Intent;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 92
    move-object v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "package:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 93
    move-object v2, v1

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 94
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    :cond_0
    return-void
.end method

.method public static arePermissionsGranted(Landroid/content/Context;)Z
    .locals 8

    .prologue
    .line 59
    move-object v0, p0

    move-object v5, v0

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/PermissionUtil;->getNeededPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    .line 60
    move-object v1, v6

    if-eqz v5, :cond_0

    move-object v5, v1

    array-length v5, v5

    if-nez v5, :cond_1

    .line 61
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    .line 70
    :goto_0
    return v0

    .line 64
    :cond_1
    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_3

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 65
    move-object v5, v0

    check-cast v5, Landroid/app/Activity;

    move-object v6, v4

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 66
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 67
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 64
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 70
    :cond_3
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method public static getNeededPermissions(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 43
    move-object v1, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object v0, v2

    .line 44
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x1000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 45
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 48
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 47
    sget-object v2, Lcom/google/appinventor/components/runtime/util/PermissionUtil;->LOG_TAG:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 48
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public static writeSystemSettings(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 105
    move-object v1, v0

    invoke-static {v1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v1

    move v0, v1

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method
