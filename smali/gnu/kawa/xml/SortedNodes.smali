.class public Lgnu/kawa/xml/SortedNodes;
.super Lgnu/kawa/xml/Nodes;
.source "SortedNodes.java"


# instance fields
.field nesting:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/SortedNodes;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/Nodes;-><init>()V

    .line 16
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/kawa/xml/SortedNodes;->nesting:I

    return-void
.end method


# virtual methods
.method compareIndex(ILgnu/lists/AbstractSequence;I)I
    .locals 11

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/SortedNodes;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "seq2":Lgnu/lists/AbstractSequence;
    move v3, p3

    .local v3, "ipos2":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/xml/SortedNodes;->data:[C

    move v7, v1

    aget-char v6, v6, v7

    move v4, v6

    .line 21
    .local v4, "datum":I
    move v6, v4

    const v7, 0xf10f

    if-eq v6, v7, :cond_0

    .line 22
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "invalid kind of value to compare"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 23
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/xml/SortedNodes;->objects:[Ljava/lang/Object;

    move-object v7, v0

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/kawa/xml/SortedNodes;->getIntN(I)I

    move-result v7

    aget-object v6, v6, v7

    check-cast v6, Lgnu/lists/AbstractSequence;

    move-object v5, v6

    .line 24
    .local v5, "seq":Lgnu/lists/AbstractSequence;
    move-object v6, v5

    move-object v7, v0

    move v8, v1

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v7, v8}, Lgnu/kawa/xml/SortedNodes;->getIntN(I)I

    move-result v7

    move-object v8, v2

    move v9, v3

    invoke-static {v6, v7, v8, v9}, Lgnu/lists/AbstractSequence;->compare(Lgnu/lists/AbstractSequence;ILgnu/lists/AbstractSequence;I)I

    move-result v6

    move v0, v6

    .end local v0    # "this":Lgnu/kawa/xml/SortedNodes;
    return v0
.end method

.method find(IILgnu/lists/AbstractSequence;I)I
    .locals 13

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/SortedNodes;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    move-object/from16 v3, p3

    .local v3, "seq":Lgnu/lists/AbstractSequence;
    move/from16 v4, p4

    .local v4, "ipos":I
    const/4 v9, 0x0

    move v5, v9

    .line 38
    .local v5, "lo":I
    move v9, v2

    move v6, v9

    .line 42
    .local v6, "hi":I
    :goto_0
    move v9, v5

    move v10, v6

    if-ge v9, v10, :cond_2

    .line 44
    move v9, v5

    move v10, v6

    add-int/2addr v9, v10

    const/4 v10, 0x1

    ushr-int/lit8 v9, v9, 0x1

    move v7, v9

    .line 45
    .local v7, "mid":I
    move-object v9, v0

    move v10, v1

    const/4 v11, 0x5

    move v12, v7

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    move-object v11, v3

    move v12, v4

    invoke-virtual {v9, v10, v11, v12}, Lgnu/kawa/xml/SortedNodes;->compareIndex(ILgnu/lists/AbstractSequence;I)I

    move-result v9

    move v8, v9

    .line 46
    .local v8, "cmp":I
    move v9, v8

    if-nez v9, :cond_0

    .line 47
    const/4 v9, -0x1

    move v0, v9

    .line 53
    .end local v0    # "this":Lgnu/kawa/xml/SortedNodes;
    .end local v7    # "mid":I
    .end local v8    # "cmp":I
    :goto_1
    return v0

    .line 48
    .restart local v0    # "this":Lgnu/kawa/xml/SortedNodes;
    .restart local v7    # "mid":I
    .restart local v8    # "cmp":I
    :cond_0
    move v9, v8

    if-lez v9, :cond_1

    .line 49
    move v9, v7

    move v6, v9

    .line 52
    :goto_2
    goto :goto_0

    .line 51
    :cond_1
    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v9

    goto :goto_2

    .line 53
    .end local v7    # "mid":I
    .end local v8    # "cmp":I
    :cond_2
    move v9, v1

    const/4 v10, 0x5

    move v11, v5

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    move v0, v9

    goto :goto_1
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 14

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/SortedNodes;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move/from16 v2, p2

    .local v2, "ipos":I
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/xml/SortedNodes;->count:I

    if-lez v8, :cond_1

    .line 60
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    const/4 v9, 0x5

    add-int/lit8 v8, v8, -0x5

    move v3, v8

    .line 61
    .local v3, "lastIndex":I
    move-object v8, v0

    move v9, v3

    move-object v10, v1

    move v11, v2

    invoke-virtual {v8, v9, v10, v11}, Lgnu/kawa/xml/SortedNodes;->compareIndex(ILgnu/lists/AbstractSequence;I)I

    move-result v8

    move v4, v8

    .line 62
    .local v4, "cmp":I
    move v8, v4

    if-gez v8, :cond_2

    .line 65
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    move v5, v8

    .line 66
    .local v5, "i":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/xml/SortedNodes;->data:[C

    array-length v8, v8

    move v6, v8

    .line 69
    .local v6, "end":I
    move-object v8, v0

    move v9, v5

    move v10, v6

    move v11, v5

    sub-int/2addr v10, v11

    const/4 v11, 0x5

    div-int/lit8 v10, v10, 0x5

    move-object v11, v1

    move v12, v2

    invoke-virtual {v8, v9, v10, v11, v12}, Lgnu/kawa/xml/SortedNodes;->find(IILgnu/lists/AbstractSequence;I)I

    move-result v8

    move v5, v8

    .line 70
    move v8, v5

    if-gez v8, :cond_0

    .line 71
    .line 97
    .end local v3    # "lastIndex":I
    .end local v4    # "cmp":I
    .end local v5    # "i":I
    .end local v6    # "end":I
    :goto_0
    return-void

    .line 72
    .restart local v3    # "lastIndex":I
    .restart local v4    # "cmp":I
    .restart local v5    # "i":I
    .restart local v6    # "end":I
    :cond_0
    move v8, v5

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    sub-int/2addr v8, v9

    move v7, v8

    .line 73
    .local v7, "delta":I
    move v8, v7

    if-lez v8, :cond_1

    .line 75
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/xml/SortedNodes;->data:[C

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/xml/SortedNodes;->data:[C

    move-object v11, v0

    iget v11, v11, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    move v12, v7

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    move-object v8, v0

    move v9, v5

    iput v9, v8, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    .line 77
    move-object v8, v0

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    move v10, v7

    add-int/2addr v9, v10

    iput v9, v8, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    .line 79
    .line 96
    .end local v3    # "lastIndex":I
    .end local v4    # "cmp":I
    .end local v5    # "i":I
    .end local v6    # "end":I
    .end local v7    # "delta":I
    :cond_1
    :goto_1
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    invoke-super {v8, v9, v10}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 97
    goto :goto_0

    .line 80
    .restart local v3    # "lastIndex":I
    .restart local v4    # "cmp":I
    :cond_2
    move v8, v4

    if-nez v8, :cond_3

    .line 81
    goto :goto_0

    .line 84
    :cond_3
    move-object v8, v0

    const/4 v9, 0x0

    move v10, v3

    const/4 v11, 0x5

    div-int/lit8 v10, v10, 0x5

    move-object v11, v1

    move v12, v2

    invoke-virtual {v8, v9, v10, v11, v12}, Lgnu/kawa/xml/SortedNodes;->find(IILgnu/lists/AbstractSequence;I)I

    move-result v8

    move v5, v8

    .line 85
    .restart local v5    # "i":I
    move v8, v5

    if-gez v8, :cond_4

    .line 86
    goto :goto_0

    .line 87
    :cond_4
    move-object v8, v0

    iget v8, v8, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    move v9, v5

    sub-int/2addr v8, v9

    move v6, v8

    .line 88
    .local v6, "delta":I
    move v8, v6

    if-lez v8, :cond_1

    .line 90
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/xml/SortedNodes;->data:[C

    move v9, v5

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/xml/SortedNodes;->data:[C

    move-object v11, v0

    iget v11, v11, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    move v12, v6

    sub-int/2addr v11, v12

    move v12, v6

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    move-object v8, v0

    move v9, v5

    iput v9, v8, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    .line 92
    move-object v8, v0

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    move v10, v6

    sub-int/2addr v9, v10

    iput v9, v8, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    goto :goto_1
.end method
