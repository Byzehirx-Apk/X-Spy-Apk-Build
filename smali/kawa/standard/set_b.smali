.class public Lkawa/standard/set_b;
.super Lkawa/lang/Syntax;
.source "set_b.java"


# static fields
.field public static final set:Lkawa/standard/set_b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lkawa/standard/set_b;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/set_b;-><init>()V

    sput-object v0, Lkawa/standard/set_b;->set:Lkawa/standard/set_b;

    .line 15
    sget-object v0, Lkawa/standard/set_b;->set:Lkawa/standard/set_b;

    const-string/jumbo v1, "set!"

    invoke-virtual {v0, v1}, Lkawa/standard/set_b;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lkawa/standard/set_b;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 29

    .prologue
    .line 19
    move-object/from16 v3, p0

    .local v3, "this":Lkawa/standard/set_b;
    move-object/from16 v4, p1

    .local v4, "form":Lgnu/lists/Pair;
    move-object/from16 v5, p2

    .local v5, "tr":Lkawa/lang/Translator;
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v6, v21

    .line 20
    .local v6, "o1":Ljava/lang/Object;
    const/16 v21, 0x0

    move-object/from16 v7, v21

    .line 21
    .local v7, "syntax":Lkawa/lang/SyntaxForm;
    :goto_0
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 23
    move-object/from16 v21, v6

    check-cast v21, Lkawa/lang/SyntaxForm;

    move-object/from16 v7, v21

    .line 24
    move-object/from16 v21, v7

    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v6, v21

    goto :goto_0

    .line 26
    :cond_0
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 27
    move-object/from16 v21, v5

    const-string/jumbo v22, "missing name"

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v3, v21

    .line 89
    .end local v3    # "this":Lkawa/standard/set_b;
    :goto_1
    return-object v3

    .line 28
    .restart local v3    # "this":Lkawa/standard/set_b;
    :cond_1
    move-object/from16 v21, v6

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v8, v21

    .line 29
    .local v8, "p1":Lgnu/lists/Pair;
    move-object/from16 v21, v5

    move-object/from16 v22, v8

    move-object/from16 v23, v7

    invoke-virtual/range {v21 .. v23}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v9, v21

    .line 30
    .local v9, "name":Lgnu/expr/Expression;
    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v10, v21

    .line 31
    .local v10, "o2":Ljava/lang/Object;
    :goto_2
    move-object/from16 v21, v10

    move-object/from16 v0, v21

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 33
    move-object/from16 v21, v10

    check-cast v21, Lkawa/lang/SyntaxForm;

    move-object/from16 v7, v21

    .line 34
    move-object/from16 v21, v7

    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v10, v21

    goto :goto_2

    .line 37
    :cond_2
    move-object/from16 v21, v10

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v21, v10

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v11, v22

    .local v11, "p2":Lgnu/lists/Pair;
    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    sget-object v22, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 39
    .end local v11    # "p2":Lgnu/lists/Pair;
    :cond_3
    move-object/from16 v21, v5

    const-string/jumbo v22, "missing or extra arguments to set!"

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v3, v21

    goto :goto_1

    .line 40
    .restart local v11    # "p2":Lgnu/lists/Pair;
    :cond_4
    move-object/from16 v21, v5

    move-object/from16 v22, v11

    move-object/from16 v23, v7

    invoke-virtual/range {v21 .. v23}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v12, v21

    .line 42
    .local v12, "value":Lgnu/expr/Expression;
    move-object/from16 v21, v9

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 46
    move-object/from16 v21, v9

    check-cast v21, Lgnu/expr/ApplyExp;

    move-object/from16 v13, v21

    .line 47
    .local v13, "aexp":Lgnu/expr/ApplyExp;
    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v14, v21

    .line 48
    .local v14, "args":[Lgnu/expr/Expression;
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v15, v21

    .line 49
    .local v15, "nargs":I
    const/16 v21, 0x0

    move/from16 v16, v21

    .line 50
    .local v16, "skip":I
    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v17, v21

    .line 51
    .local v17, "func":Lgnu/expr/Expression;
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_5

    move-object/from16 v21, v17

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v21, v17

    check-cast v21, Lgnu/expr/ReferenceExp;

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v21

    sget-object v22, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 54
    const/16 v21, 0x1

    move/from16 v16, v21

    .line 55
    add-int/lit8 v15, v15, -0x1

    .line 56
    move-object/from16 v21, v14

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v17, v21

    .line 58
    :cond_5
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const/16 v23, 0x0

    move-object/from16 v24, v17

    aput-object v24, v22, v23

    move-object/from16 v18, v21

    .line 59
    .local v18, "setterArgs":[Lgnu/expr/Expression;
    move/from16 v21, v15

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v19, v21

    .line 60
    .local v19, "xargs":[Lgnu/expr/Expression;
    move-object/from16 v21, v14

    move/from16 v22, v16

    move-object/from16 v23, v19

    const/16 v24, 0x0

    move/from16 v25, v15

    invoke-static/range {v21 .. v25}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    move-object/from16 v21, v19

    move/from16 v22, v15

    move-object/from16 v23, v12

    aput-object v23, v21, v22

    .line 62
    sget-object v21, Lgnu/kawa/functions/CompilationHelpers;->setterDecl:Lgnu/expr/Declaration;

    move-object/from16 v20, v21

    .line 63
    .local v20, "setter":Lgnu/expr/Declaration;
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    new-instance v23, Lgnu/expr/ApplyExp;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    new-instance v25, Lgnu/expr/ReferenceExp;

    move-object/from16 v28, v25

    move-object/from16 v25, v28

    move-object/from16 v26, v28

    move-object/from16 v27, v20

    invoke-direct/range {v26 .. v27}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v26, v18

    invoke-direct/range {v24 .. v26}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v24, v19

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v3, v21

    goto/16 :goto_1

    .line 66
    .end local v13    # "aexp":Lgnu/expr/ApplyExp;
    .end local v14    # "args":[Lgnu/expr/Expression;
    .end local v15    # "nargs":I
    .end local v16    # "skip":I
    .end local v17    # "func":Lgnu/expr/Expression;
    .end local v18    # "setterArgs":[Lgnu/expr/Expression;
    .end local v19    # "xargs":[Lgnu/expr/Expression;
    .end local v20    # "setter":Lgnu/expr/Declaration;
    :cond_6
    move-object/from16 v21, v9

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v21, v0

    if-nez v21, :cond_7

    .line 67
    move-object/from16 v21, v5

    const-string/jumbo v22, "first set! argument is not a variable name"

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v3, v21

    goto/16 :goto_1

    .line 69
    :cond_7
    move-object/from16 v21, v9

    check-cast v21, Lgnu/expr/ReferenceExp;

    move-object/from16 v13, v21

    .line 70
    .local v13, "ref":Lgnu/expr/ReferenceExp;
    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v21

    move-object/from16 v14, v21

    .line 71
    .local v14, "decl":Lgnu/expr/Declaration;
    new-instance v21, Lgnu/expr/SetExp;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v12

    invoke-direct/range {v22 .. v24}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    move-object/from16 v15, v21

    .line 72
    .local v15, "sexp":Lgnu/expr/SetExp;
    move-object/from16 v21, v15

    move-object/from16 v22, v13

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/SetExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 73
    move-object/from16 v21, v14

    if-eqz v21, :cond_a

    .line 75
    move-object/from16 v21, v14

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 76
    move-object/from16 v21, v15

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/SetExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 77
    move-object/from16 v21, v14

    invoke-static/range {v21 .. v21}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v21

    move-object/from16 v14, v21

    .line 78
    move-object/from16 v21, v14

    if-eqz v21, :cond_8

    .line 79
    move-object/from16 v21, v14

    move-object/from16 v22, v12

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 80
    :cond_8
    move-object/from16 v21, v14

    const-wide/16 v22, 0x4000

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 81
    move-object/from16 v21, v5

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "constant variable "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " is set!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v3, v21

    goto/16 :goto_1

    .line 82
    :cond_9
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v21, v0

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/Translator;->mainLambda:Lgnu/expr/ModuleExp;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_a

    move-object/from16 v21, v14

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v21, v14

    const-wide/32 v22, 0x10000000

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v21

    if-nez v21, :cond_a

    move-object/from16 v21, v14

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v21, v0

    const/high16 v22, 0x100000

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ScopeExp;->getFlag(I)Z

    move-result v21

    if-nez v21, :cond_a

    .line 87
    move-object/from16 v21, v5

    const/16 v22, 0x77

    move-object/from16 v23, v14

    const-string/jumbo v24, "imported variable "

    const-string/jumbo v25, " is set!"

    invoke-virtual/range {v21 .. v25}, Lkawa/lang/Translator;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_a
    move-object/from16 v21, v15

    move-object/from16 v3, v21

    goto/16 :goto_1
.end method
