.class public Lgnu/lists/S64Vector;
.super Lgnu/lists/SimpleVector;
.source "S64Vector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[J


# instance fields
.field data:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Lgnu/lists/S64Vector;->empty:[J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/SimpleVector;-><init>()V

    .line 20
    move-object v1, v0

    sget-object v2, Lgnu/lists/S64Vector;->empty:[J

    iput-object v2, v1, Lgnu/lists/S64Vector;->data:[J

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 34
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [J

    iput-object v3, v2, Lgnu/lists/S64Vector;->data:[J

    .line 35
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/lists/S64Vector;->size:I

    .line 36
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 10

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    move v1, p1

    .local v1, "size":I
    move-wide v2, p2

    .local v2, "value":J
    move-object v5, v0

    invoke-direct {v5}, Lgnu/lists/SimpleVector;-><init>()V

    .line 25
    move v5, v1

    new-array v5, v5, [J

    move-object v4, v5

    .line 26
    .local v4, "array":[J
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/lists/S64Vector;->data:[J

    .line 27
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lgnu/lists/S64Vector;->size:I

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

    .local v0, "this":Lgnu/lists/S64Vector;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/Sequence;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 46
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lgnu/lists/Sequence;->size()I

    move-result v3

    new-array v3, v3, [J

    iput-object v3, v2, Lgnu/lists/S64Vector;->data:[J

    .line 47
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/S64Vector;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 48
    return-void
.end method

.method public constructor <init>([J)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    move-object v1, p1

    .local v1, "data":[J
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 40
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/S64Vector;->data:[J

    .line 41
    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    iput v3, v2, Lgnu/lists/S64Vector;->size:I

    .line 42
    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 8

    .prologue
    .line 120
    move-object v1, p0

    .local v1, "this":Lgnu/lists/S64Vector;
    move v2, p1

    .local v2, "start":I
    move v3, p2

    .local v3, "count":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    if-ltz v4, :cond_0

    .line 121
    move-object v4, v1

    iget-object v4, v4, Lgnu/lists/S64Vector;->data:[J

    move v5, v2

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/lists/S64Vector;

    invoke-static {v2, v3}, Lgnu/lists/S64Vector;->compareToLong(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/S64Vector;
    return v0
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 8

    .prologue
    .line 133
    move-object v1, p0

    .local v1, "this":Lgnu/lists/S64Vector;
    move v2, p1

    .local v2, "ipos":I
    move-object v3, p2

    .local v3, "out":Lgnu/lists/Consumer;
    move v5, v2

    const/4 v6, 0x1

    ushr-int/lit8 v5, v5, 0x1

    move v4, v5

    .line 134
    .local v4, "index":I
    move v5, v4

    move-object v6, v1

    iget v6, v6, Lgnu/lists/S64Vector;->size:I

    if-lt v5, v6, :cond_0

    .line 135
    const/4 v5, 0x0

    move v1, v5

    .line 137
    .end local v1    # "this":Lgnu/lists/S64Vector;
    :goto_0
    return v1

    .line 136
    .restart local v1    # "this":Lgnu/lists/S64Vector;
    :cond_0
    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/S64Vector;->data:[J

    move v7, v4

    aget-wide v6, v6, v7

    invoke-interface {v5, v6, v7}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 137
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 10

    .prologue
    .line 142
    move-object v1, p0

    .local v1, "this":Lgnu/lists/S64Vector;
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

    .line 143
    .line 150
    :goto_0
    return-void

    .line 144
    :cond_0
    move v7, v2

    const/4 v8, 0x1

    ushr-int/lit8 v7, v7, 0x1

    move v5, v7

    .line 145
    .local v5, "i":I
    move v7, v3

    const/4 v8, 0x1

    ushr-int/lit8 v7, v7, 0x1

    move v6, v7

    .line 146
    .local v6, "end":I
    move v7, v6

    move-object v8, v1

    iget v8, v8, Lgnu/lists/S64Vector;->size:I

    if-le v7, v8, :cond_1

    .line 147
    move-object v7, v1

    iget v7, v7, Lgnu/lists/S64Vector;->size:I

    move v6, v7

    .line 148
    :cond_1
    :goto_1
    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_2

    .line 149
    move-object v7, v4

    move-object v8, v1

    iget-object v8, v8, Lgnu/lists/S64Vector;->data:[J

    move v9, v5

    aget-wide v8, v8, v9

    invoke-interface {v7, v8, v9}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 150
    :cond_2
    goto :goto_0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/S64Vector;->size:I

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

    iget-object v2, v2, Lgnu/lists/S64Vector;->data:[J

    move v3, v1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Lgnu/lists/Convert;->toObject(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/S64Vector;
    return-object v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/S64Vector;->data:[J

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/S64Vector;
    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/S64Vector;->data:[J

    move v3, v1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Lgnu/lists/Convert;->toObject(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/S64Vector;
    return-object v0
.end method

.method public getBufferLength()I
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/S64Vector;->data:[J

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/S64Vector;
    return v0
.end method

.method public getElementKind()I
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    const/16 v1, 0x18

    move v0, v1

    .end local v0    # "this":Lgnu/lists/S64Vector;
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    const-string/jumbo v1, "s64"

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/S64Vector;
    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/S64Vector;->data:[J

    move v3, v1

    aget-wide v2, v2, v3

    long-to-int v2, v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/S64Vector;
    return v0
.end method

.method public final longAt(I)J
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/S64Vector;->size:I

    if-le v2, v3, :cond_0

    .line 73
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 74
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/S64Vector;->data:[J

    move v3, v1

    aget-wide v2, v2, v3

    move-wide v0, v2

    .end local v0    # "this":Lgnu/lists/S64Vector;
    return-wide v0
.end method

.method public final longAtBuffer(I)J
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/S64Vector;->data:[J

    move v3, v1

    aget-wide v2, v2, v3

    move-wide v0, v2

    .end local v0    # "this":Lgnu/lists/S64Vector;
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
    .line 172
    move-object v1, p0

    .local v1, "this":Lgnu/lists/S64Vector;
    move-object v2, p1

    .local v2, "in":Ljava/io/ObjectInput;
    move-object v6, v2

    invoke-interface {v6}, Ljava/io/ObjectInput;->readInt()I

    move-result v6

    move v3, v6

    .line 173
    .local v3, "size":I
    move v6, v3

    new-array v6, v6, [J

    move-object v4, v6

    .line 174
    .local v4, "data":[J
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 175
    move-object v6, v4

    move v7, v5

    move-object v8, v2

    invoke-interface {v8}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 174
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 176
    :cond_0
    move-object v6, v1

    move-object v7, v4

    iput-object v7, v6, Lgnu/lists/S64Vector;->data:[J

    .line 177
    move-object v6, v1

    move v7, v3

    iput v7, v6, Lgnu/lists/S64Vector;->size:I

    .line 178
    return-void
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 101
    move-object v1, p0

    .local v1, "this":Lgnu/lists/S64Vector;
    move v2, p1

    .local v2, "index":I
    move-object v3, p2

    .local v3, "value":Ljava/lang/Object;
    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/S64Vector;->data:[J

    move v7, v2

    aget-wide v6, v6, v7

    move-wide v4, v6

    .line 102
    .local v4, "old":J
    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/S64Vector;->data:[J

    move v7, v2

    move-object v8, v3

    invoke-static {v8}, Lgnu/lists/Convert;->toLong(Ljava/lang/Object;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 103
    move-wide v6, v4

    invoke-static {v6, v7}, Lgnu/lists/Convert;->toObject(J)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "this":Lgnu/lists/S64Vector;
    return-object v1
.end method

.method public setBufferLength(I)V
    .locals 10

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    move v1, p1

    .local v1, "length":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/S64Vector;->data:[J

    array-length v4, v4

    move v2, v4

    .line 59
    .local v2, "oldLength":I
    move v4, v2

    move v5, v1

    if-eq v4, v5, :cond_0

    .line 61
    move v4, v1

    new-array v4, v4, [J

    move-object v3, v4

    .line 62
    .local v3, "tmp":[J
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/S64Vector;->data:[J

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

    iput-object v5, v4, Lgnu/lists/S64Vector;->data:[J

    .line 66
    .end local v3    # "tmp":[J
    :cond_0
    return-void

    .line 62
    .restart local v3    # "tmp":[J
    :cond_1
    move v8, v1

    goto :goto_0
.end method

.method public final setLongAt(IJ)V
    .locals 10

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    move v1, p1

    .local v1, "index":I
    move-wide v2, p2

    .local v2, "value":J
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/S64Vector;->size:I

    if-le v4, v5, :cond_0

    .line 109
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 110
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/S64Vector;->data:[J

    move v5, v1

    move-wide v6, v2

    aput-wide v6, v4, v5

    .line 111
    return-void
.end method

.method public final setLongAtBuffer(IJ)V
    .locals 8

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lgnu/lists/S64Vector;
    move v1, p1

    .local v1, "index":I
    move-wide v2, p2

    .local v2, "value":J
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/S64Vector;->data:[J

    move v5, v1

    move-wide v6, v2

    aput-wide v6, v4, v5

    .line 116
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
    .line 163
    move-object v1, p0

    .local v1, "this":Lgnu/lists/S64Vector;
    move-object v2, p1

    .local v2, "out":Ljava/io/ObjectOutput;
    move-object v5, v1

    iget v5, v5, Lgnu/lists/S64Vector;->size:I

    move v3, v5

    .line 164
    .local v3, "size":I
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 165
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 166
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/S64Vector;->data:[J

    move v7, v4

    aget-wide v6, v6, v7

    invoke-interface {v5, v6, v7}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 165
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method
