.class public Lgnu/lists/LList;
.super Lgnu/lists/ExtSequence;
.source "LList.java"

# interfaces
.implements Lgnu/lists/Sequence;
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final Empty:Lgnu/lists/LList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lgnu/lists/LList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/lists/LList;-><init>()V

    sput-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/ExtSequence;-><init>()V

    return-void
.end method

.method public static chain1(Lgnu/lists/Pair;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 8

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "old":Lgnu/lists/Pair;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    new-instance v3, Lgnu/lists/Pair;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v4, v5, v6}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    .line 362
    .local v2, "p1":Lgnu/lists/Pair;
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 363
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "old":Lgnu/lists/Pair;
    return-object v0
.end method

.method public static chain4(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 18

    .prologue
    .line 370
    move-object/from16 v0, p0

    .local v0, "old":Lgnu/lists/Pair;
    move-object/from16 v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "arg4":Ljava/lang/Object;
    new-instance v6, Lgnu/lists/Pair;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    move-object v8, v4

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v7, v8, v9}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v6

    .line 371
    .local v5, "p4":Lgnu/lists/Pair;
    move-object v6, v0

    new-instance v7, Lgnu/lists/Pair;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    move-object v9, v1

    new-instance v10, Lgnu/lists/Pair;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v2

    new-instance v13, Lgnu/lists/Pair;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    move-object/from16 v16, v5

    invoke-direct/range {v14 .. v16}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v11, v12, v13}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v8, v9, v10}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v7, v6, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 372
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "old":Lgnu/lists/Pair;
    return-object v0
.end method

.method public static checkNonList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "rest":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/lists/LList;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "#<not a pair>"

    :goto_0
    move-object v0, v1

    .end local v0    # "rest":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "rest":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static consX([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v1, v7

    .line 407
    .local v1, "first":Ljava/lang/Object;
    move-object v7, v0

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v2, v7

    .line 408
    .local v2, "n":I
    move v7, v2

    if-gtz v7, :cond_0

    .line 409
    move-object v7, v1

    move-object v0, v7

    .line 419
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 410
    .restart local v0    # "args":[Ljava/lang/Object;
    :cond_0
    new-instance v7, Lgnu/lists/Pair;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v7

    .line 411
    .local v3, "result":Lgnu/lists/Pair;
    move-object v7, v3

    move-object v4, v7

    .line 412
    .local v4, "prev":Lgnu/lists/Pair;
    const/4 v7, 0x1

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move v8, v2

    if-ge v7, v8, :cond_1

    .line 414
    new-instance v7, Lgnu/lists/Pair;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move v10, v5

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v7

    .line 415
    .local v6, "next":Lgnu/lists/Pair;
    move-object v7, v4

    move-object v8, v6

    iput-object v8, v7, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 416
    move-object v7, v6

    move-object v4, v7

    .line 412
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 418
    .end local v6    # "next":Lgnu/lists/Pair;
    :cond_1
    move-object v7, v4

    move-object v8, v0

    move v9, v2

    aget-object v8, v8, v9

    iput-object v8, v7, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 419
    move-object v7, v3

    move-object v0, v7

    goto :goto_0
.end method

.method public static final length(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    const/4 v2, 0x0

    move v1, v2

    .line 213
    .local v1, "count":I
    :goto_0
    move-object v2, v0

    instance-of v2, v2, Lgnu/lists/Pair;

    if-eqz v2, :cond_0

    .line 214
    add-int/lit8 v1, v1, 0x1

    .line 213
    move-object v2, v0

    check-cast v2, Lgnu/lists/Pair;

    iget-object v2, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0

    .line 215
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "arg":Ljava/lang/Object;
    return v0
.end method

.method public static list1(Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 6

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    new-instance v1, Lgnu/lists/Pair;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v2, v3, v4}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "arg1":Ljava/lang/Object;
    return-object v0
.end method

.method public static list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 10

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    new-instance v2, Lgnu/lists/Pair;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    new-instance v5, Lgnu/lists/Pair;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v6, v7, v8}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v3, v4, v5}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "arg1":Ljava/lang/Object;
    return-object v0
