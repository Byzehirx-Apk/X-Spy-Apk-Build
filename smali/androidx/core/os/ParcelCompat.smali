.class public final Landroidx/core/os/ParcelCompat;
.super Ljava/lang/Object;
.source "ParcelCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/ParcelCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBoolean(Landroid/os/Parcel;)Z
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "in":Landroid/os/Parcel;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "in":Landroid/os/Parcel;
    return v0

    .restart local v0    # "in":Landroid/os/Parcel;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writeBoolean(Landroid/os/Parcel;Z)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "out":Landroid/os/Parcel;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    return-void

    .line 41
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
