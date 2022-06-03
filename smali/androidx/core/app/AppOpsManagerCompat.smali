.class public final Landroidx/core/app/AppOpsManagerCompat;
.super Ljava/lang/Object;
.source "AppOpsManagerCompat.java"


# static fields
.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/AppOpsManagerCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "op":Ljava/lang/String;
    move v2, p2

    .local v2, "uid":I
    move-object v3, p3

    .local v3, "packageName":Ljava/lang/String;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    .line 105
    move-object v5, v0

    const-string/jumbo v6, "appops"

    .line 106
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    move-object v4, v5

    .line 107
    .local v4, "appOpsManager":Landroid/app/AppOpsManager;
    move-object v5, v4

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    move v0, v5

    .line 109
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "appOpsManager":Landroid/app/AppOpsManager;
    :goto_0
    return v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method public static noteOpNoThrow(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "op":Ljava/lang/String;
    move v2, p2

    .local v2, "uid":I
    move-object v3, p3

    .local v3, "packageName":Ljava/lang/String;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    .line 125
    move-object v5, v0

    const-string/jumbo v6, "appops"

    .line 126
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    move-object v4, v5

    .line 127
    .local v4, "appOpsManager":Landroid/app/AppOpsManager;
    move-object v5, v4

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    move v0, v5

    .line 129
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "appOpsManager":Landroid/app/AppOpsManager;
    :goto_0
    return v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method public static noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "op":Ljava/lang/String;
    move-object v2, p2

    .local v2, "proxiedPackageName":Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 157
    move-object v4, v0

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    move-object v3, v4

    .line 158
    .local v3, "appOpsManager":Landroid/app/AppOpsManager;
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/app/AppOpsManager;->noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .line 160
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "appOpsManager":Landroid/app/AppOpsManager;
    :goto_0
    return v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public static noteProxyOpNoThrow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "op":Ljava/lang/String;
    move-object v2, p2

    .local v2, "proxiedPackageName":Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 176
    move-object v4, v0

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    move-object v3, v4

    .line 177
    .local v3, "appOpsManager":Landroid/app/AppOpsManager;
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .line 179
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "appOpsManager":Landroid/app/AppOpsManager;
    :goto_0
    return v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "permission":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 76
    move-object v1, v0

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 78
    .end local v0    # "permission":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "permission":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method
