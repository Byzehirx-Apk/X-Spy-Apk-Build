.class public Lgnu/kawa/reflect/CompileInvoke;
.super Ljava/lang/Object;
.source "CompileInvoke.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/CompileInvoke;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append([Lgnu/expr/PrimProcedure;ILjava/lang/StringBuffer;)V
    .locals 7

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "methods":[Lgnu/expr/PrimProcedure;
    move v1, p1

    .local v1, "mcount":I
    move-object v2, p2

    .local v2, "sbuf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 457
    move-object v4, v2

    const-string/jumbo v5, "\n  candidate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 458
    move-object v4, v2

    move-object v5, v0

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 455
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 460
    :cond_0
    return-void
.end method

.method static checkKeywords(Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;ILgnu/bytecode/ClassType;)[Ljava/lang/Object;
    .locals 15

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/ObjectType;
    move-object/from16 v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move/from16 v2, p2

    .local v2, "start":I
    move-object/from16 v3, p3

    .local v3, "caller":Lgnu/bytecode/ClassType;
    move-object v11, v1

    array-length v11, v11

    move v4, v11

    .line 420
    .local v4, "len":I
    const/4 v11, 0x0

    move v5, v11

    .line 422
    .local v5, "npairs":I
    :goto_0
    move v11, v2

    const/4 v12, 0x2

    move v13, v5

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v12, v4

    if-ge v11, v12, :cond_0

    move-object v11, v1

    move v12, v2

    const/4 v13, 0x2

    move v14, v5

    mul-int/2addr v13, v14

    add-int/2addr v12, v13

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lgnu/expr/Keyword;

    if-eqz v11, :cond_0

    .line 423
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 424
    :cond_0
    move v11, v5

    new-array v11, v11, [Ljava/lang/Object;

    move-object v6, v11

    .line 425
    .local v6, "fields":[Ljava/lang/Object;
    const/4 v11, 0x0

    move v7, v11

    .local v7, "i":I
    :goto_1
    move v11, v7

    move v12, v5

    if-ge v11, v12, :cond_3

    .line 427
    move-object v11, v1

    move v12, v2

    const/4 v13, 0x2

    move v14, v7

    mul-int/2addr v13, v14

    add-int/2addr v12, v13

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    .line 428
    .local v8, "value":Ljava/lang/Object;
    move-object v11, v8

    check-cast v11, Lgnu/expr/Keyword;

    invoke-virtual {v11}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 430
    .local v9, "name":Ljava/lang/String;
    move-object v11, v0

    move-object v12, v9

    move-object v13, v3

    invoke-static {v11, v12, v13}, Lgnu/kawa/reflect/SlotSet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v11

    move-object v10, v11

    .line 431
    .local v10, "slot":Lgnu/bytecode/Member;
    move-object v11, v10

    if-nez v11, :cond_1

    .line 436
    move-object v11, v0

    const-string/jumbo v12, "add"

    move-object v13, v9

    invoke-static {v12, v13}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lgnu/kawa/reflect/SlotSet;->type1Array:[Lgnu/bytecode/Type;

    invoke-virtual {v11, v12, v13}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v11

    move-object v10, v11

    .line 438
    :cond_1
    move-object v11, v6

    move v12, v7

    move-object v13, v10

    if-eqz v13, :cond_2

    move-object v13, v10

    :goto_2
    aput-object v13, v11, v12

    .line 425
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 438
    :cond_2
    move-object v13, v9

    goto :goto_2

    .line 440
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "slot":Lgnu/bytecode/Member;
    :cond_3
    move-object v11, v6

    move-object v0, v11

    .end local v0    # "type":Lgnu/bytecode/ObjectType;
    return-object v0
.end method

.method private static getMethodName([Lgnu/expr/Expression;C)Ljava/lang/String;
    .locals 6

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "args":[Lgnu/expr/Expression;
    move v1, p1

    .local v1, "kind":C
    move v3, v1

    const/16 v4, 0x4e

    if-ne v3, v4, :cond_0

    .line 446
    const-string/jumbo v3, "<init>"

    move-object v0, v3

    .line 450
    .end local v0    # "args":[Lgnu/expr/Expression;
    :goto_0
    return-object v0

    .line 447
    .restart local v0    # "args":[Lgnu/expr/Expression;
    :cond_0
    move v3, v1

    const/16 v4, 0x50

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    :goto_1
    move v2, v3

    .line 448
    .local v2, "nameIndex":I
    move-object v3, v0

    array-length v3, v3

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    if-lt v3, v4, :cond_2

    .line 449
    move-object v3, v0

    move v4, v2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lgnu/kawa/reflect/ClassMethods;->checkName(Lgnu/expr/Expression;Z)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 447
    .end local v2    # "nameIndex":I
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 450
    .restart local v2    # "nameIndex":I
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method protected static getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;Lgnu/kawa/reflect/Invoke;)[Lgnu/expr/PrimProcedure;
    .locals 10

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "ctype":Lgnu/bytecode/ObjectType;
    move-object v1, p1

    .local v1, "mname":Ljava/lang/String;
    move-object v2, p2

    .local v2, "caller":Lgnu/bytecode/ClassType;
    move-object v3, p3

    .local v3, "iproc":Lgnu/kawa/reflect/Invoke;
    move-object v5, v3

    iget-char v5, v5, Lgnu/kawa/reflect/Invoke;->kind:C

    move v4, v5

    .line 466
    .local v4, "kind":I
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    const/16 v8, 0x50

    if-ne v7, v8, :cond_0

    const/16 v7, 0x50

    :goto_0
    move-object v8, v2

    move-object v9, v3

    iget-object v9, v9, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    invoke-static {v5, v6, v7, v8, v9}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "ctype":Lgnu/bytecode/ObjectType;
    return-object v0

    .restart local v0    # "ctype":Lgnu/bytecode/ObjectType;
    :cond_0
    move v7, v4

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_1

    move v7, v4

    const/16 v8, 0x56

    if-ne v7, v8, :cond_2

    :cond_1
    const/16 v7, 0x56

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;
    .locals 17

    .prologue
    .line 514
    move-object/from16 v1, p0

    .local v1, "type":Lgnu/bytecode/ClassType;
    move-object/from16 v2, p1

    .local v2, "name":Ljava/lang/String;
    move-object/from16 v3, p2

    .local v3, "args":[Lgnu/expr/Expression;
    const-class v16, Lgnu/kawa/reflect/CompileInvoke;

    monitor-enter v16

    move-object v10, v1

    move-object v11, v2

    const/4 v12, 0x0

    :try_start_0
    sget-object v13, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    invoke-static {v10, v11, v12, v13}, Lgnu/kawa/reflect/CompileInvoke;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;Lgnu/kawa/reflect/Invoke;)[Lgnu/expr/PrimProcedure;

    move-result-object v10

    move-object v4, v10

    .line 515
    .local v4, "methods":[Lgnu/expr/PrimProcedure;
    move-object v10, v4

    move-object v11, v1

    move-object v12, v3

    move-object v13, v3

    array-length v13, v13

    const/4 v14, 0x0

    const/4 v15, -0x1

    invoke-static/range {v10 .. v15}, Lgnu/kawa/reflect/CompileInvoke;->selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    move-wide v5, v10

    .line 516
    .local v5, "num":J
    move-wide v10, v5

    const/16 v12, 0x20

    shr-long/2addr v10, v12

    long-to-int v10, v10

    move v7, v10

    .line 517
    .local v7, "okCount":I
    move-wide v10, v5

    long-to-int v10, v10

    move v8, v10

    .line 519
    .local v8, "maybeCount":I
    move-object v10, v4

    if-nez v10, :cond_0

    .line 520
    const/4 v10, -0x1

    move v9, v10

    .line 527
    .local v9, "index":I
    :goto_0
    move v10, v9

    if-gez v10, :cond_3

    const/4 v10, 0x0

    :goto_1
    move-object v1, v10

    .end local v1    # "type":Lgnu/bytecode/ClassType;
    monitor-exit v16

    return-object v1

    .line 521
    .end local v9    # "index":I
    .restart local v1    # "type":Lgnu/bytecode/ClassType;
    :cond_0
    move v10, v7

    if-lez v10, :cond_1

    .line 522
    move-object v10, v4

    move v11, v7

    :try_start_1
    invoke-static {v10, v11}, Lgnu/mapping/MethodProc;->mostSpecific([Lgnu/mapping/MethodProc;I)I

    move-result v10

    move v9, v10

    .restart local v9    # "index":I
    goto :goto_0

    .line 523
    .end local v9    # "index":I
    :cond_1
    move v10, v8

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 524
    const/4 v10, 0x0

    move v9, v10

    .restart local v9    # "index":I
    goto :goto_0

    .line 526
    .end local v9    # "index":I
    :cond_2
    const/4 v10, -0x1

    move v9, v10

    .restart local v9    # "index":I
    goto :goto_0

    .line 527
    :cond_3
    move-object v10, v4

    move v11, v9

    aget-object v10, v10, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 514
    .end local v4    # "methods":[Lgnu/expr/PrimProcedure;
    .end local v5    # "num":J
    .end local v7    # "okCount":I
    .end local v8    # "maybeCount":I
    .end local v9    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v16

    .end local v1    # "type":Lgnu/bytecode/ClassType;
    throw v1
.end method

.method static hasKeywordArgument(I[Lgnu/expr/Expression;)I
    .locals 5

    .prologue
    .line 475
    move v0, p0

    .local v0, "argsStartIndex":I
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move v3, v0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 477
    move-object v3, v1

    move v4, v2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/expr/Keyword;

    if-eqz v3, :cond_0

    .line 478
    move v3, v2

    move v0, v3

    .line 480
    .end local v0    # "argsStartIndex":I
    :goto_1
    return v0

    .line 475
    .restart local v0    # "argsStartIndex":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move v0, v3

    goto :goto_1
.end method

.method private static selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J
    .locals 14

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "methods":[Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ObjectType;
    move-object/from16 v2, p2

    .local v2, "args":[Lgnu/expr/Expression;
    move/from16 v3, p3

    .local v3, "margsLength":I
    move/from16 v4, p4

    .local v4, "argsStartIndex":I
    move/from16 v5, p5

    .local v5, "objIndex":I
    move v11, v3

    new-array v11, v11, [Lgnu/bytecode/Type;

    move-object v6, v11

    .line 490
    .local v6, "atypes":[Lgnu/bytecode/Type;
    const/4 v11, 0x0

    move v7, v11

    .line 491
    .local v7, "dst":I
    move v11, v5

    if-ltz v11, :cond_0

    .line 492
    move-object v11, v6

    move v12, v7

    add-int/lit8 v7, v7, 0x1

    move-object v13, v1

    aput-object v13, v11, v12

    .line 493
    :cond_0
    move v11, v4

    move v8, v11

    .line 494
    .local v8, "src":I
    :goto_0
    move v11, v8

    move-object v12, v2

    array-length v12, v12

    if-ge v11, v12, :cond_4

    move v11, v7

    move-object v12, v6

    array-length v12, v12

    if-ge v11, v12, :cond_4

    .line 497
    move-object v11, v2

    move v12, v8

    aget-object v11, v11, v12

    move-object v9, v11

    .line 498
    .local v9, "arg":Lgnu/expr/Expression;
    const/4 v11, 0x0

    move-object v10, v11

    .line 500
    .local v10, "atype":Lgnu/bytecode/Type;
    move-object v11, v9

    invoke-static {v11}, Lgnu/expr/InlineCalls;->checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 501
    sget-object v11, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object v10, v11

    .line 506
    :cond_1
    :goto_1
    move-object v11, v6

    move v12, v7

    move-object v13, v10

    aput-object v13, v11, v12

    .line 495
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 502
    :cond_2
    move-object v11, v9

    invoke-static {v11}, Lgnu/expr/InlineCalls;->checkLongValue(Lgnu/expr/Expression;)Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 503
    sget-object v11, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    move-object v10, v11

    goto :goto_1

    .line 504
    :cond_3
    move-object v11, v10

    if-nez v11, :cond_1

    .line 505
    move-object v11, v9

    invoke-virtual {v11}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    move-object v10, v11

    goto :goto_1

    .line 508
    .end local v9    # "arg":Lgnu/expr/Expression;
    .end local v10    # "atype":Lgnu/bytecode/Type;
    :cond_4
    move-object v11, v0

    move-object v12, v6

    invoke-static {v11, v12}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;[Lgnu/bytecode/Type;)J

    move-result-wide v11

    move-wide v0, v11

    .end local v0    # "methods":[Lgnu/expr/PrimProcedure;
    return-wide v0
.end method

.method public static validateApplyInvoke(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 47

    .prologue
    .line 13
    move-object/from16 v3, p0

    .local v3, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v4, p1

    .local v4, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v5, p2

    .local v5, "required":Lgnu/bytecode/Type;
    move-object/from16 v6, p3

    .local v6, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v36, v6

    check-cast v36, Lgnu/kawa/reflect/Invoke;

    move-object/from16 v7, v36

    .line 14
    .local v7, "iproc":Lgnu/kawa/reflect/Invoke;
    move-object/from16 v36, v7

    move-object/from16 v0, v36

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v36, v0

    move/from16 v8, v36

    .line 15
    .local v8, "kind":C
    move-object/from16 v36, v4

    invoke-virtual/range {v36 .. v36}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v36

    move-object/from16 v9, v36

    .line 16
    .local v9, "comp":Lgnu/expr/Compilation;
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v36

    move-object/from16 v10, v36

    .line 17
    .local v10, "args":[Lgnu/expr/Expression;
    move-object/from16 v36, v10

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v11, v36

    .line 18
    .local v11, "nargs":I
    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lgnu/expr/Compilation;->mustCompile:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1

    move/from16 v36, v11

    if-eqz v36, :cond_1

    move/from16 v36, v8

    const/16 v37, 0x56

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_0

    move/from16 v36, v8

    const/16 v37, 0x2a

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2

    :cond_0
    move/from16 v36, v11

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2

    .line 23
    :cond_1
    move-object/from16 v36, v3

    move-object/from16 v37, v4

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 24
    move-object/from16 v36, v3

    move-object/from16 v3, v36

    .line 411
    .end local v3    # "exp":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v3

    .line 27
    .restart local v3    # "exp":Lgnu/expr/ApplyExp;
    :cond_2
    move-object/from16 v36, v4

    move-object/from16 v37, v10

    const/16 v38, 0x0

    aget-object v37, v37, v38

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v36

    move-object/from16 v13, v36

    .line 28
    .local v13, "arg0":Lgnu/expr/Expression;
    move-object/from16 v36, v10

    const/16 v37, 0x0

    move-object/from16 v38, v13

    aput-object v38, v36, v37

    .line 29
    move/from16 v36, v8

    const/16 v37, 0x56

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_3

    move/from16 v36, v8

    const/16 v37, 0x2a

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_8

    :cond_3
    move-object/from16 v36, v13

    invoke-virtual/range {v36 .. v36}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v36

    :goto_1
    move-object/from16 v14, v36

    .line 30
    .local v14, "type0":Lgnu/bytecode/Type;
    move-object/from16 v36, v14

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/expr/PairClassType;

    move/from16 v36, v0

    if-eqz v36, :cond_9

    move/from16 v36, v8

    const/16 v37, 0x4e

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_9

    .line 31
    move-object/from16 v36, v14

    check-cast v36, Lgnu/expr/PairClassType;

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v36, v0

    move-object/from16 v12, v36

    .line 36
    .local v12, "type":Lgnu/bytecode/ObjectType;
    :goto_2
    move-object/from16 v36, v10

    move/from16 v37, v8

    invoke-static/range {v36 .. v37}, Lgnu/kawa/reflect/CompileInvoke;->getMethodName([Lgnu/expr/Expression;C)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v15, v36

    .line 39
    .local v15, "name":Ljava/lang/String;
    move/from16 v36, v8

    const/16 v37, 0x56

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_4

    move/from16 v36, v8

    const/16 v37, 0x2a

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_b

    .line 41
    :cond_4
    move/from16 v36, v11

    const/16 v37, 0x1

    add-int/lit8 v36, v36, -0x1

    move/from16 v16, v36

    .line 42
    .local v16, "margsLength":I
    const/16 v36, 0x2

    move/from16 v17, v36

    .line 43
    .local v17, "argsStartIndex":I
    const/16 v36, 0x0

    move/from16 v18, v36

    .line 69
    .local v18, "objIndex":I
    :goto_3
    move/from16 v36, v8

    const/16 v37, 0x4e

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_14

    move-object/from16 v36, v12

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v36, v0

    if-eqz v36, :cond_14

    .line 71
    move-object/from16 v36, v12

    check-cast v36, Lgnu/bytecode/ArrayType;

    move-object/from16 v19, v36

    .line 72
    .local v19, "atype":Lgnu/bytecode/ArrayType;
    move-object/from16 v36, v19

    invoke-virtual/range {v36 .. v36}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v36

    move-object/from16 v20, v36

    .line 73
    .local v20, "elementType":Lgnu/bytecode/Type;
    const/16 v36, 0x0

    move-object/from16 v21, v36

    .line 74
    .local v21, "sizeArg":Lgnu/expr/Expression;
    const/16 v36, 0x0

    move/from16 v22, v36

    .line 75
    .local v22, "lengthSpecified":Z
    move-object/from16 v36, v10

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_6

    move-object/from16 v36, v10

    const/16 v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v36, v0

    if-eqz v36, :cond_6

    .line 77
    move-object/from16 v36, v10

    const/16 v37, 0x1

    aget-object v36, v36, v37

    check-cast v36, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v36 .. v36}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v23, v36

    .line 78
    .local v23, "arg1":Ljava/lang/Object;
    move-object/from16 v36, v23

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v36, v0

    if-eqz v36, :cond_6

    const-string/jumbo v36, "length"

    move-object/from16 v37, v23

    check-cast v37, Lgnu/expr/Keyword;

    invoke-virtual/range {v37 .. v37}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v46, v37

    move-object/from16 v37, v46

    move-object/from16 v38, v46

    move-object/from16 v15, v38

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_5

    const-string/jumbo v36, "size"

    move-object/from16 v37, v15

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_6

    .line 82
    :cond_5
    move-object/from16 v36, v10

    const/16 v37, 0x2

    aget-object v36, v36, v37

    move-object/from16 v21, v36

    .line 83
    const/16 v36, 0x1

    move/from16 v22, v36

    .line 86
    .end local v23    # "arg1":Ljava/lang/Object;
    :cond_6
    move-object/from16 v36, v21

    if-nez v36, :cond_7

    .line 87
    new-instance v36, Ljava/lang/Integer;

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v38, v10

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    const/16 v39, 0x1

    add-int/lit8 v38, v38, -0x1

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    invoke-static/range {v36 .. v36}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v36

    move-object/from16 v21, v36

    .line 88
    :cond_7
    move-object/from16 v36, v4

    move-object/from16 v37, v21

    sget-object v38, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v36

    move-object/from16 v21, v36

    .line 89
    new-instance v36, Lgnu/expr/ApplyExp;

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    new-instance v38, Lgnu/kawa/reflect/ArrayNew;

    move-object/from16 v46, v38

    move-object/from16 v38, v46

    move-object/from16 v39, v46

    move-object/from16 v40, v20

    invoke-direct/range {v39 .. v40}, Lgnu/kawa/reflect/ArrayNew;-><init>(Lgnu/bytecode/Type;)V

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v39, v0

    move-object/from16 v46, v39

    move-object/from16 v39, v46

    move-object/from16 v40, v46

    const/16 v41, 0x0

    move-object/from16 v42, v21

    aput-object v42, v40, v41

    invoke-direct/range {v37 .. v39}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v23, v36

    .line 91
    .local v23, "alloc":Lgnu/expr/ApplyExp;
    move-object/from16 v36, v23

    move-object/from16 v37, v19

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 92
    move/from16 v36, v22

    if-eqz v36, :cond_10

    move-object/from16 v36, v10

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_10

    .line 93
    move-object/from16 v36, v23

    move-object/from16 v3, v36

    goto/16 :goto_0

    .line 29
    .end local v12    # "type":Lgnu/bytecode/ObjectType;
    .end local v14    # "type0":Lgnu/bytecode/Type;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "margsLength":I
    .end local v17    # "argsStartIndex":I
    .end local v18    # "objIndex":I
    .end local v19    # "atype":Lgnu/bytecode/ArrayType;
    .end local v20    # "elementType":Lgnu/bytecode/Type;
    .end local v21    # "sizeArg":Lgnu/expr/Expression;
    .end local v22    # "lengthSpecified":Z
    .end local v23    # "alloc":Lgnu/expr/ApplyExp;
    :cond_8
    move-object/from16 v36, v7

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    move-object/from16 v36, v0

    move-object/from16 v37, v13

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v36

    goto/16 :goto_1

    .line 32
    .restart local v14    # "type0":Lgnu/bytecode/Type;
    :cond_9
    move-object/from16 v36, v14

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v36, v0

    if-eqz v36, :cond_a

    .line 33
    move-object/from16 v36, v14

    check-cast v36, Lgnu/bytecode/ObjectType;

    move-object/from16 v12, v36

    .restart local v12    # "type":Lgnu/bytecode/ObjectType;
    goto/16 :goto_2

    .line 35
    .end local v12    # "type":Lgnu/bytecode/ObjectType;
    :cond_a
    const/16 v36, 0x0

    move-object/from16 v12, v36

    .restart local v12    # "type":Lgnu/bytecode/ObjectType;
    goto/16 :goto_2

    .line 45
    .restart local v15    # "name":Ljava/lang/String;
    :cond_b
    move/from16 v36, v8

    const/16 v37, 0x4e

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_c

    .line 47
    move/from16 v36, v11

    move/from16 v16, v36

    .line 48
    .restart local v16    # "margsLength":I
    const/16 v36, 0x0

    move/from16 v17, v36

    .line 49
    .restart local v17    # "argsStartIndex":I
    const/16 v36, -0x1

    move/from16 v18, v36

    .restart local v18    # "objIndex":I
    goto/16 :goto_3

    .line 51
    .end local v16    # "margsLength":I
    .end local v17    # "argsStartIndex":I
    .end local v18    # "objIndex":I
    :cond_c
    move/from16 v36, v8

    const/16 v37, 0x53

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_d

    move/from16 v36, v8

    const/16 v37, 0x73

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_e

    .line 53
    :cond_d
    move/from16 v36, v11

    const/16 v37, 0x2

    add-int/lit8 v36, v36, -0x2

    move/from16 v16, v36

    .line 54
    .restart local v16    # "margsLength":I
    const/16 v36, 0x2

    move/from16 v17, v36

    .line 55
    .restart local v17    # "argsStartIndex":I
    const/16 v36, -0x1

    move/from16 v18, v36

    .restart local v18    # "objIndex":I
    goto/16 :goto_3

    .line 57
    .end local v16    # "margsLength":I
    .end local v17    # "argsStartIndex":I
    .end local v18    # "objIndex":I
    :cond_e
    move/from16 v36, v8

    const/16 v37, 0x50

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_f

    .line 59
    move/from16 v36, v11

    const/16 v37, 0x2

    add-int/lit8 v36, v36, -0x2

    move/from16 v16, v36

    .line 60
    .restart local v16    # "margsLength":I
    const/16 v36, 0x3

    move/from16 v17, v36

    .line 61
    .restart local v17    # "argsStartIndex":I
    const/16 v36, 0x1

    move/from16 v18, v36

    .restart local v18    # "objIndex":I
    goto/16 :goto_3

    .line 65
    .end local v16    # "margsLength":I
    .end local v17    # "argsStartIndex":I
    .end local v18    # "objIndex":I
    :cond_f
    move-object/from16 v36, v3

    move-object/from16 v37, v4

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 66
    move-object/from16 v36, v3

    move-object/from16 v3, v36

    goto/16 :goto_0

    .line 94
    .restart local v16    # "margsLength":I
    .restart local v17    # "argsStartIndex":I
    .restart local v18    # "objIndex":I
    .restart local v19    # "atype":Lgnu/bytecode/ArrayType;
    .restart local v20    # "elementType":Lgnu/bytecode/Type;
    .restart local v21    # "sizeArg":Lgnu/expr/Expression;
    .restart local v22    # "lengthSpecified":Z
    .restart local v23    # "alloc":Lgnu/expr/ApplyExp;
    :cond_10
    new-instance v36, Lgnu/expr/LetExp;

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v38, v0

    move-object/from16 v46, v38

    move-object/from16 v38, v46

    move-object/from16 v39, v46

    const/16 v40, 0x0

    move-object/from16 v41, v23

    aput-object v41, v39, v40

    invoke-direct/range {v37 .. v38}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object/from16 v24, v36

    .line 95
    .local v24, "let":Lgnu/expr/LetExp;
    move-object/from16 v36, v24

    const/16 v37, 0x0

    check-cast v37, Ljava/lang/String;

    move-object/from16 v38, v19

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v36

    move-object/from16 v25, v36

    .line 96
    .local v25, "adecl":Lgnu/expr/Declaration;
    move-object/from16 v36, v25

    move-object/from16 v37, v23

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 97
    new-instance v36, Lgnu/expr/BeginExp;

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    invoke-direct/range {v37 .. v37}, Lgnu/expr/BeginExp;-><init>()V

    move-object/from16 v26, v36

    .line 98
    .local v26, "begin":Lgnu/expr/BeginExp;
    const/16 v36, 0x0

    move/from16 v27, v36

    .line 99
    .local v27, "index":I
    move/from16 v36, v22

    if-eqz v36, :cond_12

    const/16 v36, 0x3

    :goto_4
    move/from16 v28, v36

    .local v28, "i":I
    :goto_5
    move/from16 v36, v28

    move-object/from16 v37, v10

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_13

    .line 101
    move-object/from16 v36, v10

    move/from16 v37, v28

    aget-object v36, v36, v37

    move-object/from16 v29, v36

    .line 102
    .local v29, "arg":Lgnu/expr/Expression;
    move/from16 v36, v22

    if-eqz v36, :cond_11

    move/from16 v36, v28

    const/16 v37, 0x1

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v37, v10

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_11

    move-object/from16 v36, v29

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v36, v0

    if-eqz v36, :cond_11

    .line 104
    move-object/from16 v36, v29

    check-cast v36, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v36 .. v36}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v30, v36

    .line 105
    .local v30, "key":Ljava/lang/Object;
    move-object/from16 v36, v30

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v36, v0

    if-eqz v36, :cond_11

    .line 107
    move-object/from16 v36, v30

    check-cast v36, Lgnu/expr/Keyword;

    invoke-virtual/range {v36 .. v36}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v31, v36

    .line 110
    .local v31, "kname":Ljava/lang/String;
    move-object/from16 v36, v31

    :try_start_0
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v27, v36

    .line 111
    move-object/from16 v36, v10

    add-int/lit8 v28, v28, 0x1

    move/from16 v37, v28

    aget-object v36, v36, v37
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v29, v36

    .line 117
    .line 120
    .end local v30    # "key":Ljava/lang/Object;
    .end local v31    # "kname":Ljava/lang/String;
    :cond_11
    move-object/from16 v36, v4

    move-object/from16 v37, v29

    move-object/from16 v38, v20

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v36

    move-object/from16 v29, v36

    .line 121
    move-object/from16 v36, v26

    new-instance v37, Lgnu/expr/ApplyExp;

    move-object/from16 v46, v37

    move-object/from16 v37, v46

    move-object/from16 v38, v46

    new-instance v39, Lgnu/kawa/reflect/ArraySet;

    move-object/from16 v46, v39

    move-object/from16 v39, v46

    move-object/from16 v40, v46

    move-object/from16 v41, v20

    invoke-direct/range {v40 .. v41}, Lgnu/kawa/reflect/ArraySet;-><init>(Lgnu/bytecode/Type;)V

    const/16 v40, 0x3

    move/from16 v0, v40

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v40, v0

    move-object/from16 v46, v40

    move-object/from16 v40, v46

    move-object/from16 v41, v46

    const/16 v42, 0x0

    new-instance v43, Lgnu/expr/ReferenceExp;

    move-object/from16 v46, v43

    move-object/from16 v43, v46

    move-object/from16 v44, v46

    move-object/from16 v45, v25

    invoke-direct/range {v44 .. v45}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v43, v41, v42

    move-object/from16 v46, v40

    move-object/from16 v40, v46

    move-object/from16 v41, v46

    const/16 v42, 0x1

    new-instance v43, Ljava/lang/Integer;

    move-object/from16 v46, v43

    move-object/from16 v43, v46

    move-object/from16 v44, v46

    move/from16 v45, v27

    invoke-direct/range {v44 .. v45}, Ljava/lang/Integer;-><init>(I)V

    invoke-static/range {v43 .. v43}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v43

    aput-object v43, v41, v42

    move-object/from16 v46, v40

    move-object/from16 v40, v46

    move-object/from16 v41, v46

    const/16 v42, 0x2

    move-object/from16 v43, v29

    aput-object v43, v41, v42

    invoke-direct/range {v38 .. v40}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 126
    add-int/lit8 v27, v27, 0x1

    .line 99
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_5

    .end local v28    # "i":I
    .end local v29    # "arg":Lgnu/expr/Expression;
    :cond_12
    const/16 v36, 0x1

    goto/16 :goto_4

    .line 113
    .restart local v28    # "i":I
    .restart local v29    # "arg":Lgnu/expr/Expression;
    .restart local v30    # "key":Ljava/lang/Object;
    .restart local v31    # "kname":Ljava/lang/String;
    :catch_0
    move-exception v36

    move-object/from16 v32, v36

    .line 115
    .local v32, "ex":Ljava/lang/Throwable;
    move-object/from16 v36, v9

    const/16 v37, 0x65

    new-instance v38, Ljava/lang/StringBuilder;

    move-object/from16 v46, v38

    move-object/from16 v38, v46

    move-object/from16 v39, v46

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "non-integer keyword \'"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v39, v31

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "\' in array constructor"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 116
    move-object/from16 v36, v3

    move-object/from16 v3, v36

    goto/16 :goto_0

    .line 128
    .end local v29    # "arg":Lgnu/expr/Expression;
    .end local v30    # "key":Ljava/lang/Object;
    .end local v31    # "kname":Ljava/lang/String;
    .end local v32    # "ex":Ljava/lang/Throwable;
    :cond_13
    move-object/from16 v36, v26

    new-instance v37, Lgnu/expr/ReferenceExp;

    move-object/from16 v46, v37

    move-object/from16 v37, v46

    move-object/from16 v38, v46

    move-object/from16 v39, v25

    invoke-direct/range {v38 .. v39}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 129
    move-object/from16 v36, v24

    move-object/from16 v37, v26

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 130
    move-object/from16 v36, v24

    move-object/from16 v3, v36

    goto/16 :goto_0

    .line 132
    .end local v19    # "atype":Lgnu/bytecode/ArrayType;
    .end local v20    # "elementType":Lgnu/bytecode/Type;
    .end local v21    # "sizeArg":Lgnu/expr/Expression;
    .end local v22    # "lengthSpecified":Z
    .end local v23    # "alloc":Lgnu/expr/ApplyExp;
    .end local v24    # "let":Lgnu/expr/LetExp;
    .end local v25    # "adecl":Lgnu/expr/Declaration;
    .end local v26    # "begin":Lgnu/expr/BeginExp;
    .end local v27    # "index":I
    .end local v28    # "i":I
    :cond_14
    move-object/from16 v36, v12

    if-eqz v36, :cond_4a

    move-object/from16 v36, v15

    if-eqz v36, :cond_4a

    .line 134
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/expr/TypeValue;

    move/from16 v36, v0

    if-eqz v36, :cond_15

    move/from16 v36, v8

    const/16 v37, 0x4e

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_15

    .line 136
    move-object/from16 v36, v12

    check-cast v36, Lgnu/expr/TypeValue;

    invoke-interface/range {v36 .. v36}, Lgnu/expr/TypeValue;->getConstructor()Lgnu/mapping/Procedure;

    move-result-object v36

    move-object/from16 v19, v36

    .line 137
    .local v19, "constructor":Lgnu/mapping/Procedure;
    move-object/from16 v36, v19

    if-eqz v36, :cond_15

    .line 139
    move/from16 v36, v11

    const/16 v37, 0x1

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v36, v0

    move-object/from16 v20, v36

    .line 140
    .local v20, "xargs":[Lgnu/expr/Expression;
    move-object/from16 v36, v10

    const/16 v37, 0x1

    move-object/from16 v38, v20

    const/16 v39, 0x0

    move/from16 v40, v11

    const/16 v41, 0x1

    add-int/lit8 v40, v40, -0x1

    invoke-static/range {v36 .. v40}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    move-object/from16 v36, v4

    new-instance v37, Lgnu/expr/ApplyExp;

    move-object/from16 v46, v37

    move-object/from16 v37, v46

    move-object/from16 v38, v46

    move-object/from16 v39, v19

    move-object/from16 v40, v20

    invoke-direct/range {v38 .. v40}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v38, v5

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v36

    move-object/from16 v3, v36

    goto/16 :goto_0

    .line 145
    .end local v19    # "constructor":Lgnu/mapping/Procedure;
    .end local v20    # "xargs":[Lgnu/expr/Expression;
    :cond_15
    move-object/from16 v36, v9

    if-nez v36, :cond_19

    const/16 v36, 0x0

    :goto_6
    move-object/from16 v20, v36

    .line 148
    .local v20, "caller":Lgnu/bytecode/ClassType;
    move-object/from16 v36, v12

    move-object/from16 v21, v36

    .line 152
    .local v21, "ctype":Lgnu/bytecode/ObjectType;
    move-object/from16 v36, v21

    move-object/from16 v37, v15

    move-object/from16 v38, v20

    move-object/from16 v39, v7

    :try_start_1
    invoke-static/range {v36 .. v39}, Lgnu/kawa/reflect/CompileInvoke;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;Lgnu/kawa/reflect/Invoke;)[Lgnu/expr/PrimProcedure;

    move-result-object v36

    move-object/from16 v19, v36

    .line 153
    .local v19, "methods":[Lgnu/expr/PrimProcedure;
    move-object/from16 v36, v19

    move/from16 v37, v16

    invoke-static/range {v36 .. v37}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v36

    move/from16 v22, v36

    .line 159
    .line 160
    .local v22, "numCode":I
    const/16 v36, -0x1

    move/from16 v23, v36

    .line 163
    .local v23, "index":I
    move/from16 v36, v8

    const/16 v37, 0x4e

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_26

    const/16 v36, 0x1

    move-object/from16 v37, v10

    invoke-static/range {v36 .. v37}, Lgnu/kawa/reflect/CompileInvoke;->hasKeywordArgument(I[Lgnu/expr/Expression;)I

    move-result v36

    move/from16 v46, v36

    move/from16 v36, v46

    move/from16 v37, v46

    move/from16 v25, v37

    .local v25, "keywordStart":I
    move-object/from16 v37, v10

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_16

    move/from16 v36, v22

    if-gtz v36, :cond_26

    move-object/from16 v36, v19

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v37, v0

    move-object/from16 v46, v37

    move-object/from16 v37, v46

    move-object/from16 v38, v46

    const/16 v39, 0x0

    sget-object v40, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    aput-object v40, v38, v39

    invoke-static/range {v36 .. v37}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;[Lgnu/bytecode/Type;)J

    move-result-wide v36

    const/16 v38, 0x20

    shr-long v36, v36, v38

    const-wide/16 v38, 0x1

    cmp-long v36, v36, v38

    if-nez v36, :cond_26

    :cond_16
    move-object/from16 v36, v21

    move-object/from16 v37, v10

    move/from16 v38, v25

    move-object/from16 v39, v20

    invoke-static/range {v36 .. v39}, Lgnu/kawa/reflect/CompileInvoke;->checkKeywords(Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;ILgnu/bytecode/ClassType;)[Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v24, v37

    .local v24, "slots":[Ljava/lang/Object;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x2

    mul-int/lit8 v36, v36, 0x2

    move-object/from16 v37, v10

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v38, v25

    sub-int v37, v37, v38

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_17

    move-object/from16 v36, v21

    const-string/jumbo v37, "add"

    const/16 v38, 0x56

    const/16 v39, 0x0

    move-object/from16 v40, v7

    move-object/from16 v0, v40

    iget-object v0, v0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    move-object/from16 v40, v0

    invoke-static/range {v36 .. v40}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v36

    const/16 v37, 0x2

    invoke-static/range {v36 .. v37}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;I)I

    move-result v36

    if-lez v36, :cond_26

    .line 174
    :cond_17
    const/16 v36, 0x0

    move-object/from16 v26, v36

    .line 175
    .local v26, "errbuf":Ljava/lang/StringBuffer;
    const/16 v36, 0x0

    move/from16 v27, v36

    .local v27, "i":I
    :goto_7
    move/from16 v36, v27

    move-object/from16 v37, v24

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_1c

    .line 177
    move-object/from16 v36, v24

    move/from16 v37, v27

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v36, v0

    if-eqz v36, :cond_18

    .line 179
    move-object/from16 v36, v26

    if-nez v36, :cond_1b

    .line 181
    new-instance v36, Ljava/lang/StringBuffer;

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v26, v36

    .line 182
    move-object/from16 v36, v26

    const-string/jumbo v37, "no field or setter "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 186
    :goto_8
    move-object/from16 v36, v26

    const/16 v37, 0x60

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 187
    move-object/from16 v36, v26

    move-object/from16 v37, v24

    move/from16 v38, v27

    aget-object v37, v37, v38

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 188
    move-object/from16 v36, v26

    const/16 v37, 0x27

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 175
    :cond_18
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 145
    .end local v19    # "methods":[Lgnu/expr/PrimProcedure;
    .end local v20    # "caller":Lgnu/bytecode/ClassType;
    .end local v21    # "ctype":Lgnu/bytecode/ObjectType;
    .end local v22    # "numCode":I
    .end local v23    # "index":I
    .end local v24    # "slots":[Ljava/lang/Object;
    .end local v25    # "keywordStart":I
    .end local v26    # "errbuf":Ljava/lang/StringBuffer;
    .end local v27    # "i":I
    :cond_19
    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1a

    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v36, v0

    goto/16 :goto_6

    :cond_1a
    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v36, v0

    goto/16 :goto_6

    .line 155
    .restart local v20    # "caller":Lgnu/bytecode/ClassType;
    .restart local v21    # "ctype":Lgnu/bytecode/ObjectType;
    :catch_1
    move-exception v36

    move-object/from16 v23, v36

    .line 157
    .local v23, "ex":Ljava/lang/Exception;
    move-object/from16 v36, v9

    const/16 v37, 0x77

    new-instance v38, Ljava/lang/StringBuilder;

    move-object/from16 v46, v38

    move-object/from16 v38, v46

    move-object/from16 v39, v46

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "unknown class: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v39, v12

    invoke-virtual/range {v39 .. v39}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 158
    move-object/from16 v36, v3

    move-object/from16 v3, v36

    goto/16 :goto_0

    .line 185
    .restart local v19    # "methods":[Lgnu/expr/PrimProcedure;
    .restart local v22    # "numCode":I
    .local v23, "index":I
    .restart local v24    # "slots":[Ljava/lang/Object;
    .restart local v25    # "keywordStart":I
    .restart local v26    # "errbuf":Ljava/lang/StringBuffer;
    .restart local v27    # "i":I
    :cond_1b
    move-object/from16 v36, v26

    const-string/jumbo v37, ", "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    goto :goto_8

    .line 191
    :cond_1c
    move-object/from16 v36, v26

    if-eqz v36, :cond_1d

    .line 193
    move-object/from16 v36, v26

    const-string/jumbo v37, " in class "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 194
    move-object/from16 v36, v26

    move-object/from16 v37, v12

    invoke-virtual/range {v37 .. v37}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 195
    move-object/from16 v36, v9

    const/16 v37, 0x77

    move-object/from16 v38, v26

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 196
    move-object/from16 v36, v3

    move-object/from16 v3, v36

    goto/16 :goto_0

    .line 201
    :cond_1d
    move/from16 v36, v25

    move-object/from16 v37, v10

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_1f

    .line 203
    move/from16 v36, v25

    move/from16 v0, v36

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v36, v0

    move-object/from16 v28, v36

    .line 204
    .local v28, "xargs":[Lgnu/expr/Expression;
    move-object/from16 v36, v10

    const/16 v37, 0x0

    move-object/from16 v38, v28

    const/16 v39, 0x0

    move/from16 v40, v25

    invoke-static/range {v36 .. v40}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    move-object/from16 v36, v4

    new-instance v37, Lgnu/expr/ApplyExp;

    move-object/from16 v46, v37

    move-object/from16 v37, v46

    move-object/from16 v38, v46

    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v39

    move-object/from16 v40, v28

    invoke-direct/range {v38 .. v40}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v38, v21

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v36

    check-cast v36, Lgnu/expr/ApplyExp;

    move-object/from16 v27, v36

    .line 209
    .end local v28    # "xargs":[Lgnu/expr/Expression;
    .local v27, "ae":Lgnu/expr/ApplyExp;
    :goto_9
    move-object/from16 v36, v27

    move-object/from16 v37, v21

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 210
    move-object/from16 v36, v27

    move-object/from16 v28, v36

    .line 211
    .local v28, "e":Lgnu/expr/Expression;
    move-object/from16 v36, v10

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    if-lez v36, :cond_25

    .line 213
    const/16 v36, 0x0

    move/from16 v29, v36

    .local v29, "i":I
    :goto_a
    move/from16 v36, v29

    move-object/from16 v37, v24

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_22

    .line 215
    move-object/from16 v36, v24

    move/from16 v37, v29

    aget-object v36, v36, v37

    move-object/from16 v30, v36

    .line 217
    .local v30, "slot":Ljava/lang/Object;
    move-object/from16 v36, v30

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/bytecode/Method;

    move/from16 v36, v0

    if-eqz v36, :cond_20

    .line 218
    move-object/from16 v36, v30

    check-cast v36, Lgnu/bytecode/Method;

    invoke-virtual/range {v36 .. v36}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v36

    const/16 v37, 0x0

    aget-object v36, v36, v37

    move-object/from16 v31, v36

    .line 223
    .local v31, "stype":Lgnu/bytecode/Type;
    :goto_b
    move-object/from16 v36, v31

    if-eqz v36, :cond_1e

    .line 224
    move-object/from16 v36, v7

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    move-object/from16 v36, v0

    move-object/from16 v37, v31

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v36

    move-object/from16 v31, v36

    .line 225
    :cond_1e
    move-object/from16 v36, v4

    move-object/from16 v37, v10

    move/from16 v38, v25

    const/16 v39, 0x2

    move/from16 v40, v29

    mul-int v39, v39, v40

    add-int v38, v38, v39

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    aget-object v37, v37, v38

    move-object/from16 v38, v31

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v36

    move-object/from16 v32, v36

    .line 226
    .local v32, "arg":Lgnu/expr/Expression;
    const/16 v36, 0x3

    move/from16 v0, v36

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v36, v0

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    const/16 v38, 0x0

    move-object/from16 v39, v27

    aput-object v39, v37, v38

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    const/16 v38, 0x1

    new-instance v39, Lgnu/expr/QuoteExp;

    move-object/from16 v46, v39

    move-object/from16 v39, v46

    move-object/from16 v40, v46

    move-object/from16 v41, v30

    invoke-direct/range {v40 .. v41}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v39, v37, v38

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    const/16 v38, 0x2

    move-object/from16 v39, v32

    aput-object v39, v37, v38

    move-object/from16 v33, v36

    .line 228
    .local v33, "sargs":[Lgnu/expr/Expression;
    new-instance v36, Lgnu/expr/ApplyExp;

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    sget-object v38, Lgnu/kawa/reflect/SlotSet;->setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

    move-object/from16 v39, v33

    invoke-direct/range {v37 .. v39}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v27, v36

    .line 229
    move-object/from16 v36, v27

    move-object/from16 v37, v21

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 213
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_a

    .line 208
    .end local v28    # "e":Lgnu/expr/Expression;
    .end local v29    # "i":I
    .end local v30    # "slot":Ljava/lang/Object;
    .end local v31    # "stype":Lgnu/bytecode/Type;
    .end local v32    # "arg":Lgnu/expr/Expression;
    .end local v33    # "sargs":[Lgnu/expr/Expression;
    .local v27, "i":I
    :cond_1f
    new-instance v36, Lgnu/expr/ApplyExp;

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v38, v19

    const/16 v39, 0x0

    aget-object v38, v38, v39

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v39, v0

    move-object/from16 v46, v39

    move-object/from16 v39, v46

    move-object/from16 v40, v46

    const/16 v41, 0x0

    move-object/from16 v42, v13

    aput-object v42, v40, v41

    invoke-direct/range {v37 .. v39}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v27, v36

    .local v27, "ae":Lgnu/expr/ApplyExp;
    goto/16 :goto_9

    .line 219
    .restart local v28    # "e":Lgnu/expr/Expression;
    .restart local v29    # "i":I
    .restart local v30    # "slot":Ljava/lang/Object;
    :cond_20
    move-object/from16 v36, v30

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/bytecode/Field;

    move/from16 v36, v0

    if-eqz v36, :cond_21

    .line 220
    move-object/from16 v36, v30

    check-cast v36, Lgnu/bytecode/Field;

    invoke-virtual/range {v36 .. v36}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v36

    move-object/from16 v31, v36

    .restart local v31    # "stype":Lgnu/bytecode/Type;
    goto/16 :goto_b

    .line 222
    .end local v31    # "stype":Lgnu/bytecode/Type;
    :cond_21
    const/16 v36, 0x0

    move-object/from16 v31, v36

    .restart local v31    # "stype":Lgnu/bytecode/Type;
    goto/16 :goto_b

    .line 231
    .end local v30    # "slot":Ljava/lang/Object;
    .end local v31    # "stype":Lgnu/bytecode/Type;
    :cond_22
    move/from16 v36, v25

    move-object/from16 v37, v10

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_23

    const/16 v36, 0x1

    :goto_c
    move/from16 v29, v36

    .line 233
    .local v29, "sargs":I
    move-object/from16 v36, v27

    move-object/from16 v28, v36

    .line 234
    move/from16 v36, v29

    move-object/from16 v37, v10

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_25

    .line 236
    new-instance v36, Lgnu/expr/LetExp;

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v38, v0

    move-object/from16 v46, v38

    move-object/from16 v38, v46

    move-object/from16 v39, v46

    const/16 v40, 0x0

    move-object/from16 v41, v28

    aput-object v41, v39, v40

    invoke-direct/range {v37 .. v38}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object/from16 v30, v36

    .line 237
    .local v30, "let":Lgnu/expr/LetExp;
    move-object/from16 v36, v30

    const/16 v37, 0x0

    check-cast v37, Ljava/lang/String;

    move-object/from16 v38, v21

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v36

    move-object/from16 v31, v36

    .line 238
    .local v31, "adecl":Lgnu/expr/Declaration;
    move-object/from16 v36, v31

    move-object/from16 v37, v28

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 239
    new-instance v36, Lgnu/expr/BeginExp;

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    invoke-direct/range {v37 .. v37}, Lgnu/expr/BeginExp;-><init>()V

    move-object/from16 v32, v36

    .line 240
    .local v32, "begin":Lgnu/expr/BeginExp;
    move/from16 v36, v29

    move/from16 v33, v36

    .local v33, "i":I
    :goto_d
    move/from16 v36, v33

    move-object/from16 v37, v10

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_24

    .line 242
    const/16 v36, 0x3

    move/from16 v0, v36

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v36, v0

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    const/16 v38, 0x0

    new-instance v39, Lgnu/expr/ReferenceExp;

    move-object/from16 v46, v39

    move-object/from16 v39, v46

    move-object/from16 v40, v46

    move-object/from16 v41, v31

    invoke-direct/range {v40 .. v41}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v39, v37, v38

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    const/16 v38, 0x1

    const-string/jumbo v39, "add"

    invoke-static/range {v39 .. v39}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v39

    aput-object v39, v37, v38

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    const/16 v38, 0x2

    move-object/from16 v39, v10

    move/from16 v40, v33

    aget-object v39, v39, v40

    aput-object v39, v37, v38

    move-object/from16 v34, v36

    .line 247
    .local v34, "iargs":[Lgnu/expr/Expression;
    move-object/from16 v36, v32

    move-object/from16 v37, v4

    new-instance v38, Lgnu/expr/ApplyExp;

    move-object/from16 v46, v38

    move-object/from16 v38, v46

    move-object/from16 v39, v46

    sget-object v40, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    move-object/from16 v41, v34

    invoke-direct/range {v39 .. v41}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 240
    add-int/lit8 v33, v33, 0x1

    goto :goto_d

    .line 231
    .end local v30    # "let":Lgnu/expr/LetExp;
    .end local v31    # "adecl":Lgnu/expr/Declaration;
    .end local v32    # "begin":Lgnu/expr/BeginExp;
    .end local v33    # "i":I
    .end local v34    # "iargs":[Lgnu/expr/Expression;
    .local v29, "i":I
    :cond_23
    const/16 v36, 0x2

    move-object/from16 v37, v24

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    mul-int v36, v36, v37

    move/from16 v37, v25

    add-int v36, v36, v37

    goto/16 :goto_c

    .line 251
    .local v29, "sargs":I
    .restart local v30    # "let":Lgnu/expr/LetExp;
    .restart local v31    # "adecl":Lgnu/expr/Declaration;
    .restart local v32    # "begin":Lgnu/expr/BeginExp;
    .restart local v33    # "i":I
    :cond_24
    move-object/from16 v36, v32

    new-instance v37, Lgnu/expr/ReferenceExp;

    move-object/from16 v46, v37

    move-object/from16 v37, v46

    move-object/from16 v38, v46

    move-object/from16 v39, v31

    invoke-direct/range {v38 .. v39}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 252
    move-object/from16 v36, v30

    move-object/from16 v37, v32

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 253
    move-object/from16 v36, v30

    move-object/from16 v28, v36

    .line 256
    .end local v29    # "sargs":I
    .end local v30    # "let":Lgnu/expr/LetExp;
    .end local v31    # "adecl":Lgnu/expr/Declaration;
    .end local v32    # "begin":Lgnu/expr/BeginExp;
    .end local v33    # "i":I
    :cond_25
    move-object/from16 v36, v4

    move-object/from16 v37, v28

    move-object/from16 v38, v3

    invoke-virtual/range {v37 .. v38}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v37

    move-object/from16 v38, v5

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/InlineCalls;->checkType(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v36

    move-object/from16 v3, v36

    goto/16 :goto_0

    .line 260
    .end local v24    # "slots":[Ljava/lang/Object;
    .end local v25    # "keywordStart":I
    .end local v26    # "errbuf":Ljava/lang/StringBuffer;
    .end local v27    # "ae":Lgnu/expr/ApplyExp;
    .end local v28    # "e":Lgnu/expr/Expression;
    :cond_26
    move/from16 v36, v22

    if-ltz v36, :cond_39

    .line 262
    const/16 v36, 0x1

    move/from16 v28, v36

    .local v28, "i":I
    :goto_e
    move/from16 v36, v28

    move/from16 v37, v11

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_33

    .line 264
    const/16 v36, 0x0

    move-object/from16 v29, v36

    .line 265
    .local v29, "atype":Lgnu/bytecode/Type;
    move/from16 v36, v28

    move/from16 v37, v11

    const/16 v38, 0x1

    add-int/lit8 v37, v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2a

    const/16 v36, 0x1

    :goto_f
    move/from16 v30, v36

    .line 266
    .local v30, "last":Z
    move/from16 v36, v8

    const/16 v37, 0x50

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_27

    move/from16 v36, v28

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_28

    :cond_27
    move/from16 v36, v8

    const/16 v37, 0x4e

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_2b

    move/from16 v36, v28

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2b

    .line 267
    :cond_28
    const/16 v36, 0x0

    move-object/from16 v29, v36

    .line 298
    :cond_29
    :goto_10
    move-object/from16 v36, v10

    move/from16 v37, v28

    move-object/from16 v38, v4

    move-object/from16 v39, v10

    move/from16 v40, v28

    aget-object v39, v39, v40

    move-object/from16 v40, v29

    invoke-virtual/range {v38 .. v40}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v38

    aput-object v38, v36, v37

    .line 262
    add-int/lit8 v28, v28, 0x1

    goto :goto_e

    .line 265
    .end local v30    # "last":Z
    :cond_2a
    const/16 v36, 0x0

    goto :goto_f

    .line 268
    .restart local v30    # "last":Z
    :cond_2b
    move/from16 v36, v8

    const/16 v37, 0x50

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2c

    move/from16 v36, v28

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2c

    .line 269
    move-object/from16 v36, v21

    move-object/from16 v29, v36

    goto :goto_10

    .line 270
    :cond_2c
    move/from16 v36, v22

    if-lez v36, :cond_29

    .line 272
    move/from16 v36, v28

    move/from16 v37, v8

    const/16 v38, 0x4e

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_2d

    const/16 v37, 0x1

    :goto_11
    sub-int v36, v36, v37

    move/from16 v31, v36

    .line 273
    .local v31, "pi":I
    const/16 v36, 0x0

    move/from16 v32, v36

    .local v32, "j":I
    :goto_12
    move/from16 v36, v32

    move/from16 v37, v22

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_29

    .line 275
    move-object/from16 v36, v19

    move/from16 v37, v32

    aget-object v36, v36, v37

    move-object/from16 v33, v36

    .line 276
    .local v33, "pproc":Lgnu/expr/PrimProcedure;
    move/from16 v36, v31

    move/from16 v37, v8

    const/16 v38, 0x53

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_2e

    move-object/from16 v37, v33

    invoke-virtual/range {v37 .. v37}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v37

    if-eqz v37, :cond_2e

    const/16 v37, 0x1

    :goto_13
    add-int v36, v36, v37

    move/from16 v34, v36

    .line 279
    .local v34, "pii":I
    move/from16 v36, v30

    if-eqz v36, :cond_2f

    move-object/from16 v36, v33

    invoke-virtual/range {v36 .. v36}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v36

    if-eqz v36, :cond_2f

    move/from16 v36, v34

    move-object/from16 v37, v33

    invoke-virtual/range {v37 .. v37}, Lgnu/expr/PrimProcedure;->minArgs()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2f

    .line 281
    const/16 v36, 0x0

    move-object/from16 v29, v36

    .line 294
    :goto_14
    move-object/from16 v36, v29

    if-nez v36, :cond_32

    .line 295
    goto/16 :goto_10

    .line 272
    .end local v31    # "pi":I
    .end local v32    # "j":I
    .end local v33    # "pproc":Lgnu/expr/PrimProcedure;
    .end local v34    # "pii":I
    :cond_2d
    move/from16 v37, v17

    goto :goto_11

    .line 276
    .restart local v31    # "pi":I
    .restart local v32    # "j":I
    .restart local v33    # "pproc":Lgnu/expr/PrimProcedure;
    :cond_2e
    const/16 v37, 0x0

    goto :goto_13

    .line 284
    .restart local v34    # "pii":I
    :cond_2f
    move-object/from16 v36, v33

    move/from16 v37, v34

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/PrimProcedure;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v36

    move-object/from16 v35, v36

    .line 285
    .local v35, "ptype":Lgnu/bytecode/Type;
    move/from16 v36, v32

    if-nez v36, :cond_30

    .line 286
    move-object/from16 v36, v35

    move-object/from16 v29, v36

    goto :goto_14

    .line 287
    :cond_30
    move-object/from16 v36, v35

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/bytecode/PrimType;

    move/from16 v36, v0

    move-object/from16 v37, v29

    move-object/from16 v0, v37

    instance-of v0, v0, Lgnu/bytecode/PrimType;

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_31

    .line 288
    const/16 v36, 0x0

    move-object/from16 v29, v36

    goto :goto_14

    .line 291
    :cond_31
    move-object/from16 v36, v29

    move-object/from16 v37, v35

    invoke-static/range {v36 .. v37}, Lgnu/bytecode/Type;->lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v36

    move-object/from16 v29, v36

    goto :goto_14

    .line 273
    .end local v35    # "ptype":Lgnu/bytecode/Type;
    :cond_32
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_12

    .line 300
    .end local v29    # "atype":Lgnu/bytecode/Type;
    .end local v30    # "last":Z
    .end local v31    # "pi":I
    .end local v32    # "j":I
    .end local v33    # "pproc":Lgnu/expr/PrimProcedure;
    .end local v34    # "pii":I
    :cond_33
    move-object/from16 v36, v19

    move-object/from16 v37, v21

    move-object/from16 v38, v10

    move/from16 v39, v16

    move/from16 v40, v17

    move/from16 v41, v18

    invoke-static/range {v36 .. v41}, Lgnu/kawa/reflect/CompileInvoke;->selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J

    move-result-wide v36

    move-wide/from16 v28, v36

    .line 302
    .local v28, "num":J
    move-wide/from16 v36, v28

    const/16 v38, 0x20

    shr-long v36, v36, v38

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v36, v0

    move/from16 v26, v36

    .line 303
    .local v26, "okCount":I
    move-wide/from16 v36, v28

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v36, v0

    move/from16 v27, v36

    .line 310
    .end local v28    # "num":J
    .local v27, "maybeCount":I
    :goto_15
    move-object/from16 v36, v19

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v28, v36

    .line 311
    .local v28, "nmethods":I
    move/from16 v36, v26

    move/from16 v37, v27

    add-int v36, v36, v37

    if-nez v36, :cond_34

    move/from16 v36, v8

    const/16 v37, 0x4e

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_34

    .line 313
    move-object/from16 v36, v21

    const-string/jumbo v37, "valueOf"

    move-object/from16 v38, v20

    sget-object v39, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    invoke-static/range {v36 .. v39}, Lgnu/kawa/reflect/CompileInvoke;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;Lgnu/kawa/reflect/Invoke;)[Lgnu/expr/PrimProcedure;

    move-result-object v36

    move-object/from16 v19, v36

    .line 314
    const/16 v36, 0x1

    move/from16 v17, v36

    .line 315
    move/from16 v36, v11

    const/16 v37, 0x1

    add-int/lit8 v36, v36, -0x1

    move/from16 v16, v36

    .line 316
    move-object/from16 v36, v19

    move-object/from16 v37, v21

    move-object/from16 v38, v10

    move/from16 v39, v16

    move/from16 v40, v17

    const/16 v41, -0x1

    invoke-static/range {v36 .. v41}, Lgnu/kawa/reflect/CompileInvoke;->selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J

    move-result-wide v36

    move-wide/from16 v29, v36

    .line 318
    .local v29, "num":J
    move-wide/from16 v36, v29

    const/16 v38, 0x20

    shr-long v36, v36, v38

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v36, v0

    move/from16 v26, v36

    .line 319
    move-wide/from16 v36, v29

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v36, v0

    move/from16 v27, v36

    .line 321
    .end local v29    # "num":J
    :cond_34
    move/from16 v36, v26

    move/from16 v37, v27

    add-int v36, v36, v37

    if-nez v36, :cond_3e

    .line 323
    move/from16 v36, v8

    const/16 v37, 0x50

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_35

    move-object/from16 v36, v9

    invoke-virtual/range {v36 .. v36}, Lgnu/expr/Compilation;->warnInvokeUnknownMethod()Z

    move-result v36

    if-eqz v36, :cond_37

    .line 325
    :cond_35
    move/from16 v36, v8

    const/16 v37, 0x4e

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_36

    .line 326
    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v37, v15

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "/valueOf"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v15, v36

    .line 327
    :cond_36
    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v36

    .line 328
    .local v29, "sbuf":Ljava/lang/StringBuilder;
    move/from16 v36, v28

    move-object/from16 v37, v19

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    add-int v36, v36, v37

    if-nez v36, :cond_3a

    .line 329
    move-object/from16 v36, v29

    const-string/jumbo v37, "no accessible method \'"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 336
    :goto_16
    move-object/from16 v36, v29

    move-object/from16 v37, v15

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 337
    move-object/from16 v36, v29

    const-string/jumbo v37, "\' in "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 338
    move-object/from16 v36, v29

    move-object/from16 v37, v12

    invoke-virtual/range {v37 .. v37}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 339
    move-object/from16 v36, v9

    move/from16 v37, v8

    const/16 v38, 0x50

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3d

    const/16 v37, 0x65

    :goto_17
    move-object/from16 v38, v29

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 340
    .line 391
    .end local v29    # "sbuf":Ljava/lang/StringBuilder;
    :cond_37
    :goto_18
    move/from16 v36, v23

    if-ltz v36, :cond_4a

    .line 393
    move/from16 v36, v16

    move/from16 v0, v36

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v36, v0

    move-object/from16 v29, v36

    .line 394
    .local v29, "margs":[Lgnu/expr/Expression;
    move-object/from16 v36, v19

    move/from16 v37, v23

    aget-object v36, v36, v37

    move-object/from16 v30, v36

    .line 395
    .local v30, "method":Lgnu/expr/PrimProcedure;
    move-object/from16 v36, v30

    invoke-virtual/range {v36 .. v36}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v36

    move/from16 v31, v36

    .line 396
    .local v31, "variable":Z
    const/16 v36, 0x0

    move/from16 v32, v36

    .line 397
    .local v32, "dst":I
    move/from16 v36, v18

    if-ltz v36, :cond_38

    .line 398
    move-object/from16 v36, v29

    move/from16 v37, v32

    add-int/lit8 v32, v32, 0x1

    move-object/from16 v38, v10

    move/from16 v39, v18

    aget-object v38, v38, v39

    aput-object v38, v36, v37

    .line 399
    :cond_38
    move/from16 v36, v17

    move/from16 v33, v36

    .line 400
    .local v33, "src":I
    :goto_19
    move/from16 v36, v33

    move-object/from16 v37, v10

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_49

    move/from16 v36, v32

    move-object/from16 v37, v29

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_49

    .line 403
    move-object/from16 v36, v29

    move/from16 v37, v32

    move-object/from16 v38, v10

    move/from16 v39, v33

    aget-object v38, v38, v39

    aput-object v38, v36, v37

    .line 401
    add-int/lit8 v33, v33, 0x1

    add-int/lit8 v32, v32, 0x1

    goto :goto_19

    .line 307
    .end local v26    # "okCount":I
    .end local v27    # "maybeCount":I
    .end local v28    # "nmethods":I
    .end local v29    # "margs":[Lgnu/expr/Expression;
    .end local v30    # "method":Lgnu/expr/PrimProcedure;
    .end local v31    # "variable":Z
    .end local v32    # "dst":I
    .end local v33    # "src":I
    :cond_39
    const/16 v36, 0x0

    move/from16 v26, v36

    .line 308
    .restart local v26    # "okCount":I
    const/16 v36, 0x0

    move/from16 v27, v36

    .restart local v27    # "maybeCount":I
    goto/16 :goto_15

    .line 330
    .restart local v28    # "nmethods":I
    .local v29, "sbuf":Ljava/lang/StringBuilder;
    :cond_3a
    move/from16 v36, v22

    const/high16 v37, -0xf0000

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_3b

    .line 331
    move-object/from16 v36, v29

    const-string/jumbo v37, "too few arguments for method \'"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    goto/16 :goto_16

    .line 332
    :cond_3b
    move/from16 v36, v22

    const/high16 v37, -0xe0000

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_3c

    .line 333
    move-object/from16 v36, v29

    const-string/jumbo v37, "too many arguments for method \'"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    goto/16 :goto_16

    .line 335
    :cond_3c
    move-object/from16 v36, v29

    const-string/jumbo v37, "no possibly applicable method \'"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    goto/16 :goto_16

    .line 339
    :cond_3d
    const/16 v37, 0x77

    goto/16 :goto_17

    .line 342
    .end local v29    # "sbuf":Ljava/lang/StringBuilder;
    :cond_3e
    move/from16 v36, v26

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_3f

    move/from16 v36, v26

    if-nez v36, :cond_40

    move/from16 v36, v27

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_40

    .line 343
    :cond_3f
    const/16 v36, 0x0

    move/from16 v23, v36

    goto/16 :goto_18

    .line 344
    :cond_40
    move/from16 v36, v26

    if-lez v36, :cond_46

    .line 346
    move-object/from16 v36, v19

    move/from16 v37, v26

    invoke-static/range {v36 .. v37}, Lgnu/mapping/MethodProc;->mostSpecific([Lgnu/mapping/MethodProc;I)I

    move-result v36

    move/from16 v23, v36

    .line 347
    move/from16 v36, v23

    if-gez v36, :cond_41

    .line 349
    move/from16 v36, v8

    const/16 v37, 0x53

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_41

    .line 354
    const/16 v36, 0x0

    move/from16 v29, v36

    .local v29, "i":I
    :goto_1a
    move/from16 v36, v29

    move/from16 v37, v26

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_41

    .line 356
    move-object/from16 v36, v19

    move/from16 v37, v29

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Lgnu/expr/PrimProcedure;->getStaticFlag()Z

    move-result v36

    if-eqz v36, :cond_44

    .line 358
    move/from16 v36, v23

    if-ltz v36, :cond_43

    .line 360
    const/16 v36, -0x1

    move/from16 v23, v36

    .line 369
    .end local v29    # "i":I
    :cond_41
    move/from16 v36, v23

    if-gez v36, :cond_37

    move/from16 v36, v8

    const/16 v37, 0x50

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_42

    move-object/from16 v36, v9

    invoke-virtual/range {v36 .. v36}, Lgnu/expr/Compilation;->warnInvokeUnknownMethod()Z

    move-result v36

    if-eqz v36, :cond_37

    .line 372
    :cond_42
    new-instance v36, Ljava/lang/StringBuffer;

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v29, v36

    .line 373
    .local v29, "sbuf":Ljava/lang/StringBuffer;
    move-object/from16 v36, v29

    const-string/jumbo v37, "more than one definitely applicable method `"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 374
    move-object/from16 v36, v29

    move-object/from16 v37, v15

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 375
    move-object/from16 v36, v29

    const-string/jumbo v37, "\' in "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 376
    move-object/from16 v36, v29

    move-object/from16 v37, v12

    invoke-virtual/range {v37 .. v37}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 377
    move-object/from16 v36, v19

    move/from16 v37, v26

    move-object/from16 v38, v29

    invoke-static/range {v36 .. v38}, Lgnu/kawa/reflect/CompileInvoke;->append([Lgnu/expr/PrimProcedure;ILjava/lang/StringBuffer;)V

    .line 378
    move-object/from16 v36, v9

    move/from16 v37, v8

    const/16 v38, 0x50

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_45

    const/16 v37, 0x65

    :goto_1b
    move-object/from16 v38, v29

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 379
    goto/16 :goto_18

    .line 364
    .local v29, "i":I
    :cond_43
    move/from16 v36, v29

    move/from16 v23, v36

    .line 354
    :cond_44
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_1a

    .line 378
    .local v29, "sbuf":Ljava/lang/StringBuffer;
    :cond_45
    const/16 v37, 0x77

    goto :goto_1b

    .line 381
    .end local v29    # "sbuf":Ljava/lang/StringBuffer;
    :cond_46
    move/from16 v36, v8

    const/16 v37, 0x50

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_47

    move-object/from16 v36, v9

    invoke-virtual/range {v36 .. v36}, Lgnu/expr/Compilation;->warnInvokeUnknownMethod()Z

    move-result v36

    if-eqz v36, :cond_37

    .line 383
    :cond_47
    new-instance v36, Ljava/lang/StringBuffer;

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v29, v36

    .line 384
    .restart local v29    # "sbuf":Ljava/lang/StringBuffer;
    move-object/from16 v36, v29

    const-string/jumbo v37, "more than one possibly applicable method \'"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 385
    move-object/from16 v36, v29

    move-object/from16 v37, v15

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 386
    move-object/from16 v36, v29

    const-string/jumbo v37, "\' in "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 387
    move-object/from16 v36, v29

    move-object/from16 v37, v12

    invoke-virtual/range {v37 .. v37}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 388
    move-object/from16 v36, v19

    move/from16 v37, v27

    move-object/from16 v38, v29

    invoke-static/range {v36 .. v38}, Lgnu/kawa/reflect/CompileInvoke;->append([Lgnu/expr/PrimProcedure;ILjava/lang/StringBuffer;)V

    .line 389
    move-object/from16 v36, v9

    move/from16 v37, v8

    const/16 v38, 0x50

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_48

    const/16 v37, 0x65

    :goto_1c
    move-object/from16 v38, v29

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_18

    :cond_48
    const/16 v37, 0x77

    goto :goto_1c

    .line 405
    .local v29, "margs":[Lgnu/expr/Expression;
    .restart local v30    # "method":Lgnu/expr/PrimProcedure;
    .restart local v31    # "variable":Z
    .restart local v32    # "dst":I
    .restart local v33    # "src":I
    :cond_49
    new-instance v36, Lgnu/expr/ApplyExp;

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v38, v30

    move-object/from16 v39, v29

    invoke-direct/range {v37 .. v39}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v33, v36

    .line 406
    .local v33, "e":Lgnu/expr/ApplyExp;
    move-object/from16 v36, v33

    move-object/from16 v37, v3

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v36

    .line 407
    move-object/from16 v36, v4

    move-object/from16 v37, v33

    move-object/from16 v38, v5

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v36

    move-object/from16 v3, v36

    goto/16 :goto_0

    .line 410
    .end local v19    # "methods":[Lgnu/expr/PrimProcedure;
    .end local v20    # "caller":Lgnu/bytecode/ClassType;
    .end local v21    # "ctype":Lgnu/bytecode/ObjectType;
    .end local v22    # "numCode":I
    .end local v23    # "index":I
    .end local v26    # "okCount":I
    .end local v27    # "maybeCount":I
    .end local v28    # "nmethods":I
    .end local v29    # "margs":[Lgnu/expr/Expression;
    .end local v30    # "method":Lgnu/expr/PrimProcedure;
    .end local v31    # "variable":Z
    .end local v32    # "dst":I
    .end local v33    # "e":Lgnu/expr/ApplyExp;
    :cond_4a
    move-object/from16 v36, v3

    move-object/from16 v37, v4

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 411
    move-object/from16 v36, v3

    move-object/from16 v3, v36

    goto/16 :goto_0
.end method
