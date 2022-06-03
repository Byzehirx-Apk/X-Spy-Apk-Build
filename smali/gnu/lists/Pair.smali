.class public Lgnu/lists/Pair;
.super Lgnu/lists/LList;
.source "Pair.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field protected car:Ljava/lang/Object;

.field protected cdr:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/LList;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move-object v1, p1

    .local v1, "carval":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "cdrval":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/lists/LList;-><init>()V

    .line 24
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 25
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public static compareTo(Lgnu/lists/Pair;Lgnu/lists/Pair;)I
    .locals 7

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "pair1":Lgnu/lists/Pair;
    move-object v1, p1

    .local v1, "pair2":Lgnu/lists/Pair;
    move-object v5, v0

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 199
    const/4 v5, 0x0

    move v0, v5

    .line 220
    .end local v0    # "pair1":Lgnu/lists/Pair;
    :goto_0
    return v0

    .line 200
    .restart local v0    # "pair1":Lgnu/lists/Pair;
    :cond_0
    move-object v5, v0

    if-nez v5, :cond_1

    .line 201
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 202
    :cond_1
    move-object v5, v1

    if-nez v5, :cond_3

    .line 203
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 221
    .local v2, "x1":Ljava/lang/Object;
    .local v3, "x2":Ljava/lang/Object;
    .local v4, "d":I
    :cond_2
    move-object v5, v2

    check-cast v5, Lgnu/lists/Pair;

    move-object v0, v5

    .line 222
    move-object v5, v3

    check-cast v5, Lgnu/lists/Pair;

    move-object v1, v5

    .line 206
    .end local v2    # "x1":Ljava/lang/Object;
    .end local v3    # "x2":Ljava/lang/Object;
    .end local v4    # "d":I
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    move-object v2, v5

    .line 207
    .restart local v2    # "x1":Ljava/lang/Object;
    move-object v5, v1

    iget-object v5, v5, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    move-object v3, v5

    .line 208
    .restart local v3    # "x2":Ljava/lang/Object;
    move-object v5, v2

    check-cast v5, Ljava/lang/Comparable;

    move-object v6, v3

    check-cast v6, Ljava/lang/Comparable;

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    move v4, v5

    .line 209
    .restart local v4    # "d":I
    move v5, v4

    if-eqz v5, :cond_4

    .line 210
    move v5, v4

    move v0, v5

    goto :goto_0

    .line 211
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v2, v5

    .line 212
    move-object v5, v1

    iget-object v5, v5, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v3, v5

    .line 213
    move-object v5, v2

    move-object v6, v3

    if-ne v5, v6, :cond_5

    .line 214
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 215
    :cond_5
    move-object v5, v2

    if-nez v5, :cond_6

    .line 216
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 217
    :cond_6
    move-object v5, v3

    if-nez v5, :cond_7

    .line 218
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 219
    :cond_7
    move-object v5, v2

    instance-of v5, v5, Lgnu/lists/Pair;

    if-eqz v5, :cond_8

    move-object v5, v3

    instance-of v5, v5, Lgnu/lists/Pair;

    if-nez v5, :cond_2

    .line 220
    :cond_8
    move-object v5, v2

    check-cast v5, Ljava/lang/Comparable;

    move-object v6, v3

    check-cast v6, Ljava/lang/Comparable;

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public static equals(Lgnu/lists/Pair;Lgnu/lists/Pair;)Z
    .locals 6

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "pair1":Lgnu/lists/Pair;
    move-object v1, p1

    .local v1, "pair2":Lgnu/lists/Pair;
    move-object v4, v0

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 172
    const/4 v4, 0x1

    move v0, v4

    .line 188
    .end local v0    # "pair1":Lgnu/lists/Pair;
    :goto_0
    return v0

    .line 173
    .restart local v0    # "pair1":Lgnu/lists/Pair;
    :cond_0
    move-object v4, v0

    if-eqz v4, :cond_1

    move-object v4, v1

    if-nez v4, :cond_3

    .line 174
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 189
    .local v2, "x1":Ljava/lang/Object;
    .local v3, "x2":Ljava/lang/Object;
    :cond_2
    move-object v4, v2

    check-cast v4, Lgnu/lists/Pair;

    move-object v0, v4

    .line 190
    move-object v4, v3

    check-cast v4, Lgnu/lists/Pair;

    move-object v1, v4

    .line 177
    .end local v2    # "x1":Ljava/lang/Object;
    .end local v3    # "x2":Ljava/lang/Object;
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    move-object v2, v4

    .line 178
    .restart local v2    # "x1":Ljava/lang/Object;
    move-object v4, v1

    iget-object v4, v4, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    move-object v3, v4

    .line 179
    .restart local v3    # "x2":Ljava/lang/Object;
    move-object v4, v2

    move-object v5, v3

    if-eq v4, v5, :cond_5

    move-object v4, v2

    if-eqz v4, :cond_4

    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 180
    :cond_4
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 181
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v2, v4

    .line 182
    move-object v4, v1

    iget-object v4, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v3, v4

    .line 183
    move-object v4, v2

    move-object v5, v3

    if-ne v4, v5, :cond_6

    .line 184
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 185
    :cond_6
    move-object v4, v2

    if-eqz v4, :cond_7

    move-object v4, v3

    if-nez v4, :cond_8

    .line 186
    :cond_7
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 187
    :cond_8
    move-object v4, v2

    instance-of v4, v4, Lgnu/lists/Pair;

    if-eqz v4, :cond_9

    move-object v4, v3

    instance-of v4, v4, Lgnu/lists/Pair;

    if-nez v4, :cond_2

    .line 188
    :cond_9
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 7

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "car":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "cdr":Ljava/lang/Object;
    new-instance v2, Lgnu/lists/Pair;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "car":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    sget-object v3, Lgnu/lists/Pair;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_0

    .line 229
    const/4 v2, 0x1

    move v0, v2

    .line 231
    .end local v0    # "this":Lgnu/lists/Pair;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/lists/Pair;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/lists/Pair;

    invoke-static {v2, v3}, Lgnu/lists/Pair;->compareTo(Lgnu/lists/Pair;Lgnu/lists/Pair;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lgnu/lists/Pair;

    if-eqz v2, :cond_0

    .line 258
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/lists/Pair;

    invoke-static {v2, v3}, Lgnu/lists/Pair;->equals(Lgnu/lists/Pair;Lgnu/lists/Pair;)Z

    move-result v2

    move v0, v2

    .line 260
    .end local v0    # "this":Lgnu/lists/Pair;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/lists/Pair;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move v1, p1

    .local v1, "index":I
    move-object v4, v0

    move-object v2, v4

    .line 238
    .local v2, "pair":Lgnu/lists/Pair;
    move v4, v1

    move v3, v4

    .line 239
    .local v3, "i":I
    :goto_0
    move v4, v3

    if-lez v4, :cond_1

    .line 241
    add-int/lit8 v3, v3, -0x1

    .line 242
    move-object v4, v2

    iget-object v4, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    instance-of v4, v4, Lgnu/lists/Pair;

    if-eqz v4, :cond_0

    .line 243
    move-object v4, v2

    iget-object v4, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    check-cast v4, Lgnu/lists/Pair;

    move-object v2, v4

    goto :goto_0

    .line 244
    :cond_0
    move-object v4, v2

    iget-object v4, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    instance-of v4, v4, Lgnu/lists/Sequence;

    if-eqz v4, :cond_1

    .line 245
    move-object v4, v2

    iget-object v4, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    check-cast v4, Lgnu/lists/Sequence;

    move v5, v3

    invoke-interface {v4, v5}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 250
    .end local v0    # "this":Lgnu/lists/Pair;
    :goto_1
    return-object v0

    .line 249
    .restart local v0    # "this":Lgnu/lists/Pair;
    :cond_1
    move v4, v3

    if-nez v4, :cond_2

    .line 250
    move-object v4, v2

    iget-object v4, v4, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    move-object v0, v4

    goto :goto_1

    .line 252
    :cond_2
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
.end method

.method public getCar()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/Pair;
    return-object v0
.end method

.method public getCdr()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/Pair;
    return-object v0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move v1, p1

    .local v1, "ipos":I
    move v2, v1

    if-gtz v2, :cond_1

    .line 119
    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    :goto_0
    move-object v0, v2

    .line 120
    .end local v0    # "this":Lgnu/lists/Pair;
    :goto_1
    return-object v0

    .line 119
    .restart local v0    # "this":Lgnu/lists/Pair;
    :cond_0
    sget-object v2, Lgnu/lists/Pair;->eofValue:Ljava/lang/Object;

    goto :goto_0

    .line 120
    :cond_1
    move v2, v1

    invoke-static {v2}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getNext()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_1
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move v1, p1

    .local v1, "ipos":I
    move v2, v1

    if-gtz v2, :cond_1

    .line 126
    move v2, v1

    if-nez v2, :cond_0

    sget-object v2, Lgnu/lists/Pair;->eofValue:Ljava/lang/Object;

    :goto_0
    move-object v0, v2

    .line 127
    .end local v0    # "this":Lgnu/lists/Pair;
    :goto_1
    return-object v0

    .line 126
    .restart local v0    # "this":Lgnu/lists/Pair;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/Pair;->lastPair()Lgnu/lists/Pair;

    move-result-object v2

    iget-object v2, v2, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    goto :goto_0

    .line 127
    :cond_1
    move v2, v1

    invoke-static {v2}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPrevious()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_1
.end method

.method public hasNext(I)Z
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move v1, p1

    .local v1, "ipos":I
    move v2, v1

    if-gtz v2, :cond_1

    .line 99
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 100
    .end local v0    # "this":Lgnu/lists/Pair;
    :goto_1
    return v0

    .line 99
    .restart local v0    # "this":Lgnu/lists/Pair;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 100
    :cond_1
    move v2, v1

    invoke-static {v2}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->hasNext()Z

    move-result v2

    move v0, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    const/4 v5, 0x1

    move v1, v5

    .line 156
    .local v1, "hash":I
    move-object v5, v0

    move-object v2, v5

    .line 157
    :goto_0
    move-object v5, v2

    instance-of v5, v5, Lgnu/lists/Pair;

    if-eqz v5, :cond_1

    .line 159
    move-object v5, v2

    check-cast v5, Lgnu/lists/Pair;

    move-object v3, v5

    .line 160
    .local v3, "pair":Lgnu/lists/Pair;
    move-object v5, v3

    iget-object v5, v5, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    move-object v4, v5

    .line 161
    .local v4, "obj":Ljava/lang/Object;
    const/16 v5, 0x1f

    move v6, v1

    mul-int/2addr v5, v6

    move-object v6, v4

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_1
    add-int/2addr v5, v6

    move v1, v5

    .line 162
    move-object v5, v3

    iget-object v5, v5, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v2, v5

    .line 163
    .local v2, "list":Ljava/lang/Object;
    goto :goto_0

    .line 161
    .end local v2    # "list":Ljava/lang/Object;
    :cond_0
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_1

    .line 164
    .end local v3    # "pair":Lgnu/lists/Pair;
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_1
    move-object v5, v2

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v5, v6, :cond_2

    move-object v5, v2

    if-eqz v5, :cond_2

    .line 165
    move v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    xor-int/2addr v5, v6

    move v1, v5

    .line 166
    :cond_2
    move v5, v1

    move v0, v5

    .end local v0    # "this":Lgnu/lists/Pair;
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/lists/Pair;
    return v0
.end method

.method public final lastPair()Lgnu/lists/Pair;
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move-object v3, v0

    move-object v1, v3

    .line 135
    .local v1, "pair":Lgnu/lists/Pair;
    :goto_0
    move-object v3, v1

    iget-object v3, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v2, v3

    .line 136
    .local v2, "next":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Lgnu/lists/Pair;

    if-eqz v3, :cond_0

    .line 137
    move-object v3, v2

    check-cast v3, Lgnu/lists/Pair;

    move-object v1, v3

    .line 140
    goto :goto_0

    .line 139
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/Pair;
    return-object v0
.end method

.method public length()I
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    const/4 v5, 0x0

    move v1, v5

    .line 62
    .local v1, "n":I
    move-object v5, v0

    move-object v2, v5

    .line 63
    .local v2, "slow":Lgnu/lists/Pair;
    move-object v5, v0

    move-object v3, v5

    .line 66
    .end local v2    # "slow":Lgnu/lists/Pair;
    :goto_0
    move-object v5, v3

    sget-object v6, Lgnu/lists/Pair;->Empty:Lgnu/lists/LList;

    if-ne v5, v6, :cond_0

    .line 67
    move v5, v1

    move v0, v5

    .line 89
    .end local v0    # "this":Lgnu/lists/Pair;
    :goto_1
    return v0

    .line 68
    .restart local v0    # "this":Lgnu/lists/Pair;
    :cond_0
    move-object v5, v3

    instance-of v5, v5, Lgnu/lists/Pair;

    if-nez v5, :cond_3

    .line 70
    move-object v5, v3

    instance-of v5, v5, Lgnu/lists/Sequence;

    if-eqz v5, :cond_2

    .line 72
    move-object v5, v3

    check-cast v5, Lgnu/lists/Sequence;

    invoke-interface {v5}, Lgnu/lists/Sequence;->size()I

    move-result v5

    move v4, v5

    .line 73
    .local v4, "j":I
    move v5, v4

    if-ltz v5, :cond_1

    move v5, v1

    move v6, v4

    add-int/2addr v5, v6

    :goto_2
    move v0, v5

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2

    .line 75
    .end local v4    # "j":I
    :cond_2
    const/4 v5, -0x2

    move v0, v5

    goto :goto_1

    .line 77
    :cond_3
    move-object v5, v3

    check-cast v5, Lgnu/lists/Pair;

    move-object v4, v5

    .line 78
    .local v4, "fast_pair":Lgnu/lists/Pair;
    move-object v5, v4

    iget-object v5, v5, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v6, Lgnu/lists/Pair;->Empty:Lgnu/lists/LList;

    if-ne v5, v6, :cond_4

    .line 79
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    goto :goto_1

    .line 80
    :cond_4
    move-object v5, v3

    move-object v6, v2

    if-ne v5, v6, :cond_5

    move v5, v1

    if-lez v5, :cond_5

    .line 81
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1

    .line 82
    :cond_5
    move-object v5, v4

    iget-object v5, v5, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    instance-of v5, v5, Lgnu/lists/Pair;

    if-nez v5, :cond_6

    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    move-object v5, v4

    iget-object v5, v5, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v3, v5

    .line 86
    .local v3, "fast":Ljava/lang/Object;
    goto :goto_0

    .line 88
    .end local v3    # "fast":Ljava/lang/Object;
    :cond_6
    move-object v5, v2

    instance-of v5, v5, Lgnu/lists/Pair;

    if-nez v5, :cond_7

    .line 89
    const/4 v5, -0x2

    move v0, v5

    goto :goto_1

    .line 90
    :cond_7
    move-object v5, v2

    check-cast v5, Lgnu/lists/Pair;

    iget-object v5, v5, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v2, v5

    .line 91
    .local v2, "slow":Ljava/lang/Object;
    move-object v5, v4

    iget-object v5, v5, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    check-cast v5, Lgnu/lists/Pair;

    iget-object v5, v5, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v3, v5

    .line 92
    .restart local v3    # "fast":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x2

    .line 93
    goto :goto_0
.end method

.method public nextPos(I)I
    .locals 10

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move v1, p1

    .local v1, "ipos":I
    move v3, v1

    if-gtz v3, :cond_1

    .line 107
    move v3, v1

    if-gez v3, :cond_0

    .line 108
    const/4 v3, 0x0

    move v0, v3

    .line 113
    .end local v0    # "this":Lgnu/lists/Pair;
    :goto_0
    return v0

    .line 109
    .restart local v0    # "this":Lgnu/lists/Pair;
    :cond_0
    sget-object v3, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    new-instance v4, Lgnu/lists/LListPosition;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LList;IZ)V

    invoke-virtual {v3, v4}, Lgnu/lists/PositionManager;->register(Lgnu/lists/SeqPosition;)I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 112
    :cond_1
    move v3, v1

    invoke-static {v3}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v3

    check-cast v3, Lgnu/lists/LListPosition;

    move-object v2, v3

    .line 113
    .local v2, "it":Lgnu/lists/LListPosition;
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/lists/LListPosition;->gotoNext()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 329
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 330
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
    .line 335
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/Pair;
    return-object v0
