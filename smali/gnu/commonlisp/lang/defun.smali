.class public Lgnu/commonlisp/lang/defun;
.super Lkawa/lang/Syntax;
.source "defun.java"


# instance fields
.field lambdaSyntax:Lkawa/lang/Lambda;


# direct methods
.method public constructor <init>(Lkawa/lang/Lambda;)V
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/defun;
    move-object v1, p1

    .local v1, "lambdaSyntax":Lkawa/lang/Lambda;
    move-object v2, v0

    invoke-direct {v2}, Lkawa/lang/Syntax;-><init>()V

    .line 18
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/commonlisp/lang/defun;->lambdaSyntax:Lkawa/lang/Lambda;

    .line 19
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 19

    .prologue
    .line 49
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/defun;
    move-object/from16 v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object/from16 v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v12, v1

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    move-object v3, v12

    .line 50
    .local v3, "obj":Ljava/lang/Object;
    const/4 v12, 0x0

    move-object v4, v12

    .line 51
    .local v4, "name":Ljava/lang/Object;
    const/4 v12, 0x0

    move-object v5, v12

    .line 52
    .local v5, "value":Lgnu/expr/Expression;
    const/4 v12, 0x0

    move-object v6, v12

    .line 54
    .local v6, "decl":Lgnu/expr/Declaration;
    move-object v12, v3

    instance-of v12, v12, Lgnu/lists/Pair;

    if-eqz v12, :cond_6

    .line 56
    move-object v12, v3

    check-cast v12, Lgnu/lists/Pair;

    move-object v7, v12

    .line 57
    .local v7, "p1":Lgnu/lists/Pair;
    move-object v12, v7

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    .line 59
    .local v8, "p1_car":Ljava/lang/Object;
    move-object v12, v8

    instance-of v12, v12, Lgnu/mapping/Symbol;

    if-nez v12, :cond_0

    move-object v12, v8

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 61
    :cond_0
    move-object v12, v8

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 68
    .end local v4    # "name":Ljava/lang/Object;
    :cond_1
    :goto_0
    move-object v12, v4

    if-eqz v12, :cond_6

    move-object v12, v7

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lgnu/lists/Pair;

    if-eqz v12, :cond_6

    .line 70
    move-object v12, v7

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/lists/Pair;

    move-object v9, v12

    .line 71
    .local v9, "p2":Lgnu/lists/Pair;
    new-instance v12, Lgnu/expr/LambdaExp;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Lgnu/expr/LambdaExp;-><init>()V

    move-object v10, v12

    .line 72
    .local v10, "lexp":Lgnu/expr/LambdaExp;
    move-object v12, v0

    iget-object v12, v12, Lgnu/commonlisp/lang/defun;->lambdaSyntax:Lkawa/lang/Lambda;

    move-object v13, v10

    move-object v14, v9

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v9

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v2

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Lkawa/lang/Lambda;->rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 73
    move-object v12, v10

    move-object v13, v4

    invoke-virtual {v12, v13}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 74
    move-object v12, v9

    instance-of v12, v12, Lgnu/lists/PairWithPosition;

    if-eqz v12, :cond_2

    .line 75
    move-object v12, v10

    move-object v13, v9

    check-cast v13, Lgnu/lists/PairWithPosition;

    invoke-virtual {v12, v13}, Lgnu/expr/LambdaExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 76
    :cond_2
    move-object v12, v10

    move-object v5, v12

    .line 77
    new-instance v12, Lgnu/expr/SetExp;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v4

    move-object v15, v5

    invoke-direct {v13, v14, v15}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    move-object v11, v12

    .line 78
    .local v11, "sexp":Lgnu/expr/SetExp;
    move-object v12, v11

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 79
    move-object v12, v11

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/expr/SetExp;->setFuncDef(Z)V

    .line 80
    move-object v12, v6

    if-eqz v12, :cond_4

    .line 82
    move-object v12, v11

    move-object v13, v6

    invoke-virtual {v12, v13}, Lgnu/expr/SetExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 83
    move-object v12, v6

    iget-object v12, v12, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v12, v12, Lgnu/expr/ModuleExp;

    if-eqz v12, :cond_3

    move-object v12, v6

    invoke-virtual {v12}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 84
    const/4 v12, 0x0

    move-object v5, v12

    .line 85
    :cond_3
    move-object v12, v6

    move-object v13, v5

    invoke-virtual {v12, v13}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 87
    :cond_4
    move-object v12, v11

    move-object v0, v12

    .line 90
    .end local v0    # "this":Lgnu/commonlisp/lang/defun;
    .end local v7    # "p1":Lgnu/lists/Pair;
    .end local v8    # "p1_car":Ljava/lang/Object;
    .end local v9    # "p2":Lgnu/lists/Pair;
    .end local v10    # "lexp":Lgnu/expr/LambdaExp;
    .end local v11    # "sexp":Lgnu/expr/SetExp;
    :goto_1
    return-object v0

    .line 63
    .restart local v0    # "this":Lgnu/commonlisp/lang/defun;
    .restart local v4    # "name":Ljava/lang/Object;
    .restart local v7    # "p1":Lgnu/lists/Pair;
    .restart local v8    # "p1_car":Ljava/lang/Object;
    :cond_5
    move-object v12, v8

    instance-of v12, v12, Lgnu/expr/Declaration;

    if-eqz v12, :cond_1

    .line 65
    move-object v12, v8

    check-cast v12, Lgnu/expr/Declaration;

    move-object v6, v12

    .line 66
    move-object v12, v6

    invoke-virtual {v12}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v12

    move-object v4, v12

    goto/16 :goto_0

    .line 90
    .end local v4    # "name":Ljava/lang/Object;
    .end local v7    # "p1":Lgnu/lists/Pair;
    .end local v8    # "p1_car":Ljava/lang/Object;
    :cond_6
    move-object v12, v2

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "invalid syntax for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v0

    invoke-virtual {v14}, Lgnu/commonlisp/lang/defun;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v12

    move-object v0, v12

    goto :goto_1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 14

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/defun;
    move-object v1, p1

    .local v1, "st":Lgnu/lists/Pair;
    move-object/from16 v2, p2

    .local v2, "forms":Ljava/util/Vector;
    move-object/from16 v3, p3

    .local v3, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v4, p4

    .local v4, "tr":Lkawa/lang/Translator;
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lgnu/lists/Pair;

    if-eqz v8, :cond_0

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/Pair;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v5, v9

    .local v5, "p":Lgnu/lists/Pair;
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-nez v8, :cond_1

    move-object v8, v5

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lgnu/mapping/Symbol;

    if-nez v8, :cond_1

    .line 28
    .end local v5    # "p":Lgnu/lists/Pair;
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-super {v8, v9, v10, v11, v12}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v8

    move v0, v8

    .line 44
    .end local v0    # "this":Lgnu/commonlisp/lang/defun;
    :goto_0
    return v0

    .line 29
    .restart local v0    # "this":Lgnu/commonlisp/lang/defun;
    .restart local v5    # "p":Lgnu/lists/Pair;
    :cond_1
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 30
    .local v6, "sym":Ljava/lang/Object;
    move-object v8, v3

    move-object v9, v6

    invoke-virtual {v8, v9}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v8

    move-object v7, v8

    .line 31
    .local v7, "decl":Lgnu/expr/Declaration;
    move-object v8, v7

    if-nez v8, :cond_3

    .line 33
    new-instance v8, Lgnu/expr/Declaration;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v6

    invoke-direct {v9, v10}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object v7, v8

    .line 34
    move-object v8, v7

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 35
    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v8, v9}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 40
    :goto_1
    move-object v8, v3

    instance-of v8, v8, Lgnu/expr/ModuleExp;

    if-eqz v8, :cond_2

    .line 41
    move-object v8, v7

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 42
    :cond_2
    move-object v8, v1

    move-object v9, v0

    move-object v10, v5

    move-object v11, v7

    move-object v12, v5

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    move-object v1, v8

    .line 43
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 44
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 38
    :cond_3
    move-object v8, v4

    const/16 v9, 0x77

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "duplicate declaration for `"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_1
.end method
