.class public Lgnu/lists/BitVector;
.super Lgnu/lists/SimpleVector;
.source "BitVector.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field protected static empty:[Z


# instance fields
.field data:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    new-array v0, v0, [Z

    sput-object v0, Lgnu/lists/BitVector;->empty:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/SimpleVector;-><init>()V

    .line 16
    move-object v1, v0

    sget-object v2, Lgnu/lists/BitVector;->empty:[Z

    iput-object v2, v1, Lgnu/lists/BitVector;->data:[Z

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 33
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [Z

    iput-object v3, v2, Lgnu/lists/BitVector;->data:[Z

    .line 34
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/lists/BitVector;->size:I

    .line 35
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move v1, p1

    .local v1, "size":I
    move v2, p2

    .local v2, "value":Z
    move-object v4, v0

    invoke-direct {v4}, Lgnu/lists/SimpleVector;-><init>()V

    .line 21
    move v4, v1

    new-array v4, v4, [Z

    move-object v3, v4

    .line 22
    .local v3, "array":[Z
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/lists/BitVector;->data:[Z

    .line 23
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lgnu/lists/BitVector;->size:I

    .line 24
    move v4, v2

    if-eqz v4, :cond_0

    .line 26
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v4, v1

    if-ltz v4, :cond_0

    .line 27
    move-object v4, v3

    move v5, v1

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

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

    .local v0, "this":Lgnu/lists/BitVector;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/Sequence;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 45
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lgnu/lists/Sequence;->size()I

    move-result v3

    new-array v3, v3, [Z

    iput-object v3, v2, Lgnu/lists/BitVector;->data:[Z

    .line 46
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/BitVector;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 47
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move-object v1, p1

    .local v1, "data":[Z
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 39
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/BitVector;->data:[Z

    .line 40
    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    iput v3, v2, Lgnu/lists/BitVector;->size:I

    .line 41
    return-void
.end method


# virtual methods
.method public final booleanAt(I)Z
    .locals 5

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/BitVector;->size:I

    if-le v2, v3, :cond_0

    .line 72
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 73
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/BitVector;->data:[Z

    move v3, v1

    aget-boolean v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/lists/BitVector;
    return v0
.end method

.method public final booleanAtBuffer(I)Z
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/BitVector;->data:[Z

    move v3, v1

    aget-boolean v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/lists/BitVector;
    return v0
.end method

.method protected clearBuffer(II)V
    .locals 6

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    if-ltz v3, :cond_0

    .line 115
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/BitVector;->data:[Z

    move v4, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 7

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move v4, v1

    const/4 v5, 0x1

    ushr-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 128
    .local v3, "index":I
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/BitVector;->size:I

    if-lt v4, v5, :cond_0

    .line 129
    const/4 v4, 0x0

    move v0, v4

    .line 131
    .end local v0    # "this":Lgnu/lists/BitVector;
    :goto_0
    return v0

    .line 130
    .restart local v0    # "this":Lgnu/lists/BitVector;
    :cond_0
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/BitVector;->data:[Z

    move v6, v3

    aget-boolean v5, v5, v6

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 131
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 9

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
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

    .line 137
    .line 142
    :goto_0
    return-void

    .line 138
    :cond_0
    move v6, v1

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 139
    .local v4, "i":I
    move v6, v2

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 140
    .local v5, "end":I
    :goto_1
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_1

    .line 141
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/BitVector;->data:[Z

    move v8, v4

    aget-boolean v7, v7, v8

    invoke-interface {v6, v7}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 142
    :cond_1
    goto :goto_0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/BitVector;->size:I

    if-le v2, v3, :cond_0

    .line 84
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 85
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/BitVector;->data:[Z

    move v3, v1

    aget-boolean v2, v2, v3

    invoke-static {v2}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/BitVector;
    return-object v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/BitVector;->data:[Z

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/BitVector;
    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/BitVector;->data:[Z

    move v3, v1

    aget-boolean v2, v2, v3

    invoke-static {v2}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/BitVector;
    return-object v0
.end method

.method public getBufferLength()I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/BitVector;->data:[Z

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/BitVector;
    return v0
.end method

.method public getElementKind()I
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    const/16 v1, 0x1b

    move v0, v1

    .end local v0    # "this":Lgnu/lists/BitVector;
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    const-string/jumbo v1, "b"

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/BitVector;
    return-object v0
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
    .line 159
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v5, v1

    invoke-interface {v5}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    move v2, v5

    .line 160
    .local v2, "size":I
    move v5, v2

    new-array v5, v5, [Z

    move-object v3, v5

    .line 161
    .local v3, "data":[Z
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 162
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    invoke-interface {v7}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v7

    aput-boolean v7, v5, v6

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    :cond_0
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/lists/BitVector;->data:[Z

    .line 164
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lgnu/lists/BitVector;->size:I

    .line 165
    return-void
.end method

.method public final setBooleanAt(IZ)V
    .locals 7

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "value":Z
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/BitVector;->size:I

    if-le v3, v4, :cond_0

    .line 103
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 104
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/BitVector;->data:[Z

    move v4, v1

    move v5, v2

    aput-boolean v5, v3, v4

    .line 105
    return-void
.end method

.method public final setBooleanAtBuffer(IZ)V
    .locals 6

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "value":Z
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/BitVector;->data:[Z

    move v4, v1

    move v5, v2

    aput-boolean v5, v3, v4

    .line 110
    return-void
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/BitVector;->data:[Z

    move v5, v1

    aget-boolean v4, v4, v5

    move v3, v4

    .line 96
    .local v3, "old":Z
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/BitVector;->data:[Z

    move v5, v1

    move-object v6, v2

    invoke-static {v6}, Lgnu/lists/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v6

    aput-boolean v6, v4, v5

    .line 97
    move v4, v3

    invoke-static {v4}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/BitVector;
    return-object v0
.end method

.method public setBufferLength(I)V
    .locals 10

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move v1, p1

    .local v1, "length":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/BitVector;->data:[Z

    array-length v4, v4

    move v2, v4

    .line 58
    .local v2, "oldLength":I
    move v4, v2

    move v5, v1

    if-eq v4, v5, :cond_0

    .line 60
    move v4, v1

    new-array v4, v4, [Z

    move-object v3, v4

    .line 61
    .local v3, "tmp":[Z
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/BitVector;->data:[Z

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

    iput-object v5, v4, Lgnu/lists/BitVector;->data:[Z

    .line 65
    .end local v3    # "tmp":[Z
    :cond_0
    return-void

    .line 61
    .restart local v3    # "tmp":[Z
    :cond_1
    move v8, v1

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lgnu/lists/BitVector;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v4, v0

    iget v4, v4, Lgnu/lists/BitVector;->size:I

    move v2, v4

    .line 151
    .local v2, "size":I
    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 152
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 153
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/BitVector;->data:[Z

    move v6, v3

    aget-boolean v5, v5, v6

    invoke-interface {v4, v5}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method
