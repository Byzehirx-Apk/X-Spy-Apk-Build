.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "IconCompatParcelizer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompatParcelizer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 7

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "parcel":Landroidx/versionedparcelable/VersionedParcel;
    new-instance v2, Landroidx/core/graphics/drawable/IconCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroidx/core/graphics/drawable/IconCompat;-><init>()V

    move-object v1, v2

    .line 12
    .local v1, "obj":Landroidx/core/graphics/drawable/IconCompat;
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v3

    iput v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    .line 13
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray([BI)[B

    move-result-object v3

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    .line 14
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    .line 15
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v3

    iput v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 16
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v3

    iput v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    .line 17
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/res/ColorStateList;

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    .line 18
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    .line 19
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->onPostParceling()V

    .line 20
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "parcel":Landroidx/versionedparcelable/VersionedParcel;
    return-object v0
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 5

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "obj":Landroidx/core/graphics/drawable/IconCompat;
    move-object v1, p1

    .local v1, "parcel":Landroidx/versionedparcelable/VersionedParcel;
    move-object v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 25
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->isStream()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/graphics/drawable/IconCompat;->onPreParceling(Z)V

    .line 26
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 27
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([BI)V

    .line 28
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 29
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 30
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 31
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 32
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;I)V

    .line 33
    return-void
.end method
