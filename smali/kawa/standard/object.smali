.class public Lkawa/standard/object;
.super Lkawa/lang/Syntax;
.source "object.java"


# static fields
.field public static final accessKeyword:Lgnu/expr/Keyword;

.field public static final allocationKeyword:Lgnu/expr/Keyword;

.field public static final classNameKeyword:Lgnu/expr/Keyword;

.field static final coloncolon:Lgnu/mapping/Symbol;

.field static final initKeyword:Lgnu/expr/Keyword;

.field static final init_formKeyword:Lgnu/expr/Keyword;

.field static final init_keywordKeyword:Lgnu/expr/Keyword;

.field static final init_valueKeyword:Lgnu/expr/Keyword;

.field static final initformKeyword:Lgnu/expr/Keyword;

.field public static final interfaceKeyword:Lgnu/expr/Keyword;

.field public static final objectSyntax:Lkawa/standard/object;

.field public static final throwsKeyword:Lgnu/expr/Keyword;

.field static final typeKeyword:Lgnu/expr/Keyword;


# instance fields
.field lambda:Lkawa/lang/Lambda;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 13
    new-instance v0, Lkawa/standard/object;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lkawa/standard/SchemeCompilation;->lambda:Lkawa/lang/Lambda;

    invoke-direct {v1, v2}, Lkawa/standard/object;-><init>(Lkawa/lang/Lambda;)V

    sput-object v0, Lkawa/standard/object;->objectSyntax:Lkawa/standard/object;

    .line 15
    sget-object v0, Lkawa/standard/object;->objectSyntax:Lkawa/standard/object;

    const-string/jumbo v1, "object"

    invoke-virtual {v0, v1}, Lkawa/standard/object;->setName(Ljava/lang/String;)V

    .line 18
    const-string/jumbo v0, "access"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    .line 19
    const-string/jumbo v0, "class-name"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->classNameKeyword:Lgnu/expr/Keyword;

    .line 20
    const-string/jumbo v0, "interface"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->interfaceKeyword:Lgnu/expr/Keyword;

    .line 21
    const-string/jumbo v0, "throws"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->throwsKeyword:Lgnu/expr/Keyword;

    .line 22
    const-string/jumbo v0, "type"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    .line 23
    const-string/jumbo v0, "allocation"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    .line 24
    const-string/jumbo v0, "init"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    .line 25
    const-string/jumbo v0, "initform"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    .line 26
    const-string/jumbo v0, "init-form"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    .line 27
    const-string/jumbo v0, "init-value"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    .line 28
    const-string/jumbo v0, "init-keyword"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_keywordKeyword:Lgnu/expr/Keyword;

    .line 30
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string/jumbo v1, "::"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lkawa/lang/Lambda;)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lkawa/standard/object;
    move-object v1, p1

    .local v1, "lambda":Lkawa/lang/Lambda;
    move-object v2, v0

    invoke-direct {v2}, Lkawa/lang/Syntax;-><init>()V

    .line 34
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/standard/object;->lambda:Lkawa/lang/Lambda;

    .line 35
    return-void
.end method

.method static addAccessFlags(Ljava/lang/Object;JJLjava/lang/String;Lkawa/lang/Translator;)J
    .locals 17

    .prologue
    .line 625
    move-object/from16 v1, p0

    .local v1, "value":Ljava/lang/Object;
    move-wide/from16 v2, p1

    .local v2, "previous":J
    move-wide/from16 v4, p3

    .local v4, "allowed":J
    move-object/from16 v6, p5

    .local v6, "kind":Ljava/lang/String;
    move-object/from16 v7, p6

    .local v7, "tr":Lkawa/lang/Translator;
    move-object v10, v1

    move-object v11, v7

    invoke-static {v10, v11}, Lkawa/standard/object;->matchAccess(Ljava/lang/Object;Lkawa/lang/Translator;)J

    move-result-wide v10

    move-wide v8, v10

    .line 626
    .local v8, "flags":J
    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 627
    move-object v10, v7

    const/16 v11, 0x65

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unknown access specifier "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 632
    :cond_0
    :goto_0
    move-wide v10, v2

    move-wide v12, v8

    or-long/2addr v10, v12

    move-wide v1, v10

    .end local v1    # "value":Ljava/lang/Object;
    return-wide v1

    .line 628
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_1
    move-wide v10, v8

    move-wide v12, v4

    const-wide/16 v14, -0x1

    xor-long/2addr v12, v14

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    .line 629
    move-object v10, v7

    const/16 v11, 0x65

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "invalid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " access specifier "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_2
    move-wide v10, v2

    move-wide v12, v8

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 631
    move-object v10, v7

    const/16 v11, 0x77

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "duplicate "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " access specifiers "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_0
.end method

