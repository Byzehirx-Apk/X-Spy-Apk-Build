.class public Landroidx/versionedparcelable/ParcelImpl;
.super Ljava/lang/Object;
.source "ParcelImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mParcel:Landroidx/versionedparcelable/VersionedParcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/versionedparcelable/ParcelImpl$1;-><init>()V

    sput-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/ParcelImpl;
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v2, v0

    new-instance v3, Landroidx/versionedparcelable/VersionedParcelParcel;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/versionedparcelable/VersionedParcelParcel;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcelParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v3

    iput-object v3, v2, Landroidx/versionedparcelable/ParcelImpl;->mParcel:Landroidx/versionedparcelable/VersionedParcelable;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroidx/versionedparcelable/VersionedParcelable;)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/ParcelImpl;
    move-object v1, p1

    .local v1, "parcel":Landroidx/versionedparcelable/VersionedParcelable;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/versionedparcelable/ParcelImpl;->mParcel:Landroidx/versionedparcelable/VersionedParcelable;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/ParcelImpl;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/ParcelImpl;
    return v0
.end method

.method public getVersionedParcel()Landroidx/versionedparcelable/VersionedParcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/ParcelImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/versionedparcelable/ParcelImpl;->mParcel:Landroidx/versionedparcelable/VersionedParcelable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/ParcelImpl;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/ParcelImpl;
    move-object v1, p1

    .local v1, "dest":Landroid/os/Parcel;
    move v2, p2

    .local v2, "flags":I
    new-instance v4, Landroidx/versionedparcelable/VersionedParcelParcel;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/versionedparcelable/VersionedParcelParcel;-><init>(Landroid/os/Parcel;)V

    move-object v3, v4

    .line 55
    .local v3, "parcel":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/versionedparcelable/ParcelImpl;->mParcel:Landroidx/versionedparcelable/VersionedParcelable;

    invoke-virtual {v4, v5}, Landroidx/versionedparcelable/VersionedParcelParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 56
    return-void
.end method
