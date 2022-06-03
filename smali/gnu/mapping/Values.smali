.class public Lgnu/mapping/Values;
.super Lgnu/lists/TreeList;
.source "Values.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final empty:Lgnu/mapping/Values;

.field public static final noArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    .line 15
    new-instance v0, Lgnu/mapping/Values;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-direct {v1, v2}, Lgnu/mapping/Values;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Values;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/TreeList;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Values;
    move-object v1, p1

    .local v1, "values":[Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/lists/TreeList;-><init>()V

    .line 26
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 27
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public static countValues(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/mapping/Values;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lgnu/mapping/Values;

    invoke-virtual {v1}, Lgnu/mapping/Values;->size()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "value":Ljava/lang/Object;
    return v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static make()Lgnu/mapping/Values;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lgnu/mapping/Values;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/mapping/Values;-><init>()V

    return-object v0
.end method

.method public static make(Lgnu/lists/TreeList;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "list":Lgnu/lists/TreeList;
    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    invoke-static {v1, v2, v3}, Lgnu/mapping/Values;->make(Lgnu/lists/TreeList;II)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "list":Lgnu/lists/TreeList;
    return-object v0
.end method

.method public static make(Lgnu/lists/TreeList;II)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "list":Lgnu/lists/TreeList;
    move v1, p1

    .local v1, "startPosition":I
    move v2, p2

    .local v2, "endPosition":I
    move v5, v1

    move v6, v2

    if-eq v5, v6, :cond_0

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v5

    move v9, v5

    move v5, v9

    move v6, v9

    move v3, v6

    .local v3, "next":I
    if-gtz v5, :cond_1

    .line 102
    .end local v3    # "next":I
    :cond_0
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v5

    .line 107
    .end local v0    # "list":Lgnu/lists/TreeList;
    :goto_0
    return-object v0

    .line 103
    .restart local v0    # "list":Lgnu/lists/TreeList;
    .restart local v3    # "next":I
    :cond_1
    move v5, v3

    move v6, v2

    if-eq v5, v6, :cond_2

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v5

    if-gez v5, :cond_3

    .line 104
    :cond_2
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 105
    :cond_3
    new-instance v5, Lgnu/mapping/Values;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lgnu/mapping/Values;-><init>()V

    move-object v4, v5

    .line 106
    .local v4, "vals":Lgnu/mapping/Values;
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    move-result v5

    .line 107
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public static make(Ljava/util/List;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "seq":Ljava/util/List;
    move-object v4, v0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move v1, v4

    .line 69
    .local v1, "count":I
    move v4, v1

    if-nez v4, :cond_1

    .line 70
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    .line 83
    .end local v0    # "seq":Ljava/util/List;
    :goto_1
    return-object v0

    .line 68
    .end local v1    # "count":I
    .restart local v0    # "seq":Ljava/util/List;
    :cond_0
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    .line 71
    .restart local v1    # "count":I
    :cond_1
    move v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 72
    move-object v4, v0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 73
    :cond_2
    new-instance v4, Lgnu/mapping/Values;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lgnu/mapping/Values;-><init>()V

    move-object v2, v4

    .line 75
    .local v2, "vals":Lgnu/mapping/Values;
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    .line 76
    .local v3, "it":Ljava/util/Iterator;
    :goto_2
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    move-object v4, v2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    goto :goto_2

    .line 83
    :cond_3
    move-object v4, v2

    move-object v0, v4

    goto :goto_1
.end method

.method public static make([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "vals":[Ljava/lang/Object;
    move-object v1, v0

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 54
    move-object v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object v0, v1

    .line 58
    .end local v0    # "vals":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 55
    .restart local v0    # "vals":[Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    array-length v1, v1

    if-nez v1, :cond_1

    .line 56
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v1

    goto :goto_0

    .line 58
    :cond_1
    new-instance v1, Lgnu/mapping/Values;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/mapping/Values;-><init>([Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static nextIndex(Ljava/lang/Object;I)I
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "values":Ljava/lang/Object;
    move v1, p1

    .local v1, "curIndex":I
    move-object v2, v0

    instance-of v2, v2, Lgnu/mapping/Values;

    if-eqz v2, :cond_0

    .line 197
    move-object v2, v0

    check-cast v2, Lgnu/mapping/Values;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v2

    move v0, v2

    .line 199
    .end local v0    # "values":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local v0    # "values":Ljava/lang/Object;
    :cond_0
    move v2, v1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static nextValue(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "values":Ljava/lang/Object;
    move v1, p1

    .local v1, "curIndex":I
    move-object v3, v0

    instance-of v3, v3, Lgnu/mapping/Values;

    if-eqz v3, :cond_1

    .line 211
    move-object v3, v0

    check-cast v3, Lgnu/mapping/Values;

    move-object v2, v3

    .line 212
    .local v2, "v":Lgnu/mapping/Values;
    move v3, v1

    move-object v4, v2

    iget v4, v4, Lgnu/mapping/Values;->gapEnd:I

    if-lt v3, v4, :cond_0

    .line 213
    move v3, v1

    move-object v4, v2

    iget v4, v4, Lgnu/mapping/Values;->gapEnd:I

    move-object v5, v2

    iget v5, v5, Lgnu/mapping/Values;->gapStart:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    move v1, v3

    .line 214
    :cond_0
    move-object v3, v0

    check-cast v3, Lgnu/mapping/Values;

    move v4, v1

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 217
    .end local v0    # "values":Ljava/lang/Object;
    .end local v2    # "v":Lgnu/mapping/Values;
    :goto_0
    return-object v0

    .restart local v0    # "values":Ljava/lang/Object;
    :cond_1
    move-object v3, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public static varargs values([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "vals":[Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lgnu/mapping/Values;->make([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "vals":[Ljava/lang/Object;
    return-object v0
.end method

.method public static writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v0

    instance-of v2, v2, Lgnu/mapping/Values;

    if-eqz v2, :cond_0

    .line 224
    move-object v2, v0

    check-cast v2, Lgnu/mapping/Values;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Values;->consume(Lgnu/lists/Consumer;)V

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public call_with(Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Values;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/Values;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Values;
    return-object v0
.end method

.method public final canonicalize()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Values;
    move-object v1, v0

    iget v1, v1, Lgnu/mapping/Values;->gapEnd:I

    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/Values;->data:[C

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 117
    move-object v1, v0

    iget v1, v1, Lgnu/mapping/Values;->gapStart:I

    if-nez v1, :cond_0

    .line 118
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v1

    .line 122
    .end local v0    # "this":Lgnu/mapping/Values;
    :goto_0
    return-object v0

    .line 119
    .restart local v0    # "this":Lgnu/mapping/Values;
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lgnu/mapping/Values;->gapStart:I

    if-ne v1, v2, :cond_1

    .line 120
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 122
    :cond_1
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Values;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Values;
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/Values;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/Values;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 11

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Values;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v8, v0

    sget-object v9, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v8, v9, :cond_0

    .line 135
    move-object v8, v1

    const-string/jumbo v9, "#!void"

    invoke-interface {v8, v9}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 136
    .line 160
    :goto_0
    return-void

    .line 138
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/mapping/Values;->toArray()[Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    .line 139
    .local v2, "vals":[Ljava/lang/Object;
    move-object v8, v2

    array-length v8, v8

    move v3, v8

    .line 140
    .local v3, "size":I
    const/4 v8, 0x1

    move v4, v8

    .line 141
    .local v4, "readable":Z
    move v8, v4

    if-eqz v8, :cond_1

    .line 142
    move-object v8, v1

    const-string/jumbo v9, "#<values"

    invoke-interface {v8, v9}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 143
    :cond_1
    const/4 v8, 0x0

    move v5, v8

    .line 145
    .local v5, "i":I
    :goto_1
    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v8

    move v6, v8

    .line 146
    .local v6, "next":I
    move v8, v6

    if-gez v8, :cond_3

    .line 147
    .line 158
    move v8, v4

    if-eqz v8, :cond_2

    .line 159
    move-object v8, v1

    const/16 v9, 0x3e

    invoke-interface {v8, v9}, Lgnu/lists/Consumer;->write(I)V

    .line 160
    :cond_2
    goto :goto_0

    .line 148
    :cond_3
    move-object v8, v1

    const/16 v9, 0x20

    invoke-interface {v8, v9}, Lgnu/lists/Consumer;->write(I)V

    .line 149
    move v8, v5

    move-object v9, v0

    iget v9, v9, Lgnu/mapping/Values;->gapEnd:I

    if-lt v8, v9, :cond_4

    .line 150
    move v8, v5

    move-object v9, v0

    iget v9, v9, Lgnu/mapping/Values;->gapEnd:I

    move-object v10, v0

    iget v10, v10, Lgnu/mapping/Values;->gapStart:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v5, v8

    .line 151
    :cond_4
    move-object v8, v0

    move v9, v5

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 152
    .local v7, "val":Ljava/lang/Object;
    move-object v8, v7

    instance-of v8, v8, Lgnu/text/Printable;

    if-eqz v8, :cond_5

    .line 153
    move-object v8, v7

    check-cast v8, Lgnu/text/Printable;

    move-object v9, v1

    invoke-interface {v8, v9}, Lgnu/text/Printable;->print(Lgnu/lists/Consumer;)V

    .line 156
    :goto_2
    move v8, v6

    move v5, v8

    .line 157
    goto :goto_1

    .line 155
    :cond_5
    move-object v8, v1

    move-object v9, v7

    invoke-interface {v8, v9}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Values;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v4, v1

    invoke-interface {v4}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    move v2, v4

    .line 179
    .local v2, "len":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 180
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Values;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Values;
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/Values;
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Values;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/Values;->toArray()[Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 169
    .local v2, "vals":[Ljava/lang/Object;
    move-object v5, v2

    array-length v5, v5

    move v3, v5

    .line 170
    .local v3, "len":I
    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 171
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 172
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    invoke-interface {v5, v6}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method
