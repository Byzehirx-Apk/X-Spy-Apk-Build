.class public Lgnu/expr/ObjectExp;
.super Lgnu/expr/ClassExp;
.source "ObjectExp.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ObjectExp;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lgnu/expr/ClassExp;-><init>(Z)V

    .line 9
    return-void
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 11

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ObjectExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/ObjectExp;->compileMembers(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v7

    .line 21
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    move-object v3, v7

    .line 22
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ObjectExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 23
    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 24
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ObjectExp;->type:Lgnu/bytecode/ClassType;

    move-object v8, v0

    invoke-static {v7, v8}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v7

    move-object v4, v7

    .line 25
    .local v4, "init":Lgnu/bytecode/Method;
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ObjectExp;->closureEnvField:Lgnu/bytecode/Field;

    if-eqz v7, :cond_0

    .line 27
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ObjectExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v7

    move-object v5, v7

    .line 28
    .local v5, "caller":Lgnu/expr/LambdaExp;
    sget v7, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ObjectExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v7

    iget-object v7, v7, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    :goto_0
    move-object v6, v7

    .line 31
    .local v6, "closureEnv":Lgnu/bytecode/Variable;
    move-object v7, v6

    if-nez v7, :cond_3

    .line 32
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 36
    .end local v5    # "caller":Lgnu/expr/LambdaExp;
    .end local v6    # "closureEnv":Lgnu/bytecode/Variable;
    :cond_0
    :goto_1
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 38
    move-object v7, v2

    move-object v8, v1

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lgnu/expr/ObjectExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 39
    return-void

    .line 28
    .restart local v5    # "caller":Lgnu/expr/LambdaExp;
    :cond_1
    move-object v7, v5

    iget-object v7, v7, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v7, :cond_2

    move-object v7, v5

    iget-object v7, v7, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    goto :goto_0

    :cond_2
    move-object v7, v5

    iget-object v7, v7, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_0

    .line 34
    .restart local v6    # "closureEnv":Lgnu/bytecode/Variable;
    :cond_3
    move-object v7, v3

    move-object v8, v6

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_1
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ObjectExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ObjectExp;->type:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ObjectExp;
    return-object v0
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
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ObjectExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitObjectExp(Lgnu/expr/ObjectExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ObjectExp;
    return-object v0
.end method
