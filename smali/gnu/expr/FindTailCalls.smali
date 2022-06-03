.class public Lgnu/expr/FindTailCalls;
.super Lgnu/expr/ExpExpVisitor;
.source "FindTailCalls.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpExpVisitor",
        "<",
        "Lgnu/expr/Expression;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ExpExpVisitor;-><init>()V

    return-void
.end method

.method public static findTailCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 7

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    new-instance v3, Lgnu/expr/FindTailCalls;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lgnu/expr/FindTailCalls;-><init>()V

    move-object v2, v3

    .line 27
    .local v2, "visitor":Lgnu/expr/FindTailCalls;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/FindTailCalls;->setContext(Lgnu/expr/Compilation;)V

    .line 28
    move-object v3, v2

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindTailCalls;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 29
    return-void
.end method


# virtual methods
.method public postVisitDecls(Lgnu/expr/ScopeExp;)V
    .locals 10

    .prologue
    .line 193
    move-object v1, p0

    .local v1, "this":Lgnu/expr/FindTailCalls;
    move-object v2, p1

    .local v2, "exp":Lgnu/expr/ScopeExp;
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v3, v7

    .line 194
    .local v3, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v7, v3

    if-eqz v7, :cond_3

    .line 196
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v7

    move-object v4, v7

    .line 197
    .local v4, "value":Lgnu/expr/Expression;
    move-object v7, v4

    instance-of v7, v7, Lgnu/expr/LambdaExp;

    if-eqz v7, :cond_1

    .line 199
    move-object v7, v4

    check-cast v7, Lgnu/expr/LambdaExp;

    move-object v5, v7

    .line 200
    .local v5, "lexp":Lgnu/expr/LambdaExp;
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 201
    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/expr/LambdaExp;->setCanRead(Z)V

    .line 202
    :cond_0
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 203
    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/expr/LambdaExp;->setCanCall(Z)V

    .line 205
    .end local v5    # "lexp":Lgnu/expr/LambdaExp;
    :cond_1
    move-object v7, v3

    const-wide/16 v8, 0x400

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v4

    instance-of v7, v7, Lgnu/expr/ReferenceExp;

    if-eqz v7, :cond_2

    .line 208
    move-object v7, v4

    check-cast v7, Lgnu/expr/ReferenceExp;

    move-object v5, v7

    .line 209
    .local v5, "rexp":Lgnu/expr/ReferenceExp;
    move-object v7, v5

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v6, v7

    .line 210
    .local v6, "context":Lgnu/expr/Declaration;
    move-object v7, v6

    if-eqz v7, :cond_2

    move-object v7, v6

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 211
    move-object v7, v6

    const-wide/32 v8, 0x80000

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 194
    .end local v5    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v6    # "context":Lgnu/expr/Declaration;
    :cond_2
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v3, v7

    goto :goto_0

    .line 214
    .end local v4    # "value":Lgnu/expr/Expression;
    :cond_3
    return-void
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 16

    .prologue
    .line 49
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/expr/FindTailCalls;
    move-object/from16 v2, p1

    .local v2, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v3, p2

    .local v3, "returnContinuation":Lgnu/expr/Expression;
    move-object v11, v3

    move-object v12, v1

    iget-object v12, v12, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    iget-object v12, v12, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-ne v11, v12, :cond_5

    const/4 v11, 0x1

    :goto_0
    move v4, v11

    .line 50
    .local v4, "inTailContext":Z
    move v11, v4

    if-eqz v11, :cond_0

    .line 51
    move-object v11, v2

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/expr/ApplyExp;->setTailCall(Z)V

    .line 52
    :cond_0
    move-object v11, v2

    move-object v12, v1

    iget-object v12, v12, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    iput-object v12, v11, Lgnu/expr/ApplyExp;->context:Lgnu/expr/LambdaExp;

    .line 53
    const/4 v11, 0x0

    move-object v5, v11

    .line 54
    .local v5, "lexp":Lgnu/expr/LambdaExp;
    const/4 v11, 0x0

    move v6, v11

    .line 55
    .local v6, "isAppendValues":Z
    move-object v11, v2

    iget-object v11, v11, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v11, v11, Lgnu/expr/ReferenceExp;

    if-eqz v11, :cond_6

    .line 57
    move-object v11, v2

    iget-object v11, v11, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v11, Lgnu/expr/ReferenceExp;

    move-object v7, v11

    .line 58
    .local v7, "func":Lgnu/expr/ReferenceExp;
    move-object v11, v7

    iget-object v11, v11, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v11}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v11

    move-object v8, v11

    .line 59
    .local v8, "binding":Lgnu/expr/Declaration;
    move-object v11, v8

    if-eqz v11, :cond_3

    .line 64
    move-object v11, v8

    const-wide/16 v12, 0x800

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v11

    if-nez v11, :cond_1

    .line 66
    move-object v11, v2

    move-object v12, v8

    iget-object v12, v12, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    iput-object v12, v11, Lgnu/expr/ApplyExp;->nextCall:Lgnu/expr/ApplyExp;

    .line 67
    move-object v11, v8

    move-object v12, v2

    iput-object v12, v11, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    .line 69
    :cond_1
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/expr/FindTailCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v11

    move-object v9, v11

    .line 70
    .local v9, "comp":Lgnu/expr/Compilation;
    move-object v11, v8

    invoke-virtual {v11}, Lgnu/expr/Declaration;->setCanCall()V

    .line 71
    move-object v11, v9

    iget-boolean v11, v11, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v11, :cond_2

    .line 73
    move-object v11, v8

    invoke-virtual {v11}, Lgnu/expr/Declaration;->setCanRead()V

    .line 74
    :cond_2
    move-object v11, v8

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v11

    move-object v10, v11

    .line 75
    .local v10, "value":Lgnu/expr/Expression;
    move-object v11, v10

    instance-of v11, v11, Lgnu/expr/LambdaExp;

    if-eqz v11, :cond_3

    .line 76
    move-object v11, v10

    check-cast v11, Lgnu/expr/LambdaExp;

    move-object v5, v11

    .line 78
    .line 94
    .end local v7    # "func":Lgnu/expr/ReferenceExp;
    .end local v8    # "binding":Lgnu/expr/Declaration;
    .end local v9    # "comp":Lgnu/expr/Compilation;
    .end local v10    # "value":Lgnu/expr/Expression;
    :cond_3
    :goto_1
    move-object v11, v5

    if-eqz v11, :cond_4

    .line 96
    move-object v11, v5

    iget-object v11, v11, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    move-object v12, v3

    if-ne v11, v12, :cond_9

    .line 129
    :cond_4
    :goto_2
    move-object v11, v2

    move-object v12, v1

    move-object v13, v2

    iget-object v13, v13, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-virtual {v12, v13}, Lgnu/expr/FindTailCalls;->visitExps([Lgnu/expr/Expression;)[Lgnu/expr/Expression;

    move-result-object v12

    iput-object v12, v11, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 130
    move-object v11, v2

    move-object v1, v11

    .end local v1    # "this":Lgnu/expr/FindTailCalls;
    return-object v1

    .line 49
    .end local v4    # "inTailContext":Z
    .end local v5    # "lexp":Lgnu/expr/LambdaExp;
    .end local v6    # "isAppendValues":Z
    .restart local v1    # "this":Lgnu/expr/FindTailCalls;
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .line 79
    .restart local v4    # "inTailContext":Z
    .restart local v5    # "lexp":Lgnu/expr/LambdaExp;
    .restart local v6    # "isAppendValues":Z
    :cond_6
    move-object v11, v2

    iget-object v11, v11, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v11, v11, Lgnu/expr/LambdaExp;

    if-eqz v11, :cond_7

    move-object v11, v2

    iget-object v11, v11, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v11, v11, Lgnu/expr/ClassExp;

    if-nez v11, :cond_7

    .line 82
    move-object v11, v2

    iget-object v11, v11, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v11, Lgnu/expr/LambdaExp;

    move-object v5, v11

    .line 83
    move-object v11, v1

    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lgnu/expr/FindTailCalls;->visitLambdaExp(Lgnu/expr/LambdaExp;Z)V

    .line 84
    move-object v11, v5

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/expr/LambdaExp;->setCanCall(Z)V

    goto :goto_1

    .line 86
    :cond_7
    move-object v11, v2

    iget-object v11, v11, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v11, v11, Lgnu/expr/QuoteExp;

    if-eqz v11, :cond_8

    move-object v11, v2

    iget-object v11, v11, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v11, Lgnu/expr/QuoteExp;

    invoke-virtual {v11}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    if-ne v11, v12, :cond_8

    .line 89
    const/4 v11, 0x1

    move v6, v11

    goto :goto_1

    .line 92
    :cond_8
    move-object v11, v2

    move-object v12, v1

    move-object v13, v2

    iget-object v13, v13, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v14, v2

    iget-object v14, v14, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v12, v13, v14}, Lgnu/expr/FindTailCalls;->visitExpression(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v12

    iput-object v12, v11, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    goto :goto_1

    .line 97
    :cond_9
    move-object v11, v5

    move-object v12, v1

    iget-object v12, v12, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    if-ne v11, v12, :cond_a

    move v11, v4

    if-eqz v11, :cond_a

    .line 98
    goto :goto_2

    .line 99
    :cond_a
    move v11, v4

    if-eqz v11, :cond_c

    .line 101
    move-object v11, v5

    iget-object v11, v11, Lgnu/expr/LambdaExp;->tailCallers:Ljava/util/Set;

    if-nez v11, :cond_b

    .line 102
    move-object v11, v5

    new-instance v12, Ljava/util/HashSet;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    iput-object v12, v11, Lgnu/expr/LambdaExp;->tailCallers:Ljava/util/Set;

    .line 103
    :cond_b
    move-object v11, v5

    iget-object v11, v11, Lgnu/expr/LambdaExp;->tailCallers:Ljava/util/Set;

    move-object v12, v1

    iget-object v12, v12, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_2

    .line 105
    :cond_c
    move-object v11, v5

    iget-object v11, v11, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    if-nez v11, :cond_d

    .line 107
    move-object v11, v5

    move-object v12, v3

    iput-object v12, v11, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 108
    move-object v11, v5

    move-object v12, v1

    iget-object v12, v12, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    iput-object v12, v11, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    goto/16 :goto_2

    .line 112
    :cond_d
    move-object v11, v5

    sget-object v12, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object v12, v11, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 113
    move-object v11, v5

    const/4 v12, 0x0

    iput-object v12, v11, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    goto/16 :goto_2
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/Expression;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindTailCalls;->visitApplyExp(Lgnu/expr/ApplyExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected visitBeginExp(Lgnu/expr/BeginExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 11

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/BeginExp;
    move-object v2, p2

    .local v2, "returnContinuation":Lgnu/expr/Expression;
    move-object v5, v1

    iget v5, v5, Lgnu/expr/BeginExp;->length:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 144
    .local v3, "n":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-gt v5, v6, :cond_1

    .line 145
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move v6, v4

    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move v8, v4

    aget-object v7, v7, v8

    move-object v8, v0

    move v9, v4

    move v10, v3

    if-ne v9, v10, :cond_0

    move-object v9, v2

    :goto_1
    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/Expression;

    aput-object v7, v5, v6

    .line 144
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 145
    :cond_0
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move v10, v4

    aget-object v9, v9, v10

    goto :goto_1

    .line 146
    :cond_1
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected bridge synthetic visitBeginExp(Lgnu/expr/BeginExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/BeginExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/Expression;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindTailCalls;->visitBeginExp(Lgnu/expr/BeginExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected visitBlockExp(Lgnu/expr/BlockExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/BlockExp;
    move-object v2, p2

    .local v2, "returnContinuation":Lgnu/expr/Expression;
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Expression;

    iput-object v4, v3, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    .line 136
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-eqz v3, :cond_0

    .line 137
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Expression;

    iput-object v4, v3, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    .line 138
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected bridge synthetic visitBlockExp(Lgnu/expr/BlockExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/BlockExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/Expression;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindTailCalls;->visitBlockExp(Lgnu/expr/BlockExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected visitClassExp(Lgnu/expr/ClassExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 9

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ClassExp;
    move-object v2, p2

    .local v2, "returnContinuation":Lgnu/expr/Expression;
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    move-object v3, v6

    .line 261
    .local v3, "parent":Lgnu/expr/LambdaExp;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    .line 264
    move-object v6, v1

    :try_start_0
    iget-object v6, v6, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    move-object v4, v6

    .line 265
    .local v4, "child":Lgnu/expr/LambdaExp;
    :goto_0
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/FindTailCalls;->exitValue:Ljava/lang/Object;

    if-nez v6, :cond_0

    .line 266
    move-object v6, v0

    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgnu/expr/FindTailCalls;->visitLambdaExp(Lgnu/expr/LambdaExp;Z)V

    .line 265
    move-object v6, v4

    iget-object v6, v6, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v6

    goto :goto_0

    .line 270
    :cond_0
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    .line 271
    .line 273
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0

    .line 270
    .end local v4    # "child":Lgnu/expr/LambdaExp;
    .restart local v0    # "this":Lgnu/expr/FindTailCalls;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    move-object v6, v5

    throw v6
.end method

.method protected bridge synthetic visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ClassExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/Expression;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindTailCalls;->visitClassExp(Lgnu/expr/ClassExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected visitExpression(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "returnContinuation":Lgnu/expr/Expression;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    invoke-super {v3, v4, v5}, Lgnu/expr/ExpExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Expression;

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected bridge synthetic visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/Expression;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindTailCalls;->visitExpression(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method public visitExps([Lgnu/expr/Expression;)[Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "exps":[Lgnu/expr/Expression;
    move-object v5, v1

    array-length v5, v5

    move v2, v5

    .line 39
    .local v2, "n":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 41
    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 42
    .local v4, "expi":Lgnu/expr/Expression;
    move-object v5, v1

    move v6, v3

    move-object v7, v0

    move-object v8, v4

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lgnu/expr/FindTailCalls;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/Expression;

    aput-object v7, v5, v6

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .end local v4    # "expi":Lgnu/expr/Expression;
    :cond_0
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected visitFluidLetExp(Lgnu/expr/FluidLetExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/FluidLetExp;
    move-object v2, p2

    .local v2, "returnContinuation":Lgnu/expr/Expression;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/FluidLetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    .line 152
    .local v3, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 154
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 155
    move-object v4, v3

    iget-object v4, v4, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v4, :cond_0

    .line 156
    move-object v4, v3

    iget-object v4, v4, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 152
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 158
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/FindTailCalls;->visitLetDecls(Lgnu/expr/LetExp;)V

    .line 159
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/FluidLetExp;->body:Lgnu/expr/Expression;

    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/FluidLetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/expr/Expression;

    iput-object v5, v4, Lgnu/expr/FluidLetExp;->body:Lgnu/expr/Expression;

    .line 160
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/FindTailCalls;->postVisitDecls(Lgnu/expr/ScopeExp;)V

    .line 161
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected bridge synthetic visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/FluidLetExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/Expression;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindTailCalls;->visitFluidLetExp(Lgnu/expr/FluidLetExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected visitIfExp(Lgnu/expr/IfExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/IfExp;
    move-object v2, p2

    .local v2, "returnContinuation":Lgnu/expr/Expression;
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/expr/Expression;

    iput-object v5, v4, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    .line 219
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/expr/Expression;

    iput-object v5, v4, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    .line 220
    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    move-object v3, v4

    .line 221
    .local v3, "else_clause":Lgnu/expr/Expression;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 222
    move-object v4, v1

    move-object v5, v3

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/expr/Expression;

    iput-object v5, v4, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    .line 223
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected bridge synthetic visitIfExp(Lgnu/expr/IfExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/IfExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/Expression;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindTailCalls;->visitIfExp(Lgnu/expr/IfExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "returnContinuation":Lgnu/expr/Expression;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindTailCalls;->visitLambdaExp(Lgnu/expr/LambdaExp;Z)V

    .line 229
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected bridge synthetic visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/Expression;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindTailCalls;->visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method final visitLambdaExp(Lgnu/expr/LambdaExp;Z)V
    .locals 9

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/LambdaExp;
    move v2, p2

    .local v2, "canRead":Z
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    move-object v3, v5

    .line 235
    .local v3, "parent":Lgnu/expr/LambdaExp;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    .line 236
    move v5, v2

    if-eqz v5, :cond_0

    .line 237
    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/LambdaExp;->setCanRead(Z)V

    .line 240
    :cond_0
    move-object v5, v1

    :try_start_0
    iget-object v5, v5, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-eqz v5, :cond_1

    .line 241
    move-object v5, v1

    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    invoke-virtual {v6, v7}, Lgnu/expr/FindTailCalls;->visitExps([Lgnu/expr/Expression;)[Lgnu/expr/Expression;

    move-result-object v6

    iput-object v6, v5, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    .line 242
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/FindTailCalls;->exitValue:Ljava/lang/Object;

    if-nez v5, :cond_2

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v5, :cond_2

    .line 243
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v1

    :goto_0
    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/Expression;

    iput-object v6, v5, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_2
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    .line 248
    .line 250
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/FindTailCalls;->postVisitDecls(Lgnu/expr/ScopeExp;)V

    .line 251
    return-void

    .line 243
    :cond_3
    move-object v8, v1

    :try_start_1
    iget-object v8, v8, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    move-object v5, v4

    throw v5
.end method

.method visitLetDecls(Lgnu/expr/LetExp;)V
    .locals 11

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/LetExp;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v2, v7

    .line 167
    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v7, v7

    move v3, v7

    .line 168
    .local v3, "n":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_2

    .line 170
    move-object v7, v0

    move-object v8, v2

    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move v10, v4

    aget-object v9, v9, v10

    invoke-virtual {v7, v8, v9}, Lgnu/expr/FindTailCalls;->visitSetExp(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v5, v7

    .line 172
    .local v5, "init":Lgnu/expr/Expression;
    move-object v7, v5

    sget-object v8, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v7, v8, :cond_1

    .line 174
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v7

    move-object v6, v7

    .line 175
    .local v6, "value":Lgnu/expr/Expression;
    move-object v7, v6

    instance-of v7, v7, Lgnu/expr/LambdaExp;

    if-nez v7, :cond_0

    move-object v7, v6

    move-object v8, v5

    if-eq v7, v8, :cond_1

    move-object v7, v6

    instance-of v7, v7, Lgnu/expr/QuoteExp;

    if-eqz v7, :cond_1

    .line 177
    :cond_0
    move-object v7, v6

    move-object v5, v7

    .line 179
    .end local v6    # "value":Lgnu/expr/Expression;
    :cond_1
    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move v8, v4

    move-object v9, v5

    aput-object v9, v7, v8

    .line 168
    add-int/lit8 v4, v4, 0x1

    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v2, v7

    goto :goto_0

    .line 181
    .end local v5    # "init":Lgnu/expr/Expression;
    :cond_2
    return-void
.end method

.method protected visitLetExp(Lgnu/expr/LetExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/LetExp;
    move-object v2, p2

    .local v2, "returnContinuation":Lgnu/expr/Expression;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/FindTailCalls;->visitLetDecls(Lgnu/expr/LetExp;)V

    .line 186
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Expression;

    iput-object v4, v3, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 187
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/FindTailCalls;->postVisitDecls(Lgnu/expr/ScopeExp;)V

    .line 188
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected bridge synthetic visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/LetExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/Expression;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindTailCalls;->visitLetExp(Lgnu/expr/LetExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ReferenceExp;
    move-object v2, p2

    .local v2, "returnContinuation":Lgnu/expr/Expression;
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v5}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v5

    move-object v3, v5

    .line 279
    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 285
    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    move-object v4, v5

    .line 286
    .local v4, "type":Lgnu/bytecode/Type;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    sget-object v5, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object v0, v5

    .line 293
    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    .end local v4    # "type":Lgnu/bytecode/Type;
    :goto_0
    return-object v0

    .line 288
    .restart local v0    # "this":Lgnu/expr/FindTailCalls;
    .restart local v4    # "type":Lgnu/bytecode/Type;
    :cond_0
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 290
    .end local v4    # "type":Lgnu/bytecode/Type;
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    move-object v4, v5

    .line 291
    .local v4, "ctx":Lgnu/expr/Declaration;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 292
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 293
    :cond_2
    move-object v5, v1

    move-object v0, v5

    goto :goto_0
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ReferenceExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/Expression;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindTailCalls;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method final visitSetExp(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v2, p2

    .local v2, "value":Lgnu/expr/Expression;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v4

    move-object v5, v2

    if-ne v4, v5, :cond_0

    move-object v4, v2

    instance-of v4, v4, Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Lgnu/expr/ClassExp;

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v4

    if-nez v4, :cond_0

    .line 302
    move-object v4, v2

    check-cast v4, Lgnu/expr/LambdaExp;

    move-object v3, v4

    .line 303
    .local v3, "lexp":Lgnu/expr/LambdaExp;
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgnu/expr/FindTailCalls;->visitLambdaExp(Lgnu/expr/LambdaExp;Z)V

    .line 304
    move-object v4, v3

    move-object v0, v4

    .line 307
    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    .end local v3    # "lexp":Lgnu/expr/LambdaExp;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/expr/FindTailCalls;
    :cond_0
    move-object v4, v2

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Expression;

    move-object v0, v4

    goto :goto_0
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/SetExp;
    move-object v2, p2

    .local v2, "returnContinuation":Lgnu/expr/Expression;
    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    move-object v3, v6

    .line 313
    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v6, v3

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 315
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 317
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object v8, v0

    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/Expression;

    iput-object v7, v6, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    .line 318
    move-object v6, v1

    move-object v0, v6

    .line 335
    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    :goto_0
    return-object v0

    .line 320
    .restart local v0    # "this":Lgnu/expr/FindTailCalls;
    :cond_0
    move-object v6, v3

    invoke-static {v6}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v6

    move-object v3, v6

    .line 322
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/SetExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v4, v6

    .line 323
    .local v4, "ctx":Lgnu/expr/Declaration;
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 324
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 325
    :cond_2
    move-object v6, v0

    move-object v7, v3

    move-object v8, v1

    iget-object v8, v8, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/FindTailCalls;->visitSetExp(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v5, v6

    .line 326
    .local v5, "value":Lgnu/expr/Expression;
    move-object v6, v3

    if-eqz v6, :cond_4

    move-object v6, v3

    iget-object v6, v6, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v6, v6, Lgnu/expr/LetExp;

    if-eqz v6, :cond_4

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v7

    if-ne v6, v7, :cond_4

    move-object v6, v5

    instance-of v6, v6, Lgnu/expr/LambdaExp;

    if-nez v6, :cond_3

    move-object v6, v5

    instance-of v6, v6, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_4

    .line 332
    :cond_3
    sget-object v6, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object v0, v6

    goto :goto_0

    .line 334
    :cond_4
    move-object v6, v1

    move-object v7, v5

    iput-object v7, v6, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    .line 335
    move-object v6, v1

    move-object v0, v6

    goto :goto_0
.end method

.method protected bridge synthetic visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/SetExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/Expression;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindTailCalls;->visitSetExp(Lgnu/expr/SetExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected visitSynchronizedExp(Lgnu/expr/SynchronizedExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/SynchronizedExp;
    move-object v2, p2

    .local v2, "returnContinuation":Lgnu/expr/Expression;
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/SynchronizedExp;->object:Lgnu/expr/Expression;

    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/SynchronizedExp;->object:Lgnu/expr/Expression;

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Expression;

    iput-object v4, v3, Lgnu/expr/SynchronizedExp;->object:Lgnu/expr/Expression;

    .line 360
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/SynchronizedExp;->body:Lgnu/expr/Expression;

    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/SynchronizedExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Expression;

    iput-object v4, v3, Lgnu/expr/SynchronizedExp;->body:Lgnu/expr/Expression;

    .line 361
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected bridge synthetic visitSynchronizedExp(Lgnu/expr/SynchronizedExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/SynchronizedExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/Expression;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindTailCalls;->visitSynchronizedExp(Lgnu/expr/SynchronizedExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected visitTryExp(Lgnu/expr/TryExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/TryExp;
    move-object v2, p2

    .local v2, "returnContinuation":Lgnu/expr/Expression;
    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-nez v6, :cond_0

    move-object v6, v2

    :goto_0
    move-object v3, v6

    .line 342
    .local v3, "tryContinuation":Lgnu/expr/Expression;
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/Expression;

    iput-object v7, v6, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    .line 343
    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    move-object v4, v6

    .line 344
    .local v4, "catch_clause":Lgnu/expr/CatchClause;
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/FindTailCalls;->exitValue:Ljava/lang/Object;

    if-nez v6, :cond_2

    move-object v6, v4

    if-eqz v6, :cond_2

    .line 346
    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-nez v6, :cond_1

    move-object v6, v2

    :goto_2
    move-object v5, v6

    .line 348
    .local v5, "clauseContinuation":Lgnu/expr/Expression;
    move-object v6, v4

    move-object v7, v4

    iget-object v7, v7, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/Expression;

    iput-object v7, v6, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    .line 349
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v6

    move-object v4, v6

    .line 350
    goto :goto_1

    .line 340
    .end local v3    # "tryContinuation":Lgnu/expr/Expression;
    .end local v4    # "catch_clause":Lgnu/expr/CatchClause;
    .end local v5    # "clauseContinuation":Lgnu/expr/Expression;
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    goto :goto_0

    .line 346
    .restart local v3    # "tryContinuation":Lgnu/expr/Expression;
    .restart local v4    # "catch_clause":Lgnu/expr/CatchClause;
    :cond_1
    move-object v6, v4

    iget-object v6, v6, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    goto :goto_2

    .line 351
    :cond_2
    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    move-object v5, v6

    .line 352
    .local v5, "finally_clause":Lgnu/expr/Expression;
    move-object v6, v5

    if-eqz v6, :cond_3

    .line 353
    move-object v6, v1

    move-object v7, v5

    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/Expression;

    iput-object v7, v6, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    .line 354
    :cond_3
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method

.method protected bridge synthetic visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindTailCalls;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/TryExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/Expression;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindTailCalls;->visitTryExp(Lgnu/expr/TryExp;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindTailCalls;
    return-object v0
.end method
