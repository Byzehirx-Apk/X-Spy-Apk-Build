.class public Lgnu/expr/IfExp;
.super Lgnu/expr/Expression;
.source "IfExp.java"


# instance fields
.field else_clause:Lgnu/expr/Expression;

.field test:Lgnu/expr/Expression;

.field then_clause:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/expr/IfExp;
    move-object v1, p1

    .local v1, "i":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "t":Lgnu/expr/Expression;
    move-object v3, p3

    .local v3, "e":Lgnu/expr/Expression;
    move-object v4, v0

    invoke-direct {v4}, Lgnu/expr/Expression;-><init>()V

    .line 21
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    .line 22
    return-void
.end method

.method public static compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 20

    .prologue
    .line 61
    move-object/from16 v0, p0

    .local v0, "test":Lgnu/expr/Expression;
    move-object/from16 v1, p1

    .local v1, "then_clause":Lgnu/expr/Expression;
    move-object/from16 v2, p2

    .local v2, "else_clause":Lgnu/expr/Expression;
    move-object/from16 v3, p3

    .local v3, "comp":Lgnu/expr/Compilation;
    move-object/from16 v4, p4

    .local v4, "target":Lgnu/expr/Target;
    move-object v14, v3

    invoke-virtual {v14}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v14

    move-object v5, v14

    .line 62
    .local v5, "language":Lgnu/expr/Language;
    move-object v14, v3

    invoke-virtual {v14}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v14

    move-object v6, v14

    .line 63
    .local v6, "code":Lgnu/bytecode/CodeAttr;
    const/4 v14, 0x0

    move-object v8, v14

    .line 68
    .local v8, "falseLabel":Lgnu/bytecode/Label;
    move-object v14, v4

    instance-of v14, v14, Lgnu/expr/ConditionalTarget;

    if-eqz v14, :cond_4

    move-object v14, v2

    instance-of v14, v14, Lgnu/expr/QuoteExp;

    if-eqz v14, :cond_4

    .line 71
    const/4 v14, 0x1

    move v11, v14

    .line 72
    .local v11, "falseInherited":Z
    move-object v14, v2

    check-cast v14, Lgnu/expr/QuoteExp;

    invoke-virtual {v14}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v14

    move-object v12, v14

    .line 73
    .local v12, "value":Ljava/lang/Object;
    move-object v14, v5

    move-object v15, v12

    invoke-virtual {v14, v15}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 74
    move-object v14, v4

    check-cast v14, Lgnu/expr/ConditionalTarget;

    iget-object v14, v14, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    move-object v8, v14

    .line 77
    .line 87
    .end local v12    # "value":Ljava/lang/Object;
    :goto_0
    move-object v14, v8

    if-nez v14, :cond_0

    .line 89
    new-instance v14, Lgnu/bytecode/Label;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v8, v14

    .line 94
    :cond_0
    move-object v14, v0

    move-object v15, v1

    if-ne v14, v15, :cond_6

    move-object v14, v4

    instance-of v14, v14, Lgnu/expr/ConditionalTarget;

    if-eqz v14, :cond_6

    move-object v14, v1

    instance-of v14, v14, Lgnu/expr/ReferenceExp;

    if-eqz v14, :cond_6

    .line 97
    const/4 v14, 0x1

    move v10, v14

    .line 98
    .local v10, "trueInherited":Z
    move-object v14, v4

    check-cast v14, Lgnu/expr/ConditionalTarget;

    iget-object v14, v14, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    move-object v7, v14

    .line 105
    .local v7, "trueLabel":Lgnu/bytecode/Label;
    :goto_1
    new-instance v14, Lgnu/expr/ConditionalTarget;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v18}, Lgnu/expr/ConditionalTarget;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V

    move-object v12, v14

    .line 107
    .local v12, "ctarget":Lgnu/expr/ConditionalTarget;
    move v14, v10

    if-eqz v14, :cond_1

    .line 108
    move-object v14, v12

    const/4 v15, 0x0

    iput-boolean v15, v14, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    .line 109
    :cond_1
    move-object v14, v0

    move-object v15, v3

    move-object/from16 v16, v12

    invoke-virtual/range {v14 .. v16}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 110
    move-object v14, v6

    invoke-virtual {v14}, Lgnu/bytecode/CodeAttr;->emitIfThen()V

    .line 111
    move v14, v10

    if-nez v14, :cond_2

    .line 113
    move-object v14, v7

    move-object v15, v6

    invoke-virtual {v14, v15}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 117
    move-object v14, v3

    iget-object v14, v14, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v13, v14

    .line 118
    .local v13, "callContextSave":Lgnu/bytecode/Variable;
    move-object v14, v1

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v16}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 119
    move-object v14, v3

    move-object v15, v13

    iput-object v15, v14, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 121
    .end local v13    # "callContextSave":Lgnu/bytecode/Variable;
    :cond_2
    move v14, v11

    if-nez v14, :cond_8

    .line 123
    move-object v14, v6

    invoke-virtual {v14}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 124
    move-object v14, v8

    move-object v15, v6

    invoke-virtual {v14, v15}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 126
    move-object v14, v3

    iget-object v14, v14, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v13, v14

    .line 127
    .restart local v13    # "callContextSave":Lgnu/bytecode/Variable;
    move-object v14, v2

    if-nez v14, :cond_7

    .line 128
    move-object v14, v3

    sget-object v15, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v16}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 131
    :goto_2
    move-object v14, v3

    move-object v15, v13

    iput-object v15, v14, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 132
    .line 135
    .end local v13    # "callContextSave":Lgnu/bytecode/Variable;
    :goto_3
    move-object v14, v6

    invoke-virtual {v14}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 136
    return-void

    .line 76
    .end local v7    # "trueLabel":Lgnu/bytecode/Label;
    .end local v10    # "trueInherited":Z
    .local v12, "value":Ljava/lang/Object;
    :cond_3
    move-object v14, v4

    check-cast v14, Lgnu/expr/ConditionalTarget;

    iget-object v14, v14, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    move-object v8, v14

    goto/16 :goto_0

    .line 78
    .end local v11    # "falseInherited":Z
    .end local v12    # "value":Ljava/lang/Object;
    :cond_4
    move-object v14, v2

    instance-of v14, v14, Lgnu/expr/ExitExp;

    if-eqz v14, :cond_5

    move-object v14, v2

    check-cast v14, Lgnu/expr/ExitExp;

    iget-object v14, v14, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    instance-of v14, v14, Lgnu/expr/QuoteExp;

    if-eqz v14, :cond_5

    move-object v14, v2

    check-cast v14, Lgnu/expr/ExitExp;

    iget-object v14, v14, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object v9, v15

    .local v9, "block":Lgnu/expr/BlockExp;
    iget-object v14, v14, Lgnu/expr/BlockExp;->exitTarget:Lgnu/expr/Target;

    instance-of v14, v14, Lgnu/expr/IgnoreTarget;

    if-eqz v14, :cond_5

    move-object v14, v9

    iget-object v14, v14, Lgnu/expr/BlockExp;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    invoke-virtual {v14}, Lgnu/bytecode/ExitableBlock;->exitIsGoto()Lgnu/bytecode/Label;

    move-result-object v14

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object v8, v15

    if-eqz v14, :cond_5

    .line 83
    const/4 v14, 0x1

    move v11, v14

    .restart local v11    # "falseInherited":Z
    goto/16 :goto_0

    .line 86
    .end local v9    # "block":Lgnu/expr/BlockExp;
    .end local v11    # "falseInherited":Z
    :cond_5
    const/4 v14, 0x0

    move v11, v14

    .restart local v11    # "falseInherited":Z
    goto/16 :goto_0

    .line 102
    :cond_6
    const/4 v14, 0x0

    move v10, v14

    .line 103
    .restart local v10    # "trueInherited":Z
    new-instance v14, Lgnu/bytecode/Label;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v7, v14

    .restart local v7    # "trueLabel":Lgnu/bytecode/Label;
    goto/16 :goto_1

    .line 130
    .local v12, "ctarget":Lgnu/expr/ConditionalTarget;
    .restart local v13    # "callContextSave":Lgnu/bytecode/Variable;
    :cond_7
    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v16}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_2

    .line 134
    .end local v13    # "callContextSave":Lgnu/bytecode/Variable;
    :cond_8
    move-object v14, v6

    invoke-virtual {v14}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    goto :goto_3
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/expr/IfExp;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/IfExp;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v2, :cond_0

    .line 40
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/expr/IfExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-nez v5, :cond_0

    sget-object v5, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    :goto_0
    move-object v6, v1

    move-object v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Lgnu/expr/IfExp;->compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 55
    return-void

    .line 52
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    goto :goto_0
.end method

