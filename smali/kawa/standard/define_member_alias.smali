.class public Lkawa/standard/define_member_alias;
.super Lkawa/lang/Syntax;
.source "define_member_alias.java"


# static fields
.field public static final define_member_alias:Lkawa/standard/define_member_alias;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lkawa/standard/define_member_alias;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/define_member_alias;-><init>()V

    sput-object v0, Lkawa/standard/define_member_alias;->define_member_alias:Lkawa/standard/define_member_alias;

    .line 12
    sget-object v0, Lkawa/standard/define_member_alias;->define_member_alias:Lkawa/standard/define_member_alias;

    const-string/jumbo v1, "define-member-alias"

    invoke-virtual {v0, v1}, Lkawa/standard/define_member_alias;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define_member_alias;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 20

    .prologue
    .line 34
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/standard/define_member_alias;
    move-object/from16 v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object/from16 v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v14, v1

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    move-object v3, v14

    .line 36
    .local v3, "obj":Ljava/lang/Object;
    move-object v14, v3

    instance-of v14, v14, Lgnu/lists/Pair;

    if-eqz v14, :cond_0

    move-object v14, v3

    check-cast v14, Lgnu/lists/Pair;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object v4, v15

    .local v4, "p1":Lgnu/lists/Pair;
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/lang/String;

    if-nez v14, :cond_1

    move-object v14, v4

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lgnu/expr/Declaration;

    if-nez v14, :cond_1

    .line 39
    .end local v4    # "p1":Lgnu/lists/Pair;
    :cond_0
    move-object v14, v2

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "missing name in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lkawa/standard/define_member_alias;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v14

    move-object v0, v14

    .line 78
    .end local v0    # "this":Lkawa/standard/define_member_alias;
    :goto_0
    return-object v0

    .line 40
    .restart local v0    # "this":Lkawa/standard/define_member_alias;
    .restart local v4    # "p1":Lgnu/lists/Pair;
    :cond_1
    move-object v14, v4

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lgnu/lists/Pair;

    if-eqz v14, :cond_5

    .line 44
    move-object v14, v4

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    move-object v7, v14

    .line 45
    .local v7, "p1_car":Ljava/lang/Object;
    move-object v14, v7

    instance-of v14, v14, Lgnu/expr/Declaration;

    if-eqz v14, :cond_3

    .line 47
    move-object v14, v7

    check-cast v14, Lgnu/expr/Declaration;

    move-object v6, v14

    .line 48
    .local v6, "decl":Lgnu/expr/Declaration;
    move-object v14, v6

    invoke-virtual {v14}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v14

    move-object v5, v14

    .line 55
    .local v5, "name":Ljava/lang/String;
    :goto_1
    move-object v14, v4

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/lists/Pair;

    move-object v8, v14

    .line 56
    .local v8, "p2":Lgnu/lists/Pair;
    const/4 v14, 0x0

    move-object v9, v14

    .line 57
    .local v9, "fname":Lgnu/expr/Expression;
    move-object v14, v2

    move-object v15, v8

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v14

    move-object v10, v14

    .line 58
    .local v10, "arg":Lgnu/expr/Expression;
    move-object v14, v8

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    .line 59
    .local v11, "p2_cdr":Ljava/lang/Object;
    move-object v14, v11

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v14, v15, :cond_4

    .line 60
    new-instance v14, Lgnu/expr/QuoteExp;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v5

    invoke-static/range {v16 .. v16}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v9, v14

    .line 67
    :cond_2
    :goto_2
    move-object v14, v9

    if-eqz v14, :cond_5

    .line 69
    const-string/jumbo v14, "gnu.kawa.reflect.ClassMemberConstraint"

    invoke-static {v14}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v14

    move-object v12, v14

    .line 71
    .local v12, "t":Lgnu/bytecode/ClassType;
    const/4 v14, 0x3

    new-array v14, v14, [Lgnu/expr/Expression;

    move-object v13, v14

    .line 72
    .local v13, "args":[Lgnu/expr/Expression;
    move-object v14, v13

    const/4 v15, 0x0

    new-instance v16, Lgnu/expr/QuoteExp;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    move-object/from16 v18, v5

    invoke-direct/range {v17 .. v18}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v16, v14, v15

    .line 73
    move-object v14, v13

    const/4 v15, 0x1

    move-object/from16 v16, v10

    aput-object v16, v14, v15

    .line 74
    move-object v14, v13

    const/4 v15, 0x2

    move-object/from16 v16, v9

    aput-object v16, v14, v15

    .line 75
    move-object v14, v12

    const-string/jumbo v15, "define"

    move-object/from16 v16, v13

    invoke-static/range {v14 .. v16}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v14

    move-object v0, v14

    goto/16 :goto_0

    .line 52
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "decl":Lgnu/expr/Declaration;
    .end local v8    # "p2":Lgnu/lists/Pair;
    .end local v9    # "fname":Lgnu/expr/Expression;
    .end local v10    # "arg":Lgnu/expr/Expression;
    .end local v11    # "p2_cdr":Ljava/lang/Object;
    .end local v12    # "t":Lgnu/bytecode/ClassType;
    .end local v13    # "args":[Lgnu/expr/Expression;
    :cond_3
    move-object v14, v7

    check-cast v14, Ljava/lang/String;

    move-object v5, v14

    .line 53
    .restart local v5    # "name":Ljava/lang/String;
    const/4 v14, 0x0

    move-object v6, v14

    .restart local v6    # "decl":Lgnu/expr/Declaration;
    goto :goto_1

    .line 61
    .restart local v8    # "p2":Lgnu/lists/Pair;
    .restart local v9    # "fname":Lgnu/expr/Expression;
    .restart local v10    # "arg":Lgnu/expr/Expression;
    .restart local v11    # "p2_cdr":Ljava/lang/Object;
    :cond_4
    move-object v14, v11

    instance-of v14, v14, Lgnu/lists/Pair;

    if-eqz v14, :cond_2

    .line 63
    move-object v14, v11

    check-cast v14, Lgnu/lists/Pair;

    move-object v12, v14

    .line 64
    .local v12, "p3":Lgnu/lists/Pair;
    move-object v14, v12

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v14, v15, :cond_2

    .line 65
    move-object v14, v2

    move-object v15, v12

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v14

    move-object v9, v14

    goto :goto_2

    .line 78
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "decl":Lgnu/expr/Declaration;
    .end local v7    # "p1_car":Ljava/lang/Object;
    .end local v8    # "p2":Lgnu/lists/Pair;
    .end local v9    # "fname":Lgnu/expr/Expression;
    .end local v10    # "arg":Lgnu/expr/Expression;
    .end local v11    # "p2_cdr":Ljava/lang/Object;
    .end local v12    # "p3":Lgnu/lists/Pair;
    :cond_5
    move-object v14, v2

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "invalid syntax for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lkawa/standard/define_member_alias;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v14

    move-object v0, v14

    goto/16 :goto_0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 14

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define_member_alias;
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

    move-object v8, v4

    invoke-virtual {v8}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v8

    instance-of v8, v8, Lgnu/expr/ModuleExp;

    if-nez v8, :cond_0

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

    .line 22
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

    .line 29
    .end local v0    # "this":Lkawa/standard/define_member_alias;
    :goto_0
    return v0

    .line 23
    .restart local v0    # "this":Lkawa/standard/define_member_alias;
    .restart local v5    # "p":Lgnu/lists/Pair;
    :cond_1
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 24
    .local v6, "name":Ljava/lang/Object;
    move-object v8, v3

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    sget-object v10, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    invoke-virtual {v8, v9, v10}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v8

    move-object v7, v8

    .line 26
    .local v7, "decl":Lgnu/expr/Declaration;
    move-object v8, v7

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 27
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

    .line 28
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 29
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0
.end method
