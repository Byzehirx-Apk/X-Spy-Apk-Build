.class public Lkawa/lang/Quote;
.super Lkawa/lang/Syntax;
.source "Quote.java"


# static fields
.field private static final CYCLE:Ljava/lang/Object;

.field protected static final QUOTE_DEPTH:I = -0x1

.field private static final WORKING:Ljava/lang/Object;

.field static final appendMethod:Lgnu/bytecode/Method;

.field static final consXMethod:Lgnu/bytecode/Method;

.field static final makePairMethod:Lgnu/bytecode/Method;

.field static final makeVectorMethod:Lgnu/bytecode/Method;

.field public static final plainQuote:Lkawa/lang/Quote;

.field public static final quasiQuote:Lkawa/lang/Quote;

.field static final quoteType:Lgnu/bytecode/ClassType;

.field static final vectorAppendMethod:Lgnu/bytecode/Method;


# instance fields
.field protected isQuasi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 21
    new-instance v0, Lkawa/lang/Quote;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "quote"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkawa/lang/Quote;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/lang/Quote;->plainQuote:Lkawa/lang/Quote;

    .line 22
    new-instance v0, Lkawa/lang/Quote;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "quasiquote"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkawa/lang/Quote;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/lang/Quote;->quasiQuote:Lkawa/lang/Quote;

    .line 289
    new-instance v0, Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "(working)"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/lang/Quote;->WORKING:Ljava/lang/Object;

    .line 290
    new-instance v0, Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "(cycle)"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    .line 475
    const-string/jumbo v0, "kawa.standard.vector_append"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string/jumbo v1, "apply$V"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->vectorAppendMethod:Lgnu/bytecode/Method;

    .line 478
    const-string/jumbo v0, "kawa.lang.Quote"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->quoteType:Lgnu/bytecode/ClassType;

    .line 479
    sget-object v0, Lkawa/lang/Quote;->quoteType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "consX$V"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->consXMethod:Lgnu/bytecode/Method;

    .line 480
    sget-object v0, Lkawa/lang/Quote;->quoteType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "append$V"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->appendMethod:Lgnu/bytecode/Method;

    .line 481
    sget-object v0, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "make"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->makePairMethod:Lgnu/bytecode/Method;

    .line 482
    const-string/jumbo v0, "gnu.lists.FVector"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string/jumbo v1, "make"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->makeVectorMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Quote;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "isQuasi":Z
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 27
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lkawa/lang/Quote;->isQuasi:Z

    .line 28
    return-void
.end method

