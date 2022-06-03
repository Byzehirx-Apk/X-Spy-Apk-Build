.class public Lkawa/lang/SyntaxRules;
.super Lgnu/mapping/Procedure1;
.source "SyntaxRules.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# instance fields
.field literal_identifiers:[Ljava/lang/Object;

.field maxVars:I

.field rules:[Lkawa/lang/SyntaxRule;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxRules;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure1;-><init>()V

    .line 18
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 22
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 33

    .prologue
    .line 35
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/lang/SyntaxRules;
    move-object/from16 v3, p1

    .local v3, "literal_identifiers":[Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "srules":Ljava/lang/Object;
    move-object/from16 v5, p3

    .local v5, "tr":Lkawa/lang/Translator;
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lgnu/mapping/Procedure1;-><init>()V

    .line 18
    move-object/from16 v24, v2

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 36
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    .line 37
    move-object/from16 v24, v4

    invoke-static/range {v24 .. v24}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v24

    move/from16 v6, v24

    .line 38
    .local v6, "rules_count":I
    move/from16 v24, v6

    if-gez v24, :cond_0

    .line 40
    const/16 v24, 0x0

    move/from16 v6, v24

    .line 41
    move-object/from16 v24, v5

    const-string/jumbo v25, "missing or invalid syntax-rules"

    invoke-virtual/range {v24 .. v25}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v24

    .line 43
    :cond_0
    move-object/from16 v24, v2

    move/from16 v25, v6

    move/from16 v0, v25

    new-array v0, v0, [Lkawa/lang/SyntaxRule;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    .line 46
    const/16 v24, 0x0

    move-object/from16 v8, v24

    .line 47
    .local v8, "rules_syntax":Lkawa/lang/SyntaxForm;
    const/16 v24, 0x0

    move/from16 v9, v24

    .local v9, "i":I
    :goto_0
    move/from16 v24, v9

    move/from16 v25, v6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 49
    :goto_1
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 51
    move-object/from16 v24, v4

    check-cast v24, Lkawa/lang/SyntaxForm;

    move-object/from16 v8, v24

    .line 52
    move-object/from16 v24, v8

    invoke-interface/range {v24 .. v24}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v4, v24

    goto :goto_1

    .line 54
    :cond_1
    move-object/from16 v24, v4

    check-cast v24, Lgnu/lists/Pair;

    move-object/from16 v7, v24

    .line 57
    .local v7, "rules_pair":Lgnu/lists/Pair;
    move-object/from16 v24, v8

    move-object/from16 v10, v24

    .line 58
    .local v10, "rule_syntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v24, v7

    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v11, v24

    .line 59
    .local v11, "syntax_rule":Ljava/lang/Object;
    :goto_2
    move-object/from16 v24, v11

    move-object/from16 v0, v24

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 61
    move-object/from16 v24, v11

    check-cast v24, Lkawa/lang/SyntaxForm;

    move-object/from16 v10, v24

    .line 62
    move-object/from16 v24, v10

    invoke-interface/range {v24 .. v24}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v11, v24

    goto :goto_2

    .line 64
    :cond_2
    move-object/from16 v24, v11

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-nez v24, :cond_3

    .line 66
    move-object/from16 v24, v5

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "missing pattern in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move/from16 v26, v9

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\'th syntax rule"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v24

    .line 67
    .line 153
    .end local v7    # "rules_pair":Lgnu/lists/Pair;
    .end local v10    # "rule_syntax":Lkawa/lang/SyntaxForm;
    .end local v11    # "syntax_rule":Ljava/lang/Object;
    :goto_3
    return-void

    .line 70
    .restart local v7    # "rules_pair":Lgnu/lists/Pair;
    .restart local v10    # "rule_syntax":Lkawa/lang/SyntaxForm;
    .restart local v11    # "syntax_rule":Ljava/lang/Object;
    :cond_3
    move-object/from16 v24, v10

    move-object/from16 v12, v24

    .line 71
    .local v12, "pattern_syntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v24, v11

    check-cast v24, Lgnu/lists/Pair;

    move-object/from16 v13, v24

    .line 72
    .local v13, "syntax_rule_pair":Lgnu/lists/Pair;
    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v14, v24

    .line 74
    .local v14, "pattern":Ljava/lang/Object;
    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v15, v24

    .line 75
    .local v15, "save_filename":Ljava/lang/String;
    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Lkawa/lang/Translator;->getLineNumber()I

    move-result v24

    move/from16 v16, v24

    .line 76
    .local v16, "save_line":I
    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Lkawa/lang/Translator;->getColumnNumber()I

    move-result v24

    move/from16 v17, v24

    .line 81
    .local v17, "save_column":I
    move-object/from16 v24, v10

    move-object/from16 v18, v24

    .line 82
    .local v18, "template_syntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v24, v5

    move-object/from16 v25, v13

    :try_start_0
    invoke-virtual/range {v24 .. v25}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 83
    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v11, v24

    .line 84
    :goto_4
    move-object/from16 v24, v11

    move-object/from16 v0, v24

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 86
    move-object/from16 v24, v11

    check-cast v24, Lkawa/lang/SyntaxForm;

    move-object/from16 v18, v24

    .line 87
    move-object/from16 v24, v18

    invoke-interface/range {v24 .. v24}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v11, v24

    goto :goto_4

    .line 89
    :cond_4
    move-object/from16 v24, v11

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-nez v24, :cond_5

    .line 91
    move-object/from16 v24, v5

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "missing template in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move/from16 v26, v9

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\'th syntax rule"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v24

    .line 142
    move-object/from16 v24, v5

    move-object/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    invoke-virtual/range {v24 .. v27}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    goto/16 :goto_3

    .line 94
    :cond_5
    move-object/from16 v24, v11

    :try_start_1
    check-cast v24, Lgnu/lists/Pair;

    move-object/from16 v13, v24

    .line 95
    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    sget-object v25, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 97
    move-object/from16 v24, v5

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "junk after "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move/from16 v26, v9

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\'th syntax rule"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v24

    .line 142
    move-object/from16 v24, v5

    move-object/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    invoke-virtual/range {v24 .. v27}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    goto/16 :goto_3

    .line 100
    :cond_6
    move-object/from16 v24, v13

    :try_start_2
    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v19, v24

    .line 102
    .local v19, "template":Ljava/lang/Object;
    move-object/from16 v24, v5

    invoke-static/range {v24 .. v24}, Lkawa/lang/PatternScope;->push(Lkawa/lang/Translator;)Lkawa/lang/PatternScope;

    move-result-object v24

    move-object/from16 v20, v24

    .line 103
    .local v20, "patternScope":Lkawa/lang/PatternScope;
    move-object/from16 v24, v5

    move-object/from16 v25, v20

    invoke-virtual/range {v24 .. v25}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 105
    :goto_5
    move-object/from16 v24, v14

    move-object/from16 v0, v24

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 107
    move-object/from16 v24, v14

    check-cast v24, Lkawa/lang/SyntaxForm;

    move-object/from16 v12, v24

    .line 108
    move-object/from16 v24, v12

    invoke-interface/range {v24 .. v24}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v14, v24

    goto :goto_5

    .line 111
    :cond_7
    new-instance v24, Ljava/lang/StringBuffer;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v21, v24

    .line 115
    .local v21, "programbuf":Ljava/lang/StringBuffer;
    move-object/from16 v24, v14

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 118
    move-object/from16 v24, v3

    const/16 v25, 0x0

    move-object/from16 v26, v14

    check-cast v26, Lgnu/lists/Pair;

    invoke-virtual/range {v26 .. v26}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v26

    aput-object v26, v24, v25

    .line 120
    move-object/from16 v24, v14

    check-cast v24, Lgnu/lists/Pair;

    move-object/from16 v22, v24

    .line 121
    .local v22, "p":Lgnu/lists/Pair;
    move-object/from16 v24, v21

    const/16 v25, 0xc

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 122
    move-object/from16 v24, v21

    const/16 v25, 0x18

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 123
    move-object/from16 v24, v22

    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v14, v24

    .line 131
    new-instance v24, Lkawa/lang/SyntaxPattern;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v21

    move-object/from16 v27, v14

    move-object/from16 v28, v12

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    invoke-direct/range {v25 .. v30}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/StringBuffer;Ljava/lang/Object;Lkawa/lang/SyntaxForm;[Ljava/lang/Object;Lkawa/lang/Translator;)V

    move-object/from16 v22, v24

    .line 134
    .local v22, "spattern":Lkawa/lang/SyntaxPattern;
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    move-object/from16 v24, v0

    move/from16 v25, v9

    new-instance v26, Lkawa/lang/SyntaxRule;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move-object/from16 v28, v22

    move-object/from16 v29, v19

    move-object/from16 v30, v18

    move-object/from16 v31, v5

    invoke-direct/range {v27 .. v31}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)V

    aput-object v26, v24, v25

    .line 137
    move-object/from16 v24, v5

    invoke-static/range {v24 .. v24}, Lkawa/lang/PatternScope;->pop(Lkawa/lang/Translator;)V

    .line 138
    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Lkawa/lang/Translator;->pop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    move-object/from16 v24, v5

    move-object/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    invoke-virtual/range {v24 .. v27}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    .line 143
    .line 47
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v24, v7

    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v4, v24

    goto/16 :goto_0

    .line 128
    .end local v22    # "spattern":Lkawa/lang/SyntaxPattern;
    :cond_8
    move-object/from16 v24, v5

    :try_start_3
    const-string/jumbo v25, "pattern does not start with name"

    invoke-virtual/range {v24 .. v25}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v24

    .line 142
    move-object/from16 v24, v5

    move-object/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    invoke-virtual/range {v24 .. v27}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    goto/16 :goto_3

    .end local v19    # "template":Ljava/lang/Object;
    .end local v20    # "patternScope":Lkawa/lang/PatternScope;
    .end local v21    # "programbuf":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v24

    move-object/from16 v23, v24

    move-object/from16 v24, v5

    move-object/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    invoke-virtual/range {v24 .. v27}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    move-object/from16 v24, v23

    throw v24

    .line 147
    .end local v7    # "rules_pair":Lgnu/lists/Pair;
    .end local v10    # "rule_syntax":Lkawa/lang/SyntaxForm;
    .end local v11    # "syntax_rule":Ljava/lang/Object;
    .end local v12    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    .end local v13    # "syntax_rule_pair":Lgnu/lists/Pair;
    .end local v14    # "pattern":Ljava/lang/Object;
    .end local v15    # "save_filename":Ljava/lang/String;
    .end local v16    # "save_line":I
    .end local v17    # "save_column":I
    .end local v18    # "template_syntax":Lkawa/lang/SyntaxForm;
    :cond_9
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v9, v24

    :goto_6
    add-int/lit8 v9, v9, -0x1

    move/from16 v24, v9

    if-ltz v24, :cond_b

    .line 149
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    move-object/from16 v24, v0

    move/from16 v25, v9

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lkawa/lang/SyntaxRule;->patternNesting:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v10, v24

    .line 150
    .local v10, "size":I
    move/from16 v24, v10

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lkawa/lang/SyntaxRules;->maxVars:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_a

    .line 151
    move-object/from16 v24, v2

    move/from16 v25, v10

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 152
    :cond_a
    goto :goto_6

    .line 153
    .end local v10    # "size":I
    :cond_b
    goto/16 :goto_3
.end method

.method public constructor <init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V
    .locals 6

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxRules;
    move-object v1, p1

    .local v1, "literal_identifiers":[Ljava/lang/Object;
    move-object v2, p2

    .local v2, "rules":[Lkawa/lang/SyntaxRule;
    move v3, p3

    .local v3, "maxVars":I
    move-object v4, v0

    invoke-direct {v4}, Lgnu/mapping/Procedure1;-><init>()V

    .line 18
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 28
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    .line 29
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    .line 30
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 31
    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxRules;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v7, v1

    instance-of v7, v7, Lkawa/lang/SyntaxForm;

    if-eqz v7, :cond_0

    .line 167
    move-object v7, v1

    check-cast v7, Lkawa/lang/SyntaxForm;

    move-object v2, v7

    .line 168
    .local v2, "sf":Lkawa/lang/SyntaxForm;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v7

    check-cast v7, Lkawa/lang/Translator;

    move-object v3, v7

    .line 169
    .local v3, "tr":Lkawa/lang/Translator;
    move-object v7, v3

    invoke-virtual {v7}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v7

    move-object v4, v7

    .line 170
    .local v4, "save_scope":Lgnu/expr/ScopeExp;
    move-object v7, v3

    move-object v8, v2

    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 173
    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    :try_start_0
    invoke-virtual {v7, v8, v9}, Lkawa/lang/SyntaxRules;->expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v5, v7

    .line 177
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object v7, v5

    move-object v0, v7

    .line 181
    .end local v0    # "this":Lkawa/lang/SyntaxRules;
    .end local v2    # "sf":Lkawa/lang/SyntaxForm;
    .end local v3    # "tr":Lkawa/lang/Translator;
    .end local v4    # "save_scope":Lgnu/expr/ScopeExp;
    :goto_0
    return-object v0

    .line 177
    .restart local v0    # "this":Lkawa/lang/SyntaxRules;
    .restart local v2    # "sf":Lkawa/lang/SyntaxForm;
    .restart local v3    # "tr":Lkawa/lang/Translator;
    .restart local v4    # "save_scope":Lgnu/expr/ScopeExp;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object v7, v6

    throw v7

    .line 181
    .end local v2    # "sf":Lkawa/lang/SyntaxForm;
    .end local v3    # "tr":Lkawa/lang/Translator;
    .end local v4    # "save_scope":Lgnu/expr/ScopeExp;
    :cond_0
    move-object v7, v0

    move-object v8, v1

    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v9

    check-cast v9, Lkawa/lang/Translator;

    invoke-virtual {v7, v8, v9}, Lkawa/lang/SyntaxRules;->expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method

.method public expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxRules;
    move-object/from16 v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v10, v0

    iget v10, v10, Lkawa/lang/SyntaxRules;->maxVars:I

    new-array v10, v10, [Ljava/lang/Object;

    move-object v3, v10

    .line 207
    .local v3, "vars":[Ljava/lang/Object;
    move-object v10, v2

    invoke-virtual {v10}, Lkawa/lang/Translator;->getCurrentSyntax()Lkawa/lang/Syntax;

    move-result-object v10

    check-cast v10, Lkawa/lang/Macro;

    move-object v4, v10

    .line 212
    .local v4, "macro":Lkawa/lang/Macro;
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    :goto_0
    move v10, v5

    move-object v11, v0

    iget-object v11, v11, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    array-length v11, v11

    if-ge v10, v11, :cond_2

    .line 214
    move-object v10, v0

    iget-object v10, v10, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    move v11, v5

    aget-object v10, v10, v11

    move-object v6, v10

    .line 215
    .local v6, "rule":Lkawa/lang/SyntaxRule;
    move-object v10, v6

    if-nez v10, :cond_0

    .line 216
    new-instance v10, Lgnu/expr/ErrorExp;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "error defining "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    .line 272
    .end local v0    # "this":Lkawa/lang/SyntaxRules;
    .end local v6    # "rule":Lkawa/lang/SyntaxRule;
    :goto_1
    return-object v0

    .line 218
    .restart local v0    # "this":Lkawa/lang/SyntaxRules;
    .restart local v6    # "rule":Lkawa/lang/SyntaxRule;
    :cond_0
    move-object v10, v6

    iget-object v10, v10, Lkawa/lang/SyntaxRule;->pattern:Lkawa/lang/SyntaxPattern;

    move-object v7, v10

    .line 219
    .local v7, "pattern":Lkawa/lang/Pattern;
    move-object v10, v7

    move-object v11, v1

    move-object v12, v3

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v10

    move v8, v10

    .line 220
    .local v8, "matched":Z
    move v10, v8

    if-eqz v10, :cond_1

    .line 250
    move-object v10, v6

    move-object v11, v3

    move-object v12, v2

    move-object v13, v2

    invoke-static {v13}, Lkawa/lang/TemplateScope;->make(Lkawa/lang/Translator;)Lkawa/lang/TemplateScope;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lkawa/lang/SyntaxRule;->execute([Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    .line 264
    .local v9, "expansion":Ljava/lang/Object;
    move-object v10, v9

    move-object v0, v10

    goto :goto_1

    .line 212
    .end local v9    # "expansion":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 272
    .end local v6    # "rule":Lkawa/lang/SyntaxRule;
    .end local v7    # "pattern":Lkawa/lang/Pattern;
    .end local v8    # "matched":Z
    :cond_2
    move-object v10, v2

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "no matching syntax-rule for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v0, v10

    goto :goto_1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxRules;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v1

    const-string/jumbo v3, "#<macro "

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 279
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/text/ReportFormat;->print(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 280
    move-object v2, v1

    const/16 v3, 0x3e

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 281
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxRules;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, v2, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    .line 298
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lkawa/lang/SyntaxRule;

    check-cast v3, [Lkawa/lang/SyntaxRule;

    iput-object v3, v2, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    .line 299
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    iput v3, v2, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 300
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxRules;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 290
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 291
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lkawa/lang/SyntaxRules;->maxVars:I

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 292
    return-void
.end method
