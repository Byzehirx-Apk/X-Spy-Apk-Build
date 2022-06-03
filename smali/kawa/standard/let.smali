.class public Lkawa/standard/let;
.super Lkawa/lang/Syntax;
.source "let.java"


# static fields
.field public static final let:Lkawa/standard/let;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Lkawa/standard/let;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/let;-><init>()V

    sput-object v0, Lkawa/standard/let;->let:Lkawa/standard/let;

    .line 18
    sget-object v0, Lkawa/standard/let;->let:Lkawa/standard/let;

    const-string/jumbo v1, "let"

    invoke-virtual {v0, v1}, Lkawa/standard/let;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lkawa/standard/let;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 31

    .prologue
    .line 22
    move-object/from16 v3, p0

    .local v3, "this":Lkawa/standard/let;
    move-object/from16 v4, p1

    .local v4, "obj":Ljava/lang/Object;
    move-object/from16 v5, p2

    .local v5, "tr":Lkawa/lang/Translator;
    move-object/from16 v25, v4

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 23
    move-object/from16 v25, v5

    const-string/jumbo v26, "missing let arguments"

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v3, v25

    .line 136
    .end local v3    # "this":Lkawa/standard/let;
    :goto_0
    return-object v3

    .line 24
    .restart local v3    # "this":Lkawa/standard/let;
    :cond_0
    move-object/from16 v25, v4

    check-cast v25, Lgnu/lists/Pair;

    move-object/from16 v6, v25

    .line 25
    .local v6, "pair":Lgnu/lists/Pair;
    move-object/from16 v25, v6

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v7, v25

    .line 26
    .local v7, "bindings":Ljava/lang/Object;
    move-object/from16 v25, v6

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v8, v25

    .line 27
    .local v8, "body":Ljava/lang/Object;
    move-object/from16 v25, v7

    invoke-static/range {v25 .. v25}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v25

    move/from16 v9, v25

    .line 28
    .local v9, "decl_count":I
    move/from16 v25, v9

    if-gez v25, :cond_1

    .line 29
    move-object/from16 v25, v5

    const-string/jumbo v26, "bindings not a proper list"

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v3, v25

    goto :goto_0

    .line 31
    :cond_1
    move/from16 v25, v9

    move/from16 v0, v25

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v25, v0

    move-object/from16 v10, v25

    .line 32
    .local v10, "inits":[Lgnu/expr/Expression;
    new-instance v25, Lgnu/expr/LetExp;

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    move-object/from16 v27, v10

    invoke-direct/range {v26 .. v27}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object/from16 v11, v25

    .line 33
    .local v11, "let":Lgnu/expr/LetExp;
    const/16 v25, 0x0

    move-object/from16 v12, v25

    .line 34
    .local v12, "renamedAliases":Ljava/util/Stack;
    const/16 v25, 0x0

    move/from16 v13, v25

    .line 35
    .local v13, "renamedAliasesCount":I
    const/16 v25, 0x0

    move-object/from16 v14, v25

    .line 36
    .local v14, "syntaxRest":Lkawa/lang/SyntaxForm;
    const/16 v25, 0x0

    move/from16 v15, v25

    .local v15, "i":I
    :goto_1
    move/from16 v25, v15

    move/from16 v26, v9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_13

    .line 38
    :goto_2
    move-object/from16 v25, v7

    move-object/from16 v0, v25

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 40
    move-object/from16 v25, v7

    check-cast v25, Lkawa/lang/SyntaxForm;

    move-object/from16 v14, v25

    .line 41
    move-object/from16 v25, v14

    invoke-interface/range {v25 .. v25}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v7, v25

    goto :goto_2

    .line 45
    :cond_2
    move-object/from16 v25, v7

    check-cast v25, Lgnu/lists/Pair;

    move-object/from16 v16, v25

    .line 46
    .local v16, "bind_pair":Lgnu/lists/Pair;
    move-object/from16 v25, v16

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v17, v25

    .line 47
    .local v17, "bind_pair_car":Ljava/lang/Object;
    move-object/from16 v25, v14

    move-object/from16 v18, v25

    .line 48
    .local v18, "syntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v25, v17

    move-object/from16 v0, v25

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v25, v0

    if-eqz v25, :cond_3

    .line 50
    move-object/from16 v25, v17

    check-cast v25, Lkawa/lang/SyntaxForm;

    move-object/from16 v18, v25

    .line 51
    move-object/from16 v25, v18

    invoke-interface/range {v25 .. v25}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v17, v25

    .line 53
    :cond_3
    move-object/from16 v25, v17

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v25, v0

    if-nez v25, :cond_4

    .line 54
    move-object/from16 v25, v5

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "let binding is not a pair:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v3, v25

    goto/16 :goto_0

    .line 55
    :cond_4
    move-object/from16 v25, v17

    check-cast v25, Lgnu/lists/Pair;

    move-object/from16 v19, v25

    .line 56
    .local v19, "binding":Lgnu/lists/Pair;
    move-object/from16 v25, v19

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v20, v25

    .line 58
    .local v20, "name":Ljava/lang/Object;
    move-object/from16 v25, v20

    move-object/from16 v0, v25

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 60
    move-object/from16 v25, v20

    check-cast v25, Lkawa/lang/SyntaxForm;

    move-object/from16 v22, v25

    .line 61
    .local v22, "sf":Lkawa/lang/SyntaxForm;
    move-object/from16 v25, v22

    invoke-interface/range {v25 .. v25}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v20, v25

    .line 62
    move-object/from16 v25, v22

    invoke-interface/range {v25 .. v25}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v25

    move-object/from16 v21, v25

    .line 66
    .end local v22    # "sf":Lkawa/lang/SyntaxForm;
    .local v21, "templateScope":Lkawa/lang/TemplateScope;
    :goto_3
    move-object/from16 v25, v5

    move-object/from16 v26, v20

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v20, v25

    .line 67
    move-object/from16 v25, v20

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v25, v0

    if-nez v25, :cond_7

    .line 68
    move-object/from16 v25, v5

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "variable "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " in let binding is not a symbol: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v4

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v3, v25

    goto/16 :goto_0

    .line 65
    .end local v21    # "templateScope":Lkawa/lang/TemplateScope;
    :cond_5
    move-object/from16 v25, v18

    if-nez v25, :cond_6

    const/16 v25, 0x0

    :goto_4
    move-object/from16 v21, v25

    .restart local v21    # "templateScope":Lkawa/lang/TemplateScope;
    goto :goto_3

    .end local v21    # "templateScope":Lkawa/lang/TemplateScope;
    :cond_6
    move-object/from16 v25, v18

    invoke-interface/range {v25 .. v25}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v25

    goto :goto_4

    .line 70
    .restart local v21    # "templateScope":Lkawa/lang/TemplateScope;
    :cond_7
    move-object/from16 v25, v11

    move-object/from16 v26, v20

    invoke-virtual/range {v25 .. v26}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v25

    move-object/from16 v22, v25

    .line 71
    .local v22, "decl":Lgnu/expr/Declaration;
    move-object/from16 v25, v22

    const-wide/32 v26, 0x40000

    invoke-virtual/range {v25 .. v27}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 72
    move-object/from16 v25, v21

    if-eqz v25, :cond_9

    .line 74
    move-object/from16 v25, v5

    move-object/from16 v26, v22

    move-object/from16 v27, v21

    invoke-virtual/range {v25 .. v27}, Lkawa/lang/Translator;->makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v25

    move-object/from16 v23, v25

    .line 75
    .local v23, "alias":Lgnu/expr/Declaration;
    move-object/from16 v25, v12

    if-nez v25, :cond_8

    .line 76
    new-instance v25, Ljava/util/Stack;

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    invoke-direct/range {v26 .. v26}, Ljava/util/Stack;-><init>()V

    move-object/from16 v12, v25

    .line 77
    :cond_8
    move-object/from16 v25, v12

    move-object/from16 v26, v23

    invoke-virtual/range {v25 .. v26}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .line 78
    add-int/lit8 v13, v13, 0x1

    .line 81
    .end local v23    # "alias":Lgnu/expr/Declaration;
    :cond_9
    move-object/from16 v25, v19

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v23, v25

    .line 82
    .local v23, "binding_cdr":Ljava/lang/Object;
    :goto_5
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v25, v0

    if-eqz v25, :cond_a

    .line 84
    move-object/from16 v25, v23

    check-cast v25, Lkawa/lang/SyntaxForm;

    move-object/from16 v18, v25

    .line 85
    move-object/from16 v25, v18

    invoke-interface/range {v25 .. v25}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v23, v25

    goto :goto_5

    .line 87
    :cond_a
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v25, v0

    if-nez v25, :cond_b

    .line 88
    move-object/from16 v25, v5

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "let has no value for \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v3, v25

    goto/16 :goto_0

    .line 89
    :cond_b
    move-object/from16 v25, v23

    check-cast v25, Lgnu/lists/Pair;

    move-object/from16 v19, v25

    .line 90
    move-object/from16 v25, v19

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v23, v25

    .line 92
    :goto_6
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 94
    move-object/from16 v25, v23

    check-cast v25, Lkawa/lang/SyntaxForm;

    move-object/from16 v18, v25

    .line 95
    move-object/from16 v25, v18

    invoke-interface/range {v25 .. v25}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v23, v25

    goto :goto_6

    .line 97
    :cond_c
    move-object/from16 v25, v5

    move-object/from16 v26, v19

    invoke-virtual/range {v26 .. v26}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v26

    const-string/jumbo v27, "::"

    invoke-virtual/range {v25 .. v27}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 99
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v25, v0

    if-eqz v25, :cond_d

    move-object/from16 v25, v23

    check-cast v25, Lgnu/lists/Pair;

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    move-object/from16 v19, v26

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    sget-object v26, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 101
    :cond_d
    move-object/from16 v25, v5

    const-string/jumbo v26, "missing type after \'::\' in let"

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v3, v25

    goto/16 :goto_0

    .line 102
    :cond_e
    move-object/from16 v25, v19

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v23, v25

    .line 103
    :goto_7
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 105
    move-object/from16 v25, v23

    check-cast v25, Lkawa/lang/SyntaxForm;

    move-object/from16 v18, v25

    .line 106
    move-object/from16 v25, v18

    invoke-interface/range {v25 .. v25}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v23, v25

    goto :goto_7

    .line 109
    :cond_f
    move-object/from16 v25, v23

    sget-object v26, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 111
    move-object/from16 v25, v19

    move-object/from16 v24, v25

    .line 121
    .local v24, "init":Lgnu/lists/Pair;
    :goto_8
    move-object/from16 v25, v10

    move/from16 v26, v15

    move-object/from16 v27, v5

    move-object/from16 v28, v24

    move-object/from16 v29, v18

    invoke-virtual/range {v27 .. v29}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v27

    aput-object v27, v25, v26

    .line 122
    move-object/from16 v25, v24

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    sget-object v26, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_12

    .line 123
    move-object/from16 v25, v5

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "junk after declaration of "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v3, v25

    goto/16 :goto_0

    .line 113
    .end local v24    # "init":Lgnu/lists/Pair;
    :cond_10
    move-object/from16 v25, v23

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v25, v0

    if-eqz v25, :cond_11

    .line 115
    move-object/from16 v25, v22

    move-object/from16 v26, v5

    move-object/from16 v27, v19

    invoke-virtual/range {v26 .. v27}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 116
    move-object/from16 v25, v22

    const-wide/16 v26, 0x2000

    invoke-virtual/range {v25 .. v27}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 117
    move-object/from16 v25, v23

    check-cast v25, Lgnu/lists/Pair;

    move-object/from16 v24, v25

    .restart local v24    # "init":Lgnu/lists/Pair;
    goto :goto_8

    .line 120
    .end local v24    # "init":Lgnu/lists/Pair;
    :cond_11
    move-object/from16 v25, v5

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "let binding for \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\' is improper list"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v3, v25

    goto/16 :goto_0

    .line 124
    .restart local v24    # "init":Lgnu/lists/Pair;
    :cond_12
    move-object/from16 v25, v22

    move-object/from16 v26, v10

    move/from16 v27, v15

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 125
    move-object/from16 v25, v16

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v7, v25

    .line 36
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 128
    .end local v16    # "bind_pair":Lgnu/lists/Pair;
    .end local v17    # "bind_pair_car":Ljava/lang/Object;
    .end local v18    # "syntax":Lkawa/lang/SyntaxForm;
    .end local v19    # "binding":Lgnu/lists/Pair;
    .end local v20    # "name":Ljava/lang/Object;
    .end local v21    # "templateScope":Lkawa/lang/TemplateScope;
    .end local v22    # "decl":Lgnu/expr/Declaration;
    .end local v23    # "binding_cdr":Ljava/lang/Object;
    .end local v24    # "init":Lgnu/lists/Pair;
    :cond_13
    move/from16 v25, v13

    move/from16 v15, v25

    :goto_9
    add-int/lit8 v15, v15, -0x1

    move/from16 v25, v15

    if-ltz v25, :cond_14

    .line 129
    move-object/from16 v25, v5

    move-object/from16 v26, v12

    invoke-virtual/range {v26 .. v26}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lgnu/expr/Declaration;

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->pushRenamedAlias(Lgnu/expr/Declaration;)V

    goto :goto_9

    .line 131
    :cond_14
    move-object/from16 v25, v5

    move-object/from16 v26, v11

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 132
    move-object/from16 v25, v11

    move-object/from16 v26, v5

    move-object/from16 v27, v8

    invoke-virtual/range {v26 .. v27}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 133
    move-object/from16 v25, v5

    move-object/from16 v26, v11

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 134
    move-object/from16 v25, v5

    move/from16 v26, v13

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->popRenamedAlias(I)V

    .line 136
    move-object/from16 v25, v11

    move-object/from16 v3, v25

    goto/16 :goto_0
.end method
