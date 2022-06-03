.class public Lgnu/kawa/functions/Apply;
.super Lgnu/mapping/ProcedureN;
.source "Apply.java"


# instance fields
.field applyToArgs:Lgnu/kawa/functions/ApplyToArgs;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/kawa/functions/ApplyToArgs;)V
    .locals 5

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Apply;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "applyToArgs":Lgnu/kawa/functions/ApplyToArgs;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 16
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/functions/Apply;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 17
    return-void
.end method

.method public static getArguments([Ljava/lang/Object;ILgnu/mapping/Procedure;)[Ljava/lang/Object;
    .locals 18

    .prologue
    .line 21
    move-object/from16 v0, p0

    .local v0, "args":[Ljava/lang/Object;
    move/from16 v1, p1

    .local v1, "skip":I
    move-object/from16 v2, p2

    .local v2, "proc":Lgnu/mapping/Procedure;
    move-object v11, v0

    array-length v11, v11

    move v3, v11

    .line 22
    .local v3, "count":I
    move v11, v3

    move v12, v1

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    if-ge v11, v12, :cond_0

    .line 23
    new-instance v11, Lgnu/mapping/WrongArguments;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "apply"

    const/4 v14, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "(apply proc [args] args) [count:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " skip:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v13, v14, v15}, Lgnu/mapping/WrongArguments;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v11

    .line 24
    :cond_0
    move-object v11, v0

    move v12, v3

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    aget-object v11, v11, v12

    move-object v4, v11

    .line 26
    .local v4, "last":Ljava/lang/Object;
    move-object v11, v4

    instance-of v11, v11, [Ljava/lang/Object;

    if-eqz v11, :cond_2

    .line 28
    move-object v11, v4

    check-cast v11, [Ljava/lang/Object;

    check-cast v11, [Ljava/lang/Object;

    move-object v6, v11

    .line 29
    .local v6, "last_arr":[Ljava/lang/Object;
    move v11, v3

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 30
    move-object v11, v6

    move-object v0, v11

    .line 65
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v6    # "last_arr":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 31
    .restart local v0    # "args":[Ljava/lang/Object;
    .restart local v6    # "last_arr":[Ljava/lang/Object;
    :cond_1
    move-object v11, v6

    array-length v11, v11

    move v5, v11

    .line 37
    .end local v6    # "last_arr":[Ljava/lang/Object;
    .local v5, "last_count":I
    :goto_1
    move v11, v5

    if-gez v11, :cond_4

    .line 38
    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v2

    move v14, v3

    move-object v15, v4

    const-string/jumbo v16, "sequence or array"

    invoke-direct/range {v12 .. v16}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v11

    .line 33
    .end local v5    # "last_count":I
    :cond_2
    move-object v11, v4

    instance-of v11, v11, Lgnu/lists/Sequence;

    if-eqz v11, :cond_3

    .line 34
    move-object v11, v4

    check-cast v11, Lgnu/lists/Sequence;

    invoke-interface {v11}, Lgnu/lists/Sequence;->size()I

    move-result v11

    move v5, v11

    .restart local v5    # "last_count":I
    goto :goto_1

    .line 36
    .end local v5    # "last_count":I
    :cond_3
    const/4 v11, -0x1

    move v5, v11

    .restart local v5    # "last_count":I
    goto :goto_1

    .line 39
    :cond_4
    move v11, v5

    move v12, v3

    move v13, v1

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    add-int/2addr v11, v12

    move v6, v11

    .line 40
    .local v6, "numArgs":I
    move v11, v6

    new-array v11, v11, [Ljava/lang/Object;

    move-object v7, v11

    .line 42
    .local v7, "proc_args":[Ljava/lang/Object;
    const/4 v11, 0x0

    move v8, v11

    .local v8, "i":I
    :goto_2
    move v11, v8

    move v12, v3

    move v13, v1

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_5

    .line 43
    move-object v11, v7

    move v12, v8

    move-object v13, v0

    move v14, v8

    move v15, v1

    add-int/2addr v14, v15

    aget-object v13, v13, v14

    aput-object v13, v11, v12

    .line 42
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 44
    :cond_5
    move-object v11, v4

    instance-of v11, v11, [Ljava/lang/Object;

    if-eqz v11, :cond_7

    .line 46
    move-object v11, v4

    check-cast v11, [Ljava/lang/Object;

    check-cast v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object v13, v7

    move v14, v8

    move v15, v5

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    :cond_6
    move-object v11, v7

    move-object v0, v11

    goto :goto_0

    .line 51
    :cond_7
    :goto_3
    move-object v11, v4

    instance-of v11, v11, Lgnu/lists/Pair;

    if-eqz v11, :cond_8

    .line 53
    move-object v11, v4

    check-cast v11, Lgnu/lists/Pair;

    move-object v9, v11

    .line 54
    .local v9, "pair":Lgnu/lists/Pair;
    move-object v11, v7

    move v12, v8

    add-int/lit8 v8, v8, 0x1

    move-object v13, v9

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    .line 55
    move-object v11, v9

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    .line 56
    add-int/lit8 v5, v5, -0x1

    .line 57
    goto :goto_3

    .line 58
    .end local v9    # "pair":Lgnu/lists/Pair;
    :cond_8
    move v11, v5

    if-lez v11, :cond_6

    .line 60
    move-object v11, v4

    check-cast v11, Lgnu/lists/Sequence;

    move-object v9, v11

    .line 61
    .local v9, "last_seq":Lgnu/lists/Sequence;
    const/4 v11, 0x0

    move v10, v11

    .local v10, "j":I
    :goto_4
    move v11, v10

    move v12, v5

    if-ge v11, v12, :cond_6

    .line 62
    move-object v11, v7

    move v12, v8

    add-int/lit8 v8, v8, 0x1

    move-object v13, v9

    move v14, v10

    invoke-interface {v13, v14}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    .line 61
    add-int/lit8 v10, v10, 0x1

    goto :goto_4
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Apply;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 76
    .local v2, "args":[Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/Apply;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    invoke-static {v4, v5, v6}, Lgnu/kawa/functions/Apply;->getArguments([Ljava/lang/Object;ILgnu/mapping/Procedure;)[Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/functions/ApplyToArgs;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 77
    return-void
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Apply;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/functions/Apply;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v0

    invoke-static {v3, v4, v5}, Lgnu/kawa/functions/Apply;->getArguments([Ljava/lang/Object;ILgnu/mapping/Procedure;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/kawa/functions/ApplyToArgs;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/Apply;
    return-object v0
.end method