.method static matchAccess(Ljava/lang/Object;Lkawa/lang/Translator;)J
    .locals 6

    .prologue
    .line 637
    move-object v1, p0

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p1

    .local v2, "tr":Lkawa/lang/Translator;
    :goto_0
    move-object v4, v1

    instance-of v4, v4, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_0

    .line 638
    move-object v4, v1

    check-cast v4, Lkawa/lang/SyntaxForm;

    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 639
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Lgnu/lists/Pair;

    if-eqz v4, :cond_1

    .line 641
    move-object v4, v1

    check-cast v4, Lgnu/lists/Pair;

    move-object v3, v4

    .line 642
    .local v3, "p":Lgnu/lists/Pair;
    move-object v4, v2

    move-object v5, v1

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v4, v5}, Lkawa/lang/Translator;->matchQuoted(Lgnu/lists/Pair;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 643
    move-object v4, v1

    instance-of v4, v4, Lgnu/lists/Pair;

    if-eqz v4, :cond_1

    .line 644
    move-object v4, v1

    check-cast v4, Lgnu/lists/Pair;

    move-object v5, v2

    invoke-static {v4, v5}, Lkawa/standard/object;->matchAccess2(Lgnu/lists/Pair;Lkawa/lang/Translator;)J

    move-result-wide v4

    move-wide v1, v4

    .line 646
    .end local v1    # "value":Ljava/lang/Object;
    .end local v3    # "p":Lgnu/lists/Pair;
    :goto_1
    return-wide v1

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_1
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lkawa/standard/object;->matchAccess1(Ljava/lang/Object;Lkawa/lang/Translator;)J

    move-result-wide v4

    move-wide v1, v4

    goto :goto_1
.end method

.method private static matchAccess1(Ljava/lang/Object;Lkawa/lang/Translator;)J
    .locals 4

    .prologue
    .line 666
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "tr":Lkawa/lang/Translator;
    move-object v2, v0

    instance-of v2, v2, Lgnu/expr/Keyword;

    if-eqz v2, :cond_1

    .line 667
    move-object v2, v0

    check-cast v2, Lgnu/expr/Keyword;

    invoke-virtual {v2}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 672
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    const-string/jumbo v2, "private"

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 673
    const-wide/32 v2, 0x1000000

    move-wide v0, v2

    .line 688
    :goto_1
    return-wide v0

    .line 668
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Lgnu/lists/FString;

    if-eqz v2, :cond_2

    .line 669
    move-object v2, v0

    check-cast v2, Lgnu/lists/FString;

    invoke-virtual {v2}, Lgnu/lists/FString;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .local v0, "value":Ljava/lang/String;
    goto :goto_0

    .line 670
    .local v0, "value":Ljava/lang/Object;
    :cond_2
    move-object v2, v0

    instance-of v2, v2, Lgnu/mapping/SimpleSymbol;

    if-eqz v2, :cond_0

    .line 671
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .local v0, "value":Ljava/lang/String;
    goto :goto_0

    .line 674
    .end local v0    # "value":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "protected"

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 675
    const-wide/32 v2, 0x2000000

    move-wide v0, v2

    goto :goto_1

    .line 676
    :cond_4
    const-string/jumbo v2, "public"

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 677
    const-wide/32 v2, 0x4000000

    move-wide v0, v2

    goto :goto_1

    .line 678
    :cond_5
    const-string/jumbo v2, "package"

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 679
    const-wide/32 v2, 0x8000000

    move-wide v0, v2

    goto :goto_1

    .line 680
    :cond_6
    const-string/jumbo v2, "volatile"

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 681
    const-wide v2, 0x80000000L

    move-wide v0, v2

    goto :goto_1

    .line 682
    :cond_7
    const-string/jumbo v2, "transient"

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 683
    const-wide v2, 0x100000000L

    move-wide v0, v2

    goto :goto_1

    .line 684
    :cond_8
    const-string/jumbo v2, "enum"

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 685
    const-wide v2, 0x200000000L

    move-wide v0, v2

    goto :goto_1

    .line 686
    :cond_9
    const-string/jumbo v2, "final"

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 687
    const-wide v2, 0x400000000L

    move-wide v0, v2

    goto/16 :goto_1

    .line 688
    :cond_a
    const-wide/16 v2, 0x0

    move-wide v0, v2

    goto/16 :goto_1
.end method

.method private static matchAccess2(Lgnu/lists/Pair;Lkawa/lang/Translator;)J
    .locals 12

    .prologue
    .line 651
    move-object v1, p0

    .local v1, "pair":Lgnu/lists/Pair;
    move-object v2, p1

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v2

    invoke-static {v8, v9}, Lkawa/standard/object;->matchAccess1(Ljava/lang/Object;Lkawa/lang/Translator;)J

    move-result-wide v8

    move-wide v3, v8

    .line 652
    .local v3, "icar":J
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .line 653
    .local v5, "cdr":Ljava/lang/Object;
    move-object v8, v5

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v8, v9, :cond_0

    move-wide v8, v3

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 654
    :cond_0
    move-wide v8, v3

    move-wide v1, v8

    .line 661
    .end local v1    # "pair":Lgnu/lists/Pair;
    :goto_0
    return-wide v1

    .line 655
    .restart local v1    # "pair":Lgnu/lists/Pair;
    :cond_1
    move-object v8, v5

    instance-of v8, v8, Lgnu/lists/Pair;

    if-eqz v8, :cond_2

    .line 657
    move-object v8, v5

    check-cast v8, Lgnu/lists/Pair;

    move-object v9, v2

    invoke-static {v8, v9}, Lkawa/standard/object;->matchAccess2(Lgnu/lists/Pair;Lkawa/lang/Translator;)J

    move-result-wide v8

    move-wide v6, v8

    .line 658
    .local v6, "icdr":J
    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 659
    move-wide v8, v3

    move-wide v10, v6

    or-long/2addr v8, v10

    move-wide v1, v8

    goto :goto_0

    .line 661
    .end local v6    # "icdr":J
    :cond_2
    const-wide/16 v8, 0x0

    move-wide v1, v8

    goto :goto_0
.end method

.method static matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z
    .locals 9

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "exp":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "tag":Ljava/lang/String;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v6, v0

    instance-of v6, v6, Lgnu/expr/Keyword;

    if-eqz v6, :cond_1

    .line 611
    move-object v6, v0

    check-cast v6, Lgnu/expr/Keyword;

    invoke-virtual {v6}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 619
    .local v3, "value":Ljava/lang/String;
    :goto_0
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    const/4 v6, 0x1

    :goto_1
    move v0, v6

    .end local v0    # "exp":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/String;
    :goto_2
    return v0

    .line 612
    .restart local v0    # "exp":Ljava/lang/Object;
    :cond_1
    move-object v6, v0

    instance-of v6, v6, Lgnu/lists/FString;

    if-eqz v6, :cond_2

    .line 613
    move-object v6, v0

    check-cast v6, Lgnu/lists/FString;

    invoke-virtual {v6}, Lgnu/lists/FString;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 614
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    move-object v6, v0

    instance-of v6, v6, Lgnu/lists/Pair;

    if-eqz v6, :cond_3

    move-object v6, v2

    move-object v7, v0

    check-cast v7, Lgnu/lists/Pair;

    invoke-virtual {v6, v7}, Lkawa/lang/Translator;->matchQuoted(Lgnu/lists/Pair;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v4, v7

    .local v4, "qvalue":Ljava/lang/Object;
    instance-of v6, v6, Lgnu/mapping/SimpleSymbol;

    if-eqz v6, :cond_3

    .line 616
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 618
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "qvalue":Ljava/lang/Object;
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_2

    .line 619
    .restart local v3    # "value":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V
    .locals 17

    .prologue
    .line 558
    move-object/from16 v0, p0

    .local v0, "d":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "oexp":Lgnu/expr/ClassExp;
    move-object/from16 v2, p2

    .local v2, "initPair":Lgnu/lists/Pair;
    move-object/from16 v3, p3

    .local v3, "tr":Lkawa/lang/Translator;
    move-object/from16 v4, p4

    .local v4, "initSyntax":Lkawa/lang/SyntaxForm;
    move-object v11, v0

    instance-of v11, v11, Lgnu/expr/Declaration;

    if-eqz v11, :cond_1

    move-object v11, v0

    check-cast v11, Lgnu/expr/Declaration;

    const-wide/16 v12, 0x800

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v11

    :goto_0
    move v5, v11

    .line 561
    .local v5, "isStatic":Z
    move v11, v5

    if-eqz v11, :cond_3

    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    :goto_1
    move-object v6, v11

    .line 562
    .local v6, "initMethod":Lgnu/expr/LambdaExp;
    move-object v11, v6

    if-nez v11, :cond_0

    .line 564
    new-instance v11, Lgnu/expr/LambdaExp;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    new-instance v13, Lgnu/expr/BeginExp;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Lgnu/expr/BeginExp;-><init>()V

    invoke-direct {v12, v13}, Lgnu/expr/LambdaExp;-><init>(Lgnu/expr/Expression;)V

    move-object v6, v11

    .line 565
    move-object v11, v6

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/expr/LambdaExp;->setClassMethod(Z)V

    .line 566
    move-object v11, v6

    sget-object v12, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v11, v12}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V

    .line 567
    move v11, v5

    if-eqz v11, :cond_4

    .line 569
    move-object v11, v6

    const-string/jumbo v12, "$clinit$"

    invoke-virtual {v11, v12}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 570
    move-object v11, v1

    move-object v12, v6

    iput-object v12, v11, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    .line 580
    :goto_2
    move-object v11, v6

    move-object v12, v1

    iget-object v12, v12, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    iput-object v12, v11, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 581
    move-object v11, v1

    move-object v12, v6

    iput-object v12, v11, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 583
    :cond_0
    move-object v11, v3

    move-object v12, v6

    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 584
    move-object v11, v3

    iget-object v11, v11, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    move-object v7, v11

    .line 585
    .local v7, "saveLambda":Lgnu/expr/LambdaExp;
    move-object v11, v3

    move-object v12, v6

    iput-object v12, v11, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 586
    move-object v11, v3

    move-object v12, v2

    move-object v13, v4

    invoke-virtual {v11, v12, v13}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v8, v11

    .line 587
    .local v8, "initValue":Lgnu/expr/Expression;
    move-object v11, v0

    instance-of v11, v11, Lgnu/expr/Declaration;

    if-eqz v11, :cond_5

    .line 589
    move-object v11, v0

    check-cast v11, Lgnu/expr/Declaration;

    move-object v9, v11

    .line 590
    .local v9, "decl":Lgnu/expr/Declaration;
    new-instance v11, Lgnu/expr/SetExp;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v9

    move-object v14, v8

    invoke-direct {v12, v13, v14}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    move-object v10, v11

    .line 591
    .local v10, "sexp":Lgnu/expr/SetExp;
    move-object v11, v10

    move-object v12, v9

    invoke-virtual {v11, v12}, Lgnu/expr/SetExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 592
    move-object v11, v9

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 593
    move-object v11, v10

    move-object v8, v11

    .line 597
    .end local v9    # "decl":Lgnu/expr/Declaration;
    .end local v10    # "sexp":Lgnu/expr/SetExp;
    :goto_3
    move-object v11, v6

    iget-object v11, v11, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    check-cast v11, Lgnu/expr/BeginExp;

    move-object v12, v8

    invoke-virtual {v11, v12}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 598
    move-object v11, v3

    move-object v12, v7

    iput-object v12, v11, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 599
    move-object v11, v3

    move-object v12, v6

    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 600
    return-void

    .line 558
    .end local v5    # "isStatic":Z
    .end local v6    # "initMethod":Lgnu/expr/LambdaExp;
    .end local v7    # "saveLambda":Lgnu/expr/LambdaExp;
    .end local v8    # "initValue":Lgnu/expr/Expression;
    :cond_1
    move-object v11, v0

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 561
    .restart local v5    # "isStatic":Z
    :cond_3
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    goto/16 :goto_1

    .line 574
    .restart local v6    # "initMethod":Lgnu/expr/LambdaExp;
    :cond_4
    move-object v11, v6

    const-string/jumbo v12, "$finit$"

    invoke-virtual {v11, v12}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 575
    move-object v11, v1

    move-object v12, v6

    iput-object v12, v11, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    .line 578
    move-object v11, v6

    const/4 v12, 0x0

    new-instance v13, Lgnu/expr/Declaration;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    sget-object v15, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {v14, v15}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v11, v12, v13}, Lgnu/expr/LambdaExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    goto/16 :goto_2

    .line 596
    .restart local v7    # "saveLambda":Lgnu/expr/LambdaExp;
    .restart local v8    # "initValue":Lgnu/expr/Expression;
    :cond_5
    move-object v11, v8

    new-instance v12, Lgnu/expr/QuoteExp;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    sget-object v14, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-direct {v13, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v11, v12}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v11

    move-object v8, v11

    goto :goto_3
.end method


