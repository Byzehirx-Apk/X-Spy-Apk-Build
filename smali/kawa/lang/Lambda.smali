.class public Lkawa/lang/Lambda;
.super Lkawa/lang/Syntax;
.source "Lambda.java"


# static fields
.field public static final nameKeyword:Lgnu/expr/Keyword;


# instance fields
.field public defaultDefault:Lgnu/expr/Expression;

.field public keyKeyword:Ljava/lang/Object;

.field public optionalKeyword:Ljava/lang/Object;

.field public restKeyword:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "name"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/lang/Lambda;->nameKeyword:Lgnu/expr/Keyword;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Lambda;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    .line 22
    move-object v1, v0

    sget-object v2, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    iput-object v2, v1, Lkawa/lang/Lambda;->defaultDefault:Lgnu/expr/Expression;

    return-void
.end method

.method private static addParam(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;Lgnu/expr/LambdaExp;Lkawa/lang/Translator;)V
    .locals 7

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "decl":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "templateScope":Lgnu/expr/ScopeExp;
    move-object v2, p2

    .local v2, "lexp":Lgnu/expr/LambdaExp;
    move-object v3, p3

    .local v3, "tr":Lkawa/lang/Translator;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 359
    move-object v4, v3

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lkawa/lang/Translator;->makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v4

    move-object v0, v4

    .line 360
    :cond_0
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 361
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 362
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 363
    :cond_1
    return-void
.end method


