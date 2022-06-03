.class public abstract Landroidx/core/app/NotificationCompatSideChannelService;
.super Landroid/app/Service;
.source "NotificationCompatSideChannelService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompatSideChannelService;
    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Service;-><init>()V

    .line 74
    return-void
.end method


# virtual methods
.method public abstract cancel(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract cancelAll(Ljava/lang/String;)V
.end method

.method checkPermission(ILjava/lang/String;)V
    .locals 12

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompatSideChannelService;
    move v1, p1

    .local v1, "callingUid":I
    move-object v2, p2

    .local v2, "packageName":Ljava/lang/String;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/app/NotificationCompatSideChannelService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 115
    .local v6, "validPackage":Ljava/lang/String;
    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 116
    return-void

    .line 114
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 119
    .end local v6    # "validPackage":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/SecurityException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NotificationSideChannelService: Uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is not authorized for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public abstract notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompatSideChannelService;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-le v2, v3, :cond_0

    .line 52
    const/4 v2, 0x0

    move-object v0, v2

    .line 56
    .end local v0    # "this":Landroidx/core/app/NotificationCompatSideChannelService;
    :goto_0
    return-object v0

    .line 54
    .restart local v0    # "this":Landroidx/core/app/NotificationCompatSideChannelService;
    :cond_0
    new-instance v2, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;-><init>(Landroidx/core/app/NotificationCompatSideChannelService;)V

    move-object v0, v2

    goto :goto_0

    .line 56
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method