# virtual methods
.method public rewriteClassDef([Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 41

    .prologue
    .line 326
    move-object/from16 v3, p0

    .local v3, "this":Lkawa/standard/object;
    move-object/from16 v4, p1

    .local v4, "saved":[Ljava/lang/Object;
    move-object/from16 v5, p2

    .local v5, "tr":Lkawa/lang/Translator;
    move-object/from16 v33, v4

    const/16 v34, 0x0

    aget-object v33, v33, v34

    check-cast v33, Lgnu/expr/ClassExp;

    move-object/from16 v6, v33

    .line 327
    .local v6, "oexp":Lgnu/expr/ClassExp;
    move-object/from16 v33, v4

    const/16 v34, 0x1

    aget-object v33, v33, v34

    move-object/from16 v7, v33

    .line 328
    .local v7, "components":Ljava/lang/Object;
    move-object/from16 v33, v4

    const/16 v34, 0x2

    aget-object v33, v33, v34

    check-cast v33, Ljava/util/Vector;

    move-object/from16 v8, v33

    .line 329
    .local v8, "inits":Ljava/util/Vector;
    move-object/from16 v33, v4

    const/16 v34, 0x3

    aget-object v33, v33, v34

    check-cast v33, Lgnu/expr/LambdaExp;

    move-object/from16 v9, v33

    .line 330
    .local v9, "method_list":Lgnu/expr/LambdaExp;
    move-object/from16 v33, v4

    const/16 v34, 0x4

    aget-object v33, v33, v34

    move-object/from16 v10, v33

    .line 331
    .local v10, "superlist":Ljava/lang/Object;
    move-object/from16 v33, v4

    const/16 v34, 0x5

    aget-object v33, v33, v34

    move-object/from16 v11, v33

    .line 332
    .local v11, "classNamePair":Ljava/lang/Object;
    move-object/from16 v33, v6

    move-object/from16 v34, v9

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 334
    move-object/from16 v33, v10

    invoke-static/range {v33 .. v33}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v33

    move/from16 v12, v33

    .line 335
    .local v12, "num_supers":I
    move/from16 v33, v12

    if-gez v33, :cond_0

    .line 337
    move-object/from16 v33, v5

    const/16 v34, 0x65

    const-string/jumbo v35, "object superclass specification not a list"

    invoke-virtual/range {v33 .. v35}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 338
    const/16 v33, 0x0

    move/from16 v12, v33

    .line 340
    :cond_0
    move/from16 v33, v12

    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v33, v0

    move-object/from16 v13, v33

    .line 341
    .local v13, "supers":[Lgnu/expr/Expression;
    const/16 v33, 0x0

    move/from16 v14, v33

    .local v14, "i":I
    :goto_0
    move/from16 v33, v14

    move/from16 v34, v12

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_3

    .line 343
    :goto_1
    move-object/from16 v33, v10

    move-object/from16 v0, v33

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v33, v0

    if-eqz v33, :cond_1

    .line 346
    move-object/from16 v33, v10

    check-cast v33, Lkawa/lang/SyntaxForm;

    invoke-interface/range {v33 .. v33}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v10, v33

    goto :goto_1

    .line 348
    :cond_1
    move-object/from16 v33, v10

    check-cast v33, Lgnu/lists/Pair;

    move-object/from16 v15, v33

    .line 349
    .local v15, "superpair":Lgnu/lists/Pair;
    move-object/from16 v33, v13

    move/from16 v34, v14

    move-object/from16 v35, v5

    move-object/from16 v36, v15

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v35

    aput-object v35, v33, v34

    .line 350
    move-object/from16 v33, v13

    move/from16 v34, v14

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v33, v0

    if-eqz v33, :cond_2

    .line 352
    move-object/from16 v33, v13

    move/from16 v34, v14

    aget-object v33, v33, v34

    check-cast v33, Lgnu/expr/ReferenceExp;

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v33

    move-object/from16 v16, v33

    .line 354
    .local v16, "decl":Lgnu/expr/Declaration;
    move-object/from16 v33, v16

    if-eqz v33, :cond_2

    move-object/from16 v33, v16

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v17, v34

    .local v17, "svalue":Lgnu/expr/Expression;
    move-object/from16 v0, v33

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v33, v0

    if-eqz v33, :cond_2

    .line 355
    move-object/from16 v33, v17

    check-cast v33, Lgnu/expr/ClassExp;

    const/high16 v34, 0x20000

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ClassExp;->setFlag(I)V

    .line 357
    .end local v16    # "decl":Lgnu/expr/Declaration;
    .end local v17    # "svalue":Lgnu/expr/Expression;
    :cond_2
    move-object/from16 v33, v15

    invoke-virtual/range {v33 .. v33}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v10, v33

    .line 341
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 360
    .end local v15    # "superpair":Lgnu/lists/Pair;
    :cond_3
    move-object/from16 v33, v11

    if-eqz v33, :cond_4

    .line 362
    move-object/from16 v33, v5

    move-object/from16 v34, v11

    check-cast v34, Lgnu/lists/Pair;

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v14, v33

    .line 363
    .local v14, "classNameExp":Lgnu/expr/Expression;
    move-object/from16 v33, v14

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v15, v33

    .line 367
    .local v15, "classNameVal":Ljava/lang/Object;
    move-object/from16 v33, v15

    move-object/from16 v0, v33

    instance-of v0, v0, Ljava/lang/CharSequence;

    move/from16 v33, v0

    move/from16 v17, v33

    .line 371
    .local v17, "isString":Z
    move/from16 v33, v17

    if-eqz v33, :cond_6

    move-object/from16 v33, v15

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v16, v34

    .local v16, "classNameSpecifier":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_6

    .line 373
    move-object/from16 v33, v6

    move-object/from16 v34, v16

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lgnu/expr/ClassExp;->classNameSpecifier:Ljava/lang/String;

    .line 381
    .end local v14    # "classNameExp":Lgnu/expr/Expression;
    .end local v15    # "classNameVal":Ljava/lang/Object;
    .end local v16    # "classNameSpecifier":Ljava/lang/String;
    .end local v17    # "isString":Z
    :cond_4
    :goto_2
    move-object/from16 v33, v6

    move-object/from16 v34, v13

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    .line 383
    move-object/from16 v33, v6

    move-object/from16 v34, v5

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ClassExp;->setTypes(Lgnu/expr/Compilation;)V

    .line 387
    move-object/from16 v33, v8

    invoke-virtual/range {v33 .. v33}, Ljava/util/Vector;->size()I

    move-result v33

    move/from16 v14, v33

    .line 388
    .local v14, "len":I
    const/16 v33, 0x0

    move/from16 v15, v33

    .local v15, "i":I
    :goto_3
    move/from16 v33, v15

    move/from16 v34, v14

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_7

    .line 390
    move-object/from16 v33, v8

    move/from16 v34, v15

    const/16 v35, 0x1

    add-int/lit8 v34, v34, 0x1

    invoke-virtual/range {v33 .. v34}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v16, v33

    .line 391
    .local v16, "init":Ljava/lang/Object;
    move-object/from16 v33, v16

    if-eqz v33, :cond_5

    .line 392
    move-object/from16 v33, v8

    move/from16 v34, v15

    invoke-virtual/range {v33 .. v34}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v34, v6

    move-object/from16 v35, v16

    check-cast v35, Lgnu/lists/Pair;

    move-object/from16 v36, v5

    const/16 v37, 0x0

    invoke-static/range {v33 .. v37}, Lkawa/standard/object;->rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V

    .line 388
    :cond_5
    add-int/lit8 v15, v15, 0x2

    goto :goto_3

    .line 376
    .end local v16    # "init":Ljava/lang/Object;
    .local v14, "classNameExp":Lgnu/expr/Expression;
    .local v15, "classNameVal":Ljava/lang/Object;
    .restart local v17    # "isString":Z
    :cond_6
    move-object/from16 v33, v5

    move-object/from16 v34, v11

    invoke-virtual/range {v33 .. v34}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v18, v33

    .line 377
    .local v18, "savedPos":Ljava/lang/Object;
    move-object/from16 v33, v5

    const/16 v34, 0x65

    const-string/jumbo v35, "class-name specifier must be a non-empty string literal"

    invoke-virtual/range {v33 .. v35}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 378
    move-object/from16 v33, v5

    move-object/from16 v34, v18

    invoke-virtual/range {v33 .. v34}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_2

    .line 395
    .end local v17    # "isString":Z
    .end local v18    # "savedPos":Ljava/lang/Object;
    .local v14, "len":I
    .local v15, "i":I
    :cond_7
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    invoke-virtual/range {v33 .. v34}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 398
    move-object/from16 v33, v9

    move-object/from16 v15, v33

    .line 399
    .local v15, "meth":Lgnu/expr/LambdaExp;
    const/16 v33, 0x0

    move/from16 v16, v33

    .line 400
    .local v16, "init_index":I
    const/16 v33, 0x0

    move-object/from16 v17, v33

    .line 401
    .local v17, "componentsSyntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v33, v7

    move-object/from16 v18, v33

    .local v18, "obj":Ljava/lang/Object;
    :goto_4
    move-object/from16 v33, v18

    sget-object v34, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_23

    .line 403
    :goto_5
    move-object/from16 v33, v18

    move-object/from16 v0, v33

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v33, v0

    if-eqz v33, :cond_8

    .line 405
    move-object/from16 v33, v18

    check-cast v33, Lkawa/lang/SyntaxForm;

    move-object/from16 v17, v33

    .line 406
    move-object/from16 v33, v17

    invoke-interface/range {v33 .. v33}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v18, v33

    goto :goto_5

    .line 408
    :cond_8
    move-object/from16 v33, v18

    check-cast v33, Lgnu/lists/Pair;

    move-object/from16 v19, v33

    .line 409
    .local v19, "pair":Lgnu/lists/Pair;
    move-object/from16 v33, v5

    move-object/from16 v34, v19

    invoke-virtual/range {v33 .. v34}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v20, v33

    .line 410
    .local v20, "savedPos1":Ljava/lang/Object;
    move-object/from16 v33, v19

    invoke-virtual/range {v33 .. v33}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v21, v33

    .line 411
    .local v21, "pair_car":Ljava/lang/Object;
    move-object/from16 v33, v17

    move-object/from16 v22, v33

    .line 412
    .local v22, "memberSyntax":Lkawa/lang/SyntaxForm;
    :goto_6
    move-object/from16 v33, v21

    move-object/from16 v0, v33

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v33, v0

    if-eqz v33, :cond_9

    .line 414
    move-object/from16 v33, v21

    check-cast v33, Lkawa/lang/SyntaxForm;

    move-object/from16 v22, v33

    .line 415
    move-object/from16 v33, v22

    invoke-interface/range {v33 .. v33}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v21, v33

    goto :goto_6

    .line 419
    :cond_9
    move-object/from16 v33, v19

    :try_start_0
    invoke-virtual/range {v33 .. v33}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v18, v33

    .line 420
    move-object/from16 v33, v21

    move-object/from16 v0, v33

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v33, v0

    if-eqz v33, :cond_a

    move-object/from16 v33, v18

    move-object/from16 v0, v33

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v33, v0

    if-eqz v33, :cond_a

    .line 424
    move-object/from16 v33, v18

    check-cast v33, Lgnu/lists/Pair;

    invoke-virtual/range {v33 .. v33}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v33

    move-object/from16 v18, v33

    .line 541
    move-object/from16 v33, v5

    move-object/from16 v34, v20

    invoke-virtual/range {v33 .. v34}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 427
    :cond_a
    move-object/from16 v33, v21

    :try_start_1
    check-cast v33, Lgnu/lists/Pair;

    move-object/from16 v19, v33

    .line 428
    move-object/from16 v33, v19

    invoke-virtual/range {v33 .. v33}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v21, v33

    .line 429
    move-object/from16 v33, v22

    move-object/from16 v23, v33

    .line 430
    .local v23, "memberCarSyntax":Lkawa/lang/SyntaxForm;
    :goto_7
    move-object/from16 v33, v21

    move-object/from16 v0, v33

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v33, v0

    if-eqz v33, :cond_b

    .line 432
    move-object/from16 v33, v21

    check-cast v33, Lkawa/lang/SyntaxForm;

    move-object/from16 v23, v33

    .line 433
    move-object/from16 v33, v23

    invoke-interface/range {v33 .. v33}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v21, v33

    goto :goto_7

    .line 435
    :cond_b
    move-object/from16 v33, v21

    move-object/from16 v0, v33

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v33, v0

    if-nez v33, :cond_c

    move-object/from16 v33, v21

    move-object/from16 v0, v33

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v33, v0

    if-nez v33, :cond_c

    move-object/from16 v33, v21

    move-object/from16 v0, v33

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v33, v0

    if-eqz v33, :cond_1c

    .line 438
    :cond_c
    const/16 v33, 0x0

    move-object/from16 v24, v33

    .line 439
    .local v24, "type":Ljava/lang/Object;
    const/16 v33, 0x0

    move/from16 v25, v33

    .line 440
    .local v25, "nKeywords":I
    move-object/from16 v33, v21

    move-object/from16 v0, v33

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v33, v0

    if-eqz v33, :cond_d

    move-object/from16 v33, v19

    :goto_8
    move-object/from16 v26, v33

    .line 441
    .local v26, "args":Ljava/lang/Object;
    const/16 v33, 0x0

    move-object/from16 v27, v33

    .line 442
    .local v27, "initPair":Lgnu/lists/Pair;
    const/16 v33, 0x0

    move-object/from16 v28, v33

    .line 443
    .end local v24    # "type":Ljava/lang/Object;
    .local v28, "initSyntax":Lkawa/lang/SyntaxForm;
    :goto_9
    move-object/from16 v33, v26

    sget-object v34, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_18

    .line 445
    :goto_a
    move-object/from16 v33, v26

    move-object/from16 v0, v33

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v33, v0

    if-eqz v33, :cond_e

    .line 447
    move-object/from16 v33, v26

    check-cast v33, Lkawa/lang/SyntaxForm;

    move-object/from16 v22, v33

    .line 448
    move-object/from16 v33, v22

    invoke-interface/range {v33 .. v33}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v26, v33

    goto :goto_a

    .line 440
    .end local v26    # "args":Ljava/lang/Object;
    .end local v27    # "initPair":Lgnu/lists/Pair;
    .end local v28    # "initSyntax":Lkawa/lang/SyntaxForm;
    .restart local v24    # "type":Ljava/lang/Object;
    :cond_d
    move-object/from16 v33, v19

    invoke-virtual/range {v33 .. v33}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v33

    goto :goto_8

    .line 450
    .end local v24    # "type":Ljava/lang/Object;
    .restart local v26    # "args":Ljava/lang/Object;
    .restart local v27    # "initPair":Lgnu/lists/Pair;
    .restart local v28    # "initSyntax":Lkawa/lang/SyntaxForm;
    :cond_e
    move-object/from16 v33, v26

    check-cast v33, Lgnu/lists/Pair;

    move-object/from16 v19, v33

    .line 451
    move-object/from16 v33, v19

    invoke-virtual/range {v33 .. v33}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v29, v33

    .line 452
    .local v29, "key":Ljava/lang/Object;
    :goto_b
    move-object/from16 v33, v29

    move-object/from16 v0, v33

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v33, v0

    if-eqz v33, :cond_f

    .line 453
    move-object/from16 v33, v29

    check-cast v33, Lkawa/lang/SyntaxForm;

    invoke-interface/range {v33 .. v33}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v29, v33

    goto :goto_b

    .line 454
    :cond_f
    move-object/from16 v33, v5

    move-object/from16 v34, v19

    invoke-virtual/range {v33 .. v34}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v30, v33

    .line 455
    .local v30, "savedPos2":Ljava/lang/Object;
    move-object/from16 v33, v19

    invoke-virtual/range {v33 .. v33}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v26, v33

    .line 456
    move-object/from16 v33, v29

    sget-object v34, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_10

    move-object/from16 v33, v29

    move-object/from16 v0, v33

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v33, v0

    if-eqz v33, :cond_15

    :cond_10
    move-object/from16 v33, v26

    move-object/from16 v0, v33

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v33, v0

    if-eqz v33, :cond_15

    .line 459
    add-int/lit8 v25, v25, 0x1

    .line 460
    move-object/from16 v33, v26

    check-cast v33, Lgnu/lists/Pair;

    move-object/from16 v19, v33

    .line 461
    move-object/from16 v33, v19

    invoke-virtual/range {v33 .. v33}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v31, v33

    .line 462
    .local v31, "value":Ljava/lang/Object;
    move-object/from16 v33, v19

    invoke-virtual/range {v33 .. v33}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v26, v33

    .line 463
    move-object/from16 v33, v29

    sget-object v34, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_11

    move-object/from16 v33, v29

    sget-object v34, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_13

    .line 464
    :cond_11
    move-object/from16 v33, v31

    move-object/from16 v24, v33

    .line 477
    .line 499
    .end local v31    # "value":Ljava/lang/Object;
    :cond_12
    :goto_c
    move-object/from16 v33, v5

    move-object/from16 v34, v30

    invoke-virtual/range {v33 .. v34}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 500
    goto/16 :goto_9

    .line 465
    .restart local v31    # "value":Ljava/lang/Object;
    :cond_13
    move-object/from16 v33, v29

    sget-object v34, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_14

    move-object/from16 v33, v29

    sget-object v34, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_14

    move-object/from16 v33, v29

    sget-object v34, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_14

    move-object/from16 v33, v29

    sget-object v34, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_12

    .line 470
    :cond_14
    move-object/from16 v33, v19

    move-object/from16 v27, v33

    .line 471
    move-object/from16 v33, v22

    move-object/from16 v28, v33

    goto :goto_c

    .line 478
    .end local v31    # "value":Ljava/lang/Object;
    :cond_15
    move-object/from16 v33, v26

    sget-object v34, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_16

    move-object/from16 v33, v27

    if-nez v33, :cond_16

    .line 481
    move-object/from16 v33, v19

    move-object/from16 v27, v33

    .line 482
    move-object/from16 v33, v22

    move-object/from16 v28, v33

    goto :goto_c

    .line 484
    :cond_16
    move-object/from16 v33, v26

    move-object/from16 v0, v33

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v33, v0

    if-eqz v33, :cond_17

    move/from16 v33, v25

    if-nez v33, :cond_17

    move-object/from16 v33, v27

    if-nez v33, :cond_17

    move-object/from16 v33, v24

    if-nez v33, :cond_17

    move-object/from16 v33, v26

    check-cast v33, Lgnu/lists/Pair;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v19, v34

    invoke-virtual/range {v33 .. v33}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v33

    sget-object v34, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_17

    .line 489
    move-object/from16 v33, v29

    move-object/from16 v24, v33

    .line 490
    .restart local v24    # "type":Ljava/lang/Object;
    move-object/from16 v33, v19

    move-object/from16 v27, v33

    .line 491
    move-object/from16 v33, v22

    move-object/from16 v28, v33

    .line 492
    move-object/from16 v33, v19

    invoke-virtual/range {v33 .. v33}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v26, v33

    goto/16 :goto_c

    .line 496
    .end local v24    # "type":Ljava/lang/Object;
    :cond_17
    const/16 v33, 0x0

    move-object/from16 v26, v33

    .line 501
    .end local v26    # "args":Ljava/lang/Object;
    .end local v29    # "key":Ljava/lang/Object;
    .end local v30    # "savedPos2":Ljava/lang/Object;
    :cond_18
    move-object/from16 v33, v27

    if-eqz v33, :cond_19

    .line 503
    move-object/from16 v33, v8

    move/from16 v34, v16

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v33 .. v34}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v29, v33

    .line 504
    .local v29, "d":Ljava/lang/Object;
    move-object/from16 v33, v29

    move-object/from16 v0, v33

    instance-of v0, v0, Lgnu/expr/Declaration;

    move/from16 v33, v0

    if-eqz v33, :cond_1a

    move-object/from16 v33, v29

    check-cast v33, Lgnu/expr/Declaration;

    const-wide/16 v34, 0x800

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v33

    :goto_d
    move/from16 v30, v33

    .line 507
    .local v30, "isStatic":Z
    move-object/from16 v33, v8

    move/from16 v34, v16

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v33 .. v34}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v33

    if-nez v33, :cond_19

    .line 508
    move-object/from16 v33, v29

    move-object/from16 v34, v6

    move-object/from16 v35, v27

    move-object/from16 v36, v5

    move-object/from16 v37, v28

    invoke-static/range {v33 .. v37}, Lkawa/standard/object;->rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    .line 541
    .end local v25    # "nKeywords":I
    .end local v27    # "initPair":Lgnu/lists/Pair;
    .end local v28    # "initSyntax":Lkawa/lang/SyntaxForm;
    .end local v29    # "d":Ljava/lang/Object;
    .end local v30    # "isStatic":Z
    :cond_19
    :goto_e
    move-object/from16 v33, v5

    move-object/from16 v34, v20

    invoke-virtual/range {v33 .. v34}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 542
    .line 544
    goto/16 :goto_4

    .line 504
    .restart local v25    # "nKeywords":I
    .restart local v27    # "initPair":Lgnu/lists/Pair;
    .restart local v28    # "initSyntax":Lkawa/lang/SyntaxForm;
    .restart local v29    # "d":Ljava/lang/Object;
    :cond_1a
    move-object/from16 v33, v29

    :try_start_2
    sget-object v34, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_1b

    const/16 v33, 0x1

    goto :goto_d

    :cond_1b
    const/16 v33, 0x0

    goto :goto_d

    .line 511
    .end local v25    # "nKeywords":I
    .end local v27    # "initPair":Lgnu/lists/Pair;
    .end local v28    # "initSyntax":Lkawa/lang/SyntaxForm;
    .end local v29    # "d":Ljava/lang/Object;
    :cond_1c
    move-object/from16 v33, v21

    move-object/from16 v0, v33

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v33, v0

    if-eqz v33, :cond_22

    .line 513
    move-object/from16 v33, v5

    invoke-virtual/range {v33 .. v33}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v33

    move-object/from16 v24, v33

    .line 518
    .local v24, "save_scope":Lgnu/expr/ScopeExp;
    move-object/from16 v33, v22

    if-eqz v33, :cond_1d

    .line 519
    move-object/from16 v33, v5

    move-object/from16 v34, v22

    invoke-interface/range {v34 .. v34}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 520
    :cond_1d
    const-string/jumbo v33, "*init*"

    move-object/from16 v34, v15

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1e

    .line 521
    move-object/from16 v33, v15

    sget-object v34, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V

    .line 522
    :cond_1e
    move-object/from16 v33, v15

    move-object/from16 v34, v19

    invoke-static/range {v33 .. v34}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 523
    move-object/from16 v33, v5

    move-object/from16 v0, v33

    iget-object v0, v0, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v33, v0

    move-object/from16 v25, v33

    .line 524
    .local v25, "saveLambda":Lgnu/expr/LambdaExp;
    move-object/from16 v33, v5

    move-object/from16 v34, v15

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 525
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-object v0, v0, Lkawa/standard/object;->lambda:Lkawa/lang/Lambda;

    move-object/from16 v33, v0

    move-object/from16 v34, v15

    move-object/from16 v35, v21

    check-cast v35, Lgnu/lists/Pair;

    invoke-virtual/range {v35 .. v35}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v36, v19

    invoke-virtual/range {v36 .. v36}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v37, v5

    move-object/from16 v38, v23

    if-eqz v38, :cond_21

    move-object/from16 v38, v22

    if-eqz v38, :cond_1f

    move-object/from16 v38, v23

    invoke-interface/range {v38 .. v38}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v38

    move-object/from16 v39, v22

    invoke-interface/range {v39 .. v39}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_21

    :cond_1f
    move-object/from16 v38, v23

    invoke-interface/range {v38 .. v38}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v38

    :goto_f
    invoke-virtual/range {v33 .. v38}, Lkawa/lang/Lambda;->rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 531
    move-object/from16 v33, v5

    move-object/from16 v34, v25

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 532
    move-object/from16 v33, v22

    if-eqz v33, :cond_20

    .line 533
    move-object/from16 v33, v5

    move-object/from16 v34, v24

    invoke-virtual/range {v33 .. v34}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 534
    :cond_20
    move-object/from16 v33, v15

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    move-object/from16 v33, v0

    move-object/from16 v15, v33

    .line 535
    goto/16 :goto_e

    .line 525
    :cond_21
    const/16 v38, 0x0

    goto :goto_f

    .line 537
    .end local v24    # "save_scope":Lgnu/expr/ScopeExp;
    .end local v25    # "saveLambda":Lgnu/expr/LambdaExp;
    :cond_22
    move-object/from16 v33, v5

    const-string/jumbo v34, "invalid field/method definition"

    invoke-virtual/range {v33 .. v34}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v33

    goto/16 :goto_e

    .line 541
    .end local v23    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    :catchall_0
    move-exception v33

    move-object/from16 v32, v33

    move-object/from16 v33, v5

    move-object/from16 v34, v20

    invoke-virtual/range {v33 .. v34}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v33, v32

    throw v33

    .line 547
    .end local v19    # "pair":Lgnu/lists/Pair;
    .end local v20    # "savedPos1":Ljava/lang/Object;
    .end local v21    # "pair_car":Ljava/lang/Object;
    .end local v22    # "memberSyntax":Lkawa/lang/SyntaxForm;
    :cond_23
    move-object/from16 v33, v6

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v33, v0

    if-eqz v33, :cond_24

    .line 548
    move-object/from16 v33, v6

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v33, v0

    move-object/from16 v34, v6

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 549
    :cond_24
    move-object/from16 v33, v6

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v33, v0

    if-eqz v33, :cond_25

    .line 550
    move-object/from16 v33, v6

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v33, v0

    move-object/from16 v34, v6

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 551
    :cond_25
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    invoke-virtual/range {v33 .. v34}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 552
    move-object/from16 v33, v6

    move-object/from16 v34, v5

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ClassExp;->declareParts(Lgnu/expr/Compilation;)V

    .line 553
    return-void
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 11

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lkawa/standard/object;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lgnu/lists/Pair;

    if-nez v6, :cond_0

    .line 40
    move-object v6, v2

    const-string/jumbo v7, "missing superclass specification in object"

    invoke-virtual {v6, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    .line 53
    .end local v0    # "this":Lkawa/standard/object;
    :goto_0
    return-object v0

    .line 41
    .restart local v0    # "this":Lkawa/standard/object;
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    move-object v3, v6

    .line 42
    .local v3, "pair":Lgnu/lists/Pair;
    new-instance v6, Lgnu/expr/ObjectExp;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lgnu/expr/ObjectExp;-><init>()V

    move-object v4, v6

    .line 43
    .local v4, "oexp":Lgnu/expr/ObjectExp;
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lgnu/lists/FString;

    if-eqz v6, :cond_2

    .line 46
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lgnu/lists/Pair;

    if-nez v6, :cond_1

    .line 47
    move-object v6, v2

    const-string/jumbo v7, "missing superclass specification after object class name"

    invoke-virtual {v6, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 48
    :cond_1
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    move-object v3, v6

    .line 50
    :cond_2
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Lkawa/standard/object;->scanClassDef(Lgnu/lists/Pair;Lgnu/expr/ClassExp;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 51
    .local v5, "saved":[Ljava/lang/Object;
    move-object v6, v5

    if-eqz v6, :cond_3

    .line 52
    move-object v6, v0

    move-object v7, v5

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lkawa/standard/object;->rewriteClassDef([Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 53
    :cond_3
    move-object v6, v4

    move-object v0, v6

    goto :goto_0
.end method

.method public scanClassDef(Lgnu/lists/Pair;Lgnu/expr/ClassExp;Lkawa/lang/Translator;)[Ljava/lang/Object;
    .locals 40

    .prologue
    .line 61
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/standard/object;
    move-object/from16 v3, p1

    .local v3, "pair":Lgnu/lists/Pair;
    move-object/from16 v4, p2

    .local v4, "oexp":Lgnu/expr/ClassExp;
    move-object/from16 v5, p3

    .local v5, "tr":Lkawa/lang/Translator;
    move-object/from16 v32, v5

    invoke-virtual/range {v32 .. v32}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 62
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v6, v32

    .line 63
    .local v6, "superlist":Ljava/lang/Object;
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v7, v32

    .line 64
    .local v7, "components":Ljava/lang/Object;
    const/16 v32, 0x0

    move-object/from16 v8, v32

    .line 65
    .local v8, "classNamePair":Ljava/lang/Object;
    const/16 v32, 0x0

    move-object/from16 v9, v32

    .line 66
    .local v9, "method_list":Lgnu/expr/LambdaExp;
    const/16 v32, 0x0

    move-object/from16 v10, v32

    .line 67
    .local v10, "last_method":Lgnu/expr/LambdaExp;
    const-wide/16 v32, 0x0

    move-wide/from16 v11, v32

    .line 69
    .local v11, "classAccessFlag":J
    new-instance v32, Ljava/util/Vector;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    const/16 v34, 0x14

    invoke-direct/range {v33 .. v34}, Ljava/util/Vector;-><init>(I)V

    move-object/from16 v13, v32

    .line 70
    .local v13, "inits":Ljava/util/Vector;
    move-object/from16 v32, v7

    move-object/from16 v14, v32

    .end local v8    # "classNamePair":Ljava/lang/Object;
    .local v14, "obj":Ljava/lang/Object;
    :goto_0
    move-object/from16 v32, v14

    sget-object v33, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_32

    .line 74
    :goto_1
    move-object/from16 v32, v14

    move-object/from16 v0, v32

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v32, v0

    if-eqz v32, :cond_0

    .line 75
    move-object/from16 v32, v14

    check-cast v32, Lkawa/lang/SyntaxForm;

    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v14, v32

    goto :goto_1

    .line 76
    :cond_0
    move-object/from16 v32, v14

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v32, v0

    if-nez v32, :cond_1

    .line 78
    move-object/from16 v32, v5

    const/16 v33, 0x65

    const-string/jumbo v34, "object member not a list"

    invoke-virtual/range {v32 .. v34}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 79
    const/16 v32, 0x0

    move-object/from16 v2, v32

    .line 321
    .end local v2    # "this":Lkawa/standard/object;
    .end local v14    # "obj":Ljava/lang/Object;
    :goto_2
    return-object v2

    .line 81
    .restart local v2    # "this":Lkawa/standard/object;
    .restart local v14    # "obj":Ljava/lang/Object;
    :cond_1
    move-object/from16 v32, v14

    check-cast v32, Lgnu/lists/Pair;

    move-object/from16 v3, v32

    .line 82
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v15, v32

    .line 83
    .local v15, "pair_car":Ljava/lang/Object;
    :goto_3
    move-object/from16 v32, v15

    move-object/from16 v0, v32

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v32, v0

    if-eqz v32, :cond_2

    .line 84
    move-object/from16 v32, v15

    check-cast v32, Lkawa/lang/SyntaxForm;

    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v15, v32

    goto :goto_3

    .line 85
    :cond_2
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v14, v32

    .line 86
    move-object/from16 v32, v5

    move-object/from16 v33, v3

    invoke-virtual/range {v32 .. v33}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v16, v32

    .line 87
    .local v16, "savedPos1":Ljava/lang/Object;
    move-object/from16 v32, v15

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v32, v0

    if-eqz v32, :cond_9

    .line 89
    :goto_4
    move-object/from16 v32, v14

    move-object/from16 v0, v32

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v32, v0

    if-eqz v32, :cond_3

    .line 90
    move-object/from16 v32, v14

    check-cast v32, Lkawa/lang/SyntaxForm;

    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v14, v32

    goto :goto_4

    .line 91
    :cond_3
    move-object/from16 v32, v14

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v32, v0

    if-eqz v32, :cond_9

    .line 93
    move-object/from16 v32, v15

    sget-object v33, Lkawa/standard/object;->interfaceKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_5

    .line 95
    move-object/from16 v32, v14

    check-cast v32, Lgnu/lists/Pair;

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v17, v32

    .line 96
    .local v17, "val":Ljava/lang/Object;
    move-object/from16 v32, v17

    sget-object v33, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_4

    .line 97
    move-object/from16 v32, v4

    const/high16 v33, 0x10000

    invoke-virtual/range {v32 .. v33}, Lgnu/expr/ClassExp;->setFlag(I)V

    .line 100
    :goto_5
    move-object/from16 v32, v14

    check-cast v32, Lgnu/lists/Pair;

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v14, v32

    .line 101
    move-object/from16 v32, v5

    move-object/from16 v33, v16

    invoke-virtual/range {v32 .. v33}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 102
    goto/16 :goto_0

    .line 99
    :cond_4
    move-object/from16 v32, v4

    const v33, 0x8000

    invoke-virtual/range {v32 .. v33}, Lgnu/expr/ClassExp;->setFlag(I)V

    goto :goto_5

    .line 104
    .end local v17    # "val":Ljava/lang/Object;
    :cond_5
    move-object/from16 v32, v15

    sget-object v33, Lkawa/standard/object;->classNameKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_7

    .line 106
    move-object/from16 v32, v8

    if-eqz v32, :cond_6

    .line 107
    move-object/from16 v32, v5

    const/16 v33, 0x65

    const-string/jumbo v34, "duplicate class-name specifiers"

    invoke-virtual/range {v32 .. v34}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 108
    :cond_6
    move-object/from16 v32, v14

    move-object/from16 v8, v32

    .line 109
    .restart local v8    # "classNamePair":Ljava/lang/Object;
    move-object/from16 v32, v14

    check-cast v32, Lgnu/lists/Pair;

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v14, v32

    .line 110
    move-object/from16 v32, v5

    move-object/from16 v33, v16

    invoke-virtual/range {v32 .. v33}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 111
    goto/16 :goto_0

    .line 113
    .end local v8    # "classNamePair":Ljava/lang/Object;
    :cond_7
    move-object/from16 v32, v15

    sget-object v33, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 115
    move-object/from16 v32, v5

    move-object/from16 v33, v14

    invoke-virtual/range {v32 .. v33}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v17, v32

    .line 116
    .local v17, "savedPos2":Ljava/lang/Object;
    move-object/from16 v32, v14

    check-cast v32, Lgnu/lists/Pair;

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v32

    move-wide/from16 v33, v11

    const-wide v35, 0x603000000L

    const-string/jumbo v37, "class"

    move-object/from16 v38, v5

    invoke-static/range {v32 .. v38}, Lkawa/standard/object;->addAccessFlags(Ljava/lang/Object;JJLjava/lang/String;Lkawa/lang/Translator;)J

    move-result-wide v32

    move-wide/from16 v11, v32

    .line 120
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v32, v0

    if-nez v32, :cond_8

    .line 121
    move-object/from16 v32, v5

    const/16 v33, 0x65

    const-string/jumbo v34, "access specifier for anonymous class"

    invoke-virtual/range {v32 .. v34}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 122
    :cond_8
    move-object/from16 v32, v5

    move-object/from16 v33, v17

    invoke-virtual/range {v32 .. v33}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 123
    move-object/from16 v32, v14

    check-cast v32, Lgnu/lists/Pair;

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v14, v32

    .line 124
    move-object/from16 v32, v5

    move-object/from16 v33, v16

    invoke-virtual/range {v32 .. v33}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 125
    goto/16 :goto_0

    .line 129
    .end local v17    # "savedPos2":Ljava/lang/Object;
    :cond_9
    move-object/from16 v32, v15

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v32, v0

    if-nez v32, :cond_a

    .line 131
    move-object/from16 v32, v5

    const/16 v33, 0x65

    const-string/jumbo v34, "object member not a list"

    invoke-virtual/range {v32 .. v34}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 132
    const/16 v32, 0x0

    move-object/from16 v2, v32

    goto/16 :goto_2

    .line 134
    :cond_a
    move-object/from16 v32, v15

    check-cast v32, Lgnu/lists/Pair;

    move-object/from16 v3, v32

    .line 135
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v15, v32

    .line 136
    :goto_6
    move-object/from16 v32, v15

    move-object/from16 v0, v32

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v32, v0

    if-eqz v32, :cond_b

    .line 137
    move-object/from16 v32, v15

    check-cast v32, Lkawa/lang/SyntaxForm;

    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v15, v32

    goto :goto_6

    .line 138
    :cond_b
    move-object/from16 v32, v15

    move-object/from16 v0, v32

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v32, v0

    if-nez v32, :cond_c

    move-object/from16 v32, v15

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v32, v0

    if-nez v32, :cond_c

    move-object/from16 v32, v15

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v32, v0

    if-eqz v32, :cond_2e

    .line 141
    :cond_c
    const/16 v32, 0x0

    move-object/from16 v17, v32

    .line 142
    .local v17, "typePair":Lgnu/lists/Pair;
    move-object/from16 v32, v15

    move-object/from16 v18, v32

    .line 145
    .local v18, "sname":Ljava/lang/Object;
    const/16 v32, 0x0

    move/from16 v21, v32

    .line 146
    .local v21, "allocationFlag":I
    const-wide/16 v32, 0x0

    move-wide/from16 v22, v32

    .line 147
    .local v22, "accessFlag":J
    move-object/from16 v32, v18

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v32, v0

    if-eqz v32, :cond_d

    .line 149
    const/16 v32, 0x0

    move-object/from16 v20, v32

    .line 150
    .local v20, "decl":Lgnu/expr/Declaration;
    move-object/from16 v32, v3

    move-object/from16 v19, v32

    .line 160
    :goto_7
    const/16 v32, 0x0

    move/from16 v24, v32

    .line 161
    .local v24, "nKeywords":I
    const/16 v32, 0x0

    move/from16 v25, v32

    .line 162
    .local v25, "seenInit":Z
    const/16 v32, 0x0

    move-object/from16 v26, v32

    .line 163
    .local v26, "initPair":Lgnu/lists/Pair;
    :goto_8
    move-object/from16 v32, v19

    sget-object v33, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_22

    .line 165
    :goto_9
    move-object/from16 v32, v19

    move-object/from16 v0, v32

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v32, v0

    if-eqz v32, :cond_e

    .line 166
    move-object/from16 v32, v19

    check-cast v32, Lkawa/lang/SyntaxForm;

    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v19, v32

    .local v19, "args":Ljava/lang/Object;
    goto :goto_9

    .line 154
    .end local v19    # "args":Ljava/lang/Object;
    .end local v20    # "decl":Lgnu/expr/Declaration;
    .end local v24    # "nKeywords":I
    .end local v25    # "seenInit":Z
    .end local v26    # "initPair":Lgnu/lists/Pair;
    :cond_d
    move-object/from16 v32, v4

    move-object/from16 v33, v18

    invoke-virtual/range {v32 .. v33}, Lgnu/expr/ClassExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v32

    move-object/from16 v20, v32

    .line 155
    .restart local v20    # "decl":Lgnu/expr/Declaration;
    move-object/from16 v32, v20

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 156
    move-object/from16 v32, v20

    const-wide/32 v33, 0x100000

    invoke-virtual/range {v32 .. v34}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 157
    move-object/from16 v32, v20

    move-object/from16 v33, v3

    invoke-static/range {v32 .. v33}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 158
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v19, v32

    .restart local v19    # "args":Ljava/lang/Object;
    goto :goto_7

    .line 167
    .end local v19    # "args":Ljava/lang/Object;
    .restart local v24    # "nKeywords":I
    .restart local v25    # "seenInit":Z
    .restart local v26    # "initPair":Lgnu/lists/Pair;
    :cond_e
    move-object/from16 v32, v19

    check-cast v32, Lgnu/lists/Pair;

    move-object/from16 v3, v32

    .line 168
    move-object/from16 v32, v3

    move-object/from16 v27, v32

    .line 169
    .local v27, "keyPair":Lgnu/lists/Pair;
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v28, v32

    .line 170
    .local v28, "key":Ljava/lang/Object;
    :goto_a
    move-object/from16 v32, v28

    move-object/from16 v0, v32

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v32, v0

    if-eqz v32, :cond_f

    .line 171
    move-object/from16 v32, v28

    check-cast v32, Lkawa/lang/SyntaxForm;

    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v28, v32

    goto :goto_a

    .line 172
    :cond_f
    move-object/from16 v32, v5

    move-object/from16 v33, v3

    invoke-virtual/range {v32 .. v33}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v29, v32

    .line 173
    .local v29, "savedPos2":Ljava/lang/Object;
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v19, v32

    .line 174
    .restart local v19    # "args":Ljava/lang/Object;
    move-object/from16 v32, v28

    sget-object v33, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_10

    move-object/from16 v32, v28

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v32, v0

    if-eqz v32, :cond_1f

    :cond_10
    move-object/from16 v32, v19

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v32, v0

    if-eqz v32, :cond_1f

    .line 177
    add-int/lit8 v24, v24, 0x1

    .line 178
    move-object/from16 v32, v19

    check-cast v32, Lgnu/lists/Pair;

    move-object/from16 v3, v32

    .line 179
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v30, v32

    .line 180
    .local v30, "value":Ljava/lang/Object;
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v19, v32

    .line 181
    move-object/from16 v32, v28

    sget-object v33, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_11

    move-object/from16 v32, v28

    sget-object v33, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_13

    .line 182
    :cond_11
    move-object/from16 v32, v3

    move-object/from16 v17, v32

    .line 229
    .line 251
    .end local v30    # "value":Ljava/lang/Object;
    :cond_12
    :goto_b
    move-object/from16 v32, v5

    move-object/from16 v33, v29

    invoke-virtual/range {v32 .. v33}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 252
    goto/16 :goto_8

    .line 183
    .restart local v30    # "value":Ljava/lang/Object;
    :cond_13
    move-object/from16 v32, v28

    sget-object v33, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_18

    .line 185
    move/from16 v32, v21

    if-eqz v32, :cond_14

    .line 186
    move-object/from16 v32, v5

    const/16 v33, 0x65

    const-string/jumbo v34, "duplicate allocation: specification"

    invoke-virtual/range {v32 .. v34}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 187
    :cond_14
    move-object/from16 v32, v30

    const-string/jumbo v33, "class"

    move-object/from16 v34, v5

    invoke-static/range {v32 .. v34}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v32

    if-nez v32, :cond_15

    move-object/from16 v32, v30

    const-string/jumbo v33, "static"

    move-object/from16 v34, v5

    invoke-static/range {v32 .. v34}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v32

    if-eqz v32, :cond_16

    .line 189
    :cond_15
    const/16 v32, 0x800

    move/from16 v21, v32

    goto :goto_b

    .line 190
    :cond_16
    move-object/from16 v32, v30

    const-string/jumbo v33, "instance"

    move-object/from16 v34, v5

    invoke-static/range {v32 .. v34}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v32

    if-eqz v32, :cond_17

    .line 191
    const/16 v32, 0x1000

    move/from16 v21, v32

    goto :goto_b

    .line 193
    :cond_17
    move-object/from16 v32, v5

    const/16 v33, 0x65

    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "unknown allocation kind \'"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v35, v30

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "\'"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_b

    .line 195
    :cond_18
    move-object/from16 v32, v28

    sget-object v33, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_19

    move-object/from16 v32, v28

    sget-object v33, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_19

    move-object/from16 v32, v28

    sget-object v33, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_19

    move-object/from16 v32, v28

    sget-object v33, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_1b

    .line 200
    :cond_19
    move/from16 v32, v25

    if-eqz v32, :cond_1a

    .line 201
    move-object/from16 v32, v5

    const/16 v33, 0x65

    const-string/jumbo v34, "duplicate initialization"

    invoke-virtual/range {v32 .. v34}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 202
    :cond_1a
    const/16 v32, 0x1

    move/from16 v25, v32

    .line 206
    move-object/from16 v32, v28

    sget-object v33, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_12

    .line 207
    move-object/from16 v32, v3

    move-object/from16 v26, v32

    goto/16 :goto_b

    .line 209
    :cond_1b
    move-object/from16 v32, v28

    sget-object v33, Lkawa/standard/object;->init_keywordKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_1d

    .line 211
    move-object/from16 v32, v30

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v32, v0

    if-nez v32, :cond_1c

    .line 212
    move-object/from16 v32, v5

    const/16 v33, 0x65

    const-string/jumbo v34, "invalid \'init-keyword\' - not a keyword"

    invoke-virtual/range {v32 .. v34}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_b

    .line 213
    :cond_1c
    move-object/from16 v32, v30

    check-cast v32, Lgnu/expr/Keyword;

    invoke-virtual/range {v32 .. v32}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v33, v18

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_12

    .line 215
    move-object/from16 v32, v5

    const/16 v33, 0x77

    const-string/jumbo v34, "init-keyword option ignored"

    invoke-virtual/range {v32 .. v34}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_b

    .line 217
    :cond_1d
    move-object/from16 v32, v28

    sget-object v33, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_1e

    .line 219
    move-object/from16 v32, v5

    move-object/from16 v33, v3

    invoke-virtual/range {v32 .. v33}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v31, v32

    .line 220
    .local v31, "savedPos3":Ljava/lang/Object;
    move-object/from16 v32, v30

    move-wide/from16 v33, v22

    const-wide v35, 0x78f000000L

    const-string/jumbo v37, "field"

    move-object/from16 v38, v5

    invoke-static/range {v32 .. v38}, Lkawa/standard/object;->addAccessFlags(Ljava/lang/Object;JJLjava/lang/String;Lkawa/lang/Translator;)J

    move-result-wide v32

    move-wide/from16 v22, v32

    .line 223
    move-object/from16 v32, v5

    move-object/from16 v33, v31

    invoke-virtual/range {v32 .. v33}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 224
    goto/16 :goto_b

    .line 227
    .end local v31    # "savedPos3":Ljava/lang/Object;
    :cond_1e
    move-object/from16 v32, v5

    const/16 v33, 0x77

    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "unknown slot keyword \'"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v35, v28

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "\'"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_b

    .line 230
    .end local v30    # "value":Ljava/lang/Object;
    :cond_1f
    move-object/from16 v32, v19

    sget-object v33, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_20

    move/from16 v32, v25

    if-nez v32, :cond_20

    .line 233
    move-object/from16 v32, v27

    move-object/from16 v26, v32

    .line 234
    const/16 v32, 0x1

    move/from16 v25, v32

    goto/16 :goto_b

    .line 236
    :cond_20
    move-object/from16 v32, v19

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v32, v0

    if-eqz v32, :cond_21

    move/from16 v32, v24

    if-nez v32, :cond_21

    move/from16 v32, v25

    if-nez v32, :cond_21

    move-object/from16 v32, v17

    if-nez v32, :cond_21

    move-object/from16 v32, v19

    check-cast v32, Lgnu/lists/Pair;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    move-object/from16 v3, v33

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v32

    sget-object v33, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_21

    .line 241
    move-object/from16 v32, v27

    move-object/from16 v17, v32

    .line 242
    move-object/from16 v32, v3

    move-object/from16 v26, v32

    .line 243
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v19, v32

    .line 244
    const/16 v32, 0x1

    move/from16 v25, v32

    goto/16 :goto_b

    .line 248
    :cond_21
    const/16 v32, 0x0

    move-object/from16 v19, v32

    .line 253
    .end local v19    # "args":Ljava/lang/Object;
    .end local v27    # "keyPair":Lgnu/lists/Pair;
    .end local v28    # "key":Ljava/lang/Object;
    .end local v29    # "savedPos2":Ljava/lang/Object;
    :cond_22
    move-object/from16 v32, v19

    sget-object v33, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_24

    .line 255
    move-object/from16 v32, v5

    const/16 v33, 0x65

    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "invalid argument list for slot \'"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v35, v18

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x27

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " args:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v35, v19

    if-nez v35, :cond_23

    const-string/jumbo v35, "null"

    :goto_c
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 257
    const/16 v32, 0x0

    move-object/from16 v2, v32

    goto/16 :goto_2

    .line 255
    :cond_23
    move-object/from16 v35, v19

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v35

    goto :goto_c

    .line 259
    :cond_24
    move/from16 v32, v25

    if-eqz v32, :cond_25

    .line 261
    move/from16 v32, v21

    const/16 v33, 0x800

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_26

    const/16 v32, 0x1

    :goto_d
    move/from16 v27, v32

    .line 263
    .local v27, "isStatic":Z
    move-object/from16 v32, v13

    move-object/from16 v33, v20

    if-eqz v33, :cond_27

    move-object/from16 v33, v20

    :goto_e
    invoke-virtual/range {v32 .. v33}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 265
    move-object/from16 v32, v13

    move-object/from16 v33, v26

    invoke-virtual/range {v32 .. v33}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 267
    .end local v27    # "isStatic":Z
    :cond_25
    move-object/from16 v32, v20

    if-nez v32, :cond_29

    .line 269
    move/from16 v32, v25

    if-nez v32, :cond_2d

    .line 271
    move-object/from16 v32, v5

    const/16 v33, 0x65

    const-string/jumbo v34, "missing field name"

    invoke-virtual/range {v32 .. v34}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 272
    const/16 v32, 0x0

    move-object/from16 v2, v32

    goto/16 :goto_2

    .line 261
    :cond_26
    const/16 v32, 0x0

    goto :goto_d

    .line 263
    .restart local v27    # "isStatic":Z
    :cond_27
    move/from16 v33, v27

    if-eqz v33, :cond_28

    sget-object v33, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_e

    :cond_28
    sget-object v33, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_e

    .line 277
    .end local v27    # "isStatic":Z
    :cond_29
    move-object/from16 v32, v17

    if-eqz v32, :cond_2a

    .line 278
    move-object/from16 v32, v20

    move-object/from16 v33, v5

    move-object/from16 v34, v17

    invoke-virtual/range {v33 .. v34}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 279
    :cond_2a
    move/from16 v32, v21

    if-eqz v32, :cond_2b

    .line 280
    move-object/from16 v32, v20

    move/from16 v33, v21

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 281
    :cond_2b
    move-wide/from16 v32, v22

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_2c

    .line 282
    move-object/from16 v32, v20

    move-wide/from16 v33, v22

    invoke-virtual/range {v32 .. v34}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 283
    :cond_2c
    move-object/from16 v32, v20

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 284
    move-object/from16 v32, v20

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 286
    .line 308
    .end local v17    # "typePair":Lgnu/lists/Pair;
    .end local v18    # "sname":Ljava/lang/Object;
    .end local v20    # "decl":Lgnu/expr/Declaration;
    .end local v21    # "allocationFlag":I
    .end local v22    # "accessFlag":J
    .end local v24    # "nKeywords":I
    .end local v25    # "seenInit":Z
    .end local v26    # "initPair":Lgnu/lists/Pair;
    :cond_2d
    :goto_f
    move-object/from16 v32, v5

    move-object/from16 v33, v16

    invoke-virtual/range {v32 .. v33}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 309
    goto/16 :goto_0

    .line 287
    :cond_2e
    move-object/from16 v32, v15

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v32, v0

    if-eqz v32, :cond_31

    .line 289
    move-object/from16 v32, v15

    check-cast v32, Lgnu/lists/Pair;

    move-object/from16 v17, v32

    .line 290
    .local v17, "mpair":Lgnu/lists/Pair;
    move-object/from16 v32, v17

    invoke-virtual/range {v32 .. v32}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v18, v32

    .line 291
    .local v18, "mname":Ljava/lang/Object;
    move-object/from16 v32, v18

    move-object/from16 v0, v32

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v32, v0

    if-nez v32, :cond_2f

    move-object/from16 v32, v18

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v32, v0

    if-nez v32, :cond_2f

    .line 294
    move-object/from16 v32, v5

    const/16 v33, 0x65

    const-string/jumbo v34, "missing method name"

    invoke-virtual/range {v32 .. v34}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 295
    const/16 v32, 0x0

    move-object/from16 v2, v32

    goto/16 :goto_2

    .line 297
    :cond_2f
    new-instance v32, Lgnu/expr/LambdaExp;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    invoke-direct/range {v33 .. v33}, Lgnu/expr/LambdaExp;-><init>()V

    move-object/from16 v19, v32

    .line 298
    .local v19, "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v32, v4

    move-object/from16 v33, v19

    move-object/from16 v34, v18

    invoke-virtual/range {v32 .. v34}, Lgnu/expr/ClassExp;->addMethod(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v32

    move-object/from16 v20, v32

    .line 299
    .restart local v20    # "decl":Lgnu/expr/Declaration;
    move-object/from16 v32, v20

    move-object/from16 v33, v17

    invoke-static/range {v32 .. v33}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 300
    move-object/from16 v32, v10

    if-nez v32, :cond_30

    .line 301
    move-object/from16 v32, v19

    move-object/from16 v9, v32

    .line 304
    :goto_10
    move-object/from16 v32, v19

    move-object/from16 v10, v32

    .line 305
    goto :goto_f

    .line 303
    :cond_30
    move-object/from16 v32, v10

    move-object/from16 v33, v19

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_10

    .line 307
    .end local v17    # "mpair":Lgnu/lists/Pair;
    .end local v18    # "mname":Ljava/lang/Object;
    .end local v19    # "lexp":Lgnu/expr/LambdaExp;
    .end local v20    # "decl":Lgnu/expr/Declaration;
    :cond_31
    move-object/from16 v32, v5

    const/16 v33, 0x65

    const-string/jumbo v34, "invalid field/method definition"

    invoke-virtual/range {v32 .. v34}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_f

    .line 310
    .end local v15    # "pair_car":Ljava/lang/Object;
    .end local v16    # "savedPos1":Ljava/lang/Object;
    :cond_32
    move-wide/from16 v32, v11

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_33

    .line 311
    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v32, v0

    move-wide/from16 v33, v11

    invoke-virtual/range {v32 .. v34}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 313
    :cond_33
    const/16 v32, 0x6

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    const/16 v34, 0x0

    move-object/from16 v35, v4

    aput-object v35, v33, v34

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    const/16 v34, 0x1

    move-object/from16 v35, v7

    aput-object v35, v33, v34

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    const/16 v34, 0x2

    move-object/from16 v35, v13

    aput-object v35, v33, v34

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    const/16 v34, 0x3

    move-object/from16 v35, v9

    aput-object v35, v33, v34

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    const/16 v34, 0x4

    move-object/from16 v35, v6

    aput-object v35, v33, v34

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    const/16 v34, 0x5

    move-object/from16 v35, v8

    aput-object v35, v33, v34

    move-object/from16 v14, v32

    .line 321
    .local v14, "result":[Ljava/lang/Object;
    move-object/from16 v32, v14

    move-object/from16 v2, v32

    goto/16 :goto_2
.end method
