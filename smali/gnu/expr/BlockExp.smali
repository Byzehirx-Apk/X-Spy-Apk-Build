.class public Lgnu/expr/BlockExp;
.super Lgnu/expr/Expression;
.source "BlockExp.java"


# instance fields
.field body:Lgnu/expr/Expression;

.field exitBody:Lgnu/expr/Expression;

.field exitTarget:Lgnu/expr/Target;

.field exitableBlock:Lgnu/bytecode/ExitableBlock;

.field label:Lgnu/expr/Declaration;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BlockExp;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BlockExp;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/expr/BlockExitException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 59
    .line 60
    :cond_0
    :goto_0
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 61
    return-void

    .line 52
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 54
    .local v3, "ex":Lgnu/expr/BlockExitException;
    move-object v4, v3

    iget-object v4, v4, Lgnu/expr/BlockExitException;->exit:Lgnu/expr/ExitExp;

    iget-object v4, v4, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    move-object v5, v0

    if-eq v4, v5, :cond_1

    .line 55
    move-object v4, v3

    throw v4

    .line 56
    :cond_1
    move-object v4, v3

    iget-object v4, v4, Lgnu/expr/BlockExitException;->exit:Lgnu/expr/ExitExp;

    iget-object v4, v4, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    move-object v2, v4

    .line 57
    .local v2, "result":Lgnu/expr/Expression;
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-eqz v4, :cond_0

    .line 58
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .local v2, "result":Ljava/lang/Object;
    goto :goto_0
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 11

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BlockExp;
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

    iget-object v7, v7, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-nez v7, :cond_0

    move-object v7, v2

    instance-of v7, v7, Lgnu/expr/StackTarget;

    if-eqz v7, :cond_0

    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    :goto_0
    move-object v4, v7

    .line 70
    .local v4, "rtype":Lgnu/bytecode/Type;
    move-object v7, v3

    move-object v8, v4

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/CodeAttr;->startExitableBlock(Lgnu/bytecode/Type;Z)Lgnu/bytecode/ExitableBlock;

    move-result-object v7

    move-object v5, v7

    .line 71
    .local v5, "bl":Lgnu/bytecode/ExitableBlock;
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lgnu/expr/BlockExp;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 72
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-nez v8, :cond_1

    move-object v8, v2

    :goto_1
    iput-object v8, v7, Lgnu/expr/BlockExp;->exitTarget:Lgnu/expr/Target;

    .line 73
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 74
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-eqz v7, :cond_2

    .line 76
    new-instance v7, Lgnu/bytecode/Label;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v3

    invoke-direct {v8, v9}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v6, v7

    .line 77
    .local v6, "doneLabel":Lgnu/bytecode/Label;
    move-object v7, v3

    move-object v8, v6

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 78
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->endExitableBlock()V

    .line 79
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 80
    move-object v7, v6

    move-object v8, v3

    invoke-virtual {v7, v8}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 81
    .line 84
    .end local v6    # "doneLabel":Lgnu/bytecode/Label;
    :goto_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lgnu/expr/BlockExp;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 85
    return-void

    .line 66
    .end local v4    # "rtype":Lgnu/bytecode/Type;
    .end local v5    # "bl":Lgnu/bytecode/ExitableBlock;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 72
    .restart local v4    # "rtype":Lgnu/bytecode/Type;
    .restart local v5    # "bl":Lgnu/bytecode/ExitableBlock;
    :cond_1
    sget-object v8, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    goto :goto_1

    .line 83
    :cond_2
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->endExitableBlock()V

    goto :goto_2
.end method

.method protected mustCompile()Z
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BlockExp;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/BlockExp;
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 6

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BlockExp;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v2, v1

    const-string/jumbo v3, "(Block"

    const-string/jumbo v4, ")"

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

    if-eqz v2, :cond_0

    .line 104
    move-object v2, v1

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(C)V

    .line 105
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 107
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 108
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 109
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-eqz v2, :cond_1

    .line 111
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 112
    move-object v2, v1

    const-string/jumbo v3, "else "

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 113
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 115
    :cond_1
    move-object v2, v1

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setBody(Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BlockExp;
    move-object v1, p1

    .local v1, "body":Lgnu/expr/Expression;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    .line 25
    return-void
.end method

.method public setBody(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BlockExp;
    move-object v1, p1

    .local v1, "body":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "exitBody":Lgnu/expr/Expression;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    .line 30
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    .line 31
    return-void
.end method

.method public setLabel(Lgnu/expr/Declaration;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BlockExp;
    move-object v1, p1

    .local v1, "label":Lgnu/expr/Declaration;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

    .line 36
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
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BlockExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitBlockExp(Lgnu/expr/BlockExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/BlockExp;
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
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BlockExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    .line 95
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-eqz v3, :cond_0

    .line 96
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    .line 97
    :cond_0
    return-void
.end method
