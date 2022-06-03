.class public Lkawa/standard/define_alias;
.super Lkawa/lang/Syntax;
.source "define_alias.java"


# static fields
.field public static final define_alias:Lkawa/standard/define_alias;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lkawa/standard/define_alias;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/define_alias;-><init>()V

    sput-object v0, Lkawa/standard/define_alias;->define_alias:Lkawa/standard/define_alias;

    .line 11
    sget-object v0, Lkawa/standard/define_alias;->define_alias:Lkawa/standard/define_alias;

    const-string/jumbo v1, "define-alias"

    invoke-virtual {v0, v1}, Lkawa/standard/define_alias;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define_alias;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 5

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define_alias;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v3, v2

    const-string/jumbo v4, "define-alias is only allowed in a <body>"

    invoke-virtual {v3, v4}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lkawa/standard/define_alias;
    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 22

    .prologue
    .line 16
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/standard/define_alias;
    move-object/from16 v3, p1

    .local v3, "st":Lgnu/lists/Pair;
    move-object/from16 v4, p2

    .local v4, "forms":Ljava/util/Vector;
    move-object/from16 v5, p3

    .local v5, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v6, p4

    .local v6, "tr":Lkawa/lang/Translator;
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    .line 17
    .local v7, "formCdr":Ljava/lang/Object;
    const/16 v17, 0x0

    move-object/from16 v8, v17

    .line 18
    .local v8, "formSyntax":Lkawa/lang/SyntaxForm;
    :goto_0
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 20
    move-object/from16 v17, v7

    check-cast v17, Lkawa/lang/SyntaxForm;

    move-object/from16 v8, v17

    .line 21
    move-object/from16 v17, v8

    invoke-interface/range {v17 .. v17}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    goto :goto_0

    .line 23
    :cond_0
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 25
    move-object/from16 v17, v7

    check-cast v17, Lgnu/lists/Pair;

    move-object/from16 v9, v17

    .line 26
    .local v9, "p":Lgnu/lists/Pair;
    move-object/from16 v17, v8

    move-object/from16 v10, v17

    .line 27
    .local v10, "nameSyntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    .line 28
    .local v11, "name":Ljava/lang/Object;
    :goto_1
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 30
    move-object/from16 v17, v11

    check-cast v17, Lkawa/lang/SyntaxForm;

    move-object/from16 v10, v17

    .line 31
    move-object/from16 v17, v10

    invoke-interface/range {v17 .. v17}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    goto :goto_1

    .line 33
    :cond_1
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    .line 34
    :goto_2
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 36
    move-object/from16 v17, v7

    check-cast v17, Lkawa/lang/SyntaxForm;

    move-object/from16 v8, v17

    .line 37
    move-object/from16 v17, v8

    invoke-interface/range {v17 .. v17}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    goto :goto_2

    .line 39
    :cond_2
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v17, v0

    if-nez v17, :cond_3

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    :cond_3
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v17, v7

    check-cast v17, Lgnu/lists/Pair;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v9, v18

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v17

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 43
    move-object/from16 v17, v6

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    move-object/from16 v20, v5

    invoke-virtual/range {v17 .. v20}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v17

    move-object/from16 v12, v17

    .line 44
    .local v12, "decl":Lgnu/expr/Declaration;
    move-object/from16 v17, v12

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 45
    move-object/from16 v17, v12

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 46
    move-object/from16 v17, v6

    move-object/from16 v18, v9

    move-object/from16 v19, v8

    invoke-virtual/range {v17 .. v19}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v13, v17

    .line 47
    .local v13, "arg":Lgnu/expr/Expression;
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 49
    move-object/from16 v17, v13

    check-cast v17, Lgnu/expr/ReferenceExp;

    move-object/from16 v14, v17

    .line 50
    .local v14, "rarg":Lgnu/expr/ReferenceExp;
    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v17

    move-object/from16 v15, v17

    .line 52
    .local v15, "d":Lgnu/expr/Declaration;
    move-object/from16 v17, v15

    if-eqz v17, :cond_5

    move-object/from16 v17, v15

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v16, v18

    .local v16, "dval":Lgnu/expr/Expression;
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v17, v0

    if-nez v17, :cond_4

    move-object/from16 v17, v16

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 56
    :cond_4
    move-object/from16 v17, v12

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 57
    move-object/from16 v17, v12

    const-wide/16 v18, 0x4000

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 61
    .line 72
    .end local v14    # "rarg":Lgnu/expr/ReferenceExp;
    .end local v15    # "d":Lgnu/expr/Declaration;
    .end local v16    # "dval":Lgnu/expr/Expression;
    :goto_3
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 73
    move-object/from16 v17, v6

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 74
    new-instance v17, Lgnu/expr/SetExp;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    invoke-direct/range {v18 .. v20}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    move-object/from16 v14, v17

    .line 75
    .local v14, "sexp":Lgnu/expr/SetExp;
    move-object/from16 v17, v6

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V

    .line 76
    move-object/from16 v17, v12

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 77
    move-object/from16 v17, v14

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 78
    move-object/from16 v17, v4

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 79
    const/16 v17, 0x1

    move/from16 v2, v17

    .line 83
    .end local v2    # "this":Lkawa/standard/define_alias;
    .end local v9    # "p":Lgnu/lists/Pair;
    .end local v10    # "nameSyntax":Lkawa/lang/SyntaxForm;
    .end local v11    # "name":Ljava/lang/Object;
    .end local v12    # "decl":Lgnu/expr/Declaration;
    .end local v13    # "arg":Lgnu/expr/Expression;
    .end local v14    # "sexp":Lgnu/expr/SetExp;
    :goto_4
    return v2

    .line 60
    .restart local v2    # "this":Lkawa/standard/define_alias;
    .restart local v9    # "p":Lgnu/lists/Pair;
    .restart local v10    # "nameSyntax":Lkawa/lang/SyntaxForm;
    .restart local v11    # "name":Ljava/lang/Object;
    .restart local v12    # "decl":Lgnu/expr/Declaration;
    .restart local v13    # "arg":Lgnu/expr/Expression;
    .local v14, "rarg":Lgnu/expr/ReferenceExp;
    .restart local v15    # "d":Lgnu/expr/Declaration;
    :cond_5
    move-object/from16 v17, v14

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    goto :goto_3

    .line 62
    .end local v14    # "rarg":Lgnu/expr/ReferenceExp;
    .end local v15    # "d":Lgnu/expr/Declaration;
    :cond_6
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 64
    move-object/from16 v17, v12

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 65
    move-object/from16 v17, v12

    const-wide/16 v18, 0x4000

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_3

    .line 69
    :cond_7
    move-object/from16 v17, v13

    move-object/from16 v18, v6

    invoke-static/range {v17 .. v18}, Lkawa/standard/location;->rewrite(Lgnu/expr/Expression;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v13, v17

    .line 70
    move-object/from16 v17, v12

    const-string/jumbo v18, "gnu.mapping.Location"

    invoke-static/range {v18 .. v18}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_3

    .line 82
    .end local v9    # "p":Lgnu/lists/Pair;
    .end local v10    # "nameSyntax":Lkawa/lang/SyntaxForm;
    .end local v11    # "name":Ljava/lang/Object;
    .end local v12    # "decl":Lgnu/expr/Declaration;
    .end local v13    # "arg":Lgnu/expr/Expression;
    :cond_8
    move-object/from16 v17, v6

    const/16 v18, 0x65

    const-string/jumbo v19, "invalid syntax for define-alias"

    invoke-virtual/range {v17 .. v19}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 83
    const/16 v17, 0x0

    move/from16 v2, v17

    goto :goto_4
.end method
