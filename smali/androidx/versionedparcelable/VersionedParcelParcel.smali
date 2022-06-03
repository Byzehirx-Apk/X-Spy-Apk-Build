.class Landroidx/versionedparcelable/VersionedParcelParcel;
.super Landroidx/versionedparcelable/VersionedParcel;
.source "VersionedParcelParcel.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VersionedParcelParcel"


# instance fields
.field private mCurrentField:I

.field private final mEnd:I

.field private mNextRead:I

.field private final mOffset:I

.field private final mParcel:Landroid/os/Parcel;

.field private final mPositionLookup:Landroid/util/SparseIntArray;

.field private final mPrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, p1

    .local v1, "p":Landroid/os/Parcel;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    const-string/jumbo v6, ""

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/versionedparcelable/VersionedParcelParcel;-><init>(Landroid/os/Parcel;IILjava/lang/String;)V

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;IILjava/lang/String;)V
    .locals 9

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, p1

    .local v1, "p":Landroid/os/Parcel;
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "end":I
    move-object v4, p4

    .local v4, "prefix":Ljava/lang/String;
    move-object v5, v0

    invoke-direct {v5}, Landroidx/versionedparcelable/VersionedParcel;-><init>()V

    .line 37
    move-object v5, v0

    new-instance v6, Landroid/util/SparseIntArray;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v5, Landroidx/versionedparcelable/VersionedParcelParcel;->mPositionLookup:Landroid/util/SparseIntArray;

    .line 42
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/versionedparcelable/VersionedParcelParcel;->mCurrentField:I

    .line 43
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    .line 50
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 51
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/versionedparcelable/VersionedParcelParcel;->mOffset:I

    .line 52
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/versionedparcelable/VersionedParcelParcel;->mEnd:I

    .line 53
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroidx/versionedparcelable/VersionedParcelParcel;->mOffset:I

    iput v6, v5, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    .line 54
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/versionedparcelable/VersionedParcelParcel;->mPrefix:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private readUntilField(I)I
    .locals 7

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move v1, p1

    .local v1, "fieldId":I
    :goto_0
    move-object v4, v0

    iget v4, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    move-object v5, v0

    iget v5, v5, Landroidx/versionedparcelable/VersionedParcelParcel;->mEnd:I

    if-ge v4, v5, :cond_1

    .line 59
    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move-object v5, v0

    iget v5, v5, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v2, v4

    .line 61
    .local v2, "size":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v3, v4

    .line 64
    .local v3, "fid":I
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    move v6, v2

    add-int/2addr v5, v6

    iput v5, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    .line 65
    move v4, v3

    move v5, v1

    if-ne v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v0, v4

    .line 67
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    .end local v2    # "size":I
    .end local v3    # "fid":I
    :goto_1
    return v0

    .line 66
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    .restart local v2    # "size":I
    .restart local v3    # "fid":I
    :cond_0
    goto :goto_0

    .line 67
    .end local v2    # "size":I
    .end local v3    # "fid":I
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method public closeField()V
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v4, v0

    iget v4, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mCurrentField:I

    if-ltz v4, :cond_0

    .line 94
    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mPositionLookup:Landroid/util/SparseIntArray;

    move-object v5, v0

    iget v5, v5, Landroidx/versionedparcelable/VersionedParcelParcel;->mCurrentField:I

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    move v1, v4

    .line 95
    .local v1, "currentFieldPosition":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    .line 96
    .local v2, "position":I
    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    move v3, v4

    .line 101
    .local v3, "size":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    .end local v1    # "currentFieldPosition":I
    .end local v2    # "position":I
    .end local v3    # "size":I
    :cond_0
    return-void
.end method

