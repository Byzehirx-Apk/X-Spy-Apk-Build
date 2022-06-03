.class public Lgnu/expr/SynchronizedExp;
.super Lgnu/expr/Expression;
.source "SynchronizedExp.java"


# instance fields
.field body:Lgnu/expr/Expression;

.field object:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .locals 5

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SynchronizedExp;
    move-object v1, p1

    .local v1, "object":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "body":Lgnu/expr/Expression;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/expr/Expression;-><init>()V

    .line 12
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/SynchronizedExp;->object:Lgnu/expr/Expression;

    .line 13
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/SynchronizedExp;->body:Lgnu/expr/Expression;

    .line 14
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
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SynchronizedExp;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/SynchronizedExp;->object:Lgnu/expr/Expression;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 22
    .local v2, "value":Ljava/lang/Object;
    move-object v6, v2

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v4, v7

    monitor-enter v6

    .line 24
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lgnu/expr/SynchronizedExp;->body:Lgnu/expr/Expression;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 25
    .local v3, "result":Ljava/lang/Object;
    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 27
    return-void

    .line 25
    .end local v3    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SynchronizedExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    move-object v3, v6

    .line 32
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/SynchronizedExp;->object:Lgnu/expr/Expression;

    move-object v7, v1

    sget-object v8, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 33
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 34
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v6

    move-object v4, v6

    .line 35
    .local v4, "scope":Lgnu/bytecode/Scope;
    move-object v6, v4

    move-object v7, v3

    sget-object v8, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v6

    move-object v5, v6

    .line 36
    .local v5, "objvar":Lgnu/bytecode/Variable;
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 37
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitMonitorEnter()V

    .line 38
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v2

    instance-of v8, v8, Lgnu/expr/IgnoreTarget;

    if-nez v8, :cond_0

    move-object v8, v2

    instance-of v8, v8, Lgnu/expr/ConsumerTarget;

    if-eqz v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 43
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/SynchronizedExp;->body:Lgnu/expr/Expression;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 44
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 45
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitMonitorExit()V

    .line 46
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 47
    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 48
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 49
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitMonitorExit()V

    .line 50
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 51
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 52
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 53
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v6

    .line 54
    return-void

    .line 38
    :cond_1
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    goto :goto_0
.end method

.method protected mustCompile()Z
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SynchronizedExp;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/SynchronizedExp;
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SynchronizedExp;
    move-object v1, p1

    .local v1, "ps":Lgnu/mapping/OutPort;
    move-object v2, v1

    const-string/jumbo v3, "(Synchronized "

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 71
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/SynchronizedExp;->object:Lgnu/expr/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 72
    move-object v2, v1

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 73
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/SynchronizedExp;->body:Lgnu/expr/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 74
    move-object v2, v1

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 75
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
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SynchronizedExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitSynchronizedExp(Lgnu/expr/SynchronizedExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/SynchronizedExp;
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
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SynchronizedExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/SynchronizedExp;->object:Lgnu/expr/Expression;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/SynchronizedExp;->object:Lgnu/expr/Expression;

    .line 64
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 65
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/SynchronizedExp;->body:Lgnu/expr/Expression;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/SynchronizedExp;->body:Lgnu/expr/Expression;

    .line 66
    :cond_0
    return-void
.end method
