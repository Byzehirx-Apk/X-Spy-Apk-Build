.class Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/ParcelableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParcelableCompatCreatorHoneycombMR2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mCallbacks:Landroidx/core/os/ParcelableCompatCreatorCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/os/ParcelableCompatCreatorCallbacks",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/core/os/ParcelableCompatCreatorCallbacks;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/os/ParcelableCompatCreatorCallbacks",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;, "Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2<TT;>;"
    move-object v1, p1

    .local v1, "callbacks":Landroidx/core/os/ParcelableCompatCreatorCallbacks;, "Landroidx/core/os/ParcelableCompatCreatorCallbacks<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;->mCallbacks:Landroidx/core/os/ParcelableCompatCreatorCallbacks;

    .line 50
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;, "Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2<TT;>;"
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;->mCallbacks:Landroidx/core/os/ParcelableCompatCreatorCallbacks;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroidx/core/os/ParcelableCompatCreatorCallbacks;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;, "Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2<TT;>;"
    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;, "Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2<TT;>;"
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    move-object v2, p2

    .local v2, "loader":Ljava/lang/ClassLoader;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;->mCallbacks:Landroidx/core/os/ParcelableCompatCreatorCallbacks;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/core/os/ParcelableCompatCreatorCallbacks;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;, "Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2<TT;>;"
    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;, "Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2<TT;>;"
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;->mCallbacks:Landroidx/core/os/ParcelableCompatCreatorCallbacks;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/os/ParcelableCompatCreatorCallbacks;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;, "Landroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2<TT;>;"
    return-object v0
.end method
