.class Lgnu/lists/LListPosition;
.super Lgnu/lists/ExtPosition;
.source "LListPosition.java"


# instance fields
.field xpos:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/lists/LList;IZ)V
    .locals 8

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/LList;
    move v2, p2

    .local v2, "index":I
    move v3, p3

    .local v3, "isAfter":Z
    move-object v4, v0

    invoke-direct {v4}, Lgnu/lists/ExtPosition;-><init>()V

    .line 43
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/LListPosition;->set(Lgnu/lists/LList;IZ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lgnu/lists/LListPosition;)V
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    move-object v1, p1

    .local v1, "old":Lgnu/lists/LListPosition;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/ExtPosition;-><init>()V

    .line 31
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    iput-object v3, v2, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 32
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/lists/LListPosition;->ipos:I

    iput v3, v2, Lgnu/lists/LListPosition;->ipos:I

    .line 33
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    iput-object v3, v2, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 34
    return-void
.end method


# virtual methods
.method public copy()Lgnu/lists/SeqPosition;
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    new-instance v1, Lgnu/lists/LListPosition;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LListPosition;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/LListPosition;
    return-object v0
.end method

.method public getNext()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/LListPosition;->getNextPair()Lgnu/lists/Pair;

    move-result-object v2

    move-object v1, v2

    .line 129
    .local v1, "pair":Lgnu/lists/Pair;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Lgnu/lists/LList;->eofValue:Ljava/lang/Object;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/LListPosition;
    return-object v0

    .restart local v0    # "this":Lgnu/lists/LListPosition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getNextPair()Lgnu/lists/Pair;
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    move-object v3, v0

    iget v3, v3, Lgnu/lists/LListPosition;->ipos:I

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    move v1, v3

    .line 103
    .local v1, "isAfter":I
    move v3, v1

    if-lez v3, :cond_2

    .line 105
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 107
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v3

    .line 108
    .local v2, "next":Lgnu/lists/AbstractSequence;
    move-object v3, v0

    iget v3, v3, Lgnu/lists/LListPosition;->ipos:I

    const/4 v4, 0x1

    shr-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 109
    move-object v3, v2

    check-cast v3, Lgnu/lists/Pair;

    iget-object v3, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v2, v3

    .line 121
    .end local v2    # "next":Lgnu/lists/AbstractSequence;
    :cond_0
    :goto_0
    move-object v3, v2

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v4, :cond_4

    .line 122
    const/4 v3, 0x0

    move-object v0, v3

    .line 123
    .end local v0    # "this":Lgnu/lists/LListPosition;
    :goto_1
    return-object v0

    .line 112
    .restart local v0    # "this":Lgnu/lists/LListPosition;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    check-cast v3, Lgnu/lists/Pair;

    iget-object v3, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    check-cast v3, Lgnu/lists/Pair;

    check-cast v3, Lgnu/lists/Pair;

    iget-object v3, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v2, v3

    .local v2, "next":Ljava/lang/Object;
    goto :goto_0

    .line 116
    .end local v2    # "next":Ljava/lang/Object;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 117
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v3

    .local v2, "next":Lgnu/lists/AbstractSequence;
    goto :goto_0

    .line 119
    .end local v2    # "next":Lgnu/lists/AbstractSequence;
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    check-cast v3, Lgnu/lists/Pair;

    iget-object v3, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v2, v3

    .local v2, "next":Ljava/lang/Object;
    goto :goto_0

    .line 123
    .end local v2    # "next":Ljava/lang/Object;
    :cond_4
    move-object v3, v2

    check-cast v3, Lgnu/lists/Pair;

    move-object v0, v3

    goto :goto_1
.end method

.method public getPrevious()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/LListPosition;->getPreviousPair()Lgnu/lists/Pair;

    move-result-object v2

    move-object v1, v2

    .line 155
    .local v1, "pair":Lgnu/lists/Pair;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Lgnu/lists/LList;->eofValue:Ljava/lang/Object;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/LListPosition;
    return-object v0

    .restart local v0    # "this":Lgnu/lists/LListPosition;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getPreviousPair()Lgnu/lists/Pair;
    .locals 5

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    move-object v3, v0

    iget v3, v3, Lgnu/lists/LListPosition;->ipos:I

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    move v1, v3

    .line 142
    .local v1, "isAfter":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    move-object v2, v3

    .line 143
    .local v2, "p":Ljava/lang/Object;
    move v3, v1

    if-lez v3, :cond_2

    .line 144
    move-object v3, v2

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    :goto_0
    move-object v2, v3

    .line 147
    :cond_0
    move-object v3, v2

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v4, :cond_3

    .line 148
    const/4 v3, 0x0

    move-object v0, v3

    .line 149
    .end local v0    # "this":Lgnu/lists/LListPosition;
    :goto_1
    return-object v0

    .line 144
    .restart local v0    # "this":Lgnu/lists/LListPosition;
    :cond_1
    move-object v3, v2

    check-cast v3, Lgnu/lists/Pair;

    iget-object v3, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    goto :goto_0

    .line 145
    :cond_2
    move-object v3, v2

    if-nez v3, :cond_0

    .line 146
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1

    .line 149
    :cond_3
    move-object v3, v2

    check-cast v3, Lgnu/lists/Pair;

    move-object v0, v3

    goto :goto_1
