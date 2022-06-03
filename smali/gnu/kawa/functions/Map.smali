.class public Lgnu/kawa/functions/Map;
.super Lgnu/mapping/ProcedureN;
.source "Map.java"


# instance fields
.field final applyFieldDecl:Lgnu/expr/Declaration;

.field final applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

.field collect:Z

.field final isEq:Lgnu/kawa/functions/IsEq;


# direct methods
.method public constructor <init>(ZLgnu/kawa/functions/ApplyToArgs;Lgnu/expr/Declaration;Lgnu/kawa/functions/IsEq;)V
    .locals 8

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Map;
    move v1, p1

    .local v1, "collect":Z
    move-object v2, p2

    .local v2, "applyToArgs":Lgnu/kawa/functions/ApplyToArgs;
    move-object v3, p3

    .local v3, "applyFieldDecl":Lgnu/expr/Declaration;
    move-object v4, p4

    .local v4, "isEq":Lgnu/kawa/functions/IsEq;
    move-object v5, v0

    move v6, v1

    if-eqz v6, :cond_0

    const-string/jumbo v6, "map"

    :goto_0
    invoke-direct {v5, v6}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 25
    move-object v5, v0

    move v6, v1

    iput-boolean v6, v5, Lgnu/kawa/functions/Map;->collect:Z

    .line 26
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lgnu/kawa/functions/Map;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 27
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/kawa/functions/Map;->applyFieldDecl:Lgnu/expr/Declaration;

    .line 28
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/kawa/functions/Map;->isEq:Lgnu/kawa/functions/IsEq;

    .line 29
    move-object v5, v0

    sget-object v6, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v7, "gnu.kawa.functions.CompileMisc:validateApplyMap"

    invoke-virtual {v5, v6, v7}, Lgnu/kawa/functions/Map;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    return-void

    .line 24
    :cond_0
    const-string/jumbo v6, "for-each"

    goto :goto_0
.end method

