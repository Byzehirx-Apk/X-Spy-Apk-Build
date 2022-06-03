.class public abstract Lgnu/lists/SimpleVector;
.super Lgnu/lists/AbstractSequence;
.source "SimpleVector.java"

# interfaces
.implements Lgnu/lists/Sequence;
.implements Lgnu/lists/Array;


# instance fields
.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/AbstractSequence;-><init>()V

    return-void
.end method

.method protected static compareToInt(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I
    .locals 10

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "v1":Lgnu/lists/SimpleVector;
    move-object v1, p1

    .local v1, "v2":Lgnu/lists/SimpleVector;
    move-object v8, v0

    iget v8, v8, Lgnu/lists/SimpleVector;->size:I

    move v2, v8

    .line 389
    .local v2, "n1":I
    move-object v8, v1

    iget v8, v8, Lgnu/lists/SimpleVector;->size:I

    move v3, v8

    .line 390
    .local v3, "n2":I
    move v8, v2

    move v9, v3

    if-le v8, v9, :cond_0

    move v8, v3

    :goto_0
    move v4, v8

    .line 391
    .local v4, "n":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_1
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_3

    .line 393
    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Lgnu/lists/SimpleVector;->intAtBuffer(I)I

    move-result v8

    move v6, v8

    .line 394
    .local v6, "i1":I
    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Lgnu/lists/SimpleVector;->intAtBuffer(I)I

    move-result v8

    move v7, v8

    .line 395
    .local v7, "i2":I
    const/16 v8, 0xb

    move v9, v7

    if-eq v8, v9, :cond_2

    .line 396
    move v8, v6

    move v9, v7

    if-le v8, v9, :cond_1

    const/4 v8, 0x1

    :goto_2
    move v0, v8

    .line 398
    .end local v0    # "v1":Lgnu/lists/SimpleVector;
    .end local v6    # "i1":I
    .end local v7    # "i2":I
    :goto_3
    return v0

    .line 390
    .end local v4    # "n":I
    .end local v5    # "i":I
    .restart local v0    # "v1":Lgnu/lists/SimpleVector;
    :cond_0
    move v8, v2

    goto :goto_0

    .line 396
    .restart local v4    # "n":I
    .restart local v5    # "i":I
    .restart local v6    # "i1":I
    .restart local v7    # "i2":I
    :cond_1
    const/4 v8, -0x1

    goto :goto_2

    .line 391
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 398
    .end local v6    # "i1":I
    .end local v7    # "i2":I
    :cond_3
    move v8, v2

    move v9, v3

    sub-int/2addr v8, v9

    move v0, v8

    goto :goto_3
.end method

.method protected static compareToLong(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I
    .locals 14

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "v1":Lgnu/lists/SimpleVector;
    move-object v1, p1

    .local v1, "v2":Lgnu/lists/SimpleVector;
    move-object v10, v0

    iget v10, v10, Lgnu/lists/SimpleVector;->size:I

    move v2, v10

    .line 404
    .local v2, "n1":I
    move-object v10, v1

    iget v10, v10, Lgnu/lists/SimpleVector;->size:I

    move v3, v10

    .line 405
    .local v3, "n2":I
    move v10, v2

    move v11, v3

    if-le v10, v11, :cond_0

    move v10, v3

    :goto_0
    move v4, v10

    .line 406
    .local v4, "n":I
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    :goto_1
    move v10, v5

    move v11, v4

    if-ge v10, v11, :cond_3

    .line 408
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Lgnu/lists/SimpleVector;->longAtBuffer(I)J

    move-result-wide v10

    move-wide v6, v10

    .line 409
    .local v6, "i1":J
    move-object v10, v1

    move v11, v5

    invoke-virtual {v10, v11}, Lgnu/lists/SimpleVector;->longAtBuffer(I)J

    move-result-wide v10

    move-wide v8, v10

    .line 410
    .local v8, "i2":J
    move-wide v10, v6

    move-wide v12, v8

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    .line 411
    move-wide v10, v6

    move-wide v12, v8

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    const/4 v10, 0x1

    :goto_2
    move v0, v10

    .line 413
    .end local v0    # "v1":Lgnu/lists/SimpleVector;
    .end local v6    # "i1":J
    .end local v8    # "i2":J
    :goto_3
    return v0

    .line 405
    .end local v4    # "n":I
    .end local v5    # "i":I
    .restart local v0    # "v1":Lgnu/lists/SimpleVector;
    :cond_0
    move v10, v2

    goto :goto_0

    .line 411
    .restart local v4    # "n":I
    .restart local v5    # "i":I
    .restart local v6    # "i1":J
    .restart local v8    # "i2":J
    :cond_1
    const/4 v10, -0x1

    goto :goto_2

    .line 406
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 413
    .end local v6    # "i1":J
    .end local v8    # "i2":J
    :cond_3
    move v10, v2

    move v11, v3

    sub-int/2addr v10, v11

    move v0, v10

    goto :goto_3
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 10

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "o":Ljava/lang/Object;
    move-object v5, v0

    iget v5, v5, Lgnu/lists/SimpleVector;->size:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 228
    .local v3, "newSize":I
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lgnu/lists/SimpleVector;->size:I

    .line 229
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v5

    move v4, v5

    .line 230
    .local v4, "length":I
    move v5, v3

    move v6, v4

    if-le v5, v6, :cond_0

    .line 231
    move-object v5, v0

    move v6, v4

    const/16 v7, 0x10

    if-ge v6, v7, :cond_2

    const/16 v6, 0x10

    :goto_0
    invoke-virtual {v5, v6}, Lgnu/lists/SimpleVector;->setBufferLength(I)V

    .line 232
    :cond_0
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lgnu/lists/SimpleVector;->size:I

    .line 233
    move-object v5, v0

    iget v5, v5, Lgnu/lists/SimpleVector;->size:I

    move v6, v1

    if-eq v5, v6, :cond_1

    .line 234
    move-object v5, v0

    move v6, v1

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget v8, v8, Lgnu/lists/SimpleVector;->size:I

    move v9, v1

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 235
    :cond_1
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 236
    return-void

    .line 231
    :cond_2
    const/4 v6, 0x2

    move v7, v4

    mul-int/2addr v6, v7

    goto :goto_0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/lists/SimpleVector;->size:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/lists/SimpleVector;->add(ILjava/lang/Object;)V

    .line 214
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 11

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "c":Ljava/util/Collection;
    const/4 v6, 0x0

    move v3, v6

    .line 242
    .local v3, "changed":Z
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    move v4, v6

    .line 243
    .local v4, "count":I
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lgnu/lists/SimpleVector;->size:I

    move v8, v4

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lgnu/lists/SimpleVector;->setSize(I)V

    .line 244
    move-object v6, v0

    move v7, v1

    move v8, v1

    move v9, v4

    add-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lgnu/lists/SimpleVector;->size:I

    move v10, v4

    sub-int/2addr v9, v10

    move v10, v1

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 245
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v6

    .local v5, "it":Ljava/util/Iterator;
    :goto_0
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 247
    move-object v6, v0

    move v7, v1

    add-int/lit8 v1, v1, 0x1

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 248
    const/4 v6, 0x1

    move v3, v6

    goto :goto_0

    .line 250
    :cond_0
    move v6, v3

    move v0, v6

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return v0
.end method

.method protected addPos(ILjava/lang/Object;)I
    .locals 7

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move v4, v1

    const/4 v5, 0x1

    ushr-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 220
    .local v3, "index":I
    move-object v4, v0

    move v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/lists/SimpleVector;->add(ILjava/lang/Object;)V

    .line 222
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    const/4 v5, 0x3

    add-int/lit8 v4, v4, 0x3

    move v0, v4

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/lists/SimpleVector;->setSize(I)V

    .line 380
    return-void
.end method

.method protected abstract clearBuffer(II)V
.end method

.method public consume(IILgnu/lists/Consumer;)V
    .locals 8

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "length":I
    move-object v3, p3

    .local v3, "out":Lgnu/lists/Consumer;
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/SimpleVector;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 419
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 7

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move v4, v1

    const/4 v5, 0x1

    ushr-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 424
    .local v3, "index":I
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/SimpleVector;->size:I

    if-lt v4, v5, :cond_0

    .line 425
    const/4 v4, 0x0

    move v0, v4

    .line 427
    .end local v0    # "this":Lgnu/lists/SimpleVector;
    :goto_0
    return v0

    .line 426
    .restart local v0    # "this":Lgnu/lists/SimpleVector;
    :cond_0
    move-object v4, v2

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 427
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 9

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
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

    .line 433
    .line 440
    :goto_0
    return-void

    .line 434
    :cond_0
    move v6, v1

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 435
    .local v4, "i":I
    move v6, v2

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 436
    .local v5, "end":I
    move v6, v5

    move-object v7, v0

    iget v7, v7, Lgnu/lists/SimpleVector;->size:I

    if-le v6, v7, :cond_1

    .line 437
    move-object v6, v0

    iget v6, v6, Lgnu/lists/SimpleVector;->size:I

    move v5, v6

    .line 438
    :cond_1
    :goto_1
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_2

    .line 439
    move-object v6, v3

    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 438
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 440
    :cond_2
    goto :goto_0
.end method

.method public createPos(IZ)I
    .locals 5

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "isAfter":Z
    move v3, v1

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    move v4, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    or-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return v0

    .restart local v0    # "this":Lgnu/lists/SimpleVector;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public fill(IILjava/lang/Object;)V
    .locals 9

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;
    move v5, v1

    if-ltz v5, :cond_0

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lgnu/lists/SimpleVector;->size:I

    if-le v5, v6, :cond_1

    .line 200
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 201
    :cond_1
    move v5, v1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 202
    move-object v5, v0

    move v6, v4

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 201
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 203
    :cond_2
    return-void
.end method

.method public fill(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v3, v0

    iget v3, v3, Lgnu/lists/SimpleVector;->size:I

    move v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    if-ltz v3, :cond_0

    .line 186
    move-object v3, v0

    move v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .locals 9

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "fromPos":I
    move v2, p2

    .local v2, "toPos":I
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;
    move v6, v1

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    move-object v6, v0

    iget v6, v6, Lgnu/lists/SimpleVector;->size:I

    :goto_0
    move v4, v6

    .line 192
    .local v4, "i":I
    move v6, v2

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    move-object v6, v0

    iget v6, v6, Lgnu/lists/SimpleVector;->size:I

    :goto_1
    move v5, v6

    .line 193
    .local v5, "j":I
    :goto_2
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_2

    .line 194
    move-object v6, v0

    move v7, v4

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 193
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 191
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_0
    move v6, v1

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 192
    .restart local v4    # "i":I
    :cond_1
    move v6, v2

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 195
    .restart local v5    # "j":I
    :cond_2
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/SimpleVector;->size:I

    if-lt v2, v3, :cond_0

    .line 131
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 132
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return-object v0
.end method

.method protected abstract getBuffer()Ljava/lang/Object;
.end method

.method protected abstract getBuffer(I)Ljava/lang/Object;
.end method

.method public abstract getBufferLength()I
.end method

.method public getElementKind()I
    .locals 2

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    const/16 v1, 0x20

    move v0, v1

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return v0
.end method

.method public getNextKind(I)I
    .locals 4

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/SimpleVector;->hasNext(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/SimpleVector;->getElementKind()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return v0

    .restart local v0    # "this":Lgnu/lists/SimpleVector;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "ipos":I
    move v3, v1

    const/4 v4, 0x1

    ushr-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 138
    .local v2, "index":I
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SimpleVector;->size:I

    if-lt v3, v4, :cond_0

    sget-object v3, Lgnu/lists/SimpleVector;->eofValue:Ljava/lang/Object;

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return-object v0

    .restart local v0    # "this":Lgnu/lists/SimpleVector;
    :cond_0
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public getRowMajor(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return-object v0
.end method

.method public intAt(I)I
    .locals 5

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/SimpleVector;->size:I

    if-lt v2, v3, :cond_0

    .line 149
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 150
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/SimpleVector;->intAtBuffer(I)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return v0
.end method

.method public intAtBuffer(I)I
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lgnu/lists/Convert;->toInt(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return v0
.end method

.method protected isAfterPos(I)Z
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "ipos":I
    move v2, v1

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return v0

    .restart local v0    # "this":Lgnu/lists/SimpleVector;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public longAt(I)J
    .locals 5

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/SimpleVector;->size:I

    if-lt v2, v3, :cond_0

    .line 156
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 157
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/SimpleVector;->longAtBuffer(I)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return-wide v0
.end method

.method public longAtBuffer(I)J
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lgnu/lists/Convert;->toLong(Ljava/lang/Object;)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return-wide v0
.end method

.method protected nextIndex(I)I
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "ipos":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lgnu/lists/SimpleVector;->size:I

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return v0

    .restart local v0    # "this":Lgnu/lists/SimpleVector;
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    ushr-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public nextPos(I)I
    .locals 5

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "ipos":I
    move v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 108
    const/4 v3, 0x0

    move v0, v3

    .line 112
    .end local v0    # "this":Lgnu/lists/SimpleVector;
    :goto_0
    return v0

    .line 109
    .restart local v0    # "this":Lgnu/lists/SimpleVector;
    :cond_0
    move v3, v1

    const/4 v4, 0x1

    ushr-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 110
    .local v2, "index":I
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SimpleVector;->size:I

    if-ne v3, v4, :cond_1

    .line 111
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 112
    :cond_1
    move v3, v2

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    add-int/lit8 v3, v3, 0x3

    move v0, v3

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "index":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SimpleVector;->size:I

    if-lt v3, v4, :cond_1

    .line 312
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 313
    :cond_1
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 314
    .local v2, "result":Ljava/lang/Object;
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v5, v1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 315
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SimpleVector;->size:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lgnu/lists/SimpleVector;->size:I

    .line 316
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SimpleVector;->size:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 317
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/lists/SimpleVector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 323
    .local v2, "index":I
    move v3, v2

    if-gez v3, :cond_0

    .line 324
    const/4 v3, 0x0

    move v0, v3

    .line 328
    .end local v0    # "this":Lgnu/lists/SimpleVector;
    :goto_0
    return v0

    .line 325
    .restart local v0    # "this":Lgnu/lists/SimpleVector;
    :cond_0
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 326
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SimpleVector;->size:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lgnu/lists/SimpleVector;->size:I

    .line 327
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lgnu/lists/SimpleVector;->size:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 328
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 9

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;
    const/4 v6, 0x0

    move v2, v6

    .line 335
    .local v2, "changed":Z
    const/4 v6, 0x0

    move v3, v6

    .line 336
    .local v3, "j":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v0

    iget v7, v7, Lgnu/lists/SimpleVector;->size:I

    if-ge v6, v7, :cond_2

    .line 338
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 339
    .local v5, "value":Ljava/lang/Object;
    move-object v6, v1

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 341
    const/4 v6, 0x1

    move v2, v6

    .line 336
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 345
    :cond_0
    move v6, v2

    if-eqz v6, :cond_1

    .line 346
    move-object v6, v0

    move v7, v3

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 347
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 350
    .end local v5    # "value":Ljava/lang/Object;
    :cond_2
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lgnu/lists/SimpleVector;->setSize(I)V

    .line 351
    move v6, v2

    move v0, v6

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return v0
.end method

.method public removePos(II)V
    .locals 12

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "ipos":I
    move v2, p2

    .local v2, "count":I
    move v6, v1

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v3, v6

    .line 288
    .local v3, "index":I
    move v6, v3

    move-object v7, v0

    iget v7, v7, Lgnu/lists/SimpleVector;->size:I

    if-le v6, v7, :cond_0

    .line 289
    move-object v6, v0

    iget v6, v6, Lgnu/lists/SimpleVector;->size:I

    move v3, v6

    .line 291
    :cond_0
    move v6, v2

    if-ltz v6, :cond_2

    .line 293
    move v6, v3

    move v4, v6

    .line 294
    .local v4, "ipos0":I
    move v6, v3

    move v7, v2

    add-int/2addr v6, v7

    move v5, v6

    .line 302
    .local v5, "ipos1":I
    :goto_0
    move v6, v4

    if-ltz v6, :cond_1

    move v6, v5

    move-object v7, v0

    iget v7, v7, Lgnu/lists/SimpleVector;->size:I

    if-lt v6, v7, :cond_3

    .line 303
    :cond_1
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    .line 298
    .end local v4    # "ipos0":I
    .end local v5    # "ipos1":I
    :cond_2
    move v6, v3

    move v7, v2

    add-int/2addr v6, v7

    move v4, v6

    .line 299
    .restart local v4    # "ipos0":I
    move v6, v3

    move v5, v6

    .line 300
    .restart local v5    # "ipos1":I
    move v6, v2

    neg-int v6, v6

    move v2, v6

    goto :goto_0

    .line 304
    :cond_3
    move-object v6, v0

    move v7, v5

    move v8, v4

    move-object v9, v0

    iget v9, v9, Lgnu/lists/SimpleVector;->size:I

    move v10, v5

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 305
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lgnu/lists/SimpleVector;->size:I

    move v8, v2

    sub-int/2addr v7, v8

    iput v7, v6, Lgnu/lists/SimpleVector;->size:I

    .line 306
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lgnu/lists/SimpleVector;->size:I

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 307
    return-void
.end method

.method protected removePosRange(II)V
    .locals 9

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "ipos0":I
    move v2, p2

    .local v2, "ipos1":I
    move v4, v1

    const/4 v5, 0x1

    ushr-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 274
    move v4, v2

    const/4 v5, 0x1

    ushr-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 275
    move v4, v1

    move v5, v2

    if-lt v4, v5, :cond_0

    .line 276
    .line 283
    :goto_0
    return-void

    .line 277
    :cond_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/lists/SimpleVector;->size:I

    if-le v4, v5, :cond_1

    .line 278
    move-object v4, v0

    iget v4, v4, Lgnu/lists/SimpleVector;->size:I

    move v2, v4

    .line 279
    :cond_1
    move-object v4, v0

    move v5, v2

    move v6, v1

    move-object v7, v0

    iget v7, v7, Lgnu/lists/SimpleVector;->size:I

    move v8, v2

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 280
    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    move v3, v4

    .line 281
    .local v3, "count":I
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lgnu/lists/SimpleVector;->size:I

    move v6, v3

    sub-int/2addr v5, v6

    iput v5, v4, Lgnu/lists/SimpleVector;->size:I

    .line 282
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lgnu/lists/SimpleVector;->size:I

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 283
    goto :goto_0
.end method

.method protected resizeShift(IIII)V
    .locals 16

    .prologue
    .line 58
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move/from16 v1, p1

    .local v1, "oldGapStart":I
    move/from16 v2, p2

    .local v2, "oldGapEnd":I
    move/from16 v3, p3

    .local v3, "newGapStart":I
    move/from16 v4, p4

    .local v4, "newGapEnd":I
    move v11, v2

    move v12, v1

    sub-int/2addr v11, v12

    move v5, v11

    .line 59
    .local v5, "oldGapSize":I
    move v11, v4

    move v12, v3

    sub-int/2addr v11, v12

    move v6, v11

    .line 60
    .local v6, "newGapSize":I
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v11

    move v7, v11

    .line 61
    .local v7, "oldLength":I
    move v11, v7

    move v12, v5

    sub-int/2addr v11, v12

    move v12, v6

    add-int/2addr v11, v12

    move v8, v11

    .line 62
    .local v8, "newLength":I
    move v11, v8

    move v12, v7

    if-le v11, v12, :cond_0

    .line 64
    move-object v11, v0

    move v12, v8

    invoke-virtual {v11, v12}, Lgnu/lists/SimpleVector;->setBufferLength(I)V

    .line 65
    move-object v11, v0

    move v12, v8

    iput v12, v11, Lgnu/lists/SimpleVector;->size:I

    .line 67
    :cond_0
    move v11, v1

    move v12, v3

    sub-int/2addr v11, v12

    move v9, v11

    .line 68
    .local v9, "gapDelta":I
    move v11, v9

    if-ltz v11, :cond_2

    .line 70
    move v11, v7

    move v12, v2

    sub-int/2addr v11, v12

    move v10, v11

    .line 71
    .local v10, "endLength":I
    move-object v11, v0

    move v12, v2

    move v13, v8

    move v14, v10

    sub-int/2addr v13, v14

    move v14, v10

    invoke-virtual {v11, v12, v13, v14}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 72
    move v11, v9

    if-lez v11, :cond_1

    .line 73
    move-object v11, v0

    move v12, v3

    move v13, v4

    move v14, v9

    invoke-virtual {v11, v12, v13, v14}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 74
    .line 81
    :cond_1
    :goto_0
    move-object v11, v0

    move v12, v3

    move v13, v6

    invoke-virtual {v11, v12, v13}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 82
    return-void

    .line 77
    .end local v10    # "endLength":I
    :cond_2
    move v11, v8

    move v12, v4

    sub-int/2addr v11, v12

    move v10, v11

    .line 78
    .restart local v10    # "endLength":I
    move-object v11, v0

    move v12, v7

    move v13, v10

    sub-int/2addr v12, v13

    move v13, v4

    move v14, v10

    invoke-virtual {v11, v12, v13, v14}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 79
    move-object v11, v0

    move v12, v2

    move v13, v1

    move v14, v3

    move v15, v1

    sub-int/2addr v14, v15

    invoke-virtual {v11, v12, v13, v14}, Lgnu/lists/SimpleVector;->shift(III)V

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 9

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;
    const/4 v6, 0x0

    move v2, v6

    .line 357
    .local v2, "changed":Z
    const/4 v6, 0x0

    move v3, v6

    .line 358
    .local v3, "j":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v0

    iget v7, v7, Lgnu/lists/SimpleVector;->size:I

    if-ge v6, v7, :cond_2

    .line 360
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 361
    .local v5, "value":Ljava/lang/Object;
    move-object v6, v1

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 363
    const/4 v6, 0x1

    move v2, v6

    .line 358
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 367
    :cond_0
    move v6, v2

    if-eqz v6, :cond_1

    .line 368
    move-object v6, v0

    move v7, v3

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 369
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 372
    .end local v5    # "value":Ljava/lang/Object;
    :cond_2
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lgnu/lists/SimpleVector;->setSize(I)V

    .line 373
    move v6, v2

    move v0, v6

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/SimpleVector;->size:I

    if-lt v4, v5, :cond_0

    .line 175
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 176
    :cond_0
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 177
    .local v3, "old":Ljava/lang/Object;
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 178
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return-object v0
.end method

.method protected abstract setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setBufferLength(I)V
.end method

.method public setSize(I)V
    .locals 9

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "size":I
    move-object v5, v0

    iget v5, v5, Lgnu/lists/SimpleVector;->size:I

    move v2, v5

    .line 40
    .local v2, "oldSize":I
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lgnu/lists/SimpleVector;->size:I

    .line 41
    move v5, v1

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 42
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v1

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v5

    move v3, v5

    .line 46
    .local v3, "oldLength":I
    move v5, v1

    move v6, v3

    if-le v5, v6, :cond_0

    .line 48
    move v5, v3

    const/16 v6, 0x10

    if-ge v5, v6, :cond_2

    const/16 v5, 0x10

    :goto_1
    move v4, v5

    .line 49
    .local v4, "newLength":I
    move-object v5, v0

    move v6, v1

    move v7, v4

    if-le v6, v7, :cond_3

    move v6, v1

    :goto_2
    invoke-virtual {v5, v6}, Lgnu/lists/SimpleVector;->setBufferLength(I)V

    goto :goto_0

    .line 48
    .end local v4    # "newLength":I
    :cond_2
    const/4 v5, 0x2

    move v6, v3

    mul-int/2addr v5, v6

    goto :goto_1

    .line 49
    .restart local v4    # "newLength":I
    :cond_3
    move v6, v4

    goto :goto_2
.end method

.method public shift(III)V
    .locals 10

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "srcStart":I
    move v2, p2

    .local v2, "dstStart":I
    move v3, p3

    .local v3, "count":I
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/SimpleVector;->getBuffer()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 208
    .local v4, "data":Ljava/lang/Object;
    move-object v5, v4

    move v6, v1

    move-object v7, v4

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    return-void
.end method

.method public final size()I
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move-object v1, v0

    iget v1, v1, Lgnu/lists/SimpleVector;->size:I

    move v0, v1

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return v0
.end method

.method public transpose([I[II[I)Lgnu/lists/Array;
    .locals 9

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Lgnu/lists/SimpleVector;
    move-object v1, p1

    .local v1, "lowBounds":[I
    move-object v2, p2

    .local v2, "dimensions":[I
    move v3, p3

    .local v3, "offset0":I
    move-object v4, p4

    .local v4, "factors":[I
    new-instance v6, Lgnu/lists/GeneralArray;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lgnu/lists/GeneralArray;-><init>()V

    move-object v5, v6

    .line 456
    .local v5, "array":Lgnu/lists/GeneralArray;
    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/lists/GeneralArray;->strides:[I

    .line 457
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Lgnu/lists/GeneralArray;->dimensions:[I

    .line 458
    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/lists/GeneralArray;->lowBounds:[I

    .line 459
    move-object v6, v5

    move v7, v3

    iput v7, v6, Lgnu/lists/GeneralArray;->offset:I

    .line 460
    move-object v6, v5

    move-object v7, v0

    iput-object v7, v6, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    .line 461
    move-object v6, v5

    const/4 v7, 0x0

    iput-boolean v7, v6, Lgnu/lists/GeneralArray;->simple:Z

    .line 462
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lgnu/lists/SimpleVector;
    return-object v0
.end method
