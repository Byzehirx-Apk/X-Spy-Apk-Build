.class public Lgnu/expr/TryExp;
.super Lgnu/expr/Expression;
.source "TryExp.java"


# instance fields
.field catch_clauses:Lgnu/expr/CatchClause;

.field finally_clause:Lgnu/expr/Expression;

.field try_clause:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .locals 5

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/expr/TryExp;
    move-object v1, p1

    .local v1, "try_clause":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "finally_clause":Lgnu/expr/Expression;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/expr/Expression;-><init>()V

    .line 27
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    .line 28
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    .line 29
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/expr/TryExp;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 38
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v7, :cond_0

    .line 59
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v7

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 42
    .local v2, "ex":Ljava/lang/Throwable;
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    move-object v3, v7

    .local v3, "clause":Lgnu/expr/CatchClause;
    :goto_1
    move-object v7, v3

    if-eqz v7, :cond_3

    .line 45
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/CatchClause;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v4, v7

    .line 46
    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/bytecode/ClassType;

    move-object v5, v7

    .line 47
    .local v5, "typeVal":Lgnu/bytecode/ClassType;
    move-object v7, v5

    move-object v8, v2

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassType;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 49
    move-object v7, v1

    move-object v8, v2

    iput-object v8, v7, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 50
    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/CatchClause;->apply(Lgnu/mapping/CallContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v7, :cond_1

    .line 59
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v7

    :cond_1
    goto :goto_0

    .line 43
    :cond_2
    move-object v7, v3

    :try_start_2
    iget-object v7, v7, Lgnu/expr/CatchClause;->next:Lgnu/expr/CatchClause;

    move-object v3, v7

    goto :goto_1

    .line 54
    .end local v4    # "decl":Lgnu/expr/Declaration;
    .end local v5    # "typeVal":Lgnu/bytecode/ClassType;
    :cond_3
    move-object v7, v2

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "clause":Lgnu/expr/CatchClause;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v7, :cond_4

    .line 59
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v7

    :cond_4
    move-object v7, v6

    throw v7
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/expr/TryExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    move-object v3, v7

    .line 66
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    move v4, v7

    .line 68
    .local v4, "has_finally":Z
    move-object v7, v2

    instance-of v7, v7, Lgnu/expr/StackTarget;

    if-nez v7, :cond_0

    move-object v7, v2

    instance-of v7, v7, Lgnu/expr/ConsumerTarget;

    if-nez v7, :cond_0

    move-object v7, v2

    instance-of v7, v7, Lgnu/expr/IgnoreTarget;

    if-nez v7, :cond_0

    move-object v7, v2

    instance-of v7, v7, Lgnu/expr/ConditionalTarget;

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-nez v7, :cond_2

    .line 71
    :cond_0
    move-object v7, v2

    move-object v5, v7

    .line 74
    .local v5, "ttarg":Lgnu/expr/Target;
    :goto_1
    move-object v7, v3

    move v8, v4

    move-object v9, v5

    instance-of v9, v9, Lgnu/expr/StackTarget;

    if-eqz v9, :cond_3

    move-object v9, v5

    invoke-virtual {v9}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    :goto_2
    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 76
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 77
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    move-object v6, v7

    .line 78
    .local v6, "catch_clause":Lgnu/expr/CatchClause;
    :goto_3
    move-object v7, v6

    if-eqz v7, :cond_4

    .line 80
    move-object v7, v6

    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Lgnu/expr/CatchClause;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 78
    move-object v7, v6

    invoke-virtual {v7}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v7

    move-object v6, v7

    goto :goto_3

    .line 66
    .end local v4    # "has_finally":Z
    .end local v5    # "ttarg":Lgnu/expr/Target;
    .end local v6    # "catch_clause":Lgnu/expr/CatchClause;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 73
    .restart local v4    # "has_finally":Z
    :cond_2
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-static {v7}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v7

    move-object v5, v7

    .restart local v5    # "ttarg":Lgnu/expr/Target;
    goto :goto_1

    .line 74
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 83
    .restart local v6    # "catch_clause":Lgnu/expr/CatchClause;
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v7, :cond_5

    .line 85
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitFinallyStart()V

    .line 86
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    move-object v8, v1

    sget-object v9, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 87
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitFinallyEnd()V

    .line 89
    :cond_5
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 90
    move-object v7, v5

    move-object v8, v2

    if-eq v7, v8, :cond_6

    .line 91
    move-object v7, v2

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v9}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 92
    :cond_6
    return-void
.end method

.method public final getCatchClauses()Lgnu/expr/CatchClause;
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/expr/TryExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/TryExp;
    return-object v0
.end method

.method public final getFinallyClause()Lgnu/expr/Expression;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/expr/TryExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/TryExp;
    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lgnu/expr/TryExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    if-nez v1, :cond_0

    .line 116
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    move-object v0, v1

    .line 118
    .end local v0    # "this":Lgnu/expr/TryExp;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/expr/TryExp;
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method protected mustCompile()Z
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/expr/TryExp;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/TryExp;
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 7

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lgnu/expr/TryExp;
    move-object v1, p1

    .local v1, "ps":Lgnu/mapping/OutPort;
    move-object v3, v1

    const-string/jumbo v4, "(Try"

    const-string/jumbo v5, ")"

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 125
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 126
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    move-object v2, v3

    .line 127
    .local v2, "catch_clause":Lgnu/expr/CatchClause;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 129
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/CatchClause;->print(Lgnu/mapping/OutPort;)V

    .line 127
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 131
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v3, :cond_1

    .line 133
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 134
    move-object v3, v1

    const-string/jumbo v4, " finally: "

    invoke-virtual {v3, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 135
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 137
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public final setCatchClauses(Lgnu/expr/CatchClause;)V
    .locals 4

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/TryExp;
    move-object v1, p1

    .local v1, "catch_clauses":Lgnu/expr/CatchClause;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 23
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
    .line 96
    move-object v0, p0

    .local v0, "this":Lgnu/expr/TryExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/TryExp;
    return-object v0
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 8
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
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/expr/TryExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v5

    iput-object v5, v4, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    .line 102
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    move-object v3, v4

    .line 103
    .local v3, "catch_clause":Lgnu/expr/CatchClause;
    :goto_0
    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v4, :cond_0

    move-object v4, v3

    if-eqz v4, :cond_0

    .line 105
    move-object v4, v1

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 106
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 109
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v4, :cond_1

    .line 110
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v5

    iput-object v5, v4, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    .line 111
    :cond_1
    return-void
.end method