.end method

.method public static list3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 14

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "arg3":Ljava/lang/Object;
    new-instance v3, Lgnu/lists/Pair;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    move-object v5, v0

    new-instance v6, Lgnu/lists/Pair;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    new-instance v9, Lgnu/lists/Pair;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v2

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v10, v11, v12}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v7, v8, v9}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v4, v5, v6}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    .end local v0    # "arg1":Ljava/lang/Object;
    return-object v0
.end method

.method public static list4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 18

    .prologue
    .line 353
    move-object/from16 v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "arg3":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "arg4":Ljava/lang/Object;
    new-instance v4, Lgnu/lists/Pair;

    move-object/from16 v17, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v17

    move-object v6, v0

    new-instance v7, Lgnu/lists/Pair;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    move-object v9, v1

    new-instance v10, Lgnu/lists/Pair;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v2

    new-instance v13, Lgnu/lists/Pair;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct/range {v14 .. v16}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v11, v12, v13}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v8, v9, v10}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v5, v6, v7}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v4

    .end local v0    # "arg1":Ljava/lang/Object;
    return-object v0
.end method

.method public static listLength(Ljava/lang/Object;Z)I
    .locals 8

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move v1, p1

    .local v1, "allowOtherSequence":Z
    const/4 v6, 0x0

    move v2, v6

    .line 41
    .local v2, "n":I
    move-object v6, v0

    move-object v3, v6

    .line 42
    .local v3, "slow":Ljava/lang/Object;
    move-object v6, v0

    move-object v4, v6

    .line 45
    .local v4, "fast":Ljava/lang/Object;
    :goto_0
    move-object v6, v4

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v6, v7, :cond_0

    .line 46
    move v6, v2

    move v0, v6

    .line 68
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_1
    return v0

    .line 47
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    move-object v6, v4

    instance-of v6, v6, Lgnu/lists/Pair;

    if-nez v6, :cond_3

    .line 49
    move-object v6, v4

    instance-of v6, v6, Lgnu/lists/Sequence;

    if-eqz v6, :cond_2

    move v6, v1

    if-eqz v6, :cond_2

    .line 51
    move-object v6, v4

    check-cast v6, Lgnu/lists/Sequence;

    invoke-interface {v6}, Lgnu/lists/Sequence;->size()I

    move-result v6

    move v5, v6

    .line 52
    .local v5, "j":I
    move v6, v5

    if-ltz v6, :cond_1

    move v6, v2

    move v7, v5

    add-int/2addr v6, v7

    :goto_2
    move v0, v6

    goto :goto_1

    :cond_1
    move v6, v5

    goto :goto_2

    .line 54
    .end local v5    # "j":I
    :cond_2
    const/4 v6, -0x2

    move v0, v6

    goto :goto_1

    .line 56
    :cond_3
    move-object v6, v4

    check-cast v6, Lgnu/lists/Pair;

    move-object v5, v6

    .line 57
    .local v5, "fast_pair":Lgnu/lists/Pair;
    move-object v6, v5

    iget-object v6, v6, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v6, v7, :cond_4

    .line 58
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    goto :goto_1

    .line 59
    :cond_4
    move-object v6, v4

    move-object v7, v3

    if-ne v6, v7, :cond_5

    move v6, v2

    if-lez v6, :cond_5

    .line 60
    const/4 v6, -0x1

    move v0, v6

    goto :goto_1

    .line 61
    :cond_5
    move-object v6, v5

    iget-object v6, v6, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    instance-of v6, v6, Lgnu/lists/Pair;

    if-nez v6, :cond_6

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    move-object v6, v5

    iget-object v6, v6, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v4, v6

    .line 65
    goto :goto_0

    .line 67
    :cond_6
    move-object v6, v3

    instance-of v6, v6, Lgnu/lists/Pair;

    if-nez v6, :cond_7

    .line 68
    const/4 v6, -0x2

    move v0, v6

    goto :goto_1

    .line 69
    :cond_7
    move-object v6, v3

    check-cast v6, Lgnu/lists/Pair;

    iget-object v6, v6, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v3, v6

    .line 70
    move-object v6, v5

    iget-object v6, v6, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    check-cast v6, Lgnu/lists/Pair;

    iget-object v6, v6, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v4, v6

    .line 71
    add-int/lit8 v2, v2, 0x2

    .line 72
    goto :goto_0
