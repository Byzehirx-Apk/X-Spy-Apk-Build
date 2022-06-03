.class public Lgnu/expr/InlineCalls;
.super Lgnu/expr/ExpExpVisitor;
.source "InlineCalls.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpExpVisitor",
        "<",
        "Lgnu/bytecode/Type;",
        ">;"
    }
.end annotation


# static fields
.field private static inlinerMethodArgTypes:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lgnu/expr/Compilation;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/expr/ExpExpVisitor;-><init>()V

    .line 38
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/InlineCalls;->setContext(Lgnu/expr/Compilation;)V

    .line 39
    return-void
.end method

.method public static checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object v4, v0

    instance-of v4, v4, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_0

    .line 132
    move-object v4, v0

    check-cast v4, Lgnu/expr/QuoteExp;

    move-object v1, v4

    .line 133
    .local v1, "qarg":Lgnu/expr/QuoteExp;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 134
    .local v2, "value":Ljava/lang/Object;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->isExplicitlyTyped()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Lgnu/math/IntNum;

    if-eqz v4, :cond_0

    .line 136
    move-object v4, v2

    check-cast v4, Lgnu/math/IntNum;

    move-object v3, v4

    .line 137
    .local v3, "ivalue":Lgnu/math/IntNum;
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/math/IntNum;->inIntRange()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/math/IntNum;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    .line 141
    .end local v0    # "exp":Lgnu/expr/Expression;
    :goto_0
    return-object v0

    .end local v1    # "qarg":Lgnu/expr/QuoteExp;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "ivalue":Lgnu/math/IntNum;
    .restart local v0    # "exp":Lgnu/expr/Expression;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public static checkLongValue(Lgnu/expr/Expression;)Ljava/lang/Long;
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object v4, v0

    instance-of v4, v4, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_0

    .line 148
    move-object v4, v0

    check-cast v4, Lgnu/expr/QuoteExp;

    move-object v1, v4

    .line 149
    .local v1, "qarg":Lgnu/expr/QuoteExp;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 150
    .local v2, "value":Ljava/lang/Object;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->isExplicitlyTyped()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Lgnu/math/IntNum;

    if-eqz v4, :cond_0

    .line 152
    move-object v4, v2

    check-cast v4, Lgnu/math/IntNum;

    move-object v3, v4

    .line 153
    .local v3, "ivalue":Lgnu/math/IntNum;
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/math/IntNum;->inLongRange()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v0, v4

    .line 157
    .end local v0    # "exp":Lgnu/expr/Expression;
    :goto_0
    return-object v0

    .end local v1    # "qarg":Lgnu/expr/QuoteExp;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "ivalue":Lgnu/math/IntNum;
    .restart local v0    # "exp":Lgnu/expr/Expression;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method private static declared-synchronized getInlinerMethodArgTypes()[Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 407
    const-class v5, Lgnu/expr/InlineCalls;

    monitor-enter v5

    :try_start_0
    sget-object v1, Lgnu/expr/InlineCalls;->inlinerMethodArgTypes:[Ljava/lang/Class;

    move-object v0, v1

    .line 408
    .local v0, "t":[Ljava/lang/Class;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 410
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    const-string/jumbo v4, "gnu.expr.ApplyExp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    const-string/jumbo v4, "gnu.expr.InlineCalls"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, "gnu.bytecode.Type"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x3

    const-string/jumbo v4, "gnu.mapping.Procedure"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v0, v1

    .line 414
    move-object v1, v0

    sput-object v1, Lgnu/expr/InlineCalls;->inlinerMethodArgTypes:[Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "t":[Ljava/lang/Class;
    monitor-exit v5

    return-object v0

    .line 407
    .restart local v0    # "t":[Ljava/lang/Class;
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "t":[Ljava/lang/Class;
    throw v0
.end method

.method public static inlineCall(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;Z)Lgnu/expr/Expression;
    .locals 21

    .prologue
    .line 492
    move-object/from16 v1, p0

    .local v1, "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v2, p1

    .local v2, "args":[Lgnu/expr/Expression;
    move/from16 v3, p2

    .local v3, "makeCopy":Z
    move-object v13, v1

    iget-object v13, v13, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v13, :cond_0

    move-object v13, v1

    iget-object v13, v13, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v13, :cond_1

    move v13, v3

    if-nez v13, :cond_1

    .line 497
    :cond_0
    const/4 v13, 0x0

    move-object v1, v13

    .line 587
    .end local v1    # "lexp":Lgnu/expr/LambdaExp;
    :goto_0
    return-object v1

    .line 498
    .restart local v1    # "lexp":Lgnu/expr/LambdaExp;
    :cond_1
    move-object v13, v1

    iget v13, v13, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v13, :cond_4

    const/4 v13, 0x1

    :goto_1
    move v4, v13

    .line 499
    .local v4, "varArgs":Z
    move-object v13, v1

    iget v13, v13, Lgnu/expr/LambdaExp;->min_args:I

    move-object v14, v1

    iget v14, v14, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v13, v14, :cond_2

    move-object v13, v1

    iget v13, v13, Lgnu/expr/LambdaExp;->min_args:I

    move-object v14, v2

    array-length v14, v14

    if-eq v13, v14, :cond_3

    :cond_2
    move v13, v4

    if-eqz v13, :cond_d

    move-object v13, v1

    iget v13, v13, Lgnu/expr/LambdaExp;->min_args:I

    if-nez v13, :cond_d

    .line 503
    :cond_3
    const/4 v13, 0x0

    move-object v5, v13

    .line 504
    .local v5, "prev":Lgnu/expr/Declaration;
    const/4 v13, 0x0

    move v6, v13

    .line 507
    .local v6, "i":I
    move v13, v3

    if-eqz v13, :cond_5

    .line 509
    new-instance v13, Lgnu/kawa/util/IdentityHashTable;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Lgnu/kawa/util/IdentityHashTable;-><init>()V

    move-object v7, v13

    .line 510
    .local v7, "mapper":Lgnu/kawa/util/IdentityHashTable;
    move-object v13, v2

    move-object v14, v7

    invoke-static {v13, v14}, Lgnu/expr/Expression;->deepCopy([Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)[Lgnu/expr/Expression;

    move-result-object v13

    move-object v8, v13

    .line 511
    .local v8, "cargs":[Lgnu/expr/Expression;
    move-object v13, v8

    if-nez v13, :cond_6

    move-object v13, v2

    if-eqz v13, :cond_6

    .line 512
    const/4 v13, 0x0

    move-object v1, v13

    goto :goto_0

    .line 498
    .end local v4    # "varArgs":Z
    .end local v5    # "prev":Lgnu/expr/Declaration;
    .end local v6    # "i":I
    .end local v7    # "mapper":Lgnu/kawa/util/IdentityHashTable;
    .end local v8    # "cargs":[Lgnu/expr/Expression;
    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    .line 516
    .restart local v4    # "varArgs":Z
    .restart local v5    # "prev":Lgnu/expr/Declaration;
    .restart local v6    # "i":I
    :cond_5
    const/4 v13, 0x0

    move-object v7, v13

    .line 517
    .restart local v7    # "mapper":Lgnu/kawa/util/IdentityHashTable;
    move-object v13, v2

    move-object v8, v13

    .line 519
    .restart local v8    # "cargs":[Lgnu/expr/Expression;
    :cond_6
    move v13, v4

    if-eqz v13, :cond_7

    .line 521
    move-object v13, v2

    array-length v13, v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    new-array v13, v13, [Lgnu/expr/Expression;

    move-object v9, v13

    .line 522
    .local v9, "xargs":[Lgnu/expr/Expression;
    move-object v13, v9

    const/4 v14, 0x0

    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v15

    iget-object v15, v15, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    invoke-static {v15}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v15

    aput-object v15, v13, v14

    .line 523
    move-object v13, v2

    const/4 v14, 0x0

    move-object v15, v9

    const/16 v16, 0x1

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    const/4 v13, 0x1

    new-array v13, v13, [Lgnu/expr/Expression;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lgnu/expr/ApplyExp;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    sget-object v18, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    move-object/from16 v19, v9

    invoke-direct/range {v17 .. v19}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    aput-object v16, v14, v15

    move-object v8, v13

    .line 526
    .end local v9    # "xargs":[Lgnu/expr/Expression;
    :cond_7
    new-instance v13, Lgnu/expr/LetExp;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v8

    invoke-direct {v14, v15}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object v9, v13

    .line 527
    .local v9, "let":Lgnu/expr/LetExp;
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v13

    move-object v10, v13

    .local v10, "param":Lgnu/expr/Declaration;
    :goto_2
    move-object v13, v10

    if-eqz v13, :cond_b

    .line 529
    move-object v13, v10

    invoke-virtual {v13}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v13

    move-object v11, v13

    .line 530
    .local v11, "next":Lgnu/expr/Declaration;
    move v13, v3

    if-eqz v13, :cond_a

    .line 532
    move-object v13, v9

    move-object v14, v10

    iget-object v14, v14, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    move-object v15, v10

    iget-object v15, v15, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    invoke-virtual {v13, v14, v15}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v13

    move-object v12, v13

    .line 533
    .local v12, "ldecl":Lgnu/expr/Declaration;
    move-object v13, v10

    iget-object v13, v13, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    if-eqz v13, :cond_8

    .line 535
    move-object v13, v12

    move-object v14, v10

    iget-object v14, v14, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    invoke-static {v14}, Lgnu/expr/Expression;->deepCopy(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v14

    iput-object v14, v13, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 536
    move-object v13, v12

    iget-object v13, v13, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    if-nez v13, :cond_8

    .line 537
    const/4 v13, 0x0

    move-object v1, v13

    goto/16 :goto_0

    .line 540
    :cond_8
    move-object v13, v7

    move-object v14, v10

    move-object v15, v12

    invoke-virtual {v13, v14, v15}, Lgnu/kawa/util/IdentityHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 541
    .line 547
    .end local v12    # "ldecl":Lgnu/expr/Declaration;
    :goto_3
    move v13, v4

    if-nez v13, :cond_9

    .line 549
    move-object v13, v10

    invoke-virtual {v13}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v13

    if-nez v13, :cond_9

    .line 550
    move-object v13, v10

    move-object v14, v8

    move v15, v6

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 552
    :cond_9
    move-object v13, v10

    move-object v5, v13

    .line 553
    move-object v13, v11

    move-object v10, v13

    .line 527
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 544
    :cond_a
    move-object v13, v1

    move-object v14, v5

    move-object v15, v10

    invoke-virtual {v13, v14, v15}, Lgnu/expr/LambdaExp;->remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 545
    move-object v13, v9

    move-object v14, v5

    move-object v15, v10

    invoke-virtual {v13, v14, v15}, Lgnu/expr/LetExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    goto :goto_3

    .line 562
    .end local v11    # "next":Lgnu/expr/Declaration;
    :cond_b
    move-object v13, v1

    iget-object v13, v13, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v10, v13

    .line 563
    .local v10, "body":Lgnu/expr/Expression;
    move v13, v3

    if-eqz v13, :cond_c

    .line 565
    move-object v13, v10

    move-object v14, v7

    invoke-static {v13, v14}, Lgnu/expr/Expression;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v13

    move-object v10, v13

    .line 566
    move-object v13, v10

    if-nez v13, :cond_c

    move-object v13, v1

    iget-object v13, v13, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v13, :cond_c

    .line 567
    const/4 v13, 0x0

    move-object v1, v13

    goto/16 :goto_0

    .line 569
    :cond_c
    move-object v13, v9

    move-object v14, v10

    iput-object v14, v13, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 570
    move-object v13, v9

    move-object v1, v13

    goto/16 :goto_0

    .line 587
    .end local v5    # "prev":Lgnu/expr/Declaration;
    .end local v6    # "i":I
    .end local v7    # "mapper":Lgnu/kawa/util/IdentityHashTable;
    .end local v8    # "cargs":[Lgnu/expr/Expression;
    .end local v9    # "let":Lgnu/expr/LetExp;
    .end local v10    # "body":Lgnu/expr/Expression;
    :cond_d
    const/4 v13, 0x0

    move-object v1, v13

    goto/16 :goto_0
.end method

.method public static inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    new-instance v3, Lgnu/expr/InlineCalls;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/expr/InlineCalls;-><init>(Lgnu/expr/Compilation;)V

    move-object v2, v3

    .line 33
    .local v2, "visitor":Lgnu/expr/InlineCalls;
    move-object v3, v2

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "exp":Lgnu/expr/Expression;
    return-object v0
.end method


# virtual methods
.method public checkType(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 18

    .prologue
    .line 54
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object/from16 v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    move-object v3, v10

    .line 56
    .local v3, "expType":Lgnu/bytecode/Type;
    move-object v10, v2

    instance-of v10, v10, Lgnu/bytecode/ClassType;

    if-eqz v10, :cond_3

    move-object v10, v2

    check-cast v10, Lgnu/bytecode/ClassType;

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v3

    sget-object v11, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v10, v11}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v3

    move-object v11, v2

    invoke-virtual {v10, v11}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 60
    move-object v10, v1

    instance-of v10, v10, Lgnu/expr/LambdaExp;

    if-eqz v10, :cond_0

    .line 62
    move-object v10, v2

    check-cast v10, Lgnu/bytecode/ClassType;

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->checkSingleAbstractMethod()Lgnu/bytecode/Method;

    move-result-object v10

    move-object v5, v10

    .line 63
    .local v5, "amethod":Lgnu/bytecode/Method;
    move-object v10, v5

    if-eqz v10, :cond_0

    .line 65
    move-object v10, v1

    check-cast v10, Lgnu/expr/LambdaExp;

    move-object v6, v10

    .line 66
    .local v6, "lexp":Lgnu/expr/LambdaExp;
    new-instance v10, Lgnu/expr/ObjectExp;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Lgnu/expr/ObjectExp;-><init>()V

    move-object v7, v10

    .line 67
    .local v7, "oexp":Lgnu/expr/ObjectExp;
    move-object v10, v7

    move-object v11, v1

    invoke-virtual {v10, v11}, Lgnu/expr/ObjectExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 68
    move-object v10, v7

    const/4 v11, 0x1

    new-array v11, v11, [Lgnu/expr/Expression;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x0

    new-instance v14, Lgnu/expr/QuoteExp;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v16}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v14, v12, v13

    iput-object v11, v10, Lgnu/expr/ObjectExp;->supers:[Lgnu/expr/Expression;

    .line 69
    move-object v10, v7

    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/expr/ObjectExp;->setTypes(Lgnu/expr/Compilation;)V

    .line 70
    move-object v10, v5

    invoke-virtual {v10}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 71
    .local v8, "mname":Ljava/lang/String;
    move-object v10, v7

    move-object v11, v6

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Lgnu/expr/ObjectExp;->addMethod(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v10

    .line 72
    move-object v10, v7

    move-object v11, v8

    sget-object v12, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v10, v11, v12}, Lgnu/expr/ObjectExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v10

    move-object v9, v10

    .line 73
    .local v9, "mdecl":Lgnu/expr/Declaration;
    move-object v10, v7

    move-object v11, v6

    iput-object v11, v10, Lgnu/expr/ObjectExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 74
    move-object v10, v7

    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v10, v11}, Lgnu/expr/ObjectExp;->declareParts(Lgnu/expr/Compilation;)V

    .line 75
    move-object v10, v0

    move-object v11, v7

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v0, v10

    .line 100
    .end local v0    # "this":Lgnu/expr/InlineCalls;
    .end local v5    # "amethod":Lgnu/bytecode/Method;
    .end local v6    # "lexp":Lgnu/expr/LambdaExp;
    .end local v7    # "oexp":Lgnu/expr/ObjectExp;
    .end local v8    # "mname":Ljava/lang/String;
    .end local v9    # "mdecl":Lgnu/expr/Declaration;
    :goto_0
    return-object v0

    .line 78
    .restart local v0    # "this":Lgnu/expr/InlineCalls;
    :cond_0
    const/4 v10, 0x1

    move v4, v10

    .line 92
    .local v4, "incompatible":Z
    :cond_1
    move v10, v4

    if-eqz v10, :cond_2

    .line 94
    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v10}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v10

    move-object v5, v10

    .line 95
    .local v5, "language":Lgnu/expr/Language;
    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    const/16 v11, 0x77

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v5

    move-object v14, v3

    invoke-virtual {v13, v14}, Lgnu/expr/Language;->formatType(Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is incompatible with required type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v5

    move-object v14, v2

    invoke-virtual {v13, v14}, Lgnu/expr/Language;->formatType(Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v10, v11, v12, v13}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 100
    .end local v5    # "language":Lgnu/expr/Language;
    :cond_2
    move-object v10, v1

    move-object v0, v10

    goto :goto_0

    .line 82
    .end local v4    # "incompatible":Z
    :cond_3
    move-object v10, v3

    sget-object v11, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v10, v11, :cond_4

    .line 83
    sget-object v10, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    move-object v3, v10

    .line 84
    :cond_4
    move-object v10, v2

    if-eqz v10, :cond_5

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v10, v11}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v10

    const/4 v11, -0x3

    if-ne v10, v11, :cond_5

    const/4 v10, 0x1

    :goto_1
    move v4, v10

    .line 85
    .restart local v4    # "incompatible":Z
    move v10, v4

    if-eqz v10, :cond_1

    move-object v10, v2

    instance-of v10, v10, Lgnu/expr/TypeValue;

    if-eqz v10, :cond_1

    .line 87
    move-object v10, v2

    check-cast v10, Lgnu/expr/TypeValue;

    move-object v11, v1

    invoke-interface {v10, v11}, Lgnu/expr/TypeValue;->convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v5, v10

    .line 88
    .local v5, "converted":Lgnu/expr/Expression;
    move-object v10, v5

    if-eqz v10, :cond_1

    .line 89
    move-object v10, v5

    move-object v0, v10

    goto :goto_0

    .line 84
    .end local v4    # "incompatible":Z
    .end local v5    # "converted":Lgnu/expr/Expression;
    :cond_5
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public fixIntValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;
    .locals 9

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v3, v1

    invoke-static {v3}, Lgnu/expr/InlineCalls;->checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, v3

    .line 163
    .local v2, "ival":Ljava/lang/Integer;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 164
    new-instance v3, Lgnu/expr/QuoteExp;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    move-object v0, v3

    .line 165
    .end local v0    # "this":Lgnu/expr/InlineCalls;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/expr/InlineCalls;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public fixLongValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;
    .locals 9

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v3, v1

    invoke-static {v3}, Lgnu/expr/InlineCalls;->checkLongValue(Lgnu/expr/Expression;)Ljava/lang/Long;

    move-result-object v3

    move-object v2, v3

    .line 171
    .local v2, "ival":Ljava/lang/Long;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 172
    new-instance v3, Lgnu/expr/QuoteExp;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v6

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    move-object v0, v3

    .line 173
    .end local v0    # "this":Lgnu/expr/InlineCalls;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/expr/InlineCalls;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public maybeInline(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 18

    .prologue
    .line 425
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object/from16 v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v13, v3

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v5, v14

    :try_start_0
    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    move-object v13, v3

    :try_start_1
    sget-object v14, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v4, v13

    .line 428
    .local v4, "inliner":Ljava/lang/Object;
    move-object v13, v4

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 430
    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    move-object v6, v13

    .line 431
    .local v6, "inliners":Ljava/lang/String;
    move-object v13, v6

    const/16 v14, 0x3a

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    move v7, v13

    .line 435
    .local v7, "colon":I
    const/4 v13, 0x0

    move-object v8, v13

    .line 437
    .local v8, "method":Ljava/lang/reflect/Method;
    move v13, v7

    if-lez v13, :cond_0

    .line 439
    move-object v13, v6

    const/4 v14, 0x0

    move v15, v7

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 440
    .local v9, "cname":Ljava/lang/String;
    move-object v13, v6

    move v14, v7

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 441
    .local v10, "mname":Ljava/lang/String;
    move-object v13, v9

    const/4 v14, 0x1

    move-object v15, v3

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-static {v13, v14, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v13

    move-object v11, v13

    .line 445
    .local v11, "clas":Ljava/lang/Class;
    move-object v13, v11

    move-object v14, v10

    invoke-static {}, Lgnu/expr/InlineCalls;->getInlinerMethodArgTypes()[Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    move-object v8, v13

    .line 448
    .end local v9    # "cname":Ljava/lang/String;
    .end local v10    # "mname":Ljava/lang/String;
    .end local v11    # "clas":Ljava/lang/Class;
    :cond_0
    move-object v13, v8

    if-nez v13, :cond_1

    .line 450
    move-object v13, v0

    const/16 v14, 0x65

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "inliner property string for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " is not of the form CLASS:METHOD"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lgnu/expr/InlineCalls;->error(CLjava/lang/String;)V

    .line 451
    const/4 v13, 0x0

    move-object v14, v5

    monitor-exit v14

    move-object v0, v13

    .line 478
    .end local v0    # "this":Lgnu/expr/InlineCalls;
    .end local v4    # "inliner":Ljava/lang/Object;
    .end local v6    # "inliners":Ljava/lang/String;
    .end local v7    # "colon":I
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v0

    .line 453
    .restart local v0    # "this":Lgnu/expr/InlineCalls;
    .restart local v4    # "inliner":Ljava/lang/Object;
    .restart local v6    # "inliners":Ljava/lang/String;
    .restart local v7    # "colon":I
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    :cond_1
    move-object v13, v8

    move-object v4, v13

    .line 455
    .end local v4    # "inliner":Ljava/lang/Object;
    .end local v6    # "inliners":Ljava/lang/String;
    .end local v7    # "colon":I
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :cond_2
    move-object v13, v5

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    move-object v13, v4

    if-eqz v13, :cond_5

    .line 462
    const/4 v13, 0x4

    :try_start_2
    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move-object/from16 v16, v1

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x2

    move-object/from16 v16, v2

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x3

    move-object/from16 v16, v3

    aput-object v16, v14, v15

    move-object v5, v13

    .line 463
    .local v5, "vargs":[Ljava/lang/Object;
    move-object v13, v4

    instance-of v13, v13, Lgnu/mapping/Procedure;

    if-eqz v13, :cond_4

    .line 464
    move-object v13, v4

    check-cast v13, Lgnu/mapping/Procedure;

    move-object v14, v5

    invoke-virtual {v13, v14}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/expr/Expression;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v13

    goto :goto_0

    .line 455
    .end local v5    # "vargs":[Ljava/lang/Object;
    :catchall_0
    move-exception v13

    move-object v12, v13

    move-object v13, v5

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v13, v12

    :try_start_4
    throw v13
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 472
    :catch_0
    move-exception v13

    move-object v4, v13

    .line 474
    .local v4, "ex":Ljava/lang/Throwable;
    move-object v13, v4

    instance-of v13, v13, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v13, :cond_3

    .line 475
    move-object v13, v4

    check-cast v13, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v13}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v13

    move-object v4, v13

    .line 476
    :cond_3
    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/InlineCalls;->messages:Lgnu/text/SourceMessages;

    const/16 v14, 0x65

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "caught exception in inliner for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v4

    invoke-virtual/range {v13 .. v16}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 478
    .end local v4    # "ex":Ljava/lang/Throwable;
    :goto_1
    const/4 v13, 0x0

    move-object v0, v13

    goto/16 :goto_0

    .line 466
    .restart local v5    # "vargs":[Ljava/lang/Object;
    :cond_4
    move-object v13, v4

    :try_start_5
    instance-of v13, v13, Ljava/lang/reflect/Method;

    if-eqz v13, :cond_5

    .line 467
    move-object v13, v4

    check-cast v13, Ljava/lang/reflect/Method;

    const/4 v14, 0x0

    move-object v15, v5

    invoke-virtual {v13, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/expr/Expression;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-object v0, v13

    goto/16 :goto_0

    .line 477
    .end local v5    # "vargs":[Ljava/lang/Object;
    :cond_5
    goto :goto_1
.end method

.method public visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/expr/Expression;->getFlag(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/expr/Expression;->setFlag(I)V

    .line 46
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ExpExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Expression;

    move-object v1, v3

    .line 47
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/expr/Expression;->setFlag(I)V

    .line 49
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/InlineCalls;->checkType(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method public bridge synthetic visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/bytecode/Type;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 11

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v3, v6

    .line 110
    .local v3, "func":Lgnu/expr/Expression;
    move-object v6, v3

    instance-of v6, v6, Lgnu/expr/LambdaExp;

    if-eqz v6, :cond_0

    .line 112
    move-object v6, v3

    check-cast v6, Lgnu/expr/LambdaExp;

    move-object v4, v6

    .line 113
    .local v4, "lexp":Lgnu/expr/LambdaExp;
    move-object v6, v3

    check-cast v6, Lgnu/expr/LambdaExp;

    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lgnu/expr/InlineCalls;->inlineCall(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;Z)Lgnu/expr/Expression;

    move-result-object v6

    move-object v5, v6

    .line 114
    .local v5, "inlined":Lgnu/expr/Expression;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 115
    move-object v6, v0

    move-object v7, v5

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    .line 119
    .end local v0    # "this":Lgnu/expr/InlineCalls;
    .end local v4    # "lexp":Lgnu/expr/LambdaExp;
    .end local v5    # "inlined":Lgnu/expr/Expression;
    :goto_0
    return-object v0

    .line 117
    .restart local v0    # "this":Lgnu/expr/InlineCalls;
    :cond_0
    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v3, v6

    .line 118
    move-object v6, v1

    move-object v7, v3

    iput-object v7, v6, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 119
    move-object v6, v3

    move-object v7, v1

    move-object v8, v0

    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/expr/Expression;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/bytecode/Type;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/InlineCalls;->visitApplyExp(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method public final visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/expr/Expression;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method protected visitBeginExp(Lgnu/expr/BeginExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 11

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/BeginExp;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v5, v1

    iget v5, v5, Lgnu/expr/BeginExp;->length:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 270
    .local v3, "last":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-gt v5, v6, :cond_1

    .line 272
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move v6, v4

    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move v9, v4

    aget-object v8, v8, v9

    move v9, v4

    move v10, v3

    if-ge v9, v10, :cond_0

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v7, v8, v9}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v7

    aput-object v7, v5, v6

    .line 270
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 272
    :cond_0
    move-object v9, v2

    goto :goto_1

    .line 274
    :cond_1
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method protected bridge synthetic visitBeginExp(Lgnu/expr/BeginExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/BeginExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/bytecode/Type;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/InlineCalls;->visitBeginExp(Lgnu/expr/BeginExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method protected visitIfExp(Lgnu/expr/IfExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 12

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/IfExp;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/Expression;

    move-object v3, v6

    .line 238
    .local v3, "test":Lgnu/expr/Expression;
    move-object v6, v3

    instance-of v6, v6, Lgnu/expr/ReferenceExp;

    if-eqz v6, :cond_0

    .line 240
    move-object v6, v3

    check-cast v6, Lgnu/expr/ReferenceExp;

    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v4, v6

    .line 241
    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 243
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v6

    move-object v5, v6

    .line 244
    .local v5, "value":Lgnu/expr/Expression;
    move-object v6, v5

    instance-of v6, v6, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_0

    move-object v6, v5

    sget-object v7, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v6, v7, :cond_0

    .line 245
    move-object v6, v5

    move-object v3, v6

    .line 248
    .end local v4    # "decl":Lgnu/expr/Declaration;
    .end local v5    # "value":Lgnu/expr/Expression;
    :cond_0
    move-object v6, v1

    move-object v7, v3

    iput-object v7, v6, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    .line 249
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/InlineCalls;->exitValue:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 250
    move-object v6, v1

    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v7

    iput-object v7, v6, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    .line 251
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/InlineCalls;->exitValue:Ljava/lang/Object;

    if-nez v6, :cond_2

    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v6, :cond_2

    .line 252
    move-object v6, v1

    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v7

    iput-object v7, v6, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    .line 253
    :cond_2
    move-object v6, v3

    instance-of v6, v6, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_3

    .line 255
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v6

    move-object v7, v3

    check-cast v7, Lgnu/expr/QuoteExp;

    invoke-virtual {v7}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v6

    move v4, v6

    .line 256
    .local v4, "truth":Z
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/expr/IfExp;->select(Z)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    .line 264
    .end local v0    # "this":Lgnu/expr/InlineCalls;
    .end local v4    # "truth":Z
    :goto_0
    return-object v0

    .line 258
    .restart local v0    # "this":Lgnu/expr/InlineCalls;
    :cond_3
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 260
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v6

    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {v6, v7}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v6

    move v4, v6

    .line 261
    .restart local v4    # "truth":Z
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    const/16 v7, 0x77

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "void-valued condition is always "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 262
    new-instance v6, Lgnu/expr/BeginExp;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v3

    move-object v9, v1

    move v10, v4

    invoke-virtual {v9, v10}, Lgnu/expr/IfExp;->select(Z)Lgnu/expr/Expression;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v0, v6

    goto :goto_0

    .line 264
    .end local v4    # "truth":Z
    :cond_4
    move-object v6, v1

    move-object v0, v6

    goto :goto_0
.end method

.method protected bridge synthetic visitIfExp(Lgnu/expr/IfExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/IfExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/bytecode/Type;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/InlineCalls;->visitIfExp(Lgnu/expr/IfExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    .line 344
    .local v3, "firstDecl":Lgnu/expr/Declaration;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    iget-object v4, v4, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-nez v4, :cond_0

    .line 347
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    iget-object v5, v5, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 349
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/InlineCalls;->visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method protected bridge synthetic visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/bytecode/Type;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/InlineCalls;->visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method protected visitLetExp(Lgnu/expr/LetExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 16

    .prologue
    .line 298
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object/from16 v1, p1

    .local v1, "exp":Lgnu/expr/LetExp;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v11

    move-object v3, v11

    .line 299
    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v11, v11

    move v4, v11

    .line 300
    .local v4, "n":I
    const/4 v11, 0x0

    move v5, v11

    .local v5, "i":I
    :goto_0
    move v11, v5

    move v12, v4

    if-ge v11, v12, :cond_2

    .line 302
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move v12, v5

    aget-object v11, v11, v12

    move-object v6, v11

    .line 303
    .local v6, "init0":Lgnu/expr/Expression;
    move-object v11, v3

    const-wide/16 v12, 0x2000

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v11

    move v7, v11

    .line 304
    .local v7, "typeSpecified":Z
    move v11, v7

    if-eqz v11, :cond_1

    move-object v11, v6

    sget-object v12, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v11, v12, :cond_1

    move-object v11, v3

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    :goto_1
    move-object v8, v11

    .line 305
    .local v8, "dtype":Lgnu/bytecode/Type;
    move-object v11, v0

    move-object v12, v6

    move-object v13, v8

    invoke-virtual {v11, v12, v13}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v9, v11

    .line 306
    .local v9, "init":Lgnu/expr/Expression;
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move v12, v5

    move-object v13, v9

    aput-object v13, v11, v12

    .line 307
    move-object v11, v3

    iget-object v11, v11, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object v10, v11

    .line 308
    .local v10, "dvalue":Lgnu/expr/Expression;
    move-object v11, v10

    move-object v12, v6

    if-ne v11, v12, :cond_0

    .line 310
    move-object v11, v3

    move-object v12, v9

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v10, v13

    iput-object v12, v11, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 311
    move v11, v7

    if-nez v11, :cond_0

    .line 312
    move-object v11, v3

    move-object v12, v10

    invoke-virtual {v12}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 300
    :cond_0
    add-int/lit8 v5, v5, 0x1

    move-object v11, v3

    invoke-virtual {v11}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v11

    move-object v3, v11

    goto :goto_0

    .line 304
    .end local v8    # "dtype":Lgnu/bytecode/Type;
    .end local v9    # "init":Lgnu/expr/Expression;
    .end local v10    # "dvalue":Lgnu/expr/Expression;
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 316
    .end local v6    # "init0":Lgnu/expr/Expression;
    .end local v7    # "typeSpecified":Z
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/InlineCalls;->exitValue:Ljava/lang/Object;

    if-nez v11, :cond_3

    .line 317
    move-object v11, v1

    move-object v12, v0

    move-object v13, v1

    iget-object v13, v13, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v12

    iput-object v12, v11, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 318
    :cond_3
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    instance-of v11, v11, Lgnu/expr/ReferenceExp;

    if-eqz v11, :cond_5

    .line 320
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    check-cast v11, Lgnu/expr/ReferenceExp;

    move-object v5, v11

    .line 321
    .local v5, "ref":Lgnu/expr/ReferenceExp;
    move-object v11, v5

    invoke-virtual {v11}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v11

    move-object v6, v11

    .line 322
    .local v6, "d":Lgnu/expr/Declaration;
    move-object v11, v6

    if-eqz v11, :cond_5

    move-object v11, v6

    iget-object v11, v11, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object v12, v1

    if-ne v11, v12, :cond_5

    move-object v11, v5

    invoke-virtual {v11}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v11

    if-nez v11, :cond_5

    .line 324
    move v11, v4

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 326
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object v7, v11

    .line 327
    .local v7, "init":Lgnu/expr/Expression;
    move-object v11, v6

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v11

    move-object v8, v11

    .line 330
    .local v8, "texp":Lgnu/expr/Expression;
    move-object v11, v8

    sget-object v12, Lgnu/expr/QuoteExp;->classObjectExp:Lgnu/expr/QuoteExp;

    if-eq v11, v12, :cond_4

    .line 331
    move-object v11, v0

    move-object v12, v7

    move-object v13, v8

    invoke-static {v12, v13}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v7, v11

    .line 332
    :cond_4
    move-object v11, v7

    move-object v0, v11

    .line 338
    .end local v0    # "this":Lgnu/expr/InlineCalls;
    .end local v5    # "ref":Lgnu/expr/ReferenceExp;
    .end local v6    # "d":Lgnu/expr/Declaration;
    .end local v7    # "init":Lgnu/expr/Expression;
    .end local v8    # "texp":Lgnu/expr/Expression;
    :goto_2
    return-object v0

    .restart local v0    # "this":Lgnu/expr/InlineCalls;
    :cond_5
    move-object v11, v1

    move-object v0, v11

    goto :goto_2
.end method

.method protected bridge synthetic visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/LetExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/bytecode/Type;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/InlineCalls;->visitLetExp(Lgnu/expr/LetExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method protected visitQuoteExp(Lgnu/expr/QuoteExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 11

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/QuoteExp;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getRawType()Lgnu/bytecode/Type;

    move-result-object v8

    if-nez v8, :cond_1

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->isSharedConstant()Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    move-object v3, v9

    .local v3, "value":Ljava/lang/Object;
    if-eqz v8, :cond_1

    .line 182
    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v8}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v8

    move-object v4, v8

    .line 183
    .local v4, "language":Lgnu/expr/Language;
    move-object v8, v4

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    move-object v5, v8

    .line 184
    .local v5, "vtype":Lgnu/bytecode/Type;
    move-object v8, v5

    sget-object v9, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v8, v9, :cond_0

    .line 185
    sget-object v8, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    move-object v5, v8

    .line 186
    :cond_0
    move-object v8, v1

    move-object v9, v5

    iput-object v9, v8, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    .line 187
    move-object v8, v2

    instance-of v8, v8, Lgnu/bytecode/PrimType;

    if-eqz v8, :cond_1

    .line 189
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v6, v8

    .line 190
    .local v6, "sig1":C
    move v8, v6

    const/16 v9, 0x49

    if-ne v8, v9, :cond_2

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lgnu/expr/InlineCalls;->fixIntValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;

    move-result-object v8

    :goto_0
    move-object v7, v8

    .line 192
    .local v7, "ret":Lgnu/expr/QuoteExp;
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 193
    move-object v8, v7

    move-object v1, v8

    .line 196
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "language":Lgnu/expr/Language;
    .end local v5    # "vtype":Lgnu/bytecode/Type;
    .end local v6    # "sig1":C
    .end local v7    # "ret":Lgnu/expr/QuoteExp;
    :cond_1
    move-object v8, v1

    move-object v0, v8

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0

    .line 190
    .restart local v0    # "this":Lgnu/expr/InlineCalls;
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v4    # "language":Lgnu/expr/Language;
    .restart local v5    # "vtype":Lgnu/bytecode/Type;
    .restart local v6    # "sig1":C
    :cond_2
    move v8, v6

    const/16 v9, 0x4a

    if-ne v8, v9, :cond_3

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lgnu/expr/InlineCalls;->fixLongValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;

    move-result-object v8

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic visitQuoteExp(Lgnu/expr/QuoteExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/QuoteExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/bytecode/Type;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/InlineCalls;->visitQuoteExp(Lgnu/expr/QuoteExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 14

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ReferenceExp;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v8

    move-object v3, v8

    .line 202
    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v8, v3

    if-eqz v8, :cond_3

    move-object v8, v3

    iget-object v8, v8, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-nez v8, :cond_3

    move-object v8, v3

    invoke-virtual {v8}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v8

    if-nez v8, :cond_3

    .line 204
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v8

    move-object v4, v8

    .line 205
    .local v4, "dval":Lgnu/expr/Expression;
    move-object v8, v4

    instance-of v8, v8, Lgnu/expr/QuoteExp;

    if-eqz v8, :cond_0

    move-object v8, v4

    sget-object v9, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v8, v9, :cond_0

    .line 206
    move-object v8, v0

    move-object v9, v4

    check-cast v9, Lgnu/expr/QuoteExp;

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/expr/InlineCalls;->visitQuoteExp(Lgnu/expr/QuoteExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v8

    move-object v0, v8

    .line 232
    .end local v0    # "this":Lgnu/expr/InlineCalls;
    .end local v4    # "dval":Lgnu/expr/Expression;
    :goto_0
    return-object v0

    .line 207
    .restart local v0    # "this":Lgnu/expr/InlineCalls;
    .restart local v4    # "dval":Lgnu/expr/Expression;
    :cond_0
    move-object v8, v4

    instance-of v8, v8, Lgnu/expr/ReferenceExp;

    if-eqz v8, :cond_2

    move-object v8, v3

    invoke-virtual {v8}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v8

    if-nez v8, :cond_2

    .line 209
    move-object v8, v4

    check-cast v8, Lgnu/expr/ReferenceExp;

    move-object v5, v8

    .line 210
    .local v5, "rval":Lgnu/expr/ReferenceExp;
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v8

    move-object v6, v8

    .line 211
    .local v6, "rdecl":Lgnu/expr/Declaration;
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    move-object v7, v8

    .line 212
    .local v7, "dtype":Lgnu/bytecode/Type;
    move-object v8, v6

    if-eqz v8, :cond_2

    move-object v8, v6

    invoke-virtual {v8}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v8

    if-nez v8, :cond_2

    move-object v8, v7

    if-eqz v8, :cond_1

    move-object v8, v7

    sget-object v9, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v8, v9, :cond_1

    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v9}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    if-ne v8, v9, :cond_2

    :cond_1
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v8

    if-nez v8, :cond_2

    .line 217
    move-object v8, v0

    move-object v9, v5

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/expr/InlineCalls;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 219
    .end local v5    # "rval":Lgnu/expr/ReferenceExp;
    .end local v6    # "rdecl":Lgnu/expr/Declaration;
    .end local v7    # "dtype":Lgnu/bytecode/Type;
    :cond_2
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v8

    if-nez v8, :cond_3

    move-object v8, v3

    iget-wide v8, v8, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v10, 0x100080

    and-long/2addr v8, v10

    const-wide/32 v10, 0x100080

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 228
    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    const/16 v9, 0x65

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unimplemented: reference to method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " as variable"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 229
    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    const/16 v9, 0x65

    move-object v10, v3

    const-string/jumbo v11, "here is the definition of "

    const-string/jumbo v12, ""

    invoke-virtual {v8, v9, v10, v11, v12}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v4    # "dval":Lgnu/expr/Expression;
    :cond_3
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Lgnu/expr/ExpExpVisitor;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/expr/Expression;

    move-object v0, v8

    goto/16 :goto_0
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ReferenceExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/bytecode/Type;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/InlineCalls;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method protected visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ScopeExp;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v5, v1

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/expr/ScopeExp;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 280
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/InlineCalls;->visitDeclarationTypes(Lgnu/expr/ScopeExp;)V

    .line 281
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    move-object v3, v5

    .local v3, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 284
    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-nez v5, :cond_0

    .line 286
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 287
    .local v4, "val":Lgnu/expr/Expression;
    move-object v5, v3

    sget-object v6, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v6, v5, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    .line 288
    move-object v5, v3

    move-object v6, v4

    if-eqz v6, :cond_1

    move-object v6, v4

    sget-object v7, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v6, v7, :cond_1

    move-object v6, v4

    invoke-virtual {v6}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 282
    .end local v4    # "val":Lgnu/expr/Expression;
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    .line 288
    .restart local v4    # "val":Lgnu/expr/Expression;
    :cond_1
    sget-object v6, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_1

    .line 293
    .end local v4    # "val":Lgnu/expr/Expression;
    :cond_2
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method protected bridge synthetic visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ScopeExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/bytecode/Type;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/InlineCalls;->visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 9

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/SetExp;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/SetExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    .line 369
    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lgnu/expr/ExpExpVisitor;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 370
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    iget-wide v4, v4, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v6, 0x100080

    and-long/2addr v4, v6

    const-wide/32 v6, 0x100080

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 373
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    const/16 v5, 0x65

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "can\'t assign to method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v4, v5, v6, v7}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 374
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    const-wide/16 v5, 0x2000

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 376
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-static {v4, v5}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v4

    if-gez v4, :cond_1

    .line 377
    move-object v4, v3

    sget-object v5, Lgnu/bytecode/Type;->errorType:Lgnu/bytecode/ObjectType;

    invoke-virtual {v4, v5}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 392
    :cond_1
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method protected bridge synthetic visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/SetExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/bytecode/Type;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/InlineCalls;->visitSetExp(Lgnu/expr/SetExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method protected visitSetExpValue(Lgnu/expr/Expression;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "new_value":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v4, v5, v6}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/InlineCalls;
    :cond_1
    move-object v6, v3

    iget-object v6, v6, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    goto :goto_0
.end method

.method protected bridge synthetic visitSetExpValue(Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x2":Lgnu/expr/Declaration;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Lgnu/bytecode/Type;

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/expr/InlineCalls;->visitSetExpValue(Lgnu/expr/Expression;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method

.method protected visitTryExp(Lgnu/expr/TryExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/TryExp;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/TryExp;->getCatchClauses()Lgnu/expr/CatchClause;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/TryExp;->getFinallyClause()Lgnu/expr/Expression;

    move-result-object v3

    if-nez v3, :cond_0

    .line 355
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .line 357
    .end local v0    # "this":Lgnu/expr/InlineCalls;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/expr/InlineCalls;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ExpExpVisitor;->visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Expression;

    move-object v0, v3

    goto :goto_0
.end method

.method protected bridge synthetic visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/InlineCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/TryExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/bytecode/Type;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/InlineCalls;->visitTryExp(Lgnu/expr/TryExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/InlineCalls;
    return-object v0
.end method
