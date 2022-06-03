.class public Lgnu/commonlisp/lang/defvar;
.super Lkawa/lang/Syntax;
.source "defvar.java"


# instance fields
.field force:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/defvar;
    move v1, p1

    .local v1, "force":Z
    move-object v2, v0

    invoke-direct {v2}, Lkawa/lang/Syntax;-><init>()V

    .line 14
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lgnu/commonlisp/lang/defvar;->force:Z

    .line 15
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 14

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/defvar;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object/from16 v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    move-object v3, v9

    .line 50
    .local v3, "obj":Ljava/lang/Object;
    const/4 v9, 0x0

    move-object v4, v9

    .line 51
    .local v4, "name":Ljava/lang/Object;
    const/4 v9, 0x0

    move-object v5, v9

    .line 52
    .local v5, "value":Lgnu/expr/Expression;
    const/4 v9, 0x0

    move-object v6, v9

    .line 54
    .local v6, "decl":Lgnu/expr/Declaration;
    move-object v9, v3

    instance-of v9, v9, Lgnu/lists/Pair;

    if-eqz v9, :cond_0

    .line 56
    move-object v9, v3

    check-cast v9, Lgnu/lists/Pair;

    move-object v7, v9

    .line 57
    .local v7, "p1":Lgnu/lists/Pair;
    move-object v9, v7

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lgnu/expr/Declaration;

    if-eqz v9, :cond_0

    .line 59
    move-object v9, v7

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/expr/Declaration;

    move-object v6, v9

    .line 60
    move-object v9, v6

    invoke-virtual {v9}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    .line 61
    move-object v9, v7

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lgnu/lists/Pair;

    if-eqz v9, :cond_1

    .line 63
    move-object v9, v7

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/lists/Pair;

    move-object v8, v9

    .line 64
    .local v8, "p2":Lgnu/lists/Pair;
    move-object v9, v2

    move-object v10, v8

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v9

    move-object v5, v9

    .line 65
    move-object v9, v8

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v9, v10, :cond_0

    .line 69
    .line 74
    .end local v4    # "name":Ljava/lang/Object;
    .end local v7    # "p1":Lgnu/lists/Pair;
    .end local v8    # "p2":Lgnu/lists/Pair;
    :cond_0
    :goto_0
    move-object v9, v4

    if-nez v9, :cond_2

    .line 75
    move-object v9, v2

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "invalid syntax for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v11}, Lgnu/commonlisp/lang/defvar;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    move-object v0, v9

    .line 95
    .end local v0    # "this":Lgnu/commonlisp/lang/defvar;
    :goto_1
    return-object v0

    .line 70
    .restart local v0    # "this":Lgnu/commonlisp/lang/defvar;
    .restart local v4    # "name":Ljava/lang/Object;
    .restart local v7    # "p1":Lgnu/lists/Pair;
    :cond_1
    move-object v9, v7

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v9, v10, :cond_0

    .line 71
    const/4 v9, 0x0

    move-object v4, v9

    goto :goto_0

    .line 76
    .end local v4    # "name":Ljava/lang/Object;
    .end local v7    # "p1":Lgnu/lists/Pair;
    :cond_2
    move-object v9, v5

    if-nez v9, :cond_3

    .line 78
    move-object v9, v0

    iget-boolean v9, v9, Lgnu/commonlisp/lang/defvar;->force:Z

    if-eqz v9, :cond_7

    .line 79
    sget-object v9, Lgnu/commonlisp/lang/CommonLisp;->nilExpr:Lgnu/expr/Expression;

    move-object v5, v9

    .line 83
    :cond_3
    new-instance v9, Lgnu/expr/SetExp;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v4

    move-object v12, v5

    invoke-direct {v10, v11, v12}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    move-object v7, v9

    .line 84
    .local v7, "sexp":Lgnu/expr/SetExp;
    move-object v9, v0

    iget-boolean v9, v9, Lgnu/commonlisp/lang/defvar;->force:Z

    if-nez v9, :cond_4

    .line 85
    move-object v9, v7

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lgnu/expr/SetExp;->setSetIfUnbound(Z)V

    .line 86
    :cond_4
    move-object v9, v7

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 87
    move-object v9, v6

    if-eqz v9, :cond_6

    .line 89
    move-object v9, v7

    move-object v10, v6

    invoke-virtual {v9, v10}, Lgnu/expr/SetExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 90
    move-object v9, v6

    iget-object v9, v9, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v9, v9, Lgnu/expr/ModuleExp;

    if-eqz v9, :cond_5

    move-object v9, v6

    invoke-virtual {v9}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 92
    const/4 v9, 0x0

    move-object v5, v9

    .line 93
    :cond_5
    move-object v9, v6

    move-object v10, v5

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 95
    :cond_6
    move-object v9, v7

    move-object v0, v9

    goto :goto_1

    .line 81
    .end local v7    # "sexp":Lgnu/expr/SetExp;
    :cond_7
    new-instance v9, Lgnu/expr/QuoteExp;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v4

    invoke-direct {v10, v11}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v9

    goto :goto_1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 15

    .prologue
    .line 20
    move-object v1, p0

    .local v1, "this":Lgnu/commonlisp/lang/defvar;
    move-object/from16 v2, p1

    .local v2, "st":Lgnu/lists/Pair;
    move-object/from16 v3, p2

    .local v3, "forms":Ljava/util/Vector;
    move-object/from16 v4, p3

    .local v4, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v5, p4

    .local v5, "tr":Lkawa/lang/Translator;
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lgnu/lists/Pair;

    if-nez v9, :cond_0

    .line 21
    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-super {v9, v10, v11, v12, v13}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v9

    move v1, v9

    .line 44
    .end local v1    # "this":Lgnu/commonlisp/lang/defvar;
    :goto_0
    return v1

    .line 22
    .restart local v1    # "this":Lgnu/commonlisp/lang/defvar;
    :cond_0
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/lists/Pair;

    move-object v6, v9

    .line 23
    .local v6, "p":Lgnu/lists/Pair;
    move-object v9, v6

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .line 24
    .local v7, "name":Ljava/lang/Object;
    move-object v9, v7

    instance-of v9, v9, Ljava/lang/String;

    if-nez v9, :cond_1

    move-object v9, v7

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_2

    .line 26
    :cond_1
    move-object v9, v4

    move-object v10, v7

    invoke-virtual {v9, v10}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v9

    move-object v8, v9

    .line 27
    .local v8, "decl":Lgnu/expr/Declaration;
    move-object v9, v8

    if-nez v9, :cond_3

    .line 29
    new-instance v9, Lgnu/expr/Declaration;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v7

    invoke-direct {v10, v11}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object v8, v9

    .line 30
    move-object v9, v8

    const-wide/32 v10, 0x10000000

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 31
    move-object v9, v4

    move-object v10, v8

    invoke-virtual {v9, v10}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 35
    :goto_1
    move-object v9, v6

    move-object v10, v8

    move-object v11, v6

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    move-object v6, v9

    .line 36
    move-object v9, v2

    move-object v10, v1

    move-object v11, v6

    invoke-static {v9, v10, v11}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    move-object v2, v9

    .line 37
    move-object v9, v4

    instance-of v9, v9, Lgnu/expr/ModuleExp;

    if-eqz v9, :cond_2

    .line 39
    move-object v9, v8

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 40
    move-object v9, v8

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 43
    .end local v8    # "decl":Lgnu/expr/Declaration;
    :cond_2
    move-object v9, v3

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 44
    const/4 v9, 0x1

    move v1, v9

    goto :goto_0

    .line 34
    .restart local v8    # "decl":Lgnu/expr/Declaration;
    :cond_3
    move-object v9, v5

    const/16 v10, 0x77

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "duplicate declaration for `"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_1
.end method
