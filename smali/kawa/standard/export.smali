.class public Lkawa/standard/export;
.super Lkawa/lang/Syntax;
.source "export.java"


# static fields
.field public static final export:Lkawa/standard/export;

.field public static final module_export:Lkawa/standard/export;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    new-instance v0, Lkawa/standard/export;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/export;-><init>()V

    sput-object v0, Lkawa/standard/export;->module_export:Lkawa/standard/export;

    .line 9
    sget-object v0, Lkawa/standard/export;->module_export:Lkawa/standard/export;

    const-string/jumbo v1, "module-export"

    invoke-virtual {v0, v1}, Lkawa/standard/export;->setName(Ljava/lang/String;)V

    .line 11
    new-instance v0, Lkawa/standard/export;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/export;-><init>()V

    sput-object v0, Lkawa/standard/export;->export:Lkawa/standard/export;

    .line 12
    sget-object v0, Lkawa/standard/export;->module_export:Lkawa/standard/export;

    const-string/jumbo v1, "export"

    invoke-virtual {v0, v1}, Lkawa/standard/export;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lkawa/standard/export;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lkawa/standard/export;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lkawa/standard/export;
    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 18

    .prologue
    .line 17
    move-object/from16 v1, p0

    .local v1, "this":Lkawa/standard/export;
    move-object/from16 v2, p1

    .local v2, "st":Lgnu/lists/Pair;
    move-object/from16 v3, p2

    .local v3, "forms":Ljava/util/Vector;
    move-object/from16 v4, p3

    .local v4, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v5, p4

    .local v5, "tr":Lkawa/lang/Translator;
    move-object v13, v2

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    move-object v6, v13

    .line 18
    .local v6, "list":Ljava/lang/Object;
    move-object v13, v5

    move-object v14, v2

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v7, v13

    .line 21
    .local v7, "savePos":Ljava/lang/Object;
    move-object v13, v4

    :try_start_0
    instance-of v13, v13, Lgnu/expr/ModuleExp;

    if-eqz v13, :cond_0

    .line 22
    move-object v13, v4

    check-cast v13, Lgnu/expr/ModuleExp;

    const/16 v14, 0x4000

    invoke-virtual {v13, v14}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 28
    const/4 v13, 0x0

    move-object v8, v13

    .line 29
    .local v8, "restSyntax":Lkawa/lang/SyntaxForm;
    :goto_0
    move-object v13, v6

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v13, v14, :cond_8

    .line 31
    move-object v13, v5

    move-object v14, v6

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 32
    :goto_1
    move-object v13, v6

    instance-of v13, v13, Lkawa/lang/SyntaxForm;

    if-eqz v13, :cond_1

    .line 34
    move-object v13, v6

    check-cast v13, Lkawa/lang/SyntaxForm;

    move-object v8, v13

    .line 35
    move-object v13, v8

    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v13

    move-object v6, v13

    goto :goto_1

    .line 25
    .end local v8    # "restSyntax":Lkawa/lang/SyntaxForm;
    :cond_0
    move-object v13, v5

    const/16 v14, 0x65

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lkawa/standard/export;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' not at module level"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    const/4 v13, 0x1

    move v8, v13

    .line 79
    move-object v13, v5

    move-object v14, v7

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move v13, v8

    move v1, v13

    .end local v1    # "this":Lkawa/standard/export;
    :goto_2
    return v1

    .line 37
    .restart local v1    # "this":Lkawa/standard/export;
    .restart local v8    # "restSyntax":Lkawa/lang/SyntaxForm;
    :cond_1
    move-object v13, v8

    move-object v9, v13

    .line 38
    .local v9, "nameSyntax":Lkawa/lang/SyntaxForm;
    move-object v13, v6

    :try_start_1
    instance-of v13, v13, Lgnu/lists/Pair;

    if-eqz v13, :cond_7

    .line 40
    move-object v13, v6

    check-cast v13, Lgnu/lists/Pair;

    move-object v2, v13

    .line 41
    move-object v13, v2

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    move-object v10, v13

    .line 42
    .local v10, "symbol":Ljava/lang/Object;
    :goto_3
    move-object v13, v10

    instance-of v13, v13, Lkawa/lang/SyntaxForm;

    if-eqz v13, :cond_2

    .line 44
    move-object v13, v10

    check-cast v13, Lkawa/lang/SyntaxForm;

    move-object v9, v13

    .line 45
    move-object v13, v9

    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v13

    move-object v10, v13

    goto :goto_3

    .line 47
    :cond_2
    move-object v13, v10

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 49
    move-object v13, v10

    check-cast v13, Ljava/lang/String;

    move-object v11, v13

    .line 50
    .local v11, "str":Ljava/lang/String;
    move-object v13, v11

    const-string/jumbo v14, "namespace:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 52
    move-object v13, v5

    const/16 v14, 0x77

    const-string/jumbo v15, "\'namespace:\' prefix ignored"

    invoke-virtual {v13, v14, v15}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 53
    move-object v13, v11

    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 56
    .end local v10    # "symbol":Ljava/lang/Object;
    .end local v11    # "str":Ljava/lang/String;
    :cond_3
    move-object v13, v10

    instance-of v13, v13, Ljava/lang/String;

    if-nez v13, :cond_4

    move-object v13, v10

    instance-of v13, v13, Lgnu/mapping/Symbol;

    if-eqz v13, :cond_7

    .line 59
    :cond_4
    move-object v13, v9

    if-eqz v13, :cond_5

    .line 64
    :cond_5
    move-object v13, v4

    move-object v14, v10

    invoke-virtual {v13, v14}, Lgnu/expr/ScopeExp;->getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v13

    move-object v11, v13

    .line 65
    .local v11, "decl":Lgnu/expr/Declaration;
    move-object v13, v11

    const-wide/16 v14, 0x200

    invoke-virtual {v13, v14, v15}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 66
    move-object v13, v11

    move-object v14, v2

    invoke-static {v13, v14}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 67
    :cond_6
    move-object v13, v11

    const-wide/16 v14, 0x400

    invoke-virtual {v13, v14, v15}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 68
    move-object v13, v2

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    move-object v6, v13

    .line 69
    goto/16 :goto_0

    .line 72
    .end local v11    # "decl":Lgnu/expr/Declaration;
    :cond_7
    move-object v13, v5

    const/16 v14, 0x65

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "invalid syntax in \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lkawa/standard/export;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    const/4 v13, 0x0

    move v10, v13

    .line 79
    move-object v13, v5

    move-object v14, v7

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move v13, v10

    move v1, v13

    goto/16 :goto_2

    .line 75
    .end local v9    # "nameSyntax":Lkawa/lang/SyntaxForm;
    :cond_8
    const/4 v13, 0x1

    move v9, v13

    .line 79
    move-object v13, v5

    move-object v14, v7

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move v13, v9

    move v1, v13

    goto/16 :goto_2

    .end local v8    # "restSyntax":Lkawa/lang/SyntaxForm;
    :catchall_0
    move-exception v13

    move-object v12, v13

    move-object v13, v5

    move-object v14, v7

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v13, v12

    throw v13
.end method
