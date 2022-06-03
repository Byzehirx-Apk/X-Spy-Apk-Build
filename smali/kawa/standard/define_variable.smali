.class public Lkawa/standard/define_variable;
.super Lkawa/lang/Syntax;
.source "define_variable.java"


# static fields
.field public static final define_variable:Lkawa/standard/define_variable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lkawa/standard/define_variable;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/define_variable;-><init>()V

    sput-object v0, Lkawa/standard/define_variable;->define_variable:Lkawa/standard/define_variable;

    .line 12
    sget-object v0, Lkawa/standard/define_variable;->define_variable:Lkawa/standard/define_variable;

    const-string/jumbo v1, "define-variable"

    invoke-virtual {v0, v1}, Lkawa/standard/define_variable;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define_variable;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 12

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define_variable;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 44
    .local v3, "obj":Ljava/lang/Object;
    const/4 v7, 0x0

    move-object v4, v7

    .line 45
    .local v4, "value":Lgnu/expr/Expression;
    const/4 v7, 0x0

    move-object v5, v7

    .line 47
    .local v5, "decl":Lgnu/expr/Declaration;
    move-object v7, v3

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_2

    .line 49
    move-object v7, v3

    check-cast v7, Lgnu/lists/Pair;

    move-object v6, v7

    .line 50
    .local v6, "p1":Lgnu/lists/Pair;
    move-object v7, v6

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 51
    move-object v7, v3

    instance-of v7, v7, Ljava/lang/String;

    if-nez v7, :cond_0

    move-object v7, v3

    instance-of v7, v7, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_1

    .line 52
    :cond_0
    move-object v7, v2

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    invoke-virtual {v9}, Lkawa/standard/define_variable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is only allowed in a <body>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v0, v7

    .line 80
    .end local v0    # "this":Lkawa/standard/define_variable;
    .end local v6    # "p1":Lgnu/lists/Pair;
    :goto_0
    return-object v0

    .line 53
    .restart local v0    # "this":Lkawa/standard/define_variable;
    .restart local v6    # "p1":Lgnu/lists/Pair;
    :cond_1
    move-object v7, v3

    instance-of v7, v7, Lgnu/expr/Declaration;

    if-eqz v7, :cond_2

    .line 55
    move-object v7, v6

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/Declaration;

    move-object v5, v7

    .line 56
    move-object v7, v6

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 57
    move-object v7, v3

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_3

    move-object v7, v3

    check-cast v7, Lgnu/lists/Pair;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v6, v8

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v7, v8, :cond_3

    .line 59
    move-object v7, v2

    move-object v8, v6

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v4, v7

    .line 64
    .end local v6    # "p1":Lgnu/lists/Pair;
    :cond_2
    :goto_1
    move-object v7, v5

    if-nez v7, :cond_4

    .line 65
    move-object v7, v2

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid syntax for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Lkawa/standard/define_variable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 60
    .restart local v6    # "p1":Lgnu/lists/Pair;
    :cond_3
    move-object v7, v3

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v7, v8, :cond_2

    .line 61
    const/4 v7, 0x0

    move-object v5, v7

    goto :goto_1

    .line 66
    .end local v6    # "p1":Lgnu/lists/Pair;
    :cond_4
    move-object v7, v4

    if-nez v7, :cond_5

    .line 67
    sget-object v7, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object v0, v7

    goto :goto_0

    .line 68
    :cond_5
    new-instance v7, Lgnu/expr/SetExp;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v5

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    move-object v6, v7

    .line 69
    .local v6, "sexp":Lgnu/expr/SetExp;
    move-object v7, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 70
    move-object v7, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/expr/SetExp;->setSetIfUnbound(Z)V

    .line 72
    move-object v7, v5

    if-eqz v7, :cond_7

    .line 74
    move-object v7, v6

    move-object v8, v5

    invoke-virtual {v7, v8}, Lgnu/expr/SetExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 75
    move-object v7, v5

    iget-object v7, v7, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v7, v7, Lgnu/expr/ModuleExp;

    if-eqz v7, :cond_6

    move-object v7, v5

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 77
    const/4 v7, 0x0

    move-object v4, v7

    .line 78
    :cond_6
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 80
    :cond_7
    move-object v7, v6

    move-object v0, v7

    goto/16 :goto_0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 15

    .prologue
    .line 17
    move-object v1, p0

    .local v1, "this":Lkawa/standard/define_variable;
    move-object/from16 v2, p1

    .local v2, "st":Lgnu/lists/Pair;
    move-object/from16 v3, p2

    .local v3, "forms":Ljava/util/Vector;
    move-object/from16 v4, p3

    .local v4, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v5, p4

    .local v5, "tr":Lkawa/lang/Translator;
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lgnu/lists/Pair;

    if-nez v9, :cond_0

    .line 18
    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-super {v9, v10, v11, v12, v13}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v9

    move v1, v9

    .line 38
    .end local v1    # "this":Lkawa/standard/define_variable;
    :goto_0
    return v1

    .line 19
    .restart local v1    # "this":Lkawa/standard/define_variable;
    :cond_0
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/lists/Pair;

    move-object v6, v9

    .line 20
    .local v6, "p":Lgnu/lists/Pair;
    move-object v9, v6

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .line 21
    .local v7, "sym":Ljava/lang/Object;
    move-object v9, v7

    instance-of v9, v9, Ljava/lang/String;

    if-nez v9, :cond_1

    move-object v9, v7

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_3

    .line 23
    :cond_1
    move-object v9, v4

    move-object v10, v7

    invoke-virtual {v9, v10}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v9

    move-object v8, v9

    .line 24
    .local v8, "decl":Lgnu/expr/Declaration;
    move-object v9, v8

    if-eqz v9, :cond_2

    .line 25
    move-object v9, v5

    const/16 v10, 0x65

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "duplicate declaration for \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 26
    :cond_2
    move-object v9, v4

    move-object v10, v7

    invoke-virtual {v9, v10}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v9

    move-object v8, v9

    .line 27
    move-object v9, v5

    move-object v10, v8

    invoke-virtual {v9, v10}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 28
    move-object v9, v8

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 29
    move-object v9, v8

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 30
    move-object v9, v8

    const-wide/32 v10, 0x10040000

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 31
    move-object v9, v8

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 32
    move-object v9, v8

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 33
    move-object v9, v8

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 34
    move-object v9, v6

    move-object v10, v8

    move-object v11, v6

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    move-object v6, v9

    .line 35
    move-object v9, v2

    move-object v10, v1

    move-object v11, v6

    invoke-static {v9, v10, v11}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    move-object v2, v9

    .line 37
    .end local v8    # "decl":Lgnu/expr/Declaration;
    :cond_3
    move-object v9, v3

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 38
    const/4 v9, 0x1

    move v1, v9

    goto/16 :goto_0
.end method
