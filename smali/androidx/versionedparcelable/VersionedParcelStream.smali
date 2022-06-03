.class Landroidx/versionedparcelable/VersionedParcelStream;
.super Landroidx/versionedparcelable/VersionedParcel;
.source "VersionedParcelStream.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;,
        Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;
    }
.end annotation


# static fields
.field private static final TYPE_BOOLEAN:I = 0x5

.field private static final TYPE_BOOLEAN_ARRAY:I = 0x6

.field private static final TYPE_DOUBLE:I = 0x7

.field private static final TYPE_DOUBLE_ARRAY:I = 0x8

.field private static final TYPE_FLOAT:I = 0xd

.field private static final TYPE_FLOAT_ARRAY:I = 0xe

.field private static final TYPE_INT:I = 0x9

.field private static final TYPE_INT_ARRAY:I = 0xa

.field private static final TYPE_LONG:I = 0xb

.field private static final TYPE_LONG_ARRAY:I = 0xc

.field private static final TYPE_NULL:I = 0x0

.field private static final TYPE_STRING:I = 0x3

.field private static final TYPE_STRING_ARRAY:I = 0x4

.field private static final TYPE_SUB_BUNDLE:I = 0x1

.field private static final TYPE_SUB_PERSISTABLE_BUNDLE:I = 0x2

.field private static final UTF_16:Ljava/nio/charset/Charset;


# instance fields
.field private final mCachedFields:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentInput:Ljava/io/DataInputStream;

.field private mCurrentOutput:Ljava/io/DataOutputStream;

.field private mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

.field private mIgnoreParcelables:Z

.field private final mMasterInput:Ljava/io/DataInputStream;