.end method

.method public gotoNext()Z
    .locals 7

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    move-object v4, v0

    iget v4, v4, Lgnu/lists/LListPosition;->ipos:I

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .line 172
    .local v1, "isAfter":Z
    move-object v4, v0

    iget v4, v4, Lgnu/lists/LListPosition;->ipos:I

    move v2, v4

    .line 173
    .local v2, "old_i":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    move-object v3, v4

    .line 174
    .local v3, "xp":Ljava/lang/Object;
    move-object v4, v3

    if-eqz v4, :cond_3

    .line 176
    move v4, v1

    if-eqz v4, :cond_0

    .line 177
    move-object v4, v3

    check-cast v4, Lgnu/lists/Pair;

    iget-object v4, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v3, v4

    .line 178
    :cond_0
    move-object v4, v3

    check-cast v4, Lgnu/lists/Pair;

    iget-object v4, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v4, v5, :cond_2

    .line 179
    const/4 v4, 0x0

    move v0, v4

    .line 197
    .end local v0    # "this":Lgnu/lists/LListPosition;
    .end local v3    # "xp":Ljava/lang/Object;
    :goto_1
    return v0

    .line 171
    .end local v1    # "isAfter":Z
    .end local v2    # "old_i":I
    .restart local v0    # "this":Lgnu/lists/LListPosition;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 180
    .restart local v1    # "isAfter":Z
    .restart local v2    # "old_i":I
    .restart local v3    # "xp":Ljava/lang/Object;
    :cond_2
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 181
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lgnu/lists/LListPosition;->ipos:I

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    iput v5, v4, Lgnu/lists/LListPosition;->ipos:I

    .line 197
    .end local v3    # "xp":Ljava/lang/Object;
    :goto_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 183
    .restart local v3    # "xp":Ljava/lang/Object;
    :cond_3
    move-object v4, v0

    iget v4, v4, Lgnu/lists/LListPosition;->ipos:I

    const/4 v5, 0x1

    shr-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_5

    .line 185
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v4, v5, :cond_4

    .line 186
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 187
    :cond_4
    move-object v4, v0

    const/4 v5, 0x3

    iput v5, v4, Lgnu/lists/LListPosition;->ipos:I

    goto :goto_2

    .line 191
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v3, v4

    .line 192
    .local v3, "xp":Lgnu/lists/AbstractSequence;
    move-object v4, v3

    check-cast v4, Lgnu/lists/Pair;

    iget-object v4, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v4, v5, :cond_6

    .line 193
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 194
    :cond_6
    move-object v4, v0

    const/4 v5, 0x5

    iput v5, v4, Lgnu/lists/LListPosition;->ipos:I

    .line 195
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    goto :goto_2
.end method

