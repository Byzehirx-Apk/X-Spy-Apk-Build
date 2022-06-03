.class public Lgnu/lists/F32Vector;
.super Lgnu/lists/SimpleVector;
.source "F32Vector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[F


# instance fields
.field data:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [F

    sput-object v0, Lgnu/lists/F32Vector;->empty:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/SimpleVector;-><init>()V

    .line 20
    move-object v1, v0

    sget-object v2, Lgnu/lists/F32Vector;->empty:[F

    iput-object v2, v1, Lgnu/lists/F32Vector;->data:[F

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 34
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [F

    iput-object v3, v2, Lgnu/lists/F32Vector;->data:[F

    .line 35
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/lists/F32Vector;->size:I

    .line 36
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 7

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move v1, p1

    .local v1, "size":I
    move v2, p2

    .local v2, "value":F
    move-object v4, v0

    invoke-direct {v4}, Lgnu/lists/SimpleVector;-><init>()V

    .line 25
    move v4, v1

    new-array v4, v4, [F

    move-object v3, v4

    .line 26
    .local v3, "array":[F
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/lists/F32Vector;->data:[F

    .line 27
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lgnu/lists/F32Vector;->size:I

    .line 28
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v4, v1

    if-ltz v4, :cond_0

    .line 29
    move-object v4, v3

    move v5, v1

    move v6, v2

    aput v6, v4, v5

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

    .local v0, "this":Lgnu/lists/F32Vector;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/Sequence;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 46
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lgnu/lists/Sequence;->size()I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, v2, Lgnu/lists/F32Vector;->data:[F

    .line 47
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/F32Vector;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 48
    return-void
.end method

.method public constructor <init>([F)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move-object v1, p1

    .local v1, "data":[F
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 40
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/F32Vector;->data:[F

    .line 41
    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    iput v3, v2, Lgnu/lists/F32Vector;->size:I

    .line 42
    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    if-ltz v3, :cond_0

    .line 121
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/F32Vector;->data:[F

    move v4, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 13

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v11, v1

    check-cast v11, Lgnu/lists/F32Vector;

    move-object v2, v11

    .line 153
    .local v2, "vec2":Lgnu/lists/F32Vector;
    move-object v11, v0

    iget-object v11, v11, Lgnu/lists/F32Vector;->data:[F

    move-object v3, v11

    .line 154
    .local v3, "arr1":[F
    move-object v11, v2

    iget-object v11, v11, Lgnu/lists/F32Vector;->data:[F

    move-object v4, v11

    .line 155
    .local v4, "arr2":[F
    move-object v11, v0

    iget v11, v11, Lgnu/lists/F32Vector;->size:I

    move v5, v11

    .line 156
    .local v5, "n1":I
    move-object v11, v2

    iget v11, v11, Lgnu/lists/F32Vector;->size:I

    move v6, v11

    .line 157
    .local v6, "n2":I
    move v11, v5

    move v12, v6

    if-le v11, v12, :cond_0

    move v11, v6

    :goto_0
    move v7, v11

    .line 158
    .local v7, "n":I
    const/4 v11, 0x0

    move v8, v11

    .local v8, "i":I
    :goto_1
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_3

    .line 160
    move-object v11, v3

    move v12, v8

    aget v11, v11, v12

    move v9, v11

    .line 161
    .local v9, "v1":F
    move-object v11, v4

    move v12, v8

    aget v11, v11, v12

    move v10, v11

    .line 162
    .local v10, "v2":F
    move v11, v9

    move v12, v10

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_2

    .line 163
    move v11, v9

    move v12, v10

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    const/4 v11, 0x1

    :goto_2
    move v0, v11

    .line 165
    .end local v0    # "this":Lgnu/lists/F32Vector;
    .end local v9    # "v1":F
    .end local v10    # "v2":F
    :goto_3
    return v0

    .line 157
    .end local v7    # "n":I
    .end local v8    # "i":I
    .restart local v0    # "this":Lgnu/lists/F32Vector;
    :cond_0
    move v11, v5

    goto :goto_0

    .line 163
    .restart local v7    # "n":I
    .restart local v8    # "i":I
    .restart local v9    # "v1":F
    .restart local v10    # "v2":F
    :cond_1
    const/4 v11, -0x1

    goto :goto_2

    .line 158
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 165
    .end local v9    # "v1":F
    .end local v10    # "v2":F
    :cond_3
    move v11, v5

    move v12, v6

    sub-int/2addr v11, v12

    move v0, v11

    goto :goto_3
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 7

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move v4, v1

    const/4 v5, 0x1

    ushr-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 134
    .local v3, "index":I
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/F32Vector;->size:I

    if-lt v4, v5, :cond_0

    .line 135
    const/4 v4, 0x0

    move v0, v4

    .line 137
    .end local v0    # "this":Lgnu/lists/F32Vector;
    :goto_0
    return v0

    .line 136
    .restart local v0    # "this":Lgnu/lists/F32Vector;
    :cond_0
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/F32Vector;->data:[F

    move v6, v3

    aget v5, v5, v6

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->writeFloat(F)V

    .line 137
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 9

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
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

    .line 143
    .line 148
    :goto_0
    return-void

    .line 144
    :cond_0
    move v6, v1

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 145
    .local v4, "i":I
    move v6, v2

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 146
    .local v5, "end":I
    :goto_1
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_1

    .line 147
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/F32Vector;->data:[F

    move v8, v4

    aget v7, v7, v8

    invoke-interface {v6, v7}, Lgnu/lists/Consumer;->writeFloat(F)V

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 148
    :cond_1
    goto :goto_0
.end method

.method public final floatAt(I)F
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/F32Vector;->size:I

    if-lt v2, v3, :cond_0

    .line 78
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 79
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/F32Vector;->data:[F

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/lists/F32Vector;
    return v0
.end method

.method public final floatAtBuffer(I)F
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/F32Vector;->data:[F

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/lists/F32Vector;
    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/F32Vector;->size:I

    if-le v2, v3, :cond_0

    .line 90
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 91
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/F32Vector;->data:[F

    move v3, v1

    aget v2, v2, v3

    invoke-static {v2}, Lgnu/lists/Convert;->toObject(F)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/F32Vector;
    return-object v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/F32Vector;->data:[F

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/F32Vector;
    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/F32Vector;->data:[F

    move v3, v1

    aget v2, v2, v3

    invoke-static {v2}, Lgnu/lists/Convert;->toObject(F)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/F32Vector;
    return-object v0
.end method

.method public getBufferLength()I
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/F32Vector;->data:[F

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/F32Vector;
    return v0
.end method

.method public getElementKind()I
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    const/16 v1, 0x19

    move v0, v1

    .end local v0    # "this":Lgnu/lists/F32Vector;
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    const-string/jumbo v1, "f32"

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/F32Vector;
    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/F32Vector;->data:[F

    move v3, v1

    aget v2, v2, v3

    float-to-int v2, v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/F32Vector;
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
    .line 183
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v5, v1

    invoke-interface {v5}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    move v2, v5

    .line 184
    .local v2, "size":I
    move v5, v2

    new-array v5, v5, [F

    move-object v3, v5

    .line 185
    .local v3, "data":[F
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 186
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    invoke-interface {v7}, Ljava/io/ObjectInput;->readFloat()F

    move-result v7

    aput v7, v5, v6

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    :cond_0
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/lists/F32Vector;->data:[F

    .line 188
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lgnu/lists/F32Vector;->size:I

    .line 189
    return-void
.end method

.method public final setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/F32Vector;->data:[F

    move v5, v1

    aget v4, v4, v5

    invoke-static {v4}, Lgnu/lists/Convert;->toObject(F)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 114
    .local v3, "old":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/F32Vector;->data:[F

    move v5, v1

    move-object v6, v2

    invoke-static {v6}, Lgnu/lists/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v6

    aput v6, v4, v5

    .line 115
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/F32Vector;
    return-object v0
.end method

.method public setBufferLength(I)V
    .locals 10

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move v1, p1

    .local v1, "length":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/F32Vector;->data:[F

    array-length v4, v4

    move v2, v4

    .line 59
    .local v2, "oldLength":I
    move v4, v2

    move v5, v1

    if-eq v4, v5, :cond_0

    .line 61
    move v4, v1

    new-array v4, v4, [F

    move-object v3, v4

    .line 62
    .local v3, "tmp":[F
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/F32Vector;->data:[F

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

    iput-object v5, v4, Lgnu/lists/F32Vector;->data:[F

    .line 66
    .end local v3    # "tmp":[F
    :cond_0
    return-void

    .line 62
    .restart local v3    # "tmp":[F
    :cond_1
    move v8, v1

    goto :goto_0
.end method

.method public final setFloatAt(IF)V
    .locals 7

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "value":F
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/F32Vector;->size:I

    if-le v3, v4, :cond_0

    .line 102
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 103
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/F32Vector;->data:[F

    move v4, v1

    move v5, v2

    aput v5, v3, v4

    .line 104
    return-void
.end method

.method public final setFloatAtBuffer(IF)V
    .locals 6

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "value":F
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/F32Vector;->data:[F

    move v4, v1

    move v5, v2

    aput v5, v3, v4

    .line 109
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
    .line 174
    move-object v0, p0

    .local v0, "this":Lgnu/lists/F32Vector;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v4, v0

    iget v4, v4, Lgnu/lists/F32Vector;->size:I

    move v2, v4

    .line 175
    .local v2, "size":I
    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 176
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 177
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/F32Vector;->data:[F

    move v6, v3

    aget v5, v5, v6

    invoke-interface {v4, v5}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method
