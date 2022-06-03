.class public Lgnu/xquery/util/CompileMisc;
.super Ljava/lang/Object;
.source "CompileMisc.java"


# static fields
.field static final castMethod:Lgnu/bytecode/Method;

.field static final castableMethod:Lgnu/bytecode/Method;

.field static final typeTuples:Lgnu/bytecode/ClassType;

.field static final typeXDataType:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 340
    const-string/jumbo v0, "gnu.xquery.util.OrderedTuples"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/CompileMisc;->typeTuples:Lgnu/bytecode/ClassType;

    .line 365
    const-string/jumbo v0, "gnu.kawa.xml.XDataType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/CompileMisc;->typeXDataType:Lgnu/bytecode/ClassType;

    .line 367
    sget-object v0, Lgnu/xquery/util/CompileMisc;->typeXDataType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "cast"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/CompileMisc;->castMethod:Lgnu/bytecode/Method;

    .line 383
    sget-object v0, Lgnu/xquery/util/CompileMisc;->typeXDataType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "castable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/CompileMisc;->castableMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/CompileMisc;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compileOrderedMap(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/mapping/Procedure;)V
    .locals 17

    .prologue
    .line 345
    move-object/from16 v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object/from16 v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object/from16 v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v10

    move-object v4, v10

    .line 346
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v10, v4

    array-length v10, v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    .line 348
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    invoke-static {v10, v11, v12}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 349
    .line 363
    :goto_0
    return-void

    .line 351
    :cond_0
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v10

    move-object v5, v10

    .line 352
    .local v5, "code":Lgnu/bytecode/CodeAttr;
    move-object v10, v5

    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v10

    move-object v6, v10

    .line 353
    .local v6, "scope":Lgnu/bytecode/Scope;
    move-object v10, v6

    move-object v11, v5

    sget-object v12, Lgnu/xquery/util/CompileMisc;->typeTuples:Lgnu/bytecode/ClassType;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v10

    move-object v7, v10

    .line 354
    .local v7, "consumer":Lgnu/bytecode/Variable;
    move-object v10, v4

    const/4 v11, 0x1

    aget-object v10, v10, v11

    move-object v11, v1

    sget-object v12, Lgnu/xquery/util/CompileMisc;->typeTuples:Lgnu/bytecode/ClassType;

    invoke-static {v12}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 355
    move-object v10, v5

    move-object v11, v7

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 356
    new-instance v10, Lgnu/expr/ConsumerTarget;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v7

    invoke-direct {v11, v12}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    move-object v8, v10

    .line 357
    .local v8, "ctarget":Lgnu/expr/ConsumerTarget;
    move-object v10, v4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    move-object v11, v1

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 358
    sget-object v10, Lgnu/xquery/util/CompileMisc;->typeTuples:Lgnu/bytecode/ClassType;

    const-string/jumbo v11, "run$X"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v10

    move-object v9, v10

    .line 359
    .local v9, "mm":Lgnu/bytecode/Method;
    move-object v10, v5

    move-object v11, v7

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 360
    move-object v10, v1

    move-object v11, v9

    move-object v12, v2

    move-object v13, v0

    invoke-virtual {v13}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v13

    const/16 v14, 0xb6

    sget-object v15, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-static/range {v10 .. v15}, Lgnu/expr/PrimProcedure;->compileInvoke(Lgnu/expr/Compilation;Lgnu/bytecode/Method;Lgnu/expr/Target;ZILgnu/bytecode/Type;)V

    .line 362
    move-object v10, v5

    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v10

    .line 363
    goto :goto_0
.end method

