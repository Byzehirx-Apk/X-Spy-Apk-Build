.class public final Landroidx/core/content/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/PermissionChecker$PermissionResult;
    }
.end annotation


# static fields
.field public static final PERMISSION_DENIED:I = -0x1

.field public static final PERMISSION_DENIED_APP_OP:I = -0x2

.field public static final PERMISSION_GRANTED:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/PermissionChecker;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static checkCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "permission":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_0

    move-object v3, v0

    .line 172
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 173
    .local v2, "packageName":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 174
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v7, v2

    .line 173
    invoke-static {v3, v4, v5, v6, v7}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    move v0, v3

    .end local v0    # "context":Landroid/content/Context;
    return v0

    .line 172
    .end local v2    # "packageName":Ljava/lang/String;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static checkCallingPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "permission":Ljava/lang/String;
    move-object v2, p2

    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 153
    const/4 v3, -0x1

    move v0, v3

    .line 155
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v7, v2

    .line 155
    invoke-static {v3, v4, v5, v6, v7}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "permission":Ljava/lang/String;
    move v2, p2

    .local v2, "pid":I
    move v3, p3

    .local v3, "uid":I
    move-object v4, p4

    .local v4, "packageName":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 98
    const/4 v7, -0x1

    move v0, v7

    .line 119
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return v0

    .line 101
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v7, v1

    invoke-static {v7}, Landroidx/core/app/AppOpsManagerCompat;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 102
    .local v5, "op":Ljava/lang/String;
    move-object v7, v5

    if-nez v7, :cond_1

    .line 103
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 106
    :cond_1
    move-object v7, v4

    if-nez v7, :cond_4

    .line 107
    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 108
    .local v6, "packageNames":[Ljava/lang/String;
    move-object v7, v6

    if-eqz v7, :cond_2

    move-object v7, v6

    array-length v7, v7

    if-gtz v7, :cond_3

    .line 109
    :cond_2
    const/4 v7, -0x1

    move v0, v7

    goto :goto_0

    .line 111
    :cond_3
    move-object v7, v6

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v4, v7

    .line 114
    .end local v6    # "packageNames":[Ljava/lang/String;
    :cond_4
    move-object v7, v0

    move-object v8, v5

    move-object v9, v4

    invoke-static {v7, v8, v9}, Landroidx/core/app/AppOpsManagerCompat;->noteProxyOpNoThrow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_5

    .line 116
    const/4 v7, -0x2

    move v0, v7

    goto :goto_0

    .line 119
    :cond_5
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "permission":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 135
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-static {v2, v3, v4, v5, v6}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    move v0, v2

    .end local v0    # "context":Landroid/content/Context;
    return v0
.end method
