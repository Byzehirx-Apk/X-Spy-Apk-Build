.class Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;
.super Ljava/lang/Object;
.source "VersionedParcelStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/versionedparcelable/VersionedParcelStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputBuffer"
.end annotation


# instance fields
.field final mFieldId:I

.field final mInputStream:Ljava/io/DataInputStream;

.field private final mSize:I


# direct methods
.method constructor <init>(IILjava/io/DataInputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;
    move v1, p1

    .local v1, "fieldId":I
    move v2, p2

    .local v2, "size":I
    move-object v3, p3

    .local v3, "inputStream":Ljava/io/DataInputStream;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 511
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mSize:I

    .line 512
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mFieldId:I

    .line 513
    move-object v5, v0

    iget v5, v5, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mSize:I

    new-array v5, v5, [B

    move-object v4, v5

    .line 514
    .local v4, "data":[B
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 515
    move-object v5, v0

    new-instance v6, Ljava/io/DataInputStream;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v4

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, v5, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mInputStream:Ljava/io/DataInputStream;

    .line 516
    return-void
.end method
