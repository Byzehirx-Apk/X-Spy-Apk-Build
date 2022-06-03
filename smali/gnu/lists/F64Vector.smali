.class public Lgnu/lists/F64Vector;
.super Lgnu/lists/SimpleVector;
.source "F64Vector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[D


# instance fields
.field data:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [D

    sput-object v0, Lgnu/lists/F64Vector;->empty:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/SimpleVector;-><init>()V

    .line 20
    move-object v1, v0

    sget-object v2, Lgnu/lists/F64Vector;->empty:[D

    iput-object v2, v1, Lgnu/lists/F64Vector;->data:[D

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 34
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [D

    iput-object v3, v2, Lgnu/lists/F64Vector;->data:[D

    .line 35
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/lists/F64Vector;->size:I

    .line 36
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 10

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    move v1, p1

    .local v1, "size":I
    move-wide v2, p2

    .local v2, "value":D
    move-object v5, v0

    invoke-direct {v5}, Lgnu/lists/SimpleVector;-><init>()V

    .line 25
    move v5, v1

    new-array v5, v5, [D

    move-object v4, v5

    .line 26
    .local v4, "array":[D
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/lists/F64Vector;->data:[D

    .line 27
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lgnu/lists/F64Vector;->size:I

    .line 28
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v5, v1

    if-ltz v5, :cond_0

    .line 29
    move-object v5, v4

    move v6, v1

    move-wide v7, v2

    aput-wide v7, v5, v6

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/Sequence;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 46
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lgnu/lists/Sequence;->size()I

    move-result v3

    new-array v3, v3, [D

    iput-object v3, v2, Lgnu/lists/F64Vector;->data:[D

    .line 47
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/F64Vector;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 48
    return-void
.end method

.method public constructor <init>([D)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    move-object v1, p1

    .local v1, "data":[D
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 40
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/F64Vector;->data:[D

    .line 41
    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    iput v3, v2, Lgnu/lists/F64Vector;->size:I

    .line 42
    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 8

    .prologue
    .line 127
    move-object v1, p0

    .local v1, "this":Lgnu/lists/F64Vector;
    move v2, p1

    .local v2, "start":I
    move v3, p2

    .local v3, "count":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    if-ltz v4, :cond_0

    .line 128
    move-object v4, v1

    iget-object v4, v4, Lgnu/lists/F64Vector;->data:[D

    move v5, v2

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 18

    .prologue
    .line 166
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/lists/F64Vector;
    move-object/from16 v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v14, v2

    check-cast v14, Lgnu/lists/F64Vector;

    move-object v3, v14

    .line 167
    .local v3, "vec2":Lgnu/lists/F64Vector;
    move-object v14, v1

    iget-object v14, v14, Lgnu/lists/F64Vector;->data:[D

    move-object v4, v14

    .line 168
    .local v4, "arr1":[D
    move-object v14, v3

    iget-object v14, v14, Lgnu/lists/F64Vector;->data:[D

    move-object v5, v14

    .line 169
    .local v5, "arr2":[D
    move-object v14, v1

    iget v14, v14, Lgnu/lists/F64Vector;->size:I

    move v6, v14

    .line 170
    .local v6, "n1":I
    move-object v14, v3

    iget v14, v14, Lgnu/lists/F64Vector;->size:I

    move v7, v14

    .line 171
    .local v7, "n2":I
    move v14, v6

    move v15, v7

    if-le v14, v15, :cond_0

    move v14, v7

    :goto_0
    move v8, v14

    .line 172
    .local v8, "n":I
    const/4 v14, 0x0

    move v9, v14

    .local v9, "i":I
    :goto_1
    move v14, v9

    move v15, v8

    if-ge v14, v15, :cond_3

    .line 174
    move-object v14, v4

    move v15, v9

    aget-wide v14, v14, v15

    move-wide v10, v14

    .line 175
    .local v10, "v1":D
    move-object v14, v5

    move v15, v9

    aget-wide v14, v14, v15

    move-wide v12, v14

    .line 176
    .local v12, "v2":D
    move-wide v14, v10

    move-wide/from16 v16, v12

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_2

    .line 177
    move-wide v14, v10

    move-wide/from16 v16, v12

    cmpl-double v14, v14, v16

    if-lez v14, :cond_1

    const/4 v14, 0x1

    :goto_2
    move v1, v14

    .line 179
    .end local v1    # "this":Lgnu/lists/F64Vector;
    .end local v10    # "v1":D
    .end local v12    # "v2":D
    :goto_3
    return v1

    .line 171
    .end local v8    # "n":I
    .end local v9    # "i":I
    .restart local v1    # "this":Lgnu/lists/F64Vector;
    :cond_0
    move v14, v6

    goto :goto_0

    .line 177
    .restart local v8    # "n":I
    .restart local v9    # "i":I
    .restart local v10    # "v1":D
    .restart local v12    # "v2":D
    :cond_1
    const/4 v14, -0x1

    goto :goto_2

    .line 172
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 179
    .end local v10    # "v1":D
    .end local v12    # "v2":D
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
    .line 140
    move-object v1, p0

    .local v1, "this":Lgnu/lists/F64Vector;
    move v2, p1

    .local v2, "ipos":I
    move-object v3, p2

    .local v3, "out":Lgnu/lists/Consumer;
    move v5, v2

    const/4 v6, 0x1

    ushr-int/lit8 v5, v5, 0x1

    move v4, v5

    .line 141
    .local v4, "index":I
    move v5, v4

    move-object v6, v1

    iget v6, v6, Lgnu/lists/F64Vector;->size:I

    if-lt v5, v6, :cond_0

    .line 142
    const/4 v5, 0x0

    move v1, v5

    .line 144
    .end local v1    # "this":Lgnu/lists/F64Vector;
    :goto_0
    return v1

    .line 143
    .restart local v1    # "this":Lgnu/lists/F64Vector;
    :cond_0
    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/F64Vector;->data:[D

    move v7, v4

    aget-wide v6, v6, v7

    invoke-interface {v5, v6, v7}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 144
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 10

    .prologue
    .line 149
    move-object v1, p0

    .local v1, "this":Lgnu/lists/F64Vector;
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

    .line 150
    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    move v7, v2

    const/4 v8, 0x1

    ushr-int/lit8 v7, v7, 0x1

    move v5, v7

    .line 152
    .local v5, "i":I
    move v7, v3

    const/4 v8, 0x1

    ushr-int/lit8 v7, v7, 0x1

    move v6, v7

    .line 153
    .local v6, "end":I
    :goto_1
    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_1

    .line 154
    move-object v7, v4

    move-object v8, v1

    iget-object v8, v8, Lgnu/lists/F64Vector;->data:[D

    move v9, v5

    aget-wide v8, v8, v9

    invoke-interface {v7, v8, v9}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 153
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 155
    :cond_1
    goto :goto_0
.end method

.method public final doubleAt(I)D
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/F64Vector;->size:I

    if-lt v2, v3, :cond_0

    .line 73
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 74
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/F64Vector;->data:[D

    move v3, v1

    aget-wide v2, v2, v3

    move-wide v0, v2

    .end local v0    # "this":Lgnu/lists/F64Vector;
    return-wide v0
.end method

.method public final doubleAtBuffer(I)D
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/F64Vector;->data:[D

    move v3, v1

    aget-wide v2, v2, v3

    move-wide v0, v2

    .end local v0    # "this":Lgnu/lists/F64Vector;
    return-wide v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/F64Vector;->size:I

    if-le v2, v3, :cond_0

    .line 85
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 86
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/F64Vector;->data:[D

    move v3, v1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/F64Vector;
    return-object v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/F64Vector;->data:[D

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/F64Vector;
    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/F64Vector;->data:[D

    move v3, v1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/F64Vector;
    return-object v0
.end method

.method public getBufferLength()I
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/F64Vector;->data:[D

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/F64Vector;
    return v0
.end method

.method public getElementKind()I
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    const/16 v1, 0x1a

    move v0, v1

    .end local v0    # "this":Lgnu/lists/F64Vector;
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    const-string/jumbo v1, "f64"

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/F64Vector;
    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/F64Vector;->data:[D

    move v3, v1

    aget-wide v2, v2, v3

    double-to-int v2, v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/F64Vector;
    return v0
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
    .line 197
    move-object v1, p0

    .local v1, "this":Lgnu/lists/F64Vector;
    move-object v2, p1

    .local v2, "in":Ljava/io/ObjectInput;
    move-object v6, v2

    invoke-interface {v6}, Ljava/io/ObjectInput;->readInt()I

    move-result v6

    move v3, v6

    .line 198
    .local v3, "size":I
    move v6, v3

    new-array v6, v6, [D

    move-object v4, v6

    .line 199
    .local v4, "data":[D
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 200
    move-object v6, v4

    move v7, v5

    move-object v8, v2

    invoke-interface {v8}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 199
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 201
    :cond_0
    move-object v6, v1

    move-object v7, v4

    iput-object v7, v6, Lgnu/lists/F64Vector;->data:[D

    .line 202
    move-object v6, v1

    move v7, v3

    iput v7, v6, Lgnu/lists/F64Vector;->size:I

    .line 203
    return-void
.end method

.method public final setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/F64Vector;->data:[D

    move v5, v1

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 114
    .local v3, "old":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/F64Vector;->data:[D

    move v5, v1

    move-object v6, v2

    invoke-static {v6}, Lgnu/lists/Convert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 115
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/F64Vector;
    return-object v0
.end method

.method public setBufferLength(I)V
    .locals 10

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    move v1, p1

    .local v1, "length":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/F64Vector;->data:[D

    array-length v4, v4

    move v2, v4

    .line 59
    .local v2, "oldLength":I
    move v4, v2

    move v5, v1

    if-eq v4, v5, :cond_0

    .line 61
    move v4, v1

    new-array v4, v4, [D

    move-object v3, v4

    .line 62
    .local v3, "tmp":[D
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/F64Vector;->data:[D

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v2

    move v9, v1

    if-ge v8, v9, :cond_1

    move v8, v2

    :goto_0
    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/lists/F64Vector;->data:[D

    .line 66
    .end local v3    # "tmp":[D
    :cond_0
    return-void

    .line 62
    .restart local v3    # "tmp":[D
    :cond_1
    move v8, v1

    goto :goto_0
.end method

.method public final setDoubleAt(ID)V
    .locals 10

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    move v1, p1

    .local v1, "index":I
    move-wide v2, p2

    .local v2, "value":D
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/F64Vector;->size:I

    if-le v4, v5, :cond_0

    .line 102
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 103
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/F64Vector;->data:[D

    move v5, v1

    move-wide v6, v2

    aput-wide v6, v4, v5

    .line 104
    return-void
.end method

.method public final setDoubleAtBuffer(ID)V
    .locals 8

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F64Vector;
    move v1, p1

    .local v1, "index":I
    move-wide v2, p2

    .local v2, "value":D
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/F64Vector;->data:[D

    move v5, v1

    move-wide v6, v2

    aput-wide v6, v4, v5

    .line 109
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
    .line 188
    move-object v1, p0

    .local v1, "this":Lgnu/lists/F64Vector;
    move-object v2, p1

    .local v2, "out":Ljava/io/ObjectOutput;
    move-object v5, v1

    iget v5, v5, Lgnu/lists/F64Vector;->size:I

    move v3, v5

    .line 189
    .local v3, "size":I
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 190
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 191
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/F64Vector;->data:[D

    move v7, v4

    aget-wide v6, v6, v7

    invoke-interface {v5, v6, v7}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 190
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method