.end method

.method public static listTail(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "list":Ljava/lang/Object;
    move v1, p1

    .local v1, "count":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v3, v1

    if-ltz v3, :cond_1

    .line 394
    move-object v3, v0

    instance-of v3, v3, Lgnu/lists/Pair;

    if-nez v3, :cond_0

    .line 395
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "List is too short."

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 396
    :cond_0
    move-object v3, v0

    check-cast v3, Lgnu/lists/Pair;

    move-object v2, v3

    .line 397
    .local v2, "pair":Lgnu/lists/Pair;
    move-object v3, v2

    iget-object v3, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v0, v3

    .line 398
    goto :goto_0

    .line 399
    .end local v2    # "pair":Lgnu/lists/Pair;
    :cond_1
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "list":Ljava/lang/Object;
    return-object v0
.end method

.method public static makeList(Ljava/util/List;)Lgnu/lists/LList;
    .locals 10

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "vals":Ljava/util/List;
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v5

    .line 222
    .local v1, "e":Ljava/util/Iterator;
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v2, v5

    .line 223
    .local v2, "result":Lgnu/lists/LList;
    const/4 v5, 0x0

    move-object v3, v5

    .line 224
    .local v3, "last":Lgnu/lists/Pair;
    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 226
    new-instance v5, Lgnu/lists/Pair;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v6, v7, v8}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v5

    .line 227
    .local v4, "pair":Lgnu/lists/Pair;
    move-object v5, v3

    if-nez v5, :cond_0

    .line 228
    move-object v5, v4

    move-object v2, v5

    .line 231
    :goto_1
    move-object v5, v4

    move-object v3, v5

    .line 232
    goto :goto_0

    .line 230
    :cond_0
    move-object v5, v3

    move-object v6, v4

    iput-object v6, v5, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    goto :goto_1

    .line 233
    .end local v4    # "pair":Lgnu/lists/Pair;
    :cond_1
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "vals":Ljava/util/List;
    return-object v0
.end method