.method public getElseClause()Lgnu/expr/Expression;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/expr/IfExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/IfExp;
    return-object v0
.end method

.method protected final getLanguage()Lgnu/expr/Language;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/expr/IfExp;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/IfExp;
    return-object v0
.end method

.method public getTest()Lgnu/expr/Expression;
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/expr/IfExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/IfExp;
    return-object v0
.end method

.method public getThenClause()Lgnu/expr/Expression;
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/expr/IfExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/IfExp;
    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lgnu/expr/IfExp;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    move-object v1, v3

    .line 155
    .local v1, "t1":Lgnu/bytecode/Type;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-nez v3, :cond_0

    sget-object v3, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    :goto_0
    move-object v2, v3

    .line 156
    .local v2, "t2":Lgnu/bytecode/Type;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lgnu/expr/Language;->unionType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/IfExp;
    return-object v0

    .line 155
    .end local v2    # "t2":Lgnu/bytecode/Type;
    .restart local v0    # "this":Lgnu/expr/IfExp;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    goto :goto_0
.end method

.method protected mustCompile()Z
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/expr/IfExp;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/IfExp;
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 6

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lgnu/expr/IfExp;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v2, v1

    const-string/jumbo v3, "(If "

    const/4 v4, 0x0

    const-string/jumbo v5, ")"

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 162
    move-object v2, v1

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/OutPort;->setIndentation(IZ)V

    .line 163
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 164
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 165
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 166
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v2, :cond_0

    .line 168
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 169
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 171
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method select(Z)Lgnu/expr/Expression;
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/expr/IfExp;
    move v1, p1

    .local v1, "truth":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/IfExp;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/IfExp;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-nez v2, :cond_1

    sget-object v2, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    goto :goto_0
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
    .line 140
    move-object v0, p0

    .local v0, "this":Lgnu/expr/IfExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitIfExp(Lgnu/expr/IfExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/IfExp;
    return-object v0
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lgnu/expr/IfExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    .line 146
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 147
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    .line 148
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v3, :cond_1

    .line 149
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    .line 150
    :cond_1
    return-void
.end method
