.class public Landroidx/versionedparcelable/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/ParcelUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromInputStream(Ljava/io/InputStream;)Landroidx/versionedparcelable/VersionedParcelable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "input":Ljava/io/InputStream;
    new-instance v2, Landroidx/versionedparcelable/VersionedParcelStream;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 69
    .local v1, "stream":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/versionedparcelable/VersionedParcelStream;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "input":Ljava/io/InputStream;
    return-object v0
.end method

.method public static fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Landroid/os/Parcelable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "p":Landroid/os/Parcelable;
    move-object v1, v0

    instance-of v1, v1, Landroidx/versionedparcelable/ParcelImpl;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Invalid parcel"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/versionedparcelable/ParcelImpl;

    invoke-virtual {v1}, Landroidx/versionedparcelable/ParcelImpl;->getVersionedParcel()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "p":Landroid/os/Parcelable;
    return-object v0
.end method

.method public static toOutputStream(Landroidx/versionedparcelable/VersionedParcelable;Ljava/io/OutputStream;)V
    .locals 8

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "obj":Landroidx/versionedparcelable/VersionedParcelable;
    move-object v1, p1

    .local v1, "output":Ljava/io/OutputStream;
    new-instance v3, Landroidx/versionedparcelable/VersionedParcelStream;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 59
    .local v2, "stream":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 60
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcelStream;->closeField()V

    .line 61
    return-void
.end method

.method public static toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "obj":Landroidx/versionedparcelable/VersionedParcelable;
    new-instance v1, Landroidx/versionedparcelable/ParcelImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroidx/versionedparcelable/VersionedParcelable;)V

    move-object v0, v1

    .end local v0    # "obj":Landroidx/versionedparcelable/VersionedParcelable;
    return-object v0
.end method