.method protected createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
    .locals 9

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcelParcel;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    move-object v6, v0

    iget v6, v6, Landroidx/versionedparcelable/VersionedParcelParcel;->mOffset:I

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Landroidx/versionedparcelable/VersionedParcelParcel;->mEnd:I

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    iget-object v7, v7, Landroidx/versionedparcelable/VersionedParcelParcel;->mPrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/versionedparcelable/VersionedParcelParcel;-><init>(Landroid/os/Parcel;IILjava/lang/String;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    :cond_0
    move-object v5, v0

    iget v5, v5, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    goto :goto_0
.end method

.method public readBoolean()Z
    .locals 2

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, v0

    iget-object v1, v1, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    return v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, v0

    iget-object v1, v1, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    return-object v0
.end method

.method public readByteArray()[B
    .locals 5

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v1, v3

    .line 220
    .local v1, "len":I
    move v3, v1

    if-gez v3, :cond_0

    .line 221
    const/4 v3, 0x0

    move-object v0, v3

    .line 225
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    :goto_0
    return-object v0

    .line 223
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    :cond_0
    move v3, v1

    new-array v3, v3, [B

    move-object v2, v3

    .line 224
    .local v2, "bytes":[B
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 225
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public readDouble()D
    .locals 3

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, v0

    iget-object v1, v1, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    return-wide v0
.end method

.method public readField(I)Z
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move v1, p1

    .local v1, "fieldId":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/versionedparcelable/VersionedParcelParcel;->readUntilField(I)I

    move-result v3

    move v2, v3

    .line 73
    .local v2, "position":I
    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 74
    const/4 v3, 0x0

    move v0, v3

    .line 78
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    :goto_0
    return v0

    .line 77
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public readFloat()F
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, v0

    iget-object v1, v1, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    return v0
.end method

.method public readInt()I
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, v0

    iget-object v1, v1, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    return v0
.end method

.method public readLong()J
    .locals 3

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, v0

    iget-object v1, v1, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    return-wide v0
.end method

.method public readParcelable()Landroid/os/Parcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, v0

    iget-object v1, v1, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, v0

    iget-object v1, v1, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    return-object v0
.end method

.method public readStrongBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, v0

    iget-object v1, v1, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    return-object v0
.end method

.method public setOutputField(I)V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move v1, p1

    .local v1, "fieldId":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/versionedparcelable/VersionedParcelParcel;->closeField()V

    .line 84
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/versionedparcelable/VersionedParcelParcel;->mCurrentField:I

    .line 85
    move-object v2, v0

    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelParcel;->mPositionLookup:Landroid/util/SparseIntArray;

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/versionedparcelable/VersionedParcelParcel;->writeInt(I)V

    .line 88
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/versionedparcelable/VersionedParcelParcel;->writeInt(I)V

    .line 89
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 4

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move v1, p1

    .local v1, "val":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return-void

    .line 174
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public writeBundle(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, p1

    .local v1, "val":Landroid/os/Bundle;
    move-object v2, v0

    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 185
    return-void
.end method

.method public writeByteArray([B)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, p1

    .local v1, "b":[B
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 120
    move-object v2, v0

    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move-object v3, v1

    array-length v3, v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    move-object v2, v0

    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public writeByteArray([BII)V
    .locals 8

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "len":I
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 130
    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public writeDouble(D)V
    .locals 7

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-wide v1, p1

    .local v1, "val":D
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 155
    return-void
.end method

.method public writeFloat(F)V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move v1, p1

    .local v1, "val":F
    move-object v2, v0

    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 150
    return-void
.end method

.method public writeInt(I)V
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move v1, p1

    .local v1, "val":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    return-void
.end method

.method public writeLong(J)V
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-wide v1, p1

    .local v1, "val":J
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    return-void
.end method

.method public writeParcelable(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, p1

    .local v1, "p":Landroid/os/Parcelable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 170
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, p1

    .local v1, "val":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public writeStrongBinder(Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, p1

    .local v1, "val":Landroid/os/IBinder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 165
    return-void
.end method

.method public writeStrongInterface(Landroid/os/IInterface;)V
    .locals 4

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelParcel;
    move-object v1, p1

    .local v1, "val":Landroid/os/IInterface;
    move-object v2, v0

    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 180
    return-void
.end method
