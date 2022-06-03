.class public final Landroidx/core/os/ParcelableCompat;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/ParcelableCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newCreator(Landroidx/core/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/os/ParcelableCompatCreatorCallbacks",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "callbacks":Landroidx/core/os/ParcelableCompatCreatorCallbacks;, "Landroidx/core/os/ParcelableCompatCreatorCallbacks<TT;>;"
    new-instance v1, Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;-><init>(Landroidx/core/os/ParcelableCompatCreatorCallbacks;)V

    move-object v0, v1

    .end local v0    # "callbacks":Landroidx/core/os/ParcelableCompatCreatorCallbacks;, "Landroidx/core/os/ParcelableCompatCreatorCallbacks<TT;>;"
    return-object v0
.end method
