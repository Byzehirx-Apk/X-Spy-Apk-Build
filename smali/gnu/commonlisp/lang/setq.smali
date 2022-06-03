.class public Lgnu/commonlisp/lang/setq;
.super Lkawa/lang/Syntax;
.source "setq.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/setq;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 15

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/setq;
    move-object/from16 v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object/from16 v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    move-object v3, v10

    .line 18
    .local v3, "obj":Ljava/lang/Object;
    const/4 v10, 0x0

    move-object v4, v10

    .line 19
    .local v4, "results":Ljava/util/Vector;
    :goto_0
    move-object v10, v3

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v10, v11, :cond_7

    .line 21
    move-object v10, v3

    instance-of v10, v10, Lgnu/lists/Pair;

    if-nez v10, :cond_0

    .line 22
    move-object v10, v2

    const-string/jumbo v11, "invalid syntax for setq"

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v0, v10

    .line 54
    .end local v0    # "this":Lgnu/commonlisp/lang/setq;
    :goto_1
    return-object v0

    .line 23
    .restart local v0    # "this":Lgnu/commonlisp/lang/setq;
    :cond_0
    move-object v10, v3

    check-cast v10, Lgnu/lists/Pair;

    move-object v5, v10

    .line 24
    .local v5, "pair":Lgnu/lists/Pair;
    move-object v10, v5

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    move-object v6, v10

    .line 26
    .local v6, "sym":Ljava/lang/Object;
    move-object v10, v6

    instance-of v10, v10, Lgnu/mapping/Symbol;

    if-nez v10, :cond_1

    move-object v10, v6

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 27
    :cond_1
    move-object v10, v6

    move-object v7, v10

    .line 32
    :goto_2
    move-object v10, v5

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    move-object v3, v10

    .line 33
    move-object v10, v3

    instance-of v10, v10, Lgnu/lists/Pair;

    if-nez v10, :cond_4

    .line 34
    move-object v10, v2

    const-string/jumbo v11, "wrong number of arguments for setq"

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v0, v10

    goto :goto_1

    .line 28
    :cond_2
    move-object v10, v6

    sget-object v11, Lgnu/commonlisp/lang/CommonLisp;->FALSE:Lgnu/lists/LList;

    if-ne v10, v11, :cond_3

    .line 29
    const-string/jumbo v10, "nil"

    move-object v7, v10

    .local v7, "name":Ljava/lang/String;
    goto :goto_2

    .line 31
    .end local v7    # "name":Ljava/lang/String;
    :cond_3
    move-object v10, v2

    const-string/jumbo v11, "invalid variable name in setq"

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v0, v10

    goto :goto_1

    .line 35
    :cond_4
    move-object v10, v3

    check-cast v10, Lgnu/lists/Pair;

    move-object v5, v10

    .line 36
    move-object v10, v2

    move-object v11, v5

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v8, v10

    .line 37
    .local v8, "value":Lgnu/expr/Expression;
    move-object v10, v5

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    move-object v3, v10

    .line 38
    new-instance v10, Lgnu/expr/SetExp;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v7

    move-object v13, v8

    invoke-direct {v11, v12, v13}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    move-object v9, v10

    .line 39
    .local v9, "sexp":Lgnu/expr/SetExp;
    move-object v10, v9

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lgnu/expr/SetExp;->setFlag(I)V

    .line 40
    move-object v10, v3

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v10, v11, :cond_5

    .line 42
    move-object v10, v9

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgnu/expr/SetExp;->setHasValue(Z)V

    .line 43
    move-object v10, v4

    if-nez v10, :cond_5

    .line 44
    move-object v10, v9

    move-object v0, v10

    goto :goto_1

    .line 46
    :cond_5
    move-object v10, v4

    if-nez v10, :cond_6

    .line 47
    new-instance v10, Ljava/util/Vector;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/16 v12, 0xa

    invoke-direct {v11, v12}, Ljava/util/Vector;-><init>(I)V

    move-object v4, v10

    .line 48
    :cond_6
    move-object v10, v4

    move-object v11, v9

    invoke-virtual {v10, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 49
    goto/16 :goto_0

    .line 50
    .end local v5    # "pair":Lgnu/lists/Pair;
    .end local v6    # "sym":Ljava/lang/Object;
    .end local v8    # "value":Lgnu/expr/Expression;
    .end local v9    # "sexp":Lgnu/expr/SetExp;
    :cond_7
    move-object v10, v4

    if-nez v10, :cond_8

    .line 51
    sget-object v10, Lgnu/commonlisp/lang/CommonLisp;->nilExpr:Lgnu/expr/Expression;

    move-object v0, v10

    goto/16 :goto_1

    .line 52
    :cond_8
    move-object v10, v4

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    new-array v10, v10, [Lgnu/expr/Expression;

    move-object v5, v10

    .line 53
    .local v5, "stmts":[Lgnu/expr/Expression;
    move-object v10, v4

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 54
    new-instance v10, Lgnu/expr/BeginExp;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v5

    invoke-direct {v11, v12}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    move-object v0, v10

    goto/16 :goto_1
.end method