# virtual methods
.method public print(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Lambda;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v1

    const-string/jumbo v3, "#<builtin lambda>"

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 644
    return-void
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 13

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Lambda;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v6, v1

    instance-of v6, v6, Lgnu/lists/Pair;

    if-nez v6, :cond_0

    .line 41
    move-object v6, v2

    const-string/jumbo v7, "missing formals in lambda"

    invoke-virtual {v6, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    .line 49
    .end local v0    # "this":Lkawa/lang/Lambda;
    :goto_0
    return-object v0

    .line 42
    .restart local v0    # "this":Lkawa/lang/Lambda;
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/text/SourceMessages;->getErrorCount()I

    move-result v6

    move v3, v6

    .line 43
    .local v3, "old_errors":I
    new-instance v6, Lgnu/expr/LambdaExp;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lgnu/expr/LambdaExp;-><init>()V

    move-object v4, v6

    .line 44
    .local v4, "lexp":Lgnu/expr/LambdaExp;
    move-object v6, v1

    check-cast v6, Lgnu/lists/Pair;

    move-object v5, v6

    .line 45
    .local v5, "pair":Lgnu/lists/Pair;
    move-object v6, v4

    move-object v7, v5

    invoke-static {v6, v7}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 46
    move-object v6, v0

    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v2

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lkawa/lang/Lambda;->rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 47
    move-object v6, v2

    invoke-virtual {v6}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/text/SourceMessages;->getErrorCount()I

    move-result v6

    move v7, v3

    if-le v6, v7, :cond_1

    .line 48
    new-instance v6, Lgnu/expr/ErrorExp;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "bad lambda expression"

    invoke-direct {v7, v8}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    .line 49
    :cond_1
    move-object v6, v4

    move-object v0, v6

    goto :goto_0
.end method

.method public rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V
    .locals 11

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Lambda;
    move-object v1, p1

    .local v1, "lexp":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "formals":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "body":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "tr":Lkawa/lang/Translator;
    move-object/from16 v5, p5

    .local v5, "templateScopeRest":Lkawa/lang/TemplateScope;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Lkawa/lang/Lambda;->rewriteFormals(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 62
    move-object v6, v3

    instance-of v6, v6, Lgnu/lists/PairWithPosition;

    if-eqz v6, :cond_0

    .line 63
    move-object v6, v1

    move-object v7, v3

    check-cast v7, Lgnu/lists/PairWithPosition;

    invoke-virtual {v7}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/expr/LambdaExp;->setFile(Ljava/lang/String;)V

    .line 64
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lkawa/lang/Lambda;->rewriteAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 65
    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lkawa/lang/Lambda;->rewriteBody(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 66
    return-void
.end method

.method public rewriteAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 31

    .prologue
    .line 367
    move-object/from16 v3, p0

    .local v3, "this":Lkawa/lang/Lambda;
    move-object/from16 v4, p1

    .local v4, "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v5, p2

    .local v5, "body":Ljava/lang/Object;
    move-object/from16 v6, p3

    .local v6, "tr":Lkawa/lang/Translator;
    const/16 v23, 0x0

    move-object/from16 v7, v23

    .line 368
    .local v7, "accessFlagName":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v8, v23

    .line 369
    .local v8, "allocationFlagName":Ljava/lang/String;
    const/16 v23, 0x0

    move/from16 v9, v23

    .line 370
    .local v9, "accessFlag":I
    const/16 v23, 0x0

    move/from16 v10, v23

    .line 371
    .local v10, "allocationFlag":I
    const/16 v23, 0x0

    move-object/from16 v11, v23

    .line 374
    .local v11, "syntax0":Lkawa/lang/SyntaxForm;
    :goto_0
    move-object/from16 v23, v5

    move-object/from16 v0, v23

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 376
    move-object/from16 v23, v5

    check-cast v23, Lkawa/lang/SyntaxForm;

    move-object/from16 v11, v23

    .line 377
    move-object/from16 v23, v11

    invoke-interface/range {v23 .. v23}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v5, v23

    goto :goto_0

    .line 379
    :cond_0
    move-object/from16 v23, v5

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 380
    .line 516
    :goto_1
    move/from16 v23, v9

    move/from16 v24, v10

    or-int v23, v23, v24

    move/from16 v9, v23

    .line 517
    move/from16 v23, v9

    if-eqz v23, :cond_1

    .line 518
    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v23, v0

    move/from16 v24, v9

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 519
    :cond_1
    move-object/from16 v23, v11

    if-eqz v23, :cond_2

    .line 520
    move-object/from16 v23, v5

    move-object/from16 v24, v11

    invoke-static/range {v23 .. v24}, Lkawa/lang/SyntaxForms;->fromDatumIfNeeded(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v5, v23

    .line 521
    :cond_2
    move-object/from16 v23, v5

    move-object/from16 v3, v23

    .end local v3    # "this":Lkawa/lang/Lambda;
    return-object v3

    .line 381
    .restart local v3    # "this":Lkawa/lang/Lambda;
    :cond_3
    move-object/from16 v23, v5

    check-cast v23, Lgnu/lists/Pair;

    move-object/from16 v12, v23

    .line 382
    .local v12, "pair1":Lgnu/lists/Pair;
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v13, v23

    .line 383
    .local v13, "attrName":Ljava/lang/Object;
    move-object/from16 v23, v6

    move-object/from16 v24, v13

    const-string/jumbo v25, "::"

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 384
    const/16 v23, 0x0

    move-object/from16 v13, v23

    .line 388
    .end local v13    # "attrName":Ljava/lang/Object;
    :cond_4
    move-object/from16 v23, v11

    move-object/from16 v14, v23

    .line 389
    .local v14, "syntax1":Lkawa/lang/SyntaxForm;
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v15, v23

    .line 390
    .local v15, "pair1_cdr":Ljava/lang/Object;
    :goto_2
    move-object/from16 v23, v15

    move-object/from16 v0, v23

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 392
    move-object/from16 v23, v15

    check-cast v23, Lkawa/lang/SyntaxForm;

    move-object/from16 v14, v23

    .line 393
    move-object/from16 v23, v14

    invoke-interface/range {v23 .. v23}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v15, v23

    goto :goto_2

    .line 385
    .end local v14    # "syntax1":Lkawa/lang/SyntaxForm;
    .end local v15    # "pair1_cdr":Ljava/lang/Object;
    .restart local v13    # "attrName":Ljava/lang/Object;
    :cond_5
    move-object/from16 v23, v13

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v23, v0

    if-nez v23, :cond_4

    .line 386
    goto/16 :goto_1

    .line 395
    .end local v13    # "attrName":Ljava/lang/Object;
    .restart local v14    # "syntax1":Lkawa/lang/SyntaxForm;
    .restart local v15    # "pair1_cdr":Ljava/lang/Object;
    :cond_6
    move-object/from16 v23, v15

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-nez v23, :cond_7

    .line 396
    goto/16 :goto_1

    .line 397
    :cond_7
    move-object/from16 v23, v15

    check-cast v23, Lgnu/lists/Pair;

    move-object/from16 v16, v23

    .line 400
    .local v16, "pair2":Lgnu/lists/Pair;
    move-object/from16 v23, v13

    if-nez v23, :cond_9

    .line 402
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v23

    if-eqz v23, :cond_8

    const-string/jumbo v23, "*init*"

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 403
    move-object/from16 v23, v6

    const/16 v24, 0x65

    const-string/jumbo v25, "explicit return type for \'*init*\' method"

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 514
    :goto_3
    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v5, v23

    .line 515
    goto/16 :goto_0

    .line 406
    :cond_8
    move-object/from16 v23, v4

    new-instance v24, Lgnu/expr/LangExp;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    const/16 v28, 0x0

    move-object/from16 v29, v16

    aput-object v29, v27, v28

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    const/16 v28, 0x1

    move-object/from16 v29, v14

    aput-object v29, v27, v28

    invoke-direct/range {v25 .. v26}, Lgnu/expr/LangExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    goto :goto_3

    .line 408
    :cond_9
    move-object/from16 v23, v13

    sget-object v24, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 410
    move-object/from16 v23, v6

    move-object/from16 v24, v16

    move-object/from16 v25, v14

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v23

    move-object/from16 v18, v23

    .line 411
    .local v18, "attrExpr":Lgnu/expr/Expression;
    move-object/from16 v23, v18

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    move-object/from16 v23, v18

    check-cast v23, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v30, v23

    move-object/from16 v23, v30

    move-object/from16 v24, v30

    move-object/from16 v17, v24

    .local v17, "attrValue":Ljava/lang/Object;
    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/mapping/SimpleSymbol;

    move/from16 v23, v0

    if-nez v23, :cond_b

    move-object/from16 v23, v17

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/lang/CharSequence;

    move/from16 v23, v0

    if-nez v23, :cond_b

    .line 420
    .end local v17    # "attrValue":Ljava/lang/Object;
    :cond_a
    move-object/from16 v23, v6

    const/16 v24, 0x65

    const-string/jumbo v25, "access: value not a constant symbol or string"

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 444
    :goto_4
    goto/16 :goto_3

    .line 421
    .restart local v17    # "attrValue":Ljava/lang/Object;
    :cond_b
    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v23, v0

    if-nez v23, :cond_c

    .line 422
    move-object/from16 v23, v6

    const/16 v24, 0x65

    const-string/jumbo v25, "access: not allowed for anonymous function"

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_4

    .line 425
    :cond_c
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v19, v23

    .line 426
    .local v19, "value":Ljava/lang/String;
    const-string/jumbo v23, "private"

    move-object/from16 v24, v19

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 427
    const/high16 v23, 0x1000000

    move/from16 v9, v23

    .line 436
    :goto_5
    move-object/from16 v23, v7

    if-eqz v23, :cond_d

    move-object/from16 v23, v19

    if-eqz v23, :cond_d

    .line 438
    move-object/from16 v23, v6

    const/16 v24, 0x65

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "duplicate access specifiers - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v7

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " and "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v19

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 442
    :cond_d
    move-object/from16 v23, v19

    move-object/from16 v7, v23

    goto :goto_4

    .line 428
    :cond_e
    const-string/jumbo v23, "protected"

    move-object/from16 v24, v19

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 429
    const/high16 v23, 0x2000000

    move/from16 v9, v23

    goto :goto_5

    .line 430
    :cond_f
    const-string/jumbo v23, "public"

    move-object/from16 v24, v19

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 431
    const/high16 v23, 0x4000000

    move/from16 v9, v23

    goto :goto_5

    .line 432
    :cond_10
    const-string/jumbo v23, "package"

    move-object/from16 v24, v19

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 433
    const/high16 v23, 0x8000000

    move/from16 v9, v23

    goto :goto_5

    .line 435
    :cond_11
    move-object/from16 v23, v6

    const/16 v24, 0x65

    const-string/jumbo v25, "unknown access specifier"

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_5

    .line 445
    .end local v17    # "attrValue":Ljava/lang/Object;
    .end local v18    # "attrExpr":Lgnu/expr/Expression;
    .end local v19    # "value":Ljava/lang/String;
    :cond_12
    move-object/from16 v23, v13

    sget-object v24, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1a

    .line 447
    move-object/from16 v23, v6

    move-object/from16 v24, v16

    move-object/from16 v25, v14

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v23

    move-object/from16 v18, v23

    .line 448
    .restart local v18    # "attrExpr":Lgnu/expr/Expression;
    move-object/from16 v23, v18

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v23, v0

    if-eqz v23, :cond_13

    move-object/from16 v23, v18

    check-cast v23, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v30, v23

    move-object/from16 v23, v30

    move-object/from16 v24, v30

    move-object/from16 v17, v24

    .restart local v17    # "attrValue":Ljava/lang/Object;
    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/mapping/SimpleSymbol;

    move/from16 v23, v0

    if-nez v23, :cond_14

    move-object/from16 v23, v17

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/lang/CharSequence;

    move/from16 v23, v0

    if-nez v23, :cond_14

    .line 457
    .end local v17    # "attrValue":Ljava/lang/Object;
    :cond_13
    move-object/from16 v23, v6

    const/16 v24, 0x65

    const-string/jumbo v25, "allocation: value not a constant symbol or string"

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 477
    :goto_6
    goto/16 :goto_3

    .line 458
    .restart local v17    # "attrValue":Ljava/lang/Object;
    :cond_14
    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v23, v0

    if-nez v23, :cond_15

    .line 459
    move-object/from16 v23, v6

    const/16 v24, 0x65

    const-string/jumbo v25, "allocation: not allowed for anonymous function"

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_6

    .line 462
    :cond_15
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v19, v23

    .line 463
    .restart local v19    # "value":Ljava/lang/String;
    const-string/jumbo v23, "class"

    move-object/from16 v24, v19

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_16

    const-string/jumbo v23, "static"

    move-object/from16 v24, v19

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 464
    :cond_16
    const/16 v23, 0x800

    move/from16 v10, v23

    .line 469
    :goto_7
    move-object/from16 v23, v8

    if-eqz v23, :cond_17

    move-object/from16 v23, v19

    if-eqz v23, :cond_17

    .line 471
    move-object/from16 v23, v6

    const/16 v24, 0x65

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "duplicate allocation specifiers - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v8

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " and "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v19

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 475
    :cond_17
    move-object/from16 v23, v19

    move-object/from16 v8, v23

    goto :goto_6

    .line 465
    :cond_18
    const-string/jumbo v23, "instance"

    move-object/from16 v24, v19

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 466
    const/16 v23, 0x1000

    move/from16 v10, v23

    goto :goto_7

    .line 468
    :cond_19
    move-object/from16 v23, v6

    const/16 v24, 0x65

    const-string/jumbo v25, "unknown allocation specifier"

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_7

    .line 478
    .end local v17    # "attrValue":Ljava/lang/Object;
    .end local v18    # "attrExpr":Lgnu/expr/Expression;
    .end local v19    # "value":Ljava/lang/String;
    :cond_1a
    move-object/from16 v23, v13

    sget-object v24, Lkawa/standard/object;->throwsKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1e

    .line 480
    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v17, v23

    .line 481
    .restart local v17    # "attrValue":Ljava/lang/Object;
    move-object/from16 v23, v17

    invoke-static/range {v23 .. v23}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v23

    move/from16 v18, v23

    .line 482
    .local v18, "count":I
    move/from16 v23, v18

    if-gez v23, :cond_1b

    .line 483
    move-object/from16 v23, v6

    const/16 v24, 0x65

    const-string/jumbo v25, "throws: not followed by a list"

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 503
    :goto_8
    goto/16 :goto_3

    .line 486
    :cond_1b
    move/from16 v23, v18

    move/from16 v0, v23

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v23, v0

    move-object/from16 v19, v23

    .line 487
    .local v19, "exps":[Lgnu/expr/Expression;
    move-object/from16 v23, v14

    move-object/from16 v20, v23

    .line 488
    .local v20, "syntax2":Lkawa/lang/SyntaxForm;
    const/16 v23, 0x0

    move/from16 v21, v23

    .local v21, "i":I
    :goto_9
    move/from16 v23, v21

    move/from16 v24, v18

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1d

    .line 490
    :goto_a
    move-object/from16 v23, v17

    move-object/from16 v0, v23

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_1c

    .line 492
    move-object/from16 v23, v17

    check-cast v23, Lkawa/lang/SyntaxForm;

    move-object/from16 v20, v23

    .line 493
    move-object/from16 v23, v20

    invoke-interface/range {v23 .. v23}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v17, v23

    goto :goto_a

    .line 495
    :cond_1c
    move-object/from16 v23, v17

    check-cast v23, Lgnu/lists/Pair;

    move-object/from16 v22, v23

    .line 496
    .local v22, "pair3":Lgnu/lists/Pair;
    move-object/from16 v23, v19

    move/from16 v24, v21

    move-object/from16 v25, v6

    move-object/from16 v26, v22

    move-object/from16 v27, v20

    invoke-virtual/range {v25 .. v27}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v25

    aput-object v25, v23, v24

    .line 498
    move-object/from16 v23, v19

    move/from16 v24, v21

    aget-object v23, v23, v24

    move-object/from16 v24, v22

    invoke-static/range {v23 .. v24}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 499
    move-object/from16 v23, v22

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v17, v23

    .line 488
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 501
    .end local v22    # "pair3":Lgnu/lists/Pair;
    :cond_1d
    move-object/from16 v23, v4

    move-object/from16 v24, v19

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/LambdaExp;->setExceptions([Lgnu/expr/Expression;)V

    goto :goto_8

    .line 504
    .end local v17    # "attrValue":Ljava/lang/Object;
    .end local v18    # "count":I
    .end local v19    # "exps":[Lgnu/expr/Expression;
    .end local v20    # "syntax2":Lkawa/lang/SyntaxForm;
    .end local v21    # "i":I
    :cond_1e
    move-object/from16 v23, v13

    sget-object v24, Lkawa/lang/Lambda;->nameKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_20

    .line 506
    move-object/from16 v23, v6

    move-object/from16 v24, v16

    move-object/from16 v25, v14

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v23

    move-object/from16 v18, v23

    .line 507
    .local v18, "attrExpr":Lgnu/expr/Expression;
    move-object/from16 v23, v18

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v23, v0

    if-eqz v23, :cond_1f

    .line 508
    move-object/from16 v23, v4

    move-object/from16 v24, v18

    check-cast v24, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v24 .. v24}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 509
    :cond_1f
    goto/16 :goto_3

    .line 512
    .end local v18    # "attrExpr":Lgnu/expr/Expression;
    :cond_20
    move-object/from16 v23, v6

    const/16 v24, 0x77

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "unknown procedure property "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v13

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_3
.end method

.method public rewriteBody(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 27

    .prologue
    .line 543
    move-object/from16 v3, p0

    .local v3, "this":Lkawa/lang/Lambda;
    move-object/from16 v4, p1

    .local v4, "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v5, p2

    .local v5, "body":Ljava/lang/Object;
    move-object/from16 v6, p3

    .local v6, "tr":Lkawa/lang/Translator;
    const/16 v21, 0x0

    move/from16 v7, v21

    .line 546
    .local v7, "numRenamedAlias":I
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v21

    const/high16 v22, 0x20000

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 549
    move-object/from16 v21, v6

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 550
    :cond_0
    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v21

    move-object/from16 v8, v21

    .line 551
    .local v8, "curs":Lgnu/expr/ScopeExp;
    move-object/from16 v21, v6

    move-object/from16 v22, v4

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 552
    const/16 v21, 0x0

    move-object/from16 v9, v21

    .line 553
    .local v9, "prev":Lgnu/expr/Declaration;
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v21, v0

    if-nez v21, :cond_5

    const/16 v21, 0x0

    :goto_0
    move/from16 v10, v21

    .line 554
    .local v10, "key_args":I
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    const/16 v21, 0x0

    :goto_1
    move/from16 v11, v21

    .line 556
    .local v11, "opt_args":I
    const/16 v21, 0x0

    move/from16 v12, v21

    .line 557
    .local v12, "arg_i":I
    const/16 v21, 0x0

    move/from16 v13, v21

    .line 558
    .local v13, "opt_i":I
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v21

    move-object/from16 v14, v21

    .local v14, "cur":Lgnu/expr/Declaration;
    :goto_2
    move-object/from16 v21, v14

    if-eqz v21, :cond_7

    .line 560
    move-object/from16 v21, v14

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 562
    move-object/from16 v21, v14

    invoke-static/range {v21 .. v21}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v21

    move-object/from16 v15, v21

    .line 563
    .local v15, "param":Lgnu/expr/Declaration;
    move-object/from16 v21, v4

    move-object/from16 v22, v9

    move-object/from16 v23, v15

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/LambdaExp;->replaceFollowing(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 564
    move-object/from16 v21, v15

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 565
    move-object/from16 v21, v6

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->pushRenamedAlias(Lgnu/expr/Declaration;)V

    .line 566
    add-int/lit8 v7, v7, 0x1

    .line 567
    move-object/from16 v21, v15

    move-object/from16 v14, v21

    .line 569
    .end local v15    # "param":Lgnu/expr/Declaration;
    :cond_1
    move-object/from16 v21, v14

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v15, v21

    .line 570
    .local v15, "texp":Lgnu/expr/Expression;
    move-object/from16 v21, v15

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/LangExp;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 572
    move-object/from16 v21, v15

    check-cast v21, Lgnu/expr/LangExp;

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LangExp;->getLangValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v16, v21

    .line 573
    .local v16, "typeSpecPair":Lgnu/lists/Pair;
    move-object/from16 v21, v14

    move-object/from16 v22, v6

    move-object/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 575
    .end local v16    # "typeSpecPair":Lgnu/lists/Pair;
    :cond_2
    move-object/from16 v21, v14

    move-object/from16 v9, v21

    .line 577
    move/from16 v21, v12

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    move/from16 v21, v12

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v22, v0

    move/from16 v23, v11

    add-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v21, v0

    if-gez v21, :cond_3

    move/from16 v21, v12

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v22, v0

    move/from16 v23, v11

    add-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 582
    :cond_3
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move/from16 v22, v13

    move-object/from16 v23, v6

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v24, v0

    move/from16 v25, v13

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v23

    aput-object v23, v21, v22

    .line 583
    add-int/lit8 v13, v13, 0x1

    .line 585
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 587
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object/from16 v21, v0

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 558
    move-object/from16 v21, v14

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v21

    move-object/from16 v14, v21

    goto/16 :goto_2

    .line 553
    .end local v10    # "key_args":I
    .end local v11    # "opt_args":I
    .end local v12    # "arg_i":I
    .end local v13    # "opt_i":I
    .end local v14    # "cur":Lgnu/expr/Declaration;
    .end local v15    # "texp":Lgnu/expr/Expression;
    :cond_5
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    goto/16 :goto_0

    .line 554
    .restart local v10    # "key_args":I
    :cond_6
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v22, v10

    sub-int v21, v21, v22

    goto/16 :goto_1

    .line 590
    .restart local v11    # "opt_args":I
    .restart local v12    # "arg_i":I
    .restart local v13    # "opt_i":I
    .restart local v14    # "cur":Lgnu/expr/Declaration;
    :cond_7
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x800

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v21

    if-nez v21, :cond_8

    .line 594
    move-object/from16 v21, v4

    const/16 v22, 0x0

    new-instance v23, Lgnu/expr/Declaration;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    sget-object v25, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct/range {v24 .. v25}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/LambdaExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 597
    :cond_8
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lkawa/lang/Translator;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v21, v0

    move-object/from16 v14, v21

    .line 598
    .local v14, "saveLambda":Lgnu/expr/LambdaExp;
    move-object/from16 v21, v6

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lkawa/lang/Translator;->curLambda:Lgnu/expr/LambdaExp;

    .line 599
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    move-object/from16 v21, v0

    move-object/from16 v15, v21

    .line 600
    .local v15, "rtype":Lgnu/bytecode/Type;
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/LangExp;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 602
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v21, v0

    check-cast v21, Lgnu/expr/LangExp;

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LangExp;->getLangValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/Object;

    check-cast v21, [Ljava/lang/Object;

    move-object/from16 v16, v21

    .line 603
    .local v16, "tform":[Ljava/lang/Object;
    move-object/from16 v21, v6

    move-object/from16 v22, v16

    const/16 v23, 0x0

    aget-object v22, v22, v23

    check-cast v22, Lgnu/lists/Pair;

    move-object/from16 v23, v16

    const/16 v24, 0x1

    aget-object v23, v23, v24

    check-cast v23, Lkawa/lang/SyntaxForm;

    invoke-virtual/range {v21 .. v23}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v17, v21

    .line 605
    .local v17, "texp":Lgnu/expr/Expression;
    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v21

    move-object/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v21

    move-object/from16 v15, v21

    .line 607
    .end local v16    # "tform":[Ljava/lang/Object;
    .end local v17    # "texp":Lgnu/expr/Expression;
    :cond_9
    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 608
    move-object/from16 v21, v6

    move-object/from16 v22, v14

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lkawa/lang/Translator;->curLambda:Lgnu/expr/LambdaExp;

    .line 612
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/BeginExp;

    move/from16 v21, v0

    if-eqz v21, :cond_d

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v21, v0

    check-cast v21, Lgnu/expr/BeginExp;

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v16, v22

    .local v16, "exps":[Lgnu/expr/Expression;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v26, v21

    move/from16 v21, v26

    move/from16 v22, v26

    move/from16 v17, v22

    .local v17, "len":I
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_d

    move-object/from16 v21, v16

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v21, v0

    if-nez v21, :cond_a

    move-object/from16 v21, v16

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v18, v22

    .local v18, "val":Ljava/lang/Object;
    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/bytecode/Type;

    move/from16 v21, v0

    if-nez v21, :cond_a

    move-object/from16 v21, v18

    move-object/from16 v0, v21

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 619
    .end local v18    # "val":Ljava/lang/Object;
    :cond_a
    move-object/from16 v21, v16

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v19, v21

    .line 620
    .local v19, "rexp":Lgnu/expr/Expression;
    add-int/lit8 v17, v17, -0x1

    .line 621
    move/from16 v21, v17

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 622
    move-object/from16 v21, v4

    move-object/from16 v22, v16

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 629
    :goto_3
    move-object/from16 v21, v4

    move-object/from16 v22, v19

    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/LambdaExp;->setCoercedReturnValue(Lgnu/expr/Expression;Lgnu/expr/Language;)V

    .line 630
    .line 633
    .end local v16    # "exps":[Lgnu/expr/Expression;
    .end local v17    # "len":I
    .end local v19    # "rexp":Lgnu/expr/Expression;
    :goto_4
    move-object/from16 v21, v6

    move-object/from16 v22, v4

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 634
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LambdaExp;->countDecls()I

    move-result v21

    .line 635
    move-object/from16 v21, v6

    move/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->popRenamedAlias(I)V

    .line 636
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LambdaExp;->countDecls()I

    move-result v21

    .line 637
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v21, v0

    move-object/from16 v22, v4

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 638
    move-object/from16 v21, v6

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 639
    :cond_b
    return-void

    .line 625
    .restart local v16    # "exps":[Lgnu/expr/Expression;
    .restart local v17    # "len":I
    .restart local v19    # "rexp":Lgnu/expr/Expression;
    :cond_c
    move/from16 v21, v17

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v20, v21

    .line 626
    .local v20, "new_body":[Lgnu/expr/Expression;
    move-object/from16 v21, v16

    const/16 v22, 0x1

    move-object/from16 v23, v20

    const/16 v24, 0x0

    move/from16 v25, v17

    invoke-static/range {v21 .. v25}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    move-object/from16 v21, v4

    move-object/from16 v22, v20

    invoke-static/range {v22 .. v22}, Lgnu/expr/BeginExp;->canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    goto :goto_3

    .line 632
    .end local v16    # "exps":[Lgnu/expr/Expression;
    .end local v17    # "len":I
    .end local v19    # "rexp":Lgnu/expr/Expression;
    .end local v20    # "new_body":[Lgnu/expr/Expression;
    :cond_d
    move-object/from16 v21, v4

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/LambdaExp;->setCoercedReturnType(Lgnu/bytecode/Type;)V

    goto :goto_4
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Lambda;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lkawa/lang/Lambda;->rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v3, v4

    .line 34
    .local v3, "exp":Lgnu/expr/Expression;
    move-object v4, v3

    move-object v5, v1

    invoke-static {v4, v5}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 35
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lkawa/lang/Lambda;
    return-object v0
.end method

.method public rewriteFormals(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V
    .locals 27

    .prologue
    .line 71
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/lang/Lambda;
    move-object/from16 v3, p1

    .local v3, "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v4, p2

    .local v4, "formals":Ljava/lang/Object;
    move-object/from16 v5, p3

    .local v5, "tr":Lkawa/lang/Translator;
    move-object/from16 v6, p4

    .local v6, "templateScopeRest":Lkawa/lang/TemplateScope;
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v21

    if-nez v21, :cond_0

    .line 73
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v7, v21

    .line 74
    .local v7, "filename":Ljava/lang/String;
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v21

    move/from16 v8, v21

    .line 75
    .local v8, "line":I
    move-object/from16 v21, v7

    if-eqz v21, :cond_0

    move/from16 v21, v8

    if-lez v21, :cond_0

    .line 76
    move-object/from16 v21, v3

    move-object/from16 v22, v7

    move/from16 v23, v8

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/LambdaExp;->setSourceLocation(Ljava/lang/String;I)V

    .line 79
    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "line":I
    :cond_0
    move-object/from16 v21, v4

    move-object/from16 v7, v21

    .line 80
    .local v7, "bindings":Ljava/lang/Object;
    const/16 v21, -0x1

    move/from16 v8, v21

    .line 81
    .local v8, "opt_args":I
    const/16 v21, -0x1

    move/from16 v9, v21

    .line 82
    .local v9, "rest_args":I
    const/16 v21, -0x1

    move/from16 v10, v21

    .line 86
    .local v10, "key_args":I
    :goto_0
    move-object/from16 v21, v7

    move-object/from16 v0, v21

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 88
    move-object/from16 v21, v7

    check-cast v21, Lkawa/lang/SyntaxForm;

    move-object/from16 v12, v21

    .line 90
    .local v12, "sf":Lkawa/lang/SyntaxForm;
    move-object/from16 v21, v12

    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    .line 92
    .end local v12    # "sf":Lkawa/lang/SyntaxForm;
    :cond_1
    move-object/from16 v21, v7

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-nez v21, :cond_3

    .line 93
    .line 151
    move-object/from16 v21, v7

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v21, v0

    if-eqz v21, :cond_14

    .line 153
    move/from16 v21, v8

    if-gez v21, :cond_2

    move/from16 v21, v10

    if-gez v21, :cond_2

    move/from16 v21, v9

    if-ltz v21, :cond_12

    .line 155
    :cond_2
    move-object/from16 v21, v5

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "dotted rest-arg after "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", or "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 157
    .line 353
    :goto_1
    return-void

    .line 94
    :cond_3
    move-object/from16 v21, v7

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v11, v21

    .line 96
    .local v11, "pair":Lgnu/lists/Pair;
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v12, v21

    .line 97
    .local v12, "pair_car":Ljava/lang/Object;
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 98
    move-object/from16 v21, v12

    check-cast v21, Lkawa/lang/SyntaxForm;

    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v12, v21

    .line 99
    :cond_4
    move-object/from16 v21, v12

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 101
    move/from16 v21, v8

    if-ltz v21, :cond_5

    .line 103
    move-object/from16 v21, v5

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "multiple "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " in parameter list"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 104
    goto :goto_1

    .line 106
    :cond_5
    move/from16 v21, v9

    if-gez v21, :cond_6

    move/from16 v21, v10

    if-ltz v21, :cond_7

    .line 108
    :cond_6
    move-object/from16 v21, v5

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " after "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " or "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 109
    goto/16 :goto_1

    .line 111
    :cond_7
    const/16 v21, 0x0

    move/from16 v8, v21

    .line 149
    :goto_2
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    .line 84
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    goto/16 :goto_0

    .line 113
    :cond_8
    move-object/from16 v21, v12

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 115
    move/from16 v21, v9

    if-ltz v21, :cond_9

    .line 117
    move-object/from16 v21, v5

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "multiple "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " in parameter list"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 119
    goto/16 :goto_1

    .line 121
    :cond_9
    move/from16 v21, v10

    if-ltz v21, :cond_a

    .line 123
    move-object/from16 v21, v5

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " after "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 125
    goto/16 :goto_1

    .line 127
    :cond_a
    const/16 v21, 0x0

    move/from16 v9, v21

    goto/16 :goto_2

    .line 129
    :cond_b
    move-object/from16 v21, v12

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 131
    move/from16 v21, v10

    if-ltz v21, :cond_c

    .line 133
    move-object/from16 v21, v5

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "multiple "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " in parameter list"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 135
    goto/16 :goto_1

    .line 137
    :cond_c
    const/16 v21, 0x0

    move/from16 v10, v21

    goto/16 :goto_2

    .line 139
    :cond_d
    move-object/from16 v21, v5

    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v22

    const-string/jumbo v23, "::"

    invoke-virtual/range {v21 .. v23}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 140
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v11, v21

    goto/16 :goto_2

    .line 141
    :cond_e
    move/from16 v21, v10

    if-ltz v21, :cond_f

    .line 142
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 143
    :cond_f
    move/from16 v21, v9

    if-ltz v21, :cond_10

    .line 144
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 145
    :cond_10
    move/from16 v21, v8

    if-ltz v21, :cond_11

    .line 146
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 148
    :cond_11
    move-object/from16 v21, v3

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v22, v0

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lgnu/expr/LambdaExp;->min_args:I

    goto/16 :goto_2

    .line 159
    .end local v11    # "pair":Lgnu/lists/Pair;
    .end local v12    # "pair_car":Ljava/lang/Object;
    :cond_12
    const/16 v21, 0x1

    move/from16 v9, v21

    .line 166
    :cond_13
    move/from16 v21, v9

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_15

    .line 168
    move-object/from16 v21, v5

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "multiple "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " parameters"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 169
    goto/16 :goto_1

    .line 161
    :cond_14
    move-object/from16 v21, v7

    sget-object v22, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_13

    .line 163
    move-object/from16 v21, v5

    const-string/jumbo v22, "misformed formals in lambda"

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 164
    goto/16 :goto_1

    .line 171
    :cond_15
    move/from16 v21, v8

    if-gez v21, :cond_16

    .line 172
    const/16 v21, 0x0

    move/from16 v8, v21

    .line 173
    :cond_16
    move/from16 v21, v9

    if-gez v21, :cond_17

    .line 174
    const/16 v21, 0x0

    move/from16 v9, v21

    .line 175
    :cond_17
    move/from16 v21, v10

    if-gez v21, :cond_18

    .line 176
    const/16 v21, 0x0

    move/from16 v10, v21

    .line 177
    :cond_18
    move/from16 v21, v9

    if-lez v21, :cond_1e

    .line 178
    move-object/from16 v21, v3

    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lgnu/expr/LambdaExp;->max_args:I

    .line 181
    :goto_3
    move/from16 v21, v8

    move/from16 v22, v10

    add-int v21, v21, v22

    if-lez v21, :cond_19

    .line 182
    move-object/from16 v21, v3

    move/from16 v22, v8

    move/from16 v23, v10

    add-int v22, v22, v23

    move/from16 v0, v22

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    .line 183
    :cond_19
    move/from16 v21, v10

    if-lez v21, :cond_1a

    .line 184
    move-object/from16 v21, v3

    move/from16 v22, v10

    move/from16 v0, v22

    new-array v0, v0, [Lgnu/expr/Keyword;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    .line 186
    :cond_1a
    move-object/from16 v21, v4

    move-object/from16 v7, v21

    .line 187
    const/16 v21, 0x0

    move/from16 v8, v21

    .line 188
    const/16 v21, 0x0

    move/from16 v10, v21

    .line 189
    const/16 v21, 0x0

    move-object/from16 v12, v21

    .line 192
    :goto_4
    move-object/from16 v21, v7

    move-object/from16 v0, v21

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v21, v0

    if-eqz v21, :cond_1b

    .line 194
    move-object/from16 v21, v7

    check-cast v21, Lkawa/lang/SyntaxForm;

    move-object/from16 v13, v21

    .line 195
    .local v13, "sf":Lkawa/lang/SyntaxForm;
    move-object/from16 v21, v13

    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    .line 198
    move-object/from16 v21, v13

    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v21

    move-object/from16 v6, v21

    .line 200
    .end local v13    # "sf":Lkawa/lang/SyntaxForm;
    :cond_1b
    move-object/from16 v21, v6

    move-object/from16 v13, v21

    .line 201
    .local v13, "templateScope":Lkawa/lang/TemplateScope;
    move-object/from16 v21, v7

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-nez v21, :cond_1f

    .line 202
    .line 339
    move-object/from16 v21, v7

    move-object/from16 v0, v21

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v21, v0

    if-eqz v21, :cond_1c

    .line 341
    move-object/from16 v21, v7

    check-cast v21, Lkawa/lang/SyntaxForm;

    move-object/from16 v13, v21

    .line 342
    .local v13, "sf":Lkawa/lang/SyntaxForm;
    move-object/from16 v21, v13

    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    .line 343
    move-object/from16 v21, v13

    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v21

    move-object/from16 v6, v21

    .line 345
    .end local v13    # "sf":Lkawa/lang/SyntaxForm;
    :cond_1c
    move-object/from16 v21, v7

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v21, v0

    if-eqz v21, :cond_1d

    .line 347
    new-instance v21, Lgnu/expr/Declaration;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v23, v7

    invoke-direct/range {v22 .. v23}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object/from16 v13, v21

    .line 348
    .local v13, "decl":Lgnu/expr/Declaration;
    move-object/from16 v21, v13

    sget-object v22, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 349
    move-object/from16 v21, v13

    const-wide/32 v22, 0x40000

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 350
    move-object/from16 v21, v13

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 351
    move-object/from16 v21, v13

    move-object/from16 v22, v6

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    invoke-static/range {v21 .. v24}, Lkawa/lang/Lambda;->addParam(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;Lgnu/expr/LambdaExp;Lkawa/lang/Translator;)V

    .line 353
    .end local v13    # "decl":Lgnu/expr/Declaration;
    :cond_1d
    goto/16 :goto_1

    .line 180
    :cond_1e
    move-object/from16 v21, v3

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v22, v0

    move/from16 v23, v8

    add-int v22, v22, v23

    const/16 v23, 0x2

    move/from16 v24, v10

    mul-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lgnu/expr/LambdaExp;->max_args:I

    goto/16 :goto_3

    .line 203
    .local v13, "templateScope":Lkawa/lang/TemplateScope;
    :cond_1f
    move-object/from16 v21, v7

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v11, v21

    .line 204
    .restart local v11    # "pair":Lgnu/lists/Pair;
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    .line 205
    .local v14, "pair_car":Ljava/lang/Object;
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v21, v0

    if-eqz v21, :cond_20

    .line 207
    move-object/from16 v21, v14

    check-cast v21, Lkawa/lang/SyntaxForm;

    move-object/from16 v15, v21

    .line 208
    .local v15, "sf":Lkawa/lang/SyntaxForm;
    move-object/from16 v21, v15

    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    .line 209
    move-object/from16 v21, v15

    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v21

    move-object/from16 v13, v21

    .line 211
    .end local v15    # "sf":Lkawa/lang/SyntaxForm;
    :cond_20
    move-object/from16 v21, v14

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_21

    move-object/from16 v21, v14

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_21

    move-object/from16 v21, v14

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_22

    .line 214
    :cond_21
    move-object/from16 v21, v14

    move-object/from16 v12, v21

    .line 190
    :goto_5
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    goto/16 :goto_4

    .line 217
    :cond_22
    move-object/from16 v21, v5

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v15, v21

    .line 218
    .local v15, "savePos":Ljava/lang/Object;
    const/16 v21, 0x0

    move-object/from16 v16, v21

    .line 219
    .local v16, "name":Ljava/lang/Object;
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lkawa/lang/Lambda;->defaultDefault:Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v17, v21

    .line 220
    .local v17, "defaultValue":Lgnu/expr/Expression;
    const/16 v21, 0x0

    move-object/from16 v18, v21

    .line 222
    .local v18, "typeSpecPair":Lgnu/lists/Pair;
    move-object/from16 v21, v5

    move-object/from16 v22, v14

    const-string/jumbo v23, "::"

    invoke-virtual/range {v21 .. v23}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_23

    .line 224
    move-object/from16 v21, v5

    const-string/jumbo v22, "\'::\' must follow parameter name"

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 225
    goto/16 :goto_1

    .line 227
    :cond_23
    move-object/from16 v21, v5

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    .line 228
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v21, v0

    if-eqz v21, :cond_26

    .line 230
    move-object/from16 v21, v14

    move-object/from16 v16, v21

    .line 231
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-eqz v21, :cond_25

    move-object/from16 v21, v5

    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lgnu/lists/Pair;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    move-object/from16 v19, v23

    .local v19, "p":Lgnu/lists/Pair;
    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v22

    const-string/jumbo v23, "::"

    invoke-virtual/range {v21 .. v23}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_25

    .line 234
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-nez v21, :cond_24

    .line 236
    move-object/from16 v21, v5

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "\'::\' not followed by a type specifier (for parameter \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\')"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 238
    goto/16 :goto_1

    .line 240
    :cond_24
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v19, v21

    .line 241
    move-object/from16 v21, v19

    move-object/from16 v18, v21

    .line 242
    move-object/from16 v21, v19

    move-object/from16 v11, v21

    .line 314
    .end local v16    # "name":Ljava/lang/Object;
    .end local v17    # "defaultValue":Lgnu/expr/Expression;
    .end local v19    # "p":Lgnu/lists/Pair;
    :cond_25
    move-object/from16 v21, v16

    if-nez v21, :cond_30

    .line 316
    move-object/from16 v21, v5

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "parameter is neither name nor (name :: type) nor (name default): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v11

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 317
    goto/16 :goto_1

    .line 245
    .restart local v16    # "name":Ljava/lang/Object;
    .restart local v17    # "defaultValue":Lgnu/expr/Expression;
    :cond_26
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-eqz v21, :cond_25

    .line 247
    move-object/from16 v21, v14

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v19, v21

    .line 248
    .restart local v19    # "p":Lgnu/lists/Pair;
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    .line 249
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v21, v0

    if-eqz v21, :cond_27

    .line 251
    move-object/from16 v21, v14

    check-cast v21, Lkawa/lang/SyntaxForm;

    move-object/from16 v20, v21

    .line 252
    .local v20, "sf":Lkawa/lang/SyntaxForm;
    move-object/from16 v21, v20

    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    .line 253
    move-object/from16 v21, v20

    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v21

    move-object/from16 v13, v21

    .line 255
    .end local v20    # "sf":Lkawa/lang/SyntaxForm;
    :cond_27
    move-object/from16 v21, v5

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    .line 256
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v21, v0

    if-eqz v21, :cond_25

    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-eqz v21, :cond_25

    .line 259
    move-object/from16 v21, v14

    move-object/from16 v16, v21

    .line 260
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v19, v21

    .line 261
    move-object/from16 v21, v5

    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v22

    const-string/jumbo v23, "::"

    invoke-virtual/range {v21 .. v23}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_29

    .line 263
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-nez v21, :cond_28

    .line 265
    move-object/from16 v21, v5

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "\'::\' not followed by a type specifier (for parameter \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\')"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 267
    goto/16 :goto_1

    .line 269
    :cond_28
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v19, v21

    .line 270
    move-object/from16 v21, v19

    move-object/from16 v18, v21

    .line 271
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-eqz v21, :cond_2b

    .line 272
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v19, v21

    .line 282
    :cond_29
    :goto_6
    move-object/from16 v21, v19

    if-eqz v21, :cond_2a

    move-object/from16 v21, v12

    if-eqz v21, :cond_2a

    .line 284
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v17, v21

    .line 285
    .local v17, "defaultValue":Ljava/lang/Object;
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-eqz v21, :cond_2d

    .line 286
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v19, v21

    .line 296
    .end local v17    # "defaultValue":Ljava/lang/Object;
    :cond_2a
    :goto_7
    move-object/from16 v21, v19

    if-eqz v21, :cond_25

    .line 298
    move-object/from16 v21, v18

    if-eqz v21, :cond_2f

    .line 300
    move-object/from16 v21, v5

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "duplicate type specifier for parameter \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x27

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 302
    goto/16 :goto_1

    .line 273
    .local v17, "defaultValue":Lgnu/expr/Expression;
    :cond_2b
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    sget-object v22, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2c

    .line 274
    const/16 v21, 0x0

    move-object/from16 v19, v21

    goto :goto_6

    .line 277
    :cond_2c
    move-object/from16 v21, v5

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "improper list in specifier for parameter \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\')"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 279
    goto/16 :goto_1

    .line 287
    .local v17, "defaultValue":Ljava/lang/Object;
    :cond_2d
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    sget-object v22, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2e

    .line 288
    const/16 v21, 0x0

    move-object/from16 v19, v21

    goto/16 :goto_7

    .line 291
    :cond_2e
    move-object/from16 v21, v5

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "improper list in specifier for parameter \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\')"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 293
    goto/16 :goto_1

    .line 304
    .end local v17    # "defaultValue":Ljava/lang/Object;
    :cond_2f
    move-object/from16 v21, v19

    move-object/from16 v18, v21

    .line 305
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    sget-object v22, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_25

    .line 307
    move-object/from16 v21, v5

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "junk at end of specifier for parameter \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x27

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " after type "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v19

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 309
    goto/16 :goto_1

    .line 319
    .end local v16    # "name":Ljava/lang/Object;
    .end local v19    # "p":Lgnu/lists/Pair;
    :cond_30
    move-object/from16 v21, v12

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_31

    move-object/from16 v21, v12

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_32

    .line 320
    :cond_31
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    new-instance v23, Lgnu/expr/LangExp;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    move-object/from16 v25, v17

    invoke-direct/range {v24 .. v25}, Lgnu/expr/LangExp;-><init>(Ljava/lang/Object;)V

    aput-object v23, v21, v22

    .line 321
    :cond_32
    move-object/from16 v21, v12

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_33

    .line 322
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v21, v0

    move/from16 v22, v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v23, v0

    if-eqz v23, :cond_35

    move-object/from16 v23, v16

    check-cast v23, Lgnu/mapping/Symbol;

    invoke-virtual/range {v23 .. v23}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v23

    :goto_8
    invoke-static/range {v23 .. v23}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v23

    aput-object v23, v21, v22

    .line 325
    :cond_33
    new-instance v21, Lgnu/expr/Declaration;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v23, v16

    invoke-direct/range {v22 .. v23}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object/from16 v20, v21

    .line 326
    .local v20, "decl":Lgnu/expr/Declaration;
    move-object/from16 v21, v20

    move-object/from16 v22, v7

    invoke-static/range {v21 .. v22}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 327
    move-object/from16 v21, v18

    if-eqz v21, :cond_36

    .line 329
    move-object/from16 v21, v20

    new-instance v22, Lgnu/expr/LangExp;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    move-object/from16 v24, v18

    invoke-direct/range {v23 .. v24}, Lgnu/expr/LangExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 330
    move-object/from16 v21, v20

    const-wide/16 v22, 0x2000

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 334
    :cond_34
    :goto_9
    move-object/from16 v21, v20

    const-wide/32 v22, 0x40000

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 335
    move-object/from16 v21, v20

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 336
    move-object/from16 v21, v20

    move-object/from16 v22, v13

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    invoke-static/range {v21 .. v24}, Lkawa/lang/Lambda;->addParam(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;Lgnu/expr/LambdaExp;Lkawa/lang/Translator;)V

    .line 337
    move-object/from16 v21, v5

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 322
    .end local v20    # "decl":Lgnu/expr/Declaration;
    :cond_35
    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_8

    .line 332
    .restart local v20    # "decl":Lgnu/expr/Declaration;
    :cond_36
    move-object/from16 v21, v12

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_34

    .line 333
    move-object/from16 v21, v20

    sget-object v22, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_9
.end method

.method public setKeywords(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Lambda;
    move-object v1, p1

    .local v1, "optional":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "rest":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "key":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    .line 27
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    .line 28
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public skipAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Lambda;
    move-object v1, p1

    .local v1, "lexp":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "body":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "tr":Lkawa/lang/Translator;
    :goto_0
    move-object v6, v2

    instance-of v6, v6, Lgnu/lists/Pair;

    if-eqz v6, :cond_0

    .line 528
    move-object v6, v2

    check-cast v6, Lgnu/lists/Pair;

    move-object v4, v6

    .line 529
    .local v4, "pair":Lgnu/lists/Pair;
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lgnu/lists/Pair;

    if-nez v6, :cond_1

    .line 530
    .line 538
    .end local v4    # "pair":Lgnu/lists/Pair;
    :cond_0
    :goto_1
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Lkawa/lang/Lambda;
    return-object v0

    .line 531
    .restart local v0    # "this":Lkawa/lang/Lambda;
    .restart local v4    # "pair":Lgnu/lists/Pair;
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 532
    .local v5, "attrName":Ljava/lang/Object;
    move-object v6, v3

    move-object v7, v5

    const-string/jumbo v8, "::"

    invoke-virtual {v6, v7, v8}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 533
    const/4 v6, 0x0

    move-object v5, v6

    .line 536
    .end local v5    # "attrName":Ljava/lang/Object;
    :cond_2
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 537
    goto :goto_0

    .line 534
    .restart local v5    # "attrName":Ljava/lang/Object;
    :cond_3
    move-object v6, v5

    instance-of v6, v6, Lgnu/expr/Keyword;

    if-nez v6, :cond_2

    .line 535
    goto :goto_1
.end method
