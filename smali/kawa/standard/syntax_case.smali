.class public Lkawa/standard/syntax_case;
.super Lkawa/lang/Syntax;
.source "syntax_case.java"


# static fields
.field public static final syntax_case:Lkawa/standard/syntax_case;


# instance fields
.field call_error:Lgnu/expr/PrimProcedure;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lkawa/standard/syntax_case;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/syntax_case;-><init>()V

    sput-object v0, Lkawa/standard/syntax_case;->syntax_case:Lkawa/standard/syntax_case;

    .line 11
    sget-object v0, Lkawa/standard/syntax_case;->syntax_case:Lkawa/standard/syntax_case;

    const-string/jumbo v1, "syntax-case"

    invoke-virtual {v0, v1}, Lkawa/standard/syntax_case;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lkawa/standard/syntax_case;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "kind":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v6

    check-cast v6, Lkawa/lang/Translator;

    move-object v2, v6

    .line 167
    .local v2, "tr":Lkawa/lang/Translator;
    move-object v6, v2

    if-nez v6, :cond_0

    .line 168
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "no match in syntax-case"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 169
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Lkawa/lang/Translator;->getCurrentSyntax()Lkawa/lang/Syntax;

    move-result-object v6

    move-object v3, v6

    .line 170
    .local v3, "syntax":Lkawa/lang/Syntax;
    move-object v6, v3

    if-nez v6, :cond_1

    const-string/jumbo v6, "some syntax"

    :goto_0
    move-object v4, v6

    .line 171
    .local v4, "name":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no matching case while expanding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 172
    .local v5, "msg":Ljava/lang/String;
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "kind":Ljava/lang/String;
    return-object v0

    .line 170
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "msg":Ljava/lang/String;
    .restart local v0    # "kind":Ljava/lang/String;
    :cond_1
    move-object v6, v3

    invoke-virtual {v6}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method rewriteClauses(Ljava/lang/Object;Lkawa/standard/syntax_case_work;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 34

    .prologue
    .line 18
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/standard/syntax_case;
    move-object/from16 v3, p1

    .local v3, "clauses":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "work":Lkawa/standard/syntax_case_work;
    move-object/from16 v5, p3

    .local v5, "tr":Lkawa/lang/Translator;
    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v25}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v25

    move-object/from16 v6, v25

    .line 19
    .local v6, "language":Lgnu/expr/Language;
    move-object/from16 v25, v3

    sget-object v26, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 27
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v25, v0

    move-object/from16 v7, v25

    .line 28
    .local v7, "args":[Lgnu/expr/Expression;
    move-object/from16 v25, v7

    const/16 v26, 0x0

    new-instance v27, Lgnu/expr/QuoteExp;

    move-object/from16 v33, v27

    move-object/from16 v27, v33

    move-object/from16 v28, v33

    const-string/jumbo v29, "syntax-case"

    invoke-direct/range {v28 .. v29}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v27, v25, v26

    .line 29
    move-object/from16 v25, v7

    const/16 v26, 0x1

    new-instance v27, Lgnu/expr/ReferenceExp;

    move-object/from16 v33, v27

    move-object/from16 v27, v33

    move-object/from16 v28, v33

    move-object/from16 v29, v4

    move-object/from16 v0, v29

    iget-object v0, v0, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v27, v25, v26

    .line 30
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lkawa/standard/syntax_case;->call_error:Lgnu/expr/PrimProcedure;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    .line 32
    const-string/jumbo v25, "kawa.standard.syntax_case"

    invoke-static/range {v25 .. v25}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v25

    move-object/from16 v8, v25

    .line 33
    .local v8, "clas":Lgnu/bytecode/ClassType;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v25, v0

    move-object/from16 v9, v25

    .line 34
    .local v9, "argtypes":[Lgnu/bytecode/Type;
    move-object/from16 v25, v9

    const/16 v26, 0x0

    sget-object v27, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    aput-object v27, v25, v26

    .line 35
    move-object/from16 v25, v9

    const/16 v26, 0x1

    sget-object v27, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v27, v25, v26

    .line 36
    move-object/from16 v25, v8

    const-string/jumbo v26, "error"

    move-object/from16 v27, v9

    sget-object v28, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v29, 0x9

    invoke-virtual/range {v25 .. v29}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v25

    move-object/from16 v10, v25

    .line 39
    .local v10, "method":Lgnu/bytecode/Method;
    move-object/from16 v25, v2

    new-instance v26, Lgnu/expr/PrimProcedure;

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    move-object/from16 v28, v10

    move-object/from16 v29, v6

    invoke-direct/range {v27 .. v29}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lkawa/standard/syntax_case;->call_error:Lgnu/expr/PrimProcedure;

    .line 41
    .end local v8    # "clas":Lgnu/bytecode/ClassType;
    .end local v9    # "argtypes":[Lgnu/bytecode/Type;
    .end local v10    # "method":Lgnu/bytecode/Method;
    :cond_0
    new-instance v25, Lgnu/expr/ApplyExp;

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lkawa/standard/syntax_case;->call_error:Lgnu/expr/PrimProcedure;

    move-object/from16 v27, v0

    move-object/from16 v28, v7

    invoke-direct/range {v26 .. v28}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v2, v25

    .line 111
    .end local v2    # "this":Lkawa/standard/syntax_case;
    .end local v7    # "args":[Lgnu/expr/Expression;
    :goto_0
    return-object v2

    .line 43
    .restart local v2    # "this":Lkawa/standard/syntax_case;
    :cond_1
    move-object/from16 v25, v5

    move-object/from16 v26, v3

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v7, v25

    .line 47
    .local v7, "savePos":Ljava/lang/Object;
    move-object/from16 v25, v3

    :try_start_0
    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v25, v0

    if-eqz v25, :cond_2

    move-object/from16 v25, v3

    check-cast v25, Lgnu/lists/Pair;

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    move-object/from16 v8, v26

    .local v8, "clause":Ljava/lang/Object;
    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v25, v0

    if-nez v25, :cond_3

    .line 49
    .end local v8    # "clause":Ljava/lang/Object;
    :cond_2
    move-object/from16 v25, v5

    const-string/jumbo v26, "syntax-case:  bad clause list"

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v25

    move-object/from16 v9, v25

    .line 111
    move-object/from16 v25, v5

    move-object/from16 v26, v7

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v25, v9

    move-object/from16 v2, v25

    goto :goto_0

    .line 50
    .restart local v8    # "clause":Ljava/lang/Object;
    :cond_3
    move-object/from16 v25, v8

    :try_start_1
    check-cast v25, Lgnu/lists/Pair;

    move-object/from16 v9, v25

    .line 51
    .local v9, "pair":Lgnu/lists/Pair;
    move-object/from16 v25, v5

    invoke-static/range {v25 .. v25}, Lkawa/lang/PatternScope;->push(Lkawa/lang/Translator;)Lkawa/lang/PatternScope;

    move-result-object v25

    move-object/from16 v10, v25

    .line 52
    .local v10, "clauseScope":Lkawa/lang/PatternScope;
    move-object/from16 v25, v10

    move-object/from16 v26, v5

    move-object/from16 v0, v26

    iget-object v0, v0, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lkawa/lang/PatternScope;->matchArray:Lgnu/expr/Declaration;

    .line 53
    move-object/from16 v25, v5

    move-object/from16 v26, v10

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 55
    const/16 v25, 0x0

    move-object/from16 v11, v25

    .line 56
    .local v11, "syntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v12, v25

    .line 57
    .local v12, "tail":Ljava/lang/Object;
    :goto_1
    move-object/from16 v25, v12

    move-object/from16 v0, v25

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 59
    move-object/from16 v25, v12

    check-cast v25, Lkawa/lang/SyntaxForm;

    move-object/from16 v11, v25

    .line 60
    move-object/from16 v25, v11

    invoke-interface/range {v25 .. v25}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v12, v25

    goto :goto_1

    .line 63
    :cond_4
    move-object/from16 v25, v12

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v25, v0

    if-nez v25, :cond_5

    .line 64
    move-object/from16 v25, v5

    const-string/jumbo v26, "missing syntax-case output expression"

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v25

    move-object/from16 v13, v25

    .line 111
    move-object/from16 v25, v5

    move-object/from16 v26, v7

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v25, v13

    move-object/from16 v2, v25

    goto/16 :goto_0

    .line 66
    :cond_5
    move-object/from16 v25, v10

    :try_start_2
    move-object/from16 v0, v25

    iget-object v0, v0, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v25

    move/from16 v13, v25

    .line 67
    .local v13, "outerVarCount":I
    new-instance v25, Lkawa/lang/SyntaxPattern;

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    move-object/from16 v27, v9

    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v28, v4

    move-object/from16 v0, v28

    iget-object v0, v0, Lkawa/standard/syntax_case_work;->literal_identifiers:[Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v29, v5

    invoke-direct/range {v26 .. v29}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/Object;[Ljava/lang/Object;Lkawa/lang/Translator;)V

    move-object/from16 v14, v25

    .line 69
    .local v14, "pattern":Lkawa/lang/SyntaxPattern;
    move-object/from16 v25, v14

    invoke-virtual/range {v25 .. v25}, Lkawa/lang/SyntaxPattern;->varCount()I

    move-result v25

    move/from16 v15, v25

    .line 70
    .local v15, "varCount":I
    move/from16 v25, v15

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget v0, v0, Lkawa/standard/syntax_case_work;->maxVars:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    .line 71
    move-object/from16 v25, v4

    move/from16 v26, v15

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lkawa/standard/syntax_case_work;->maxVars:I

    .line 73
    :cond_6
    new-instance v25, Lgnu/expr/BlockExp;

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    invoke-direct/range {v26 .. v26}, Lgnu/expr/BlockExp;-><init>()V

    move-object/from16 v16, v25

    .line 74
    .local v16, "block":Lgnu/expr/BlockExp;
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v25, v0

    move-object/from16 v17, v25

    .line 75
    .local v17, "args":[Lgnu/expr/Expression;
    move-object/from16 v25, v17

    const/16 v26, 0x0

    new-instance v27, Lgnu/expr/QuoteExp;

    move-object/from16 v33, v27

    move-object/from16 v27, v33

    move-object/from16 v28, v33

    move-object/from16 v29, v14

    invoke-direct/range {v28 .. v29}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v27, v25, v26

    .line 76
    move-object/from16 v25, v17

    const/16 v26, 0x1

    new-instance v27, Lgnu/expr/ReferenceExp;

    move-object/from16 v33, v27

    move-object/from16 v27, v33

    move-object/from16 v28, v33

    move-object/from16 v29, v4

    move-object/from16 v0, v29

    iget-object v0, v0, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v27, v25, v26

    .line 77
    move-object/from16 v25, v17

    const/16 v26, 0x2

    new-instance v27, Lgnu/expr/ReferenceExp;

    move-object/from16 v33, v27

    move-object/from16 v27, v33

    move-object/from16 v28, v33

    move-object/from16 v29, v5

    move-object/from16 v0, v29

    iget-object v0, v0, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v27, v25, v26

    .line 78
    move-object/from16 v25, v17

    const/16 v26, 0x3

    new-instance v27, Lgnu/expr/QuoteExp;

    move-object/from16 v33, v27

    move-object/from16 v27, v33

    move-object/from16 v28, v33

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v27, v25, v26

    .line 79
    new-instance v25, Lgnu/expr/ApplyExp;

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    new-instance v27, Lgnu/expr/PrimProcedure;

    move-object/from16 v33, v27

    move-object/from16 v27, v33

    move-object/from16 v28, v33

    sget-object v29, Lkawa/lang/Pattern;->matchPatternMethod:Lgnu/bytecode/Method;

    move-object/from16 v30, v6

    invoke-direct/range {v28 .. v30}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    move-object/from16 v28, v17

    invoke-direct/range {v26 .. v28}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v18, v25

    .line 82
    .local v18, "tryMatch":Lgnu/expr/Expression;
    move/from16 v25, v15

    move/from16 v26, v13

    sub-int v25, v25, v26

    move/from16 v19, v25

    .line 83
    .local v19, "newVarCount":I
    move/from16 v25, v19

    move/from16 v0, v25

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v25, v0

    move-object/from16 v20, v25

    .line 84
    .local v20, "inits":[Lgnu/expr/Expression;
    move/from16 v25, v19

    move/from16 v21, v25

    .local v21, "i":I
    :goto_2
    add-int/lit8 v21, v21, -0x1

    move/from16 v25, v21

    if-ltz v25, :cond_7

    .line 85
    move-object/from16 v25, v20

    move/from16 v26, v21

    sget-object v27, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    aput-object v27, v25, v26

    goto :goto_2

    .line 86
    :cond_7
    move-object/from16 v25, v10

    move-object/from16 v26, v20

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lkawa/lang/PatternScope;->inits:[Lgnu/expr/Expression;

    .line 89
    move-object/from16 v25, v12

    check-cast v25, Lgnu/lists/Pair;

    move-object/from16 v9, v25

    .line 90
    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    sget-object v26, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 91
    move-object/from16 v25, v5

    move-object/from16 v26, v9

    move-object/from16 v27, v11

    invoke-virtual/range {v25 .. v27}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v21, v25

    .line 101
    .local v21, "output":Lgnu/expr/Expression;
    :goto_3
    move-object/from16 v25, v10

    move-object/from16 v26, v21

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/PatternScope;->setBody(Lgnu/expr/Expression;)V

    .line 103
    move-object/from16 v25, v5

    move-object/from16 v26, v10

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 104
    move-object/from16 v25, v5

    invoke-static/range {v25 .. v25}, Lkawa/lang/PatternScope;->pop(Lkawa/lang/Translator;)V

    .line 105
    move-object/from16 v25, v16

    new-instance v26, Lgnu/expr/IfExp;

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    move-object/from16 v28, v18

    move-object/from16 v29, v10

    new-instance v30, Lgnu/expr/ExitExp;

    move-object/from16 v33, v30

    move-object/from16 v30, v33

    move-object/from16 v31, v33

    move-object/from16 v32, v16

    invoke-direct/range {v31 .. v32}, Lgnu/expr/ExitExp;-><init>(Lgnu/expr/BlockExp;)V

    invoke-direct/range {v27 .. v30}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    check-cast v28, Lgnu/lists/Pair;

    invoke-virtual/range {v28 .. v28}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    invoke-virtual/range {v27 .. v30}, Lkawa/standard/syntax_case;->rewriteClauses(Ljava/lang/Object;Lkawa/standard/syntax_case_work;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lgnu/expr/BlockExp;->setBody(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    move-object/from16 v25, v16

    move-object/from16 v22, v25

    .line 111
    move-object/from16 v25, v5

    move-object/from16 v26, v7

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v25, v22

    move-object/from16 v2, v25

    goto/16 :goto_0

    .line 94
    .local v21, "i":I
    :cond_8
    move-object/from16 v25, v5

    move-object/from16 v26, v9

    move-object/from16 v27, v11

    :try_start_3
    invoke-virtual/range {v25 .. v27}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v22, v25

    .line 95
    .local v22, "fender":Lgnu/expr/Expression;
    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v25, v0

    if-eqz v25, :cond_9

    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lgnu/lists/Pair;

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    move-object/from16 v9, v26

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    sget-object v26, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_a

    .line 97
    :cond_9
    move-object/from16 v25, v5

    const-string/jumbo v26, "syntax-case:  bad clause"

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v25

    move-object/from16 v23, v25

    .line 111
    move-object/from16 v25, v5

    move-object/from16 v26, v7

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v25, v23

    move-object/from16 v2, v25

    goto/16 :goto_0

    .line 98
    :cond_a
    :try_start_4
    new-instance v25, Lgnu/expr/IfExp;

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    move-object/from16 v27, v22

    move-object/from16 v28, v5

    move-object/from16 v29, v9

    move-object/from16 v30, v11

    invoke-virtual/range {v28 .. v30}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v28

    new-instance v29, Lgnu/expr/ExitExp;

    move-object/from16 v33, v29

    move-object/from16 v29, v33

    move-object/from16 v30, v33

    move-object/from16 v31, v16

    invoke-direct/range {v30 .. v31}, Lgnu/expr/ExitExp;-><init>(Lgnu/expr/BlockExp;)V

    invoke-direct/range {v26 .. v29}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v21, v25

    .local v21, "output":Lgnu/expr/Expression;
    goto/16 :goto_3

    .line 111
    .end local v8    # "clause":Ljava/lang/Object;
    .end local v9    # "pair":Lgnu/lists/Pair;
    .end local v10    # "clauseScope":Lkawa/lang/PatternScope;
    .end local v11    # "syntax":Lkawa/lang/SyntaxForm;
    .end local v12    # "tail":Ljava/lang/Object;
    .end local v13    # "outerVarCount":I
    .end local v14    # "pattern":Lkawa/lang/SyntaxPattern;
    .end local v15    # "varCount":I
    .end local v16    # "block":Lgnu/expr/BlockExp;
    .end local v17    # "args":[Lgnu/expr/Expression;
    .end local v18    # "tryMatch":Lgnu/expr/Expression;
    .end local v19    # "newVarCount":I
    .end local v20    # "inits":[Lgnu/expr/Expression;
    .end local v21    # "output":Lgnu/expr/Expression;
    .end local v22    # "fender":Lgnu/expr/Expression;
    :catchall_0
    move-exception v25

    move-object/from16 v24, v25

    move-object/from16 v25, v5

    move-object/from16 v26, v7

    invoke-virtual/range {v25 .. v26}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v25, v24

    throw v25
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 18

    .prologue
    .line 117
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/standard/syntax_case;
    move-object/from16 v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object/from16 v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    new-instance v11, Lkawa/standard/syntax_case_work;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Lkawa/standard/syntax_case_work;-><init>()V

    move-object v3, v11

    .line 119
    .local v3, "work":Lkawa/standard/syntax_case_work;
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    .line 120
    .local v4, "obj":Ljava/lang/Object;
    move-object v11, v4

    instance-of v11, v11, Lgnu/lists/Pair;

    if-eqz v11, :cond_1

    move-object v11, v4

    check-cast v11, Lgnu/lists/Pair;

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lgnu/lists/Pair;

    if-eqz v11, :cond_1

    .line 122
    const/4 v11, 0x2

    new-array v11, v11, [Lgnu/expr/Expression;

    move-object v5, v11

    .line 123
    .local v5, "linits":[Lgnu/expr/Expression;
    new-instance v11, Lgnu/expr/LetExp;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v5

    invoke-direct {v12, v13}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object v6, v11

    .line 124
    .local v6, "let":Lgnu/expr/LetExp;
    move-object v11, v3

    move-object v12, v6

    const/4 v13, 0x0

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v12

    iput-object v12, v11, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    .line 126
    move-object v11, v2

    iget-object v11, v11, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    move-object v7, v11

    .line 127
    .local v7, "matchArrayOuter":Lgnu/expr/Declaration;
    move-object v11, v6

    const/4 v12, 0x0

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v11

    move-object v8, v11

    .line 128
    .local v8, "matchArray":Lgnu/expr/Declaration;
    move-object v11, v8

    sget-object v12, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 129
    move-object v11, v8

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 130
    move-object v11, v2

    move-object v12, v8

    iput-object v12, v11, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    .line 131
    move-object v11, v3

    iget-object v11, v11, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 132
    move-object v11, v2

    move-object v12, v6

    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 134
    move-object v11, v4

    check-cast v11, Lgnu/lists/Pair;

    move-object v1, v11

    .line 135
    move-object v11, v5

    const/4 v12, 0x0

    move-object v13, v2

    move-object v14, v1

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v13

    aput-object v13, v11, v12

    .line 136
    move-object v11, v3

    iget-object v11, v11, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    move-object v12, v5

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 137
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    .line 139
    move-object v11, v4

    check-cast v11, Lgnu/lists/Pair;

    move-object v1, v11

    .line 140
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    move-object v14, v2

    invoke-static {v12, v13, v14}, Lkawa/lang/SyntaxPattern;->getLiteralsList(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v11, Lkawa/standard/syntax_case_work;->literal_identifiers:[Ljava/lang/Object;

    .line 142
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    .line 144
    move-object v11, v6

    move-object v12, v0

    move-object v13, v4

    move-object v14, v3

    move-object v15, v2

    invoke-virtual {v12, v13, v14, v15}, Lkawa/standard/syntax_case;->rewriteClauses(Ljava/lang/Object;Lkawa/standard/syntax_case_work;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v12

    iput-object v12, v11, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 145
    move-object v11, v2

    move-object v12, v6

    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 147
    const-string/jumbo v11, "kawa.lang.SyntaxPattern"

    invoke-static {v11}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v11

    const-string/jumbo v12, "allocVars"

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    move-object v9, v11

    .line 149
    .local v9, "allocVars":Lgnu/bytecode/Method;
    const/4 v11, 0x2

    new-array v11, v11, [Lgnu/expr/Expression;

    move-object v10, v11

    .line 150
    .local v10, "args":[Lgnu/expr/Expression;
    move-object v11, v10

    const/4 v12, 0x0

    new-instance v13, Lgnu/expr/QuoteExp;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    iget v15, v15, Lkawa/standard/syntax_case_work;->maxVars:I

    invoke-static {v15}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v15

    invoke-direct {v14, v15}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v13, v11, v12

    .line 151
    move-object v11, v7

    if-nez v11, :cond_0

    .line 152
    move-object v11, v10

    const/4 v12, 0x1

    sget-object v13, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v13, v11, v12

    .line 155
    :goto_0
    move-object v11, v5

    const/4 v12, 0x1

    new-instance v13, Lgnu/expr/ApplyExp;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v9

    move-object/from16 v16, v10

    invoke-direct/range {v14 .. v16}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    aput-object v13, v11, v12

    .line 156
    move-object v11, v8

    move-object v12, v5

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 157
    move-object v11, v2

    move-object v12, v7

    iput-object v12, v11, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    .line 158
    move-object v11, v6

    move-object v0, v11

    .line 160
    .end local v0    # "this":Lkawa/standard/syntax_case;
    .end local v5    # "linits":[Lgnu/expr/Expression;
    .end local v6    # "let":Lgnu/expr/LetExp;
    .end local v7    # "matchArrayOuter":Lgnu/expr/Declaration;
    .end local v8    # "matchArray":Lgnu/expr/Declaration;
    .end local v9    # "allocVars":Lgnu/bytecode/Method;
    .end local v10    # "args":[Lgnu/expr/Expression;
    :goto_1
    return-object v0

    .line 154
    .restart local v0    # "this":Lkawa/standard/syntax_case;
    .restart local v5    # "linits":[Lgnu/expr/Expression;
    .restart local v6    # "let":Lgnu/expr/LetExp;
    .restart local v7    # "matchArrayOuter":Lgnu/expr/Declaration;
    .restart local v8    # "matchArray":Lgnu/expr/Declaration;
    .restart local v9    # "allocVars":Lgnu/bytecode/Method;
    .restart local v10    # "args":[Lgnu/expr/Expression;
    :cond_0
    move-object v11, v10

    const/4 v12, 0x1

    new-instance v13, Lgnu/expr/ReferenceExp;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v7

    invoke-direct {v14, v15}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v13, v11, v12

    goto :goto_0

    .line 160
    .end local v5    # "linits":[Lgnu/expr/Expression;
    .end local v6    # "let":Lgnu/expr/LetExp;
    .end local v7    # "matchArrayOuter":Lgnu/expr/Declaration;
    .end local v8    # "matchArray":Lgnu/expr/Declaration;
    .end local v9    # "allocVars":Lgnu/bytecode/Method;
    .end local v10    # "args":[Lgnu/expr/Expression;
    :cond_1
    move-object v11, v2

    const-string/jumbo v12, "insufficiant arguments to syntax-case"

    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v0, v11

    goto :goto_1
.end method
