.class public Lgnu/expr/FluidLetExp;
.super Lgnu/expr/LetExp;
.source "FluidLetExp.java"


# direct methods
.method public constructor <init>([Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FluidLetExp;
    move-object v1, p1

    .local v1, "i":[Lgnu/expr/Expression;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    return-void
.end method

.method private doInits(Lgnu/expr/Declaration;I[Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/bytecode/Variable;)V
    .locals 13

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FluidLetExp;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move v2, p2

    .local v2, "i":I
    move-object/from16 v3, p3

    .local v3, "save":[Lgnu/bytecode/Variable;
    move-object/from16 v4, p4

    .local v4, "comp":Lgnu/expr/Compilation;
    move-object/from16 v5, p5

    .local v5, "ctx":Lgnu/bytecode/Variable;
    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/FluidLetExp;->inits:[Lgnu/expr/Expression;

    array-length v8, v8

    if-lt v7, v8, :cond_0

    .line 63
    .line 76
    :goto_0
    return-void

    .line 64
    :cond_0
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    move-object v6, v7

    .line 65
    .local v6, "code":Lgnu/bytecode/CodeAttr;
    move-object v7, v3

    move v8, v2

    move-object v9, v6

    sget-object v10, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v9

    aput-object v9, v7, v8

    .line 66
    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v7

    .line 67
    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v10, v4

    sget-object v11, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 69
    move-object v7, v6

    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 70
    move-object v7, v6

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 71
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/FluidLetExp;->inits:[Lgnu/expr/Expression;

    move v8, v2

    aget-object v7, v7, v8

    move-object v8, v4

    sget-object v9, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 72
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v8

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Lgnu/expr/FluidLetExp;->doInits(Lgnu/expr/Declaration;I[Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/bytecode/Variable;)V

    .line 73
    move-object v7, v6

    sget-object v8, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string/jumbo v9, "setWithSave"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 75
    move-object v7, v6

    move-object v8, v3

    move v9, v2

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 76
    goto :goto_0
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 18

    .prologue
    .line 21
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/FluidLetExp;
    move-object/from16 v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object/from16 v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    move-object v3, v11

    .line 22
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v11, v2

    instance-of v11, v11, Lgnu/expr/IgnoreTarget;

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    move-object v4, v11

    .line 25
    .local v4, "result_type":Lgnu/bytecode/Type;
    move-object v11, v4

    if-nez v11, :cond_1

    .line 26
    sget-object v11, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    move-object v5, v11

    .line 31
    .local v5, "ttarg":Lgnu/expr/Target;
    :goto_1
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/FluidLetExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v11

    move-object v6, v11

    .line 32
    .local v6, "scope":Lgnu/bytecode/Scope;
    move-object v11, v3

    move-object v12, v6

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 33
    move-object v11, v6

    move-object v12, v3

    sget-object v13, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v11

    move-object v7, v11

    .line 34
    .local v7, "ctx":Lgnu/bytecode/Variable;
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 35
    move-object v11, v3

    move-object v12, v7

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 36
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/FluidLetExp;->inits:[Lgnu/expr/Expression;

    array-length v11, v11

    new-array v11, v11, [Lgnu/bytecode/Variable;

    move-object v8, v11

    .line 38
    .local v8, "save":[Lgnu/bytecode/Variable;
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/FluidLetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v11

    move-object v9, v11

    .line 39
    .local v9, "decl":Lgnu/expr/Declaration;
    move-object v11, v0

    move-object v12, v9

    const/4 v13, 0x0

    move-object v14, v8

    move-object v15, v1

    move-object/from16 v16, v7

    invoke-direct/range {v11 .. v16}, Lgnu/expr/FluidLetExp;->doInits(Lgnu/expr/Declaration;I[Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/bytecode/Variable;)V

    .line 40
    move-object v11, v3

    const/4 v12, 0x1

    move-object v13, v4

    invoke-virtual {v11, v12, v13}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 41
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/FluidLetExp;->body:Lgnu/expr/Expression;

    move-object v12, v1

    move-object v13, v5

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    move-object v11, v3

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitFinallyStart()V

    .line 44
    const/4 v11, 0x0

    move v10, v11

    .local v10, "i":I
    :goto_2
    move v11, v10

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/FluidLetExp;->inits:[Lgnu/expr/Expression;

    array-length v12, v12

    if-ge v11, v12, :cond_3

    .line 46
    move-object v11, v9

    const/4 v12, 0x0

    const/4 v13, 0x2

    move-object v14, v1

    sget-object v15, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v11, v12, v13, v14, v15}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 48
    move-object v11, v3

    move-object v12, v8

    move v13, v10

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 49
    move-object v11, v3

    sget-object v12, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string/jumbo v13, "setRestore"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 44
    add-int/lit8 v10, v10, 0x1

    move-object v11, v9

    invoke-virtual {v11}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v11

    move-object v9, v11

    goto :goto_2

    .line 22
    .end local v4    # "result_type":Lgnu/bytecode/Type;
    .end local v5    # "ttarg":Lgnu/expr/Target;
    .end local v6    # "scope":Lgnu/bytecode/Scope;
    .end local v7    # "ctx":Lgnu/bytecode/Variable;
    .end local v8    # "save":[Lgnu/bytecode/Variable;
    .end local v9    # "decl":Lgnu/expr/Declaration;
    .end local v10    # "i":I
    :cond_0
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/FluidLetExp;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    goto/16 :goto_0

    .line 27
    .restart local v4    # "result_type":Lgnu/bytecode/Type;
    :cond_1
    move-object v11, v4

    sget-object v12, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne v11, v12, :cond_2

    .line 28
    sget-object v11, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object v5, v11

    .restart local v5    # "ttarg":Lgnu/expr/Target;
    goto/16 :goto_1

    .line 30
    .end local v5    # "ttarg":Lgnu/expr/Target;
    :cond_2
    new-instance v11, Lgnu/expr/StackTarget;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v4

    invoke-direct {v12, v13}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    move-object v5, v11

    .restart local v5    # "ttarg":Lgnu/expr/Target;
    goto/16 :goto_1

    .line 53
    .restart local v6    # "scope":Lgnu/bytecode/Scope;
    .restart local v7    # "ctx":Lgnu/bytecode/Variable;
    .restart local v8    # "save":[Lgnu/bytecode/Variable;
    .restart local v9    # "decl":Lgnu/expr/Declaration;
    .restart local v10    # "i":I
    :cond_3
    move-object v11, v3

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 54
    move-object v11, v0

    move-object v12, v3

    invoke-virtual {v11, v12}, Lgnu/expr/FluidLetExp;->popScope(Lgnu/bytecode/CodeAttr;)V

    .line 55
    move-object v11, v4

    if-eqz v11, :cond_4

    .line 56
    move-object v11, v2

    move-object v12, v1

    move-object v13, v4

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 57
    :cond_4
    return-void
.end method

.method protected mustCompile()Z
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FluidLetExp;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/FluidLetExp;
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FluidLetExp;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "(FluidLet"

    const-string/jumbo v5, ")"

    invoke-virtual {v2, v3, v4, v5}, Lgnu/expr/FluidLetExp;->print(Lgnu/mapping/OutPort;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FluidLetExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FluidLetExp;
    return-object v0
.end method
