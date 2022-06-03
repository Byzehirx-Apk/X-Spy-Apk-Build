.class public Landroidx/recyclerview/widget/SortedList;
.super Ljava/lang/Object;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/SortedList$BatchedCallback;,
        Landroidx/recyclerview/widget/SortedList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CAPACITY_GROWTH:I = 0xa

.field private static final DELETION:I = 0x2

.field private static final INSERTION:I = 0x1

.field public static final INVALID_POSITION:I = -0x1

.field private static final LOOKUP:I = 0x4

.field private static final MIN_CAPACITY:I = 0xa


# instance fields
.field private mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

.field private mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

.field mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mNewDataStart:I

.field private mOldData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mOldDataSize:I

.field private mOldDataStart:I

.field private mSize:I

.field private final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;)V
    .locals 7
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/SortedList$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroidx/recyclerview/widget/SortedList$Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "callback":Landroidx/recyclerview/widget/SortedList$Callback;, "Landroidx/recyclerview/widget/SortedList$Callback<TT;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6}, Landroidx/recyclerview/widget/SortedList;-><init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;I)V
    .locals 7
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/SortedList$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroidx/recyclerview/widget/SortedList$Callback",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "callback":Landroidx/recyclerview/widget/SortedList$Callback;, "Landroidx/recyclerview/widget/SortedList$Callback<TT;>;"
    move v3, p3

    .local v3, "initialCapacity":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 102
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    .line 103
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    iput-object v5, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 104
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 105
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 106
    return-void
.end method

.method private add(Ljava/lang/Object;Z)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "notify":Z
    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/SortedList;->mSize:I

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v5

    move v3, v5

    .line 543
    .local v3, "index":I
    move v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 544
    const/4 v5, 0x0

    move v3, v5

    .line 559
    :cond_0
    move-object v5, v0

    move v6, v3

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/SortedList;->addToData(ILjava/lang/Object;)V

    .line 560
    move v5, v2

    if-eqz v5, :cond_1

    .line 561
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move v6, v3

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    .line 563
    :cond_1
    move v5, v3

    move v0, v5

    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    :goto_0
    return v0

    .line 545
    .restart local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    :cond_2
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/SortedList;->mSize:I

    if-ge v5, v6, :cond_0

    .line 546
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 547
    .local v4, "existing":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 548
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 550
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move v6, v3

    move-object v7, v1

    aput-object v7, v5, v6

    .line 551
    move v5, v3

    move v0, v5

    goto :goto_0

    .line 553
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move v6, v3

    move-object v7, v1

    aput-object v7, v5, v6

    .line 554
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move v6, v3

    const/4 v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 555
    move v5, v3

    move v0, v5

    goto :goto_0
.end method

