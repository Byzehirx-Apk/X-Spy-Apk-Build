.class Lgnu/kawa/functions/GetNamedExp;
.super Lgnu/expr/ApplyExp;
.source "CompileNamedPart.java"


# static fields
.field static final castDecl:Lgnu/expr/Declaration;

.field static final fieldDecl:Lgnu/expr/Declaration;

.field static final instanceOfDecl:Lgnu/expr/Declaration;

.field static final invokeDecl:Lgnu/expr/Declaration;

.field static final invokeStaticDecl:Lgnu/expr/Declaration;

.field static final makeDecl:Lgnu/expr/Declaration;

.field static final staticFieldDecl:Lgnu/expr/Declaration;


# instance fields
.field public combinedName:Ljava/lang/String;

.field kind:C

.field methods:[Lgnu/expr/PrimProcedure;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 478
    const-string/jumbo v0, "gnu.kawa.reflect.SlotGet"

    const-string/jumbo v1, "field"

    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->fieldDecl:Lgnu/expr/Declaration;

    .line 481
    const-string/jumbo v0, "gnu.kawa.reflect.SlotGet"

    const-string/jumbo v1, "staticField"

    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->staticFieldDecl:Lgnu/expr/Declaration;

    .line 484
    const-string/jumbo v0, "gnu.kawa.reflect.Invoke"

    const-string/jumbo v1, "make"

    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->makeDecl:Lgnu/expr/Declaration;

    .line 487
    const-string/jumbo v0, "gnu.kawa.reflect.Invoke"

    const-string/jumbo v1, "invoke"

    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->invokeDecl:Lgnu/expr/Declaration;

    .line 490
    const-string/jumbo v0, "gnu.kawa.reflect.Invoke"

    const-string/jumbo v1, "invokeStatic"

    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->invokeStaticDecl:Lgnu/expr/Declaration;

    .line 493
    const-string/jumbo v0, "kawa.standard.Scheme"

    const-string/jumbo v1, "instanceOf"

    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->instanceOfDecl:Lgnu/expr/Declaration;

    .line 496
    const-string/jumbo v0, "gnu.kawa.functions.Convert"

    const-string/jumbo v1, "as"

    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->castDecl:Lgnu/expr/Declaration;

    return-void
.end method

.method public constructor <init>([Lgnu/expr/Expression;)V
    .locals 5

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetNamedExp;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move-object v2, v0

    sget-object v3, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 401
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetNamedExp;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 384
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v7

    move-object v2, v7

    .line 385
    .local v2, "env":Lgnu/mapping/Environment;
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    move-object v3, v7

    .line 386
    .local v3, "sym":Lgnu/mapping/Symbol;
    sget-object v7, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    move-object v4, v7

    .line 387
    .local v4, "unb":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v5, v7

    .line 388
    .local v5, "property":Ljava/lang/Object;
    move-object v7, v2

    move-object v8, v3

    move-object v9, v5

    move-object v10, v4

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 389
    .local v6, "value":Ljava/lang/Object;
    move-object v7, v6

    move-object v8, v4

    if-eq v7, v8, :cond_0

    .line 391
    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v7, v8}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 392
    .line 396
    .end local v2    # "env":Lgnu/mapping/Environment;
    .end local v3    # "sym":Lgnu/mapping/Symbol;
    .end local v4    # "unb":Ljava/lang/String;
    .end local v5    # "property":Ljava/lang/Object;
    .end local v6    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 395
    :cond_0
    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Lgnu/expr/ApplyExp;->apply(Lgnu/mapping/CallContext;)V

    .line 396
    goto :goto_0
.end method

.method protected setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;
    .locals 4

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetNamedExp;
    move v1, p1

    .local v1, "kind":C
    move-object v2, v0

    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v3, v2, Lgnu/kawa/functions/GetNamedExp;->type:Lgnu/bytecode/Type;

    .line 412
    move-object v2, v0

    move v3, v1

    iput-char v3, v2, Lgnu/kawa/functions/GetNamedExp;->kind:C

    .line 413
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/GetNamedExp;
    return-object v0
.end method

.method public side_effects()Z
    .locals 3

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetNamedExp;
    move-object v1, v0

    iget-char v1, v1, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/16 v2, 0x53

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-char v1, v1, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-char v1, v1, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/16 v2, 0x43

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-char v1, v1, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/16 v2, 0x49

    if-ne v1, v2, :cond_1

    .line 472
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    .line 475
    .end local v0    # "this":Lgnu/kawa/functions/GetNamedExp;
    :goto_0
    return v0

    .line 473
    .restart local v0    # "this":Lgnu/kawa/functions/GetNamedExp;
    :cond_1
    move-object v1, v0

    iget-char v1, v1, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_2

    .line 474
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/functions/GetNamedExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lgnu/expr/Expression;->side_effects()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 475
    :cond_2
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 17

    .prologue
    .line 419
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetNamedExp;
    move-object/from16 v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v2, p2

    .local v2, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v3, p3

    .local v3, "required":Lgnu/bytecode/Type;
    move-object/from16 v4, p4

    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/kawa/functions/GetNamedExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v10

    move-object v5, v10

    .line 420
    .local v5, "pargs":[Lgnu/expr/Expression;
    move-object v10, v5

    const/4 v11, 0x0

    aget-object v10, v10, v11

    move-object v6, v10

    .line 421
    .local v6, "context":Lgnu/expr/Expression;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v10

    move-object v7, v10

    .line 423
    .local v7, "args":[Lgnu/expr/Expression;
    move-object v10, v0

    iget-char v10, v10, Lgnu/kawa/functions/GetNamedExp;->kind:C

    sparse-switch v10, :sswitch_data_0

    .line 460
    move-object v10, v1

    move-object v0, v10

    .line 464
    .end local v0    # "this":Lgnu/kawa/functions/GetNamedExp;
    :goto_0
    return-object v0

    .line 426
    .restart local v0    # "this":Lgnu/kawa/functions/GetNamedExp;
    :sswitch_0
    sget-object v10, Lgnu/kawa/functions/GetNamedExp;->invokeDecl:Lgnu/expr/Declaration;

    move-object v4, v10

    .line 427
    move-object v10, v7

    array-length v10, v10

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    new-array v10, v10, [Lgnu/expr/Expression;

    move-object v8, v10

    .line 428
    .local v8, "xargs":[Lgnu/expr/Expression;
    move-object v10, v8

    const/4 v11, 0x0

    move-object v12, v5

    const/4 v13, 0x0

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    .line 429
    move-object v10, v8

    const/4 v11, 0x1

    move-object v12, v5

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    .line 430
    move-object v10, v7

    const/4 v11, 0x0

    move-object v12, v8

    const/4 v13, 0x2

    move-object v14, v7

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    .line 462
    :goto_1
    new-instance v10, Lgnu/expr/ApplyExp;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    new-instance v12, Lgnu/expr/ReferenceExp;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v4

    invoke-direct {v13, v14}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v13, v8

    invoke-direct {v11, v12, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v9, v10

    .line 463
    .local v9, "result":Lgnu/expr/ApplyExp;
    move-object v10, v9

    move-object v11, v1

    invoke-virtual {v10, v11}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v10

    .line 464
    move-object v10, v2

    move-object v11, v9

    move-object v12, v3

    invoke-virtual {v10, v11, v12}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v0, v10

    goto :goto_0

    .line 433
    .end local v8    # "xargs":[Lgnu/expr/Expression;
    .end local v9    # "result":Lgnu/expr/ApplyExp;
    :sswitch_1
    sget-object v10, Lgnu/kawa/functions/GetNamedExp;->makeDecl:Lgnu/expr/Declaration;

    move-object v4, v10

    .line 434
    move-object v10, v7

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    new-array v10, v10, [Lgnu/expr/Expression;

    move-object v8, v10

    .line 435
    .restart local v8    # "xargs":[Lgnu/expr/Expression;
    move-object v10, v7

    const/4 v11, 0x0

    move-object v12, v8

    const/4 v13, 0x1

    move-object v14, v7

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    move-object v10, v8

    const/4 v11, 0x0

    move-object v12, v6

    aput-object v12, v10, v11

    .line 437
    goto :goto_1

    .line 439
    .end local v8    # "xargs":[Lgnu/expr/Expression;
    :sswitch_2
    sget-object v10, Lgnu/kawa/functions/GetNamedExp;->instanceOfDecl:Lgnu/expr/Declaration;

    move-object v4, v10

    .line 440
    move-object v10, v7

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    new-array v10, v10, [Lgnu/expr/Expression;

    move-object v8, v10

    .line 441
    .restart local v8    # "xargs":[Lgnu/expr/Expression;
    move-object v10, v7

    const/4 v11, 0x1

    move-object v12, v8

    const/4 v13, 0x2

    move-object v14, v7

    array-length v14, v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    move-object v10, v8

    const/4 v11, 0x0

    move-object v12, v7

    const/4 v13, 0x0

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    .line 443
    move-object v10, v8

    const/4 v11, 0x1

    move-object v12, v6

    aput-object v12, v10, v11

    .line 444
    goto :goto_1

    .line 446
    .end local v8    # "xargs":[Lgnu/expr/Expression;
    :sswitch_3
    sget-object v10, Lgnu/kawa/functions/GetNamedExp;->castDecl:Lgnu/expr/Declaration;

    move-object v4, v10

    .line 447
    move-object v10, v7

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    new-array v10, v10, [Lgnu/expr/Expression;

    move-object v8, v10

    .line 448
    .restart local v8    # "xargs":[Lgnu/expr/Expression;
    move-object v10, v7

    const/4 v11, 0x1

    move-object v12, v8

    const/4 v13, 0x2

    move-object v14, v7

    array-length v14, v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    move-object v10, v8

    const/4 v11, 0x0

    move-object v12, v6

    aput-object v12, v10, v11

    .line 450
    move-object v10, v8

    const/4 v11, 0x1

    move-object v12, v7

    const/4 v13, 0x0

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    .line 451
    goto/16 :goto_1

    .line 453
    .end local v8    # "xargs":[Lgnu/expr/Expression;
    :sswitch_4
    sget-object v10, Lgnu/kawa/functions/GetNamedExp;->invokeStaticDecl:Lgnu/expr/Declaration;

    move-object v4, v10

    .line 454
    move-object v10, v7

    array-length v10, v10

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    new-array v10, v10, [Lgnu/expr/Expression;

    move-object v8, v10

    .line 455
    .restart local v8    # "xargs":[Lgnu/expr/Expression;
    move-object v10, v8

    const/4 v11, 0x0

    move-object v12, v6

    aput-object v12, v10, v11

    .line 456
    move-object v10, v8

    const/4 v11, 0x1

    move-object v12, v5

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    .line 457
    move-object v10, v7

    const/4 v11, 0x0

    move-object v12, v8

    const/4 v13, 0x2

    move-object v14, v7

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    goto/16 :goto_1

    .line 423
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_3
        0x49 -> :sswitch_2
        0x4d -> :sswitch_0
        0x4e -> :sswitch_1
        0x53 -> :sswitch_4
    .end sparse-switch
.end method
