.class public Landroidx/versionedparcelable/VersionedParcel$ParcelException;
.super Ljava/lang/RuntimeException;
.source "VersionedParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/versionedparcelable/VersionedParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 1494
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcel$ParcelException;
    move-object v1, p1

    .local v1, "source":Ljava/lang/Throwable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1495
    return-void
.end method
