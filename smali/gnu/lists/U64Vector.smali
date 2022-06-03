.class public Lgnu/lists/U64Vector;
.super Lgnu/lists/SimpleVector;
.source "U64Vector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# instance fields
.field data:[J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U64Vector;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/SimpleVector;-><init>()V

    .line 19
    move-object v1, v0

    sget-object v2, Lgnu/lists/S64Vector;->empty:[J

    iput-object v2, v1, Lgnu/lists/U64Vector;->data:[J

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U64Vector;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 33
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [J

    iput-object v3, v2, Lgnu/lists/U64Vector;->data:[J

    .line 34
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/lists/U64Vector;->size:I

    .line 35
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 10

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U64Vector;
    move v1, p1

    .local v1, "size":I
    move-wide v2, p2

    .local v2, "value":J
    move-object v5, v0

    invoke-direct {v5}, Lgnu/lists/SimpleVector;-><init>()V

    .line 24
    move v5, v1

    new-array v5, v5, [J

    move-object v4, v5

    .line 25
    .local v4, "array":[J
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/lists/U64Vector;->data:[J

    .line 26
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lgnu/lists/U64Vector;->size:I

    .line 27
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v5, v1

    if-ltz v5, :cond_0

    .line 28
    move-object v5, v4

    move v6, v1

    move-wide v7, v2

    aput-wide v7, v5, v6

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

    .local v0, "this":Lgnu/lists/U64Vector;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/Sequence;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 45
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lgnu/lists/Sequence;->size()I

    move-result v3

    new-array v3, v3, [J

    iput-object v3, v2, Lgnu/lists/U64Vector;->data:[J

    .line 46
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/U64Vector;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 47
    return-void
.end method

.method public constructor <init>([J)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U64Vector;
    move-object v1, p1

    .local v1, "data":[J
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 39
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/U64Vector;->data:[J

    .line 40
    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    iput v3, v2, Lgnu/lists/U64Vector;->size:I

    .line 41
    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 8

    .prologue
    .line 119
    move-object v1, p0

    .local v1, "this":Lgnu/lists/U64Vector;
    move v2, p1

    .local v2, "start":I
    move v3, p2

    .local v3, "count":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    if-ltz v4, :cond_0

    .line 120
    move-object v4, v1

    iget-object v4, v4, Lgnu/lists/U64Vector;->data:[J

    move v5, v2

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 20

    .prologue
    .line 153
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/lists/U64Vector;
    move-object/from16 v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v14, v2

    check-cast v14, Lgnu/lists/U64Vector;

    move-object v3, v14

    .line 154
    .local v3, "vec2":Lgnu/lists/U64Vector;
    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/U64Vector;->data:[J

    move-object v4, v14

    .line 155
    .local v4, "arr1":[J
    move-object v14, v3

    iget-object v14, v14, Lgnu/lists/U64Vector;->data:[J

    move-object v5, v14

    .line 156
    .local v5, "arr2":[J
    move-object v14, v1

    iget v14, v14, Lgnu/lists/U64Vector;->size:I

    move v6, v14

    .line 157
    .local v6, "n1":I
    move-object v14, v3

    iget v14, v14, Lgnu/lists/U64Vector;->size:I

    move v7, v14

    .line 158
    .local v7, "n2":I
    move v14, v6

    move v15, v7

    if-le v14, v15, :cond_0

    move v14, v7

    :goto_0
    move v8, v14

    .line 159
    .local v8, "n":I
    const/4 v14, 0x0

    move v9, v14

    .local v9, "i":I
    :goto_1
    move v14, v9

    move v15, v8

    if-ge v14, v15, :cond_3

    .line 161
    move-object v14, v4

    move v15, v9

    aget-wide v14, v14, v15

    move-wide v10, v14

    .line 162
    .local v10, "v1":J
    move-object v14, v5

    move v15, v9

    aget-wide v14, v14, v15

    move-wide v12, v14

    .line 163
    .local v12, "v2":J
    move-wide v14, v10

    move-wide/from16 v16, v12

    cmp-long v14, v14, v16

    if-eqz v14, :cond_2

    .line 164
    move-wide v14, v10

    const-wide/high16 v16, -0x8000000000000000L

    xor-long v14, v14, v16

    move-wide/from16 v16, v12

    const-wide/high16 v18, -0x8000000000000000L

    xor-long v16, v16, v18

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    const/4 v14, 0x1

    :goto_2
    move v1, v14

    .line 166
    .end local v1    # "this":Lgnu/lists/U64Vector;
    .end local v10    # "v1":J
    .end local v12    # "v2":J
    :goto_3
    return v1

    .line 158
    .end local v8    # "n":I
    .end local v9    # "i":I
    .restart local v1    # "this":Lgnu/lists/U64Vector;
    :cond_0
    move v14, v6

    goto :goto_0

    .line 164
    .restart local v8    # "n":I
    .restart local v9    # "i":I
    .restart local v10    # "v1":J
    .restart local v12    # "v2":J
    :cond_1
    const/4 v14, -0x1

    goto :goto_2

    .line 159
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 166
    .end local v10    # "v1":J
    .end local v12    # "v2":J
    :cond_3
    move v14, v6

    move v15, v7

    sub-int/2addr v14, v15

    move v1, v14

    goto :goto_3
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 8

    .prologue
    .line 132
    move-object v1, p0

    .local v1, "this":Lgnu/lists/U64Vector;
    move v2, p1

    .local v2, "ipos":I
    move-object v3, p2

    .local v3, "out":Lgnu/lists/Consumer;
    move v5, v2

    const/4 v6, 0x1

    ushr-int/lit8 v5, v5, 0x1

    move v4, v5

    .line 133
    .local v4, "index":I
    move v5, v4

    move-object v6, v1

    iget v6, v6, Lgnu/lists/U64Vector;->size:I

    if-lt v5, v6, :cond_0

    .line 134
    const/4 v5, 0x0

    move v1, v5

    .line 136
    .end local v1    # "this":Lgnu/lists/U64Vector;
    :goto_0
    return v1

    .line 135
    .restart local v1    # "this":Lgnu/lists/U64Vector;
    :cond_0
    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/U64Vector;->data:[J

    move v7, v4

    aget-wide v6, v6, v7

    invoke-interface {v5, v6, v7}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 136
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 10

    .prologue
    .line 141
    move-object v1, p0

    .local v1, "this":Lgnu/lists/U64Vector;
    move v2, p1

    .local v2, "iposStart":I
    move v3, p2

    .local v3, "iposEnd":I
    move-object v4, p3

    .local v4, "out":Lgnu/lists/Consumer;
    move-object v7, v4

    invoke-interface {v7}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 142
    .line 149
    :goto_0
    return-void

    .line 143
    :cond_0
    move v7, v2

    const/4 v8, 0x1

    ushr-int/lit8 v7, v7, 0x1

    move v5, v7

    .line 144
    .local v5, "i":I
    move v7, v3

    const/4 v8, 0x1

    ushr-int/lit8 v7, v7, 0x1

    move v6, v7

    .line 145
    .local v6, "end":I
    move v7, v6

    move-object v8, v1

    iget v8, v8, Lgnu/lists/U64Vector;->size:I

    if-le v7, v8, :cond_1

    .line 146
    move-object v7, v1

    iget v7, v7, Lgnu/lists/U64Vector;->size:I

    move v6, v7

    .line 147
    :cond_1
    :goto_1
    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_2

    .line 148
    move-object v7, v4

    move-object v8, v1

    iget-object v8, v8, Lgnu/lists/U64Vector;->data:[J

    move v9, v5

    aget-wide v8, v8, v9

    invoke-interface {v7, v8, v9}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 147
    add-int/lit8 v5, v5, 0x1

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

    .local v0, "this":Lgnu/lists/U64Vector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/U64Vector;->size:I

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

    iget-object v2, v2, Lgnu/lists/U64Vector;->data:[J

    move v3, v1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Lgnu/lists/Convert;->toObjectUnsigned(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/U64Vector;
    return-object v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U64Vector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/U64Vector;->data:[J

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/U64Vector;
    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U64Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/U64Vector;->data:[J

    move v3, v1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Lgnu/lists/Convert;->toObjectUnsigned(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/U64Vector;
    return-object v0
.end method

.method public getBufferLength()I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U64Vector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/U64Vector;->data:[J

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/U64Vector;
    return v0
.end method

.method public getElementKind()I
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U64Vector;
    const/16 v1, 0x17

    move v0, v1

    .end local v0    # "this":Lgnu/lists/U64Vector;
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U64Vector;
    const-string/jumbo v1, "u64"

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/U64Vector;
    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U64Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/U64Vector;->data:[J

    move v3, v1

    aget-wide v2, v2, v3

    long-to-int v2, v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/U64Vector;
    return v0
.end method

.method public final longAt(I)J
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U64Vector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/U64Vector;->size:I

    if-le v2, v3, :cond_0

    .line 77
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 78
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/U64Vector;->data:[J

    move v3, v1

    aget-wide v2, v2, v3

    move-wide v0, v2

    .end local v0    # "this":Lgnu/lists/U64Vector;
    return-wide v0
.end method

.method public final longAtBuffer(I)J
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U64Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/U64Vector;->data:[J

    move v3, v1

    aget-wide v2, v2, v3

    move-wide v0, v2

    .end local v0    # "this":Lgnu/lists/U64Vector;
    return-wide v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 184
    move-object v1, p0

    .local v1, "this":Lgnu/lists/U64Vector;
    move-object v2, p1

    .local v2, "in":Ljava/io/ObjectInput;
    move-object v6, v2

    invoke-interface {v6}, Ljava/io/ObjectInput;->readInt()I

    move-result v6

    move v3, v6

    .line 185
    .local v3, "size":I
    move v6, v3

    new-array v6, v6, [J

    move-object v4, v6

    .line 186
    .local v4, "data":[J
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 187
    move-object v6, v4

    move v7, v5

    move-object v8, v2

    invoke-interface {v8}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 186
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 188
    :cond_0
    move-object v6, v1

    move-object v7, v4

    iput-object v7, v6, Lgnu/lists/U64Vector;->data:[J

    .line 189
    move-object v6, v1

    move v7, v3

    iput v7, v6, Lgnu/lists/U64Vector;->size:I

    .line 190
    return-void
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 100
    move-object v1, p0

    .local v1, "this":Lgnu/lists/U64Vector;
    move v2, p1

    .local v2, "index":I
    move-object v3, p2

    .local v3, "value":Ljava/lang/Object;
    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/U64Vector;->data:[J

    move v7, v2

    aget-wide v6, v6, v7

    move-wide v4, v6

    .line 101
    .local v4, "old":J
    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/U64Vector;->data:[J

    move v7, v2

    move-object v8, v3

    invoke-static {v8}, Lgnu/lists/Convert;->toLongUnsigned(Ljava/lang/Object;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 102
    move-wide v6, v4

    invoke-static {v6, v7}, Lgnu/lists/Convert;->toObjectUnsigned(J)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "this":Lgnu/lists/U64Vector;
    return-object v1
.end method

.method public setBufferLength(I)V
    .locals 10

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U64Vector;
    move v1, p1

    .local v1, "length":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/U64Vector;->data:[J

    array-length v4, v4

    move v2, v4

    .line 58
    .local v2, "oldLength":I
    move v4, v2

    move v5, v1

    if-eq v4, v5, :cond_0

    .line 60
    move v4, v1

    new-array v4, v4, [J

    move-object v3, v4

    .line 61
    .local v3, "tmp":[J
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/U64Vector;->data:[J

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

    iput-object v5, v4, Lgnu/lists/U64Vector;->data:[J

    .line 65
    .end local v3    # "tmp":[J
    :cond_0
    return-void

    .line 61
    .restart local v3    # "tmp":[J
    :cond_1
    move v8, v1

    goto :goto_0
.end method

.method public final setLongAt(IJ)V
    .locals 10

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U64Vector;
    move v1, p1

    .local v1, "index":I
    move-wide v2, p2

    .local v2, "value":J
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/U64Vector;->size:I

    if-le v4, v5, :cond_0

    .line 108
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 109
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/U64Vector;->data:[J

    move v5, v1

    move-wide v6, v2

    aput-wide v6, v4, v5

    .line 110
    return-void
.end method

.method public final setLongAtBuffer(IJ)V
    .locals 8

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lgnu/lists/U64Vector;
    move v1, p1

    .local v1, "index":I
    move-wide v2, p2

    .local v2, "value":J
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/U64Vector;->data:[J

    move v5, v1

    move-wide v6, v2

    aput-wide v6, v4, v5

    .line 115
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    move-object v1, p0

    .local v1, "this":Lgnu/lists/U64Vector;
    move-object v2, p1

    .local v2, "out":Ljava/io/ObjectOutput;
    move-object v5, v1

    iget v5, v5, Lgnu/lists/U64Vector;->size:I

    move v3, v5

    .line 176
    .local v3, "size":I
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 177
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 178
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/U64Vector;->data:[J

    move v7, v4

    aget-wide v6, v6, v7

    invoke-interface {v5, v6, v7}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method