.field private final mMasterOutput:Ljava/io/DataOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "UTF-16"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroidx/versionedparcelable/VersionedParcelStream;->UTF_16:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 8

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v1, p1

    .local v1, "input":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "output":Ljava/io/OutputStream;
    move-object v3, v0

    invoke-direct {v3}, Landroidx/versionedparcelable/VersionedParcel;-><init>()V

    .line 64
    move-object v3, v0

    new-instance v4, Landroid/util/SparseArray;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCachedFields:Landroid/util/SparseArray;

    .line 72
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/DataInputStream;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    iput-object v4, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    .line 73
    move-object v3, v0

    move-object v4, v2

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/DataOutputStream;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_1
    iput-object v4, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterOutput:Ljava/io/DataOutputStream;

    .line 74
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    iput-object v4, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    .line 75
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterOutput:Ljava/io/DataOutputStream;

    iput-object v4, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    .line 76
    return-void

    .line 72
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 73
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private readObject(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move v1, p1

    .local v1, "type":I
    move-object v2, p2

    .local v2, "key":Ljava/lang/String;
    move-object v3, p3

    .local v3, "b":Landroid/os/Bundle;
    move v4, v1

    packed-switch v4, :pswitch_data_0

    .line 475
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 430
    :pswitch_0
    move-object v4, v3

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 431
    .line 477
    :goto_0
    return-void

    .line 433
    :pswitch_1
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcelStream;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 434
    goto :goto_0

    .line 436
    :pswitch_2
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcelStream;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 437
    goto :goto_0

    .line 439
    :pswitch_3
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcelStream;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    goto :goto_0

    .line 442
    :pswitch_4
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/versionedparcelable/VersionedParcelStream;->readArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 443
    goto :goto_0

    .line 445
    :pswitch_5
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcelStream;->readBoolean()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    goto :goto_0

    .line 448
    :pswitch_6
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcelStream;->readBooleanArray()[Z

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 449
    goto :goto_0

    .line 451
    :pswitch_7
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcelStream;->readDouble()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 452
    goto :goto_0

    .line 454
    :pswitch_8
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcelStream;->readDoubleArray()[D

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 455
    goto :goto_0

    .line 457
    :pswitch_9
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcelStream;->readInt()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    goto :goto_0

    .line 460
    :pswitch_a
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcelStream;->readIntArray()[I

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 461
    goto :goto_0

    .line 463
    :pswitch_b
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcelStream;->readLong()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 464
    goto :goto_0

    .line 466
    :pswitch_c
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcelStream;->readLongArray()[J

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 467
    goto/16 :goto_0

    .line 469
    :pswitch_d
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcelStream;->readFloat()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 470
    goto/16 :goto_0

    .line 472
    :pswitch_e
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcelStream;->readFloatArray()[F

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 473
    goto/16 :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private writeObject(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 381
    move-object v1, p0

    .local v1, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v2, p1

    .local v2, "o":Ljava/lang/Object;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 382
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 425
    :goto_0
    return-void

    .line 383
    :cond_0
    move-object v3, v2

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 384
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 385
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 386
    :cond_1
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 387
    move-object v3, v1

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 388
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_2
    move-object v3, v2

    instance-of v3, v3, [Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 390
    move-object v3, v1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 391
    move-object v3, v1

    move-object v4, v2

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeArray([Ljava/lang/Object;)V

    goto :goto_0

    .line 392
    :cond_3
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    .line 393
    move-object v3, v1

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 394
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeBoolean(Z)V

    goto :goto_0

    .line 395
    :cond_4
    move-object v3, v2

    instance-of v3, v3, [Z

    if-eqz v3, :cond_5

    .line 396
    move-object v3, v1

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 397
    move-object v3, v1

    move-object v4, v2

    check-cast v4, [Z

    check-cast v4, [Z

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeBooleanArray([Z)V

    goto :goto_0

    .line 398
    :cond_5
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/Double;

    if-eqz v3, :cond_6

    .line 399
    move-object v3, v1

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 400
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcelStream;->writeDouble(D)V

    goto :goto_0

    .line 401
    :cond_6
    move-object v3, v2

    instance-of v3, v3, [D

    if-eqz v3, :cond_7

    .line 402
    move-object v3, v1

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 403
    move-object v3, v1

    move-object v4, v2

    check-cast v4, [D

    check-cast v4, [D

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeDoubleArray([D)V

    goto/16 :goto_0

    .line 404
    :cond_7
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_8

    .line 405
    move-object v3, v1

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 406
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    goto/16 :goto_0

    .line 407
    :cond_8
    move-object v3, v2

    instance-of v3, v3, [I

    if-eqz v3, :cond_9

    .line 408
    move-object v3, v1

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 409
    move-object v3, v1

    move-object v4, v2

    check-cast v4, [I

    check-cast v4, [I

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeIntArray([I)V

    goto/16 :goto_0

    .line 410
    :cond_9
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_a

    .line 411
    move-object v3, v1

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 412
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcelStream;->writeLong(J)V

    goto/16 :goto_0

    .line 413
    :cond_a
    move-object v3, v2

    instance-of v3, v3, [J

    if-eqz v3, :cond_b

    .line 414
    move-object v3, v1

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 415
    move-object v3, v1

    move-object v4, v2

    check-cast v4, [J

    check-cast v4, [J

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeLongArray([J)V

    goto/16 :goto_0

    .line 416
    :cond_b
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/Float;

    if-eqz v3, :cond_c

    .line 417
    move-object v3, v1

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 418
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeFloat(F)V

    goto/16 :goto_0

    .line 419
    :cond_c
    move-object v3, v2

    instance-of v3, v3, [F

    if-eqz v3, :cond_d

    .line 420
    move-object v3, v1

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    .line 421
    move-object v3, v1

    move-object v4, v2

    check-cast v4, [F

    check-cast v4, [F

    invoke-virtual {v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;->writeFloatArray([F)V

    goto/16 :goto_0

    .line 423
    :cond_d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public closeField()V
    .locals 6

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v2, v0

    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    if-eqz v2, :cond_1

    .line 97
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    move-object v2, v0

    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    invoke-virtual {v2}, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->flushField()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    .line 105
    :cond_1
    return-void

    .line 100
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 101
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
    .locals 6

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    new-instance v1, Landroidx/versionedparcelable/VersionedParcelStream;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    move-object v4, v0

    iget-object v4, v4, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-direct {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    return-object v0
.end method

.method public isStream()Z
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    return v0
.end method

.method public readBoolean()Z
    .locals 6

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    return v0

    .line 342
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 343
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readBundle()Landroid/os/Bundle;
    .locals 10

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/versionedparcelable/VersionedParcelStream;->readInt()I

    move-result v5

    move v1, v5

    .line 369
    .local v1, "size":I
    move v5, v1

    if-gez v5, :cond_0

    .line 370
    const/4 v5, 0x0

    move-object v0, v5

    .line 377
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    :goto_0
    return-object v0

    .line 372
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v2, v5

    .line 373
    .local v2, "b":Landroid/os/Bundle;
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 374
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/versionedparcelable/VersionedParcelStream;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 375
    .local v4, "key":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/versionedparcelable/VersionedParcelStream;->readInt()I

    move-result v6

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroidx/versionedparcelable/VersionedParcelStream;->readObject(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 373
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 377
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    move-object v5, v2

    move-object v0, v5

    goto :goto_0
.end method

.method public readByteArray()[B
    .locals 7

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v1, v3

    .line 326
    .local v1, "len":I
    move v3, v1

    if-lez v3, :cond_0

    .line 327
    move v3, v1

    new-array v3, v3, [B

    move-object v2, v3

    .line 328
    .local v2, "bytes":[B
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    move-object v3, v2

    move-object v0, v3

    .line 331
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    .end local v2    # "bytes":[B
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 333
    .end local v1    # "len":I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 334
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public readDouble()D
    .locals 6

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readDouble()D
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    return-wide v0

    .line 301
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 302
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readField(I)Z
    .locals 11

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move v1, p1

    .local v1, "fieldId":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/versionedparcelable/VersionedParcelStream;->mCachedFields:Landroid/util/SparseArray;

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;

    move-object v2, v5

    .line 115
    .local v2, "buffer":Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 116
    move-object v5, v0

    iget-object v5, v5, Landroidx/versionedparcelable/VersionedParcelStream;->mCachedFields:Landroid/util/SparseArray;

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 117
    move-object v5, v0

    move-object v6, v2

    iget-object v6, v6, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mInputStream:Ljava/io/DataInputStream;

    iput-object v6, v5, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    .line 118
    const/4 v5, 0x1

    move v0, v5

    .line 136
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    :goto_0
    return v0

    .line 132
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    .local v3, "fieldInfo":I
    .local v4, "size":I
    :cond_0
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/versionedparcelable/VersionedParcelStream;->mCachedFields:Landroid/util/SparseArray;

    move-object v6, v2

    iget v6, v6, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mFieldId:I

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    .line 122
    .end local v3    # "fieldInfo":I
    .end local v4    # "size":I
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    move v3, v5

    .line 123
    .restart local v3    # "fieldInfo":I
    move v5, v3

    const v6, 0xffff

    and-int/2addr v5, v6

    move v4, v5

    .line 124
    .restart local v4    # "size":I
    move v5, v4

    const v6, 0xffff

    if-ne v5, v6, :cond_2

    .line 125
    move-object v5, v0

    iget-object v5, v5, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    move v4, v5

    .line 127
    :cond_2
    new-instance v5, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v3

    const/16 v8, 0x10

    shr-int/lit8 v7, v7, 0x10

    const v8, 0xffff

    and-int/2addr v7, v8

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    invoke-direct {v6, v7, v8, v9}, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;-><init>(IILjava/io/DataInputStream;)V

    move-object v2, v5

    .line 128
    move-object v5, v2

    iget v5, v5, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mFieldId:I

    move v6, v1

    if-ne v5, v6, :cond_0

    .line 129
    move-object v5, v0

    move-object v6, v2

    iget-object v6, v6, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mInputStream:Ljava/io/DataInputStream;

    iput-object v6, v5, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 134
    .end local v3    # "fieldInfo":I
    .end local v4    # "size":I
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 136
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public readFloat()F
    .locals 6

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    return v0

    .line 292
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 293
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readInt()I
    .locals 6

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    return v0

    .line 274
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 275
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readLong()J
    .locals 6

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    return-wide v0

    .line 283
    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 284
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readParcelable()Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v1, v3

    .line 310
    .local v1, "len":I
    move v3, v1

    if-lez v3, :cond_0

    .line 311
    move v3, v1

    new-array v3, v3, [B

    move-object v2, v3

    .line 312
    .local v2, "bytes":[B
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 313
    new-instance v3, Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    sget-object v6, Landroidx/versionedparcelable/VersionedParcelStream;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 315
    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    .end local v2    # "bytes":[B
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 317
    .end local v1    # "len":I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 318
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public readStrongBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Landroidx/versionedparcelable/VersionedParcelStream;
    return-object v0
.end method

.method public setOutputField(I)V
    .locals 8

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move v1, p1

    .local v1, "fieldId":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/versionedparcelable/VersionedParcelStream;->closeField()V

    .line 142
    move-object v2, v0

    new-instance v3, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterOutput:Ljava/io/DataOutputStream;

    invoke-direct {v4, v5, v6}, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;-><init>(ILjava/io/DataOutputStream;)V

    iput-object v3, v2, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    .line 143
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mDataStream:Ljava/io/DataOutputStream;

    iput-object v3, v2, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    .line 144
    return-void
.end method

.method public setSerializationFlags(ZZ)V
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move v1, p1

    .local v1, "allowSerialization":Z
    move v2, p2

    .local v2, "ignoreParcelables":Z
    move v3, v1

    if-nez v3, :cond_0

    .line 88
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Serialization of this object is not allowed"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_0
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    .line 91
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 7

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move v1, p1

    .local v1, "val":Z
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .line 236
    return-void

    .line 233
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 234
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public writeBundle(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v1, p1

    .local v1, "val":Landroid/os/Bundle;
    move-object v6, v1

    if-eqz v6, :cond_1

    .line 351
    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    move-object v2, v6

    .line 352
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v6, v0

    iget-object v6, v6, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 353
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 354
    .local v4, "key":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/versionedparcelable/VersionedParcelStream;->writeString(Ljava/lang/String;)V

    .line 355
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 356
    .local v5, "o":Ljava/lang/Object;
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Landroidx/versionedparcelable/VersionedParcelStream;->writeObject(Ljava/lang/Object;)V

    .line 357
    goto :goto_0

    .line 358
    .line 363
    .line 364
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "o":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 359
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 361
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 362
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-direct {v7, v8}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public writeByteArray([B)V
    .locals 7

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v1, p1

    .local v1, "b":[B
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 150
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    move-object v4, v1

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 157
    .line 158
    :goto_0
    return-void

    .line 153
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 156
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public writeByteArray([BII)V
    .locals 10

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "len":I
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 164
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 165
    move-object v5, v0

    iget-object v5, v5, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/DataOutputStream;->write([BII)V

    .line 171
    .line 172
    :goto_0
    return-void

    .line 167
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 170
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    invoke-direct {v6, v7}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public writeDouble(D)V
    .locals 9

    .prologue
    .line 207
    move-object v1, p0

    .local v1, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-wide v2, p1

    .local v2, "val":D
    move-object v5, v1

    :try_start_0
    iget-object v5, v5, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/io/DataOutputStream;->writeDouble(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .line 212
    return-void

    .line 208
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 209
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public writeFloat(F)V
    .locals 7

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move v1, p1

    .local v1, "val":F
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .line 202
    return-void

    .line 198
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 199
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public writeInt(I)V
    .locals 7

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move v1, p1

    .local v1, "val":I
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 182
    return-void

    .line 178
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 179
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public writeLong(J)V
    .locals 9

    .prologue
    .line 187
    move-object v1, p0

    .local v1, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-wide v2, p1

    .local v2, "val":J
    move-object v5, v1

    :try_start_0
    iget-object v5, v5, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .line 192
    return-void

    .line 188
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 189
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public writeParcelable(Landroid/os/Parcelable;)V
    .locals 6

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v1, p1

    .local v1, "p":Landroid/os/Parcelable;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    if-nez v2, :cond_0

    .line 248
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Parcelables cannot be written to an OutputStream"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_0
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v1, p1

    .local v1, "val":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 218
    move-object v3, v1

    :try_start_0
    sget-object v4, Landroidx/versionedparcelable/VersionedParcelStream;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    move-object v2, v3

    .line 219
    .local v2, "bytes":[B
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    move-object v4, v2

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 220
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 221
    .line 226
    .line 227
    .end local v2    # "bytes":[B
    :goto_0
    return-void

    .line 222
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 225
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public writeStrongBinder(Landroid/os/IBinder;)V
    .locals 6

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v1, p1

    .local v1, "val":Landroid/os/IBinder;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    if-nez v2, :cond_0

    .line 241
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Binders cannot be written to an OutputStream"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_0
    return-void
.end method

.method public writeStrongInterface(Landroid/os/IInterface;)V
    .locals 6

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Landroidx/versionedparcelable/VersionedParcelStream;
    move-object v1, p1

    .local v1, "val":Landroid/os/IInterface;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    if-nez v2, :cond_0

    .line 255
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Binders cannot be written to an OutputStream"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    :cond_0
    return-void
.end method
