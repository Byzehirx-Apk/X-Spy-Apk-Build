.class public Lgnu/expr/ChainLambdas;
.super Lgnu/expr/ExpExpVisitor;
.source "ChainLambdas.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpExpVisitor",
        "<",
        "Lgnu/expr/ScopeExp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ChainLambdas;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ExpExpVisitor;-><init>()V

    return-void
.end method

.method public static chainLambdas(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 7

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    new-instance v3, Lgnu/expr/ChainLambdas;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lgnu/expr/ChainLambdas;-><init>()V

    move-object v2, v3

    .line 14
    .local v2, "visitor":Lgnu/expr/ChainLambdas;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/ChainLambdas;->setContext(Lgnu/expr/Compilation;)V

    .line 15
    move-object v3, v2

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ChainLambdas;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 16
    return-void
.end method


# virtual methods
.method protected visitClassExp(Lgnu/expr/ClassExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ChainLambdas;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ClassExp;
    move-object v2, p2

    .local v2, "scope":Lgnu/expr/ScopeExp;
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ChainLambdas;->currentLambda:Lgnu/expr/LambdaExp;

    move-object v3, v4

    .line 64
    .local v3, "parent":Lgnu/expr/LambdaExp;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    instance-of v4, v4, Lgnu/expr/ClassExp;

    if-nez v4, :cond_0

    .line 66
    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    iput-object v5, v4, Lgnu/expr/ClassExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 67
    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 70
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ChainLambdas;->visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v4

    .line 72
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/ChainLambdas;
    return-object v0
.end method

.method protected bridge synthetic visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ChainLambdas;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ClassExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/ScopeExp;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ChainLambdas;->visitClassExp(Lgnu/expr/ClassExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ChainLambdas;
    return-object v0
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ChainLambdas;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "scope":Lgnu/expr/ScopeExp;
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ChainLambdas;->currentLambda:Lgnu/expr/LambdaExp;

    move-object v3, v7

    .line 31
    .local v3, "parent":Lgnu/expr/LambdaExp;
    move-object v7, v3

    if-eqz v7, :cond_0

    move-object v7, v3

    instance-of v7, v7, Lgnu/expr/ClassExp;

    if-nez v7, :cond_0

    .line 33
    move-object v7, v1

    move-object v8, v3

    iget-object v8, v8, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    iput-object v8, v7, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 34
    move-object v7, v3

    move-object v8, v1

    iput-object v8, v7, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 37
    :cond_0
    move-object v7, v1

    move-object v8, v2

    iput-object v8, v7, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 38
    move-object v7, v1

    const/4 v8, 0x0

    iput-object v8, v7, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 39
    move-object v7, v1

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lgnu/expr/LambdaExp;->visitChildrenOnly(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 40
    move-object v7, v1

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lgnu/expr/LambdaExp;->visitProperties(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 43
    const/4 v7, 0x0

    move-object v4, v7

    .local v4, "prev":Lgnu/expr/LambdaExp;
    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    move-object v5, v7

    .line 44
    .local v5, "child":Lgnu/expr/LambdaExp;
    :goto_0
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 46
    move-object v7, v5

    iget-object v7, v7, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    move-object v6, v7

    .line 47
    .local v6, "next":Lgnu/expr/LambdaExp;
    move-object v7, v5

    move-object v8, v4

    iput-object v8, v7, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 48
    move-object v7, v5

    move-object v4, v7

    .line 49
    move-object v7, v6

    move-object v5, v7

    .line 50
    goto :goto_0

    .line 51
    .end local v6    # "next":Lgnu/expr/LambdaExp;
    :cond_1
    move-object v7, v1

    move-object v8, v4

    iput-object v8, v7, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 53
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v7, :cond_2

    .line 54
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v8}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 55
    :cond_2
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->setIndexes()V

    .line 56
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->mustCompile()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 57
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ChainLambdas;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v7}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 58
    :cond_3
    move-object v7, v1

    move-object v0, v7

    .end local v0    # "this":Lgnu/expr/ChainLambdas;
    return-object v0
.end method

.method protected bridge synthetic visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ChainLambdas;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/ScopeExp;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ChainLambdas;->visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ChainLambdas;
    return-object v0
.end method

.method protected visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ChainLambdas;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ScopeExp;
    move-object v2, p2

    .local v2, "scope":Lgnu/expr/ScopeExp;
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    .line 21
    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ScopeExp;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 22
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->setIndexes()V

    .line 23
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->mustCompile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ChainLambdas;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v3}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 25
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ChainLambdas;
    return-object v0
.end method

.method protected bridge synthetic visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ChainLambdas;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ScopeExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/ScopeExp;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ChainLambdas;->visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ChainLambdas;
    return-object v0
.end method
