.class public final Landroidx/core/content/pm/PackageInfoCompat;
.super Ljava/lang/Object;
.source "PackageInfoCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/PackageInfoCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getLongVersionCode(Landroid/content/pm/PackageInfo;)J
    .locals 4
    .param p0    # Landroid/content/pm/PackageInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    move-object v1, p0

    .local v1, "info":Landroid/content/pm/PackageInfo;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 35
    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    move-wide v1, v2

    .line 38
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-wide v1

    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    move-object v2, v1

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v2, v2

    move-wide v1, v2

    goto :goto_0
.end method
