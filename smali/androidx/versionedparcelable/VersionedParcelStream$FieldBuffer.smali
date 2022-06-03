.class Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;
.super Ljava/lang/Object;
.source "VersionedParcelStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/versionedparcelable/VersionedParcelStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldBuffer"
.end annotation


# instance fields
.field final mDataStream:Ljava/io/DataOutputStream;

.field private final mFieldId:I

.field final mOutput:Ljava/io/ByteArrayOutputStream;

.field private final mTarget:Ljava/io/DataOutputStream;


# direct methods
.method constructor <init>(ILjava/io/DataOutputStream;)V
    .locals 8

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;
    move v1, p1

    .local v1, "fieldId":I
    move-object v2, p2

    .local v2, "target":Ljava/io/DataOutputStream;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 483
    move-object v3, v0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v4, v3, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    .line 484
    move-object v3, v0

    new-instance v4, Ljava/io/DataOutputStream;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, v3, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mDataStream:Ljava/io/DataOutputStream;

    .line 489
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mFieldId:I

    .line 490
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mTarget:Ljava/io/DataOutputStream;

    .line 491
    return-void
.end method


# virtual methods
.method flushField()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mDataStream:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 495
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    move v1, v3

    .line 496
    .local v1, "size":I
    move-object v3, v0

    iget v3, v3, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mFieldId:I

    const/16 v4, 0x10

    shl-int/lit8 v3, v3, 0x10

    move v4, v1

    const v5, 0xffff

    if-lt v4, v5, :cond_1

    const v4, 0xffff

    :goto_0
    or-int/2addr v3, v4

    move v2, v3

    .line 497
    .local v2, "fieldInfo":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mTarget:Ljava/io/DataOutputStream;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 498
    move v3, v1

    const v4, 0xffff

    if-lt v3, v4, :cond_0

    .line 499
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mTarget:Ljava/io/DataOutputStream;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 501
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mTarget:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 502
    return-void

    .line 496
    .end local v2    # "fieldInfo":I
    :cond_1
    move v4, v1

    goto :goto_0
.end method
