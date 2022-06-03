.class public Lgnu/bytecode/ExitableBlock;
.super Ljava/lang/Object;
.source "ExitableBlock.java"


# instance fields
.field code:Lgnu/bytecode/CodeAttr;

.field currentTryState:Lgnu/bytecode/TryState;

.field endLabel:Lgnu/bytecode/Label;

.field initialTryState:Lgnu/bytecode/TryState;

.field nextCase:Lgnu/bytecode/ExitableBlock;

.field outer:Lgnu/bytecode/ExitableBlock;

.field resultType:Lgnu/bytecode/Type;

.field resultVariable:Lgnu/bytecode/Variable;

.field switchCase:I


# direct methods
.method constructor <init>(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;Z)V
    .locals 11

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ExitableBlock;
    move-object v1, p1

    .local v1, "resultType":Lgnu/bytecode/Type;
    move-object v2, p2

    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move v3, p3

    .local v3, "runFinallyBlocks":Z
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    .line 48
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/bytecode/ExitableBlock;->resultType:Lgnu/bytecode/Type;

    .line 49
    move-object v5, v0

    move-object v6, v2

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v6, v5, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    .line 50
    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v1

    if-eqz v5, :cond_0

    .line 52
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v5

    .line 53
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v5

    move-object v4, v5

    .line 54
    .local v4, "var":Lgnu/bytecode/Variable;
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    .line 56
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitStoreDefaultValue(Lgnu/bytecode/Variable;)V

    .line 57
    move-object v5, v0

    move-object v6, v2

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lgnu/bytecode/CodeAttr;->exitableBlockLevel:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v9, v6

    move v10, v7

    move v6, v10

    move-object v7, v9

    move v8, v10

    iput v8, v7, Lgnu/bytecode/CodeAttr;->exitableBlockLevel:I

    iput v6, v5, Lgnu/bytecode/ExitableBlock;->switchCase:I

    .line 59
    .end local v4    # "var":Lgnu/bytecode/Variable;
    :cond_0
    move-object v5, v0

    new-instance v6, Lgnu/bytecode/Label;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-direct {v7, v8}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v6, v5, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    .line 60
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ExitableBlock;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_0

    .line 80
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 81
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    invoke-static {v2, v3}, Lgnu/bytecode/TryState;->outerHandler(Lgnu/bytecode/TryState;Lgnu/bytecode/TryState;)Lgnu/bytecode/TryState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/ExitableBlock;->exit(Lgnu/bytecode/TryState;)V

    .line 82
    return-void
.end method

.method exit(Lgnu/bytecode/TryState;)V
    .locals 5

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ExitableBlock;
    move-object v1, p1

    .local v1, "activeTry":Lgnu/bytecode/TryState;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    if-ne v3, v4, :cond_0

    .line 99
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 123
    :goto_0
    return-void

    .line 100
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    move-object v2, v3

    .line 103
    .local v2, "stack":Lgnu/bytecode/TryState;
    :goto_1
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    if-eq v3, v4, :cond_2

    .line 105
    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/TryState;->finally_ret_addr:Lgnu/bytecode/Variable;

    if-nez v3, :cond_1

    .line 108
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    move-object v4, v2

    iget-object v4, v4, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitJsr(Lgnu/bytecode/Label;)V

    .line 103
    :cond_1
    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/TryState;->previous:Lgnu/bytecode/TryState;

    move-object v2, v3

    goto :goto_1

    .line 111
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_0

    .line 115
    .end local v2    # "stack":Lgnu/bytecode/TryState;
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ExitableBlock;->currentTryState:Lgnu/bytecode/TryState;

    if-nez v3, :cond_4

    .line 116
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/ExitableBlock;->linkCase(Lgnu/bytecode/TryState;)V

    .line 117
    :cond_4
    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-eqz v3, :cond_5

    .line 118
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitStoreDefaultValue(Lgnu/bytecode/Variable;)V

    .line 119
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/ExitableBlock;->switchCase:I

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 120
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 121
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_0
.end method

.method public exitIsGoto()Lgnu/bytecode/Label;
    .locals 3

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ExitableBlock;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v1, v1, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    invoke-static {v1, v2}, Lgnu/bytecode/TryState;->outerHandler(Lgnu/bytecode/TryState;Lgnu/bytecode/TryState;)Lgnu/bytecode/TryState;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    if-ne v1, v2, :cond_0

    .line 90
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    move-object v0, v1

    .line 92
    .end local v0    # "this":Lgnu/bytecode/ExitableBlock;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/bytecode/ExitableBlock;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method finish()V
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ExitableBlock;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 66
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v1, v2}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 67
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_1

    .line 69
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 70
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v1

    .line 71
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/bytecode/CodeAttr;->exitableBlockLevel:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lgnu/bytecode/CodeAttr;->exitableBlockLevel:I

    .line 73
    :cond_1
    return-void
.end method

.method linkCase(Lgnu/bytecode/TryState;)V
    .locals 5

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ExitableBlock;
    move-object v1, p1

    .local v1, "tryState":Lgnu/bytecode/TryState;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ExitableBlock;->currentTryState:Lgnu/bytecode/TryState;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 129
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ExitableBlock;->currentTryState:Lgnu/bytecode/TryState;

    if-eqz v2, :cond_0

    .line 130
    new-instance v2, Ljava/lang/Error;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    throw v2

    .line 131
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    iput-object v3, v2, Lgnu/bytecode/ExitableBlock;->nextCase:Lgnu/bytecode/ExitableBlock;

    .line 132
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    .line 133
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/ExitableBlock;->currentTryState:Lgnu/bytecode/TryState;

    .line 135
    :cond_1
    return-void
.end method
