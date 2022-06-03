.class public final Landroidx/core/content/pm/PermissionInfoCompat;
.super Ljava/lang/Object;
.source "PermissionInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/PermissionInfoCompat$ProtectionFlags;,
        Landroidx/core/content/pm/PermissionInfoCompat$Protection;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/PermissionInfoCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getProtection(Landroid/content/pm/PermissionInfo;)I
    .locals 3
    .param p0    # Landroid/content/pm/PermissionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 74
    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    move v0, v1

    .line 77
    .end local v0    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :goto_0
    return v0

    .restart local v0    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/16 v2, 0xf

    and-int/lit8 v1, v1, 0xf

    move v0, v1

    goto :goto_0
.end method

.method public static getProtectionFlags(Landroid/content/pm/PermissionInfo;)I
    .locals 3
    .param p0    # Landroid/content/pm/PermissionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 88
    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    move v0, v1

    .line 91
    .end local v0    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :goto_0
    return v0

    .restart local v0    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/16 v2, -0x10

    and-int/lit8 v1, v1, -0x10

    move v0, v1

    goto :goto_0
.end method