.method public static forEach1(Lgnu/mapping/Procedure;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "proc":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "list":Ljava/lang/Object;
    :goto_0
    move-object v3, v1

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v3, v4, :cond_0

    .line 57
    move-object v3, v1

    check-cast v3, Lgnu/lists/Pair;

    move-object v2, v3

    .line 58
    .local v2, "pair":Lgnu/lists/Pair;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 59
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 60
    goto :goto_0

    .line 61
    .end local v2    # "pair":Lgnu/lists/Pair;
    :cond_0
    return-void
.end method

.method public static map1(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "proc":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "list":Ljava/lang/Object;
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v2, v6

    .line 37
    .local v2, "result":Lgnu/lists/LList;
    const/4 v6, 0x0

    move-object v3, v6

    .line 38
    .end local v2    # "result":Lgnu/lists/LList;
    .local v3, "last":Lgnu/lists/Pair;
    :goto_0
    move-object v6, v1

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v6, v7, :cond_1

    .line 40
    move-object v6, v1

    check-cast v6, Lgnu/lists/Pair;

    move-object v4, v6

    .line 41
    .local v4, "pair":Lgnu/lists/Pair;
    new-instance v6, Lgnu/lists/Pair;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v7, v8, v9}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v6

    .line 42
    .local v5, "new_pair":Lgnu/lists/Pair;
    move-object v6, v3

    if-nez v6, :cond_0

    .line 43
    move-object v6, v5

    move-object v2, v6

    .line 46
    :goto_1
    move-object v6, v5

    move-object v3, v6

    .line 47
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    .line 48
    goto :goto_0

    .line 45
    :cond_0
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    goto :goto_1

    .line 49
    .end local v4    # "pair":Lgnu/lists/Pair;
    .end local v5    # "new_pair":Lgnu/lists/Pair;
    :cond_1
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "proc":Lgnu/mapping/Procedure;
    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Map;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/Procedure;

    if-eqz v4, :cond_1

    .line 67
    move-object v4, v1

    check-cast v4, Lgnu/mapping/Procedure;

    move-object v3, v4

    .line 68
    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v4, v0

    iget-boolean v4, v4, Lgnu/kawa/functions/Map;->collect:Z

    if-eqz v4, :cond_0

    .line 69
    move-object v4, v3

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/kawa/functions/Map;->map1(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 73
    .end local v0    # "this":Lgnu/kawa/functions/Map;
    .end local v3    # "proc":Lgnu/mapping/Procedure;
    :goto_0
    return-object v0

    .line 70
    .restart local v0    # "this":Lgnu/kawa/functions/Map;
    .restart local v3    # "proc":Lgnu/mapping/Procedure;
    :cond_0
    move-object v4, v3

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/kawa/functions/Map;->forEach1(Lgnu/mapping/Procedure;Ljava/lang/Object;)V

    .line 71
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    goto :goto_0

    .line 73
    .end local v3    # "proc":Lgnu/mapping/Procedure;
    :cond_1
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-virtual {v4, v5}, Lgnu/kawa/functions/Map;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 78
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/functions/Map;
    move-object/from16 v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v12, v1

    array-length v12, v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v2, v12

    .line 79
    .local v2, "arity":I
    move v12, v2

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    move-object v12, v1

    const/4 v13, 0x0

    aget-object v12, v12, v13

    instance-of v12, v12, Lgnu/mapping/Procedure;

    if-eqz v12, :cond_1

    .line 81
    move-object v12, v1

    const/4 v13, 0x0

    aget-object v12, v12, v13

    check-cast v12, Lgnu/mapping/Procedure;

    check-cast v12, Lgnu/mapping/Procedure;

    move-object v3, v12

    .line 82
    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v12, v0

    iget-boolean v12, v12, Lgnu/kawa/functions/Map;->collect:Z

    if-eqz v12, :cond_0

    .line 83
    move-object v12, v3

    move-object v13, v1

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-static {v12, v13}, Lgnu/kawa/functions/Map;->map1(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    .line 117
    .end local v0    # "this":Lgnu/kawa/functions/Map;
    .end local v3    # "proc":Lgnu/mapping/Procedure;
    :goto_0
    return-object v0

    .line 84
    .restart local v0    # "this":Lgnu/kawa/functions/Map;
    .restart local v3    # "proc":Lgnu/mapping/Procedure;
    :cond_0
    move-object v12, v3

    move-object v13, v1

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-static {v12, v13}, Lgnu/kawa/functions/Map;->forEach1(Lgnu/mapping/Procedure;Ljava/lang/Object;)V

    .line 85
    sget-object v12, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v12

    goto :goto_0

    .line 88
    .end local v3    # "proc":Lgnu/mapping/Procedure;
    :cond_1
    const/4 v12, 0x0

    move-object v4, v12

    .line 89
    .local v4, "last":Lgnu/lists/Pair;
    move-object v12, v0

    iget-boolean v12, v12, Lgnu/kawa/functions/Map;->collect:Z

    if-eqz v12, :cond_2

    .line 90
    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v3, v12

    .line 93
    :goto_1
    move v12, v2

    new-array v12, v12, [Ljava/lang/Object;

    move-object v5, v12

    .line 94
    .local v5, "rest":[Ljava/lang/Object;
    move-object v12, v1

    const/4 v13, 0x1

    move-object v14, v5

    const/4 v15, 0x0

    move/from16 v16, v2

    invoke-static/range {v12 .. v16}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    move-object v12, v1

    const/4 v13, 0x0

    aget-object v12, v12, v13

    instance-of v12, v12, Lgnu/mapping/Procedure;

    if-eqz v12, :cond_3

    .line 100
    const/4 v12, 0x0

    move v7, v12

    .line 101
    .local v7, "need_apply":I
    move v12, v2

    new-array v12, v12, [Ljava/lang/Object;

    move-object v8, v12

    .line 102
    .local v8, "each_args":[Ljava/lang/Object;
    move-object v12, v1

    const/4 v13, 0x0

    aget-object v12, v12, v13

    check-cast v12, Lgnu/mapping/Procedure;

    move-object v6, v12

    .line 113
    .local v6, "proc":Lgnu/mapping/Procedure;
    :goto_2
    const/4 v12, 0x0

    move v9, v12

    .local v9, "i":I
    :goto_3
    move v12, v9

    move v13, v2

    if-ge v12, v13, :cond_5

    .line 115
    move-object v12, v5

    move v13, v9

    aget-object v12, v12, v13

    move-object v10, v12

    .line 116
    .local v10, "list":Ljava/lang/Object;
    move-object v12, v10

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v12, v13, :cond_4

    .line 117
    move-object v12, v3

    move-object v0, v12

    goto :goto_0

    .line 92
    .end local v5    # "rest":[Ljava/lang/Object;
    .end local v6    # "proc":Lgnu/mapping/Procedure;
    .end local v7    # "need_apply":I
    .end local v8    # "each_args":[Ljava/lang/Object;
    .end local v9    # "i":I
    .end local v10    # "list":Ljava/lang/Object;
    :cond_2
    sget-object v12, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v3, v12

    .local v3, "result":Lgnu/mapping/Values;
    goto :goto_1

    .line 106
    .end local v3    # "result":Lgnu/mapping/Values;
    .restart local v5    # "rest":[Ljava/lang/Object;
    :cond_3
    const/4 v12, 0x1

    move v7, v12

    .line 107
    .restart local v7    # "need_apply":I
    move v12, v2

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object v8, v12

    .line 108
    .restart local v8    # "each_args":[Ljava/lang/Object;
    move-object v12, v8

    const/4 v13, 0x0

    move-object v14, v1

    const/4 v15, 0x0

    aget-object v14, v14, v15

    aput-object v14, v12, v13

    .line 109
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/functions/Map;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v6, v12

    .restart local v6    # "proc":Lgnu/mapping/Procedure;
    goto :goto_2

    .line 118
    .restart local v9    # "i":I
    .restart local v10    # "list":Ljava/lang/Object;
    :cond_4
    move-object v12, v10

    check-cast v12, Lgnu/lists/Pair;

    move-object v11, v12

    .line 119
    .local v11, "pair":Lgnu/lists/Pair;
    move-object v12, v8

    move v13, v7

    move v14, v9

    add-int/2addr v13, v14

    move-object v14, v11

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    .line 120
    move-object v12, v5

    move v13, v9

    move-object v14, v11

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    .line 113
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 122
    .end local v10    # "list":Ljava/lang/Object;
    .end local v11    # "pair":Lgnu/lists/Pair;
    :cond_5
    move-object v12, v6

    move-object v13, v8

    invoke-virtual {v12, v13}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v9, v12

    .line 123
    .local v9, "value":Ljava/lang/Object;
    move-object v12, v0

    iget-boolean v12, v12, Lgnu/kawa/functions/Map;->collect:Z

    if-eqz v12, :cond_6

    .line 125
    new-instance v12, Lgnu/lists/Pair;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v9

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v13, v14, v15}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v10, v12

    .line 126
    .local v10, "new_pair":Lgnu/lists/Pair;
    move-object v12, v4

    if-nez v12, :cond_7

    .line 127
    move-object v12, v10

    move-object v3, v12

    .line 130
    :goto_4
    move-object v12, v10

    move-object v4, v12

    .line 132
    .end local v10    # "new_pair":Lgnu/lists/Pair;
    :cond_6
    goto :goto_2

    .line 129
    .restart local v10    # "new_pair":Lgnu/lists/Pair;
    :cond_7
    move-object v12, v4

    move-object v13, v10

    invoke-virtual {v12, v13}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    goto :goto_4
.end method
