.class public Lkawa/standard/let_syntax;
.super Lkawa/lang/Syntax;
.source "let_syntax.java"


# static fields
.field public static final let_syntax:Lkawa/standard/let_syntax;

.field public static final letrec_syntax:Lkawa/standard/let_syntax;


# instance fields
.field recursive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 13
    new-instance v0, Lkawa/standard/let_syntax;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "let-syntax"

    invoke-direct {v1, v2, v3}, Lkawa/standard/let_syntax;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lkawa/standard/let_syntax;->let_syntax:Lkawa/standard/let_syntax;

    .line 15
    new-instance v0, Lkawa/standard/let_syntax;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "letrec-syntax"

    invoke-direct {v1, v2, v3}, Lkawa/standard/let_syntax;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lkawa/standard/let_syntax;->letrec_syntax:Lkawa/standard/let_syntax;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 5

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lkawa/standard/let_syntax;
    move v1, p1

    .local v1, "recursive":Z
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 23
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lkawa/standard/let_syntax;->recursive:Z

    .line 24
    return-void
.end method

.method private push(Lgnu/expr/LetExp;Lkawa/lang/Translator;Ljava/util/Stack;)V
    .locals 7

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lkawa/standard/let_syntax;
    move-object v1, p1

    .local v1, "let":Lgnu/expr/LetExp;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v3, p3

    .local v3, "renamedAliases":Ljava/util/Stack;
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 135
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 136
    move-object v5, v3

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    move v4, v5

    .local v4, "i":I
    :goto_0
    add-int/lit8 v4, v4, -0x1

    move v5, v4

    if-ltz v5, :cond_0

    .line 137
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/Declaration;

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->pushRenamedAlias(Lgnu/expr/Declaration;)V

    goto :goto_0

    .line 138
    .end local v4    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 35

    .prologue
    .line 28
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/standard/let_syntax;
    move-object/from16 v3, p1

    .local v3, "obj":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "tr":Lkawa/lang/Translator;
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v30, v0

    if-nez v30, :cond_0

    .line 29
    move-object/from16 v30, v4

    const-string/jumbo v31, "missing let-syntax arguments"

    invoke-virtual/range {v30 .. v31}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v30

    move-object/from16 v2, v30

    .line 129
    .end local v2    # "this":Lkawa/standard/let_syntax;
    :goto_0
    return-object v2

    .line 30
    .restart local v2    # "this":Lkawa/standard/let_syntax;
    :cond_0
    move-object/from16 v30, v3

    check-cast v30, Lgnu/lists/Pair;

    move-object/from16 v5, v30

    .line 31
    .local v5, "pair":Lgnu/lists/Pair;
    move-object/from16 v30, v5

    invoke-virtual/range {v30 .. v30}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v6, v30

    .line 32
    .local v6, "bindings":Ljava/lang/Object;
    move-object/from16 v30, v5

    invoke-virtual/range {v30 .. v30}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v7, v30

    .line 33
    .local v7, "body":Ljava/lang/Object;
    move-object/from16 v30, v6

    invoke-static/range {v30 .. v30}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v30

    move/from16 v8, v30

    .line 34
    .local v8, "decl_count":I
    move/from16 v30, v8

    if-gez v30, :cond_1

    .line 35
    move-object/from16 v30, v4

    const-string/jumbo v31, "bindings not a proper list"

    invoke-virtual/range {v30 .. v31}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v30

    move-object/from16 v2, v30

    goto :goto_0

    .line 36
    :cond_1
    const/16 v30, 0x0

    move-object/from16 v9, v30

    .line 37
    .local v9, "renamedAliases":Ljava/util/Stack;
    const/16 v30, 0x0

    move/from16 v10, v30

    .line 38
    .local v10, "renamedAliasesCount":I
    move/from16 v30, v8

    move/from16 v0, v30

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v30, v0

    move-object/from16 v11, v30

    .line 39
    .local v11, "inits":[Lgnu/expr/Expression;
    move/from16 v30, v8

    move/from16 v0, v30

    new-array v0, v0, [Lgnu/expr/Declaration;

    move-object/from16 v30, v0

    move-object/from16 v12, v30

    .line 40
    .local v12, "decls":[Lgnu/expr/Declaration;
    move/from16 v30, v8

    move/from16 v0, v30

    new-array v0, v0, [Lkawa/lang/Macro;

    move-object/from16 v30, v0

    move-object/from16 v13, v30

    .line 41
    .local v13, "macros":[Lkawa/lang/Macro;
    move/from16 v30, v8

    move/from16 v0, v30

    new-array v0, v0, [Lgnu/lists/Pair;

    move-object/from16 v30, v0

    move-object/from16 v14, v30

    .line 42
    .local v14, "transformers":[Lgnu/lists/Pair;
    move/from16 v30, v8

    move/from16 v0, v30

    new-array v0, v0, [Lkawa/lang/SyntaxForm;

    move-object/from16 v30, v0

    move-object/from16 v15, v30

    .line 43
    .local v15, "trSyntax":[Lkawa/lang/SyntaxForm;
    new-instance v30, Lgnu/expr/LetExp;

    move-object/from16 v34, v30

    move-object/from16 v30, v34

    move-object/from16 v31, v34

    move-object/from16 v32, v11

    invoke-direct/range {v31 .. v32}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object/from16 v16, v30

    .line 44
    .local v16, "let":Lgnu/expr/LetExp;
    const/16 v30, 0x0

    move-object/from16 v17, v30

    .line 45
    .local v17, "listSyntax":Lkawa/lang/SyntaxForm;
    const/16 v30, 0x0

    move/from16 v18, v30

    .local v18, "i":I
    :goto_1
    move/from16 v30, v18

    move/from16 v31, v8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_f

    .line 47
    :goto_2
    move-object/from16 v30, v6

    move-object/from16 v0, v30

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v30, v0

    if-eqz v30, :cond_2

    .line 49
    move-object/from16 v30, v6

    check-cast v30, Lkawa/lang/SyntaxForm;

    move-object/from16 v17, v30

    .line 50
    move-object/from16 v30, v17

    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v6, v30

    goto :goto_2

    .line 52
    :cond_2
    move-object/from16 v30, v17

    move-object/from16 v19, v30

    .line 53
    .local v19, "bindingSyntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v30, v6

    check-cast v30, Lgnu/lists/Pair;

    move-object/from16 v20, v30

    .line 54
    .local v20, "bind_pair":Lgnu/lists/Pair;
    move-object/from16 v30, v20

    invoke-virtual/range {v30 .. v30}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v21, v30

    .line 55
    .local v21, "bind_pair_car":Ljava/lang/Object;
    move-object/from16 v30, v21

    move-object/from16 v0, v30

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v30, v0

    if-eqz v30, :cond_3

    .line 57
    move-object/from16 v30, v21

    check-cast v30, Lkawa/lang/SyntaxForm;

    move-object/from16 v19, v30

    .line 58
    move-object/from16 v30, v19

    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v21, v30

    .line 60
    :cond_3
    move-object/from16 v30, v21

    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v30, v0

    if-nez v30, :cond_4

    .line 61
    move-object/from16 v30, v4

    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v34, v31

    move-object/from16 v31, v34

    move-object/from16 v32, v34

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lkawa/standard/let_syntax;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " binding is not a pair"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v30

    move-object/from16 v2, v30

    goto/16 :goto_0

    .line 62
    :cond_4
    move-object/from16 v30, v21

    check-cast v30, Lgnu/lists/Pair;

    move-object/from16 v22, v30

    .line 63
    .local v22, "binding":Lgnu/lists/Pair;
    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v23, v30

    .line 64
    .local v23, "name":Ljava/lang/Object;
    move-object/from16 v30, v19

    move-object/from16 v24, v30

    .line 65
    .local v24, "nameSyntax":Lkawa/lang/SyntaxForm;
    :goto_3
    move-object/from16 v30, v23

    move-object/from16 v0, v30

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v30, v0

    if-eqz v30, :cond_5

    .line 67
    move-object/from16 v30, v23

    check-cast v30, Lkawa/lang/SyntaxForm;

    move-object/from16 v24, v30

    .line 68
    move-object/from16 v30, v24

    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v23, v30

    goto :goto_3

    .line 70
    :cond_5
    move-object/from16 v30, v23

    move-object/from16 v0, v30

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v30, v0

    if-nez v30, :cond_6

    move-object/from16 v30, v23

    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v30, v0

    if-nez v30, :cond_6

    .line 71
    move-object/from16 v30, v4

    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v34, v31

    move-object/from16 v31, v34

    move-object/from16 v32, v34

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "variable in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lkawa/standard/let_syntax;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " binding is not a symbol"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v30

    move-object/from16 v2, v30

    goto/16 :goto_0

    .line 72
    :cond_6
    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v25, v30

    .line 73
    .local v25, "binding_cdr":Ljava/lang/Object;
    :goto_4
    move-object/from16 v30, v25

    move-object/from16 v0, v30

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v30, v0

    if-eqz v30, :cond_7

    .line 75
    move-object/from16 v30, v25

    check-cast v30, Lkawa/lang/SyntaxForm;

    move-object/from16 v19, v30

    .line 76
    move-object/from16 v30, v19

    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v25, v30

    goto :goto_4

    .line 78
    :cond_7
    move-object/from16 v30, v25

    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v30, v0

    if-nez v30, :cond_8

    .line 79
    move-object/from16 v30, v4

    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v34, v31

    move-object/from16 v31, v34

    move-object/from16 v32, v34

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lkawa/standard/let_syntax;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " has no value for \'"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v32, v23

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\'"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v30

    move-object/from16 v2, v30

    goto/16 :goto_0

    .line 80
    :cond_8
    move-object/from16 v30, v25

    check-cast v30, Lgnu/lists/Pair;

    move-object/from16 v22, v30

    .line 81
    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v30

    sget-object v31, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_9

    .line 82
    move-object/from16 v30, v4

    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v34, v31

    move-object/from16 v31, v34

    move-object/from16 v32, v34

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "let binding for \'"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v32, v23

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\' is improper list"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v30

    move-object/from16 v2, v30

    goto/16 :goto_0

    .line 83
    :cond_9
    new-instance v30, Lgnu/expr/Declaration;

    move-object/from16 v34, v30

    move-object/from16 v30, v34

    move-object/from16 v31, v34

    move-object/from16 v32, v23

    invoke-direct/range {v31 .. v32}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object/from16 v26, v30

    .line 84
    .local v26, "decl":Lgnu/expr/Declaration;
    move-object/from16 v30, v26

    invoke-static/range {v30 .. v30}, Lkawa/lang/Macro;->make(Lgnu/expr/Declaration;)Lkawa/lang/Macro;

    move-result-object v30

    move-object/from16 v27, v30

    .line 85
    .local v27, "macro":Lkawa/lang/Macro;
    move-object/from16 v30, v13

    move/from16 v31, v18

    move-object/from16 v32, v27

    aput-object v32, v30, v31

    .line 86
    move-object/from16 v30, v14

    move/from16 v31, v18

    move-object/from16 v32, v22

    aput-object v32, v30, v31

    .line 87
    move-object/from16 v30, v15

    move/from16 v31, v18

    move-object/from16 v32, v19

    aput-object v32, v30, v31

    .line 88
    move-object/from16 v30, v16

    move-object/from16 v31, v26

    invoke-virtual/range {v30 .. v31}, Lgnu/expr/LetExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 89
    move-object/from16 v30, v24

    if-nez v30, :cond_c

    const/16 v30, 0x0

    :goto_5
    move-object/from16 v28, v30

    .line 90
    .local v28, "templateScope":Lgnu/expr/ScopeExp;
    move-object/from16 v30, v28

    if-eqz v30, :cond_b

    .line 92
    move-object/from16 v30, v4

    move-object/from16 v31, v26

    move-object/from16 v32, v28

    invoke-virtual/range {v30 .. v32}, Lkawa/lang/Translator;->makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v30

    move-object/from16 v29, v30

    .line 93
    .local v29, "alias":Lgnu/expr/Declaration;
    move-object/from16 v30, v9

    if-nez v30, :cond_a

    .line 94
    new-instance v30, Ljava/util/Stack;

    move-object/from16 v34, v30

    move-object/from16 v30, v34

    move-object/from16 v31, v34

    invoke-direct/range {v31 .. v31}, Ljava/util/Stack;-><init>()V

    move-object/from16 v9, v30

    .line 95
    :cond_a
    move-object/from16 v30, v9

    move-object/from16 v31, v29

    invoke-virtual/range {v30 .. v31}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .line 96
    add-int/lit8 v10, v10, 0x1

    .line 98
    .end local v29    # "alias":Lgnu/expr/Declaration;
    :cond_b
    move-object/from16 v30, v27

    move-object/from16 v31, v19

    if-eqz v31, :cond_d

    move-object/from16 v31, v19

    invoke-interface/range {v31 .. v31}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v31

    :goto_6
    invoke-virtual/range {v30 .. v31}, Lkawa/lang/Macro;->setCapturedScope(Lgnu/expr/ScopeExp;)V

    .line 100
    move-object/from16 v30, v12

    move/from16 v31, v18

    move-object/from16 v32, v26

    aput-object v32, v30, v31

    .line 101
    move-object/from16 v30, v11

    move/from16 v31, v18

    sget-object v32, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v32, v30, v31

    .line 102
    move-object/from16 v30, v20

    invoke-virtual/range {v30 .. v30}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v6, v30

    .line 45
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 89
    .end local v28    # "templateScope":Lgnu/expr/ScopeExp;
    :cond_c
    move-object/from16 v30, v24

    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v30

    goto :goto_5

    .line 98
    .restart local v28    # "templateScope":Lgnu/expr/ScopeExp;
    :cond_d
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lkawa/standard/let_syntax;->recursive:Z

    move/from16 v31, v0

    if-eqz v31, :cond_e

    move-object/from16 v31, v16

    goto :goto_6

    :cond_e
    move-object/from16 v31, v4

    invoke-virtual/range {v31 .. v31}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v31

    goto :goto_6

    .line 104
    .end local v19    # "bindingSyntax":Lkawa/lang/SyntaxForm;
    .end local v20    # "bind_pair":Lgnu/lists/Pair;
    .end local v21    # "bind_pair_car":Ljava/lang/Object;
    .end local v22    # "binding":Lgnu/lists/Pair;
    .end local v23    # "name":Ljava/lang/Object;
    .end local v24    # "nameSyntax":Lkawa/lang/SyntaxForm;
    .end local v25    # "binding_cdr":Ljava/lang/Object;
    .end local v26    # "decl":Lgnu/expr/Declaration;
    .end local v27    # "macro":Lkawa/lang/Macro;
    .end local v28    # "templateScope":Lgnu/expr/ScopeExp;
    :cond_f
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lkawa/standard/let_syntax;->recursive:Z

    move/from16 v30, v0

    if-eqz v30, :cond_10

    .line 105
    move-object/from16 v30, v2

    move-object/from16 v31, v16

    move-object/from16 v32, v4

    move-object/from16 v33, v9

    invoke-direct/range {v30 .. v33}, Lkawa/standard/let_syntax;->push(Lgnu/expr/LetExp;Lkawa/lang/Translator;Ljava/util/Stack;)V

    .line 106
    :cond_10
    move-object/from16 v30, v4

    move-object/from16 v0, v30

    iget-object v0, v0, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    move-object/from16 v30, v0

    move-object/from16 v18, v30

    .line 107
    .local v18, "savedMacro":Lkawa/lang/Macro;
    const/16 v30, 0x0

    move/from16 v19, v30

    .local v19, "i":I
    :goto_7
    move/from16 v30, v19

    move/from16 v31, v8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_12

    .line 109
    move-object/from16 v30, v13

    move/from16 v31, v19

    aget-object v30, v30, v31

    move-object/from16 v20, v30

    .line 110
    .local v20, "macro":Lkawa/lang/Macro;
    move-object/from16 v30, v4

    move-object/from16 v31, v20

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 111
    move-object/from16 v30, v4

    move-object/from16 v31, v14

    move/from16 v32, v19

    aget-object v31, v31, v32

    move-object/from16 v32, v15

    move/from16 v33, v19

    aget-object v32, v32, v33

    invoke-virtual/range {v30 .. v32}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v30

    move-object/from16 v21, v30

    .line 112
    .local v21, "value":Lgnu/expr/Expression;
    move-object/from16 v30, v11

    move/from16 v31, v19

    move-object/from16 v32, v21

    aput-object v32, v30, v31

    .line 113
    move-object/from16 v30, v12

    move/from16 v31, v19

    aget-object v30, v30, v31

    move-object/from16 v22, v30

    .line 114
    .local v22, "decl":Lgnu/expr/Declaration;
    move-object/from16 v30, v20

    move-object/from16 v31, v21

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    .line 115
    move-object/from16 v30, v22

    new-instance v31, Lgnu/expr/QuoteExp;

    move-object/from16 v34, v31

    move-object/from16 v31, v34

    move-object/from16 v32, v34

    move-object/from16 v33, v20

    invoke-direct/range {v32 .. v33}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v30 .. v31}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 116
    move-object/from16 v30, v21

    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v30, v0

    if-eqz v30, :cond_11

    .line 118
    move-object/from16 v30, v21

    check-cast v30, Lgnu/expr/LambdaExp;

    move-object/from16 v23, v30

    .line 119
    .local v23, "lvalue":Lgnu/expr/LambdaExp;
    move-object/from16 v30, v23

    move-object/from16 v31, v22

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 120
    move-object/from16 v30, v23

    move-object/from16 v31, v22

    invoke-virtual/range {v31 .. v31}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 107
    .end local v23    # "lvalue":Lgnu/expr/LambdaExp;
    :cond_11
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_7

    .line 123
    .end local v20    # "macro":Lkawa/lang/Macro;
    .end local v21    # "value":Lgnu/expr/Expression;
    .end local v22    # "decl":Lgnu/expr/Declaration;
    :cond_12
    move-object/from16 v30, v4

    move-object/from16 v31, v18

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 124
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lkawa/standard/let_syntax;->recursive:Z

    move/from16 v30, v0

    if-nez v30, :cond_13

    .line 125
    move-object/from16 v30, v2

    move-object/from16 v31, v16

    move-object/from16 v32, v4

    move-object/from16 v33, v9

    invoke-direct/range {v30 .. v33}, Lkawa/standard/let_syntax;->push(Lgnu/expr/LetExp;Lkawa/lang/Translator;Ljava/util/Stack;)V

    .line 126
    :cond_13
    move-object/from16 v30, v4

    move-object/from16 v31, v7

    invoke-virtual/range {v30 .. v31}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v30

    move-object/from16 v19, v30

    .line 127
    .local v19, "result":Lgnu/expr/Expression;
    move-object/from16 v30, v4

    move-object/from16 v31, v16

    invoke-virtual/range {v30 .. v31}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 128
    move-object/from16 v30, v4

    move/from16 v31, v10

    invoke-virtual/range {v30 .. v31}, Lkawa/lang/Translator;->popRenamedAlias(I)V

    .line 129
    move-object/from16 v30, v19

    move-object/from16 v2, v30

    goto/16 :goto_0
.end method
