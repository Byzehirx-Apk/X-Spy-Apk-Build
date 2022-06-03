.class public Lkawa/standard/define_unit;
.super Lkawa/lang/Syntax;
.source "define_unit.java"


# static fields
.field public static final define_base_unit:Lkawa/standard/define_unit;

.field public static final define_unit:Lkawa/standard/define_unit;


# instance fields
.field base:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    new-instance v0, Lkawa/standard/define_unit;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkawa/standard/define_unit;-><init>(Z)V

    sput-object v0, Lkawa/standard/define_unit;->define_unit:Lkawa/standard/define_unit;

    .line 15
    sget-object v0, Lkawa/standard/define_unit;->define_unit:Lkawa/standard/define_unit;

    const-string/jumbo v1, "define-unit"

    invoke-virtual {v0, v1}, Lkawa/standard/define_unit;->setName(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lkawa/standard/define_unit;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lkawa/standard/define_unit;-><init>(Z)V

    sput-object v0, Lkawa/standard/define_unit;->define_base_unit:Lkawa/standard/define_unit;

    .line 17
    sget-object v0, Lkawa/standard/define_unit;->define_base_unit:Lkawa/standard/define_unit;

    const-string/jumbo v1, "define-base-unit"

    invoke-virtual {v0, v1}, Lkawa/standard/define_unit;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lkawa/standard/define_unit;
    move v1, p1

    .local v1, "base":Z
    move-object v2, v0

    invoke-direct {v2}, Lkawa/lang/Syntax;-><init>()V

    .line 24
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lkawa/standard/define_unit;->base:Z

    .line 25
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 19

    .prologue
    .line 75
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/standard/define_unit;
    move-object/from16 v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object/from16 v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    move-object v3, v13

    .line 76
    .local v3, "obj":Ljava/lang/Object;
    const/4 v13, 0x0

    move-object v4, v13

    .line 79
    .local v4, "value":Lgnu/expr/Expression;
    move-object v13, v3

    instance-of v13, v13, Lgnu/lists/Pair;

    if-eqz v13, :cond_0

    move-object v13, v3

    check-cast v13, Lgnu/lists/Pair;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v5, v14

    .local v5, "p1":Lgnu/lists/Pair;
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lgnu/expr/Declaration;

    if-nez v13, :cond_1

    .line 81
    .end local v5    # "p1":Lgnu/lists/Pair;
    :cond_0
    move-object v13, v2

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "invalid syntax for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v0

    invoke-virtual {v15}, Lkawa/standard/define_unit;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v13

    move-object v0, v13

    .line 124
    .end local v0    # "this":Lkawa/standard/define_unit;
    :goto_0
    return-object v0

    .line 82
    .restart local v0    # "this":Lkawa/standard/define_unit;
    .restart local v5    # "p1":Lgnu/lists/Pair;
    :cond_1
    move-object v13, v5

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/expr/Declaration;

    move-object v6, v13

    .line 83
    .local v6, "decl":Lgnu/expr/Declaration;
    move-object v13, v6

    invoke-virtual {v13}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/Symbol;

    move-object v7, v13

    .line 84
    .local v7, "symbol":Lgnu/mapping/Symbol;
    move-object v13, v7

    invoke-virtual {v13}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 85
    .local v8, "unit":Ljava/lang/String;
    const-string/jumbo v13, "gnu.math.Unit"

    invoke-static {v13}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v13

    move-object v9, v13

    .line 86
    .local v9, "unitType":Lgnu/bytecode/ClassType;
    move-object v13, v6

    move-object v14, v9

    invoke-virtual {v13, v14}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 87
    move-object v13, v6

    invoke-virtual {v13}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v13

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v4, v14

    instance-of v13, v13, Lgnu/expr/QuoteExp;

    if-eqz v13, :cond_2

    move-object v13, v4

    check-cast v13, Lgnu/expr/QuoteExp;

    invoke-virtual {v13}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lgnu/math/Unit;

    if-eqz v13, :cond_2

    .line 89
    .line 121
    :goto_1
    new-instance v13, Lgnu/expr/SetExp;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v6

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    move-object v10, v13

    .line 122
    .local v10, "sexp":Lgnu/expr/SetExp;
    move-object v13, v10

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 123
    move-object v13, v6

    move-object v14, v4

    invoke-virtual {v13, v14}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 124
    move-object v13, v10

    move-object v0, v13

    goto :goto_0

    .line 90
    .end local v10    # "sexp":Lgnu/expr/SetExp;
    :cond_2
    move-object v13, v0

    iget-boolean v13, v13, Lkawa/standard/define_unit;->base:Z

    if-eqz v13, :cond_4

    .line 92
    const/4 v13, 0x0

    move-object v10, v13

    .line 93
    .local v10, "dimension":Ljava/lang/String;
    move-object v13, v5

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v13, v14, :cond_3

    .line 95
    move-object v13, v5

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/lists/Pair;

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 97
    :cond_3
    move-object v13, v8

    move-object v14, v10

    invoke-static {v13, v14}, Lgnu/math/BaseUnit;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v13

    move-object v11, v13

    .line 98
    .local v11, "bunit":Lgnu/math/BaseUnit;
    new-instance v13, Lgnu/expr/QuoteExp;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v11

    invoke-direct {v14, v15}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v4, v13

    .line 99
    goto :goto_1

    .line 102
    .end local v10    # "dimension":Ljava/lang/String;
    .end local v11    # "bunit":Lgnu/math/BaseUnit;
    :cond_4
    move-object v13, v5

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lgnu/lists/Pair;

    if-nez v13, :cond_5

    .line 103
    move-object v13, v2

    const-string/jumbo v14, "missing value for define-unit"

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v13

    move-object v0, v13

    goto/16 :goto_0

    .line 104
    :cond_5
    move-object v13, v5

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/lists/Pair;

    move-object v10, v13

    .line 105
    .local v10, "p2":Lgnu/lists/Pair;
    move-object v13, v2

    move-object v14, v10

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v13

    move-object v4, v13

    .line 107
    move-object v13, v4

    instance-of v13, v13, Lgnu/expr/QuoteExp;

    if-eqz v13, :cond_6

    move-object v13, v4

    check-cast v13, Lgnu/expr/QuoteExp;

    invoke-virtual {v13}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v11, v14

    .local v11, "quantity":Ljava/lang/Object;
    instance-of v13, v13, Lgnu/math/Quantity;

    if-eqz v13, :cond_6

    .line 110
    new-instance v13, Lgnu/expr/QuoteExp;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v8

    move-object/from16 v16, v11

    check-cast v16, Lgnu/math/Quantity;

    invoke-static/range {v15 .. v16}, Lgnu/math/Unit;->make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;

    move-result-object v15

    invoke-direct {v14, v15}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v4, v13

    goto/16 :goto_1

    .line 114
    .end local v11    # "quantity":Ljava/lang/Object;
    :cond_6
    const/4 v13, 0x2

    new-array v13, v13, [Lgnu/expr/Expression;

    move-object v12, v13

    .line 115
    .local v12, "args":[Lgnu/expr/Expression;
    move-object v13, v12

    const/4 v14, 0x0

    new-instance v15, Lgnu/expr/QuoteExp;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v17, v8

    invoke-direct/range {v16 .. v17}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v15, v13, v14

    .line 116
    move-object v13, v12

    const/4 v14, 0x1

    move-object v15, v4

    aput-object v15, v13, v14

    .line 117
    move-object v13, v9

    const-string/jumbo v14, "make"

    move-object v15, v12

    invoke-static {v13, v14, v15}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v13

    move-object v4, v13

    goto/16 :goto_1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 18

    .prologue
    .line 30
    move-object/from16 v1, p0

    .local v1, "this":Lkawa/standard/define_unit;
    move-object/from16 v2, p1

    .local v2, "st":Lgnu/lists/Pair;
    move-object/from16 v3, p2

    .local v3, "forms":Ljava/util/Vector;
    move-object/from16 v4, p3

    .local v4, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v5, p4

    .local v5, "tr":Lkawa/lang/Translator;
    move-object v13, v2

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lgnu/lists/Pair;

    if-eqz v13, :cond_5

    .line 32
    move-object v13, v2

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/lists/Pair;

    move-object v6, v13

    .line 33
    .local v6, "p":Lgnu/lists/Pair;
    move-object v13, v6

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    move-object v7, v13

    .line 34
    .local v7, "q":Ljava/lang/Object;
    move-object v13, v7

    instance-of v13, v13, Lgnu/mapping/SimpleSymbol;

    if-eqz v13, :cond_5

    .line 36
    move-object v13, v7

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 37
    .local v8, "name":Ljava/lang/String;
    sget-object v13, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    move-object v14, v8

    invoke-virtual {v13, v14}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v13

    move-object v9, v13

    .line 38
    .local v9, "sym":Lgnu/mapping/Symbol;
    move-object v13, v4

    move-object v14, v9

    const/16 v15, 0x77

    move-object/from16 v16, v5

    invoke-virtual/range {v13 .. v16}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v13

    move-object v10, v13

    .line 39
    .local v10, "decl":Lgnu/expr/Declaration;
    move-object v13, v5

    move-object v14, v10

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 40
    move-object v13, v10

    move-object v14, v6

    invoke-static {v13, v14}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 41
    move-object v13, v10

    const-wide/16 v14, 0x4000

    invoke-virtual {v13, v14, v15}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 42
    move-object v13, v4

    instance-of v13, v13, Lgnu/expr/ModuleExp;

    if-eqz v13, :cond_0

    .line 43
    move-object v13, v10

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 44
    :cond_0
    const/4 v13, 0x0

    move-object v11, v13

    .line 45
    .local v11, "unit":Lgnu/math/Unit;
    move-object v13, v1

    iget-boolean v13, v13, Lkawa/standard/define_unit;->base:Z

    if-eqz v13, :cond_3

    move-object v13, v6

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v13, v14, :cond_3

    .line 46
    move-object v13, v8

    const/4 v14, 0x0

    check-cast v14, Ljava/lang/String;

    invoke-static {v13, v14}, Lgnu/math/BaseUnit;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v13

    move-object v11, v13

    .line 61
    :cond_1
    :goto_0
    move-object v13, v11

    if-eqz v13, :cond_2

    .line 62
    move-object v13, v10

    new-instance v14, Lgnu/expr/QuoteExp;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v11

    invoke-direct/range {v15 .. v16}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v13, v14}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 63
    :cond_2
    move-object v13, v6

    move-object v14, v10

    move-object v15, v6

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v13

    move-object v6, v13

    .line 64
    move-object v13, v2

    move-object v14, v1

    move-object v15, v6

    invoke-static {v13, v14, v15}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v13

    move-object v2, v13

    .line 65
    move-object v13, v3

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 66
    const/4 v13, 0x1

    move v1, v13

    .line 70
    .end local v1    # "this":Lkawa/standard/define_unit;
    .end local v6    # "p":Lgnu/lists/Pair;
    .end local v7    # "q":Ljava/lang/Object;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "sym":Lgnu/mapping/Symbol;
    .end local v10    # "decl":Lgnu/expr/Declaration;
    .end local v11    # "unit":Lgnu/math/Unit;
    :goto_1
    return v1

    .line 47
    .restart local v1    # "this":Lkawa/standard/define_unit;
    .restart local v6    # "p":Lgnu/lists/Pair;
    .restart local v7    # "q":Ljava/lang/Object;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "sym":Lgnu/mapping/Symbol;
    .restart local v10    # "decl":Lgnu/expr/Declaration;
    .restart local v11    # "unit":Lgnu/math/Unit;
    :cond_3
    move-object v13, v6

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lgnu/lists/Pair;

    if-eqz v13, :cond_1

    .line 49
    move-object v13, v6

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/lists/Pair;

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    move-object v12, v13

    .line 50
    .local v12, "v":Ljava/lang/Object;
    move-object v13, v1

    iget-boolean v13, v13, Lkawa/standard/define_unit;->base:Z

    if-eqz v13, :cond_4

    move-object v13, v12

    instance-of v13, v13, Ljava/lang/CharSequence;

    if-eqz v13, :cond_4

    .line 57
    move-object v13, v8

    move-object v14, v12

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lgnu/math/BaseUnit;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v13

    move-object v11, v13

    goto :goto_0

    .line 58
    :cond_4
    move-object v13, v1

    iget-boolean v13, v13, Lkawa/standard/define_unit;->base:Z

    if-nez v13, :cond_1

    move-object v13, v12

    instance-of v13, v13, Lgnu/math/Quantity;

    if-eqz v13, :cond_1

    .line 59
    move-object v13, v8

    move-object v14, v12

    check-cast v14, Lgnu/math/Quantity;

    invoke-static {v13, v14}, Lgnu/math/Unit;->make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;

    move-result-object v13

    move-object v11, v13

    goto :goto_0

    .line 69
    .end local v6    # "p":Lgnu/lists/Pair;
    .end local v7    # "q":Ljava/lang/Object;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "sym":Lgnu/mapping/Symbol;
    .end local v10    # "decl":Lgnu/expr/Declaration;
    .end local v11    # "unit":Lgnu/math/Unit;
    .end local v12    # "v":Ljava/lang/Object;
    :cond_5
    move-object v13, v5

    const/16 v14, 0x65

    const-string/jumbo v15, "missing name in define-unit"

    invoke-virtual {v13, v14, v15}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 70
    const/4 v13, 0x0

    move v1, v13

    goto :goto_1
.end method
