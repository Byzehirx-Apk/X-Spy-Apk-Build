.class public Lgnu/lists/TreePosition;
.super Lgnu/lists/SeqPosition;
.source "TreePosition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field depth:I

.field istack:[I

.field sstack:[Lgnu/lists/AbstractSequence;

.field start:I

.field private xpos:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/SeqPosition;-><init>()V

    .line 40
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lgnu/lists/TreePosition;->depth:I

    .line 41
    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;I)V
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;IZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lgnu/lists/TreePosition;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    move-object v1, p1

    .local v1, "pos":Lgnu/lists/TreePosition;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SeqPosition;-><init>()V

    .line 57
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/TreePosition;->set(Lgnu/lists/TreePosition;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    move-object v1, p1

    .local v1, "root":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SeqPosition;-><init>()V

    .line 46
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    .line 47
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lgnu/lists/TreePosition;->depth:I

    .line 48
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    new-instance v1, Lgnu/lists/TreePosition;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/lists/TreePosition;-><init>(Lgnu/lists/TreePosition;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/TreePosition;
    return-object v0
.end method

.method public dump()V
    .locals 9

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "TreePosition dump depth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreePosition;->depth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " start:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreePosition;->start:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreePosition;->depth:I

    if-gt v3, v4, :cond_2

    .line 256
    move v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    :goto_1
    move-object v2, v3

    .line 257
    .local v2, "seq":Lgnu/lists/AbstractSequence;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 258
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " ipos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    if-nez v5, :cond_1

    move-object v5, v0

    iget v5, v5, Lgnu/lists/TreePosition;->ipos:I

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v2    # "seq":Lgnu/lists/AbstractSequence;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreePosition;->depth:I

    move v5, v1

    sub-int/2addr v4, v5

    aget-object v3, v3, v4

    goto :goto_1

    .line 258
    .restart local v2    # "seq":Lgnu/lists/AbstractSequence;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/TreePosition;->istack:[I

    move-object v6, v0

    iget v6, v6, Lgnu/lists/TreePosition;->depth:I

    move v7, v1

    sub-int/2addr v6, v7

    aget v5, v5, v6

    goto :goto_2

    .line 260
    .end local v2    # "seq":Lgnu/lists/AbstractSequence;
    :cond_2
    return-void
.end method

.method public getAncestor(I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    move v1, p1

    .local v1, "up":I
    move v3, v1

    if-nez v3, :cond_0

    .line 218
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 223
    .end local v0    # "this":Lgnu/lists/TreePosition;
    :goto_0
    return-object v0

    .line 219
    .restart local v0    # "this":Lgnu/lists/TreePosition;
    :cond_0
    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreePosition;->depth:I

    move v4, v1

    sub-int/2addr v3, v4

    move v2, v3

    .line 220
    .local v2, "i":I
    move v3, v2

    if-gtz v3, :cond_1

    .line 221
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/TreePosition;->getRoot()Lgnu/lists/AbstractSequence;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 222
    :cond_1
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreePosition;->start:I

    add-int/2addr v3, v4

    move v2, v3

    .line 223
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/TreePosition;->istack:[I

    move v5, v2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public getDepth()I
    .locals 3

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    move-object v1, v0

    iget v1, v1, Lgnu/lists/TreePosition;->depth:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/TreePosition;
    return v0
.end method

.method public getPosNext()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/TreePosition;
    return-object v0

    .restart local v0    # "this":Lgnu/lists/TreePosition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    iget v2, v2, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getRoot()Lgnu/lists/AbstractSequence;
    .locals 3

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    move-object v1, v0

    iget v1, v1, Lgnu/lists/TreePosition;->depth:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/TreePosition;
    return-object v0

    .restart local v0    # "this":Lgnu/lists/TreePosition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    move-object v2, v0

    iget v2, v2, Lgnu/lists/TreePosition;->start:I

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public gotoAttributesStart()Z
    .locals 3

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v1, :cond_1

    .line 194
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/lists/AbstractSequence;

    if-eqz v1, :cond_0

    .line 198
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    .line 200
    .end local v0    # "this":Lgnu/lists/TreePosition;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/lists/TreePosition;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->gotoAttributesStart(Lgnu/lists/TreePosition;)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public gotoChildrenStart()Z
    .locals 3

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v1, :cond_2

    .line 173
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/lists/AbstractSequence;

    if-nez v1, :cond_0

    .line 174
    const/4 v1, 0x0

    move v0, v1

    .line 184
    .end local v0    # "this":Lgnu/lists/TreePosition;
    :goto_0
    return v0

    .line 175
    .restart local v0    # "this":Lgnu/lists/TreePosition;
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/lists/TreePosition;->depth:I

    .line 176
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    check-cast v2, Lgnu/lists/AbstractSequence;

    iput-object v2, v1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 177
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v2}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/TreePosition;->setPos(I)V

    .line 184
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 181
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->gotoChildrenStart(Lgnu/lists/TreePosition;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public final gotoParent()Z
    .locals 3

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/lists/TreePosition;
    return v0

    .restart local v0    # "this":Lgnu/lists/TreePosition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->gotoParent(Lgnu/lists/TreePosition;)Z

    move-result v1

    goto :goto_0
.end method

.method public pop()V
    .locals 3

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    iget v2, v2, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 142
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/lists/TreePosition;->popNoRelease()V

    .line 143
    return-void
.end method

.method public popNoRelease()V
    .locals 7

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lgnu/lists/TreePosition;->depth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    iput v3, v2, Lgnu/lists/TreePosition;->depth:I

    if-gez v1, :cond_0

    .line 149
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    iput-object v2, v1, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    .line 150
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreePosition;->start:I

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreePosition;->depth:I

    add-int/2addr v3, v4

    aget-object v2, v2, v3

    iput-object v2, v1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 155
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/TreePosition;->istack:[I

    move-object v3, v0

    iget v3, v3, Lgnu/lists/TreePosition;->start:I

    move-object v4, v0

    iget v4, v4, Lgnu/lists/TreePosition;->depth:I

    add-int/2addr v3, v4

    aget v2, v2, v3

    iput v2, v1, Lgnu/lists/TreePosition;->ipos:I

    goto :goto_0
.end method

.method public push(Lgnu/lists/AbstractSequence;I)V
    .locals 14

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    move-object v1, p1

    .local v1, "child":Lgnu/lists/AbstractSequence;
    move/from16 v2, p2

    .local v2, "iposChild":I
    move-object v8, v0

    iget v8, v8, Lgnu/lists/TreePosition;->depth:I

    move-object v9, v0

    iget v9, v9, Lgnu/lists/TreePosition;->start:I

    add-int/2addr v8, v9

    move v3, v8

    .line 113
    .local v3, "d":I
    move v8, v3

    if-ltz v8, :cond_1

    .line 115
    move v8, v3

    if-nez v8, :cond_2

    .line 117
    move-object v8, v0

    const/16 v9, 0x8

    new-array v9, v9, [I

    iput-object v9, v8, Lgnu/lists/TreePosition;->istack:[I

    .line 118
    move-object v8, v0

    const/16 v9, 0x8

    new-array v9, v9, [Lgnu/lists/AbstractSequence;

    iput-object v9, v8, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    .line 131
    :cond_0
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    aput-object v10, v8, v9

    .line 132
    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/TreePosition;->istack:[I

    move v9, v3

    move-object v10, v0

    iget v10, v10, Lgnu/lists/TreePosition;->ipos:I

    aput v10, v8, v9

    .line 134
    :cond_1
    move-object v8, v0

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lgnu/lists/TreePosition;->depth:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lgnu/lists/TreePosition;->depth:I

    .line 135
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 136
    move-object v8, v0

    move v9, v2

    iput v9, v8, Lgnu/lists/TreePosition;->ipos:I

    .line 137
    return-void

    .line 120
    :cond_2
    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Lgnu/lists/TreePosition;->istack:[I

    array-length v9, v9

    if-lt v8, v9, :cond_0

    .line 122
    const/4 v8, 0x2

    move v9, v3

    mul-int/2addr v8, v9

    move v4, v8

    .line 123
    .local v4, "ndepth":I
    move v8, v4

    new-array v8, v8, [I

    move-object v5, v8

    .line 124
    .local v5, "itemp":[I
    move v8, v4

    new-array v8, v8, [Ljava/lang/Object;

    move-object v6, v8

    .line 125
    .local v6, "xtemp":[Ljava/lang/Object;
    move v8, v4

    new-array v8, v8, [Lgnu/lists/AbstractSequence;

    move-object v7, v8

    .line 126
    .local v7, "stemp":[Lgnu/lists/AbstractSequence;
    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/TreePosition;->istack:[I

    const/4 v9, 0x0

    move-object v10, v5

    const/4 v11, 0x0

    move-object v12, v0

    iget v12, v12, Lgnu/lists/TreePosition;->depth:I

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    const/4 v9, 0x0

    move-object v10, v7

    const/4 v11, 0x0

    move-object v12, v0

    iget v12, v12, Lgnu/lists/TreePosition;->depth:I

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lgnu/lists/TreePosition;->istack:[I

    .line 129
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v1, :cond_0

    .line 230
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v0

    iget v2, v2, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 231
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/lists/TreePosition;->pop()V

    goto :goto_0

    .line 233
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    .line 234
    return-void
.end method

.method public set(Lgnu/lists/TreePosition;)V
    .locals 11

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/lists/TreePosition;
    move-object v1, p1

    .local v1, "position":Lgnu/lists/TreePosition;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/lists/TreePosition;->release()V

    .line 68
    move-object v6, v1

    iget v6, v6, Lgnu/lists/TreePosition;->depth:I

    move v2, v6

    .line 69
    .local v2, "d":I
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lgnu/lists/TreePosition;->depth:I

    .line 70
    move v6, v2

    if-gez v6, :cond_0

    .line 72
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    iput-object v7, v6, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    .line 73
    .line 91
    :goto_0
    return-void

    .line 75
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    array-length v6, v6

    move v7, v2

    if-gt v6, v7, :cond_2

    .line 76
    :cond_1
    move-object v6, v0

    move v7, v2

    const/16 v8, 0xa

    add-int/lit8 v7, v7, 0xa

    new-array v7, v7, [Lgnu/lists/AbstractSequence;

    iput-object v7, v6, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    .line 77
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreePosition;->istack:[I

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreePosition;->istack:[I

    array-length v6, v6

    move v7, v2

    if-gt v6, v7, :cond_4

    .line 78
    :cond_3
    move-object v6, v0

    move v7, v2

    const/16 v8, 0xa

    add-int/lit8 v7, v7, 0xa

    new-array v7, v7, [I

    iput-object v7, v6, Lgnu/lists/TreePosition;->istack:[I

    .line 81
    :cond_4
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreePosition;->depth:I

    if-ge v6, v7, :cond_5

    .line 83
    move v6, v4

    move-object v7, v1

    iget v7, v7, Lgnu/lists/TreePosition;->start:I

    add-int/2addr v6, v7

    move v5, v6

    .line 84
    .local v5, "j":I
    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    move v7, v5

    aget-object v6, v6, v7

    move-object v3, v6

    .line 85
    .local v3, "seq":Lgnu/lists/AbstractSequence;
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreePosition;->depth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object v8, v3

    aput-object v8, v6, v7

    .line 86
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/TreePosition;->istack:[I

    move-object v7, v0

    iget v7, v7, Lgnu/lists/TreePosition;->depth:I

    move v8, v4

    sub-int/2addr v7, v8

    move-object v8, v3

    move-object v9, v1

    iget-object v9, v9, Lgnu/lists/TreePosition;->istack:[I

    move v10, v5

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v8

    aput v8, v6, v7

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 88
    .end local v3    # "seq":Lgnu/lists/AbstractSequence;
    .end local v5    # "j":I
    :cond_5
    move-object v6, v1

    iget-object v6, v6, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v3, v6

    .line 89
    .restart local v3    # "seq":Lgnu/lists/AbstractSequence;
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 90
    move-object v6, v0

    move-object v7, v3

    move-object v8, v1

    iget v8, v8, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v7, v8}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v7

    iput v7, v6, Lgnu/lists/TreePosition;->ipos:I

    .line 91
    goto :goto_0
.end method
