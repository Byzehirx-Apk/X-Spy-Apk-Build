.class public Lgnu/kawa/functions/CompileMisc;
.super Ljava/lang/Object;
.source "CompileMisc.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    }
.end annotation


# static fields
.field static final CONVERT:I = 0x2

.field static final NOT:I = 0x3

.field static coerceMethod:Lgnu/bytecode/Method;

.field public static final typeContinuation:Lgnu/bytecode/ClassType;

.field static typeType:Lgnu/bytecode/ClassType;


# instance fields
.field code:I

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 308
    const-string/jumbo v0, "kawa.lang.Continuation"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;I)V
    .locals 5

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileMisc;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move v2, p2

    .local v2, "code":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/functions/CompileMisc;->proc:Lgnu/mapping/Procedure;

    .line 20
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/kawa/functions/CompileMisc;->code:I

    .line 21
    return-void
.end method

.method private static canInlineCallCC(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;
    .locals 7

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    move-object v1, v4

    .line 383
    .local v1, "args":[Lgnu/expr/Expression;
    move-object v4, v1

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    .local v2, "arg0":Lgnu/expr/Expression;
    instance-of v4, v4, Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_0

    .line 385
    move-object v4, v2

    check-cast v4, Lgnu/expr/LambdaExp;

    move-object v3, v4

    .line 386
    .local v3, "lexp":Lgnu/expr/LambdaExp;
    move-object v4, v3

    iget v4, v4, Lgnu/expr/LambdaExp;->min_args:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move-object v4, v3

    iget v4, v4, Lgnu/expr/LambdaExp;->max_args:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v4

    if-nez v4, :cond_0

    .line 389
    move-object v4, v3

    move-object v0, v4

    .line 392
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    .end local v2    # "arg0":Lgnu/expr/Expression;
    .end local v3    # "lexp":Lgnu/expr/LambdaExp;
    :goto_0
    return-object v0

    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public static compileCallCC(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/mapping/Procedure;)V
    .locals 22

    .prologue
    .line 313
    move-object/from16 v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object/from16 v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object/from16 v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v12, v0

    invoke-static {v12}, Lgnu/kawa/functions/CompileMisc;->canInlineCallCC(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;

    move-result-object v12

    move-object v4, v12

    .line 314
    .local v4, "lambda":Lgnu/expr/LambdaExp;
    move-object v12, v4

    if-nez v12, :cond_0

    .line 316
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    invoke-static {v12, v13, v14}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 317
    .line 376
    :goto_0
    return-void

    .line 319
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v12

    move-object v5, v12

    .line 320
    .local v5, "code":Lgnu/bytecode/CodeAttr;
    move-object v12, v4

    invoke-virtual {v12}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v12

    move-object v6, v12

    .line 321
    .local v6, "param":Lgnu/expr/Declaration;
    move-object v12, v6

    invoke-virtual {v12}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v12, v6

    invoke-virtual {v12}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v12

    if-nez v12, :cond_2

    move-object v12, v6

    invoke-virtual {v12}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v12

    if-nez v12, :cond_2

    .line 323
    move-object v12, v6

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lgnu/expr/Declaration;->setCanCall(Z)V

    .line 324
    new-instance v12, Lgnu/kawa/functions/CompileTimeContinuation;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    invoke-direct {v13}, Lgnu/kawa/functions/CompileTimeContinuation;-><init>()V

    move-object v7, v12

    .line 325
    .local v7, "contProxy":Lgnu/kawa/functions/CompileTimeContinuation;
    move-object v12, v2

    instance-of v12, v12, Lgnu/expr/StackTarget;

    if-eqz v12, :cond_1

    move-object v12, v2

    invoke-virtual {v12}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v12

    :goto_1
    move-object v8, v12

    .line 326
    .local v8, "rtype":Lgnu/bytecode/Type;
    move-object v12, v6

    move-object v13, v4

    iget-object v13, v13, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-static {v12, v13}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->check(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Z

    move-result v12

    move v9, v12

    .line 328
    .local v9, "runFinallyBlocks":Z
    move-object v12, v5

    move-object v13, v8

    move v14, v9

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/CodeAttr;->startExitableBlock(Lgnu/bytecode/Type;Z)Lgnu/bytecode/ExitableBlock;

    move-result-object v12

    move-object v10, v12

    .line 329
    .local v10, "bl":Lgnu/bytecode/ExitableBlock;
    move-object v12, v7

    move-object v13, v10

    iput-object v13, v12, Lgnu/kawa/functions/CompileTimeContinuation;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 330
    move-object v12, v7

    move-object v13, v2

    iput-object v13, v12, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    .line 331
    move-object v12, v6

    new-instance v13, Lgnu/expr/QuoteExp;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    move-object v15, v7

    invoke-direct {v14, v15}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v12, v13}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 332
    new-instance v12, Lgnu/expr/ApplyExp;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    move-object v14, v4

    const/4 v15, 0x1

    new-array v15, v15, [Lgnu/expr/Expression;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    sget-object v18, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v13, v1

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 333
    move-object v12, v5

    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->endExitableBlock()V

    .line 334
    goto/16 :goto_0

    .line 325
    .end local v8    # "rtype":Lgnu/bytecode/Type;
    .end local v9    # "runFinallyBlocks":Z
    .end local v10    # "bl":Lgnu/bytecode/ExitableBlock;
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 337
    .end local v7    # "contProxy":Lgnu/kawa/functions/CompileTimeContinuation;
    :cond_2
    move-object v12, v5

    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v12

    move-object v7, v12

    .line 338
    .local v7, "sc":Lgnu/bytecode/Scope;
    move-object v12, v7

    move-object v13, v5

    sget-object v14, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v12

    move-object v8, v12

    .line 339
    .local v8, "contVar":Lgnu/bytecode/Variable;
    new-instance v12, Lgnu/expr/Declaration;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    move-object v14, v8

    invoke-direct {v13, v14}, Lgnu/expr/Declaration;-><init>(Lgnu/bytecode/Variable;)V

    move-object v9, v12

    .line 340
    .local v9, "contDecl":Lgnu/expr/Declaration;
    move-object v12, v5

    sget-object v13, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 341
    move-object v12, v5

    sget-object v13, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 342
    move-object v12, v1

    invoke-virtual {v12}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 343
    move-object v12, v5

    sget-object v13, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    const-string/jumbo v14, "<init>"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 344
    move-object v12, v5

    move-object v13, v8

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 345
    move-object v12, v5

    const/4 v13, 0x0

    move-object v14, v2

    instance-of v14, v14, Lgnu/expr/IgnoreTarget;

    if-nez v14, :cond_3

    move-object v14, v2

    instance-of v14, v14, Lgnu/expr/ConsumerTarget;

    if-eqz v14, :cond_5

    :cond_3
    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 346
    new-instance v12, Lgnu/expr/ApplyExp;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    move-object v14, v4

    const/4 v15, 0x1

    new-array v15, v15, [Lgnu/expr/Expression;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    new-instance v18, Lgnu/expr/ReferenceExp;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    move-object/from16 v20, v9

    invoke-direct/range {v19 .. v20}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v10, v12

    .line 347
    .local v10, "app":Lgnu/expr/ApplyExp;
    move-object v12, v10

    move-object v13, v1

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 349
    move-object v12, v5

    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 351
    move-object v12, v5

    move-object v13, v8

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 352
    move-object v12, v5

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 353
    move-object v12, v5

    sget-object v13, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    const-string/jumbo v14, "invoked"

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 355
    :cond_4
    move-object v12, v5

    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 358
    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 359
    move-object v12, v5

    move-object v13, v8

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 360
    move-object v12, v2

    instance-of v12, v12, Lgnu/expr/ConsumerTarget;

    if-eqz v12, :cond_6

    .line 362
    move-object v12, v1

    invoke-virtual {v12}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 363
    sget-object v12, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    const-string/jumbo v13, "handleException$X"

    const/4 v14, 0x3

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    move-object v11, v12

    .line 364
    .local v11, "handleMethod":Lgnu/bytecode/Method;
    move-object v12, v5

    move-object v13, v11

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 365
    .line 372
    :goto_3
    move-object v12, v5

    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 374
    move-object v12, v5

    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 375
    move-object v12, v5

    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v12

    .line 376
    goto/16 :goto_0

    .line 345
    .end local v10    # "app":Lgnu/expr/ApplyExp;
    .end local v11    # "handleMethod":Lgnu/bytecode/Method;
    :cond_5
    sget-object v14, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto/16 :goto_2

    .line 368
    .restart local v10    # "app":Lgnu/expr/ApplyExp;
    :cond_6
    sget-object v12, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    const-string/jumbo v13, "handleException"

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    move-object v11, v12

    .line 369
    .restart local v11    # "handleMethod":Lgnu/bytecode/Method;
    move-object v12, v5

    move-object v13, v11

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 370
    move-object v12, v2

    move-object v13, v1

    sget-object v14, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v12, v13, v14}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_3
.end method

.method public static compileConvert(Lgnu/kawa/functions/Convert;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 13

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "proc":Lgnu/kawa/functions/Convert;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object/from16 v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    move-object v4, v7

    .line 233
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v7, v4

    array-length v7, v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 234
    new-instance v7, Ljava/lang/Error;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wrong number of arguments to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/functions/Convert;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 235
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    move-object v5, v7

    .line 236
    .local v5, "code":Lgnu/bytecode/CodeAttr;
    move-object v7, v4

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Lkawa/standard/Scheme;->getTypeValue(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v7

    move-object v6, v7

    .line 237
    .local v6, "type":Lgnu/bytecode/Type;
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 239
    move-object v7, v4

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v8, v2

    move-object v9, v6

    invoke-static {v9}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 240
    move-object v7, v5

    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 241
    move-object v7, v3

    move-object v8, v2

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 261
    :cond_1
    :goto_0
    return-void

    .line 245
    :cond_2
    sget-object v7, Lgnu/kawa/functions/CompileMisc;->typeType:Lgnu/bytecode/ClassType;

    if-nez v7, :cond_3

    .line 247
    const-string/jumbo v7, "gnu.bytecode.Type"

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    sput-object v7, Lgnu/kawa/functions/CompileMisc;->typeType:Lgnu/bytecode/ClassType;

    .line 249
    :cond_3
    sget-object v7, Lgnu/kawa/functions/CompileMisc;->coerceMethod:Lgnu/bytecode/Method;

    if-nez v7, :cond_4

    .line 251
    sget-object v7, Lgnu/kawa/functions/CompileMisc;->typeType:Lgnu/bytecode/ClassType;

    const-string/jumbo v8, "coerceFromObject"

    sget-object v9, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    sget-object v10, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v7

    sput-object v7, Lgnu/kawa/functions/CompileMisc;->coerceMethod:Lgnu/bytecode/Method;

    .line 256
    :cond_4
    move-object v7, v4

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v2

    sget-object v9, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 257
    move-object v7, v4

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v8, v2

    sget-object v9, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 258
    move-object v7, v5

    sget-object v8, Lgnu/kawa/functions/CompileMisc;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 259
    move-object v7, v3

    move-object v8, v2

    sget-object v9, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_0
.end method

.method public static forConvert(Ljava/lang/Object;)Lgnu/kawa/functions/CompileMisc;
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "proc":Ljava/lang/Object;
    new-instance v1, Lgnu/kawa/functions/CompileMisc;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    check-cast v3, Lgnu/mapping/Procedure;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lgnu/kawa/functions/CompileMisc;-><init>(Lgnu/mapping/Procedure;I)V

    move-object v0, v1

    .end local v0    # "proc":Ljava/lang/Object;
    return-object v0
.end method

.method public static forNot(Ljava/lang/Object;)Lgnu/kawa/functions/CompileMisc;
    .locals 6

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "proc":Ljava/lang/Object;
    new-instance v1, Lgnu/kawa/functions/CompileMisc;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    check-cast v3, Lgnu/mapping/Procedure;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lgnu/kawa/functions/CompileMisc;-><init>(Lgnu/mapping/Procedure;I)V

    move-object v0, v1

    .end local v0    # "proc":Ljava/lang/Object;
    return-object v0
.end method

.method public static validateApplyAppendValues(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 9

    .prologue
    .line 139
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

    .line 140
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    move-object v4, v6

    .line 141
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v6, v4

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 142
    move-object v6, v4

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v0, v6

    .line 148
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v0

    .line 143
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :cond_0
    move-object v6, v4

    array-length v6, v6

    if-nez v6, :cond_1

    .line 144
    sget-object v6, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object v0, v6

    goto :goto_0

    .line 145
    :cond_1
    move-object v6, v0

    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v5, v6

    .line 146
    .local v5, "folded":Lgnu/expr/Expression;
    move-object v6, v5

    move-object v7, v0

    if-eq v6, v7, :cond_2

    .line 147
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 148
    :cond_2
    move-object v6, v0

    move-object v0, v6

    goto :goto_0
.end method

.method public static validateApplyCallCC(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 294
    move-object v1, p0

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p1

    .local v2, "visitor":Lgnu/expr/InlineCalls;
    move-object v3, p2

    .local v3, "required":Lgnu/bytecode/Type;
    move-object v4, p3

    .local v4, "proc":Lgnu/mapping/Procedure;
    move-object v7, v1

    invoke-static {v7}, Lgnu/kawa/functions/CompileMisc;->canInlineCallCC(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;

    move-result-object v7

    move-object v5, v7

    .line 295
    .local v5, "lexp":Lgnu/expr/LambdaExp;
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 297
    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 298
    move-object v7, v5

    move-object v8, v1

    iput-object v8, v7, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 299
    move-object v7, v5

    move-object v8, v2

    invoke-virtual {v8}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v8

    iput-object v8, v7, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 300
    move-object v7, v5

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v6, v7

    .line 301
    .local v6, "contDecl":Lgnu/expr/Declaration;
    move-object v7, v6

    const-wide/16 v8, 0x2000

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 302
    move-object v7, v6

    sget-object v8, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 304
    .end local v6    # "contDecl":Lgnu/expr/Declaration;
    :cond_0
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 305
    move-object v7, v1

    move-object v1, v7

    .end local v1    # "exp":Lgnu/expr/ApplyExp;
    return-object v1
.end method

.method public static validateApplyConstantFunction0(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 50
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

    .line 51
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v6

    move v4, v6

    .line 52
    .local v4, "nargs":I
    move v6, v4

    if-eqz v6, :cond_0

    move-object v6, v1

    if-eqz v6, :cond_0

    .line 54
    move-object v6, v3

    move v7, v4

    invoke-static {v6, v7}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 55
    .local v5, "message":Ljava/lang/String;
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    .line 57
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    .end local v5    # "message":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :cond_0
    move-object v6, v3

    check-cast v6, Lgnu/kawa/functions/ConstantFunction0;

    iget-object v6, v6, Lgnu/kawa/functions/ConstantFunction0;->constant:Lgnu/expr/QuoteExp;

    move-object v0, v6

    goto :goto_0
.end method

.method public static validateApplyConvert(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 14

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v8

    move-object v4, v8

    .line 64
    .local v4, "comp":Lgnu/expr/Compilation;
    move-object v8, v4

    invoke-virtual {v8}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v8

    move-object v5, v8

    .line 65
    .local v5, "language":Lgnu/expr/Language;
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    move-object v6, v8

    .line 66
    .local v6, "args":[Lgnu/expr/Expression;
    move-object v8, v6

    array-length v8, v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 68
    move-object v8, v6

    const/4 v9, 0x0

    move-object v10, v1

    move-object v11, v6

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v10

    aput-object v10, v8, v9

    .line 69
    move-object v8, v5

    move-object v9, v6

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v8

    move-object v7, v8

    .line 70
    .local v7, "type":Lgnu/bytecode/Type;
    move-object v8, v7

    instance-of v8, v8, Lgnu/bytecode/Type;

    if-eqz v8, :cond_0

    .line 72
    move-object v8, v6

    const/4 v9, 0x0

    new-instance v10, Lgnu/expr/QuoteExp;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v7

    invoke-direct {v11, v12}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v10, v8, v9

    .line 73
    move-object v8, v6

    const/4 v9, 0x1

    move-object v10, v1

    move-object v11, v6

    const/4 v12, 0x1

    aget-object v11, v11, v12

    move-object v12, v7

    invoke-virtual {v10, v11, v12}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v10

    aput-object v10, v8, v9

    .line 74
    move-object v8, v7

    move-object v9, v4

    invoke-static {v8, v9}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v8

    .line 75
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 76
    move-object v8, v0

    move-object v0, v8

    .line 80
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    .end local v7    # "type":Lgnu/bytecode/Type;
    :goto_0
    return-object v0

    .line 79
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :cond_0
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 80
    move-object v8, v0

    move-object v0, v8

    goto :goto_0
.end method

.method public static validateApplyFormat(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 20

    .prologue
    .line 97
    move-object/from16 v1, p0

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v2, p1

    .local v2, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v3, p2

    .local v3, "required":Lgnu/bytecode/Type;
    move-object/from16 v4, p3

    .local v4, "proc":Lgnu/mapping/Procedure;
    move-object v13, v1

    move-object v14, v2

    invoke-virtual {v13, v14}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 98
    sget-object v13, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v5, v13

    .line 99
    .local v5, "retType":Lgnu/bytecode/Type;
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v13

    move-object v6, v13

    .line 100
    .local v6, "args":[Lgnu/expr/Expression;
    move-object v13, v6

    array-length v13, v13

    if-lez v13, :cond_6

    .line 102
    const-string/jumbo v13, "gnu.kawa.functions.Format"

    invoke-static {v13}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v13

    move-object v7, v13

    .line 103
    .local v7, "typeFormat":Lgnu/bytecode/ClassType;
    move-object v13, v6

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v13

    move-object v8, v13

    .line 104
    .local v8, "f":Ljava/lang/Object;
    move-object v13, v6

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v13

    move-object v9, v13

    .line 105
    .local v9, "ftype":Lgnu/bytecode/Type;
    move-object v13, v8

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v13, v14, :cond_0

    move-object v13, v9

    sget-object v14, Lgnu/kawa/lispexpr/LangObjType;->stringType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v13, v14}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 107
    :cond_0
    move-object v13, v8

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v13, v14, :cond_1

    const/4 v13, 0x1

    :goto_0
    move v10, v13

    .line 108
    .local v10, "skip":I
    move-object v13, v6

    array-length v13, v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v14, v10

    sub-int/2addr v13, v14

    new-array v13, v13, [Lgnu/expr/Expression;

    move-object v11, v13

    .line 109
    .local v11, "xargs":[Lgnu/expr/Expression;
    move-object v13, v11

    const/4 v14, 0x0

    new-instance v15, Lgnu/expr/QuoteExp;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    sget-object v18, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-direct/range {v16 .. v18}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    aput-object v15, v13, v14

    .line 110
    move-object v13, v6

    move v14, v10

    move-object v15, v11

    const/16 v16, 0x1

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    new-instance v13, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v7

    const-string/jumbo v16, "formatToString"

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v15

    move-object/from16 v16, v11

    invoke-direct/range {v14 .. v16}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v12, v13

    .line 112
    .local v12, "ae":Lgnu/expr/ApplyExp;
    move-object v13, v12

    sget-object v14, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    invoke-virtual {v13, v14}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 113
    move-object v13, v12

    move-object v1, v13

    .line 133
    .end local v1    # "exp":Lgnu/expr/ApplyExp;
    .end local v7    # "typeFormat":Lgnu/bytecode/ClassType;
    .end local v8    # "f":Ljava/lang/Object;
    .end local v9    # "ftype":Lgnu/bytecode/Type;
    .end local v10    # "skip":I
    .end local v11    # "xargs":[Lgnu/expr/Expression;
    .end local v12    # "ae":Lgnu/expr/ApplyExp;
    :goto_1
    return-object v1

    .line 107
    .restart local v1    # "exp":Lgnu/expr/ApplyExp;
    .restart local v7    # "typeFormat":Lgnu/bytecode/ClassType;
    .restart local v8    # "f":Ljava/lang/Object;
    .restart local v9    # "ftype":Lgnu/bytecode/Type;
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 115
    :cond_2
    move-object v13, v8

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v13, v14, :cond_3

    move-object v13, v9

    const-string/jumbo v14, "java.io.Writer"

    invoke-static {v14}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 118
    :cond_3
    move-object v13, v8

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v13, v14, :cond_4

    .line 120
    move-object v13, v6

    array-length v13, v13

    new-array v13, v13, [Lgnu/expr/Expression;

    move-object v10, v13

    .line 121
    .local v10, "xargs":[Lgnu/expr/Expression;
    move-object v13, v10

    const/4 v14, 0x0

    sget-object v15, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v15, v13, v14

    .line 122
    move-object v13, v6

    const/4 v14, 0x1

    move-object v15, v10

    const/16 v16, 0x1

    move-object/from16 v17, v6

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    move-object v13, v10

    move-object v6, v13

    .line 125
    .end local v10    # "xargs":[Lgnu/expr/Expression;
    :cond_4
    new-instance v13, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v7

    const-string/jumbo v16, "formatToWriter"

    const/16 v17, 0x3

    invoke-virtual/range {v15 .. v17}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v15

    move-object/from16 v16, v6

    invoke-direct/range {v14 .. v16}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v10, v13

    .line 126
    .local v10, "ae":Lgnu/expr/ApplyExp;
    move-object v13, v10

    sget-object v14, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v13, v14}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 127
    move-object v13, v10

    move-object v1, v13

    goto :goto_1

    .line 129
    .end local v10    # "ae":Lgnu/expr/ApplyExp;
    :cond_5
    move-object v13, v9

    const-string/jumbo v14, "java.io.OutputStream"

    invoke-static {v14}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 130
    sget-object v13, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object v5, v13

    .line 132
    .end local v7    # "typeFormat":Lgnu/bytecode/ClassType;
    .end local v8    # "f":Ljava/lang/Object;
    .end local v9    # "ftype":Lgnu/bytecode/Type;
    :cond_6
    move-object v13, v1

    move-object v14, v5

    invoke-virtual {v13, v14}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 133
    const/4 v13, 0x0

    move-object v1, v13

    goto :goto_1
.end method

.method public static validateApplyMakeProcedure(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 21

    .prologue
    .line 154
    move-object/from16 v2, p0

    .local v2, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v3, p1

    .local v3, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v4, p2

    .local v4, "required":Lgnu/bytecode/Type;
    move-object/from16 v5, p3

    .local v5, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 155
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v6, v17

    .line 156
    .local v6, "args":[Lgnu/expr/Expression;
    move-object/from16 v17, v6

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v7, v17

    .line 157
    .local v7, "alen":I
    const/16 v17, 0x0

    move-object/from16 v8, v17

    .line 158
    .local v8, "method":Lgnu/expr/Expression;
    const/16 v17, 0x0

    move/from16 v9, v17

    .line 159
    .local v9, "countMethods":I
    const/16 v17, 0x0

    move-object/from16 v10, v17

    .line 160
    .local v10, "name":Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v11, v17

    .local v11, "i":I
    :goto_0
    move/from16 v17, v11

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 162
    move-object/from16 v17, v6

    move/from16 v18, v11

    aget-object v17, v17, v18

    move-object/from16 v12, v17

    .line 164
    .local v12, "arg":Lgnu/expr/Expression;
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v17, v12

    check-cast v17, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move-object/from16 v13, v18

    .local v13, "key":Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 167
    move-object/from16 v17, v13

    check-cast v17, Lgnu/expr/Keyword;

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v14, v17

    .line 168
    .local v14, "keyword":Ljava/lang/String;
    move-object/from16 v17, v6

    add-int/lit8 v11, v11, 0x1

    move/from16 v18, v11

    aget-object v17, v17, v18

    move-object/from16 v15, v17

    .line 169
    .local v15, "next":Lgnu/expr/Expression;
    move-object/from16 v17, v14

    const-string/jumbo v18, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 171
    move-object/from16 v17, v15

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 172
    move-object/from16 v17, v15

    check-cast v17, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v17

    .line 181
    .line 160
    .end local v13    # "key":Ljava/lang/Object;
    .end local v14    # "keyword":Ljava/lang/String;
    .end local v15    # "next":Lgnu/expr/Expression;
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 174
    .restart local v13    # "key":Ljava/lang/Object;
    .restart local v14    # "keyword":Ljava/lang/String;
    .restart local v15    # "next":Lgnu/expr/Expression;
    :cond_1
    move-object/from16 v17, v14

    const-string/jumbo v18, "method"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 176
    add-int/lit8 v9, v9, 0x1

    .line 177
    move-object/from16 v17, v15

    move-object/from16 v8, v17

    goto :goto_1

    .line 184
    .end local v13    # "key":Ljava/lang/Object;
    .end local v14    # "keyword":Ljava/lang/String;
    .end local v15    # "next":Lgnu/expr/Expression;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 185
    move-object/from16 v17, v12

    move-object/from16 v8, v17

    goto :goto_1

    .line 188
    .end local v12    # "arg":Lgnu/expr/Expression;
    :cond_3
    move/from16 v17, v9

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 190
    move-object/from16 v17, v8

    check-cast v17, Lgnu/expr/LambdaExp;

    move-object/from16 v11, v17

    .line 191
    .local v11, "lexp":Lgnu/expr/LambdaExp;
    const/16 v17, 0x0

    move/from16 v12, v17

    .local v12, "i":I
    :goto_2
    move/from16 v17, v12

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 193
    move-object/from16 v17, v6

    move/from16 v18, v12

    aget-object v17, v17, v18

    move-object/from16 v13, v17

    .line 195
    .local v13, "arg":Lgnu/expr/Expression;
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v17, v13

    check-cast v17, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move-object/from16 v14, v18

    .local v14, "key":Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 198
    move-object/from16 v17, v14

    check-cast v17, Lgnu/expr/Keyword;

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v15, v17

    .line 199
    .local v15, "keyword":Ljava/lang/String;
    move-object/from16 v17, v6

    add-int/lit8 v12, v12, 0x1

    move/from16 v18, v12

    aget-object v17, v17, v18

    move-object/from16 v16, v17

    .line 200
    .local v16, "next":Lgnu/expr/Expression;
    move-object/from16 v17, v15

    const-string/jumbo v18, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 201
    move-object/from16 v17, v11

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 191
    .end local v14    # "key":Ljava/lang/Object;
    .end local v15    # "keyword":Ljava/lang/String;
    .end local v16    # "next":Lgnu/expr/Expression;
    :cond_4
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 202
    .restart local v14    # "key":Ljava/lang/Object;
    .restart local v15    # "keyword":Ljava/lang/String;
    .restart local v16    # "next":Lgnu/expr/Expression;
    :cond_5
    move-object/from16 v17, v15

    const-string/jumbo v18, "method"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 203
    goto :goto_3

    .line 205
    :cond_6
    move-object/from16 v17, v11

    sget-object v18, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v18

    move-object/from16 v19, v16

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/LambdaExp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 208
    .end local v13    # "arg":Lgnu/expr/Expression;
    .end local v14    # "key":Ljava/lang/Object;
    .end local v15    # "keyword":Ljava/lang/String;
    .end local v16    # "next":Lgnu/expr/Expression;
    :cond_7
    move-object/from16 v17, v8

    move-object/from16 v2, v17

    .line 210
    .end local v2    # "exp":Lgnu/expr/ApplyExp;
    .end local v11    # "lexp":Lgnu/expr/LambdaExp;
    .end local v12    # "i":I
    :goto_4
    return-object v2

    .restart local v2    # "exp":Lgnu/expr/ApplyExp;
    .local v11, "i":I
    :cond_8
    move-object/from16 v17, v2

    move-object/from16 v2, v17

    goto :goto_4
.end method

.method public static validateApplyMap(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 42

    .prologue
    .line 431
    move-object/from16 v2, p0

    .local v2, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v3, p1

    .local v3, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v4, p2

    .local v4, "required":Lgnu/bytecode/Type;
    move-object/from16 v5, p3

    .local v5, "xproc":Lgnu/mapping/Procedure;
    move-object/from16 v33, v5

    check-cast v33, Lgnu/kawa/functions/Map;

    move-object/from16 v6, v33

    .line 432
    .local v6, "mproc":Lgnu/kawa/functions/Map;
    move-object/from16 v33, v6

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/kawa/functions/Map;->collect:Z

    move/from16 v33, v0

    move/from16 v7, v33

    .line 435
    .local v7, "collect":Z
    move-object/from16 v33, v2

    move-object/from16 v34, v3

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 436
    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v8, v33

    .line 437
    .local v8, "args":[Lgnu/expr/Expression;
    move-object/from16 v33, v8

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v9, v33

    .line 438
    .local v9, "nargs":I
    move/from16 v33, v9

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_0

    .line 439
    move-object/from16 v33, v2

    move-object/from16 v2, v33

    .line 534
    .end local v2    # "exp":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v2

    .line 441
    .restart local v2    # "exp":Lgnu/expr/ApplyExp;
    :cond_0
    add-int/lit8 v9, v9, -0x1

    .line 443
    move-object/from16 v33, v8

    const/16 v34, 0x0

    aget-object v33, v33, v34

    move-object/from16 v10, v33

    .line 447
    .local v10, "proc":Lgnu/expr/Expression;
    move-object/from16 v33, v10

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Expression;->side_effects()Z

    move-result v33

    if-nez v33, :cond_1

    const/16 v33, 0x1

    :goto_1
    move/from16 v11, v33

    .line 450
    .local v11, "procSafeForMultipleEvaluation":Z
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v33, v0

    move-object/from16 v12, v33

    .line 451
    .local v12, "inits1":[Lgnu/expr/Expression;
    move-object/from16 v33, v12

    const/16 v34, 0x0

    move-object/from16 v35, v10

    aput-object v35, v33, v34

    .line 452
    new-instance v33, Lgnu/expr/LetExp;

    move-object/from16 v41, v33

    move-object/from16 v33, v41

    move-object/from16 v34, v41

    move-object/from16 v35, v12

    invoke-direct/range {v34 .. v35}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object/from16 v13, v33

    .line 453
    .local v13, "let1":Lgnu/expr/LetExp;
    move-object/from16 v33, v13

    const-string/jumbo v34, "%proc"

    sget-object v35, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v33

    move-object/from16 v14, v33

    .line 455
    .local v14, "procDecl":Lgnu/expr/Declaration;
    move-object/from16 v33, v14

    move-object/from16 v34, v8

    const/16 v35, 0x0

    aget-object v34, v34, v35

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 458
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v33, v0

    move-object/from16 v15, v33

    .line 459
    .local v15, "inits2":[Lgnu/expr/Expression;
    new-instance v33, Lgnu/expr/LetExp;

    move-object/from16 v41, v33

    move-object/from16 v33, v41

    move-object/from16 v34, v41

    move-object/from16 v35, v15

    invoke-direct/range {v34 .. v35}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object/from16 v16, v33

    .line 460
    .local v16, "let2":Lgnu/expr/LetExp;
    move-object/from16 v33, v13

    move-object/from16 v34, v16

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 461
    new-instance v33, Lgnu/expr/LambdaExp;

    move-object/from16 v41, v33

    move-object/from16 v33, v41

    move-object/from16 v34, v41

    move/from16 v35, v7

    if-eqz v35, :cond_2

    move/from16 v35, v9

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    :goto_2
    invoke-direct/range {v34 .. v35}, Lgnu/expr/LambdaExp;-><init>(I)V

    move-object/from16 v17, v33

    .line 462
    .local v17, "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v33, v15

    const/16 v34, 0x0

    move-object/from16 v35, v17

    aput-object v35, v33, v34

    .line 463
    move-object/from16 v33, v16

    const-string/jumbo v34, "%loop"

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v33

    move-object/from16 v18, v33

    .line 464
    .local v18, "loopDecl":Lgnu/expr/Declaration;
    move-object/from16 v33, v18

    move-object/from16 v34, v17

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 467
    move/from16 v33, v9

    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v33, v0

    move-object/from16 v19, v33

    .line 468
    .local v19, "inits3":[Lgnu/expr/Expression;
    new-instance v33, Lgnu/expr/LetExp;

    move-object/from16 v41, v33

    move-object/from16 v33, v41

    move-object/from16 v34, v41

    move-object/from16 v35, v19

    invoke-direct/range {v34 .. v35}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object/from16 v20, v33

    .line 470
    .local v20, "let3":Lgnu/expr/LetExp;
    move/from16 v33, v9

    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Declaration;

    move-object/from16 v33, v0

    move-object/from16 v21, v33

    .line 471
    .local v21, "largs":[Lgnu/expr/Declaration;
    move/from16 v33, v9

    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Declaration;

    move-object/from16 v33, v0

    move-object/from16 v22, v33

    .line 472
    .local v22, "pargs":[Lgnu/expr/Declaration;
    const/16 v33, 0x0

    move/from16 v23, v33

    .local v23, "i":I
    :goto_3
    move/from16 v33, v23

    move/from16 v34, v9

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_3

    .line 474
    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v41, v33

    move-object/from16 v33, v41

    move-object/from16 v34, v41

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "arg"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move/from16 v34, v23

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v24, v33

    .line 475
    .local v24, "argName":Ljava/lang/String;
    move-object/from16 v33, v21

    move/from16 v34, v23

    move-object/from16 v35, v17

    move-object/from16 v36, v24

    invoke-virtual/range {v35 .. v36}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v35

    aput-object v35, v33, v34

    .line 476
    move-object/from16 v33, v22

    move/from16 v34, v23

    move-object/from16 v35, v20

    move-object/from16 v36, v24

    sget-object v37, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v35 .. v37}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v35

    aput-object v35, v33, v34

    .line 477
    move-object/from16 v33, v19

    move/from16 v34, v23

    new-instance v35, Lgnu/expr/ReferenceExp;

    move-object/from16 v41, v35

    move-object/from16 v35, v41

    move-object/from16 v36, v41

    move-object/from16 v37, v21

    move/from16 v38, v23

    aget-object v37, v37, v38

    invoke-direct/range {v36 .. v37}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v35, v33, v34

    .line 478
    move-object/from16 v33, v22

    move/from16 v34, v23

    aget-object v33, v33, v34

    move-object/from16 v34, v19

    move/from16 v35, v23

    aget-object v34, v34, v35

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 472
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 447
    .end local v11    # "procSafeForMultipleEvaluation":Z
    .end local v12    # "inits1":[Lgnu/expr/Expression;
    .end local v13    # "let1":Lgnu/expr/LetExp;
    .end local v14    # "procDecl":Lgnu/expr/Declaration;
    .end local v15    # "inits2":[Lgnu/expr/Expression;
    .end local v16    # "let2":Lgnu/expr/LetExp;
    .end local v17    # "lexp":Lgnu/expr/LambdaExp;
    .end local v18    # "loopDecl":Lgnu/expr/Declaration;
    .end local v19    # "inits3":[Lgnu/expr/Expression;
    .end local v20    # "let3":Lgnu/expr/LetExp;
    .end local v21    # "largs":[Lgnu/expr/Declaration;
    .end local v22    # "pargs":[Lgnu/expr/Declaration;
    .end local v23    # "i":I
    .end local v24    # "argName":Ljava/lang/String;
    :cond_1
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 461
    .restart local v11    # "procSafeForMultipleEvaluation":Z
    .restart local v12    # "inits1":[Lgnu/expr/Expression;
    .restart local v13    # "let1":Lgnu/expr/LetExp;
    .restart local v14    # "procDecl":Lgnu/expr/Declaration;
    .restart local v15    # "inits2":[Lgnu/expr/Expression;
    .restart local v16    # "let2":Lgnu/expr/LetExp;
    :cond_2
    move/from16 v35, v9

    goto/16 :goto_2

    .line 480
    .restart local v17    # "lexp":Lgnu/expr/LambdaExp;
    .restart local v18    # "loopDecl":Lgnu/expr/Declaration;
    .restart local v19    # "inits3":[Lgnu/expr/Expression;
    .restart local v20    # "let3":Lgnu/expr/LetExp;
    .restart local v21    # "largs":[Lgnu/expr/Declaration;
    .restart local v22    # "pargs":[Lgnu/expr/Declaration;
    .restart local v23    # "i":I
    :cond_3
    move/from16 v33, v7

    if-eqz v33, :cond_4

    move-object/from16 v33, v17

    const-string/jumbo v34, "result"

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v33

    :goto_4
    move-object/from16 v23, v33

    .line 481
    .local v23, "resultDecl":Lgnu/expr/Declaration;
    const/16 v33, 0x1

    move/from16 v34, v9

    add-int v33, v33, v34

    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v33, v0

    move-object/from16 v24, v33

    .line 482
    .local v24, "doArgs":[Lgnu/expr/Expression;
    move/from16 v33, v7

    if-eqz v33, :cond_5

    move/from16 v33, v9

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    :goto_5
    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v33, v0

    move-object/from16 v25, v33

    .line 483
    .local v25, "recArgs":[Lgnu/expr/Expression;
    const/16 v33, 0x0

    move/from16 v26, v33

    .local v26, "i":I
    :goto_6
    move/from16 v33, v26

    move/from16 v34, v9

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_6

    .line 485
    move-object/from16 v33, v24

    move/from16 v34, v26

    const/16 v35, 0x1

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v35, v3

    new-instance v36, Lgnu/expr/ReferenceExp;

    move-object/from16 v41, v36

    move-object/from16 v36, v41

    move-object/from16 v37, v41

    move-object/from16 v38, v22

    move/from16 v39, v26

    aget-object v38, v38, v39

    invoke-direct/range {v37 .. v38}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const-string/jumbo v37, "car"

    invoke-static/range {v36 .. v37}, Lgnu/kawa/reflect/SlotGet;->makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;

    move-result-object v36

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v35

    aput-object v35, v33, v34

    .line 486
    move-object/from16 v33, v25

    move/from16 v34, v26

    move-object/from16 v35, v3

    new-instance v36, Lgnu/expr/ReferenceExp;

    move-object/from16 v41, v36

    move-object/from16 v36, v41

    move-object/from16 v37, v41

    move-object/from16 v38, v22

    move/from16 v39, v26

    aget-object v38, v38, v39

    invoke-direct/range {v37 .. v38}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const-string/jumbo v37, "cdr"

    invoke-static/range {v36 .. v37}, Lgnu/kawa/reflect/SlotGet;->makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;

    move-result-object v36

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v35

    aput-object v35, v33, v34

    .line 483
    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    .line 480
    .end local v24    # "doArgs":[Lgnu/expr/Expression;
    .end local v25    # "recArgs":[Lgnu/expr/Expression;
    .end local v26    # "i":I
    .local v23, "i":I
    :cond_4
    const/16 v33, 0x0

    goto/16 :goto_4

    .line 482
    .local v23, "resultDecl":Lgnu/expr/Declaration;
    .restart local v24    # "doArgs":[Lgnu/expr/Expression;
    :cond_5
    move/from16 v33, v9

    goto :goto_5

    .line 488
    .restart local v25    # "recArgs":[Lgnu/expr/Expression;
    .restart local v26    # "i":I
    :cond_6
    move/from16 v33, v11

    if-nez v33, :cond_7

    .line 489
    new-instance v33, Lgnu/expr/ReferenceExp;

    move-object/from16 v41, v33

    move-object/from16 v33, v41

    move-object/from16 v34, v41

    move-object/from16 v35, v14

    invoke-direct/range {v34 .. v35}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v10, v33

    .line 490
    :cond_7
    move-object/from16 v33, v24

    const/16 v34, 0x0

    move-object/from16 v35, v10

    aput-object v35, v33, v34

    .line 491
    move-object/from16 v33, v3

    new-instance v34, Lgnu/expr/ApplyExp;

    move-object/from16 v41, v34

    move-object/from16 v34, v41

    move-object/from16 v35, v41

    new-instance v36, Lgnu/expr/ReferenceExp;

    move-object/from16 v41, v36

    move-object/from16 v36, v41

    move-object/from16 v37, v41

    move-object/from16 v38, v6

    move-object/from16 v0, v38

    iget-object v0, v0, Lgnu/kawa/functions/Map;->applyFieldDecl:Lgnu/expr/Declaration;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v37, v24

    invoke-direct/range {v35 .. v37}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v26, v33

    .line 492
    .local v26, "doit":Lgnu/expr/Expression;
    move/from16 v33, v7

    if-eqz v33, :cond_8

    .line 494
    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v33, v0

    move-object/from16 v27, v33

    .line 495
    .local v27, "consArgs":[Lgnu/expr/Expression;
    move-object/from16 v33, v27

    const/16 v34, 0x0

    move-object/from16 v35, v26

    aput-object v35, v33, v34

    .line 496
    move-object/from16 v33, v27

    const/16 v34, 0x1

    new-instance v35, Lgnu/expr/ReferenceExp;

    move-object/from16 v41, v35

    move-object/from16 v35, v41

    move-object/from16 v36, v41

    move-object/from16 v37, v23

    invoke-direct/range {v36 .. v37}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v35, v33, v34

    .line 497
    move-object/from16 v33, v25

    move/from16 v34, v9

    sget-object v35, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    const-string/jumbo v36, "make"

    move-object/from16 v37, v27

    invoke-static/range {v35 .. v37}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v35

    aput-object v35, v33, v34

    .line 500
    .end local v27    # "consArgs":[Lgnu/expr/Expression;
    :cond_8
    move-object/from16 v33, v3

    new-instance v34, Lgnu/expr/ApplyExp;

    move-object/from16 v41, v34

    move-object/from16 v34, v41

    move-object/from16 v35, v41

    new-instance v36, Lgnu/expr/ReferenceExp;

    move-object/from16 v41, v36

    move-object/from16 v36, v41

    move-object/from16 v37, v41

    move-object/from16 v38, v18

    invoke-direct/range {v37 .. v38}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v37, v25

    invoke-direct/range {v35 .. v37}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v27, v33

    .line 501
    .local v27, "rec":Lgnu/expr/Expression;
    move-object/from16 v33, v17

    move/from16 v34, v7

    if-eqz v34, :cond_9

    move-object/from16 v34, v27

    :goto_7
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 502
    move-object/from16 v33, v20

    move-object/from16 v34, v17

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 503
    move-object/from16 v33, v17

    move-object/from16 v34, v20

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 504
    move/from16 v33, v7

    if-eqz v33, :cond_a

    move/from16 v33, v9

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    :goto_8
    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v33, v0

    move-object/from16 v28, v33

    .line 505
    .local v28, "initArgs":[Lgnu/expr/Expression;
    new-instance v33, Lgnu/expr/QuoteExp;

    move-object/from16 v41, v33

    move-object/from16 v33, v41

    move-object/from16 v34, v41

    sget-object v35, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct/range {v34 .. v35}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v29, v33

    .line 506
    .local v29, "empty":Lgnu/expr/QuoteExp;
    move/from16 v33, v9

    move/from16 v30, v33

    .local v30, "i":I
    :goto_9
    add-int/lit8 v30, v30, -0x1

    move/from16 v33, v30

    if-ltz v33, :cond_c

    .line 508
    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v33, v0

    move-object/from16 v31, v33

    .line 509
    .local v31, "compArgs":[Lgnu/expr/Expression;
    move-object/from16 v33, v31

    const/16 v34, 0x0

    new-instance v35, Lgnu/expr/ReferenceExp;

    move-object/from16 v41, v35

    move-object/from16 v35, v41

    move-object/from16 v36, v41

    move-object/from16 v37, v21

    move/from16 v38, v30

    aget-object v37, v37, v38

    invoke-direct/range {v36 .. v37}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v35, v33, v34

    .line 510
    move-object/from16 v33, v31

    const/16 v34, 0x1

    move-object/from16 v35, v29

    aput-object v35, v33, v34

    .line 511
    move/from16 v33, v7

    if-eqz v33, :cond_b

    new-instance v33, Lgnu/expr/ReferenceExp;

    move-object/from16 v41, v33

    move-object/from16 v33, v41

    move-object/from16 v34, v41

    move-object/from16 v35, v23

    invoke-direct/range {v34 .. v35}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    :goto_a
    move-object/from16 v32, v33

    .line 514
    .local v32, "result":Lgnu/expr/Expression;
    move-object/from16 v33, v17

    new-instance v34, Lgnu/expr/IfExp;

    move-object/from16 v41, v34

    move-object/from16 v34, v41

    move-object/from16 v35, v41

    move-object/from16 v36, v3

    new-instance v37, Lgnu/expr/ApplyExp;

    move-object/from16 v41, v37

    move-object/from16 v37, v41

    move-object/from16 v38, v41

    move-object/from16 v39, v6

    move-object/from16 v0, v39

    iget-object v0, v0, Lgnu/kawa/functions/Map;->isEq:Lgnu/kawa/functions/IsEq;

    move-object/from16 v39, v0

    move-object/from16 v40, v31

    invoke-direct/range {v38 .. v40}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v36

    move-object/from16 v37, v32

    move-object/from16 v38, v17

    move-object/from16 v0, v38

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v38, v0

    invoke-direct/range {v35 .. v38}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 516
    move-object/from16 v33, v28

    move/from16 v34, v30

    move-object/from16 v35, v8

    move/from16 v36, v30

    const/16 v37, 0x1

    add-int/lit8 v36, v36, 0x1

    aget-object v35, v35, v36

    aput-object v35, v33, v34

    .line 517
    goto/16 :goto_9

    .line 501
    .end local v28    # "initArgs":[Lgnu/expr/Expression;
    .end local v29    # "empty":Lgnu/expr/QuoteExp;
    .end local v30    # "i":I
    .end local v31    # "compArgs":[Lgnu/expr/Expression;
    .end local v32    # "result":Lgnu/expr/Expression;
    :cond_9
    new-instance v34, Lgnu/expr/BeginExp;

    move-object/from16 v41, v34

    move-object/from16 v34, v41

    move-object/from16 v35, v41

    move-object/from16 v36, v26

    move-object/from16 v37, v27

    invoke-direct/range {v35 .. v37}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    goto/16 :goto_7

    .line 504
    :cond_a
    move/from16 v33, v9

    goto/16 :goto_8

    .line 511
    .restart local v28    # "initArgs":[Lgnu/expr/Expression;
    .restart local v29    # "empty":Lgnu/expr/QuoteExp;
    .restart local v30    # "i":I
    .restart local v31    # "compArgs":[Lgnu/expr/Expression;
    :cond_b
    sget-object v33, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_a

    .line 518
    .end local v31    # "compArgs":[Lgnu/expr/Expression;
    :cond_c
    move/from16 v33, v7

    if-eqz v33, :cond_d

    .line 519
    move-object/from16 v33, v28

    move/from16 v34, v9

    move-object/from16 v35, v29

    aput-object v35, v33, v34

    .line 521
    :cond_d
    move-object/from16 v33, v3

    new-instance v34, Lgnu/expr/ApplyExp;

    move-object/from16 v41, v34

    move-object/from16 v34, v41

    move-object/from16 v35, v41

    new-instance v36, Lgnu/expr/ReferenceExp;

    move-object/from16 v41, v36

    move-object/from16 v36, v41

    move-object/from16 v37, v41

    move-object/from16 v38, v18

    invoke-direct/range {v37 .. v38}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v37, v28

    invoke-direct/range {v35 .. v37}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v30, v33

    .line 522
    .local v30, "body":Lgnu/expr/Expression;
    move/from16 v33, v7

    if-eqz v33, :cond_e

    .line 524
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v33, v0

    move-object/from16 v31, v33

    .line 525
    .local v31, "reverseArgs":[Lgnu/expr/Expression;
    move-object/from16 v33, v31

    const/16 v34, 0x0

    move-object/from16 v35, v30

    aput-object v35, v33, v34

    .line 526
    sget-object v33, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string/jumbo v34, "reverseInPlace"

    move-object/from16 v35, v31

    invoke-static/range {v33 .. v35}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v33

    move-object/from16 v30, v33

    .line 529
    .end local v31    # "reverseArgs":[Lgnu/expr/Expression;
    :cond_e
    move-object/from16 v33, v16

    move-object/from16 v34, v30

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 531
    move/from16 v33, v11

    if-eqz v33, :cond_f

    .line 532
    move-object/from16 v33, v16

    move-object/from16 v2, v33

    goto/16 :goto_0

    .line 534
    :cond_f
    move-object/from16 v33, v13

    move-object/from16 v2, v33

    goto/16 :goto_0
.end method

.method public static validateApplyNot(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 86
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

    .line 87
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 88
    move-object v4, v0

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    return-object v0
.end method

.method public static validateApplyValuesMap(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 217
    move-object v5, v0

    move-object v6, v3

    check-cast v6, Lgnu/kawa/functions/ValuesMap;

    invoke-static {v5, v6}, Lgnu/kawa/functions/ValuesMap;->canInline(Lgnu/expr/ApplyExp;Lgnu/kawa/functions/ValuesMap;)Lgnu/expr/LambdaExp;

    move-result-object v5

    move-object v4, v5

    .line 218
    .local v4, "lexp":Lgnu/expr/LambdaExp;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 220
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 221
    move-object v5, v4

    move-object v6, v0

    iput-object v6, v5, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 222
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v6

    iput-object v6, v5, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 224
    :cond_0
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    return-object v0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileMisc;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/functions/CompileMisc;->code:I

    packed-switch v4, :pswitch_data_0

    .line 43
    new-instance v4, Ljava/lang/Error;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/Error;-><init>()V

    throw v4

    .line 38
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/functions/CompileMisc;->proc:Lgnu/mapping/Procedure;

    check-cast v4, Lgnu/kawa/functions/Convert;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lgnu/kawa/functions/CompileMisc;->compileConvert(Lgnu/kawa/functions/Convert;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 39
    .line 42
    :goto_0
    return-void

    .line 41
    :pswitch_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/functions/CompileMisc;->proc:Lgnu/mapping/Procedure;

    check-cast v5, Lgnu/kawa/functions/Not;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/kawa/functions/CompileMisc;->compileNot(Lgnu/kawa/functions/Not;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public compileNot(Lgnu/kawa/functions/Not;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 17

    .prologue
    .line 265
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileMisc;
    move-object/from16 v1, p1

    .local v1, "proc":Lgnu/kawa/functions/Not;
    move-object/from16 v2, p2

    .local v2, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v3, p3

    .local v3, "comp":Lgnu/expr/Compilation;
    move-object/from16 v4, p4

    .local v4, "target":Lgnu/expr/Target;
    move-object v11, v2

    invoke-virtual {v11}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object v5, v11

    .line 266
    .local v5, "arg":Lgnu/expr/Expression;
    move-object v11, v1

    iget-object v11, v11, Lgnu/kawa/functions/Not;->language:Lgnu/expr/Language;

    move-object v6, v11

    .line 267
    .local v6, "language":Lgnu/expr/Language;
    move-object v11, v4

    instance-of v11, v11, Lgnu/expr/ConditionalTarget;

    if-eqz v11, :cond_1

    .line 269
    move-object v11, v4

    check-cast v11, Lgnu/expr/ConditionalTarget;

    move-object v7, v11

    .line 270
    .local v7, "ctarget":Lgnu/expr/ConditionalTarget;
    new-instance v11, Lgnu/expr/ConditionalTarget;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v7

    iget-object v13, v13, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    move-object v14, v7

    iget-object v14, v14, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    move-object v15, v6

    invoke-direct {v12, v13, v14, v15}, Lgnu/expr/ConditionalTarget;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V

    move-object v8, v11

    .line 272
    .local v8, "sub_target":Lgnu/expr/ConditionalTarget;
    move-object v11, v8

    move-object v12, v7

    iget-boolean v12, v12, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-nez v12, :cond_0

    const/4 v12, 0x1

    :goto_0
    iput-boolean v12, v11, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    .line 273
    move-object v11, v5

    move-object v12, v3

    move-object v13, v8

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 274
    .line 289
    .end local v7    # "ctarget":Lgnu/expr/ConditionalTarget;
    .end local v8    # "sub_target":Lgnu/expr/ConditionalTarget;
    :goto_1
    return-void

    .line 272
    .restart local v7    # "ctarget":Lgnu/expr/ConditionalTarget;
    .restart local v8    # "sub_target":Lgnu/expr/ConditionalTarget;
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 276
    .end local v7    # "ctarget":Lgnu/expr/ConditionalTarget;
    .end local v8    # "sub_target":Lgnu/expr/ConditionalTarget;
    :cond_1
    move-object v11, v3

    invoke-virtual {v11}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    move-object v7, v11

    .line 277
    .local v7, "code":Lgnu/bytecode/CodeAttr;
    move-object v11, v4

    invoke-virtual {v11}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    move-object v8, v11

    .line 278
    .local v8, "type":Lgnu/bytecode/Type;
    move-object v11, v4

    instance-of v11, v11, Lgnu/expr/StackTarget;

    if-eqz v11, :cond_2

    move-object v11, v8

    invoke-virtual {v11}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5a

    if-ne v11, v12, :cond_2

    .line 280
    move-object v11, v5

    move-object v12, v3

    move-object v13, v4

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 281
    move-object v11, v7

    move-object v12, v4

    invoke-virtual {v12}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitNot(Lgnu/bytecode/Type;)V

    .line 289
    :goto_2
    goto :goto_1

    .line 285
    :cond_2
    move-object v11, v6

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v11

    move-object v9, v11

    .line 286
    .local v9, "trueExp":Lgnu/expr/QuoteExp;
    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v11

    move-object v10, v11

    .line 287
    .local v10, "falseExp":Lgnu/expr/QuoteExp;
    move-object v11, v5

    move-object v12, v10

    move-object v13, v9

    move-object v14, v3

    move-object v15, v4

    invoke-static {v11, v12, v13, v14, v15}, Lgnu/expr/IfExp;->compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_2
.end method
