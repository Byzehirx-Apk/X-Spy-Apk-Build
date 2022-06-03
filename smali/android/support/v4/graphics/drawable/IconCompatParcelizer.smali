.class public final Landroid/support/v4/graphics/drawable/IconCompatParcelizer;
.super Landroidx/core/graphics/drawable/IconCompatParcelizer;
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
    .line 10
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/graphics/drawable/IconCompatParcelizer;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/graphics/drawable/IconCompatParcelizer;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "parcel":Landroidx/versionedparcelable/VersionedParcel;
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompatParcelizer;->read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "parcel":Landroidx/versionedparcelable/VersionedParcel;
    return-object v0
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 4

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "obj":Landroidx/core/graphics/drawable/IconCompat;
    move-object v1, p1

    .local v1, "parcel":Landroidx/versionedparcelable/VersionedParcel;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/IconCompatParcelizer;->write(Landroidx/core/graphics/drawable/IconCompat;Landroidx/versionedparcelable/VersionedParcel;)V

    .line 17
    return-void
.end method
