.class public Lkawa/standard/with_compile_options;
.super Lkawa/lang/Syntax;
.source "with_compile_options.java"


# static fields
.field public static final with_compile_options:Lkawa/standard/with_compile_options;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Lkawa/standard/with_compile_options;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/with_compile_options;-><init>()V

    sput-object v0, Lkawa/standard/with_compile_options;->with_compile_options:Lkawa/standard/with_compile_options;

    .line 11
    sget-object v0, Lkawa/standard/with_compile_options;->with_compile_options:Lkawa/standard/with_compile_options;

    const-string/jumbo v1, "with-compile-options"

    invoke-virtual {v0, v1}, Lkawa/standard/with_compile_options;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lkawa/standard/with_compile_options;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static getOptions(Ljava/lang/Object;Ljava/util/Stack;Lkawa/lang/Syntax;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 19

    .prologue
    .line 33
    move-object/from16 v0, p0

    .local v0, "form":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "stack":Ljava/util/Stack;
    move-object/from16 v2, p2

    .local v2, "command":Lkawa/lang/Syntax;
    move-object/from16 v3, p3

    .local v3, "tr":Lkawa/lang/Translator;
    const/4 v14, 0x0

    move v4, v14

    .line 34
    .local v4, "seenKey":Z
    move-object v14, v3

    iget-object v14, v14, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    move-object v5, v14

    .line 35
    .local v5, "options":Lgnu/text/Options;
    const/4 v14, 0x0

    move-object v6, v14

    .line 38
    .local v6, "syntax":Lkawa/lang/SyntaxForm;
    :goto_0
    move-object v14, v0

    instance-of v14, v14, Lkawa/lang/SyntaxForm;

    if-eqz v14, :cond_0

    .line 40
    move-object v14, v0

    check-cast v14, Lkawa/lang/SyntaxForm;

    move-object v6, v14

    .line 41
    move-object v14, v6

    invoke-interface {v14}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    goto :goto_0

    .line 43
    :cond_0
    move-object v14, v0

    instance-of v14, v14, Lgnu/lists/Pair;

    if-nez v14, :cond_2

    .line 44
    .line 97
    :goto_1
    move v14, v4

    if-nez v14, :cond_1

    .line 98
    move-object v14, v3

    const/16 v15, 0x65

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "no option keyword in "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 99
    :cond_1
    move-object v14, v0

    move-object v15, v6

    invoke-static {v14, v15}, Lkawa/lang/Translator;->wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    .end local v0    # "form":Ljava/lang/Object;
    :goto_2
    return-object v0

    .line 45
    .restart local v0    # "form":Ljava/lang/Object;
    :cond_2
    move-object v14, v0

    check-cast v14, Lgnu/lists/Pair;

    move-object v7, v14

    .line 46
    .local v7, "pair":Lgnu/lists/Pair;
    move-object v14, v7

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v8, v14

    .line 47
    .local v8, "pair_car":Ljava/lang/Object;
    move-object v14, v8

    instance-of v14, v14, Lgnu/expr/Keyword;

    if-nez v14, :cond_3

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move-object v14, v8

    check-cast v14, Lgnu/expr/Keyword;

    invoke-virtual {v14}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    .line 50
    .local v9, "key":Ljava/lang/String;
    const/4 v14, 0x1

    move v4, v14

    .line 51
    move-object v14, v3

    move-object v15, v7

    invoke-virtual {v14, v15}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v10, v14

    .line 54
    .local v10, "savePos":Ljava/lang/Object;
    move-object v14, v7

    :try_start_0
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    .line 55
    :goto_3
    move-object v14, v0

    instance-of v14, v14, Lkawa/lang/SyntaxForm;

    if-eqz v14, :cond_4

    .line 57
    move-object v14, v0

    check-cast v14, Lkawa/lang/SyntaxForm;

    move-object v6, v14

    .line 58
    move-object v14, v6

    invoke-interface {v14}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    goto :goto_3

    .line 60
    :cond_4
    move-object v14, v0

    instance-of v14, v14, Lgnu/lists/Pair;

    if-nez v14, :cond_5

    .line 62
    move-object v14, v3

    const/16 v15, 0x65

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "keyword "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " not followed by value"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 63
    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v14

    .line 94
    move-object v14, v3

    move-object v15, v10

    invoke-virtual {v14, v15}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v14, v11

    move-object v0, v14

    goto :goto_2

    .line 65
    :cond_5
    move-object v14, v0

    :try_start_1
    check-cast v14, Lgnu/lists/Pair;

    move-object v7, v14

    .line 66
    move-object v14, v7

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    .line 67
    .local v11, "value":Ljava/lang/Object;
    move-object v14, v7

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    .line 68
    move-object v14, v5

    move-object v15, v9

    invoke-virtual {v14, v15}, Lgnu/text/Options;->getLocal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    move-object v12, v14

    .line 69
    .local v12, "oldValue":Ljava/lang/Object;
    move-object v14, v5

    move-object v15, v9

    invoke-virtual {v14, v15}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v14

    if-nez v14, :cond_6

    .line 71
    move-object v14, v3

    const/16 v15, 0x77

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "unknown compile option: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    move-object v14, v3

    move-object v15, v10

    invoke-virtual {v14, v15}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 74
    :cond_6
    move-object v14, v11

    :try_start_2
    instance-of v14, v14, Lgnu/lists/FString;

    if-eqz v14, :cond_9

    .line 75
    move-object v14, v11

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    .line 84
    .end local v11    # "value":Ljava/lang/Object;
    :cond_7
    :goto_4
    move-object v14, v5

    move-object v15, v9

    move-object/from16 v16, v11

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v17

    invoke-virtual/range {v14 .. v17}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/Object;Lgnu/text/SourceMessages;)V

    .line 85
    move-object v14, v1

    if-eqz v14, :cond_8

    .line 87
    move-object v14, v1

    move-object v15, v9

    invoke-virtual {v14, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 88
    move-object v14, v1

    move-object v15, v12

    invoke-virtual {v14, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 89
    move-object v14, v1

    move-object v15, v11

    invoke-virtual {v14, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    .line 94
    :cond_8
    move-object v14, v3

    move-object v15, v10

    invoke-virtual {v14, v15}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 95
    .line 96
    goto/16 :goto_0

    .line 76
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_9
    move-object v14, v11

    :try_start_3
    instance-of v14, v14, Ljava/lang/Boolean;

    if-nez v14, :cond_7

    move-object v14, v11

    instance-of v14, v14, Ljava/lang/Number;

    if-eqz v14, :cond_a

    .line 78
    goto :goto_4

    .line 81
    :cond_a
    const/4 v14, 0x0

    move-object v11, v14

    .line 82
    move-object v14, v3

    const/16 v15, 0x65

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "invalid literal value for key "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 94
    .end local v11    # "value":Ljava/lang/Object;
    .end local v12    # "oldValue":Ljava/lang/Object;
    :catchall_0
    move-exception v14

    move-object v13, v14

    move-object v14, v3

    move-object v15, v10

    invoke-virtual {v14, v15}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v14, v13

    throw v14
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 18

    .prologue
    .line 106
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/standard/with_compile_options;
    move-object/from16 v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object/from16 v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    .line 108
    .local v5, "obj":Ljava/lang/Object;
    move-object v11, v5

    instance-of v11, v11, Lgnu/lists/Pair;

    if-eqz v11, :cond_0

    move-object v11, v5

    check-cast v11, Lgnu/lists/Pair;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v6, v12

    .local v6, "p":Lgnu/lists/Pair;
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Ljava/util/Stack;

    if-eqz v11, :cond_0

    .line 111
    move-object v11, v6

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Stack;

    move-object v4, v11

    .line 112
    .local v4, "stack":Ljava/util/Stack;
    move-object v11, v6

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    move-object v3, v11

    .line 113
    .local v3, "rest":Ljava/lang/Object;
    move-object v11, v2

    iget-object v11, v11, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    move-object v12, v4

    invoke-virtual {v11, v12}, Lgnu/text/Options;->pushOptionValues(Ljava/util/Vector;)V

    .line 123
    .end local v6    # "p":Lgnu/lists/Pair;
    :goto_0
    move-object v11, v2

    move-object v12, v3

    :try_start_0
    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v7, v11

    .line 125
    .local v7, "result":Lgnu/expr/Expression;
    move-object v11, v7

    instance-of v11, v11, Lgnu/expr/BeginExp;

    if-eqz v11, :cond_1

    .line 126
    move-object v11, v7

    check-cast v11, Lgnu/expr/BeginExp;

    move-object v8, v11

    .line 129
    .local v8, "bresult":Lgnu/expr/BeginExp;
    :goto_1
    move-object v11, v8

    move-object v12, v4

    invoke-virtual {v11, v12}, Lgnu/expr/BeginExp;->setCompileOptions(Ljava/util/Vector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    move-object v11, v8

    move-object v9, v11

    .line 134
    move-object v11, v2

    iget-object v11, v11, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    move-object v12, v4

    invoke-virtual {v11, v12}, Lgnu/text/Options;->popOptionValues(Ljava/util/Vector;)V

    move-object v11, v9

    move-object v0, v11

    .end local v0    # "this":Lkawa/standard/with_compile_options;
    return-object v0

    .line 117
    .end local v3    # "rest":Ljava/lang/Object;
    .end local v4    # "stack":Ljava/util/Stack;
    .end local v7    # "result":Lgnu/expr/Expression;
    .end local v8    # "bresult":Lgnu/expr/BeginExp;
    .restart local v0    # "this":Lkawa/standard/with_compile_options;
    :cond_0
    new-instance v11, Ljava/util/Stack;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/util/Stack;-><init>()V

    move-object v4, v11

    .line 118
    .restart local v4    # "stack":Ljava/util/Stack;
    move-object v11, v5

    move-object v12, v4

    move-object v13, v0

    move-object v14, v2

    invoke-static {v11, v12, v13, v14}, Lkawa/standard/with_compile_options;->getOptions(Ljava/lang/Object;Ljava/util/Stack;Lkawa/lang/Syntax;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v11

    move-object v3, v11

    .restart local v3    # "rest":Ljava/lang/Object;
    goto :goto_0

    .line 128
    .restart local v7    # "result":Lgnu/expr/Expression;
    :cond_1
    :try_start_1
    new-instance v11, Lgnu/expr/BeginExp;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x1

    new-array v13, v13, [Lgnu/expr/Expression;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move-object/from16 v16, v7

    aput-object v16, v14, v15

    invoke-direct {v12, v13}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v11

    .restart local v8    # "bresult":Lgnu/expr/BeginExp;
    goto :goto_1

    .line 134
    .end local v7    # "result":Lgnu/expr/Expression;
    .end local v8    # "bresult":Lgnu/expr/BeginExp;
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v2

    iget-object v11, v11, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    move-object v12, v4

    invoke-virtual {v11, v12}, Lgnu/text/Options;->popOptionValues(Ljava/util/Vector;)V

    move-object v11, v10

    throw v11
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 11

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lkawa/standard/with_compile_options;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "defs":Lgnu/expr/ScopeExp;
    move-object v3, p3

    .local v3, "tr":Lkawa/lang/Translator;
    new-instance v6, Ljava/util/Stack;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    move-object v4, v6

    .line 16
    .local v4, "stack":Ljava/util/Stack;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v4

    move-object v8, v0

    move-object v9, v3

    invoke-static {v6, v7, v8, v9}, Lkawa/standard/with_compile_options;->getOptions(Ljava/lang/Object;Ljava/util/Stack;Lkawa/lang/Syntax;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 17
    .local v5, "rest":Ljava/lang/Object;
    move-object v6, v5

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v6, v7, :cond_0

    .line 18
    .line 28
    .end local v5    # "rest":Ljava/lang/Object;
    :goto_0
    return-void

    .line 19
    .restart local v5    # "rest":Ljava/lang/Object;
    :cond_0
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 21
    move-object v6, v3

    move-object v7, v5

    move-object v8, v2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object v6

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    move-object v6, v3

    move-object v7, v5

    move-object v8, v2

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object v6

    move-object v5, v6

    .line 25
    .local v5, "rest":Lgnu/lists/LList;
    new-instance v6, Lgnu/lists/Pair;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v6

    .line 26
    .local v5, "rest":Lgnu/lists/Pair;
    move-object v6, v3

    iget-object v6, v6, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/text/Options;->popOptionValues(Ljava/util/Vector;)V

    .line 27
    move-object v6, v3

    iget-object v6, v6, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v5

    invoke-static {v7, v8, v9}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 28
    goto :goto_0
.end method
