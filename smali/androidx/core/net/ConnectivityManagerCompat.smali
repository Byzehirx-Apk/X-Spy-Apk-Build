.class public final Landroidx/core/net/ConnectivityManagerCompat;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/net/ConnectivityManagerCompat$RestrictBackgroundStatus;
    }
.end annotation


# static fields
.field public static final RESTRICT_BACKGROUND_STATUS_DISABLED:I = 0x1

.field public static final RESTRICT_BACKGROUND_STATUS_ENABLED:I = 0x3

.field public static final RESTRICT_BACKGROUND_STATUS_WHITELISTED:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/ConnectivityManagerCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkInfoFromBroadcast(Landroid/net/ConnectivityManager;Landroid/content/Intent;)Landroid/net/NetworkInfo;
    .locals 5
    .param p0    # Landroid/net/ConnectivityManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NETWORK_STATE"
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "cm":Landroid/net/ConnectivityManager;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v3, v1

    const-string/jumbo v4, "networkInfo"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    move-object v2, v3

    .line 140
    .local v2, "info":Landroid/net/NetworkInfo;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 141
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    move-object v0, v3

    .line 143
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return-object v0

    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public static getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
    .locals 3
    .param p0    # Landroid/net/ConnectivityManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "cm":Landroid/net/ConnectivityManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 158
    move-object v1, v0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v1

    move v0, v1

    .line 160
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v0

    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    const/4 v1, 0x3

    move v0, v1

    goto :goto_0
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .locals 5
    .param p0    # Landroid/net/ConnectivityManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NETWORK_STATE"
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "cm":Landroid/net/ConnectivityManager;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 100
    move-object v3, v0

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v3

    move v0, v3

    .line 123
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .local v1, "info":Landroid/net/NetworkInfo;
    :goto_0
    return v0

    .line 102
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    move-object v1, v3

    .line 103
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    move-object v3, v1

    if-nez v3, :cond_1

    .line 105
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 108
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    move v2, v3

    .line 109
    .local v2, "type":I
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 123
    :pswitch_0
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 116
    :pswitch_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 120
    :pswitch_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
