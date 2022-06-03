.class public Lgnu/lists/GapVector;
.super Lgnu/lists/AbstractSequence;
.source "GapVector.java"

# interfaces
.implements Lgnu/lists/Sequence;


# instance fields
.field public base:Lgnu/lists/SimpleVector;

.field public gapEnd:I

.field public gapStart:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lgnu/lists/SimpleVector;)V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move-object v1, p1

    .local v1, "base":Lgnu/lists/SimpleVector;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 20
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    .line 21
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgnu/lists/GapVector;->gapStart:I

    .line 22
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/lists/SimpleVector;->size:I

    iput v3, v2, Lgnu/lists/GapVector;->gapEnd:I

    .line 23
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "o":Ljava/lang/Object;
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/lists/GapVector;->gapReserve(II)V

    .line 185
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 186
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/lists/GapVector;->gapStart:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lgnu/lists/GapVector;->gapStart:I

    .line 187
    return-void
.end method

.method protected addPos(ILjava/lang/Object;)I
    .locals 7

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move v4, v1

    const/4 v5, 0x1

    ushr-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 176
    .local v3, "index":I
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/GapVector;->gapStart:I

    if-lt v4, v5, :cond_0

    .line 177
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/GapVector;->gapEnd:I

    move-object v6, v0

    iget v6, v6, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    move v3, v4

    .line 178
    :cond_0
    move-object v4, v0

    move v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/lists/GapVector;->add(ILjava/lang/Object;)V

    .line 179
    move v4, v3

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v0, v4

    .end local v0    # "this":Lgnu/lists/GapVector;
    return v0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 11

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move v1, p1

    .local v1, "iposStart":I
    move v2, p2

    .local v2, "iposEnd":I
    move-object v3, p3

    .local v3, "out":Lgnu/lists/Consumer;
    move-object v7, v3

    invoke-interface {v7}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 242
    .line 255
    :goto_0
    return-void

    .line 243
    :cond_0
    move v7, v1

    const/4 v8, 0x1

    ushr-int/lit8 v7, v7, 0x1

    move v4, v7

    .line 244
    .local v4, "i":I
    move v7, v2

    const/4 v8, 0x1

    ushr-int/lit8 v7, v7, 0x1

    move v5, v7

    .line 245
    .local v5, "end":I
    move v7, v4

    move-object v8, v0

    iget v8, v8, Lgnu/lists/GapVector;->gapStart:I

    if-ge v7, v8, :cond_1

    .line 247
    move v7, v5

    move-object v8, v0

    iget v8, v8, Lgnu/lists/GapVector;->gapStart:I

    if-le v7, v8, :cond_3

    move v7, v5

    :goto_1
    move v6, v7

    .line 248
    .local v6, "lim":I
    move-object v7, v0

    move v8, v1

    move v9, v6

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/lists/GapVector;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 250
    .end local v6    # "lim":I
    :cond_1
    move v7, v5

    move-object v8, v0

    iget v8, v8, Lgnu/lists/GapVector;->gapEnd:I

    if-le v7, v8, :cond_2

    .line 252
    move v7, v4

    move-object v8, v0

    iget v8, v8, Lgnu/lists/GapVector;->gapEnd:I

    if-ge v7, v8, :cond_4

    move-object v7, v0

    iget v7, v7, Lgnu/lists/GapVector;->gapEnd:I

    :goto_2
    move v4, v7

    .line 253
    move-object v7, v0

    move v8, v4

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    move v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/lists/GapVector;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 255
    :cond_2
    goto :goto_0

    .line 247
    :cond_3
    move-object v7, v0

    iget v7, v7, Lgnu/lists/GapVector;->gapStart:I

    goto :goto_1

    .line 252
    :cond_4
    move v7, v4

    goto :goto_2
.end method