.method public static validateApplyCastAs(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 11

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 373
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v1

    invoke-static {v6, v7, v8}, Lgnu/kawa/reflect/CompileReflect;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object v6

    move-object v0, v6

    .line 374
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    move-object v4, v6

    .line 375
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v6, v4

    array-length v6, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    move-object v6, v4

    const/4 v7, 0x0

    aget-object v6, v6, v7

    instance-of v6, v6, Lgnu/expr/QuoteExp;

    if-nez v6, :cond_1

    .line 376
    :cond_0
    move-object v6, v0

    move-object v0, v6

    .line 380
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v0

    .line 377
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :cond_1
    move-object v6, v4

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Lgnu/expr/QuoteExp;

    invoke-virtual {v6}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 378
    .local v5, "type":Ljava/lang/Object;
    move-object v6, v5

    instance-of v6, v6, Lgnu/kawa/xml/XDataType;

    if-eqz v6, :cond_2

    .line 379
    new-instance v6, Lgnu/expr/ApplyExp;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    sget-object v8, Lgnu/xquery/util/CompileMisc;->castMethod:Lgnu/bytecode/Method;

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v0, v6

    goto :goto_0

    .line 380
    :cond_2
    move-object v6, v0

    move-object v0, v6

    goto :goto_0
.end method

.method public static validateApplyCastableAs(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 15

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 390
    move-object v6, v0

    const/4 v7, 0x1

    move-object v8, v1

    invoke-static {v6, v7, v8}, Lgnu/kawa/reflect/CompileReflect;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object v6

    move-object v0, v6

    .line 391
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    move-object v4, v6

    .line 392
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v6, v4

    array-length v6, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    move-object v6, v4

    const/4 v7, 0x1

    aget-object v6, v6, v7

    instance-of v6, v6, Lgnu/expr/QuoteExp;

    if-nez v6, :cond_1

    .line 393
    :cond_0
    move-object v6, v0

    move-object v0, v6

    .line 398
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v0

    .line 394
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :cond_1
    move-object v6, v4

    const/4 v7, 0x1

    aget-object v6, v6, v7

    check-cast v6, Lgnu/expr/QuoteExp;

    invoke-virtual {v6}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 395
    .local v5, "type":Ljava/lang/Object;
    move-object v6, v5

    instance-of v6, v6, Lgnu/kawa/xml/XDataType;

    if-eqz v6, :cond_2

    .line 396
    new-instance v6, Lgnu/expr/ApplyExp;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    sget-object v8, Lgnu/xquery/util/CompileMisc;->castableMethod:Lgnu/bytecode/Method;

    const/4 v9, 0x2

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v4

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x1

    move-object v12, v4

    const/4 v13, 0x0

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    invoke-direct {v7, v8, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v0, v6

    goto :goto_0

    .line 398
    :cond_2
    move-object v6, v0

    move-object v0, v6

    goto :goto_0
.end method

.method public static validateApplyOrderedMap(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 15

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 326
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    move-object v4, v8

    .line 327
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v8, v4

    array-length v8, v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_0

    .line 329
    move-object v8, v4

    array-length v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    new-array v8, v8, [Lgnu/expr/Expression;

    move-object v5, v8

    .line 330
    .local v5, "rargs":[Lgnu/expr/Expression;
    move-object v8, v4

    const/4 v9, 0x1

    move-object v10, v5

    const/4 v11, 0x0

    move-object v12, v5

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    const/4 v8, 0x2

    new-array v8, v8, [Lgnu/expr/Expression;

    move-object v6, v8

    .line 332
    .local v6, "xargs":[Lgnu/expr/Expression;
    sget-object v8, Lgnu/xquery/util/CompileMisc;->typeTuples:Lgnu/bytecode/ClassType;

    const-string/jumbo v9, "make$V"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    move-object v7, v8

    .line 333
    .local v7, "makeTupleMethod":Lgnu/bytecode/Method;
    move-object v8, v6

    const/4 v9, 0x0

    move-object v10, v4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 334
    move-object v8, v6

    const/4 v9, 0x1

    new-instance v10, Lgnu/expr/ApplyExp;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v7

    move-object v13, v5

    invoke-direct {v11, v12, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    aput-object v10, v8, v9

    .line 335
    new-instance v8, Lgnu/expr/ApplyExp;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v3

    move-object v11, v6

    invoke-direct {v9, v10, v11}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v0, v8

    .line 337
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    .end local v5    # "rargs":[Lgnu/expr/Expression;
    .end local v6    # "xargs":[Lgnu/expr/Expression;
    .end local v7    # "makeTupleMethod":Lgnu/bytecode/Method;
    :goto_0
    return-object v0

    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :cond_0
    move-object v8, v0

    move-object v0, v8

    goto :goto_0
.end method

.method public static validateApplyRelativeStep(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 36

    .prologue
    .line 192
    move-object/from16 v2, p0

    .local v2, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v3, p1

    .local v3, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v4, p2

    .local v4, "required":Lgnu/bytecode/Type;
    move-object/from16 v5, p3

    .local v5, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    invoke-virtual/range {v25 .. v26}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 193
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v6, v25

    .line 194
    .local v6, "args":[Lgnu/expr/Expression;
    move-object/from16 v25, v6

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v7, v25

    .line 195
    .local v7, "exp1":Lgnu/expr/Expression;
    move-object/from16 v25, v6

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v8, v25

    .line 197
    .local v8, "exp2":Lgnu/expr/Expression;
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v25

    move-object/from16 v10, v25

    .line 198
    .local v10, "comp":Lgnu/expr/Compilation;
    move-object/from16 v25, v8

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v25, v10

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lgnu/expr/Compilation;->mustCompile:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v25, v8

    check-cast v25, Lgnu/expr/LambdaExp;

    move-object/from16 v35, v25

    move-object/from16 v25, v35

    move-object/from16 v26, v35

    move-object/from16 v9, v26

    .local v9, "lexp2":Lgnu/expr/LambdaExp;
    move-object/from16 v0, v25

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    move-object/from16 v25, v9

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    .line 204
    .end local v9    # "lexp2":Lgnu/expr/LambdaExp;
    :cond_0
    move-object/from16 v25, v2

    move-object/from16 v2, v25

    .line 319
    .end local v2    # "exp":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v2

    .line 206
    .restart local v2    # "exp":Lgnu/expr/ApplyExp;
    .restart local v9    # "lexp2":Lgnu/expr/LambdaExp;
    :cond_1
    move-object/from16 v25, v9

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 207
    move-object/from16 v25, v9

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 208
    move-object/from16 v25, v9

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 210
    move-object/from16 v25, v9

    move-object/from16 v0, v25

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v25, v0

    move-object/from16 v8, v25

    .line 212
    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v25

    move-object/from16 v11, v25

    .line 213
    .local v11, "dotArg":Lgnu/expr/Declaration;
    move-object/from16 v25, v11

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v25

    move-object/from16 v12, v25

    .line 214
    .local v12, "posArg":Lgnu/expr/Declaration;
    move-object/from16 v25, v12

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v25

    move-object/from16 v13, v25

    .line 217
    .local v13, "lastArg":Lgnu/expr/Declaration;
    move-object/from16 v25, v12

    move-object/from16 v26, v13

    invoke-virtual/range {v26 .. v26}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lgnu/expr/Declaration;->setNext(Lgnu/expr/Declaration;)V

    .line 218
    move-object/from16 v25, v13

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lgnu/expr/Declaration;->setNext(Lgnu/expr/Declaration;)V

    .line 219
    move-object/from16 v25, v9

    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lgnu/expr/LambdaExp;->min_args:I

    .line 220
    move-object/from16 v25, v9

    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lgnu/expr/LambdaExp;->max_args:I

    .line 222
    move-object/from16 v25, v7

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v25

    move-object/from16 v14, v25

    .line 223
    .local v14, "type1":Lgnu/bytecode/Type;
    move-object/from16 v25, v14

    if-eqz v25, :cond_2

    sget-object v25, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    move-object/from16 v26, v14

    invoke-virtual/range {v25 .. v26}, Lgnu/kawa/xml/NodeType;->compare(Lgnu/bytecode/Type;)I

    move-result v25

    const/16 v26, -0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 225
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v25

    move-object/from16 v15, v25

    .line 226
    .local v15, "language":Lgnu/expr/Language;
    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v35, v25

    move-object/from16 v25, v35

    move-object/from16 v26, v35

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "step input is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v15

    move-object/from16 v27, v14

    invoke-virtual/range {v26 .. v27}, Lgnu/expr/Language;->formatType(Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " - not a node sequence"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v16, v25

    .line 227
    .local v16, "message":Ljava/lang/String;
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/InlineCalls;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v25

    const/16 v26, 0x65

    move-object/from16 v27, v16

    invoke-virtual/range {v25 .. v27}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 228
    new-instance v25, Lgnu/expr/ErrorExp;

    move-object/from16 v35, v25

    move-object/from16 v25, v35

    move-object/from16 v26, v35

    move-object/from16 v27, v16

    invoke-direct/range {v26 .. v27}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v25

    goto/16 :goto_0

    .line 231
    .end local v15    # "language":Lgnu/expr/Language;
    .end local v16    # "message":Ljava/lang/String;
    :cond_2
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/ApplyExp;->getTypeRaw()Lgnu/bytecode/Type;

    move-result-object v25

    move-object/from16 v15, v25

    .line 234
    .local v15, "rtype":Lgnu/bytecode/Type;
    move-object/from16 v25, v15

    if-eqz v25, :cond_3

    move-object/from16 v25, v15

    sget-object v26, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 236
    :cond_3
    move-object/from16 v25, v8

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v25

    move-object/from16 v18, v25

    .line 237
    .local v18, "type2":Lgnu/bytecode/Type;
    move-object/from16 v25, v18

    invoke-static/range {v25 .. v25}, Lgnu/kawa/reflect/OccurrenceType;->itemPrimeType(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v25

    move-object/from16 v16, v25

    .line 238
    .local v16, "rtypePrime":Lgnu/bytecode/Type;
    sget-object v25, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    move-object/from16 v26, v16

    invoke-virtual/range {v25 .. v26}, Lgnu/kawa/xml/NodeType;->compare(Lgnu/bytecode/Type;)I

    move-result v25

    move/from16 v17, v25

    .line 239
    .local v17, "nodeCompare":I
    move/from16 v25, v17

    if-ltz v25, :cond_5

    .line 240
    move-object/from16 v25, v16

    invoke-static/range {v25 .. v25}, Lgnu/kawa/xml/NodeSetType;->getInstance(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v25

    move-object/from16 v15, v25

    .line 243
    :goto_1
    move-object/from16 v25, v2

    move-object/from16 v26, v15

    invoke-virtual/range {v25 .. v26}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 245
    .end local v16    # "rtypePrime":Lgnu/bytecode/Type;
    .end local v17    # "nodeCompare":I
    .end local v18    # "type2":Lgnu/bytecode/Type;
    :cond_4
    move-object/from16 v25, v13

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 247
    sget-object v25, Lgnu/kawa/xml/CoerceNodes;->typeNodes:Lgnu/bytecode/ClassType;

    move-object/from16 v18, v25

    .line 248
    .local v18, "typeNodes":Lgnu/bytecode/ClassType;
    move-object/from16 v25, v10

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Compilation;->letStart()V

    .line 249
    move-object/from16 v25, v10

    const/16 v26, 0x0

    move-object/from16 v27, v18

    new-instance v28, Lgnu/expr/ApplyExp;

    move-object/from16 v35, v28

    move-object/from16 v28, v35

    move-object/from16 v29, v35

    sget-object v30, Lgnu/kawa/xml/CoerceNodes;->coerceNodes:Lgnu/kawa/xml/CoerceNodes;

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v31, v0

    move-object/from16 v35, v31

    move-object/from16 v31, v35

    move-object/from16 v32, v35

    const/16 v33, 0x0

    move-object/from16 v34, v7

    aput-object v34, v32, v33

    invoke-direct/range {v29 .. v31}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual/range {v25 .. v28}, Lgnu/expr/Compilation;->letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;

    move-result-object v25

    move-object/from16 v19, v25

    .line 253
    .local v19, "sequence":Lgnu/expr/Declaration;
    move-object/from16 v25, v10

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Compilation;->letEnter()V

    .line 255
    move-object/from16 v25, v18

    const-string/jumbo v26, "size"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v25

    move-object/from16 v20, v25

    .line 256
    .local v20, "sizeMethod":Lgnu/bytecode/Method;
    new-instance v25, Lgnu/expr/ApplyExp;

    move-object/from16 v35, v25

    move-object/from16 v25, v35

    move-object/from16 v26, v35

    move-object/from16 v27, v20

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v28, v0

    move-object/from16 v35, v28

    move-object/from16 v28, v35

    move-object/from16 v29, v35

    const/16 v30, 0x0

    new-instance v31, Lgnu/expr/ReferenceExp;

    move-object/from16 v35, v31

    move-object/from16 v31, v35

    move-object/from16 v32, v35

    move-object/from16 v33, v19

    invoke-direct/range {v32 .. v33}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v31, v29, v30

    invoke-direct/range {v26 .. v28}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v21, v25

    .line 259
    .local v21, "lastInit":Lgnu/expr/Expression;
    new-instance v25, Lgnu/expr/LetExp;

    move-object/from16 v35, v25

    move-object/from16 v25, v35

    move-object/from16 v26, v35

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v27, v0

    move-object/from16 v35, v27

    move-object/from16 v27, v35

    move-object/from16 v28, v35

    const/16 v29, 0x0

    move-object/from16 v30, v21

    aput-object v30, v28, v29

    invoke-direct/range {v26 .. v27}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object/from16 v22, v25

    .line 260
    .local v22, "lastLet":Lgnu/expr/LetExp;
    move-object/from16 v25, v22

    move-object/from16 v26, v13

    invoke-virtual/range {v25 .. v26}, Lgnu/expr/LetExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 261
    move-object/from16 v25, v22

    new-instance v26, Lgnu/expr/ApplyExp;

    move-object/from16 v35, v26

    move-object/from16 v26, v35

    move-object/from16 v27, v35

    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v28

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v29, v0

    move-object/from16 v35, v29

    move-object/from16 v29, v35

    move-object/from16 v30, v35

    const/16 v31, 0x0

    new-instance v32, Lgnu/expr/ReferenceExp;

    move-object/from16 v35, v32

    move-object/from16 v32, v35

    move-object/from16 v33, v35

    move-object/from16 v34, v19

    invoke-direct/range {v33 .. v34}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v32, v30, v31

    move-object/from16 v35, v29

    move-object/from16 v29, v35

    move-object/from16 v30, v35

    const/16 v31, 0x1

    move-object/from16 v32, v9

    aput-object v32, v30, v31

    invoke-direct/range {v27 .. v29}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 264
    move-object/from16 v25, v10

    move-object/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Lgnu/expr/Compilation;->letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;

    move-result-object v25

    move-object/from16 v2, v25

    goto/16 :goto_0

    .line 242
    .end local v19    # "sequence":Lgnu/expr/Declaration;
    .end local v20    # "sizeMethod":Lgnu/bytecode/Method;
    .end local v21    # "lastInit":Lgnu/expr/Expression;
    .end local v22    # "lastLet":Lgnu/expr/LetExp;
    .restart local v16    # "rtypePrime":Lgnu/bytecode/Type;
    .restart local v17    # "nodeCompare":I
    .local v18, "type2":Lgnu/bytecode/Type;
    :cond_5
    move-object/from16 v25, v16

    const/16 v26, 0x0

    const/16 v27, -0x1

    invoke-static/range {v25 .. v27}, Lgnu/kawa/reflect/OccurrenceType;->getInstance(Lgnu/bytecode/Type;II)Lgnu/bytecode/Type;

    move-result-object v25

    move-object/from16 v15, v25

    goto/16 :goto_1

    .line 267
    .end local v16    # "rtypePrime":Lgnu/bytecode/Type;
    .end local v17    # "nodeCompare":I
    .end local v18    # "type2":Lgnu/bytecode/Type;
    :cond_6
    move-object/from16 v25, v2

    move-object/from16 v18, v25

    .line 271
    .local v18, "result":Lgnu/expr/ApplyExp;
    move-object/from16 v25, v8

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v25, v0

    if-eqz v25, :cond_7

    .line 273
    move-object/from16 v25, v8

    check-cast v25, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v25

    .line 274
    .local v19, "aexp2":Lgnu/expr/ApplyExp;
    move-object/from16 v25, v19

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v20, v25

    .line 276
    .local v20, "proc2":Ljava/lang/Object;
    move-object/from16 v25, v20

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/xquery/util/ValuesFilter;

    move/from16 v25, v0

    if-eqz v25, :cond_7

    move-object/from16 v25, v19

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v35, v25

    move-object/from16 v25, v35

    move-object/from16 v26, v35

    move-object/from16 v21, v26

    .local v21, "vexp2":Lgnu/expr/Expression;
    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v25, v0

    if-eqz v25, :cond_7

    .line 279
    move-object/from16 v25, v21

    check-cast v25, Lgnu/expr/LambdaExp;

    move-object/from16 v22, v25

    .line 280
    .local v22, "lvexp2":Lgnu/expr/LambdaExp;
    move-object/from16 v25, v22

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v25

    move-object/from16 v23, v25

    .line 282
    .local v23, "dot2":Lgnu/expr/Declaration;
    move-object/from16 v25, v23

    if-eqz v25, :cond_7

    move-object/from16 v25, v23

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v25

    move-object/from16 v35, v25

    move-object/from16 v25, v35

    move-object/from16 v26, v35

    move-object/from16 v24, v26

    .local v24, "pos2":Lgnu/expr/Declaration;
    if-eqz v25, :cond_7

    move-object/from16 v25, v24

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v25

    if-nez v25, :cond_7

    move-object/from16 v25, v24

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v25

    if-nez v25, :cond_7

    const-string/jumbo v25, "java.lang.Number"

    invoke-static/range {v25 .. v25}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v25

    move-object/from16 v26, v22

    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lgnu/bytecode/ClassType;->compare(Lgnu/bytecode/Type;)I

    move-result v25

    const/16 v26, -0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 290
    move-object/from16 v25, v19

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v8, v25

    .line 291
    move-object/from16 v25, v9

    move-object/from16 v26, v8

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 292
    move-object/from16 v25, v19

    const/16 v26, 0x0

    move-object/from16 v27, v2

    invoke-virtual/range {v25 .. v27}, Lgnu/expr/ApplyExp;->setArg(ILgnu/expr/Expression;)V

    .line 293
    move-object/from16 v25, v19

    move-object/from16 v18, v25

    .line 299
    .end local v19    # "aexp2":Lgnu/expr/ApplyExp;
    .end local v20    # "proc2":Ljava/lang/Object;
    .end local v21    # "vexp2":Lgnu/expr/Expression;
    .end local v22    # "lvexp2":Lgnu/expr/LambdaExp;
    .end local v23    # "dot2":Lgnu/expr/Declaration;
    .end local v24    # "pos2":Lgnu/expr/Declaration;
    :cond_7
    move-object/from16 v25, v7

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v25, v8

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 301
    move-object/from16 v25, v7

    check-cast v25, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v25

    .line 302
    .local v19, "aexp1":Lgnu/expr/ApplyExp;
    move-object/from16 v25, v8

    check-cast v25, Lgnu/expr/ApplyExp;

    move-object/from16 v20, v25

    .line 303
    .local v20, "aexp2":Lgnu/expr/ApplyExp;
    move-object/from16 v25, v19

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v21, v25

    .line 304
    .local v21, "p1":Ljava/lang/Object;
    move-object/from16 v25, v20

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v22, v25

    .line 306
    .local v22, "p2":Ljava/lang/Object;
    move-object/from16 v25, v21

    sget-object v26, Lgnu/xquery/util/RelativeStep;->relativeStep:Lgnu/xquery/util/RelativeStep;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_8

    move-object/from16 v25, v22

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/kawa/xml/ChildAxis;

    move/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v25, v19

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    move-object/from16 v25, v19

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v35, v25

    move-object/from16 v25, v35

    move-object/from16 v26, v35

    move-object/from16 v23, v26

    .local v23, "exp12":Lgnu/expr/Expression;
    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 310
    move-object/from16 v25, v23

    check-cast v25, Lgnu/expr/LambdaExp;

    move-object/from16 v24, v25

    .line 311
    .local v24, "lexp12":Lgnu/expr/LambdaExp;
    move-object/from16 v25, v24

    move-object/from16 v0, v25

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v25, v24

    move-object/from16 v0, v25

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v25, v0

    check-cast v25, Lgnu/expr/ApplyExp;

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v25

    sget-object v26, Lgnu/kawa/xml/DescendantOrSelfAxis;->anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 314
    move-object/from16 v25, v2

    const/16 v26, 0x0

    move-object/from16 v27, v19

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lgnu/expr/ApplyExp;->setArg(ILgnu/expr/Expression;)V

    .line 315
    move-object/from16 v25, v20

    new-instance v26, Lgnu/expr/QuoteExp;

    move-object/from16 v35, v26

    move-object/from16 v26, v35

    move-object/from16 v27, v35

    move-object/from16 v28, v22

    check-cast v28, Lgnu/kawa/xml/ChildAxis;

    invoke-virtual/range {v28 .. v28}, Lgnu/kawa/xml/ChildAxis;->getNodePredicate()Lgnu/lists/NodePredicate;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lgnu/kawa/xml/DescendantAxis;->make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/DescendantAxis;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v25 .. v26}, Lgnu/expr/ApplyExp;->setFunction(Lgnu/expr/Expression;)V

    .line 319
    .end local v19    # "aexp1":Lgnu/expr/ApplyExp;
    .end local v20    # "aexp2":Lgnu/expr/ApplyExp;
    .end local v21    # "p1":Ljava/lang/Object;
    .end local v22    # "p2":Ljava/lang/Object;
    .end local v23    # "exp12":Lgnu/expr/Expression;
    .end local v24    # "lexp12":Lgnu/expr/LambdaExp;
    :cond_8
    move-object/from16 v25, v18

    move-object/from16 v2, v25

    goto/16 :goto_0
.end method

.method public static validateApplyValuesFilter(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 33

    .prologue
    .line 88
    move-object/from16 v2, p0

    .local v2, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v3, p1

    .local v3, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v4, p2

    .local v4, "required":Lgnu/bytecode/Type;
    move-object/from16 v5, p3

    .local v5, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v23, v5

    check-cast v23, Lgnu/xquery/util/ValuesFilter;

    move-object/from16 v6, v23

    .line 89
    .local v6, "vproc":Lgnu/xquery/util/ValuesFilter;
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 90
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    move-object/from16 v7, v23

    .line 91
    .local v7, "args":[Lgnu/expr/Expression;
    move-object/from16 v23, v7

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v8, v23

    .line 93
    .local v8, "exp2":Lgnu/expr/Expression;
    move-object/from16 v23, v8

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v23, v8

    check-cast v23, Lgnu/expr/LambdaExp;

    move-object/from16 v32, v23

    move-object/from16 v23, v32

    move-object/from16 v24, v32

    move-object/from16 v9, v24

    .local v9, "lexp2":Lgnu/expr/LambdaExp;
    move-object/from16 v0, v23

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 96
    .end local v9    # "lexp2":Lgnu/expr/LambdaExp;
    :cond_0
    move-object/from16 v23, v2

    move-object/from16 v2, v23

    .line 185
    .end local v2    # "exp":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v2

    .line 98
    .restart local v2    # "exp":Lgnu/expr/ApplyExp;
    .restart local v9    # "lexp2":Lgnu/expr/LambdaExp;
    :cond_1
    move-object/from16 v23, v2

    move-object/from16 v24, v7

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 100
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v23

    move-object/from16 v10, v23

    .line 102
    .local v10, "parser":Lgnu/expr/Compilation;
    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v23

    move-object/from16 v11, v23

    .line 103
    .local v11, "dotArg":Lgnu/expr/Declaration;
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v23

    move-object/from16 v12, v23

    .line 104
    .local v12, "posArg":Lgnu/expr/Declaration;
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v23

    move-object/from16 v13, v23

    .line 106
    .local v13, "lastArg":Lgnu/expr/Declaration;
    move-object/from16 v23, v9

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 107
    move-object/from16 v23, v9

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 108
    move-object/from16 v23, v9

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 111
    move-object/from16 v23, v9

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    invoke-virtual/range {v23 .. v25}, Lgnu/expr/LambdaExp;->remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 112
    move-object/from16 v23, v9

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lgnu/expr/LambdaExp;->min_args:I

    .line 113
    move-object/from16 v23, v9

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lgnu/expr/LambdaExp;->max_args:I

    .line 115
    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v23

    if-nez v23, :cond_2

    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-char v0, v0, Lgnu/xquery/util/ValuesFilter;->kind:C

    move/from16 v23, v0

    const/16 v24, 0x52

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 118
    move-object/from16 v23, v2

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 121
    :cond_2
    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Compilation;->letStart()V

    .line 122
    move-object/from16 v23, v7

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v14, v23

    .line 125
    .local v14, "seq":Lgnu/expr/Expression;
    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-char v0, v0, Lgnu/xquery/util/ValuesFilter;->kind:C

    move/from16 v23, v0

    const/16 v24, 0x50

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 127
    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v23

    move-object/from16 v15, v23

    .line 128
    .local v15, "seqType":Lgnu/bytecode/Type;
    sget-object v23, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string/jumbo v24, "countValues"

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v23

    move-object/from16 v16, v23

    .line 136
    .local v16, "sizeMethod":Lgnu/bytecode/Method;
    :goto_1
    move-object/from16 v23, v10

    const-string/jumbo v24, "sequence"

    move-object/from16 v25, v15

    move-object/from16 v26, v14

    invoke-virtual/range {v23 .. v26}, Lgnu/expr/Compilation;->letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;

    move-result-object v23

    move-object/from16 v17, v23

    .line 137
    .local v17, "sequence":Lgnu/expr/Declaration;
    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Compilation;->letEnter()V

    .line 139
    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v23, v0

    move-object/from16 v18, v23

    .line 140
    .local v18, "pred":Lgnu/expr/Expression;
    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v23

    move-object/from16 v19, v23

    .line 141
    .local v19, "predType":Lgnu/bytecode/Type;
    move-object/from16 v23, v19

    sget-object v24, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 142
    new-instance v23, Lgnu/expr/ApplyExp;

    move-object/from16 v32, v23

    move-object/from16 v23, v32

    move-object/from16 v24, v32

    move-object/from16 v25, v6

    sget-object v25, Lgnu/xquery/util/ValuesFilter;->matchesMethod:Lgnu/bytecode/Method;

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v26, v0

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    const/16 v28, 0x0

    move-object/from16 v29, v18

    aput-object v29, v27, v28

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    const/16 v28, 0x1

    new-instance v29, Lgnu/expr/ReferenceExp;

    move-object/from16 v32, v29

    move-object/from16 v29, v32

    move-object/from16 v30, v32

    move-object/from16 v31, v12

    invoke-direct/range {v30 .. v31}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v29, v27, v28

    invoke-direct/range {v24 .. v26}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v18, v23

    .line 145
    :cond_3
    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-char v0, v0, Lgnu/xquery/util/ValuesFilter;->kind:C

    move/from16 v23, v0

    const/16 v24, 0x52

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 147
    new-instance v23, Lgnu/expr/Declaration;

    move-object/from16 v32, v23

    move-object/from16 v23, v32

    move-object/from16 v24, v32

    const/16 v25, 0x0

    sget-object v26, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-direct/range {v24 .. v26}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    move-object/from16 v20, v23

    .line 148
    .local v20, "posIncoming":Lgnu/expr/Declaration;
    new-instance v23, Lgnu/expr/ApplyExp;

    move-object/from16 v32, v23

    move-object/from16 v23, v32

    move-object/from16 v24, v32

    sget-object v25, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v26, v0

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    const/16 v28, 0x0

    new-instance v29, Lgnu/expr/ReferenceExp;

    move-object/from16 v32, v29

    move-object/from16 v29, v32

    move-object/from16 v30, v32

    move-object/from16 v31, v13

    invoke-direct/range {v30 .. v31}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v29, v27, v28

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    const/16 v28, 0x1

    new-instance v29, Lgnu/expr/ReferenceExp;

    move-object/from16 v32, v29

    move-object/from16 v29, v32

    move-object/from16 v30, v32

    move-object/from16 v31, v20

    invoke-direct/range {v30 .. v31}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v29, v27, v28

    invoke-direct/range {v24 .. v26}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v21, v23

    .line 153
    .local v21, "init":Lgnu/expr/Expression;
    new-instance v23, Lgnu/expr/ApplyExp;

    move-object/from16 v32, v23

    move-object/from16 v23, v32

    move-object/from16 v24, v32

    sget-object v25, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v26, v0

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    const/16 v28, 0x0

    move-object/from16 v29, v21

    aput-object v29, v27, v28

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    const/16 v28, 0x1

    new-instance v29, Lgnu/expr/QuoteExp;

    move-object/from16 v32, v29

    move-object/from16 v29, v32

    move-object/from16 v30, v32

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v29, v27, v28

    invoke-direct/range {v24 .. v26}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v21, v23

    .line 158
    new-instance v23, Lgnu/expr/LetExp;

    move-object/from16 v32, v23

    move-object/from16 v23, v32

    move-object/from16 v24, v32

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v25, v0

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    const/16 v27, 0x0

    move-object/from16 v28, v21

    aput-object v28, v26, v27

    invoke-direct/range {v24 .. v25}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object/from16 v22, v23

    .line 159
    .local v22, "let":Lgnu/expr/LetExp;
    move-object/from16 v23, v9

    move-object/from16 v24, v11

    move-object/from16 v25, v20

    invoke-virtual/range {v23 .. v25}, Lgnu/expr/LambdaExp;->replaceFollowing(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 160
    move-object/from16 v23, v22

    move-object/from16 v24, v12

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/LetExp;->add(Lgnu/expr/Declaration;)V

    .line 161
    move-object/from16 v23, v22

    move-object/from16 v24, v18

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 162
    move-object/from16 v23, v22

    move-object/from16 v18, v23

    .line 165
    .end local v20    # "posIncoming":Lgnu/expr/Declaration;
    .end local v21    # "init":Lgnu/expr/Expression;
    .end local v22    # "let":Lgnu/expr/LetExp;
    :cond_4
    new-instance v23, Lgnu/expr/IfExp;

    move-object/from16 v32, v23

    move-object/from16 v23, v32

    move-object/from16 v24, v32

    move-object/from16 v25, v18

    new-instance v26, Lgnu/expr/ReferenceExp;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move-object/from16 v28, v11

    invoke-direct/range {v27 .. v28}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    sget-object v27, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct/range {v24 .. v27}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object/from16 v18, v23

    .line 168
    move-object/from16 v23, v9

    move-object/from16 v24, v18

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 170
    new-instance v23, Lgnu/expr/ApplyExp;

    move-object/from16 v32, v23

    move-object/from16 v23, v32

    move-object/from16 v24, v32

    sget-object v25, Lgnu/kawa/functions/ValuesMap;->valuesMapWithPos:Lgnu/kawa/functions/ValuesMap;

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v26, v0

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    const/16 v28, 0x0

    move-object/from16 v29, v9

    aput-object v29, v27, v28

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    const/16 v28, 0x1

    new-instance v29, Lgnu/expr/ReferenceExp;

    move-object/from16 v32, v29

    move-object/from16 v29, v32

    move-object/from16 v30, v32

    move-object/from16 v31, v17

    invoke-direct/range {v30 .. v31}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v29, v27, v28

    invoke-direct/range {v24 .. v26}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v20, v23

    .line 174
    .local v20, "doMap":Lgnu/expr/ApplyExp;
    move-object/from16 v23, v20

    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 175
    move-object/from16 v23, v9

    move-object/from16 v24, v20

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 177
    new-instance v23, Lgnu/expr/ApplyExp;

    move-object/from16 v32, v23

    move-object/from16 v23, v32

    move-object/from16 v24, v32

    move-object/from16 v25, v16

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v26, v0

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    const/16 v28, 0x0

    new-instance v29, Lgnu/expr/ReferenceExp;

    move-object/from16 v32, v29

    move-object/from16 v29, v32

    move-object/from16 v30, v32

    move-object/from16 v31, v17

    invoke-direct/range {v30 .. v31}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v29, v27, v28

    invoke-direct/range {v24 .. v26}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v21, v23

    .line 181
    .local v21, "lastInit":Lgnu/expr/Expression;
    new-instance v23, Lgnu/expr/LetExp;

    move-object/from16 v32, v23

    move-object/from16 v23, v32

    move-object/from16 v24, v32

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v25, v0

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    const/16 v27, 0x0

    move-object/from16 v28, v21

    aput-object v28, v26, v27

    invoke-direct/range {v24 .. v25}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object/from16 v22, v23

    .line 182
    .local v22, "let2":Lgnu/expr/LetExp;
    move-object/from16 v23, v22

    move-object/from16 v24, v13

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/LetExp;->add(Lgnu/expr/Declaration;)V

    .line 183
    move-object/from16 v23, v22

    move-object/from16 v24, v20

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    sget-object v27, Lgnu/kawa/functions/ValuesMap;->valuesMapWithPos:Lgnu/kawa/functions/ValuesMap;

    invoke-static/range {v24 .. v27}, Lgnu/kawa/functions/CompileMisc;->validateApplyValuesMap(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 185
    move-object/from16 v23, v10

    move-object/from16 v24, v22

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/Compilation;->letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;

    move-result-object v23

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 132
    .end local v15    # "seqType":Lgnu/bytecode/Type;
    .end local v16    # "sizeMethod":Lgnu/bytecode/Method;
    .end local v17    # "sequence":Lgnu/expr/Declaration;
    .end local v18    # "pred":Lgnu/expr/Expression;
    .end local v19    # "predType":Lgnu/bytecode/Type;
    .end local v20    # "doMap":Lgnu/expr/ApplyExp;
    .end local v21    # "lastInit":Lgnu/expr/Expression;
    .end local v22    # "let2":Lgnu/expr/LetExp;
    :cond_5
    sget-object v23, Lgnu/kawa/xml/SortNodes;->typeSortedNodes:Lgnu/bytecode/ClassType;

    move-object/from16 v15, v23

    .line 133
    .restart local v15    # "seqType":Lgnu/bytecode/Type;
    new-instance v23, Lgnu/expr/ApplyExp;

    move-object/from16 v32, v23

    move-object/from16 v23, v32

    move-object/from16 v24, v32

    sget-object v25, Lgnu/kawa/xml/SortNodes;->sortNodes:Lgnu/kawa/xml/SortNodes;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v26, v0

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    const/16 v28, 0x0

    move-object/from16 v29, v14

    aput-object v29, v27, v28

    invoke-direct/range {v24 .. v26}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v14, v23

    .line 134
    sget-object v23, Lgnu/kawa/xml/CoerceNodes;->typeNodes:Lgnu/bytecode/ClassType;

    const-string/jumbo v24, "size"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v23

    move-object/from16 v16, v23

    .restart local v16    # "sizeMethod":Lgnu/bytecode/Method;
    goto/16 :goto_1
.end method

.method public static validateArithOp(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 81
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    return-object v0
.end method

.method public static validateBooleanValue(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 14

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 48
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v10

    move-object v4, v10

    .line 49
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v10, v4

    array-length v10, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 51
    move-object v10, v4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    move-object v5, v10

    .line 52
    .local v5, "arg":Lgnu/expr/Expression;
    move-object v10, v5

    invoke-virtual {v10}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    move-object v6, v10

    .line 53
    .local v6, "type":Lgnu/bytecode/Type;
    move-object v10, v6

    sget-object v11, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    if-ne v10, v11, :cond_0

    .line 54
    move-object v10, v5

    move-object v0, v10

    .line 72
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    .end local v5    # "arg":Lgnu/expr/Expression;
    .end local v6    # "type":Lgnu/bytecode/Type;
    :goto_0
    return-object v0

    .line 55
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    .restart local v5    # "arg":Lgnu/expr/Expression;
    .restart local v6    # "type":Lgnu/bytecode/Type;
    :cond_0
    move-object v10, v6

    if-nez v10, :cond_1

    .line 56
    move-object v10, v0

    sget-object v11, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v10, v11}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 57
    :cond_1
    move-object v10, v5

    instance-of v10, v10, Lgnu/expr/QuoteExp;

    if-eqz v10, :cond_3

    .line 59
    move-object v10, v5

    check-cast v10, Lgnu/expr/QuoteExp;

    invoke-virtual {v10}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    .line 62
    .local v7, "value":Ljava/lang/Object;
    move-object v10, v7

    :try_start_0
    invoke-static {v10}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    :goto_1
    move-object v0, v10

    goto :goto_0

    :cond_2
    sget-object v10, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 64
    :catch_0
    move-exception v10

    move-object v8, v10

    .line 66
    .local v8, "ex":Ljava/lang/Throwable;
    const-string/jumbo v10, "cannot convert to a boolean"

    move-object v9, v10

    .line 67
    .local v9, "message":Ljava/lang/String;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/expr/InlineCalls;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v10

    const/16 v11, 0x65

    move-object v12, v9

    invoke-virtual {v10, v11, v12}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 68
    new-instance v10, Lgnu/expr/ErrorExp;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v9

    invoke-direct {v11, v12}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    goto :goto_0

    .line 72
    .end local v5    # "arg":Lgnu/expr/Expression;
    .end local v6    # "type":Lgnu/bytecode/Type;
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "ex":Ljava/lang/Throwable;
    .end local v9    # "message":Ljava/lang/String;
    :cond_3
    move-object v10, v0

    move-object v0, v10

    goto :goto_0
.end method

.method public static validateCompare(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 16

    .prologue
    .line 21
    move-object/from16 v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 22
    move-object v6, v0

    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v4, v6

    .line 23
    .local v4, "folded":Lgnu/expr/Expression;
    move-object v6, v4

    move-object v7, v0

    if-eq v6, v7, :cond_0

    .line 24
    move-object v6, v4

    move-object v0, v6

    .line 40
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v0

    .line 25
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :cond_0
    move-object v6, v3

    check-cast v6, Lgnu/xquery/util/Compare;

    move-object v5, v6

    .line 26
    .local v5, "cproc":Lgnu/xquery/util/Compare;
    move-object v6, v5

    iget v6, v6, Lgnu/xquery/util/Compare;->flags:I

    const/16 v7, 0x20

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_2

    .line 38
    :goto_1
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ApplyExp;->getTypeRaw()Lgnu/bytecode/Type;

    move-result-object v6

    if-nez v6, :cond_1

    .line 39
    move-object v6, v0

    sget-object v7, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v6, v7}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 40
    :cond_1
    move-object v6, v0

    move-object v0, v6

    goto :goto_0

    .line 31
    :cond_2
    new-instance v6, Lgnu/expr/ApplyExp;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const-string/jumbo v8, "gnu.xquery.util.Compare"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    const-string/jumbo v9, "apply"

    const/4 v10, 0x4

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    new-instance v12, Lgnu/expr/QuoteExp;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v5

    iget v14, v14, Lgnu/xquery/util/Compare;->flags:I

    invoke-static {v14}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v14

    invoke-direct {v13, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    move-object v12, v0

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x2

    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x3

    sget-object v12, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v12, v10, v11

    invoke-direct {v7, v8, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v0, v6

    goto :goto_1
.end method
