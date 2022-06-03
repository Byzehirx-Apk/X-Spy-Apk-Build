.class public Lgnu/expr/ProcInitializer;
.super Lgnu/expr/Initializer;
.source "ProcInitializer.java"


# instance fields
.field proc:Lgnu/expr/LambdaExp;


# direct methods
.method public constructor <init>(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V
    .locals 7

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ProcInitializer;
    move-object v1, p1

    .local v1, "lexp":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "field":Lgnu/bytecode/Field;
    move-object v5, v0

    invoke-direct {v5}, Lgnu/expr/Initializer;-><init>()V

    .line 11
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    .line 12
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    .line 13
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v5

    :goto_0
    move-object v4, v5

    .line 15
    .local v4, "heapLambda":Lgnu/expr/LambdaExp;
    move-object v5, v4

    instance-of v5, v5, Lgnu/expr/ModuleExp;

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/expr/Compilation;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 17
    move-object v5, v0

    move-object v6, v2

    iget-object v6, v6, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    iput-object v6, v5, Lgnu/expr/ProcInitializer;->next:Lgnu/expr/Initializer;

    .line 18
    move-object v5, v2

    move-object v6, v0

    iput-object v6, v5, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    .line 25
    :goto_1
    return-void

    .line 13
    .end local v4    # "heapLambda":Lgnu/expr/LambdaExp;
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v5

    goto :goto_0

    .line 22
    .restart local v4    # "heapLambda":Lgnu/expr/LambdaExp;
    :cond_1
    move-object v5, v0

    move-object v6, v4

    iget-object v6, v6, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    iput-object v6, v5, Lgnu/expr/ProcInitializer;->next:Lgnu/expr/Initializer;

    .line 23
    move-object v5, v4

    move-object v6, v0

    iput-object v6, v5, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    goto :goto_1
.end method

.method public static emitLoadModuleMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V
    .locals 23

    .prologue
    .line 30
    move-object/from16 v2, p0

    .local v2, "proc":Lgnu/expr/LambdaExp;
    move-object/from16 v3, p1

    .local v3, "comp":Lgnu/expr/Compilation;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v18, v0

    move-object/from16 v4, v18

    .line 31
    .local v4, "pdecl":Lgnu/expr/Declaration;
    move-object/from16 v18, v4

    if-nez v18, :cond_2

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v18

    :goto_0
    move-object/from16 v5, v18

    .line 32
    .local v5, "pname":Ljava/lang/Object;
    const/16 v18, 0x0

    move-object/from16 v6, v18

    .line 33
    .local v6, "oldproc":Lgnu/expr/ModuleMethod;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v18, v5

    if-eqz v18, :cond_0

    move-object/from16 v18, v4

    if-eqz v18, :cond_0

    .line 37
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v18

    move-object/from16 v7, v18

    .line 38
    .local v7, "env":Lgnu/mapping/Environment;
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v18, v5

    check-cast v18, Lgnu/mapping/Symbol;

    :goto_1
    move-object/from16 v8, v18

    .line 40
    .local v8, "sym":Lgnu/mapping/Symbol;
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v18

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Language;->getEnvPropertyFor(Lgnu/expr/Declaration;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    .line 41
    .local v9, "property":Ljava/lang/Object;
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    .line 42
    .local v10, "old":Ljava/lang/Object;
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/expr/ModuleMethod;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 43
    move-object/from16 v18, v10

    check-cast v18, Lgnu/expr/ModuleMethod;

    move-object/from16 v6, v18

    .line 45
    .end local v7    # "env":Lgnu/mapping/Environment;
    .end local v8    # "sym":Lgnu/mapping/Symbol;
    .end local v9    # "property":Ljava/lang/Object;
    .end local v10    # "old":Ljava/lang/Object;
    :cond_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v18

    move-object/from16 v7, v18

    .line 46
    .local v7, "code":Lgnu/bytecode/CodeAttr;
    sget-object v18, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    move-object/from16 v8, v18

    .line 48
    .local v8, "procClass":Lgnu/bytecode/ClassType;
    move-object/from16 v18, v6

    if-nez v18, :cond_4

    .line 50
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 51
    move-object/from16 v18, v7

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 52
    const-string/jumbo v18, "<init>"

    move-object/from16 v9, v18

    .line 59
    .local v9, "initName":Ljava/lang/String;
    :goto_2
    move-object/from16 v18, v8

    move-object/from16 v19, v9

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v18

    move-object/from16 v10, v18

    .line 60
    .local v10, "initModuleMethod":Lgnu/bytecode/Method;
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v18

    :goto_3
    move-object/from16 v11, v18

    .line 62
    .local v11, "owning":Lgnu/expr/LambdaExp;
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 63
    move-object/from16 v18, v7

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 93
    :goto_4
    move-object/from16 v18, v7

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 94
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    sget-object v20, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual/range {v18 .. v20}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 97
    move-object/from16 v18, v7

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v20, v0

    :goto_5
    const/16 v21, 0xc

    shl-int/lit8 v20, v20, 0xc

    or-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 99
    move-object/from16 v18, v7

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 101
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 103
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v12, v18

    .line 104
    .local v12, "len":I
    const/16 v18, 0x0

    move/from16 v13, v18

    .local v13, "i":I
    :goto_6
    move/from16 v18, v13

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 106
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    move-object/from16 v18, v0

    move/from16 v19, v13

    aget-object v18, v18, v19

    move-object/from16 v14, v18

    .line 108
    .local v14, "key":Ljava/lang/Object;
    move-object/from16 v18, v14

    if-eqz v18, :cond_1

    move-object/from16 v18, v14

    sget-object v19, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 110
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    move-object/from16 v18, v0

    move/from16 v19, v13

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v15, v18

    .line 111
    .local v15, "val":Ljava/lang/Object;
    move-object/from16 v18, v7

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 112
    move-object/from16 v18, v3

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 113
    sget-object v18, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object/from16 v16, v18

    .line 114
    .local v16, "target":Lgnu/expr/Target;
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/expr/Expression;

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 115
    move-object/from16 v18, v15

    check-cast v18, Lgnu/expr/Expression;

    move-object/from16 v19, v3

    move-object/from16 v20, v16

    invoke-virtual/range {v18 .. v20}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 118
    :goto_7
    const-string/jumbo v18, "gnu.mapping.PropertySet"

    invoke-static/range {v18 .. v18}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v18

    const-string/jumbo v19, "setProperty"

    const/16 v20, 0x2

    invoke-virtual/range {v18 .. v20}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v18

    move-object/from16 v17, v18

    .line 120
    .local v17, "m":Lgnu/bytecode/Method;
    move-object/from16 v18, v7

    move-object/from16 v19, v17

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 104
    .end local v15    # "val":Ljava/lang/Object;
    .end local v16    # "target":Lgnu/expr/Target;
    .end local v17    # "m":Lgnu/bytecode/Method;
    :cond_1
    add-int/lit8 v13, v13, 0x2

    goto :goto_6

    .line 31
    .end local v5    # "pname":Ljava/lang/Object;
    .end local v6    # "oldproc":Lgnu/expr/ModuleMethod;
    .end local v7    # "code":Lgnu/bytecode/CodeAttr;
    .end local v8    # "procClass":Lgnu/bytecode/ClassType;
    .end local v9    # "initName":Ljava/lang/String;
    .end local v10    # "initModuleMethod":Lgnu/bytecode/Method;
    .end local v11    # "owning":Lgnu/expr/LambdaExp;
    .end local v12    # "len":I
    .end local v13    # "i":I
    .end local v14    # "key":Ljava/lang/Object;
    :cond_2
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v18

    goto/16 :goto_0

    .line 38
    .restart local v5    # "pname":Ljava/lang/Object;
    .restart local v6    # "oldproc":Lgnu/expr/ModuleMethod;
    .local v7, "env":Lgnu/mapping/Environment;
    :cond_3
    const-string/jumbo v18, ""

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v18

    goto/16 :goto_1

    .line 56
    .local v7, "code":Lgnu/bytecode/CodeAttr;
    .restart local v8    # "procClass":Lgnu/bytecode/ClassType;
    :cond_4
    move-object/from16 v18, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v8

    invoke-static/range {v20 .. v20}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 57
    const-string/jumbo v18, "init"

    move-object/from16 v9, v18

    .restart local v9    # "initName":Ljava/lang/String;
    goto/16 :goto_2

    .line 60
    .restart local v10    # "initModuleMethod":Lgnu/bytecode/Method;
    :cond_5
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v18

    goto/16 :goto_3

    .line 64
    .restart local v11    # "owning":Lgnu/expr/LambdaExp;
    :cond_6
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v18

    if-nez v18, :cond_8

    .line 67
    :cond_7
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    goto/16 :goto_4

    .line 70
    :cond_8
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    .line 72
    move-object/from16 v18, v3

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    move-object/from16 v19, v0

    move-object/from16 v20, v7

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v21, v0

    const-string/jumbo v22, "$instance"

    invoke-virtual/range {v19 .. v22}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    .line 76
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_a

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Compilation;->isStatic()Z

    move-result v18

    if-nez v18, :cond_a

    .line 78
    move-object/from16 v18, v7

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 79
    move-object/from16 v18, v7

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 80
    move-object/from16 v18, v7

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 81
    move-object/from16 v18, v3

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    const-string/jumbo v20, "$main"

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    .line 83
    move-object/from16 v18, v7

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 84
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 85
    move-object/from16 v18, v7

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 89
    :goto_8
    move-object/from16 v18, v7

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 91
    :cond_9
    move-object/from16 v18, v7

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto/16 :goto_4

    .line 88
    :cond_a
    move-object/from16 v18, v7

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_8

    .line 97
    :cond_b
    const/16 v20, -0x1

    goto/16 :goto_5

    .line 117
    .restart local v12    # "len":I
    .restart local v13    # "i":I
    .restart local v14    # "key":Ljava/lang/Object;
    .restart local v15    # "val":Ljava/lang/Object;
    .restart local v16    # "target":Lgnu/expr/Target;
    :cond_c
    move-object/from16 v18, v3

    move-object/from16 v19, v15

    move-object/from16 v20, v16

    invoke-virtual/range {v18 .. v20}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto/16 :goto_7

    .line 124
    .end local v12    # "len":I
    .end local v13    # "i":I
    .end local v14    # "key":Ljava/lang/Object;
    .end local v15    # "val":Ljava/lang/Object;
    .end local v16    # "target":Lgnu/expr/Target;
    :cond_d
    return-void
.end method


# virtual methods
.method public emit(Lgnu/expr/Compilation;)V
    .locals 5

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ProcInitializer;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    move-object v2, v3

    .line 129
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 132
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/expr/ProcInitializer;->emitLoadModuleMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 134
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_1
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_0
.end method

.method public reportError(Ljava/lang/String;Lgnu/expr/Compilation;)V
    .locals 13

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ProcInitializer;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 143
    .local v3, "saveFile":Ljava/lang/String;
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v8

    move v4, v8

    .line 144
    .local v4, "saveLine":I
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v8

    move v5, v8

    .line 145
    .local v5, "saveColumn":I
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    invoke-virtual {v8, v9}, Lgnu/expr/Compilation;->setLocation(Lgnu/text/SourceLocator;)V

    .line 146
    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 147
    .local v6, "name":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 148
    .local v7, "sbuf":Ljava/lang/StringBuffer;
    move-object v8, v6

    if-nez v8, :cond_0

    .line 149
    move-object v8, v7

    const-string/jumbo v9, "unnamed procedure"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 155
    :goto_0
    move-object v8, v2

    const/16 v9, 0x65

    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 156
    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual {v8, v9, v10, v11}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    .line 157
    return-void

    .line 152
    :cond_0
    move-object v8, v7

    const-string/jumbo v9, "procedure "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 153
    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    goto :goto_0
.end method
