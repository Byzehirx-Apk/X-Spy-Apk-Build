.class Landroidx/recyclerview/widget/OpReorderer;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/OpReorderer$Callback;
    }
.end annotation


# instance fields
.field final mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/OpReorderer$Callback;)V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OpReorderer;
    move-object v1, p1

    .local v1, "callback":Landroidx/recyclerview/widget/OpReorderer$Callback;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    .line 27
    return-void
.end method

.method private getLastMoveOutOfOrder(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OpReorderer;
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;>;"
    const/4 v5, 0x0

    move v2, v5

    .line 214
    .local v2, "foundNonMove":Z
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    if-ltz v5, :cond_2

    .line 215
    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-object v4, v5

    .line 216
    .local v4, "op1":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v5, v4

    iget v5, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 217
    move v5, v2

    if-eqz v5, :cond_1

    .line 218
    move v5, v3

    move v0, v5

    .line 224
    .end local v0    # "this":Landroidx/recyclerview/widget/OpReorderer;
    .end local v4    # "op1":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :goto_1
    return v0

    .line 221
    .restart local v0    # "this":Landroidx/recyclerview/widget/OpReorderer;
    .restart local v4    # "op1":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_0
    const/4 v5, 0x1

    move v2, v5

    .line 214
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 224
    .end local v4    # "op1":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_2
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1
.end method

.method private swapMoveAdd(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OpReorderer;
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;>;"
    move v2, p2

    .local v2, "move":I
    move-object v3, p3

    .local v3, "moveOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move v4, p4

    .local v4, "add":I
    move-object/from16 v5, p5

    .local v5, "addOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    const/4 v7, 0x0

    move v6, v7

    .line 157
    .local v6, "offset":I
    move-object v7, v3

    iget v7, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v8, v5

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v7, v8, :cond_0

    .line 158
    add-int/lit8 v6, v6, -0x1

    .line 160
    :cond_0
    move-object v7, v3

    iget v7, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v8, v5

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v7, v8, :cond_1

    .line 161
    add-int/lit8 v6, v6, 0x1

    .line 163
    :cond_1
    move-object v7, v5

    iget v7, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v8, v3

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v7, v8, :cond_2

    .line 164
    move-object v7, v3

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v9, v5

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 166
    :cond_2
    move-object v7, v5

    iget v7, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v8, v3

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v7, v8, :cond_3

    .line 167
    move-object v7, v3

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v9, v5

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 169
    :cond_3
    move-object v7, v5

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v9, v6

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 170
    move-object v7, v1

    move v8, v2

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 171
    move-object v7, v1

    move v8, v4

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 172
    return-void
.end method

.method private swapMoveOp(Ljava/util/List;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OpReorderer;
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;>;"
    move v2, p2

    .local v2, "badMove":I
    move v3, p3

    .local v3, "next":I
    move-object v6, v1

    move v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-object v4, v6

    .line 40
    .local v4, "moveOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-object v5, v6

    .line 41
    .local v5, "nextOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v6, v5

    iget v6, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v6, :pswitch_data_0

    .line 52
    :goto_0
    :pswitch_0
    return-void

    .line 43
    :pswitch_1
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v4

    move v10, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveRemove(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 44
    goto :goto_0

    .line 46
    :pswitch_2
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v4

    move v10, v3

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveAdd(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 47
    goto :goto_0

    .line 49
    :pswitch_3
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v4

    move v10, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveUpdate(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method reorderOps(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OpReorderer;
    move-object v1, p1

    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;>;"
    :goto_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/OpReorderer;->getLastMoveOutOfOrder(Ljava/util/List;)I

    move-result v3

    move v8, v3

    move v3, v8

    move v4, v8

    move v2, v4

    .local v2, "badMove":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 34
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveOp(Ljava/util/List;II)V

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method swapMoveRemove(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OpReorderer;
    move-object/from16 v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;>;"
    move/from16 v2, p2

    .local v2, "movePos":I
    move-object/from16 v3, p3

    .local v3, "moveOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move/from16 v4, p4

    .local v4, "removePos":I
    move-object/from16 v5, p5

    .local v5, "removeOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    const/4 v10, 0x0

    move-object v6, v10

    .line 58
    .local v6, "extraRm":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    const/4 v10, 0x0

    move v7, v10

    .line 61
    .local v7, "revertedMove":Z
    move-object v10, v3

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v10, v11, :cond_3

    .line 62
    const/4 v10, 0x0

    move v8, v10

    .line 63
    .local v8, "moveIsBackwards":Z
    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v10, v11, :cond_0

    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v12, v3

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v11, v12

    if-ne v10, v11, :cond_0

    .line 65
    const/4 v10, 0x1

    move v7, v10

    .line 76
    :cond_0
    :goto_0
    move-object v10, v3

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v11, v5

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v10, v11, :cond_4

    .line 77
    move-object v10, v5

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 92
    :cond_1
    move-object v10, v3

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v5

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v10, v11, :cond_6

    .line 93
    move-object v10, v5

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 102
    :cond_2
    :goto_1
    move v10, v7

    if-eqz v10, :cond_7

    .line 103
    move-object v10, v1

    move v11, v2

    move-object v12, v5

    invoke-interface {v10, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 104
    move-object v10, v1

    move v11, v4

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    .line 105
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    move-object v11, v3

    invoke-interface {v10, v11}, Landroidx/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 106
    .line 151
    :goto_2
    return-void

    .line 68
    .end local v8    # "moveIsBackwards":Z
    :cond_3
    const/4 v10, 0x1

    move v8, v10

    .line 69
    .restart local v8    # "moveIsBackwards":Z
    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    if-ne v10, v11, :cond_0

    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v12, v3

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    if-ne v10, v11, :cond_0

    .line 71
    const/4 v10, 0x1

    move v7, v10

    goto :goto_0

    .line 78
    :cond_4
    move-object v10, v3

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v11, v5

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v12, v5

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_1

    .line 80
    move-object v10, v5

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 81
    move-object v10, v3

    const/4 v11, 0x2

    iput v11, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 82
    move-object v10, v3

    const/4 v11, 0x1

    iput v11, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 83
    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-nez v10, :cond_5

    .line 84
    move-object v10, v1

    move v11, v4

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    .line 85
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    move-object v11, v5

    invoke-interface {v10, v11}, Landroidx/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 88
    :cond_5
    goto :goto_2

    .line 94
    :cond_6
    move-object v10, v3

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v5

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v12, v5

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_2

    .line 95
    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v5

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v10, v11

    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v10, v11

    move v9, v10

    .line 97
    .local v9, "remaining":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    const/4 v11, 0x2

    move-object v12, v3

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v9

    const/4 v14, 0x0

    invoke-interface {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v10

    move-object v6, v10

    .line 98
    move-object v10, v5

    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v12, v5

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto/16 :goto_1

    .line 110
    .end local v9    # "remaining":I
    :cond_7
    move v10, v8

    if-eqz v10, :cond_d

    .line 111
    move-object v10, v6

    if-eqz v10, :cond_9

    .line 112
    move-object v10, v3

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v6

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v10, v11, :cond_8

    .line 113
    move-object v10, v3

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v12, v6

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 115
    :cond_8
    move-object v10, v3

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v11, v6

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v10, v11, :cond_9

    .line 116
    move-object v10, v3

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v12, v6

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 119
    :cond_9
    move-object v10, v3

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v5

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v10, v11, :cond_a

    .line 120
    move-object v10, v3

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v12, v5

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 122
    :cond_a
    move-object v10, v3

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v11, v5

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v10, v11, :cond_b

    .line 123
    move-object v10, v3

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v12, v5

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 142
    :cond_b
    :goto_3
    move-object v10, v1

    move v11, v2

    move-object v12, v5

    invoke-interface {v10, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 143
    move-object v10, v3

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v10, v11, :cond_11

    .line 144
    move-object v10, v1

    move v11, v4

    move-object v12, v3

    invoke-interface {v10, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 148
    :goto_4
    move-object v10, v6

    if-eqz v10, :cond_c

    .line 149
    move-object v10, v1

    move v11, v2

    move-object v12, v6

    invoke-interface {v10, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 151
    :cond_c
    goto/16 :goto_2

    .line 126
    :cond_d
    move-object v10, v6

    if-eqz v10, :cond_f

    .line 127
    move-object v10, v3

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v6

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v10, v11, :cond_e

    .line 128
    move-object v10, v3

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v12, v6

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 130
    :cond_e
    move-object v10, v3

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v11, v6

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v10, v11, :cond_f

    .line 131
    move-object v10, v3

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v12, v6

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 134
    :cond_f
    move-object v10, v3

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v5

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v10, v11, :cond_10

    .line 135
    move-object v10, v3

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v12, v5

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 137
    :cond_10
    move-object v10, v3

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v11, v5

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v10, v11, :cond_b

    .line 138
    move-object v10, v3

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v12, v5

    iget v12, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 146
    :cond_11
    move-object v10, v1

    move v11, v4

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    goto :goto_4
.end method

.method swapMoveUpdate(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/OpReorderer;
    move-object/from16 v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;>;"
    move/from16 v2, p2

    .local v2, "move":I
    move-object/from16 v3, p3

    .local v3, "moveOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move/from16 v4, p4

    .local v4, "update":I
    move-object/from16 v5, p5

    .local v5, "updateOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    const/4 v9, 0x0

    move-object v6, v9

    .line 177
    .local v6, "extraUp1":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    const/4 v9, 0x0

    move-object v7, v9

    .line 179
    .local v7, "extraUp2":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v9, v3

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v9, v10, :cond_4

    .line 180
    move-object v9, v5

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 187
    :cond_0
    :goto_0
    move-object v9, v3

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v9, v10, :cond_5

    .line 188
    move-object v9, v5

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 197
    :cond_1
    :goto_1
    move-object v9, v1

    move v10, v4

    move-object v11, v3

    invoke-interface {v9, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 198
    move-object v9, v5

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez v9, :cond_6

    .line 199
    move-object v9, v1

    move v10, v2

    move-object v11, v5

    invoke-interface {v9, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 204
    :goto_2
    move-object v9, v6

    if-eqz v9, :cond_2

    .line 205
    move-object v9, v1

    move v10, v2

    move-object v11, v6

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 207
    :cond_2
    move-object v9, v7

    if-eqz v9, :cond_3

    .line 208
    move-object v9, v1

    move v10, v2

    move-object v11, v7

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 210
    :cond_3
    return-void

    .line 181
    :cond_4
    move-object v9, v3

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v5

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_0

    .line 183
    move-object v9, v5

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 184
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    const/4 v10, 0x4

    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v12, 0x1

    move-object v13, v5

    iget-object v13, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v9

    move-object v6, v9

    goto :goto_0

    .line 189
    :cond_5
    move-object v9, v3

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v5

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_1

    .line 190
    move-object v9, v5

    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v9, v10

    move-object v10, v3

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v9, v10

    move v8, v9

    .line 192
    .local v8, "remaining":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    const/4 v10, 0x4

    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v12, v8

    move-object v13, v5

    iget-object v13, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v9

    move-object v7, v9

    .line 195
    move-object v9, v5

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v11, v8

    sub-int/2addr v10, v11

    iput v10, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto/16 :goto_1

    .line 201
    .end local v8    # "remaining":I
    :cond_6
    move-object v9, v1

    move v10, v2

    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 202
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    move-object v10, v5

    invoke-interface {v9, v10}, Landroidx/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2
.end method
