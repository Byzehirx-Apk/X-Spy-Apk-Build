.class public Lkawa/standard/try_catch;
.super Ljava/lang/Object;
.source "try_catch.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lkawa/standard/try_catch;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rewrite(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 16

    .prologue
    .line 14
    move-object/from16 v0, p0

    .local v0, "try_part":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "clauses":Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v11

    check-cast v11, Lkawa/lang/Translator;

    move-object v2, v11

    .line 15
    .local v2, "tr":Lkawa/lang/Translator;
    move-object v11, v2

    move-object v12, v0

    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v3, v11

    .line 16
    .local v3, "try_part_exp":Lgnu/expr/Expression;
    const/4 v11, 0x0

    move-object v4, v11

    .line 17
    .local v4, "prev":Lgnu/expr/CatchClause;
    const/4 v11, 0x0

    move-object v5, v11

    .line 18
    .local v5, "chain":Lgnu/expr/CatchClause;
    move-object v11, v1

    check-cast v11, Lgnu/lists/FVector;

    move-object v6, v11

    .line 19
    .local v6, "vec":Lgnu/lists/FVector;
    move-object v11, v6

    invoke-virtual {v11}, Lgnu/lists/FVector;->size()I

    move-result v11

    move v7, v11

    .line 20
    .local v7, "n":I
    const/4 v11, 0x0

    move v8, v11

    .local v8, "i":I
    :goto_0
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_3

    .line 22
    sget-object v11, Lkawa/standard/SchemeCompilation;->lambda:Lkawa/lang/Lambda;

    move-object v12, v6

    move v13, v8

    invoke-virtual {v12, v13}, Lgnu/lists/FVector;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lkawa/lang/Lambda;->rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v9, v11

    .line 23
    .local v9, "cl":Lgnu/expr/Expression;
    move-object v11, v9

    instance-of v11, v11, Lgnu/expr/ErrorExp;

    if-eqz v11, :cond_0

    .line 24
    move-object v11, v9

    move-object v0, v11

    .line 38
    .end local v0    # "try_part":Ljava/lang/Object;
    .end local v8    # "i":I
    .end local v9    # "cl":Lgnu/expr/Expression;
    :goto_1
    return-object v0

    .line 25
    .restart local v0    # "try_part":Ljava/lang/Object;
    .restart local v8    # "i":I
    .restart local v9    # "cl":Lgnu/expr/Expression;
    :cond_0
    move-object v11, v9

    instance-of v11, v11, Lgnu/expr/LambdaExp;

    if-nez v11, :cond_1

    .line 26
    move-object v11, v2

    const-string/jumbo v12, "internal error with try-catch"

    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v0, v11

    goto :goto_1

    .line 27
    :cond_1
    new-instance v11, Lgnu/expr/CatchClause;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v9

    check-cast v13, Lgnu/expr/LambdaExp;

    invoke-direct {v12, v13}, Lgnu/expr/CatchClause;-><init>(Lgnu/expr/LambdaExp;)V

    move-object v10, v11

    .line 28
    .local v10, "ccl":Lgnu/expr/CatchClause;
    move-object v11, v4

    if-nez v11, :cond_2

    .line 29
    move-object v11, v10

    move-object v5, v11

    .line 32
    :goto_2
    move-object v11, v10

    move-object v4, v11

    .line 20
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 31
    :cond_2
    move-object v11, v4

    move-object v12, v10

    invoke-virtual {v11, v12}, Lgnu/expr/CatchClause;->setNext(Lgnu/expr/CatchClause;)V

    goto :goto_2

    .line 34
    .end local v9    # "cl":Lgnu/expr/Expression;
    .end local v10    # "ccl":Lgnu/expr/CatchClause;
    :cond_3
    move-object v11, v3

    instance-of v11, v11, Lgnu/expr/ErrorExp;

    if-eqz v11, :cond_4

    .line 35
    move-object v11, v3

    move-object v0, v11

    goto :goto_1

    .line 36
    :cond_4
    new-instance v11, Lgnu/expr/TryExp;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v3

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lgnu/expr/TryExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v8, v11

    .line 37
    .local v8, "texp":Lgnu/expr/TryExp;
    move-object v11, v8

    move-object v12, v5

    invoke-virtual {v11, v12}, Lgnu/expr/TryExp;->setCatchClauses(Lgnu/expr/CatchClause;)V

    .line 38
    move-object v11, v8

    move-object v0, v11

    goto :goto_1
.end method
