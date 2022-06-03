.class public Lgnu/lists/FVector;
.super Lgnu/lists/SimpleVector;
.source "FVector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/lists/Consumable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[Ljava/lang/Object;


# instance fields
.field public data:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lgnu/lists/FVector;->empty:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/SimpleVector;-><init>()V

    .line 21
    move-object v1, v0

    sget-object v2, Lgnu/lists/FVector;->empty:[Ljava/lang/Object;

    iput-object v2, v1, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move v1, p1

    .local v1, "num":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 26
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/lists/FVector;->size:I

    .line 27
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 8

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move v1, p1

    .local v1, "num":I
    move-object v2, p2

    .local v2, "o":Ljava/lang/Object;
    move-object v5, v0

    invoke-direct {v5}, Lgnu/lists/SimpleVector;-><init>()V

    .line 32
    move v5, v1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v3, v5

    .line 33
    .local v3, "data":[Ljava/lang/Object;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 35
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 36
    move-object v5, v3

    move v6, v4

    move-object v7, v2

    aput-object v7, v5, v6

    .line 35
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 38
    .end local v4    # "i":I
    :cond_0
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 39
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lgnu/lists/FVector;->size:I

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move-object v1, p1

    .local v1, "seq":Ljava/util/List;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 52
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 53
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/FVector;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 54
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move-object v1, p1

    .local v1, "data":[Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 45
    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    iput v3, v2, Lgnu/lists/FVector;->size:I

    .line 46
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public static varargs make([Ljava/lang/Object;)Lgnu/lists/FVector;
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "data":[Ljava/lang/Object;
    new-instance v1, Lgnu/lists/FVector;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "data":[Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 7

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move-object v3, v4

    .line 116
    .local v3, "d":[Ljava/lang/Object;
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    if-ltz v4, :cond_0

    .line 117
    move-object v4, v3

    move v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 14

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v12, v1

    check-cast v12, Lgnu/lists/FVector;

    move-object v2, v12

    .line 142
    .local v2, "vec2":Lgnu/lists/FVector;
    move-object v12, v0

    iget-object v12, v12, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move-object v3, v12

    .line 143
    .local v3, "d1":[Ljava/lang/Object;
    move-object v12, v2

    iget-object v12, v12, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move-object v4, v12

    .line 144
    .local v4, "d2":[Ljava/lang/Object;
    move-object v12, v0

    iget v12, v12, Lgnu/lists/FVector;->size:I

    move v5, v12

    .line 145
    .local v5, "n1":I
    move-object v12, v2

    iget v12, v12, Lgnu/lists/FVector;->size:I

    move v6, v12

    .line 146
    .local v6, "n2":I
    move v12, v5

    move v13, v6

    if-le v12, v13, :cond_0

    move v12, v6

    :goto_0
    move v7, v12

    .line 147
    .local v7, "n":I
    const/4 v12, 0x0

    move v8, v12

    .local v8, "i":I
    :goto_1
    move v12, v8

    move v13, v7

    if-ge v12, v13, :cond_2

    .line 149
    move-object v12, v3

    move v13, v8

    aget-object v12, v12, v13

    check-cast v12, Ljava/lang/Comparable;

    move-object v9, v12

    .line 150
    .local v9, "v1":Ljava/lang/Comparable;
    move-object v12, v4

    move v13, v8

    aget-object v12, v12, v13

    check-cast v12, Ljava/lang/Comparable;

    move-object v10, v12

    .line 151
    .local v10, "v2":Ljava/lang/Comparable;
    move-object v12, v9

    move-object v13, v10

    invoke-interface {v12, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v12

    move v11, v12

    .line 152
    .local v11, "d":I
    move v12, v11

    if-eqz v12, :cond_1

    .line 153
    move v12, v11

    move v0, v12

    .line 155
    .end local v0    # "this":Lgnu/lists/FVector;
    .end local v9    # "v1":Ljava/lang/Comparable;
    .end local v10    # "v2":Ljava/lang/Comparable;
    .end local v11    # "d":I
    :goto_2
    return v0

    .line 146
    .end local v7    # "n":I
    .end local v8    # "i":I
    .restart local v0    # "this":Lgnu/lists/FVector;
    :cond_0
    move v12, v5

    goto :goto_0

    .line 147
    .restart local v7    # "n":I
    .restart local v8    # "i":I
    .restart local v9    # "v1":Ljava/lang/Comparable;
    .restart local v10    # "v2":Ljava/lang/Comparable;
    .restart local v11    # "d":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 155
    .end local v9    # "v1":Ljava/lang/Comparable;
    .end local v10    # "v2":Ljava/lang/Comparable;
    .end local v11    # "d":I
    :cond_2
    move v12, v5

    move v13, v6

    sub-int/2addr v12, v13

    move v0, v12

    goto :goto_2
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .locals 7

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v4, v1

    const-string/jumbo v5, "#vector"

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 200
    move-object v4, v0

    iget v4, v4, Lgnu/lists/FVector;->size:I

    move v2, v4

    .line 201
    .local v2, "len":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 202
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move v6, v3

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Lgnu/lists/Consumer;->endElement()V

    .line 204
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move v4, v1

    const/4 v5, 0x1

    ushr-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 179
    .local v3, "index":I
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/FVector;->size:I

    if-lt v4, v5, :cond_0

    .line 180
    const/4 v4, 0x0

    move v0, v4

    .line 182
    .end local v0    # "this":Lgnu/lists/FVector;
    :goto_0
    return v0

    .line 181
    .restart local v0    # "this":Lgnu/lists/FVector;
    :cond_0
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move v6, v3

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 182
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 9

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
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

    .line 188
    .line 195
    :goto_0
    return-void

    .line 189
    :cond_0
    move v6, v1

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 190
    .local v4, "i":I
    move v6, v2

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 191
    .local v5, "end":I
    move v6, v5

    move-object v7, v0

    iget v7, v7, Lgnu/lists/FVector;->size:I

    if-le v6, v7, :cond_1

    .line 192
    move-object v6, v0

    iget v6, v6, Lgnu/lists/FVector;->size:I

    move v5, v6

    .line 193
    :cond_1
    :goto_1
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_2

    .line 194
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move v8, v4

    aget-object v7, v7, v8

    invoke-interface {v6, v7}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 193
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 195
    :cond_2
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v1

    instance-of v7, v7, Lgnu/lists/FVector;

    if-nez v7, :cond_1

    .line 123
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 135
    .end local v0    # "this":Lgnu/lists/FVector;
    :goto_0
    return v0

    .line 124
    .restart local v0    # "this":Lgnu/lists/FVector;
    :cond_1
    move-object v7, v1

    check-cast v7, Lgnu/lists/FVector;

    move-object v2, v7

    .line 125
    .local v2, "obj_vec":Lgnu/lists/FVector;
    move-object v7, v0

    iget v7, v7, Lgnu/lists/FVector;->size:I

    move v3, v7

    .line 126
    .local v3, "n":I
    move-object v7, v2

    iget-object v7, v7, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    if-eqz v7, :cond_2

    move-object v7, v2

    iget v7, v7, Lgnu/lists/FVector;->size:I

    move v8, v3

    if-eq v7, v8, :cond_3

    .line 127
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 128
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move-object v4, v7

    .line 129
    .local v4, "this_data":[Ljava/lang/Object;
    move-object v7, v2

    iget-object v7, v7, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move-object v5, v7

    .line 130
    .local v5, "obj_data":[Ljava/lang/Object;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move v8, v3

    if-ge v7, v8, :cond_5

    .line 132
    move-object v7, v4

    move v8, v6

    aget-object v7, v7, v8

    move-object v8, v5

    move v9, v6

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 133
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 130
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 135
    :cond_5
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/FVector;->size:I

    if-lt v2, v3, :cond_0

    .line 102
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 103
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/FVector;
    return-object v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/FVector;
    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/FVector;
    return-object v0
.end method

.method public getBufferLength()I
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/FVector;
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
    .line 223
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v5, v1

    invoke-interface {v5}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    move v2, v5

    .line 224
    .local v2, "n":I
    move v5, v2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v3, v5

    .line 225
    .local v3, "data":[Ljava/lang/Object;
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 226
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    invoke-interface {v7}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    .line 225
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 227
    :cond_0
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lgnu/lists/FVector;->size:I

    .line 228
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 229
    return-void
.end method

.method public final setAll(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move-object v1, p1

    .local v1, "new_value":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move-object v2, v4

    .line 172
    .local v2, "d":[Ljava/lang/Object;
    move-object v4, v0

    iget v4, v4, Lgnu/lists/FVector;->size:I

    move v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    if-ltz v4, :cond_0

    .line 173
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 174
    :cond_0
    return-void
.end method

.method public final setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move v5, v1

    aget-object v4, v4, v5

    move-object v3, v4

    .line 109
    .local v3, "old":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move v5, v1

    move-object v6, v2

    aput-object v6, v4, v5

    .line 110
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/FVector;
    return-object v0
.end method

.method public setBufferLength(I)V
    .locals 10

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move v1, p1

    .local v1, "length":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    array-length v4, v4

    move v2, v4

    .line 78
    .local v2, "oldLength":I
    move v4, v2

    move v5, v1

    if-eq v4, v5, :cond_0

    .line 80
    move v4, v1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v3, v4

    .line 81
    .local v3, "tmp":[Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v2

    move v9, v1

    if-ge v8, v9, :cond_1

    move v8, v2

    :goto_0
    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 85
    .end local v3    # "tmp":[Ljava/lang/Object;
    :cond_0
    return-void

    .line 81
    .restart local v3    # "tmp":[Ljava/lang/Object;
    :cond_1
    move v8, v1

    goto :goto_0
.end method

.method public shift(III)V
    .locals 9

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move v1, p1

    .local v1, "srcStart":I
    move v2, p2

    .local v2, "dstStart":I
    move v3, p3

    .local v3, "count":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move v7, v2

    move v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
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
    .line 214
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FVector;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v4, v0

    iget v4, v4, Lgnu/lists/FVector;->size:I

    move v2, v4

    .line 215
    .local v2, "n":I
    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 216
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 217
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    move v6, v3

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method