.method public createPos(IZ)I
    .locals 6

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "isAfter":Z
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapStart:I

    if-le v3, v4, :cond_0

    .line 221
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapEnd:I

    move-object v5, v0

    iget v5, v5, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    move v1, v3

    .line 223
    :cond_0
    move v3, v1

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    move v4, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    or-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lgnu/lists/GapVector;
    return v0

    .restart local v0    # "this":Lgnu/lists/GapVector;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public fill(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    move-object v3, v0

    iget v3, v3, Lgnu/lists/GapVector;->gapEnd:I

    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v4, v4, Lgnu/lists/SimpleVector;->size:I

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lgnu/lists/SimpleVector;->fill(IILjava/lang/Object;)V

    .line 66
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapStart:I

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lgnu/lists/SimpleVector;->fill(IILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .locals 11

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move v1, p1

    .local v1, "fromPos":I
    move v2, p2

    .local v2, "toPos":I
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;
    move v8, v1

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v8, v8, Lgnu/lists/SimpleVector;->size:I

    :goto_0
    move v4, v8

    .line 72
    .local v4, "from":I
    move v8, v2

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v8, v8, Lgnu/lists/SimpleVector;->size:I

    :goto_1
    move v5, v8

    .line 73
    .local v5, "to":I
    move-object v8, v0

    iget v8, v8, Lgnu/lists/GapVector;->gapStart:I

    move v9, v5

    if-ge v8, v9, :cond_2

    move-object v8, v0

    iget v8, v8, Lgnu/lists/GapVector;->gapStart:I

    :goto_2
    move v6, v8

    .line 74
    .local v6, "limit":I
    move v8, v4

    move v7, v8

    .local v7, "i":I
    :goto_3
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_3

    .line 75
    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    move v9, v7

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 74
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 71
    .end local v4    # "from":I
    .end local v5    # "to":I
    .end local v6    # "limit":I
    .end local v7    # "i":I
    :cond_0
    move v8, v1

    const/4 v9, 0x1

    ushr-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 72
    .restart local v4    # "from":I
    :cond_1
    move v8, v2

    const/4 v9, 0x1

    ushr-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 73
    .restart local v5    # "to":I
    :cond_2
    move v8, v5

    goto :goto_2

    .line 76
    .restart local v6    # "limit":I
    .restart local v7    # "i":I
    :cond_3
    move-object v8, v0

    iget v8, v8, Lgnu/lists/GapVector;->gapEnd:I

    move v7, v8

    :goto_4
    move v8, v7

    move v9, v5

    if-ge v8, v9, :cond_4

    .line 77
    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    move v9, v7

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 76
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 78
    :cond_4
    return-void
.end method

.method protected final gapReserve(I)V
    .locals 5

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/lists/GapVector;->gapStart:I

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/lists/GapVector;->gapReserve(II)V

    .line 95
    return-void
.end method

.method protected gapReserve(II)V
    .locals 13

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move v1, p1

    .local v1, "where":I
    move v2, p2

    .local v2, "needed":I
    move v8, v2

    move-object v9, v0

    iget v9, v9, Lgnu/lists/GapVector;->gapEnd:I

    move-object v10, v0

    iget v10, v10, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v9, v10

    if-le v8, v9, :cond_3

    .line 111
    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v8, v8, Lgnu/lists/SimpleVector;->size:I

    move v3, v8

    .line 112
    .local v3, "oldLength":I
    move v8, v3

    const/16 v9, 0x10

    if-ge v8, v9, :cond_2

    const/16 v8, 0x10

    :goto_0
    move v4, v8

    .line 113
    .local v4, "newLength":I
    move v8, v3

    move-object v9, v0

    iget v9, v9, Lgnu/lists/GapVector;->gapEnd:I

    move-object v10, v0

    iget v10, v10, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v5, v8

    .line 114
    .local v5, "size":I
    move v8, v5

    move v9, v2

    add-int/2addr v8, v9

    move v6, v8

    .line 115
    .local v6, "minLength":I
    move v8, v4

    move v9, v6

    if-ge v8, v9, :cond_0

    .line 116
    move v8, v6

    move v4, v8

    .line 117
    :cond_0
    move v8, v4

    move v9, v5

    sub-int/2addr v8, v9

    move v9, v1

    add-int/2addr v8, v9

    move v7, v8

    .line 118
    .local v7, "newGapEnd":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    move-object v9, v0

    iget v9, v9, Lgnu/lists/GapVector;->gapStart:I

    move-object v10, v0

    iget v10, v10, Lgnu/lists/GapVector;->gapEnd:I

    move v11, v1

    move v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Lgnu/lists/SimpleVector;->resizeShift(IIII)V

    .line 119
    move-object v8, v0

    move v9, v1

    iput v9, v8, Lgnu/lists/GapVector;->gapStart:I

    .line 120
    move-object v8, v0

    move v9, v7

    iput v9, v8, Lgnu/lists/GapVector;->gapEnd:I

    .line 121
    .line 138
    .end local v3    # "oldLength":I
    .end local v4    # "newLength":I
    .end local v5    # "size":I
    .end local v6    # "minLength":I
    .end local v7    # "newGapEnd":I
    :cond_1
    :goto_1
    return-void

    .line 112
    .restart local v3    # "oldLength":I
    :cond_2
    const/4 v8, 0x2

    move v9, v3

    mul-int/2addr v8, v9

    goto :goto_0

    .line 122
    .end local v3    # "oldLength":I
    :cond_3
    move v8, v1

    move-object v9, v0

    iget v9, v9, Lgnu/lists/GapVector;->gapStart:I

    if-eq v8, v9, :cond_1

    .line 123
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Lgnu/lists/GapVector;->shiftGap(I)V

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/GapVector;->gapStart:I

    if-lt v2, v3, :cond_0

    .line 51
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/GapVector;->gapEnd:I

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    move v1, v2

    .line 52
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/GapVector;
    return-object v0
.end method

.method public getNextKind(I)I
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/GapVector;->hasNext(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v2}, Lgnu/lists/SimpleVector;->getElementKind()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/GapVector;
    return v0

    .restart local v0    # "this":Lgnu/lists/GapVector;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSegment(II)I
    .locals 7

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move v1, p1

    .local v1, "where":I
    move v2, p2

    .local v2, "len":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/GapVector;->size()I

    move-result v4

    move v3, v4

    .line 148
    .local v3, "length":I
    move v4, v1

    if-ltz v4, :cond_0

    move v4, v1

    move v5, v3

    if-le v4, v5, :cond_1

    .line 149
    :cond_0
    const/4 v4, -0x1

    move v0, v4

    .line 169
    .end local v0    # "this":Lgnu/lists/GapVector;
    :goto_0
    return v0

    .line 150
    .restart local v0    # "this":Lgnu/lists/GapVector;
    :cond_1
    move v4, v2

    if-gez v4, :cond_3

    .line 151
    const/4 v4, 0x0

    move v2, v4

    .line 156
    :cond_2
    :goto_1
    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lgnu/lists/GapVector;->gapStart:I

    if-gt v4, v5, :cond_4

    .line 157
    move v4, v1

    move v0, v4

    goto :goto_0

    .line 152
    :cond_3
    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    move v5, v3

    if-le v4, v5, :cond_2

    .line 153
    move v4, v3

    move v5, v1

    sub-int/2addr v4, v5

    move v2, v4

    goto :goto_1

    .line 158
    :cond_4
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/GapVector;->gapStart:I

    if-lt v4, v5, :cond_5

    .line 159
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/GapVector;->gapEnd:I

    move-object v6, v0

    iget v6, v6, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    move v0, v4

    goto :goto_0

    .line 161
    :cond_5
    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapStart:I

    move v5, v1

    sub-int/2addr v4, v5

    move v5, v2

    const/4 v6, 0x1

    shr-int/lit8 v5, v5, 0x1

    if-le v4, v5, :cond_6

    .line 163
    move-object v4, v0

    move v5, v1

    move v6, v2

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lgnu/lists/GapVector;->shiftGap(I)V

    .line 164
    move v4, v1

    move v0, v4

    goto :goto_0

    .line 168
    :cond_6
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/GapVector;->shiftGap(I)V

    .line 169
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/GapVector;->gapEnd:I

    move-object v6, v0

    iget v6, v6, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    move v0, v4

    goto :goto_0
.end method

.method public hasNext(I)Z
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move v1, p1

    .local v1, "ipos":I
    move v3, v1

    const/4 v4, 0x1

    ushr-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 37
    .local v2, "index":I
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapStart:I

    if-lt v3, v4, :cond_0

    .line 38
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapEnd:I

    move-object v5, v0

    iget v5, v5, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    move v2, v3

    .line 39
    :cond_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v4, v4, Lgnu/lists/SimpleVector;->size:I

    if-ge v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/lists/GapVector;
    return v0

    .restart local v0    # "this":Lgnu/lists/GapVector;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected isAfterPos(I)Z
    .locals 4

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move v1, p1

    .local v1, "ipos":I
    move v2, v1

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/GapVector;
    return v0

    .restart local v0    # "this":Lgnu/lists/GapVector;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected nextIndex(I)I
    .locals 6

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move v1, p1

    .local v1, "ipos":I
    move v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v3, v3, Lgnu/lists/SimpleVector;->size:I

    :goto_0
    move v2, v3

    .line 234
    .local v2, "index":I
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapStart:I

    if-le v3, v4, :cond_0

    .line 235
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapEnd:I

    move-object v5, v0

    iget v5, v5, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    move v2, v3

    .line 236
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lgnu/lists/GapVector;
    return v0

    .line 233
    .end local v2    # "index":I
    .restart local v0    # "this":Lgnu/lists/GapVector;
    :cond_1
    move v3, v1

    const/4 v4, 0x1

    ushr-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected removePosRange(II)V
    .locals 7

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move v1, p1

    .local v1, "ipos0":I
    move v2, p2

    .local v2, "ipos1":I
    move v3, v1

    const/4 v4, 0x1

    ushr-int/lit8 v3, v3, 0x1

    move v1, v3

    .line 192
    move v3, v2

    const/4 v4, 0x1

    ushr-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 193
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapEnd:I

    if-le v3, v4, :cond_3

    .line 194
    move-object v3, v0

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/GapVector;->gapEnd:I

    sub-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lgnu/lists/GapVector;->gapStart:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lgnu/lists/GapVector;->shiftGap(I)V

    .line 197
    :cond_0
    :goto_0
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapStart:I

    if-ge v3, v4, :cond_1

    .line 199
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/GapVector;->gapStart:I

    move v6, v1

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 200
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lgnu/lists/GapVector;->gapStart:I

    .line 202
    :cond_1
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapEnd:I

    if-le v3, v4, :cond_2

    .line 204
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapEnd:I

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lgnu/lists/GapVector;->gapEnd:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 205
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/lists/GapVector;->gapEnd:I

    .line 207
    :cond_2
    return-void

    .line 195
    :cond_3
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapStart:I

    if-ge v3, v4, :cond_0

    .line 196
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/lists/GapVector;->shiftGap(I)V

    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapStart:I

    if-lt v3, v4, :cond_0

    .line 59
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapEnd:I

    move-object v5, v0

    iget v5, v5, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    move v1, v3

    .line 60
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/GapVector;
    return-object v0
.end method

.method protected shiftGap(I)V
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move v1, p1

    .local v1, "newGapStart":I
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v3, v4

    move v2, v3

    .line 83
    .local v2, "delta":I
    move v3, v2

    if-lez v3, :cond_1

    .line 84
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    move-object v4, v0

    iget v4, v4, Lgnu/lists/GapVector;->gapEnd:I

    move-object v5, v0

    iget v5, v5, Lgnu/lists/GapVector;->gapStart:I

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 87
    :cond_0
    :goto_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/lists/GapVector;->gapEnd:I

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Lgnu/lists/GapVector;->gapEnd:I

    .line 88
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lgnu/lists/GapVector;->gapStart:I

    .line 89
    return-void

    .line 85
    :cond_1
    move v3, v2

    if-gez v3, :cond_0

    .line 86
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/GapVector;->gapEnd:I

    move v6, v2

    add-int/2addr v5, v6

    move v6, v2

    neg-int v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lgnu/lists/SimpleVector;->shift(III)V

    goto :goto_0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/lists/GapVector;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v1, v1, Lgnu/lists/SimpleVector;->size:I

    move-object v2, v0

    iget v2, v2, Lgnu/lists/GapVector;->gapEnd:I

    move-object v3, v0

    iget v3, v3, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/lists/GapVector;
    return v0
.end method
