.class public Lgnu/lists/U32Vector;
.super Lgnu/lists/SimpleVector;
.source "U32Vector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# instance fields
.field data:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/SimpleVector;-><init>()V

    .line 19
    move-object v1, v0

    sget-object v2, Lgnu/lists/S32Vector;->empty:[I

    iput-object v2, v1, Lgnu/lists/U32Vector;->data:[I

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 33
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [I

    iput-object v3, v2, Lgnu/lists/U32Vector;->data:[I

    .line 34
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/lists/U32Vector;->size:I

    .line 35
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move v1, p1

    .local v1, "size":I
    move v2, p2

    .local v2, "value":I
    move-object v4, v0

    invoke-direct {v4}, Lgnu/lists/SimpleVector;-><init>()V

    .line 24
    move v4, v1

    new-array v4, v4, [I

    move-object v3, v4

    .line 25
    .local v3, "array":[I
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/lists/U32Vector;->data:[I

    .line 26
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lgnu/lists/U32Vector;->size:I

    .line 27
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v4, v1

    if-ltz v4, :cond_0

    .line 28
    move-object v4, v3

    move v5, v1

    move v6, v2

    aput v6, v4, v5

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/Sequence;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 45
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lgnu/lists/Sequence;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v2, Lgnu/lists/U32Vector;->data:[I

    .line 46
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/U32Vector;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 47
    return-void
.end method

.method public constructor <init>([I)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move-object v1, p1

    .local v1, "data":[I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 39
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/U32Vector;->data:[I

    .line 40
    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    iput v3, v2, Lgnu/lists/U32Vector;->size:I

    .line 41
    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 6

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    if-ltz v3, :cond_0

    .line 120
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/U32Vector;->data:[I

    move v4, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/lists/U32Vector;

    invoke-static {v2, v3}, Lgnu/lists/U32Vector;->compareToLong(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/U32Vector;
    return v0
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 7

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move v4, v1

    const/4 v5, 0x1

    ushr-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 133
    .local v3, "index":I
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/U32Vector;->size:I

    if-lt v4, v5, :cond_0

    .line 134
    const/4 v4, 0x0

    move v0, v4

    .line 136
    .end local v0    # "this":Lgnu/lists/U32Vector;
    :goto_0
    return v0

    .line 135
    .restart local v0    # "this":Lgnu/lists/U32Vector;
    :cond_0
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/U32Vector;->data:[I

    move v6, v3

    aget v5, v5, v6

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 136
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 9

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
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

    .line 142
    .line 149
    :goto_0
    return-void

    .line 143
    :cond_0
    move v6, v1

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 144
    .local v4, "i":I
    move v6, v2

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 145
    .local v5, "end":I
    move v6, v5

    move-object v7, v0

    iget v7, v7, Lgnu/lists/U32Vector;->size:I

    if-le v6, v7, :cond_1

    .line 146
    move-object v6, v0

    iget v6, v6, Lgnu/lists/U32Vector;->size:I

    move v5, v6

    .line 147
    :cond_1
    :goto_1
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_2

    .line 148
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/U32Vector;->data:[I

    move v8, v4

    aget v7, v7, v8

    invoke-interface {v6, v7}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 149
    :cond_2
    goto :goto_0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/U32Vector;->size:I

    if-le v2, v3, :cond_0

    .line 89
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 90
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/U32Vector;->data:[I

    move v3, v1

    aget v2, v2, v3

    invoke-static {v2}, Lgnu/lists/Convert;->toObjectUnsigned(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/U32Vector;
    return-object v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/U32Vector;->data:[I

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/U32Vector;
    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/U32Vector;->data:[I

    move v3, v1

    aget v2, v2, v3

    invoke-static {v2}, Lgnu/lists/Convert;->toObjectUnsigned(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/U32Vector;
    return-object v0
.end method

.method public getBufferLength()I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/U32Vector;->data:[I

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/U32Vector;
    return v0
.end method

.method public getElementKind()I
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    const/16 v1, 0x13

    move v0, v1

    .end local v0    # "this":Lgnu/lists/U32Vector;
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    const-string/jumbo v1, "u32"

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/U32Vector;
    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/U32Vector;->data:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/lists/U32Vector;
    return v0
.end method

.method public final longAt(I)J
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/U32Vector;->size:I

    if-le v2, v3, :cond_0

    .line 82
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 83
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/U32Vector;->longAtBuffer(I)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Lgnu/lists/U32Vector;
    return-wide v0
.end method

.method public final longAtBuffer(I)J
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/U32Vector;->data:[I

    move v3, v1

    aget v2, v2, v3

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    move-wide v0, v2

    .end local v0    # "this":Lgnu/lists/U32Vector;
    return-wide v0
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
    .line 171
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v5, v1

    invoke-interface {v5}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    move v2, v5

    .line 172
    .local v2, "size":I
    move v5, v2

    new-array v5, v5, [I

    move-object v3, v5

    .line 173
    .local v3, "data":[I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 174
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    invoke-interface {v7}, Ljava/io/ObjectInput;->readInt()I

    move-result v7

    aput v7, v5, v6

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 175
    :cond_0
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/lists/U32Vector;->data:[I

    .line 176
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lgnu/lists/U32Vector;->size:I

    .line 177
    return-void
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/U32Vector;->data:[I

    move v5, v1

    aget v4, v4, v5

    move v3, v4

    .line 101
    .local v3, "old":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/U32Vector;->data:[I

    move v5, v1

    move-object v6, v2

    invoke-static {v6}, Lgnu/lists/Convert;->toIntUnsigned(Ljava/lang/Object;)I

    move-result v6

    aput v6, v4, v5

    .line 102
    move v4, v3

    invoke-static {v4}, Lgnu/lists/Convert;->toObjectUnsigned(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/U32Vector;
    return-object v0
.end method

.method public setBufferLength(I)V
    .locals 10

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move v1, p1

    .local v1, "length":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/U32Vector;->data:[I

    array-length v4, v4

    move v2, v4

    .line 58
    .local v2, "oldLength":I
    move v4, v2

    move v5, v1

    if-eq v4, v5, :cond_0

    .line 60
    move v4, v1

    new-array v4, v4, [I

    move-object v3, v4

    .line 61
    .local v3, "tmp":[I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/U32Vector;->data:[I

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v2

    move v9, v1

    if-ge v8, v9, :cond_1

    move v8, v2

    :goto_0
    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/lists/U32Vector;->data:[I

    .line 65
    .end local v3    # "tmp":[I
    :cond_0
    return-void

    .line 61
    .restart local v3    # "tmp":[I
    :cond_1
    move v8, v1

    goto :goto_0
.end method

.method public final setIntAt(II)V
    .locals 7

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "value":I
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/U32Vector;->size:I

    if-le v3, v4, :cond_0

    .line 108
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 109
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/U32Vector;->data:[I

    move v4, v1

    move v5, v2

    aput v5, v3, v4

    .line 110
    return-void
.end method

.method public final setIntAtBuffer(II)V
    .locals 6

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "value":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/U32Vector;->data:[I

    move v4, v1

    move v5, v2

    aput v5, v3, v4

    .line 115
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
    .line 162
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U32Vector;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v4, v0

    iget v4, v4, Lgnu/lists/U32Vector;->size:I

    move v2, v4

    .line 163
    .local v2, "size":I
    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 164
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 165
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/U32Vector;->data:[I

    move v6, v3

    aget v5, v5, v6

    invoke-interface {v4, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method
