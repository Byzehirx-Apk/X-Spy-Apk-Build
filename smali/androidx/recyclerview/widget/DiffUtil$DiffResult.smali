.class public Landroidx/recyclerview/widget/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_IGNORE:I = 0x10

.field private static final FLAG_MASK:I = 0x1f

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x5

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private final mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I

.field private final mSnakes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$Callback;",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;[I[IZ)V"
        }
    .end annotation

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    move-object v1, p1

    .local v1, "callback":Landroidx/recyclerview/widget/DiffUtil$Callback;
    move-object v2, p2

    .local v2, "snakes":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$Snake;>;"
    move-object v3, p3

    .local v3, "oldItemStatuses":[I
    move-object v4, p4

    .local v4, "newItemStatuses":[I
    move v5, p5

    .local v5, "detectMoves":Z
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 568
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    .line 569
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 570
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 571
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 572
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 573
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 574
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v7

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 575
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v7

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 576
    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 577
    move-object v6, v0

    invoke-direct {v6}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->addRootSnake()V

    .line 578
    move-object v6, v0

    invoke-direct {v6}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingItems()V

    .line 579
    return-void
.end method

.method private addRootSnake()V
    .locals 7

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    move-object v1, v3

    .line 587
    .local v1, "firstSnake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    if-nez v3, :cond_0

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    if-eqz v3, :cond_1

    .line 588
    :cond_0
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    move-object v2, v3

    .line 589
    .local v2, "root":Landroidx/recyclerview/widget/DiffUtil$Snake;
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 590
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 591
    move-object v3, v2

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    .line 592
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    .line 593
    move-object v3, v2

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 594
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    const/4 v4, 0x0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 596
    .end local v2    # "root":Landroidx/recyclerview/widget/DiffUtil$Snake;
    :cond_1
    return-void

    .line 586
    .end local v1    # "firstSnake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DiffUtil$Snake;

    goto :goto_0
.end method

.method private dispatchAdditions(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;III)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 873
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    move-object/from16 v2, p1

    .local v2, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    move-object/from16 v3, p2

    .local v3, "updateCallback":Landroidx/recyclerview/widget/ListUpdateCallback;
    move/from16 v4, p3

    .local v4, "start":I
    move/from16 v5, p4

    .local v5, "count":I
    move/from16 v6, p5

    .local v6, "globalIndex":I
    move-object v11, v1

    iget-boolean v11, v11, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v11, :cond_0

    .line 874
    move-object v11, v3

    move v12, v4

    move v13, v5

    invoke-interface {v11, v12, v13}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 875
    .line 909
    :goto_0
    return-void

    .line 877
    :cond_0
    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v7, v11

    .local v7, "i":I
    :goto_1
    move v11, v7

    if-ltz v11, :cond_2

    .line 878
    move-object v11, v1

    iget-object v11, v11, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move v12, v6

    move v13, v7

    add-int/2addr v12, v13

    aget v11, v11, v12

    const/16 v12, 0x1f

    and-int/lit8 v11, v11, 0x1f

    move v8, v11

    .line 879
    .local v8, "status":I
    move v11, v8

    sparse-switch v11, :sswitch_data_0

    .line 904
    new-instance v11, Ljava/lang/IllegalStateException;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown flag for pos "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v6

    move v15, v7

    add-int/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v8

    int-to-long v14, v14

    .line 906
    invoke-static {v14, v15}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 881
    :sswitch_0
    move-object v11, v3

    move v12, v4

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 882
    move-object v11, v2

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v9, v11

    :goto_2
    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-object v10, v11

    .line 883
    .local v10, "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    move-object v11, v10

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    iget v12, v12, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 884
    goto :goto_2

    .line 885
    .line 877
    .end local v10    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    :cond_1
    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 888
    :sswitch_1
    move-object v11, v1

    iget-object v11, v11, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move v12, v6

    move v13, v7

    add-int/2addr v12, v13

    aget v11, v11, v12

    const/4 v12, 0x5

    shr-int/lit8 v11, v11, 0x5

    move v9, v11

    .line 889
    .local v9, "pos":I
    move-object v11, v2

    move v12, v9

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v11

    move-object v10, v11

    .line 893
    .restart local v10    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    move-object v11, v3

    move-object v12, v10

    iget v12, v12, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    move v13, v4

    invoke-interface {v11, v12, v13}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    .line 894
    move v11, v8

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1

    .line 896
    move-object v11, v3

    move v12, v4

    const/4 v13, 0x1

    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move v15, v9

    move/from16 v16, v6

    move/from16 v17, v7

    add-int v16, v16, v17

    .line 897
    invoke-virtual/range {v14 .. v16}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v14

    .line 896
    invoke-interface {v11, v12, v13, v14}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_3

    .line 901
    .end local v9    # "pos":I
    .end local v10    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    :sswitch_2
    move-object v11, v2

    new-instance v12, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move v14, v6

    move v15, v7

    add-int/2addr v14, v15

    move v15, v4

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 902
    goto :goto_3

    .line 909
    .end local v8    # "status":I
    :cond_2
    goto/16 :goto_0

    .line 879
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private dispatchRemovals(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;III)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 913
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    move-object/from16 v2, p1

    .local v2, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    move-object/from16 v3, p2

    .local v3, "updateCallback":Landroidx/recyclerview/widget/ListUpdateCallback;
    move/from16 v4, p3

    .local v4, "start":I
    move/from16 v5, p4

    .local v5, "count":I
    move/from16 v6, p5

    .local v6, "globalIndex":I
    move-object v11, v1

    iget-boolean v11, v11, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v11, :cond_0

    .line 914
    move-object v11, v3

    move v12, v4

    move v13, v5

    invoke-interface {v11, v12, v13}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 915
    .line 950
    :goto_0
    return-void

    .line 917
    :cond_0
    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v7, v11

    .local v7, "i":I
    :goto_1
    move v11, v7

    if-ltz v11, :cond_2

    .line 918
    move-object v11, v1

    iget-object v11, v11, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move v12, v6

    move v13, v7

    add-int/2addr v12, v13

    aget v11, v11, v12

    const/16 v12, 0x1f

    and-int/lit8 v11, v11, 0x1f

    move v8, v11

    .line 919
    .local v8, "status":I
    move v11, v8

    sparse-switch v11, :sswitch_data_0

    .line 945
    new-instance v11, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown flag for pos "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v6

    move v15, v7

    add-int/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v8

    int-to-long v14, v14

    .line 947
    invoke-static {v14, v15}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 921
    :sswitch_0
    move-object v11, v3

    move v12, v4

    move v13, v7

    add-int/2addr v12, v13

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 922
    move-object v11, v2

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v9, v11

    :goto_2
    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-object v10, v11

    .line 923
    .local v10, "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    move-object v11, v10

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    iget v12, v12, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 924
    goto :goto_2

    .line 925
    .line 917
    .end local v10    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    :cond_1
    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 928
    :sswitch_1
    move-object v11, v1

    iget-object v11, v11, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move v12, v6

    move v13, v7

    add-int/2addr v12, v13

    aget v11, v11, v12

    const/4 v12, 0x5

    shr-int/lit8 v11, v11, 0x5

    move v9, v11

    .line 929
    .local v9, "pos":I
    move-object v11, v2

    move v12, v9

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v11

    move-object v10, v11

    .line 934
    .restart local v10    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    move-object v11, v3

    move v12, v4

    move v13, v7

    add-int/2addr v12, v13

    move-object v13, v10

    iget v13, v13, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v11, v12, v13}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    .line 935
    move v11, v8

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1

    .line 937
    move-object v11, v3

    move-object v12, v10

    iget v12, v12, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x1

    move-object v14, v1

    iget-object v14, v14, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move v15, v6

    move/from16 v16, v7

    add-int v15, v15, v16

    move/from16 v16, v9

    .line 938
    invoke-virtual/range {v14 .. v16}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v14

    .line 937
    invoke-interface {v11, v12, v13, v14}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_3

    .line 942
    .end local v9    # "pos":I
    .end local v10    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    :sswitch_2
    move-object v11, v2

    new-instance v12, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move v14, v6

    move v15, v7

    add-int/2addr v14, v15

    move v15, v4

    move/from16 v16, v7

    add-int v15, v15, v16

    const/16 v16, 0x1

    invoke-direct/range {v13 .. v16}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 943
    goto :goto_3

    .line 950
    .end local v8    # "status":I
    :cond_2
    goto/16 :goto_0

    .line 919
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private findAddition(III)V
    .locals 9

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "snakeIndex":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-eqz v4, :cond_0

    .line 647
    .line 650
    :goto_0
    return-void

    .line 649
    :cond_0
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    move-result v4

    .line 650
    goto :goto_0
.end method

.method private findMatchingItem(IIIZ)Z
    .locals 21

    .prologue
    .line 723
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    move/from16 v3, p1

    .local v3, "x":I
    move/from16 v4, p2

    .local v4, "y":I
    move/from16 v5, p3

    .local v5, "snakeIndex":I
    move/from16 v6, p4

    .local v6, "removal":Z
    move/from16 v17, v6

    if-eqz v17, :cond_0

    .line 724
    move/from16 v17, v4

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v7, v17

    .line 725
    .local v7, "myItemPos":I
    move/from16 v17, v3

    move/from16 v8, v17

    .line 726
    .local v8, "curX":I
    move/from16 v17, v4

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v9, v17

    .line 732
    .local v9, "curY":I
    :goto_0
    move/from16 v17, v5

    move/from16 v10, v17

    .local v10, "i":I
    :goto_1
    move/from16 v17, v10

    if-ltz v17, :cond_7

    .line 733
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    move-object/from16 v17, v0

    move/from16 v18, v10

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-object/from16 v11, v17

    .line 734
    .local v11, "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v12, v17

    .line 735
    .local v12, "endX":I
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v13, v17

    .line 736
    .local v13, "endY":I
    move/from16 v17, v6

    if-eqz v17, :cond_4

    .line 738
    move/from16 v17, v8

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v14, v17

    .local v14, "pos":I
    :goto_2
    move/from16 v17, v14

    move/from16 v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 739
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move-object/from16 v17, v0

    move/from16 v18, v14

    move/from16 v19, v7

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 741
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move-object/from16 v17, v0

    move/from16 v18, v14

    move/from16 v19, v7

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v17

    move/from16 v15, v17

    .line 742
    .local v15, "theSame":Z
    move/from16 v17, v15

    if-eqz v17, :cond_1

    const/16 v17, 0x8

    :goto_3
    move/from16 v16, v17

    .line 744
    .local v16, "changeFlag":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move-object/from16 v17, v0

    move/from16 v18, v7

    move/from16 v19, v14

    const/16 v20, 0x5

    shl-int/lit8 v19, v19, 0x5

    const/16 v20, 0x10

    or-int/lit8 v19, v19, 0x10

    aput v19, v17, v18

    .line 745
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move-object/from16 v17, v0

    move/from16 v18, v14

    move/from16 v19, v7

    const/16 v20, 0x5

    shl-int/lit8 v19, v19, 0x5

    move/from16 v20, v16

    or-int v19, v19, v20

    aput v19, v17, v18

    .line 746
    const/16 v17, 0x1

    move/from16 v2, v17

    .line 766
    .end local v2    # "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .end local v11    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .end local v12    # "endX":I
    .end local v13    # "endY":I
    .end local v14    # "pos":I
    .end local v15    # "theSame":Z
    .end local v16    # "changeFlag":I
    :goto_4
    return v2

    .line 728
    .end local v7    # "myItemPos":I
    .end local v8    # "curX":I
    .end local v9    # "curY":I
    .end local v10    # "i":I
    .restart local v2    # "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    :cond_0
    move/from16 v17, v3

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v7, v17

    .line 729
    .restart local v7    # "myItemPos":I
    move/from16 v17, v3

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v8, v17

    .line 730
    .restart local v8    # "curX":I
    move/from16 v17, v4

    move/from16 v9, v17

    .restart local v9    # "curY":I
    goto/16 :goto_0

    .line 742
    .restart local v10    # "i":I
    .restart local v11    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .restart local v12    # "endX":I
    .restart local v13    # "endY":I
    .restart local v14    # "pos":I
    .restart local v15    # "theSame":Z
    :cond_1
    const/16 v17, 0x4

    goto :goto_3

    .line 738
    .end local v15    # "theSame":Z
    :cond_2
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_2

    .line 763
    :cond_3
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move/from16 v17, v0

    move/from16 v8, v17

    .line 764
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move/from16 v17, v0

    move/from16 v9, v17

    .line 732
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_1

    .line 751
    .end local v14    # "pos":I
    :cond_4
    move/from16 v17, v9

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v14, v17

    .restart local v14    # "pos":I
    :goto_5
    move/from16 v17, v14

    move/from16 v18, v13

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 752
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move-object/from16 v17, v0

    move/from16 v18, v7

    move/from16 v19, v14

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 754
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move-object/from16 v17, v0

    move/from16 v18, v7

    move/from16 v19, v14

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v17

    move/from16 v15, v17

    .line 755
    .restart local v15    # "theSame":Z
    move/from16 v17, v15

    if-eqz v17, :cond_5

    const/16 v17, 0x8

    :goto_6
    move/from16 v16, v17

    .line 757
    .restart local v16    # "changeFlag":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move-object/from16 v17, v0

    move/from16 v18, v3

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v19, v14

    const/16 v20, 0x5

    shl-int/lit8 v19, v19, 0x5

    const/16 v20, 0x10

    or-int/lit8 v19, v19, 0x10

    aput v19, v17, v18

    .line 758
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move-object/from16 v17, v0

    move/from16 v18, v14

    move/from16 v19, v3

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x5

    shl-int/lit8 v19, v19, 0x5

    move/from16 v20, v16

    or-int v19, v19, v20

    aput v19, v17, v18

    .line 759
    const/16 v17, 0x1

    move/from16 v2, v17

    goto/16 :goto_4

    .line 755
    .end local v16    # "changeFlag":I
    :cond_5
    const/16 v17, 0x4

    goto :goto_6

    .line 751
    .end local v15    # "theSame":Z
    :cond_6
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 766
    .end local v11    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .end local v12    # "endX":I
    .end local v13    # "endY":I
    .end local v14    # "pos":I
    :cond_7
    const/16 v17, 0x0

    move/from16 v2, v17

    goto/16 :goto_4
.end method

.method private findMatchingItems()V
    .locals 16

    .prologue
    .line 610
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    move-object v12, v0

    iget v12, v12, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    move v1, v12

    .line 611
    .local v1, "posOld":I
    move-object v12, v0

    iget v12, v12, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    move v2, v12

    .line 613
    .local v2, "posNew":I
    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v3, v12

    .local v3, "i":I
    :goto_0
    move v12, v3

    if-ltz v12, :cond_4

    .line 614
    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    move v13, v3

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-object v4, v12

    .line 615
    .local v4, "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move-object v13, v4

    iget v13, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v12, v13

    move v5, v12

    .line 616
    .local v5, "endX":I
    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move-object v13, v4

    iget v13, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v12, v13

    move v6, v12

    .line 617
    .local v6, "endY":I
    move-object v12, v0

    iget-boolean v12, v12, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v12, :cond_1

    .line 618
    :goto_1
    move v12, v1

    move v13, v5

    if-le v12, v13, :cond_0

    .line 620
    move-object v12, v0

    move v13, v1

    move v14, v2

    move v15, v3

    invoke-direct {v12, v13, v14, v15}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findAddition(III)V

    .line 621
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 623
    :cond_0
    :goto_2
    move v12, v2

    move v13, v6

    if-le v12, v13, :cond_1

    .line 626
    move-object v12, v0

    move v13, v1

    move v14, v2

    move v15, v3

    invoke-direct {v12, v13, v14, v15}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findRemoval(III)V

    .line 627
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 630
    :cond_1
    const/4 v12, 0x0

    move v7, v12

    .local v7, "j":I
    :goto_3
    move v12, v7

    move-object v13, v4

    iget v13, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    if-ge v12, v13, :cond_3

    .line 632
    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move v13, v7

    add-int/2addr v12, v13

    move v8, v12

    .line 633
    .local v8, "oldItemPos":I
    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move v13, v7

    add-int/2addr v12, v13

    move v9, v12

    .line 634
    .local v9, "newItemPos":I
    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move v13, v8

    move v14, v9

    .line 635
    invoke-virtual {v12, v13, v14}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v12

    move v10, v12

    .line 636
    .local v10, "theSame":Z
    move v12, v10

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_4
    move v11, v12

    .line 637
    .local v11, "changeFlag":I
    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move v13, v8

    move v14, v9

    const/4 v15, 0x5

    shl-int/lit8 v14, v14, 0x5

    move v15, v11

    or-int/2addr v14, v15

    aput v14, v12, v13

    .line 638
    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move v13, v9

    move v14, v8

    const/4 v15, 0x5

    shl-int/lit8 v14, v14, 0x5

    move v15, v11

    or-int/2addr v14, v15

    aput v14, v12, v13

    .line 630
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 636
    .end local v11    # "changeFlag":I
    :cond_2
    const/4 v12, 0x2

    goto :goto_4

    .line 640
    .end local v8    # "oldItemPos":I
    .end local v9    # "newItemPos":I
    .end local v10    # "theSame":Z
    :cond_3
    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move v1, v12

    .line 641
    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move v2, v12

    .line 613
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 643
    .end local v4    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .end local v5    # "endX":I
    .end local v6    # "endY":I
    .end local v7    # "j":I
    :cond_4
    return-void
.end method

.method private findRemoval(III)V
    .locals 9

    .prologue
    .line 653
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "snakeIndex":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-eqz v4, :cond_0

    .line 654
    .line 657
    :goto_0
    return-void

    .line 656
    :cond_0
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    move-result v4

    .line 657
    goto :goto_0
.end method

.method private static removePostponedUpdate(Ljava/util/List;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    .prologue
    .line 857
    move-object v0, p0

    .local v0, "updates":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    move v1, p1

    .local v1, "pos":I
    move v2, p2

    .local v2, "removal":Z
    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    if-ltz v6, :cond_3

    .line 858
    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-object v4, v6

    .line 859
    .local v4, "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    move-object v6, v4

    iget v6, v6, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    move v7, v1

    if-ne v6, v7, :cond_2

    move-object v6, v4

    iget-boolean v6, v6, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    move v7, v2

    if-ne v6, v7, :cond_2

    .line 860
    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    .line 861
    move v6, v3

    move v5, v6

    .local v5, "j":I
    :goto_1
    move v6, v5

    move-object v7, v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 863
    move-object v6, v0

    move v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    move v8, v2

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_2
    add-int/2addr v7, v8

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 861
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 863
    :cond_0
    const/4 v8, -0x1

    goto :goto_2

    .line 865
    :cond_1
    move-object v6, v4

    move-object v0, v6

    .line 868
    .end local v0    # "updates":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    .end local v4    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .end local v5    # "j":I
    :goto_3
    return-object v0

    .line 857
    .restart local v0    # "updates":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    .restart local v4    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 868
    .end local v4    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_3
.end method


# virtual methods
.method public convertNewPositionToOld(I)I
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 695
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    move v1, p1

    .local v1, "newListPosition":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 696
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Index out of bounds - passed position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", new list size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 699
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move v4, v1

    aget v3, v3, v4

    move v2, v3

    .line 700
    .local v2, "status":I
    move v3, v2

    const/16 v4, 0x1f

    and-int/lit8 v3, v3, 0x1f

    if-nez v3, :cond_2

    .line 701
    const/4 v3, -0x1

    move v0, v3

    .line 703
    .end local v0    # "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    :cond_2
    move v3, v2

    const/4 v4, 0x5

    shr-int/lit8 v3, v3, 0x5

    move v0, v3

    goto :goto_0
.end method

.method public convertOldPositionToNew(I)I
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 671
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    move v1, p1

    .local v1, "oldListPosition":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 672
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Index out of bounds - passed position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", old list size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 675
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move v4, v1

    aget v3, v3, v4

    move v2, v3

    .line 676
    .local v2, "status":I
    move v3, v2

    const/16 v4, 0x1f

    and-int/lit8 v3, v3, 0x1f

    if-nez v3, :cond_2

    .line 677
    const/4 v3, -0x1

    move v0, v3

    .line 679
    .end local v0    # "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    :cond_2
    move v3, v2

    const/4 v4, 0x5

    shr-int/lit8 v3, v3, 0x5

    move v0, v3

    goto :goto_0
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 21
    .param p1    # Landroidx/recyclerview/widget/ListUpdateCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 816
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    move-object/from16 v2, p1

    .local v2, "updateCallback":Landroidx/recyclerview/widget/ListUpdateCallback;
    move-object v13, v2

    instance-of v13, v13, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    if-eqz v13, :cond_3

    .line 817
    move-object v13, v2

    check-cast v13, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    move-object v3, v13

    .line 827
    .local v3, "batchingCallback":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v13

    .line 828
    .local v4, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    move-object v13, v1

    iget v13, v13, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    move v5, v13

    .line 829
    .local v5, "posOld":I
    move-object v13, v1

    iget v13, v13, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    move v6, v13

    .line 830
    .local v6, "posNew":I
    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v7, v13

    .local v7, "snakeIndex":I
    :goto_1
    move v13, v7

    if-ltz v13, :cond_5

    .line 831
    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    move v14, v7

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-object v8, v13

    .line 832
    .local v8, "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    move-object v13, v8

    iget v13, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    move v9, v13

    .line 833
    .local v9, "snakeSize":I
    move-object v13, v8

    iget v13, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move v14, v9

    add-int/2addr v13, v14

    move v10, v13

    .line 834
    .local v10, "endX":I
    move-object v13, v8

    iget v13, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move v14, v9

    add-int/2addr v13, v14

    move v11, v13

    .line 835
    .local v11, "endY":I
    move v13, v10

    move v14, v5

    if-ge v13, v14, :cond_0

    .line 836
    move-object v13, v1

    move-object v14, v4

    move-object v15, v3

    move/from16 v16, v10

    move/from16 v17, v5

    move/from16 v18, v10

    sub-int v17, v17, v18

    move/from16 v18, v10

    invoke-direct/range {v13 .. v18}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchRemovals(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;III)V

    .line 839
    :cond_0
    move v13, v11

    move v14, v6

    if-ge v13, v14, :cond_1

    .line 840
    move-object v13, v1

    move-object v14, v4

    move-object v15, v3

    move/from16 v16, v10

    move/from16 v17, v6

    move/from16 v18, v11

    sub-int v17, v17, v18

    move/from16 v18, v11

    invoke-direct/range {v13 .. v18}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchAdditions(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;III)V

    .line 843
    :cond_1
    move v13, v9

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v12, v13

    .local v12, "i":I
    :goto_2
    move v13, v12

    if-ltz v13, :cond_4

    .line 844
    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move-object v14, v8

    iget v14, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move v15, v12

    add-int/2addr v14, v15

    aget v13, v13, v14

    const/16 v14, 0x1f

    and-int/lit8 v13, v13, 0x1f

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 845
    move-object v13, v3

    move-object v14, v8

    iget v14, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move v15, v12

    add-int/2addr v14, v15

    const/4 v15, 0x1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move-object/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move/from16 v17, v0

    move/from16 v18, v12

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move/from16 v18, v0

    move/from16 v19, v12

    add-int v18, v18, v19

    .line 846
    invoke-virtual/range {v16 .. v18}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v16

    .line 845
    invoke-virtual/range {v13 .. v16}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 843
    :cond_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 819
    .end local v3    # "batchingCallback":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    .end local v4    # "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    .end local v5    # "posOld":I
    .end local v6    # "posNew":I
    .end local v7    # "snakeIndex":I
    .end local v8    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .end local v9    # "snakeSize":I
    .end local v10    # "endX":I
    .end local v11    # "endY":I
    .end local v12    # "i":I
    :cond_3
    new-instance v13, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v2

    invoke-direct {v14, v15}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    move-object v3, v13

    .line 823
    .restart local v3    # "batchingCallback":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    move-object v13, v3

    move-object v2, v13

    goto/16 :goto_0

    .line 849
    .restart local v4    # "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    .restart local v5    # "posOld":I
    .restart local v6    # "posNew":I
    .restart local v7    # "snakeIndex":I
    .restart local v8    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .restart local v9    # "snakeSize":I
    .restart local v10    # "endX":I
    .restart local v11    # "endY":I
    .restart local v12    # "i":I
    :cond_4
    move-object v13, v8

    iget v13, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move v5, v13

    .line 850
    move-object v13, v8

    iget v13, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move v6, v13

    .line 830
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 852
    .end local v8    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .end local v9    # "snakeSize":I
    .end local v10    # "endX":I
    .end local v11    # "endY":I
    .end local v12    # "i":I
    :cond_5
    move-object v13, v3

    invoke-virtual {v13}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 853
    return-void
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 802
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    move-object v1, p1

    .local v1, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    move-object v2, v0

    new-instance v3, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 803
    return-void
.end method

.method getSnakes()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;"
        }
    .end annotation

    .prologue
    .line 954
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    return-object v0
.end method