.method public gotoPrevious()Z
    .locals 7

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    move-object v2, v0

    iget v2, v2, Lgnu/lists/LListPosition;->ipos:I

    const/4 v3, 0x1

    ushr-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 203
    const/4 v2, 0x0

    move v0, v2

    .line 212
    .end local v0    # "this":Lgnu/lists/LListPosition;
    .local v1, "index":I
    :goto_0
    return v0

    .line 204
    .end local v1    # "index":I
    .restart local v0    # "this":Lgnu/lists/LListPosition;
    :cond_0
    move-object v2, v0

    iget v2, v2, Lgnu/lists/LListPosition;->ipos:I

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 207
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lgnu/lists/LListPosition;->ipos:I

    const/4 v4, 0x3

    add-int/lit8 v3, v3, -0x3

    iput v3, v2, Lgnu/lists/LListPosition;->ipos:I

    .line 208
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 210
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/LListPosition;->nextIndex()I

    move-result v2

    move v1, v2

    .line 211
    .restart local v1    # "index":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/lists/LList;

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgnu/lists/LListPosition;->set(Lgnu/lists/LList;IZ)V

    .line 212
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 82
    move-object v2, v0

    iget v2, v2, Lgnu/lists/LListPosition;->ipos:I

    const/4 v3, 0x1

    shr-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 83
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 90
    .end local v0    # "this":Lgnu/lists/LListPosition;
    .local v1, "next":Ljava/lang/Object;
    :goto_1
    return v0

    .line 83
    .end local v1    # "next":Ljava/lang/Object;
    .restart local v0    # "this":Lgnu/lists/LListPosition;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 84
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/lists/Pair;

    iget-object v2, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 87
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    check-cast v2, Lgnu/lists/Pair;

    iget-object v2, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v1, v2

    .line 88
    .restart local v1    # "next":Ljava/lang/Object;
    move-object v2, v0

    iget v2, v2, Lgnu/lists/LListPosition;->ipos:I

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_4

    .line 89
    move-object v2, v1

    check-cast v2, Lgnu/lists/Pair;

    iget-object v2, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v1, v2

    .line 90
    :cond_4
    move-object v2, v1

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_3
    move v0, v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public hasPrevious()Z
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    move-object v1, v0

    iget v1, v1, Lgnu/lists/LListPosition;->ipos:I

    const/4 v2, 0x1

    ushr-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/lists/LListPosition;
    return v0

    .restart local v0    # "this":Lgnu/lists/LListPosition;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextIndex()I
    .locals 3

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    move-object v1, v0

    iget v1, v1, Lgnu/lists/LListPosition;->ipos:I

    const/4 v2, 0x1

    shr-int/lit8 v1, v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/LListPosition;
    return v0
.end method

.method public set(Lgnu/lists/AbstractSequence;IZ)V
    .locals 8

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "index":I
    move v3, p3

    .local v3, "isAfter":Z
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Lgnu/lists/LList;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/LListPosition;->set(Lgnu/lists/LList;IZ)V

    .line 75
    return-void
.end method

.method public set(Lgnu/lists/LList;IZ)V
    .locals 9

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/LList;
    move v2, p2

    .local v2, "index":I
    move v3, p3

    .local v3, "isAfter":Z
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 49
    move-object v6, v0

    move v7, v2

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    move v8, v3

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    or-int/2addr v7, v8

    iput v7, v6, Lgnu/lists/LListPosition;->ipos:I

    .line 50
    move v6, v2

    move v4, v6

    .line 51
    .local v4, "skip":I
    move v6, v3

    if-eqz v6, :cond_1

    .line 53
    add-int/lit8 v4, v4, -0x2

    .line 59
    :goto_1
    move v6, v4

    if-ltz v6, :cond_3

    .line 61
    move-object v6, v1

    move-object v5, v6

    .line 62
    :goto_2
    add-int/lit8 v4, v4, -0x1

    move v6, v4

    if-ltz v6, :cond_2

    .line 64
    move-object v6, v5

    check-cast v6, Lgnu/lists/Pair;

    iget-object v6, v6, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v5, v6

    .local v5, "p":Ljava/lang/Object;
    goto :goto_2

    .line 49
    .end local v4    # "skip":I
    .end local v5    # "p":Ljava/lang/Object;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 57
    .restart local v4    # "skip":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 66
    :cond_2
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 67
    .line 70
    :goto_3
    return-void

    .line 69
    :cond_3
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    goto :goto_3
.end method

.method public setNext(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/LListPosition;->getNextPair()Lgnu/lists/Pair;

    move-result-object v3

    move-object v2, v3

    .line 135
    .local v2, "pair":Lgnu/lists/Pair;
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public setPrevious(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/LListPosition;->getPreviousPair()Lgnu/lists/Pair;

    move-result-object v3

    move-object v2, v3

    .line 161
    .local v2, "pair":Lgnu/lists/Pair;
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LListPosition;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 218
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v1

    const-string/jumbo v3, "LListPos["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 220
    move-object v2, v1

    const-string/jumbo v3, "index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 221
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/LListPosition;->ipos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 222
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/LListPosition;->isAfter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    move-object v2, v1

    const-string/jumbo v3, " after"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 224
    :cond_0
    move-object v2, v0

    iget v2, v2, Lgnu/lists/LListPosition;->position:I

    if-ltz v2, :cond_1

    .line 226
    move-object v2, v1

    const-string/jumbo v3, " position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 227
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/LListPosition;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 229
    :cond_1
    move-object v2, v1

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 230
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/LListPosition;
    return-object v0
.end method
