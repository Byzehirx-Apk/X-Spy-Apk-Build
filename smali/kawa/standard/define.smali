.class public Lkawa/standard/define;
.super Lkawa/lang/Syntax;
.source "define.java"


# static fields
.field public static final defineRaw:Lkawa/standard/define;


# instance fields
.field lambda:Lkawa/lang/Lambda;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lkawa/standard/define;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lkawa/standard/SchemeCompilation;->lambda:Lkawa/lang/Lambda;

    invoke-direct {v1, v2}, Lkawa/standard/define;-><init>(Lkawa/lang/Lambda;)V

    sput-object v0, Lkawa/standard/define;->defineRaw:Lkawa/standard/define;

    return-void
.end method

.method public constructor <init>(Lkawa/lang/Lambda;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define;
    move-object v1, p1

    .local v1, "lambda":Lkawa/lang/Lambda;
    move-object v2, v0

    invoke-direct {v2}, Lkawa/lang/Syntax;-><init>()V

    .line 39
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/standard/define;->lambda:Lkawa/lang/Lambda;

    .line 40
    return-void
.end method


# virtual methods
.method getName(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define;
    move v1, p1

    .local v1, "options":I
    move v2, v1

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 30
    const-string/jumbo v2, "define-private"

    move-object v0, v2

    .line 34
    .end local v0    # "this":Lkawa/standard/define;
    :goto_0
    return-object v0

    .line 31
    .restart local v0    # "this":Lkawa/standard/define;
    :cond_0
    move v2, v1

    const/16 v3, 0x8

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 32
    const-string/jumbo v2, "define-constant"

    move-object v0, v2

    goto :goto_0

    .line 34
    :cond_1
    const-string/jumbo v2, "define"

    move-object v0, v2

    goto :goto_0
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 20

    .prologue
    .line 119
    move-object/from16 v1, p0

    .local v1, "this":Lkawa/standard/define;
    move-object/from16 v2, p1

    .local v2, "form":Lgnu/lists/Pair;
    move-object/from16 v3, p2

    .local v3, "tr":Lkawa/lang/Translator;
    move-object v15, v2

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/lists/Pair;

    move-object v4, v15

    .line 120
    .local v4, "p1":Lgnu/lists/Pair;
    move-object v15, v4

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/lists/Pair;

    move-object v5, v15

    .line 121
    .local v5, "p2":Lgnu/lists/Pair;
    move-object v15, v5

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/lists/Pair;

    move-object v6, v15

    .line 122
    .local v6, "p3":Lgnu/lists/Pair;
    move-object v15, v6

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/lists/Pair;

    move-object v7, v15

    .line 123
    .local v7, "p4":Lgnu/lists/Pair;
    move-object v15, v4

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v8, v15

    .line 124
    .local v8, "name":Ljava/lang/Object;
    move-object v15, v5

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    move v9, v15

    .line 125
    .local v9, "options":I
    move v15, v9

    const/16 v16, 0x4

    and-int/lit8 v15, v15, 0x4

    if-eqz v15, :cond_0

    const/4 v15, 0x1

    :goto_0
    move v10, v15

    .line 127
    .local v10, "makePrivate":Z
    move-object v15, v8

    instance-of v15, v15, Lgnu/expr/Declaration;

    if-nez v15, :cond_1

    .line 128
    move-object v15, v3

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    move/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Lkawa/standard/define;->getName(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " is only allowed in a <body>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v15

    move-object v1, v15

    .line 163
    .end local v1    # "this":Lkawa/standard/define;
    :goto_1
    return-object v1

    .line 125
    .end local v10    # "makePrivate":Z
    .restart local v1    # "this":Lkawa/standard/define;
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 129
    .restart local v10    # "makePrivate":Z
    :cond_1
    move-object v15, v8

    check-cast v15, Lgnu/expr/Declaration;

    move-object v11, v15

    .line 131
    .local v11, "decl":Lgnu/expr/Declaration;
    move-object v15, v11

    const-wide/16 v16, 0x2000

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 133
    move-object v15, v11

    invoke-virtual {v15}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v15

    move-object v12, v15

    .line 134
    .local v12, "texp":Lgnu/expr/Expression;
    move-object v15, v12

    instance-of v15, v15, Lgnu/expr/LangExp;

    if-eqz v15, :cond_2

    .line 136
    move-object v15, v12

    check-cast v15, Lgnu/expr/LangExp;

    invoke-virtual {v15}, Lgnu/expr/LangExp;->getLangValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/lists/Pair;

    move-object v13, v15

    .line 137
    .local v13, "typeSpecPair":Lgnu/lists/Pair;
    move-object v15, v11

    move-object/from16 v16, v3

    move-object/from16 v17, v13

    invoke-virtual/range {v16 .. v17}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 142
    .end local v12    # "texp":Lgnu/expr/Expression;
    .end local v13    # "typeSpecPair":Lgnu/lists/Pair;
    :cond_2
    move v15, v9

    const/16 v16, 0x2

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_5

    .line 144
    move-object v15, v11

    invoke-virtual {v15}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v15

    check-cast v15, Lgnu/expr/LambdaExp;

    move-object v13, v15

    .line 145
    .local v13, "lexp":Lgnu/expr/LambdaExp;
    move-object v15, v7

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    move-object v14, v15

    .line 146
    .local v14, "body":Ljava/lang/Object;
    move-object v15, v1

    iget-object v15, v15, Lkawa/standard/define;->lambda:Lkawa/lang/Lambda;

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    move-object/from16 v18, v3

    invoke-virtual/range {v15 .. v18}, Lkawa/lang/Lambda;->rewriteBody(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 147
    move-object v15, v13

    move-object v12, v15

    .line 148
    .local v12, "value":Lgnu/expr/Expression;
    sget-boolean v15, Lgnu/expr/Compilation;->inlineOk:Z

    if-nez v15, :cond_3

    .line 149
    move-object v15, v11

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 150
    .line 158
    .end local v13    # "lexp":Lgnu/expr/LambdaExp;
    .end local v14    # "body":Ljava/lang/Object;
    :cond_3
    :goto_2
    new-instance v15, Lgnu/expr/SetExp;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    invoke-direct/range {v16 .. v18}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    move-object v13, v15

    .line 159
    .local v13, "sexp":Lgnu/expr/SetExp;
    move-object v15, v13

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 160
    move v15, v10

    if-eqz v15, :cond_4

    move-object v15, v3

    invoke-virtual {v15}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v15

    instance-of v15, v15, Lgnu/expr/ModuleExp;

    if-nez v15, :cond_4

    .line 161
    move-object v15, v3

    const/16 v16, 0x77

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v19, v17

    move-object/from16 v17, v19

    move-object/from16 v18, v19

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "define-private not at top level "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 163
    :cond_4
    move-object v15, v13

    move-object v1, v15

    goto/16 :goto_1

    .line 153
    .end local v12    # "value":Lgnu/expr/Expression;
    .end local v13    # "sexp":Lgnu/expr/SetExp;
    :cond_5
    move-object v15, v3

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v15

    move-object v12, v15

    .line 154
    .restart local v12    # "value":Lgnu/expr/Expression;
    move-object v15, v11

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    move/from16 v16, v10

    if-nez v16, :cond_6

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x0

    :goto_3
    invoke-virtual/range {v15 .. v16}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    goto :goto_2

    :cond_6
    move-object/from16 v16, v12

    goto :goto_3
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 34

    .prologue
    .line 44
    move-object/from16 v3, p0

    .local v3, "this":Lkawa/standard/define;
    move-object/from16 v4, p1

    .local v4, "st":Lgnu/lists/Pair;
    move-object/from16 v5, p2

    .local v5, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v6, p3

    .local v6, "tr":Lkawa/lang/Translator;
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lgnu/lists/Pair;

    move-object/from16 v7, v23

    .line 45
    .local v7, "p1":Lgnu/lists/Pair;
    move-object/from16 v23, v7

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lgnu/lists/Pair;

    move-object/from16 v8, v23

    .line 46
    .local v8, "p2":Lgnu/lists/Pair;
    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lgnu/lists/Pair;

    move-object/from16 v9, v23

    .line 47
    .local v9, "p3":Lgnu/lists/Pair;
    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lgnu/lists/Pair;

    move-object/from16 v10, v23

    .line 48
    .local v10, "p4":Lgnu/lists/Pair;
    const/16 v23, 0x0

    move-object/from16 v11, v23

    .line 49
    .local v11, "nameSyntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v23, v7

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v12, v23

    .line 50
    .local v12, "name":Ljava/lang/Object;
    :goto_0
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 52
    move-object/from16 v23, v12

    check-cast v23, Lkawa/lang/SyntaxForm;

    move-object/from16 v11, v23

    .line 53
    move-object/from16 v23, v11

    invoke-interface/range {v23 .. v23}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v12, v23

    goto :goto_0

    .line 55
    :cond_0
    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Number;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Number;->intValue()I

    move-result v23

    move/from16 v13, v23

    .line 56
    .local v13, "options":I
    move/from16 v23, v13

    const/16 v24, 0x4

    and-int/lit8 v23, v23, 0x4

    if-eqz v23, :cond_a

    const/16 v23, 0x1

    :goto_1
    move/from16 v14, v23

    .line 57
    .local v14, "makePrivate":Z
    move/from16 v23, v13

    const/16 v24, 0x8

    and-int/lit8 v23, v23, 0x8

    if-eqz v23, :cond_b

    const/16 v23, 0x1

    :goto_2
    move/from16 v15, v23

    .line 59
    .local v15, "makeConstant":Z
    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v23

    move-object/from16 v16, v23

    .line 60
    .local v16, "scope":Lgnu/expr/ScopeExp;
    move-object/from16 v23, v6

    move-object/from16 v24, v12

    invoke-virtual/range {v23 .. v24}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v12, v23

    .line 61
    move-object/from16 v23, v12

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 63
    move-object/from16 v23, v6

    const/16 v24, 0x65

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "\'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v12

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\' is not a valid identifier"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 64
    const/16 v23, 0x0

    move-object/from16 v12, v23

    .line 67
    .end local v12    # "name":Ljava/lang/Object;
    :cond_1
    move-object/from16 v23, v6

    move-object/from16 v24, v7

    invoke-virtual/range {v23 .. v24}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v17, v23

    .line 68
    .local v17, "savePos":Ljava/lang/Object;
    move-object/from16 v23, v6

    move-object/from16 v24, v12

    move-object/from16 v25, v11

    move-object/from16 v26, v5

    invoke-virtual/range {v23 .. v26}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v23

    move-object/from16 v18, v23

    .line 69
    .local v18, "decl":Lgnu/expr/Declaration;
    move-object/from16 v23, v6

    move-object/from16 v24, v17

    invoke-virtual/range {v23 .. v24}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 70
    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v12, v23

    .line 71
    .restart local v12    # "name":Ljava/lang/Object;
    move/from16 v23, v14

    if-eqz v23, :cond_2

    .line 73
    move-object/from16 v23, v18

    const-wide/32 v24, 0x1000000

    invoke-virtual/range {v23 .. v25}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 74
    move-object/from16 v23, v18

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 76
    :cond_2
    move/from16 v23, v15

    if-eqz v23, :cond_3

    .line 77
    move-object/from16 v23, v18

    const-wide/16 v24, 0x4000

    invoke-virtual/range {v23 .. v25}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 78
    :cond_3
    move-object/from16 v23, v18

    const-wide/32 v24, 0x40000

    invoke-virtual/range {v23 .. v25}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 80
    move/from16 v23, v13

    const/16 v24, 0x2

    and-int/lit8 v23, v23, 0x2

    if-eqz v23, :cond_6

    .line 82
    new-instance v23, Lgnu/expr/LambdaExp;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Lgnu/expr/LambdaExp;-><init>()V

    move-object/from16 v19, v23

    .line 83
    .local v19, "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v23, v19

    move-object/from16 v24, v12

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 84
    sget-boolean v23, Lgnu/expr/Compilation;->inlineOk:Z

    if-eqz v23, :cond_4

    .line 86
    move-object/from16 v23, v18

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 87
    move-object/from16 v23, v18

    sget-object v24, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 88
    move-object/from16 v23, v19

    move-object/from16 v24, v18

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 90
    :cond_4
    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v20, v23

    .line 91
    .local v20, "formals":Ljava/lang/Object;
    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v21, v23

    .line 92
    .local v21, "body":Ljava/lang/Object;
    move-object/from16 v23, v19

    move-object/from16 v24, v7

    invoke-static/range {v23 .. v24}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 93
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/standard/define;->lambda:Lkawa/lang/Lambda;

    move-object/from16 v23, v0

    move-object/from16 v24, v19

    move-object/from16 v25, v20

    move-object/from16 v26, v6

    const/16 v27, 0x0

    invoke-virtual/range {v23 .. v27}, Lkawa/lang/Lambda;->rewriteFormals(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 94
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/standard/define;->lambda:Lkawa/lang/Lambda;

    move-object/from16 v23, v0

    move-object/from16 v24, v19

    move-object/from16 v25, v21

    move-object/from16 v26, v6

    invoke-virtual/range {v23 .. v26}, Lkawa/lang/Lambda;->rewriteAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v22, v23

    .line 95
    .local v22, "realBody":Ljava/lang/Object;
    move-object/from16 v23, v22

    move-object/from16 v24, v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 96
    new-instance v23, Lgnu/lists/Pair;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v25, v8

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v25

    new-instance v26, Lgnu/lists/Pair;

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    move-object/from16 v28, v9

    invoke-virtual/range {v28 .. v28}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v28

    new-instance v29, Lgnu/lists/Pair;

    move-object/from16 v33, v29

    move-object/from16 v29, v33

    move-object/from16 v30, v33

    move-object/from16 v31, v20

    move-object/from16 v32, v22

    invoke-direct/range {v30 .. v32}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct/range {v27 .. v29}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct/range {v24 .. v26}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v8, v23

    .line 97
    :cond_5
    move-object/from16 v23, v18

    move-object/from16 v24, v19

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 100
    .end local v19    # "lexp":Lgnu/expr/LambdaExp;
    .end local v20    # "formals":Ljava/lang/Object;
    .end local v21    # "body":Ljava/lang/Object;
    .end local v22    # "realBody":Ljava/lang/Object;
    :cond_6
    move-object/from16 v23, v5

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v23, v0

    if-eqz v23, :cond_8

    move/from16 v23, v14

    if-nez v23, :cond_8

    sget-boolean v23, Lgnu/expr/Compilation;->inlineOk:Z

    if-eqz v23, :cond_7

    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Lkawa/lang/Translator;->sharedModuleDefs()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 102
    :cond_7
    move-object/from16 v23, v18

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 104
    :cond_8
    move/from16 v23, v13

    const/16 v24, 0x1

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_9

    .line 106
    move-object/from16 v23, v18

    new-instance v24, Lgnu/expr/LangExp;

    move-object/from16 v33, v24

    move-object/from16 v24, v33

    move-object/from16 v25, v33

    move-object/from16 v26, v9

    invoke-direct/range {v25 .. v26}, Lgnu/expr/LangExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 107
    move-object/from16 v23, v18

    const-wide/16 v24, 0x2000

    invoke-virtual/range {v23 .. v25}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 110
    :cond_9
    move-object/from16 v23, v4

    move-object/from16 v24, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v18

    move-object/from16 v27, v8

    invoke-static/range {v25 .. v27}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v25

    invoke-static/range {v23 .. v25}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v23

    move-object/from16 v4, v23

    .line 112
    move-object/from16 v23, v18

    move-object/from16 v24, v7

    invoke-static/range {v23 .. v24}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 114
    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    invoke-virtual/range {v23 .. v24}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 115
    return-void

    .line 56
    .end local v14    # "makePrivate":Z
    .end local v15    # "makeConstant":Z
    .end local v16    # "scope":Lgnu/expr/ScopeExp;
    .end local v17    # "savePos":Ljava/lang/Object;
    .end local v18    # "decl":Lgnu/expr/Declaration;
    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 57
    .restart local v14    # "makePrivate":Z
    :cond_b
    const/16 v23, 0x0

    goto/16 :goto_2
.end method
