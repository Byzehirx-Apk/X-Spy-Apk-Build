.class public Lkawa/standard/define_class;
.super Lkawa/lang/Syntax;
.source "define_class.java"


# static fields
.field public static final define_class:Lkawa/standard/define_class;

.field public static final define_simple_class:Lkawa/standard/define_class;


# instance fields
.field isSimple:Z

.field objectSyntax:Lkawa/standard/object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 9
    new-instance v0, Lkawa/standard/define_class;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "define-class"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkawa/standard/define_class;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/define_class;->define_class:Lkawa/standard/define_class;

    .line 11
    new-instance v0, Lkawa/standard/define_class;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "define-simple-class"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkawa/standard/define_class;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/define_class;->define_simple_class:Lkawa/standard/define_class;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define_class;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "isSimple":Z
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 26
    move-object v3, v0

    sget-object v4, Lkawa/standard/object;->objectSyntax:Lkawa/standard/object;

    iput-object v4, v3, Lkawa/standard/define_class;->objectSyntax:Lkawa/standard/object;

    .line 27
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lkawa/standard/define_class;->isSimple:Z

    .line 28
    return-void
.end method

.method constructor <init>(Lkawa/standard/object;Z)V
    .locals 5

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define_class;
    move-object v1, p1

    .local v1, "objectSyntax":Lkawa/standard/object;
    move v2, p2

    .local v2, "isSimple":Z
    move-object v3, v0

    invoke-direct {v3}, Lkawa/lang/Syntax;-><init>()V

    .line 19
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkawa/standard/define_class;->objectSyntax:Lkawa/standard/object;

    .line 20
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lkawa/standard/define_class;->isSimple:Z

    .line 21
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 12

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define_class;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    const/4 v7, 0x0

    move-object v3, v7

    .line 100
    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 101
    .local v4, "form_cdr":Ljava/lang/Object;
    move-object v7, v4

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_1

    .line 103
    move-object v7, v4

    check-cast v7, Lgnu/lists/Pair;

    move-object v1, v7

    .line 104
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 105
    .local v5, "form_car":Ljava/lang/Object;
    move-object v7, v5

    instance-of v7, v7, Lgnu/expr/Declaration;

    if-nez v7, :cond_0

    .line 106
    move-object v7, v2

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    invoke-virtual {v9}, Lkawa/standard/define_class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " can only be used in <body>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v0, v7

    .line 113
    .end local v0    # "this":Lkawa/standard/define_class;
    .end local v5    # "form_car":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 107
    .restart local v0    # "this":Lkawa/standard/define_class;
    .restart local v5    # "form_car":Ljava/lang/Object;
    :cond_0
    move-object v7, v5

    check-cast v7, Lgnu/expr/Declaration;

    move-object v3, v7

    .line 109
    .end local v5    # "form_car":Ljava/lang/Object;
    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v7

    check-cast v7, Lgnu/expr/ClassExp;

    move-object v5, v7

    .line 110
    .local v5, "oexp":Lgnu/expr/ClassExp;
    move-object v7, v0

    iget-object v7, v7, Lkawa/standard/define_class;->objectSyntax:Lkawa/standard/object;

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lkawa/standard/object;->rewriteClassDef([Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 111
    new-instance v7, Lgnu/expr/SetExp;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v3

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    move-object v6, v7

    .line 112
    .local v6, "sexp":Lgnu/expr/SetExp;
    move-object v7, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 113
    move-object v7, v6

    move-object v0, v7

    goto :goto_0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 25

    .prologue
    .line 33
    move-object/from16 v3, p0

    .local v3, "this":Lkawa/standard/define_class;
    move-object/from16 v4, p1

    .local v4, "st":Lgnu/lists/Pair;
    move-object/from16 v5, p2

    .local v5, "forms":Ljava/util/Vector;
    move-object/from16 v6, p3

    .local v6, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v7, p4

    .local v7, "tr":Lkawa/lang/Translator;
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v8, v19

    .line 34
    .local v8, "st_cdr":Ljava/lang/Object;
    const/16 v19, 0x0

    move-object/from16 v9, v19

    .line 35
    .local v9, "nameSyntax":Lkawa/lang/SyntaxForm;
    :goto_0
    move-object/from16 v19, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 37
    move-object/from16 v19, v8

    check-cast v19, Lkawa/lang/SyntaxForm;

    move-object/from16 v9, v19

    .line 38
    move-object/from16 v19, v9

    invoke-interface/range {v19 .. v19}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v8, v19

    goto :goto_0

    .line 40
    :cond_0
    move-object/from16 v19, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 41
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    invoke-super/range {v19 .. v23}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v19

    move/from16 v3, v19

    .line 93
    .end local v3    # "this":Lkawa/standard/define_class;
    :goto_1
    return v3

    .line 42
    .restart local v3    # "this":Lkawa/standard/define_class;
    :cond_1
    move-object/from16 v19, v8

    check-cast v19, Lgnu/lists/Pair;

    move-object/from16 v10, v19

    .line 43
    .local v10, "p":Lgnu/lists/Pair;
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v11, v19

    .line 44
    .local v11, "name":Ljava/lang/Object;
    :goto_2
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 46
    move-object/from16 v19, v11

    check-cast v19, Lkawa/lang/SyntaxForm;

    move-object/from16 v9, v19

    .line 47
    move-object/from16 v19, v9

    invoke-interface/range {v19 .. v19}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v11, v19

    goto :goto_2

    .line 49
    :cond_2
    move-object/from16 v19, v7

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v11, v19

    .line 50
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-nez v19, :cond_3

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 52
    move-object/from16 v19, v7

    const/16 v20, 0x65

    const-string/jumbo v21, "missing class name"

    invoke-virtual/range {v19 .. v21}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 53
    const/16 v19, 0x0

    move/from16 v3, v19

    goto :goto_1

    .line 55
    :cond_3
    move-object/from16 v19, v7

    move-object/from16 v20, v11

    move-object/from16 v21, v9

    move-object/from16 v22, v6

    invoke-virtual/range {v19 .. v22}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v19

    move-object/from16 v12, v19

    .line 56
    .local v12, "decl":Lgnu/expr/Declaration;
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/lists/PairWithPosition;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 57
    move-object/from16 v19, v12

    move-object/from16 v20, v10

    check-cast v20, Lgnu/lists/PairWithPosition;

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 58
    :cond_4
    new-instance v19, Lgnu/expr/ClassExp;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lkawa/standard/define_class;->isSimple:Z

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lgnu/expr/ClassExp;-><init>(Z)V

    move-object/from16 v13, v19

    .line 59
    .local v13, "oexp":Lgnu/expr/ClassExp;
    move-object/from16 v19, v12

    move-object/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 60
    move-object/from16 v19, v12

    const-wide/32 v20, 0x20004000

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 61
    move-object/from16 v19, v12

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lkawa/standard/define_class;->isSimple:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    sget-object v20, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    :goto_3
    invoke-virtual/range {v19 .. v20}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 62
    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 64
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v19, v11

    check-cast v19, Lgnu/mapping/Symbol;

    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v19

    :goto_4
    move-object/from16 v14, v19

    .line 66
    .local v14, "cname":Ljava/lang/String;
    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v15, v19

    .line 67
    .local v15, "nlen":I
    move/from16 v19, v15

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    move-object/from16 v19, v14

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x3c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    move-object/from16 v19, v14

    move/from16 v20, v15

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x3e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 68
    move-object/from16 v19, v14

    const/16 v20, 0x1

    move/from16 v21, v15

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, v19

    .line 69
    :cond_5
    move-object/from16 v19, v13

    move-object/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/ClassExp;->setName(Ljava/lang/String;)V

    .line 71
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v16, v19

    .line 72
    .local v16, "members":Ljava/lang/Object;
    :goto_5
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 74
    move-object/from16 v19, v16

    check-cast v19, Lkawa/lang/SyntaxForm;

    move-object/from16 v9, v19

    .line 75
    move-object/from16 v19, v9

    invoke-interface/range {v19 .. v19}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v16, v19

    goto :goto_5

    .line 61
    .end local v14    # "cname":Ljava/lang/String;
    .end local v15    # "nlen":I
    .end local v16    # "members":Ljava/lang/Object;
    :cond_6
    sget-object v20, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    goto/16 :goto_3

    .line 64
    :cond_7
    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_4

    .line 77
    .restart local v14    # "cname":Ljava/lang/String;
    .restart local v15    # "nlen":I
    .restart local v16    # "members":Ljava/lang/Object;
    :cond_8
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 79
    move-object/from16 v19, v7

    const/16 v20, 0x65

    const-string/jumbo v21, "missing class members"

    invoke-virtual/range {v19 .. v21}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 80
    const/16 v19, 0x0

    move/from16 v3, v19

    goto/16 :goto_1

    .line 82
    :cond_9
    move-object/from16 v19, v16

    check-cast v19, Lgnu/lists/Pair;

    move-object/from16 v10, v19

    .line 83
    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v19

    move-object/from16 v17, v19

    .line 84
    .local v17, "save_scope":Lgnu/expr/ScopeExp;
    move-object/from16 v19, v9

    if-eqz v19, :cond_a

    .line 85
    move-object/from16 v19, v7

    move-object/from16 v20, v9

    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 86
    :cond_a
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lkawa/standard/define_class;->objectSyntax:Lkawa/standard/object;

    move-object/from16 v19, v0

    move-object/from16 v20, v10

    move-object/from16 v21, v13

    move-object/from16 v22, v7

    invoke-virtual/range {v19 .. v22}, Lkawa/standard/object;->scanClassDef(Lgnu/lists/Pair;Lgnu/expr/ClassExp;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v18, v19

    .line 87
    .local v18, "saved":[Ljava/lang/Object;
    move-object/from16 v19, v9

    if-eqz v19, :cond_b

    .line 88
    move-object/from16 v19, v7

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 89
    :cond_b
    move-object/from16 v19, v18

    if-nez v19, :cond_c

    .line 90
    const/16 v19, 0x0

    move/from16 v3, v19

    goto/16 :goto_1

    .line 91
    :cond_c
    move-object/from16 v19, v4

    move-object/from16 v20, v3

    move-object/from16 v21, v10

    move-object/from16 v22, v12

    move-object/from16 v23, v18

    invoke-static/range {v21 .. v23}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v19

    move-object/from16 v4, v19

    .line 92
    move-object/from16 v19, v5

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    const/16 v19, 0x1

    move/from16 v3, v19

    goto/16 :goto_1
.end method