.method public static append$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .prologue
    .line 435
    move-object/from16 v0, p0

    .local v0, "args":[Ljava/lang/Object;
    move-object v11, v0

    array-length v11, v11

    move v1, v11

    .line 436
    .local v1, "count":I
    move v11, v1

    if-nez v11, :cond_0

    .line 437
    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v11

    .line 472
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 438
    .restart local v0    # "args":[Ljava/lang/Object;
    :cond_0
    move-object v11, v0

    move v12, v1

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    aget-object v11, v11, v12

    move-object v2, v11

    .line 439
    .local v2, "result":Ljava/lang/Object;
    move v11, v1

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v3, v11

    .end local v2    # "result":Ljava/lang/Object;
    .local v3, "i":I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v11, v3

    if-ltz v11, :cond_6

    .line 441
    move-object v11, v0

    move v12, v3

    aget-object v11, v11, v12

    move-object v4, v11

    .line 442
    .local v4, "list":Ljava/lang/Object;
    const/4 v11, 0x0

    move-object v5, v11

    .line 443
    .local v5, "copy":Ljava/lang/Object;
    const/4 v11, 0x0

    move-object v6, v11

    .line 444
    .local v6, "last":Lgnu/lists/Pair;
    const/4 v11, 0x0

    move-object v7, v11

    .line 447
    .end local v5    # "copy":Ljava/lang/Object;
    .local v7, "syntax":Lkawa/lang/SyntaxForm;
    :goto_2
    move-object v11, v4

    instance-of v11, v11, Lkawa/lang/SyntaxForm;

    if-eqz v11, :cond_1

    .line 449
    move-object v11, v4

    check-cast v11, Lkawa/lang/SyntaxForm;

    move-object v7, v11

    .line 450
    move-object v11, v7

    invoke-interface {v11}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    goto :goto_2

    .line 452
    :cond_1
    move-object v11, v4

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v11, v12, :cond_3

    .line 453
    .line 466
    move-object v11, v6

    if-eqz v11, :cond_2

    .line 468
    move-object v11, v6

    move-object v12, v2

    invoke-virtual {v11, v12}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .line 469
    move-object v11, v5

    move-object v2, v11

    .line 471
    :cond_2
    goto :goto_1

    .line 454
    :cond_3
    move-object v11, v4

    check-cast v11, Lgnu/lists/Pair;

    move-object v8, v11

    .line 455
    .local v8, "list_pair":Lgnu/lists/Pair;
    move-object v11, v8

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 456
    .local v9, "car":Ljava/lang/Object;
    move-object v11, v7

    if-eqz v11, :cond_4

    move-object v11, v9

    instance-of v11, v11, Lkawa/lang/SyntaxForm;

    if-nez v11, :cond_4

    .line 457
    move-object v11, v9

    move-object v12, v7

    invoke-interface {v12}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v12

    invoke-static {v11, v12}, Lkawa/lang/SyntaxForms;->makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 458
    :cond_4
    new-instance v11, Lgnu/lists/Pair;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v9

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v10, v11

    .line 459
    .local v10, "new_pair":Lgnu/lists/Pair;
    move-object v11, v6

    if-nez v11, :cond_5

    .line 460
    move-object v11, v10

    move-object v5, v11

    .line 463
    :goto_3
    move-object v11, v10

    move-object v6, v11

    .line 464
    move-object v11, v8

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    .line 465
    goto :goto_2

    .line 462
    :cond_5
    move-object v11, v6

    move-object v12, v10

    invoke-virtual {v11, v12}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    goto :goto_3

    .line 472
    .end local v4    # "list":Ljava/lang/Object;
    .end local v6    # "last":Lgnu/lists/Pair;
    .end local v7    # "syntax":Lkawa/lang/SyntaxForm;
    .end local v8    # "list_pair":Lgnu/lists/Pair;
    .end local v9    # "car":Ljava/lang/Object;
    .end local v10    # "new_pair":Lgnu/lists/Pair;
    :cond_6
    move-object v11, v2

    move-object v0, v11

    goto :goto_0
.end method

.method public static consX$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lgnu/lists/LList;->consX([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0
.end method

.method private static makeInvokeMakeVector([Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;
    .locals 6

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "args":[Lgnu/expr/Expression;
    new-instance v1, Lgnu/expr/ApplyExp;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Lkawa/lang/Quote;->makeVectorMethod:Lgnu/bytecode/Method;

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v0, v1

    .end local v0    # "args":[Lgnu/expr/Expression;
    return-object v0
.end method

.method public static makeSymbol(Lgnu/mapping/Namespace;Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "ns":Lgnu/mapping/Namespace;
    move-object v1, p1

    .local v1, "local":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 80
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 87
    .local v2, "name":Ljava/lang/String;
    :goto_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "ns":Lgnu/mapping/Namespace;
    return-object v0

    .line 86
    .end local v2    # "name":Ljava/lang/String;
    .restart local v0    # "ns":Lgnu/mapping/Namespace;
    :cond_0
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public static quote(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Lkawa/lang/Quote;->plainQuote:Lkawa/lang/Quote;

    move-object v2, v0

    const/4 v3, -0x1

    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v4

    check-cast v4, Lkawa/lang/Translator;

    invoke-virtual {v1, v2, v3, v4}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public static quote(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "tr":Lkawa/lang/Translator;
    sget-object v2, Lkawa/lang/Quote;->plainQuote:Lkawa/lang/Quote;

    move-object v3, v0

    const/4 v4, -0x1

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method protected coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Quote;
    move-object v1, p1

    .local v1, "val":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v3, v1

    instance-of v3, v3, Lgnu/expr/Expression;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lgnu/expr/Expression;

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lkawa/lang/Quote;
    return-object v0

    .restart local v0    # "this":Lkawa/lang/Quote;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v3

    goto :goto_0
.end method

.method expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 30

    .prologue
    .line 305
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/lang/Quote;
    move-object/from16 v3, p1

    .local v3, "template":Ljava/lang/Object;
    move/from16 v4, p2

    .local v4, "depth":I
    move-object/from16 v5, p3

    .local v5, "syntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v6, p4

    .local v6, "seen":Ljava/lang/Object;
    move-object/from16 v7, p5

    .local v7, "tr":Lkawa/lang/Translator;
    move-object/from16 v21, v6

    check-cast v21, Ljava/util/IdentityHashMap;

    move-object/from16 v8, v21

    .line 306
    .local v8, "map":Ljava/util/IdentityHashMap;
    move-object/from16 v21, v8

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v9, v21

    .line 307
    .local v9, "old":Ljava/lang/Object;
    move-object/from16 v21, v9

    sget-object v22, Lkawa/lang/Quote;->WORKING:Ljava/lang/Object;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 309
    move-object/from16 v21, v8

    move-object/from16 v22, v3

    sget-object v23, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    invoke-virtual/range {v21 .. v23}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 310
    move-object/from16 v21, v9

    move-object/from16 v2, v21

    .line 409
    .end local v2    # "this":Lkawa/lang/Quote;
    :goto_0
    return-object v2

    .line 312
    .restart local v2    # "this":Lkawa/lang/Quote;
    :cond_0
    move-object/from16 v21, v9

    sget-object v22, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 314
    move-object/from16 v21, v9

    move-object/from16 v2, v21

    goto :goto_0

    .line 316
    :cond_1
    move-object/from16 v21, v9

    if-eqz v21, :cond_2

    .line 317
    move-object/from16 v21, v9

    move-object/from16 v2, v21

    goto :goto_0

    .line 320
    :cond_2
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 321
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    check-cast v22, Lgnu/lists/Pair;

    move/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    invoke-virtual/range {v21 .. v26}, Lkawa/lang/Quote;->expand_pair(Lgnu/lists/Pair;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v10, v21

    .line 405
    :goto_1
    move-object/from16 v21, v3

    move-object/from16 v22, v10

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_3

    move-object/from16 v21, v8

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    sget-object v22, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 406
    move-object/from16 v21, v7

    const/16 v22, 0x65

    const-string/jumbo v23, "cycle in non-literal data"

    invoke-virtual/range {v21 .. v23}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 407
    :cond_3
    move-object/from16 v21, v8

    move-object/from16 v22, v3

    move-object/from16 v23, v10

    invoke-virtual/range {v21 .. v23}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 409
    move-object/from16 v21, v10

    move-object/from16 v2, v21

    goto :goto_0

    .line 322
    :cond_4
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 324
    move-object/from16 v21, v3

    check-cast v21, Lkawa/lang/SyntaxForm;

    move-object/from16 v5, v21

    .line 325
    move-object/from16 v21, v2

    move-object/from16 v22, v5

    invoke-interface/range {v22 .. v22}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v22

    move/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    invoke-virtual/range {v21 .. v26}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v10, v21

    .local v10, "result":Ljava/lang/Object;
    goto :goto_1

    .line 327
    .end local v10    # "result":Ljava/lang/Object;
    :cond_5
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/FVector;

    move/from16 v21, v0

    if-eqz v21, :cond_14

    .line 329
    move-object/from16 v21, v3

    check-cast v21, Lgnu/lists/FVector;

    move-object/from16 v11, v21

    .line 330
    .local v11, "vector":Lgnu/lists/FVector;
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/FVector;->size()I

    move-result v21

    move/from16 v12, v21

    .line 331
    .local v12, "n":I
    move/from16 v21, v12

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v13, v21

    .line 337
    .local v13, "buffer":[Ljava/lang/Object;
    move/from16 v21, v12

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v14, v21

    .line 338
    .local v14, "state":[B
    const/16 v21, 0x0

    move/from16 v15, v21

    .line 339
    .local v15, "max_state":B
    const/16 v21, 0x0

    move/from16 v16, v21

    .local v16, "i":I
    :goto_2
    move/from16 v21, v16

    move/from16 v22, v12

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 341
    move-object/from16 v21, v11

    move/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Lgnu/lists/FVector;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v17, v21

    .line 342
    .local v17, "element":Ljava/lang/Object;
    move/from16 v21, v4

    move/from16 v18, v21

    .line 344
    .local v18, "element_depth":I
    move-object/from16 v21, v17

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    move/from16 v21, v4

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    move-object/from16 v21, v7

    move-object/from16 v22, v17

    check-cast v22, Lgnu/lists/Pair;

    move-object/from16 v29, v22

    move-object/from16 v22, v29

    move-object/from16 v23, v29

    move-object/from16 v19, v23

    .local v19, "pair":Lgnu/lists/Pair;
    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v5

    const-string/jumbo v24, "unquote-splicing"

    invoke-virtual/range {v21 .. v24}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    add-int/lit8 v18, v18, -0x1

    move/from16 v21, v18

    if-nez v21, :cond_9

    .line 350
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgnu/lists/Pair;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v20, v22

    .local v20, "pair_cdr":Lgnu/lists/Pair;
    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    sget-object v22, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 352
    .end local v20    # "pair_cdr":Lgnu/lists/Pair;
    :cond_6
    move-object/from16 v21, v7

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v29, v22

    move-object/from16 v22, v29

    move-object/from16 v23, v29

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "invalid used of "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v19

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " in quasiquote template"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 354
    .restart local v20    # "pair_cdr":Lgnu/lists/Pair;
    :cond_7
    move-object/from16 v21, v13

    move/from16 v22, v16

    move-object/from16 v23, v7

    move-object/from16 v24, v20

    move-object/from16 v25, v5

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v23

    aput-object v23, v21, v22

    .line 355
    move-object/from16 v21, v14

    move/from16 v22, v16

    const/16 v23, 0x3

    aput-byte v23, v21, v22

    .line 356
    .line 367
    .end local v19    # "pair":Lgnu/lists/Pair;
    .end local v20    # "pair_cdr":Lgnu/lists/Pair;
    :goto_3
    move-object/from16 v21, v14

    move/from16 v22, v16

    aget-byte v21, v21, v22

    move/from16 v22, v15

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 368
    move-object/from16 v21, v14

    move/from16 v22, v16

    aget-byte v21, v21, v22

    move/from16 v15, v21

    .line 339
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 359
    :cond_9
    move-object/from16 v21, v13

    move/from16 v22, v16

    move-object/from16 v23, v2

    move-object/from16 v24, v17

    move/from16 v25, v18

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    invoke-virtual/range {v23 .. v28}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v23

    aput-object v23, v21, v22

    .line 360
    move-object/from16 v21, v13

    move/from16 v22, v16

    aget-object v21, v21, v22

    move-object/from16 v22, v17

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 361
    move-object/from16 v21, v14

    move/from16 v22, v16

    const/16 v23, 0x0

    aput-byte v23, v21, v22

    goto :goto_3

    .line 362
    :cond_a
    move-object/from16 v21, v13

    move/from16 v22, v16

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/Expression;

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 363
    move-object/from16 v21, v14

    move/from16 v22, v16

    const/16 v23, 0x2

    aput-byte v23, v21, v22

    goto :goto_3

    .line 365
    :cond_b
    move-object/from16 v21, v14

    move/from16 v22, v16

    const/16 v23, 0x1

    aput-byte v23, v21, v22

    goto :goto_3

    .line 370
    .end local v17    # "element":Ljava/lang/Object;
    .end local v18    # "element_depth":I
    :cond_c
    move/from16 v21, v15

    if-nez v21, :cond_d

    .line 371
    move-object/from16 v21, v11

    move-object/from16 v10, v21

    .line 401
    .end local v16    # "i":I
    :goto_4
    goto/16 :goto_1

    .line 372
    .restart local v16    # "i":I
    :cond_d
    move/from16 v21, v15

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 373
    new-instance v21, Lgnu/lists/FVector;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v23, v13

    invoke-direct/range {v22 .. v23}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    move-object/from16 v10, v21

    .local v10, "result":Lgnu/lists/FVector;
    goto :goto_4

    .line 376
    .end local v10    # "result":Lgnu/lists/FVector;
    :cond_e
    move/from16 v21, v12

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v16, v21

    .line 377
    .local v16, "args":[Lgnu/expr/Expression;
    const/16 v21, 0x0

    move/from16 v17, v21

    .local v17, "i":I
    :goto_5
    move/from16 v21, v17

    move/from16 v22, v12

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    .line 379
    move-object/from16 v21, v14

    move/from16 v22, v17

    aget-byte v21, v21, v22

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 380
    move-object/from16 v21, v16

    move/from16 v22, v17

    move-object/from16 v23, v13

    move/from16 v24, v17

    aget-object v23, v23, v24

    check-cast v23, Lgnu/expr/Expression;

    aput-object v23, v21, v22

    .line 377
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 381
    :cond_f
    move/from16 v21, v15

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    .line 382
    move-object/from16 v21, v16

    move/from16 v22, v17

    move-object/from16 v23, v2

    move-object/from16 v24, v13

    move/from16 v25, v17

    aget-object v24, v24, v25

    move-object/from16 v25, v7

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v23

    aput-object v23, v21, v22

    goto :goto_6

    .line 383
    :cond_10
    move-object/from16 v21, v14

    move/from16 v22, v17

    aget-byte v21, v21, v22

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_11

    .line 385
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v18, v21

    .line 386
    .local v18, "arg1":[Ljava/lang/Object;
    move-object/from16 v21, v18

    const/16 v22, 0x0

    move-object/from16 v23, v13

    move/from16 v24, v17

    aget-object v23, v23, v24

    aput-object v23, v21, v22

    .line 387
    move-object/from16 v21, v16

    move/from16 v22, v17

    move-object/from16 v23, v2

    new-instance v24, Lgnu/lists/FVector;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move-object/from16 v26, v18

    invoke-direct/range {v25 .. v26}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    move-object/from16 v25, v7

    invoke-virtual/range {v23 .. v25}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v23

    aput-object v23, v21, v22

    .line 388
    goto :goto_6

    .line 391
    .end local v18    # "arg1":[Ljava/lang/Object;
    :cond_11
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v18, v21

    .line 392
    .local v18, "arg1":[Lgnu/expr/Expression;
    move-object/from16 v21, v18

    const/16 v22, 0x0

    move-object/from16 v23, v13

    move/from16 v24, v17

    aget-object v23, v23, v24

    check-cast v23, Lgnu/expr/Expression;

    aput-object v23, v21, v22

    .line 393
    move-object/from16 v21, v16

    move/from16 v22, v17

    move-object/from16 v23, v18

    invoke-static/range {v23 .. v23}, Lkawa/lang/Quote;->makeInvokeMakeVector([Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v23

    aput-object v23, v21, v22

    goto/16 :goto_6

    .line 396
    .end local v18    # "arg1":[Lgnu/expr/Expression;
    :cond_12
    move/from16 v21, v15

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    .line 397
    move-object/from16 v21, v16

    invoke-static/range {v21 .. v21}, Lkawa/lang/Quote;->makeInvokeMakeVector([Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v21

    move-object/from16 v10, v21

    .local v10, "result":Lgnu/expr/ApplyExp;
    goto/16 :goto_4

    .line 399
    .end local v10    # "result":Lgnu/expr/ApplyExp;
    :cond_13
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    sget-object v23, Lkawa/lang/Quote;->vectorAppendMethod:Lgnu/bytecode/Method;

    move-object/from16 v24, v16

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v10, v21

    .restart local v10    # "result":Lgnu/expr/ApplyExp;
    goto/16 :goto_4

    .line 403
    .end local v10    # "result":Lgnu/expr/ApplyExp;
    .end local v11    # "vector":Lgnu/lists/FVector;
    .end local v12    # "n":I
    .end local v13    # "buffer":[Ljava/lang/Object;
    .end local v14    # "state":[B
    .end local v15    # "max_state":B
    .end local v16    # "args":[Lgnu/expr/Expression;
    .end local v17    # "i":I
    :cond_14
    move-object/from16 v21, v3

    move-object/from16 v10, v21

    .local v10, "result":Ljava/lang/Object;
    goto/16 :goto_1
.end method

.method protected expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Quote;
    move-object v1, p1

    .local v1, "template":Ljava/lang/Object;
    move v2, p2

    .local v2, "depth":I
    move-object v3, p3

    .local v3, "tr":Lkawa/lang/Translator;
    new-instance v5, Ljava/util/IdentityHashMap;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    move-object v4, v5

    .line 43
    .local v4, "seen":Ljava/util/IdentityHashMap;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x0

    move-object v9, v4

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lkawa/lang/Quote;
    return-object v0
.end method

.method protected expandColonForms()Z
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Quote;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lkawa/lang/Quote;
    return v0
.end method

.method expand_pair(Lgnu/lists/Pair;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 28

    .prologue
    .line 93
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/lang/Quote;
    move-object/from16 v3, p1

    .local v3, "list":Lgnu/lists/Pair;
    move/from16 v4, p2

    .local v4, "depth":I
    move-object/from16 v5, p3

    .local v5, "syntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v6, p4

    .local v6, "seen":Ljava/lang/Object;
    move-object/from16 v7, p5

    .local v7, "tr":Lkawa/lang/Translator;
    move-object/from16 v20, v3

    move-object/from16 v8, v20

    .line 101
    .local v8, "pair":Lgnu/lists/Pair;
    :goto_0
    move-object/from16 v20, v8

    move-object/from16 v10, v20

    .line 107
    .local v10, "rest":Lgnu/lists/Pair;
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lkawa/lang/Quote;->expandColonForms()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v20, v8

    move-object/from16 v21, v3

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v5

    sget-object v23, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    invoke-virtual/range {v20 .. v23}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/mapping/Symbol;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lgnu/lists/Pair;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v11, v21

    .local v11, "p1":Lgnu/lists/Pair;
    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lgnu/lists/Pair;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v12, v21

    .local v12, "p2":Lgnu/lists/Pair;
    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v20

    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 115
    move-object/from16 v20, v7

    move-object/from16 v21, v11

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v20

    move-object/from16 v13, v20

    .line 116
    .local v13, "part1":Lgnu/expr/Expression;
    move-object/from16 v20, v7

    move-object/from16 v21, v12

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v20

    move-object/from16 v14, v20

    .line 117
    .local v14, "part2":Lgnu/expr/Expression;
    move-object/from16 v20, v7

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Lkawa/lang/Translator;->namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;

    move-result-object v20

    move-object/from16 v15, v20

    .line 118
    .local v15, "ns":Lgnu/mapping/Namespace;
    move-object/from16 v20, v7

    move-object/from16 v21, v15

    move-object/from16 v22, v14

    invoke-virtual/range {v20 .. v22}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/mapping/Namespace;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v20

    move-object/from16 v16, v20

    .line 120
    .local v16, "sym":Lgnu/mapping/Symbol;
    move-object/from16 v20, v16

    if-eqz v20, :cond_0

    .line 121
    move-object/from16 v20, v16

    move-object/from16 v9, v20

    .line 245
    .end local v10    # "rest":Lgnu/lists/Pair;
    .end local v11    # "p1":Lgnu/lists/Pair;
    .end local v12    # "p2":Lgnu/lists/Pair;
    .end local v13    # "part1":Lgnu/expr/Expression;
    .end local v14    # "part2":Lgnu/expr/Expression;
    .end local v15    # "ns":Lgnu/mapping/Namespace;
    .end local v16    # "sym":Lgnu/mapping/Symbol;
    :goto_1
    move-object/from16 v20, v3

    move-object/from16 v21, v10

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 246
    move-object/from16 v20, v9

    move-object/from16 v2, v20

    .line 286
    .end local v2    # "this":Lkawa/lang/Quote;
    :goto_2
    return-object v2

    .line 122
    .restart local v2    # "this":Lkawa/lang/Quote;
    .restart local v10    # "rest":Lgnu/lists/Pair;
    .restart local v11    # "p1":Lgnu/lists/Pair;
    .restart local v12    # "p2":Lgnu/lists/Pair;
    .restart local v13    # "part1":Lgnu/expr/Expression;
    .restart local v14    # "part2":Lgnu/expr/Expression;
    .restart local v15    # "ns":Lgnu/mapping/Namespace;
    .restart local v16    # "sym":Lgnu/mapping/Symbol;
    :cond_0
    move-object/from16 v20, v15

    if-eqz v20, :cond_1

    move/from16 v20, v4

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 123
    new-instance v20, Lgnu/expr/ApplyExp;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    sget-object v22, Lkawa/lang/Quote;->quoteType:Lgnu/bytecode/ClassType;

    const-string/jumbo v23, "makeSymbol"

    const/16 v24, 0x2

    invoke-virtual/range {v22 .. v24}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v23, v0

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    const/16 v25, 0x0

    move-object/from16 v26, v15

    invoke-static/range {v26 .. v26}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    const/16 v25, 0x1

    move-object/from16 v26, v14

    aput-object v26, v24, v25

    invoke-direct/range {v21 .. v23}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v9, v20

    .local v9, "cdr":Lgnu/expr/ApplyExp;
    goto :goto_1

    .line 126
    .end local v9    # "cdr":Lgnu/expr/ApplyExp;
    :cond_1
    move-object/from16 v20, v13

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 128
    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Lkawa/lang/Translator;->getGlobalEnvironment()Lgnu/mapping/Environment;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v13

    check-cast v22, Lgnu/expr/ReferenceExp;

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x3a

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v14

    check-cast v22, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v20

    move-object/from16 v9, v20

    .local v9, "cdr":Lgnu/mapping/Symbol;
    goto/16 :goto_1

    .line 129
    .end local v9    # "cdr":Lgnu/mapping/Symbol;
    :cond_2
    move-object/from16 v20, v13

    move-object/from16 v21, v14

    invoke-static/range {v20 .. v21}, Lgnu/kawa/functions/CompileNamedPart;->combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v17, v21

    .local v17, "combinedName":Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 130
    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Lkawa/lang/Translator;->getGlobalEnvironment()Lgnu/mapping/Environment;

    move-result-object v20

    move-object/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v20

    move-object/from16 v9, v20

    .restart local v9    # "cdr":Lgnu/mapping/Symbol;
    goto/16 :goto_1

    .line 133
    .end local v9    # "cdr":Lgnu/mapping/Symbol;
    :cond_3
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    invoke-virtual/range {v20 .. v21}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v18, v20

    .line 134
    .local v18, "save":Ljava/lang/Object;
    move-object/from16 v20, v7

    const/16 v21, 0x65

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\' is not a valid prefix"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 135
    move-object/from16 v20, v7

    move-object/from16 v21, v18

    invoke-virtual/range {v20 .. v21}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 136
    move-object/from16 v20, v16

    move-object/from16 v9, v20

    .line 138
    .restart local v9    # "cdr":Lgnu/mapping/Symbol;
    goto/16 :goto_1

    .line 140
    .end local v9    # "cdr":Lgnu/mapping/Symbol;
    .end local v11    # "p1":Lgnu/lists/Pair;
    .end local v12    # "p2":Lgnu/lists/Pair;
    .end local v13    # "part1":Lgnu/expr/Expression;
    .end local v14    # "part2":Lgnu/expr/Expression;
    .end local v15    # "ns":Lgnu/mapping/Namespace;
    .end local v16    # "sym":Lgnu/mapping/Symbol;
    .end local v17    # "combinedName":Ljava/lang/String;
    .end local v18    # "save":Ljava/lang/Object;
    :cond_4
    move/from16 v20, v4

    if-gez v20, :cond_6

    .line 162
    :cond_5
    :goto_3
    move/from16 v20, v4

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v20, v0

    if-eqz v20, :cond_14

    .line 164
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v13, v20

    .line 165
    .local v13, "form":Ljava/lang/Object;
    move-object/from16 v20, v5

    move-object/from16 v14, v20

    .line 166
    .local v14, "subsyntax":Lkawa/lang/SyntaxForm;
    :goto_4
    move-object/from16 v20, v13

    move-object/from16 v0, v20

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 168
    move-object/from16 v20, v13

    check-cast v20, Lkawa/lang/SyntaxForm;

    move-object/from16 v14, v20

    .line 169
    move-object/from16 v20, v14

    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v13, v20

    goto :goto_4

    .line 143
    .end local v13    # "form":Ljava/lang/Object;
    .end local v14    # "subsyntax":Lkawa/lang/SyntaxForm;
    :cond_6
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v5

    const-string/jumbo v23, "quasiquote"

    invoke-virtual/range {v20 .. v23}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 144
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 145
    :cond_7
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v5

    const-string/jumbo v23, "unquote"

    invoke-virtual/range {v20 .. v23}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 147
    add-int/lit8 v4, v4, -0x1

    .line 149
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lgnu/lists/Pair;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v13, v21

    .local v13, "pair_cdr":Lgnu/lists/Pair;
    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v20

    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 151
    .end local v13    # "pair_cdr":Lgnu/lists/Pair;
    :cond_8
    move-object/from16 v20, v7

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "invalid used of "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " in quasiquote template"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    move-object/from16 v2, v20

    goto/16 :goto_2

    .line 153
    .restart local v13    # "pair_cdr":Lgnu/lists/Pair;
    :cond_9
    move/from16 v20, v4

    if-nez v20, :cond_a

    .line 155
    move-object/from16 v20, v7

    move-object/from16 v21, v13

    move-object/from16 v22, v5

    invoke-virtual/range {v20 .. v22}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v20

    move-object/from16 v9, v20

    .line 156
    .local v9, "cdr":Lgnu/expr/Expression;
    goto/16 :goto_1

    .line 158
    .end local v9    # "cdr":Lgnu/expr/Expression;
    :cond_a
    goto/16 :goto_3

    .line 159
    .end local v13    # "pair_cdr":Lgnu/lists/Pair;
    :cond_b
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v5

    const-string/jumbo v23, "unquote-splicing"

    invoke-virtual/range {v20 .. v23}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 160
    move-object/from16 v20, v7

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "invalid used of "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " in quasiquote template"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    move-object/from16 v2, v20

    goto/16 :goto_2

    .line 171
    .local v13, "form":Ljava/lang/Object;
    .restart local v14    # "subsyntax":Lkawa/lang/SyntaxForm;
    :cond_c
    const/16 v20, -0x1

    move/from16 v15, v20

    .line 172
    .local v15, "splicing":I
    move-object/from16 v20, v13

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 174
    move-object/from16 v20, v13

    check-cast v20, Lgnu/lists/Pair;

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v16, v20

    .line 175
    .local v16, "op":Ljava/lang/Object;
    move-object/from16 v20, v7

    move-object/from16 v21, v16

    move-object/from16 v22, v14

    const-string/jumbo v23, "unquote"

    invoke-virtual/range {v20 .. v23}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 176
    const/16 v20, 0x0

    move/from16 v15, v20

    .line 180
    .end local v16    # "op":Ljava/lang/Object;
    :cond_d
    :goto_5
    move/from16 v20, v15

    if-ltz v20, :cond_14

    .line 182
    move-object/from16 v20, v13

    check-cast v20, Lgnu/lists/Pair;

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v13, v20

    .line 183
    new-instance v20, Ljava/util/Vector;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v21}, Ljava/util/Vector;-><init>()V

    move-object/from16 v16, v20

    .line 184
    .local v16, "vec":Ljava/util/Vector;
    const/16 v20, 0x0

    move-object/from16 v9, v20

    .line 189
    .local v9, "cdr":Ljava/lang/Object;
    :goto_6
    move-object/from16 v20, v13

    move-object/from16 v0, v20

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 191
    move-object/from16 v20, v13

    check-cast v20, Lkawa/lang/SyntaxForm;

    move-object/from16 v14, v20

    .line 192
    move-object/from16 v20, v14

    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v13, v20

    .line 194
    :cond_e
    move-object/from16 v20, v13

    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 195
    .line 204
    move-object/from16 v20, v16

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v17, v20

    .line 205
    .local v17, "nargs":I
    move-object/from16 v20, v2

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    invoke-virtual/range {v20 .. v25}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v9, v20

    .line 206
    move/from16 v20, v17

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    .line 208
    move/from16 v20, v17

    move/from16 v0, v20

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v20, v0

    move-object/from16 v18, v20

    .line 209
    .local v18, "args":[Lgnu/expr/Expression;
    move-object/from16 v20, v16

    move-object/from16 v21, v18

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 210
    move-object/from16 v20, v18

    move/from16 v21, v17

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v22, v2

    move-object/from16 v23, v9

    move-object/from16 v24, v7

    invoke-virtual/range {v22 .. v24}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v22

    aput-object v22, v20, v21

    .line 211
    move/from16 v20, v15

    if-nez v20, :cond_13

    sget-object v20, Lkawa/lang/Quote;->consXMethod:Lgnu/bytecode/Method;

    :goto_7
    move-object/from16 v19, v20

    .line 212
    .local v19, "method":Lgnu/bytecode/Method;
    new-instance v20, Lgnu/expr/ApplyExp;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v22, v19

    move-object/from16 v23, v18

    invoke-direct/range {v21 .. v23}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v9, v20

    .line 214
    .end local v9    # "cdr":Ljava/lang/Object;
    .end local v18    # "args":[Lgnu/expr/Expression;
    .end local v19    # "method":Lgnu/bytecode/Method;
    :cond_f
    move-object/from16 v20, v8

    move-object/from16 v10, v20

    .line 215
    goto/16 :goto_1

    .line 177
    .end local v17    # "nargs":I
    .local v16, "op":Ljava/lang/Object;
    :cond_10
    move-object/from16 v20, v7

    move-object/from16 v21, v16

    move-object/from16 v22, v14

    const-string/jumbo v23, "unquote-splicing"

    invoke-virtual/range {v20 .. v23}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 178
    const/16 v20, 0x1

    move/from16 v15, v20

    goto/16 :goto_5

    .line 196
    .restart local v9    # "cdr":Ljava/lang/Object;
    .local v16, "vec":Ljava/util/Vector;
    :cond_11
    move-object/from16 v20, v13

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v20, v0

    if-eqz v20, :cond_12

    .line 198
    move-object/from16 v20, v16

    move-object/from16 v21, v7

    move-object/from16 v22, v13

    check-cast v22, Lgnu/lists/Pair;

    move-object/from16 v23, v14

    invoke-virtual/range {v21 .. v23}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 199
    move-object/from16 v20, v13

    check-cast v20, Lgnu/lists/Pair;

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v13, v20

    goto/16 :goto_6

    .line 202
    :cond_12
    move-object/from16 v20, v7

    const-string/jumbo v21, "improper list argument to unquote"

    invoke-virtual/range {v20 .. v21}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    move-object/from16 v2, v20

    goto/16 :goto_2

    .line 211
    .restart local v17    # "nargs":I
    .restart local v18    # "args":[Lgnu/expr/Expression;
    :cond_13
    sget-object v20, Lkawa/lang/Quote;->appendMethod:Lgnu/bytecode/Method;

    goto :goto_7

    .line 218
    .end local v9    # "cdr":Ljava/lang/Object;
    .end local v13    # "form":Ljava/lang/Object;
    .end local v14    # "subsyntax":Lkawa/lang/SyntaxForm;
    .end local v15    # "splicing":I
    .end local v16    # "vec":Ljava/util/Vector;
    .end local v17    # "nargs":I
    .end local v18    # "args":[Lgnu/expr/Expression;
    :cond_14
    move-object/from16 v20, v2

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    invoke-virtual/range {v20 .. v25}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v13, v20

    .line 219
    .local v13, "car":Ljava/lang/Object;
    move-object/from16 v20, v13

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 221
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v10, v20

    .line 222
    .local v10, "rest":Ljava/lang/Object;
    move-object/from16 v20, v10

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v20, v0

    if-eqz v20, :cond_15

    .line 224
    move-object/from16 v20, v10

    check-cast v20, Lgnu/lists/Pair;

    move-object/from16 v8, v20

    .line 225
    goto/16 :goto_0

    .line 227
    :cond_15
    move-object/from16 v20, v2

    move-object/from16 v21, v10

    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    invoke-virtual/range {v20 .. v25}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v9, v20

    .line 228
    .restart local v9    # "cdr":Ljava/lang/Object;
    goto/16 :goto_1

    .line 230
    .end local v9    # "cdr":Ljava/lang/Object;
    .local v10, "rest":Lgnu/lists/Pair;
    :cond_16
    move-object/from16 v20, v2

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    invoke-virtual/range {v20 .. v25}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v9, v20

    .line 231
    .restart local v9    # "cdr":Ljava/lang/Object;
    move-object/from16 v20, v13

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/expr/Expression;

    move/from16 v20, v0

    if-nez v20, :cond_17

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/expr/Expression;

    move/from16 v20, v0

    if-eqz v20, :cond_18

    .line 233
    :cond_17
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v20, v0

    move-object/from16 v14, v20

    .line 234
    .local v14, "args":[Lgnu/expr/Expression;
    move-object/from16 v20, v14

    const/16 v21, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v13

    move-object/from16 v24, v7

    invoke-virtual/range {v22 .. v24}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v22

    aput-object v22, v20, v21

    .line 235
    move-object/from16 v20, v14

    const/16 v21, 0x1

    move-object/from16 v22, v2

    move-object/from16 v23, v9

    move-object/from16 v24, v7

    invoke-virtual/range {v22 .. v24}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v22

    aput-object v22, v20, v21

    .line 236
    new-instance v20, Lgnu/expr/ApplyExp;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    sget-object v22, Lkawa/lang/Quote;->makePairMethod:Lgnu/bytecode/Method;

    move-object/from16 v23, v14

    invoke-direct/range {v21 .. v23}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v9, v20

    .line 237
    .local v9, "cdr":Lgnu/expr/ApplyExp;
    goto/16 :goto_1

    .line 239
    .end local v14    # "args":[Lgnu/expr/Expression;
    .local v9, "cdr":Ljava/lang/Object;
    :cond_18
    move-object/from16 v20, v8

    move-object/from16 v21, v13

    move-object/from16 v22, v9

    invoke-static/range {v20 .. v22}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v20

    move-object/from16 v9, v20

    .line 240
    .local v9, "cdr":Lgnu/lists/Pair;
    goto/16 :goto_1

    .line 247
    .end local v9    # "cdr":Lgnu/lists/Pair;
    .end local v10    # "rest":Lgnu/lists/Pair;
    .end local v13    # "car":Ljava/lang/Object;
    :cond_19
    move-object/from16 v20, v3

    move-object/from16 v11, v20

    .line 248
    .local v11, "p":Lgnu/lists/Pair;
    const/16 v20, 0x14

    move/from16 v0, v20

    new-array v0, v0, [Lgnu/lists/Pair;

    move-object/from16 v20, v0

    move-object/from16 v12, v20

    .line 249
    .local v12, "pairs":[Lgnu/lists/Pair;
    const/16 v20, 0x0

    move/from16 v13, v20

    .line 252
    .local v13, "npairs":I
    :goto_8
    move/from16 v20, v13

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1a

    .line 254
    const/16 v20, 0x2

    move/from16 v21, v13

    mul-int v20, v20, v21

    move/from16 v0, v20

    new-array v0, v0, [Lgnu/lists/Pair;

    move-object/from16 v20, v0

    move-object/from16 v14, v20

    .line 255
    .local v14, "tmp":[Lgnu/lists/Pair;
    move-object/from16 v20, v12

    const/16 v21, 0x0

    move-object/from16 v22, v14

    const/16 v23, 0x0

    move/from16 v24, v13

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    move-object/from16 v20, v14

    move-object/from16 v12, v20

    .line 258
    .end local v14    # "tmp":[Lgnu/lists/Pair;
    :cond_1a
    move-object/from16 v20, v12

    move/from16 v21, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v22, v11

    aput-object v22, v20, v21

    .line 259
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v10

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1b

    .line 260
    .line 263
    move-object/from16 v20, v9

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/expr/Expression;

    move/from16 v20, v0

    if-eqz v20, :cond_1c

    sget-object v20, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_9
    move-object/from16 v14, v20

    .line 264
    :goto_a
    add-int/lit8 v13, v13, -0x1

    move/from16 v20, v13

    if-ltz v20, :cond_1d

    .line 266
    move-object/from16 v20, v12

    move/from16 v21, v13

    aget-object v20, v20, v21

    move-object/from16 v11, v20

    .line 267
    move-object/from16 v20, v11

    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v14

    invoke-static/range {v20 .. v22}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v20

    move-object/from16 v14, v20

    .local v14, "result":Lgnu/lists/Pair;
    goto :goto_a

    .line 261
    .end local v14    # "result":Lgnu/lists/Pair;
    :cond_1b
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lgnu/lists/Pair;

    move-object/from16 v11, v20

    goto :goto_8

    .line 263
    :cond_1c
    move-object/from16 v20, v9

    goto :goto_9

    .line 270
    :cond_1d
    move-object/from16 v20, v9

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/expr/Expression;

    move/from16 v20, v0

    if-eqz v20, :cond_1f

    .line 272
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v20, v0

    move-object/from16 v15, v20

    .line 273
    .local v15, "args":[Lgnu/expr/Expression;
    move-object/from16 v20, v15

    const/16 v21, 0x1

    move-object/from16 v22, v9

    check-cast v22, Lgnu/expr/Expression;

    aput-object v22, v20, v21

    .line 274
    move/from16 v20, v13

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e

    .line 277
    move-object/from16 v20, v15

    const/16 v21, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v7

    invoke-virtual/range {v22 .. v24}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v22

    aput-object v22, v20, v21

    .line 278
    new-instance v20, Lgnu/expr/ApplyExp;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    sget-object v22, Lkawa/lang/Quote;->makePairMethod:Lgnu/bytecode/Method;

    move-object/from16 v23, v15

    invoke-direct/range {v21 .. v23}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v2, v20

    goto/16 :goto_2

    .line 282
    :cond_1e
    move-object/from16 v20, v15

    const/16 v21, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v14

    move-object/from16 v24, v7

    invoke-virtual/range {v22 .. v24}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v22

    aput-object v22, v20, v21

    .line 283
    new-instance v20, Lgnu/expr/ApplyExp;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    sget-object v22, Lkawa/lang/Quote;->appendMethod:Lgnu/bytecode/Method;

    move-object/from16 v23, v15

    invoke-direct/range {v21 .. v23}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v2, v20

    goto/16 :goto_2

    .line 286
    .end local v15    # "args":[Lgnu/expr/Expression;
    :cond_1f
    move-object/from16 v20, v14

    move-object/from16 v2, v20

    goto/16 :goto_2
.end method

.method protected leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Quote;
    move-object v1, p1

    .local v1, "val":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    new-instance v3, Lgnu/expr/QuoteExp;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v3

    .end local v0    # "this":Lkawa/lang/Quote;
    return-object v0
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Quote;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v4, v1

    instance-of v4, v4, Lgnu/lists/Pair;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lgnu/lists/Pair;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v3, v5

    .local v3, "pair":Lgnu/lists/Pair;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v4, v5, :cond_1

    .line 422
    .end local v3    # "pair":Lgnu/lists/Pair;
    :cond_0
    move-object v4, v2

    const-string/jumbo v5, "wrong number of arguments to quote"

    invoke-virtual {v4, v5}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    .line 423
    .end local v0    # "this":Lkawa/lang/Quote;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lkawa/lang/Quote;
    .restart local v3    # "pair":Lgnu/lists/Pair;
    :cond_1
    move-object v4, v0

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v0

    iget-boolean v7, v7, Lkawa/lang/Quote;->isQuasi:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    move-object v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_2
    const/4 v7, -0x1

    goto :goto_1
.end method