.end method

.method public setCar(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move-object v1, p1

    .local v1, "car":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    return-void
.end method

.method public setCdr(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move-object v1, p1

    .local v1, "cdr":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    return-void
.end method

.method public setCdrBackdoor(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move-object v1, p1

    .local v1, "cdr":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lgnu/lists/Pair;->listLength(Ljava/lang/Object;Z)I

    move-result v2

    move v1, v2

    .line 43
    .local v1, "n":I
    move v2, v1

    if-ltz v2, :cond_0

    .line 44
    move v2, v1

    move v0, v2

    .line 46
    .end local v0    # "this":Lgnu/lists/Pair;
    :goto_0
    return v0

    .line 45
    .restart local v0    # "this":Lgnu/lists/Pair;
    :cond_0
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 46
    const v2, 0x7fffffff

    move v0, v2

    goto :goto_0

    .line 47
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "not a true list"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 11

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/lists/Pair;->size()I

    move-result v6

    move v1, v6

    .line 271
    .local v1, "len":I
    move v6, v1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v2, v6

    .line 272
    .local v2, "arr":[Ljava/lang/Object;
    const/4 v6, 0x0

    move v3, v6

    .line 273
    .local v3, "i":I
    move-object v6, v0

    move-object v4, v6

    .line 274
    .local v4, "rest":Lgnu/lists/Sequence;
    :goto_0
    move v6, v3

    move v7, v1

    if-ge v6, v7, :cond_0

    move-object v6, v4

    instance-of v6, v6, Lgnu/lists/Pair;

    if-eqz v6, :cond_0

    .line 276
    move-object v6, v4

    check-cast v6, Lgnu/lists/Pair;

    move-object v5, v6

    .line 277
    .local v5, "pair":Lgnu/lists/Pair;
    move-object v6, v2

    move v7, v3

    move-object v8, v5

    iget-object v8, v8, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    aput-object v8, v6, v7

    .line 278
    move-object v6, v5

    iget-object v6, v6, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    check-cast v6, Lgnu/lists/Sequence;

    move-object v4, v6

    .line 274
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    .end local v5    # "pair":Lgnu/lists/Pair;
    :cond_0
    move v6, v3

    move v5, v6

    .line 281
    .local v5, "prefix":I
    :goto_1
    move v6, v3

    move v7, v1

    if-ge v6, v7, :cond_1

    .line 283
    move-object v6, v2

    move v7, v3

    move-object v8, v4

    move v9, v3

    move v10, v5

    sub-int/2addr v9, v10

    invoke-interface {v8, v9}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 285
    :cond_1
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Lgnu/lists/Pair;
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 12

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move-object v1, p1

    .local v1, "arr":[Ljava/lang/Object;
    move-object v7, v1

    array-length v7, v7

    move v2, v7

    .line 291
    .local v2, "alen":I
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/lists/Pair;->length()I

    move-result v7

    move v3, v7

    .line 292
    .local v3, "len":I
    move v7, v3

    move v8, v2

    if-le v7, v8, :cond_0

    .line 295
    move v7, v3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v1, v7

    .line 296
    move v7, v3

    move v2, v7

    .line 298
    :cond_0
    const/4 v7, 0x0

    move v4, v7

    .line 299
    .local v4, "i":I
    move-object v7, v0

    move-object v5, v7

    .line 300
    .local v5, "rest":Lgnu/lists/Sequence;
    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_1

    move-object v7, v5

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_1

    .line 302
    move-object v7, v5

    check-cast v7, Lgnu/lists/Pair;

    move-object v6, v7

    .line 303
    .local v6, "pair":Lgnu/lists/Pair;
    move-object v7, v1

    move v8, v4

    move-object v9, v6

    iget-object v9, v9, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    aput-object v9, v7, v8

    .line 304
    move-object v7, v6

    iget-object v7, v7, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    check-cast v7, Lgnu/lists/Sequence;

    move-object v5, v7

    .line 300
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 306
    .end local v6    # "pair":Lgnu/lists/Pair;
    :cond_1
    move v7, v4

    move v6, v7

    .line 307
    .local v6, "prefix":I
    :goto_1
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_2

    .line 309
    move-object v7, v1

    move v8, v4

    move-object v9, v5

    move v10, v4

    move v11, v6

    sub-int/2addr v10, v11

    invoke-interface {v9, v10}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    .line 307
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 311
    :cond_2
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_3

    .line 312
    move-object v7, v1

    move v8, v3

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 313
    :cond_3
    move-object v7, v1

    move-object v0, v7

    .end local v0    # "this":Lgnu/lists/Pair;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Pair;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 322
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 323
    return-void
.end method