.method public static makeList([Ljava/lang/Object;I)Lgnu/lists/LList;
    .locals 10

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "vals":[Ljava/lang/Object;
    move v1, p1

    .local v1, "offset":I
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v2, v4

    .line 275
    .local v2, "result":Lgnu/lists/LList;
    move-object v4, v0

    array-length v4, v4

    move v5, v1

    sub-int/2addr v4, v5

    move v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    if-ltz v4, :cond_0

    .line 276
    new-instance v4, Lgnu/lists/Pair;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move v8, v3

    add-int/2addr v7, v8

    aget-object v6, v6, v7

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v4

    goto :goto_0

    .line 277
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "vals":[Ljava/lang/Object;
    return-object v0
.end method

.method public static makeList([Ljava/lang/Object;II)Lgnu/lists/LList;
    .locals 11

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "vals":[Ljava/lang/Object;
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "length":I
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v3, v5

    .line 258
    .local v3, "result":Lgnu/lists/LList;
    move v5, v2

    move v4, v5

    .local v4, "i":I
    :goto_0
    add-int/lit8 v4, v4, -0x1

    move v5, v4

    if-ltz v5, :cond_0

    .line 259
    new-instance v5, Lgnu/lists/Pair;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move v8, v1

    move v9, v4

    add-int/2addr v8, v9

    aget-object v7, v7, v8

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v5

    goto :goto_0

    .line 260
    :cond_0
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "vals":[Ljava/lang/Object;
    return-object v0
.end method

.method public static reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;
    .locals 5

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "list":Ljava/lang/Object;
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v1, v3

    .line 380
    .local v1, "prev":Lgnu/lists/LList;
    :goto_0
    move-object v3, v0

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v3, v4, :cond_0

    .line 382
    move-object v3, v0

    check-cast v3, Lgnu/lists/Pair;

    move-object v2, v3

    .line 383
    .local v2, "pair":Lgnu/lists/Pair;
    move-object v3, v2

    iget-object v3, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v0, v3

    .line 384
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 385
    move-object v3, v2

    move-object v1, v3

    .line 386
    goto :goto_0

    .line 387
    .end local v2    # "pair":Lgnu/lists/Pair;
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "list":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/LList;
    return v0

    .restart local v0    # "this":Lgnu/lists/LList;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .locals 6

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v4, v0

    move-object v2, v4

    .line 300
    .local v2, "list":Lgnu/lists/LList;
    move-object v4, v1

    const-string/jumbo v5, "list"

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 301
    .end local v2    # "list":Lgnu/lists/LList;
    :goto_0
    move-object v4, v2

    instance-of v4, v4, Lgnu/lists/Pair;

    if-eqz v4, :cond_1

    .line 303
    move-object v4, v2

    move-object v5, v0

    if-eq v4, v5, :cond_0

    .line 304
    move-object v4, v1

    const/16 v5, 0x20

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->write(I)V

    .line 305
    :cond_0
    move-object v4, v2

    check-cast v4, Lgnu/lists/Pair;

    move-object v3, v4

    .line 306
    .local v3, "pair":Lgnu/lists/Pair;
    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 307
    move-object v4, v3

    iget-object v4, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v2, v4

    .line 308
    .local v2, "list":Ljava/lang/Object;
    goto :goto_0

    .line 309
    .end local v2    # "list":Ljava/lang/Object;
    .end local v3    # "pair":Lgnu/lists/Pair;
    :cond_1
    move-object v4, v2

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v4, v5, :cond_2

    .line 311
    move-object v4, v1

    const/16 v5, 0x20

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->write(I)V

    .line 312
    move-object v4, v1

    const-string/jumbo v5, ". "

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 313
    move-object v4, v1

    move-object v5, v2

    invoke-static {v5}, Lgnu/lists/LList;->checkNonList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 315
    :cond_2
    move-object v4, v1

    invoke-interface {v4}, Lgnu/lists/Consumer;->endElement()V

    .line 316
    return-void
.end method

.method public createPos(IZ)I
    .locals 10

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "isAfter":Z
    new-instance v4, Lgnu/lists/LListPosition;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LList;IZ)V

    move-object v3, v4

    .line 108
    .local v3, "pos":Lgnu/lists/ExtPosition;
    sget-object v4, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/lists/PositionManager;->register(Lgnu/lists/SeqPosition;)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/lists/LList;
    return v0
.end method

.method public createRelativePos(IIZ)I
    .locals 15

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    move/from16 v1, p1

    .local v1, "pos":I
    move/from16 v2, p2

    .local v2, "delta":I
    move/from16 v3, p3

    .local v3, "isAfter":Z
    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Lgnu/lists/LList;->isAfterPos(I)Z

    move-result v10

    move v4, v10

    .line 114
    .local v4, "old_after":Z
    move v10, v2

    if-ltz v10, :cond_0

    move v10, v1

    if-nez v10, :cond_1

    .line 115
    :cond_0
    move-object v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    invoke-super {v10, v11, v12, v13}, Lgnu/lists/ExtSequence;->createRelativePos(IIZ)I

    move-result v10

    move v0, v10

    .line 153
    .end local v0    # "this":Lgnu/lists/LList;
    :goto_0
    return v0

    .line 116
    .restart local v0    # "this":Lgnu/lists/LList;
    :cond_1
    move v10, v2

    if-nez v10, :cond_3

    .line 118
    move v10, v3

    move v11, v4

    if-ne v10, v11, :cond_2

    .line 119
    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Lgnu/lists/LList;->copyPos(I)I

    move-result v10

    move v0, v10

    goto :goto_0

    .line 120
    :cond_2
    move v10, v3

    if-eqz v10, :cond_3

    move v10, v4

    if-nez v10, :cond_3

    .line 121
    move-object v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    invoke-super {v10, v11, v12, v13}, Lgnu/lists/ExtSequence;->createRelativePos(IIZ)I

    move-result v10

    move v0, v10

    goto :goto_0

    .line 123
    :cond_3
    move v10, v1

    if-gez v10, :cond_4

    .line 124
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v10

    .line 125
    :cond_4
    move v10, v1

    invoke-static {v10}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v10

    check-cast v10, Lgnu/lists/LListPosition;

    move-object v5, v10

    .line 126
    .local v5, "old":Lgnu/lists/LListPosition;
    move-object v10, v5

    iget-object v10, v10, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    if-nez v10, :cond_5

    .line 127
    move-object v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    invoke-super {v10, v11, v12, v13}, Lgnu/lists/ExtSequence;->createRelativePos(IIZ)I

    move-result v10

    move v0, v10

    goto :goto_0

    .line 128
    :cond_5
    new-instance v10, Lgnu/lists/LListPosition;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v5

    invoke-direct {v11, v12}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LListPosition;)V

    move-object v6, v10

    .line 129
    .local v6, "it":Lgnu/lists/LListPosition;
    move-object v10, v6

    iget-object v10, v10, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    move-object v7, v10

    .line 130
    .local v7, "it_xpos":Ljava/lang/Object;
    move-object v10, v6

    iget v10, v10, Lgnu/lists/LListPosition;->ipos:I

    move v8, v10

    .line 131
    .local v8, "it_ipos":I
    move v10, v3

    if-eqz v10, :cond_6

    move v10, v4

    if-nez v10, :cond_6

    .line 133
    add-int/lit8 v2, v2, -0x1

    .line 134
    add-int/lit8 v8, v8, 0x3

    .line 136
    :cond_6
    move v10, v3

    if-nez v10, :cond_7

    move v10, v4

    if-eqz v10, :cond_7

    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 139
    add-int/lit8 v8, v8, -0x3

    .line 143
    :cond_7
    :goto_1
    move-object v10, v7

    instance-of v10, v10, Lgnu/lists/Pair;

    if-nez v10, :cond_8

    .line 144
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v10

    .line 145
    :cond_8
    add-int/lit8 v2, v2, -0x1

    move v10, v2

    if-gez v10, :cond_9

    .line 146
    .line 151
    move-object v10, v6

    move v11, v8

    iput v11, v10, Lgnu/lists/LListPosition;->ipos:I

    .line 152
    move-object v10, v6

    move-object v11, v7

    iput-object v11, v10, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 153
    sget-object v10, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    move-object v11, v6

    invoke-virtual {v10, v11}, Lgnu/lists/PositionManager;->register(Lgnu/lists/SeqPosition;)I

    move-result v10

    move v0, v10

    goto/16 :goto_0

    .line 147
    :cond_9
    move-object v10, v7

    check-cast v10, Lgnu/lists/Pair;

    move-object v9, v10

    .line 148
    .local v9, "p":Lgnu/lists/Pair;
    add-int/lit8 v8, v8, 0x2

    .line 149
    move-object v10, v9

    iget-object v10, v10, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v7, v10

    .line 150
    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/LList;
    return v0

    .restart local v0    # "this":Lgnu/lists/LList;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    move v1, p1

    .local v1, "index":I
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public getIterator(I)Lgnu/lists/SeqPosition;
    .locals 8

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    move v1, p1

    .local v1, "index":I
    new-instance v2, Lgnu/lists/LListPosition;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LList;IZ)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/LList;
    return-object v0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    move v1, p1

    .local v1, "ipos":I
    sget-object v2, Lgnu/lists/LList;->eofValue:Ljava/lang/Object;

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/LList;
    return-object v0
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    move v1, p1

    .local v1, "ipos":I
    sget-object v2, Lgnu/lists/LList;->eofValue:Ljava/lang/Object;

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/LList;
    return-object v0
.end method

.method public hasNext(I)Z
    .locals 3

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    move v1, p1

    .local v1, "ipos":I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lgnu/lists/LList;
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/LList;
    return v0
.end method

.method public nextPos(I)I
    .locals 3

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    move v1, p1

    .local v1, "ipos":I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lgnu/lists/LList;
    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 321
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
    .line 333
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/LList;
    return-object v0
.end method

.method protected setPosNext(ILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move v3, v1

    if-gtz v3, :cond_2

    .line 180
    move v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    instance-of v3, v3, Lgnu/lists/Pair;

    if-nez v3, :cond_1

    .line 181
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 182
    :cond_1
    move-object v3, v0

    check-cast v3, Lgnu/lists/Pair;

    move-object v4, v2

    iput-object v4, v3, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_2
    move v3, v1

    invoke-static {v3}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/lists/SeqPosition;->setNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setPosPrevious(ILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move v3, v1

    if-gtz v3, :cond_2

    .line 192
    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    instance-of v3, v3, Lgnu/lists/Pair;

    if-nez v3, :cond_1

    .line 193
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 194
    :cond_1
    move-object v3, v0

    check-cast v3, Lgnu/lists/Pair;

    invoke-virtual {v3}, Lgnu/lists/Pair;->lastPair()Lgnu/lists/Pair;

    move-result-object v3

    move-object v4, v2

    iput-object v4, v3, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_2
    move v3, v1

    invoke-static {v3}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/lists/SeqPosition;->setPrevious(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/lists/LList;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Lgnu/lists/LList;
    move-object v5, v0

    move-object v1, v5

    .line 425
    .local v1, "rest":Lgnu/lists/LList;
    const/4 v5, 0x0

    move v2, v5

    .line 426
    .local v2, "i":I
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v3, v5

    .line 427
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object v5, v3

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 430
    .end local v1    # "rest":Lgnu/lists/LList;
    :goto_0
    move-object v5, v1

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v5, v6, :cond_0

    .line 431
    .line 453
    :goto_1
    move-object v5, v3

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 454
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/lists/LList;
    return-object v0

    .line 432
    .restart local v0    # "this":Lgnu/lists/LList;
    :cond_0
    move v5, v2

    if-lez v5, :cond_1

    .line 433
    move-object v5, v3

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 434
    :cond_1
    move v5, v2

    const/16 v6, 0xa

    if-lt v5, v6, :cond_2

    .line 436
    move-object v5, v3

    const-string/jumbo v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 437
    goto :goto_1

    .line 439
    :cond_2
    move-object v5, v1

    instance-of v5, v5, Lgnu/lists/Pair;

    if-eqz v5, :cond_3

    .line 441
    move-object v5, v1

    check-cast v5, Lgnu/lists/Pair;

    move-object v4, v5

    .line 442
    .local v4, "pair":Lgnu/lists/Pair;
    move-object v5, v3

    move-object v6, v4

    iget-object v6, v6, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 443
    move-object v5, v4

    iget-object v5, v5, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v1, v5

    .line 451
    .local v1, "rest":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "rest":Ljava/lang/Object;
    .end local v4    # "pair":Lgnu/lists/Pair;
    :cond_3
    move-object v5, v3

    const-string/jumbo v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 448
    move-object v5, v3

    move-object v6, v1

    invoke-static {v6}, Lgnu/lists/LList;->checkNonList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 449
    goto :goto_1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    return-void
.end method
