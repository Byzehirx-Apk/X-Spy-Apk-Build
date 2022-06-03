.class public abstract Lgnu/lists/ByteVector;
.super Lgnu/lists/SimpleVector;
.source "ByteVector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[B


# instance fields
.field data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lgnu/lists/ByteVector;->empty:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ByteVector;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/SimpleVector;-><init>()V

    return-void
.end method


# virtual methods
.method public final byteAt(I)B
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ByteVector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/ByteVector;->size:I

    if-le v2, v3, :cond_0

    .line 36
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 37
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/ByteVector;->data:[B

    move v3, v1

    aget-byte v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/lists/ByteVector;
    return v0
.end method

.method public final byteAtBuffer(I)B
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ByteVector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/ByteVector;->data:[B

    move v3, v1

    aget-byte v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/lists/ByteVector;
    return v0
.end method

.method protected clearBuffer(II)V
    .locals 6

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ByteVector;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    if-ltz v3, :cond_0

    .line 81
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/ByteVector;->data:[B

    move v4, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ByteVector;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move v4, v1

    const/4 v5, 0x1

    ushr-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 48
    .local v3, "index":I
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/ByteVector;->size:I

    if-lt v4, v5, :cond_0

    .line 49
    const/4 v4, 0x0

    move v0, v4

    .line 51
    .end local v0    # "this":Lgnu/lists/ByteVector;
    :goto_0
    return v0

    .line 50
    .restart local v0    # "this":Lgnu/lists/ByteVector;
    :cond_0
    move-object v4, v2

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/ByteVector;->intAtBuffer(I)I

    move-result v5

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 51
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 9

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ByteVector;
    move v1, p1

    .local v1, "iposStart":I
    move v2, p2

    .local v2, "iposEnd":I
    move-object v3, p3

    .local v3, "out":Lgnu/lists/Consumer;
    move-object v6, v3

    invoke-interface {v6}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 57
    .line 64
    :goto_0
    return-void

    .line 58
    :cond_0
    move v6, v1

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 59
    .local v4, "i":I
    move v6, v2

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 60
    .local v5, "end":I
    move v6, v5

    move-object v7, v0

    iget v7, v7, Lgnu/lists/ByteVector;->size:I

    if-le v6, v7, :cond_1

    .line 61
    move-object v6, v0

    iget v6, v6, Lgnu/lists/ByteVector;->size:I

    move v5, v6

    .line 62
    :cond_1
    :goto_1
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_2

    .line 63
    move-object v6, v3

    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Lgnu/lists/ByteVector;->intAtBuffer(I)I

    move-result v7

    invoke-interface {v6, v7}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 64
    :cond_2
    goto :goto_0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ByteVector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/ByteVector;->data:[B

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/ByteVector;
    return-object v0
.end method

.method public getBufferLength()I
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ByteVector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/ByteVector;->data:[B

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/ByteVector;
    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ByteVector;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v5, v1

    invoke-interface {v5}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    move v2, v5

    .line 100
    .local v2, "size":I
    move v5, v2

    new-array v5, v5, [B

    move-object v3, v5

    .line 101
    .local v3, "data":[B
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 102
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    invoke-interface {v7}, Ljava/io/ObjectInput;->readByte()B

    move-result v7

    aput-byte v7, v5, v6

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 103
    :cond_0
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/lists/ByteVector;->data:[B

    .line 104
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lgnu/lists/ByteVector;->size:I

    .line 105
    return-void
.end method

.method public setBufferLength(I)V
    .locals 10

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ByteVector;
    move v1, p1

    .local v1, "length":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/ByteVector;->data:[B

    array-length v4, v4

    move v2, v4

    .line 22
    .local v2, "oldLength":I
    move v4, v2

    move v5, v1

    if-eq v4, v5, :cond_0

    .line 24
    move v4, v1

    new-array v4, v4, [B

    move-object v3, v4

    .line 25
    .local v3, "tmp":[B
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/ByteVector;->data:[B

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v2

    move v9, v1

    if-ge v8, v9, :cond_1

    move v8, v2

    :goto_0
    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/lists/ByteVector;->data:[B

    .line 29
    .end local v3    # "tmp":[B
    :cond_0
    return-void

    .line 25
    .restart local v3    # "tmp":[B
    :cond_1
    move v8, v1

    goto :goto_0
.end method

.method public final setByteAt(IB)V
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ByteVector;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "value":B
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/ByteVector;->size:I

    if-le v3, v4, :cond_0

    .line 69
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 70
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/ByteVector;->data:[B

    move v4, v1

    move v5, v2

    aput-byte v5, v3, v4

    .line 71
    return-void
.end method

.method public final setByteAtBuffer(IB)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ByteVector;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "value":B
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/ByteVector;->data:[B

    move v4, v1

    move v5, v2

    aput-byte v5, v3, v4

    .line 76
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lgnu/lists/ByteVector;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v4, v0

    iget v4, v4, Lgnu/lists/ByteVector;->size:I

    move v2, v4

    .line 91
    .local v2, "size":I
    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 92
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 93
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/ByteVector;->data:[B

    move v6, v3

    aget-byte v5, v5, v6

    invoke-interface {v4, v5}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method
