.class public Lkawa/standard/module_static;
.super Lkawa/lang/Syntax;
.source "module_static.java"


# static fields
.field public static final module_static:Lkawa/standard/module_static;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lkawa/standard/module_static;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/module_static;-><init>()V

    sput-object v0, Lkawa/standard/module_static;->module_static:Lkawa/standard/module_static;

    .line 11
    sget-object v0, Lkawa/standard/module_static;->module_static:Lkawa/standard/module_static;

    const-string/jumbo v1, "module-static"

    invoke-virtual {v0, v1}, Lkawa/standard/module_static;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lkawa/standard/module_static;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lkawa/standard/module_static;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lkawa/standard/module_static;
    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 14

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lkawa/standard/module_static;
    move-object v1, p1

    .local v1, "st":Lgnu/lists/Pair;
    move-object/from16 v2, p2

    .local v2, "forms":Ljava/util/Vector;
    move-object/from16 v3, p3

    .local v3, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v4, p4

    .local v4, "tr":Lkawa/lang/Translator;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    .line 17
    .local v5, "list":Ljava/lang/Object;
    move-object v9, v3

    instance-of v9, v9, Lgnu/expr/ModuleExp;

    if-nez v9, :cond_0

    .line 19
    move-object v9, v4

    const/16 v10, 0x65

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    invoke-virtual {v12}, Lkawa/standard/module_static;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' not at module level"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 20
    const/4 v9, 0x1

    move v0, v9

    .line 75
    .end local v0    # "this":Lkawa/standard/module_static;
    :goto_0
    return v0

    .line 22
    .restart local v0    # "this":Lkawa/standard/module_static;
    :cond_0
    move-object v9, v3

    check-cast v9, Lgnu/expr/ModuleExp;

    move-object v6, v9

    .line 23
    .local v6, "mexp":Lgnu/expr/ModuleExp;
    move-object v9, v5

    instance-of v9, v9, Lgnu/lists/Pair;

    if-eqz v9, :cond_4

    move-object v9, v5

    check-cast v9, Lgnu/lists/Pair;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v1, v10

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v9, v10, :cond_4

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/Boolean;

    if-eqz v9, :cond_4

    .line 27
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v9, v10, :cond_3

    .line 28
    move-object v9, v6

    const/high16 v10, 0x10000

    invoke-virtual {v9, v10}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 72
    :cond_1
    :goto_1
    move-object v9, v6

    const/high16 v10, 0x10000

    invoke-virtual {v9, v10}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v6

    const v10, 0x8000

    invoke-virtual {v9, v10}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 74
    move-object v9, v4

    const/16 v10, 0x65

    const-string/jumbo v11, "inconsistent module-static specifiers"

    invoke-virtual {v9, v10, v11}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 75
    :cond_2
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 30
    :cond_3
    move-object v9, v6

    const v10, 0x8000

    invoke-virtual {v9, v10}, Lgnu/expr/ModuleExp;->setFlag(I)V

    goto :goto_1

    .line 32
    :cond_4
    move-object v9, v5

    instance-of v9, v9, Lgnu/lists/Pair;

    if-eqz v9, :cond_6

    move-object v9, v5

    check-cast v9, Lgnu/lists/Pair;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v1, v10

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v9, v10, :cond_6

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lgnu/lists/Pair;

    if-eqz v9, :cond_6

    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/lists/Pair;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v1, v11

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    const-string/jumbo v11, "quote"

    invoke-virtual {v9, v10, v11}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 37
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/lists/Pair;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v1, v10

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v9, v10, :cond_5

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lgnu/mapping/SimpleSymbol;

    if-eqz v9, :cond_5

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "init-run"

    if-ne v9, v10, :cond_5

    .line 42
    move-object v9, v6

    const v10, 0x8000

    invoke-virtual {v9, v10}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 43
    move-object v9, v6

    const/high16 v10, 0x40000

    invoke-virtual {v9, v10}, Lgnu/expr/ModuleExp;->setFlag(I)V

    goto/16 :goto_1

    .line 47
    :cond_5
    move-object v9, v4

    const/16 v10, 0x65

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "invalid quoted symbol for \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    invoke-virtual {v12}, Lkawa/standard/module_static;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x27

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 48
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 53
    :cond_6
    move-object v9, v6

    const/high16 v10, 0x10000

    invoke-virtual {v9, v10}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 56
    :goto_2
    move-object v9, v5

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v9, v10, :cond_1

    .line 58
    move-object v9, v5

    instance-of v9, v9, Lgnu/lists/Pair;

    if-eqz v9, :cond_7

    move-object v9, v5

    check-cast v9, Lgnu/lists/Pair;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v1, v10

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-nez v9, :cond_8

    .line 61
    :cond_7
    move-object v9, v4

    const/16 v10, 0x65

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "invalid syntax in \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    invoke-virtual {v12}, Lkawa/standard/module_static;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x27

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 62
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 64
    :cond_8
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/Symbol;

    move-object v7, v9

    .line 65
    .local v7, "symbol":Lgnu/mapping/Symbol;
    move-object v9, v3

    move-object v10, v7

    invoke-virtual {v9, v10}, Lgnu/expr/ScopeExp;->getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v9

    move-object v8, v9

    .line 66
    .local v8, "decl":Lgnu/expr/Declaration;
    move-object v9, v8

    const-wide/16 v10, 0x200

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 67
    move-object v9, v8

    move-object v10, v1

    invoke-static {v9, v10}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 68
    :cond_9
    move-object v9, v8

    const-wide/16 v10, 0x800

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 69
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    .line 70
    goto :goto_2
.end method
