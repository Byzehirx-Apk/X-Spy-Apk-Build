.class public Lkawa/standard/define_syntax;
.super Lkawa/lang/Syntax;
.source "define_syntax.java"


# static fields
.field public static final define_macro:Lkawa/standard/define_syntax;

.field public static final define_syntax:Lkawa/standard/define_syntax;

.field static makeHygienic:Lgnu/expr/PrimProcedure;

.field static makeNonHygienic:Lgnu/expr/PrimProcedure;

.field static setCapturedScope:Lgnu/expr/PrimProcedure;

.field static typeMacro:Lgnu/bytecode/ClassType;


# instance fields
.field hygienic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 13
    new-instance v0, Lkawa/standard/define_syntax;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "%define-macro"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkawa/standard/define_syntax;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lkawa/standard/define_syntax;->define_macro:Lkawa/standard/define_syntax;

    .line 16
    new-instance v0, Lkawa/standard/define_syntax;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "%define-syntax"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkawa/standard/define_syntax;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lkawa/standard/define_syntax;->define_syntax:Lkawa/standard/define_syntax;

    .line 30
    const-string/jumbo v0, "kawa.lang.Macro"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    .line 31
    new-instance v0, Lgnu/expr/PrimProcedure;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    const-string/jumbo v3, "make"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lkawa/standard/define_syntax;->makeHygienic:Lgnu/expr/PrimProcedure;

    .line 33
    new-instance v0, Lgnu/expr/PrimProcedure;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    const-string/jumbo v3, "makeNonHygienic"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lkawa/standard/define_syntax;->makeNonHygienic:Lgnu/expr/PrimProcedure;

    .line 35
    new-instance v0, Lgnu/expr/PrimProcedure;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    const-string/jumbo v3, "setCapturedScope"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lkawa/standard/define_syntax;->setCapturedScope:Lgnu/expr/PrimProcedure;

    .line 38
    sget-object v0, Lkawa/standard/define_syntax;->makeHygienic:Lgnu/expr/PrimProcedure;

    invoke-virtual {v0}, Lgnu/expr/PrimProcedure;->setSideEffectFree()V

    .line 39
    sget-object v0, Lkawa/standard/define_syntax;->makeNonHygienic:Lgnu/expr/PrimProcedure;

    invoke-virtual {v0}, Lgnu/expr/PrimProcedure;->setSideEffectFree()V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define_syntax;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    .line 21
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkawa/standard/define_syntax;->hygienic:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define_syntax;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move v2, p2

    .local v2, "hygienic":Z
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 27
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lkawa/standard/define_syntax;->hygienic:Z

    .line 28
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define_syntax;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v3, v2

    const-string/jumbo v4, "define-syntax not in a body"

    invoke-virtual {v3, v4}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lkawa/standard/define_syntax;
    return-object v0
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 23

    .prologue
    .line 51
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/standard/define_syntax;
    move-object/from16 v3, p1

    .local v3, "st":Lgnu/lists/Pair;
    move-object/from16 v4, p2

    .local v4, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v5, p3

    .local v5, "tr":Lkawa/lang/Translator;
    const/16 v17, 0x0

    move-object/from16 v6, v17

    .line 52
    .local v6, "syntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    .line 53
    .local v7, "st_cdr":Ljava/lang/Object;
    :goto_0
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 55
    move-object/from16 v17, v7

    check-cast v17, Lkawa/lang/SyntaxForm;

    move-object/from16 v6, v17

    .line 56
    move-object/from16 v17, v6

    invoke-interface/range {v17 .. v17}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    goto :goto_0

    .line 58
    :cond_0
    move-object/from16 v17, v7

    move-object/from16 v8, v17

    .line 60
    .local v8, "p":Ljava/lang/Object;
    move-object/from16 v17, v8

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 62
    move-object/from16 v17, v8

    check-cast v17, Lgnu/lists/Pair;

    move-object/from16 v10, v17

    .line 63
    .local v10, "pp":Lgnu/lists/Pair;
    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    .line 64
    .local v9, "name":Ljava/lang/Object;
    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    .line 68
    .end local v9    # "name":Ljava/lang/Object;
    .end local v10    # "pp":Lgnu/lists/Pair;
    :goto_1
    move-object/from16 v17, v6

    move-object/from16 v10, v17

    .line 69
    .local v10, "nameSyntax":Lkawa/lang/SyntaxForm;
    :goto_2
    move-object/from16 v17, v9

    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 71
    move-object/from16 v17, v9

    check-cast v17, Lkawa/lang/SyntaxForm;

    move-object/from16 v10, v17

    .line 72
    move-object/from16 v17, v10

    invoke-interface/range {v17 .. v17}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    .restart local v9    # "name":Ljava/lang/Object;
    goto :goto_2

    .line 67
    .end local v9    # "name":Ljava/lang/Object;
    .end local v10    # "nameSyntax":Lkawa/lang/SyntaxForm;
    :cond_1
    const/16 v17, 0x0

    move-object/from16 v9, v17

    .restart local v9    # "name":Ljava/lang/Object;
    goto :goto_1

    .line 74
    .end local v9    # "name":Ljava/lang/Object;
    .restart local v10    # "nameSyntax":Lkawa/lang/SyntaxForm;
    :cond_2
    move-object/from16 v17, v5

    move-object/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    .line 75
    .restart local v9    # "name":Ljava/lang/Object;
    move-object/from16 v17, v9

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 77
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "missing macro name for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v3

    invoke-static/range {v20 .. v20}, Lkawa/lang/Translator;->safeCar(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 78
    .line 126
    :goto_3
    return-void

    .line 80
    :cond_3
    move-object/from16 v17, v8

    if-eqz v17, :cond_4

    move-object/from16 v17, v8

    invoke-static/range {v17 .. v17}, Lkawa/lang/Translator;->safeCdr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 82
    :cond_4
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "invalid syntax for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lkawa/standard/define_syntax;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 83
    goto :goto_3

    .line 86
    :cond_5
    move-object/from16 v17, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v4

    invoke-virtual/range {v17 .. v20}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v17

    move-object/from16 v11, v17

    .line 87
    .local v11, "decl":Lgnu/expr/Declaration;
    move-object/from16 v17, v11

    sget-object v18, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 88
    move-object/from16 v17, v5

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 90
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    move-object/from16 v17, v0

    move-object/from16 v12, v17

    .line 91
    .local v12, "savedMacro":Lkawa/lang/Macro;
    move-object/from16 v17, v11

    invoke-static/range {v17 .. v17}, Lkawa/lang/Macro;->make(Lgnu/expr/Declaration;)Lkawa/lang/Macro;

    move-result-object v17

    move-object/from16 v13, v17

    .line 92
    .local v13, "macro":Lkawa/lang/Macro;
    move-object/from16 v17, v13

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lkawa/standard/define_syntax;->hygienic:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Macro;->setHygienic(Z)V

    .line 93
    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 94
    move-object/from16 v17, v5

    move-object/from16 v18, v8

    check-cast v18, Lgnu/lists/Pair;

    move-object/from16 v19, v6

    invoke-virtual/range {v17 .. v19}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v14, v17

    .line 95
    .local v14, "rule":Lgnu/expr/Expression;
    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 96
    move-object/from16 v17, v13

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    .line 98
    move-object/from16 v17, v14

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 99
    move-object/from16 v17, v14

    check-cast v17, Lgnu/expr/LambdaExp;

    const/16 v18, 0x100

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/LambdaExp;->setFlag(I)V

    .line 100
    :cond_6
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v17, v0

    move-object/from16 v15, v17

    .line 101
    .local v15, "args":[Lgnu/expr/Expression;
    move-object/from16 v17, v15

    const/16 v18, 0x0

    new-instance v19, Lgnu/expr/QuoteExp;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    move-object/from16 v21, v9

    invoke-direct/range {v20 .. v21}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v19, v17, v18

    .line 102
    move-object/from16 v17, v15

    const/16 v18, 0x1

    move-object/from16 v19, v14

    aput-object v19, v17, v18

    .line 103
    move-object/from16 v17, v15

    const/16 v18, 0x2

    move-object/from16 v19, v4

    invoke-static/range {v19 .. v19}, Lgnu/expr/ThisExp;->makeGivingContext(Lgnu/expr/ScopeExp;)Lgnu/expr/ThisExp;

    move-result-object v19

    aput-object v19, v17, v18

    .line 104
    new-instance v17, Lgnu/expr/ApplyExp;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lkawa/standard/define_syntax;->hygienic:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    sget-object v19, Lkawa/standard/define_syntax;->makeHygienic:Lgnu/expr/PrimProcedure;

    :goto_4
    move-object/from16 v20, v15

    invoke-direct/range {v18 .. v20}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v14, v17

    .line 106
    move-object/from16 v17, v11

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 107
    move-object/from16 v17, v11

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 109
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 111
    new-instance v17, Lgnu/expr/SetExp;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v11

    move-object/from16 v20, v14

    invoke-direct/range {v18 .. v20}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    move-object/from16 v16, v17

    .line 112
    .local v16, "result":Lgnu/expr/SetExp;
    move-object/from16 v17, v16

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 113
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 114
    move-object/from16 v17, v16

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/SetExp;->setFuncDef(Z)V

    .line 116
    :cond_7
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v17, v0

    move-object/from16 v18, v16

    invoke-virtual/range {v17 .. v18}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 118
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lkawa/lang/Translator;->immediate:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 120
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v17, v0

    move-object/from16 v15, v17

    .line 121
    move-object/from16 v17, v15

    const/16 v18, 0x0

    new-instance v19, Lgnu/expr/ReferenceExp;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    move-object/from16 v21, v11

    invoke-direct/range {v20 .. v21}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v19, v17, v18

    .line 122
    move-object/from16 v17, v15

    const/16 v18, 0x1

    new-instance v19, Lgnu/expr/QuoteExp;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    move-object/from16 v21, v4

    invoke-direct/range {v20 .. v21}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v19, v17, v18

    .line 123
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v17, v0

    new-instance v18, Lgnu/expr/ApplyExp;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    sget-object v20, Lkawa/standard/define_syntax;->setCapturedScope:Lgnu/expr/PrimProcedure;

    move-object/from16 v21, v15

    invoke-direct/range {v19 .. v21}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 126
    .end local v16    # "result":Lgnu/expr/SetExp;
    :cond_8
    goto/16 :goto_3

    .line 104
    :cond_9
    sget-object v19, Lkawa/standard/define_syntax;->makeNonHygienic:Lgnu/expr/PrimProcedure;

    goto/16 :goto_4
.end method