.method private addAllInternal([Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "newItems":[Ljava/lang/Object;, "[TT;"
    move-object v3, v1

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 253
    .line 265
    :goto_0
    return-void

    .line 256
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/SortedList;->sortAndDedup([Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 258
    .local v2, "newSize":I
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/SortedList;->mSize:I

    if-nez v3, :cond_1

    .line 259
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 260
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 261
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    const/4 v4, 0x0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    .line 265
    :goto_1
    goto :goto_0

    .line 263
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/SortedList;->merge([Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method private addToData(ILjava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 793
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "item":Ljava/lang/Object;, "TT;"
    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/SortedList;->mSize:I

    if-le v4, v5, :cond_0

    .line 794
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cannot add item to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " because size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/SortedList;->mSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 797
    :cond_0
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/SortedList;->mSize:I

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 799
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    array-length v5, v5

    const/16 v6, 0xa

    add-int/lit8 v5, v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    .line 800
    .local v3, "newData":[Ljava/lang/Object;, "[TT;"
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 801
    move-object v4, v3

    move v5, v1

    move-object v6, v2

    aput-object v6, v4, v5

    .line 802
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move v5, v1

    move-object v6, v3

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mSize:I

    move v9, v1

    sub-int/2addr v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 804
    .line 809
    .end local v3    # "newData":[Ljava/lang/Object;, "[TT;"
    :goto_0
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Landroidx/recyclerview/widget/SortedList;->mSize:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 810
    return-void

    .line 806
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mSize:I

    move v9, v1

    sub-int/2addr v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move v5, v1

    move-object v6, v2

    aput-object v6, v4, v5

    goto :goto_0
.end method

.method private copyArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 813
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "items":[Ljava/lang/Object;, "[TT;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    move-object v4, v1

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 814
    .local v2, "copy":[Ljava/lang/Object;, "[TT;"
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v1

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    return-object v0
.end method

.method private findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;III)I"
        }
    .end annotation

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object/from16 v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move-object/from16 v2, p2

    .local v2, "mData":[Ljava/lang/Object;, "[TT;"
    move/from16 v3, p3

    .local v3, "left":I
    move/from16 v4, p4

    .local v4, "right":I
    move/from16 v5, p5

    .local v5, "reason":I
    :goto_0
    move v10, v3

    move v11, v4

    if-ge v10, v11, :cond_5

    .line 744
    move v10, v3

    move v11, v4

    add-int/2addr v10, v11

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    move v6, v10

    .line 745
    .local v6, "middle":I
    move-object v10, v2

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    .line 746
    .local v7, "myItem":Ljava/lang/Object;, "TT;"
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v11, v7

    move-object v12, v1

    invoke-virtual {v10, v11, v12}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    move v8, v10

    .line 747
    .local v8, "cmp":I
    move v10, v8

    if-gez v10, :cond_0

    .line 748
    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v3, v10

    .line 763
    :goto_1
    goto :goto_0

    .line 749
    :cond_0
    move v10, v8

    if-nez v10, :cond_4

    .line 750
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v11, v7

    move-object v12, v1

    invoke-virtual {v10, v11, v12}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 751
    move v10, v6

    move v0, v10

    .line 764
    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .end local v6    # "middle":I
    .end local v7    # "myItem":Ljava/lang/Object;, "TT;"
    .end local v8    # "cmp":I
    :goto_2
    return v0

    .line 753
    .restart local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .restart local v6    # "middle":I
    .restart local v7    # "myItem":Ljava/lang/Object;, "TT;"
    .restart local v8    # "cmp":I
    :cond_1
    move-object v10, v0

    move-object v11, v1

    move v12, v6

    move v13, v3

    move v14, v4

    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/SortedList;->linearEqualitySearch(Ljava/lang/Object;III)I

    move-result v10

    move v9, v10

    .line 754
    .local v9, "exact":I
    move v10, v5

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 755
    move v10, v9

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    move v10, v6

    :goto_3
    move v0, v10

    goto :goto_2

    :cond_2
    move v10, v9

    goto :goto_3

    .line 757
    :cond_3
    move v10, v9

    move v0, v10

    goto :goto_2

    .line 761
    .end local v9    # "exact":I
    :cond_4
    move v10, v6

    move v4, v10

    goto :goto_1

    .line 764
    .end local v6    # "middle":I
    .end local v7    # "myItem":Ljava/lang/Object;, "TT;"
    .end local v8    # "cmp":I
    :cond_5
    move v10, v5

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    move v10, v3

    :goto_4
    move v0, v10

    goto :goto_2

    :cond_6
    const/4 v10, -0x1

    goto :goto_4
.end method

.method private findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;II)I"
        }
    .end annotation

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "items":[Ljava/lang/Object;, "[TT;"
    move v3, p3

    .local v3, "from":I
    move v4, p4

    .local v4, "to":I
    move v6, v3

    move v5, v6

    .local v5, "pos":I
    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 397
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 398
    move v6, v5

    move v0, v6

    .line 401
    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    :goto_1
    return v0

    .line 396
    .restart local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 401
    :cond_1
    const/4 v6, -0x1

    move v0, v6

    goto :goto_1
.end method

.method private linearEqualitySearch(Ljava/lang/Object;III)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)I"
        }
    .end annotation

    .prologue
    .line 769
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "middle":I
    move v3, p3

    .local v3, "left":I
    move v4, p4

    .local v4, "right":I
    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v5, v8

    .local v5, "next":I
    :goto_0
    move v8, v5

    move v9, v3

    if-lt v8, v9, :cond_0

    .line 770
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 771
    .local v6, "nextItem":Ljava/lang/Object;, "TT;"
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v9, v6

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    move v7, v8

    .line 772
    .local v7, "cmp":I
    move v8, v7

    if-eqz v8, :cond_2

    .line 773
    .line 779
    .end local v6    # "nextItem":Ljava/lang/Object;, "TT;"
    .end local v7    # "cmp":I
    :cond_0
    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    :goto_1
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_1

    .line 780
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 781
    .restart local v6    # "nextItem":Ljava/lang/Object;, "TT;"
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v9, v6

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    move v7, v8

    .line 782
    .restart local v7    # "cmp":I
    move v8, v7

    if-eqz v8, :cond_4

    .line 783
    .line 789
    .end local v6    # "nextItem":Ljava/lang/Object;, "TT;"
    .end local v7    # "cmp":I
    :cond_1
    const/4 v8, -0x1

    move v0, v8

    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    :goto_2
    return v0

    .line 775
    .restart local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .restart local v6    # "nextItem":Ljava/lang/Object;, "TT;"
    .restart local v7    # "cmp":I
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v9, v6

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 776
    move v8, v5

    move v0, v8

    goto :goto_2

    .line 769
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 785
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v9, v6

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 786
    move v8, v5

    move v0, v8

    goto :goto_2

    .line 779
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private merge([Ljava/lang/Object;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .prologue
    .line 408
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object/from16 v1, p1

    .local v1, "newData":[Ljava/lang/Object;, "[TT;"
    move/from16 v2, p2

    .local v2, "newDataSize":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    instance-of v9, v9, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-nez v9, :cond_4

    const/4 v9, 0x1

    :goto_0
    move v3, v9

    .line 409
    .local v3, "forceBatchedUpdates":Z
    move v9, v3

    if-eqz v9, :cond_0

    .line 410
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/SortedList;->beginBatchedUpdates()V

    .line 413
    :cond_0
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iput-object v10, v9, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 414
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 415
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/SortedList;->mSize:I

    iput v10, v9, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    .line 417
    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/SortedList;->mSize:I

    move v10, v2

    add-int/2addr v9, v10

    const/16 v10, 0xa

    add-int/lit8 v9, v9, 0xa

    move v4, v9

    .line 418
    .local v4, "mergedCapacity":I
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    move v11, v4

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    iput-object v10, v9, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 419
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 421
    const/4 v9, 0x0

    move v5, v9

    .line 422
    .local v5, "newDataStart":I
    :goto_1
    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    if-lt v9, v10, :cond_1

    move v9, v5

    move v10, v2

    if-ge v9, v10, :cond_2

    .line 423
    :cond_1
    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    if-ne v9, v10, :cond_5

    .line 425
    move v9, v2

    move v10, v5

    sub-int/2addr v9, v10

    move v6, v9

    .line 426
    .local v6, "itemCount":I
    move-object v9, v1

    move v10, v5

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move-object v12, v0

    iget v12, v12, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move v13, v6

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    move-object v9, v0

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    iget v10, v10, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move v11, v6

    add-int/2addr v10, v11

    iput v10, v9, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 428
    move-object v9, v0

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    iget v10, v10, Landroidx/recyclerview/widget/SortedList;->mSize:I

    move v11, v6

    add-int/2addr v10, v11

    iput v10, v9, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 429
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move v11, v6

    sub-int/2addr v10, v11

    move v11, v6

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    .line 430
    .line 467
    .end local v6    # "itemCount":I
    :cond_2
    :goto_2
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 469
    move v9, v3

    if-eqz v9, :cond_3

    .line 470
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/SortedList;->endBatchedUpdates()V

    .line 472
    :cond_3
    return-void

    .line 408
    .end local v3    # "forceBatchedUpdates":Z
    .end local v4    # "mergedCapacity":I
    .end local v5    # "newDataStart":I
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 433
    .restart local v3    # "forceBatchedUpdates":Z
    .restart local v4    # "mergedCapacity":I
    .restart local v5    # "newDataStart":I
    :cond_5
    move v9, v5

    move v10, v2

    if-ne v9, v10, :cond_6

    .line 435
    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    sub-int/2addr v9, v10

    move v6, v9

    .line 436
    .restart local v6    # "itemCount":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move-object v12, v0

    iget v12, v12, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move v13, v6

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    move-object v9, v0

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    iget v10, v10, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move v11, v6

    add-int/2addr v10, v11

    iput v10, v9, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 438
    goto :goto_2

    .line 441
    .end local v6    # "itemCount":I
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    aget-object v9, v9, v10

    move-object v6, v9

    .line 442
    .local v6, "oldItem":Ljava/lang/Object;, "TT;"
    move-object v9, v1

    move v10, v5

    aget-object v9, v9, v10

    move-object v7, v9

    .line 443
    .local v7, "newItem":Ljava/lang/Object;, "TT;"
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    move v8, v9

    .line 444
    .local v8, "compare":I
    move v9, v8

    if-lez v9, :cond_8

    .line 446
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move-object v10, v0

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move-object v15, v10

    move/from16 v16, v11

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move-object v11, v7

    aput-object v11, v9, v10

    .line 447
    move-object v9, v0

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    iget v10, v10, Landroidx/recyclerview/widget/SortedList;->mSize:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 448
    add-int/lit8 v5, v5, 0x1

    .line 449
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    .line 465
    :cond_7
    :goto_3
    goto/16 :goto_1

    .line 450
    :cond_8
    move v9, v8

    if-nez v9, :cond_9

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 452
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move-object v10, v0

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move-object v15, v10

    move/from16 v16, v11

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move-object v11, v7

    aput-object v11, v9, v10

    .line 453
    add-int/lit8 v5, v5, 0x1

    .line 454
    move-object v9, v0

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    iget v10, v10, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 455
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 456
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v13, v6

    move-object v14, v7

    .line 457
    invoke-virtual {v12, v13, v14}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 456
    invoke-virtual {v9, v10, v11, v12}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    goto :goto_3

    .line 462
    :cond_9
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move-object v10, v0

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move-object v15, v10

    move/from16 v16, v11

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move-object v11, v6

    aput-object v11, v9, v10

    .line 463
    move-object v9, v0

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    iget v10, v10, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    goto :goto_3
.end method

.method private remove(Ljava/lang/Object;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "notify":Z
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mSize:I

    const/4 v9, 0x2

    invoke-direct/range {v4 .. v9}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v4

    move v3, v4

    .line 594
    .local v3, "index":I
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 595
    const/4 v4, 0x0

    move v0, v4

    .line 598
    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    :goto_0
    return v0

    .line 597
    .restart local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    :cond_0
    move-object v4, v0

    move v5, v3

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    .line 598
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private removeItemAtIndex(IZ)V
    .locals 10

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "notify":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/SortedList;->mSize:I

    move v8, v1

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Landroidx/recyclerview/widget/SortedList;->mSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 604
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/SortedList;->mSize:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 605
    move v3, v2

    if-eqz v3, :cond_0

    .line 606
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->onRemoved(II)V

    .line 608
    :cond_0
    return-void
.end method

.method private replaceAllInsert(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "newItem":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 335
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 336
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/recyclerview/widget/SortedList;->mSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 337
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    .line 338
    return-void
.end method

.method private replaceAllInternal([Ljava/lang/Object;)V
    .locals 14
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "newData":[Ljava/lang/Object;, "[TT;"
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    instance-of v7, v7, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_0
    move v2, v7

    .line 269
    .local v2, "forceBatchedUpdates":Z
    move v7, v2

    if-eqz v7, :cond_0

    .line 270
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/SortedList;->beginBatchedUpdates()V

    .line 273
    :cond_0
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 274
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mSize:I

    iput v8, v7, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    .line 275
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iput-object v8, v7, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 277
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 278
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/SortedList;->sortAndDedup([Ljava/lang/Object;)I

    move-result v7

    move v3, v7

    .line 279
    .local v3, "newSize":I
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    move v9, v3

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    iput-object v8, v7, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 281
    :goto_1
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move v8, v3

    if-lt v7, v8, :cond_1

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    if-ge v7, v8, :cond_2

    .line 282
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    if-lt v7, v8, :cond_5

    .line 283
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move v4, v7

    .line 284
    .local v4, "insertIndex":I
    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    sub-int/2addr v7, v8

    move v5, v7

    .line 285
    .local v5, "itemCount":I
    move-object v7, v1

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move v10, v4

    move v11, v5

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move v9, v5

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 287
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mSize:I

    move v9, v5

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 288
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move v8, v4

    move v9, v5

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    .line 289
    .line 326
    .end local v4    # "insertIndex":I
    .end local v5    # "itemCount":I
    :cond_2
    :goto_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 328
    move v7, v2

    if-eqz v7, :cond_3

    .line 329
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/SortedList;->endBatchedUpdates()V

    .line 331
    :cond_3
    return-void

    .line 268
    .end local v2    # "forceBatchedUpdates":Z
    .end local v3    # "newSize":I
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 291
    .restart local v2    # "forceBatchedUpdates":Z
    .restart local v3    # "newSize":I
    :cond_5
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move v8, v3

    if-lt v7, v8, :cond_6

    .line 292
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    sub-int/2addr v7, v8

    move v4, v7

    .line 293
    .local v4, "itemCount":I
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mSize:I

    move v9, v4

    sub-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 294
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move v9, v4

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/SortedList$Callback;->onRemoved(II)V

    .line 295
    goto :goto_2

    .line 298
    .end local v4    # "itemCount":I
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    aget-object v7, v7, v8

    move-object v4, v7

    .line 299
    .local v4, "oldItem":Ljava/lang/Object;, "TT;"
    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    aget-object v7, v7, v8

    move-object v5, v7

    .line 301
    .local v5, "newItem":Ljava/lang/Object;, "TT;"
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    move v6, v7

    .line 302
    .local v6, "result":I
    move v7, v6

    if-gez v7, :cond_8

    .line 303
    move-object v7, v0

    invoke-direct {v7}, Landroidx/recyclerview/widget/SortedList;->replaceAllRemove()V

    .line 324
    :cond_7
    :goto_3
    goto/16 :goto_1

    .line 304
    :cond_8
    move v7, v6

    if-lez v7, :cond_9

    .line 305
    move-object v7, v0

    move-object v8, v5

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/SortedList;->replaceAllInsert(Ljava/lang/Object;)V

    goto :goto_3

    .line 307
    :cond_9
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 310
    move-object v7, v0

    invoke-direct {v7}, Landroidx/recyclerview/widget/SortedList;->replaceAllRemove()V

    .line 311
    move-object v7, v0

    move-object v8, v5

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/SortedList;->replaceAllInsert(Ljava/lang/Object;)V

    goto :goto_3

    .line 313
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move-object v9, v5

    aput-object v9, v7, v8

    .line 314
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 315
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 316
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 319
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v11, v4

    move-object v12, v5

    .line 320
    invoke-virtual {v10, v11, v12}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 319
    invoke-virtual {v7, v8, v9, v10}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    goto :goto_3
.end method

.method private replaceAllRemove()V
    .locals 5

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/recyclerview/widget/SortedList;->mSize:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 342
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 343
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->onRemoved(II)V

    .line 344
    return-void
.end method

.method private sortAndDedup([Ljava/lang/Object;)I
    .locals 13
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "items":[Ljava/lang/Object;, "[TT;"
    move-object v8, v1

    array-length v8, v8

    if-nez v8, :cond_0

    .line 354
    const/4 v8, 0x0

    move v0, v8

    .line 391
    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    :goto_0
    return v0

    .line 358
    .restart local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    :cond_0
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-static {v8, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 362
    const/4 v8, 0x0

    move v2, v8

    .line 363
    .local v2, "rangeStart":I
    const/4 v8, 0x1

    move v3, v8

    .line 365
    .local v3, "rangeEnd":I
    const/4 v8, 0x1

    move v4, v8

    .local v4, "i":I
    :goto_1
    move v8, v4

    move-object v9, v1

    array-length v9, v9

    if-ge v8, v9, :cond_5

    .line 366
    move-object v8, v1

    move v9, v4

    aget-object v8, v8, v9

    move-object v5, v8

    .line 368
    .local v5, "currentItem":Ljava/lang/Object;, "TT;"
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v9, v1

    move v10, v2

    aget-object v9, v9, v10

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    move v6, v8

    .line 370
    .local v6, "compare":I
    move v8, v6

    if-nez v8, :cond_3

    .line 372
    move-object v8, v0

    move-object v9, v5

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/SortedList;->findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v8

    move v7, v8

    .line 373
    .local v7, "sameItemPos":I
    move v8, v7

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 375
    move-object v8, v1

    move v9, v7

    move-object v10, v5

    aput-object v10, v8, v9

    .line 383
    .line 365
    .end local v7    # "sameItemPos":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 378
    .restart local v7    # "sameItemPos":I
    :cond_1
    move v8, v3

    move v9, v4

    if-eq v8, v9, :cond_2

    .line 379
    move-object v8, v1

    move v9, v3

    move-object v10, v5

    aput-object v10, v8, v9

    .line 381
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 385
    .end local v7    # "sameItemPos":I
    :cond_3
    move v8, v3

    move v9, v4

    if-eq v8, v9, :cond_4

    .line 386
    move-object v8, v1

    move v9, v3

    move-object v10, v5

    aput-object v10, v8, v9

    .line 388
    :cond_4
    move v8, v3

    add-int/lit8 v3, v3, 0x1

    move v2, v8

    goto :goto_2

    .line 391
    .end local v5    # "currentItem":Ljava/lang/Object;, "TT;"
    .end local v6    # "compare":I
    :cond_5
    move v8, v3

    move v0, v8

    goto :goto_0
.end method

.method private throwIfInMutationOperation()V
    .locals 5

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 480
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 483
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 144
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    return v0
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 6
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 194
    .local v2, "copy":[Ljava/lang/Object;, "[TT;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/SortedList;->addAll([Ljava/lang/Object;Z)V

    .line 195
    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .locals 5
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "items":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/SortedList;->addAll([Ljava/lang/Object;Z)V

    .line 183
    return-void
.end method

.method public addAll([Ljava/lang/Object;Z)V
    .locals 6
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "items":[Ljava/lang/Object;, "[TT;"
    move v2, p2

    .local v2, "mayModifyInput":Z
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 163
    move-object v3, v1

    array-length v3, v3

    if-nez v3, :cond_0

    .line 164
    .line 172
    :goto_0
    return-void

    .line 167
    :cond_0
    move v3, v2

    if-eqz v3, :cond_1

    .line 168
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/SortedList;->addAllInternal([Ljava/lang/Object;)V

    .line 172
    :goto_1
    goto :goto_0

    .line 170
    :cond_1
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/SortedList;->copyArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/SortedList;->addAllInternal([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public beginBatchedUpdates()V
    .locals 6

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 519
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    instance-of v1, v1, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-eqz v1, :cond_0

    .line 520
    .line 526
    :goto_0
    return-void

    .line 522
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-nez v1, :cond_1

    .line 523
    move-object v1, v0

    new-instance v2, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/SortedList$BatchedCallback;-><init>(Landroidx/recyclerview/widget/SortedList$Callback;)V

    iput-object v2, v1, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 525
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    iput-object v2, v1, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 526
    goto :goto_0
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 822
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 823
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/SortedList;->mSize:I

    if-nez v2, :cond_0

    .line 824
    .line 830
    :goto_0
    return-void

    .line 826
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/SortedList;->mSize:I

    move v1, v2

    .line 827
    .local v1, "prevSize":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 828
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 829
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    const/4 v3, 0x0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/SortedList$Callback;->onRemoved(II)V

    .line 830
    goto :goto_0
.end method

.method public endBatchedUpdates()V
    .locals 3

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 533
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    instance-of v1, v1, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-eqz v1, :cond_0

    .line 534
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    check-cast v1, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 536
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-ne v1, v2, :cond_1

    .line 537
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    iget-object v2, v2, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mWrappedCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iput-object v2, v1, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 539
    :cond_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/SortedList;->mSize:I

    if-ge v2, v3, :cond_0

    move v2, v1

    if-gez v2, :cond_1

    .line 706
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Asked to get item at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " but size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/SortedList;->mSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 709
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 712
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    if-lt v2, v3, :cond_2

    .line 713
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    sub-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    add-int/2addr v3, v4

    aget-object v2, v2, v3

    move-object v0, v2

    .line 716
    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 728
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 729
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    const/4 v8, 0x4

    invoke-direct/range {v3 .. v8}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v3

    move v2, v3

    .line 730
    .local v2, "index":I
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 731
    move v3, v2

    move v0, v3

    .line 739
    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .end local v2    # "index":I
    :goto_0
    return v0

    .line 733
    .restart local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    const/4 v8, 0x4

    invoke-direct/range {v3 .. v8}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v3

    move v2, v3

    .line 734
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 735
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    sub-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 737
    :cond_1
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 739
    .end local v2    # "index":I
    :cond_2
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/SortedList;->mSize:I

    const/4 v8, 0x4

    invoke-direct/range {v3 .. v8}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public recalculatePositionOfItemAt(I)V
    .locals 7

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 687
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 688
    .local v2, "item":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    .line 689
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v4

    move v3, v4

    .line 690
    .local v3, "newIndex":I
    move v4, v1

    move v5, v3

    if-eq v4, v5, :cond_0

    .line 691
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/SortedList$Callback;->onMoved(II)V

    .line 693
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 575
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/SortedList;->remove(Ljava/lang/Object;Z)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    return v0
.end method

.method public removeItemAt(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 587
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 588
    .local v2, "item":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    .line 589
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    return-object v0
.end method

.method public replaceAll(Ljava/util/Collection;)V
    .locals 6
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 248
    .local v2, "copy":[Ljava/lang/Object;, "[TT;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/SortedList;->replaceAll([Ljava/lang/Object;Z)V

    .line 249
    return-void
.end method

.method public varargs replaceAll([Ljava/lang/Object;)V
    .locals 5
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "items":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/SortedList;->replaceAll([Ljava/lang/Object;Z)V

    .line 236
    return-void
.end method

.method public replaceAll([Ljava/lang/Object;Z)V
    .locals 6
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, p1

    .local v1, "items":[Ljava/lang/Object;, "[TT;"
    move v2, p2

    .local v2, "mayModifyInput":Z
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 219
    move v3, v2

    if-eqz v3, :cond_0

    .line 220
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/SortedList;->replaceAllInternal([Ljava/lang/Object;)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/SortedList;->copyArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/SortedList;->replaceAllInternal([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/SortedList;->mSize:I

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    return v0
.end method

.method public updateItemAt(ILjava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 631
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "item":Ljava/lang/Object;, "TT;"
    move-object v6, v0

    invoke-direct {v6}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 632
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 634
    .local v3, "existing":Ljava/lang/Object;, "TT;"
    move-object v6, v3

    move-object v7, v2

    if-eq v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const/4 v6, 0x1

    :goto_0
    move v4, v6

    .line 635
    .local v4, "contentsChanged":Z
    move-object v6, v3

    move-object v7, v2

    if-eq v6, v7, :cond_3

    .line 637
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    move v5, v6

    .line 638
    .local v5, "cmp":I
    move v6, v5

    if-nez v6, :cond_3

    .line 639
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    move v7, v1

    move-object v8, v2

    aput-object v8, v6, v7

    .line 640
    move v6, v4

    if-eqz v6, :cond_1

    .line 641
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move v7, v1

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v10, v3

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 643
    .line 655
    .end local v5    # "cmp":I
    :cond_1
    :goto_1
    return-void

    .line 634
    .end local v4    # "contentsChanged":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 646
    .restart local v4    # "contentsChanged":Z
    :cond_3
    move v6, v4

    if-eqz v6, :cond_4

    .line 647
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move v7, v1

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move-object v10, v3

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 650
    :cond_4
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    .line 651
    move-object v6, v0

    move-object v7, v2

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v6

    move v5, v6

    .line 652
    .local v5, "newIndex":I
    move v6, v1

    move v7, v5

    if-eq v6, v7, :cond_5

    .line 653
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    move v7, v1

    move v8, v5

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/SortedList$Callback;->onMoved(II)V

    .line 655
    :cond_5
    goto :goto_1
.end method
