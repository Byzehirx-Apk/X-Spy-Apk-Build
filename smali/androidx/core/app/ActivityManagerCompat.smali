.class public final Landroidx/core/app/ActivityManagerCompat;
.super Ljava/lang/Object;
.source "ActivityManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityManagerCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLowRamDevice(Landroid/app/ActivityManager;)Z
    .locals 3
    .param p0    # Landroid/app/ActivityManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "activityManager":Landroid/app/ActivityManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 41
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    move v0, v1

    .line 43
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    :goto_0
    return v0

    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
