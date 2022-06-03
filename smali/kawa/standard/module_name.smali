.class public Lkawa/standard/module_name;
.super Lkawa/lang/Syntax;
.source "module_name.java"


# static fields
.field public static final module_name:Lkawa/standard/module_name;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Lkawa/standard/module_name;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/module_name;-><init>()V

    sput-object v0, Lkawa/standard/module_name;->module_name:Lkawa/standard/module_name;

    .line 10
    sget-object v0, Lkawa/standard/module_name;->module_name:Lkawa/standard/module_name;

    const-string/jumbo v1, "module-name"

    invoke-virtual {v0, v1}, Lkawa/standard/module_name;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lkawa/standard/module_name;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 23

    .prologue
    .line 14
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/standard/module_name;
    move-object/from16 v3, p1

    .local v3, "form":Lgnu/lists/Pair;
    move-object/from16 v4, p2

    .local v4, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v5, p3

    .local v5, "tr":Lkawa/lang/Translator;
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    .line 15
    .local v6, "form_cdr":Ljava/lang/Object;
    const/16 v17, 0x0

    move-object/from16 v7, v17

    .line 16
    .local v7, "nameSyntax":Lkawa/lang/SyntaxForm;
    :goto_0
    move-object/from16 v17, v6

    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 18
    move-object/from16 v17, v6

    check-cast v17, Lkawa/lang/SyntaxForm;

    move-object/from16 v7, v17

    .line 19
    move-object/from16 v17, v7

    invoke-interface/range {v17 .. v17}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    goto :goto_0

    .line 21
    :cond_0
    move-object/from16 v17, v6

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v17, v6

    check-cast v17, Lgnu/lists/Pair;

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v17

    :goto_1
    move-object/from16 v8, v17

    .line 22
    .local v8, "arg":Ljava/lang/Object;
    :goto_2
    move-object/from16 v17, v8

    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 24
    move-object/from16 v17, v8

    check-cast v17, Lkawa/lang/SyntaxForm;

    move-object/from16 v7, v17

    .line 25
    move-object/from16 v17, v7

    invoke-interface/range {v17 .. v17}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    goto :goto_2

    .line 21
    .end local v8    # "arg":Ljava/lang/Object;
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .line 27
    .restart local v8    # "arg":Ljava/lang/Object;
    :cond_2
    const/16 v17, 0x0

    move-object/from16 v9, v17

    .line 29
    .local v9, "name":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v11, v17

    .line 30
    .local v11, "err":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v12, v17

    .line 31
    .local v12, "decl":Lgnu/expr/Declaration;
    move-object/from16 v17, v8

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v17, v8

    check-cast v17, Lgnu/lists/Pair;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v10, v18

    .local v10, "p":Lgnu/lists/Pair;
    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v17

    const-string/jumbo v18, "quote"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 33
    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    .line 34
    move-object/from16 v17, v8

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v17, v8

    check-cast v17, Lgnu/lists/Pair;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v10, v18

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v17

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 37
    :cond_3
    const-string/jumbo v17, "invalid quoted symbol for \'module-name\'"

    move-object/from16 v11, v17

    .line 57
    .end local v10    # "p":Lgnu/lists/Pair;
    :goto_3
    move-object/from16 v17, v11

    if-eqz v17, :cond_a

    .line 58
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 95
    :goto_4
    return-void

    .line 39
    .restart local v10    # "p":Lgnu/lists/Pair;
    :cond_4
    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v9, v17

    goto :goto_3

    .line 41
    .end local v10    # "p":Lgnu/lists/Pair;
    :cond_5
    move-object/from16 v17, v8

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/FString;

    move/from16 v17, v0

    if-nez v17, :cond_6

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 42
    :cond_6
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v9, v17

    goto :goto_3

    .line 43
    :cond_7
    move-object/from16 v17, v8

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 45
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v9, v17

    .line 46
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v13, v17

    .line 47
    .local v13, "len":I
    move/from16 v17, v13

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    move-object/from16 v17, v9

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    move-object/from16 v17, v9

    move/from16 v18, v13

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3e

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 51
    move-object/from16 v17, v9

    const/16 v18, 0x1

    move/from16 v19, v13

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v9, v17

    .line 53
    :cond_8
    move-object/from16 v17, v5

    move-object/from16 v18, v8

    move-object/from16 v19, v7

    move-object/from16 v20, v4

    invoke-virtual/range {v17 .. v20}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v17

    move-object/from16 v12, v17

    .line 54
    goto/16 :goto_3

    .line 56
    .end local v13    # "len":I
    :cond_9
    const-string/jumbo v17, "un-implemented expression in module-name"

    move-object/from16 v11, v17

    goto/16 :goto_3

    .line 61
    :cond_a
    move-object/from16 v17, v9

    const/16 v18, 0x2e

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    move/from16 v13, v17

    .line 62
    .local v13, "index":I
    move-object/from16 v17, v9

    move-object/from16 v14, v17

    .line 63
    .local v14, "className":Ljava/lang/String;
    move/from16 v17, v13

    if-ltz v17, :cond_e

    .line 64
    move-object/from16 v17, v5

    move-object/from16 v18, v9

    const/16 v19, 0x0

    move/from16 v20, v13

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    .line 70
    :goto_5
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v17

    move-object/from16 v15, v17

    .line 71
    .local v15, "module":Lgnu/expr/ModuleExp;
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v17, v0

    if-nez v17, :cond_f

    .line 72
    move-object/from16 v17, v5

    new-instance v18, Lgnu/bytecode/ClassType;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v14

    invoke-direct/range {v19 .. v20}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    .line 81
    :cond_b
    :goto_6
    move-object/from16 v17, v15

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 82
    move-object/from16 v17, v15

    move-object/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 84
    move-object/from16 v17, v12

    if-eqz v17, :cond_d

    .line 86
    move-object/from16 v17, v12

    new-instance v18, Lgnu/expr/QuoteExp;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v20, v0

    sget-object v21, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    invoke-direct/range {v19 .. v21}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 87
    move-object/from16 v17, v12

    const-wide/32 v18, 0x1004000

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 88
    move-object/from16 v17, v15

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/expr/ModuleExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    .line 89
    move-object/from16 v17, v12

    const-wide/16 v18, 0x800

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 90
    :cond_c
    move-object/from16 v17, v12

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 91
    move-object/from16 v17, v12

    sget-object v18, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 93
    :cond_d
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lkawa/lang/Translator;->mustCompileHere()V

    goto/16 :goto_4

    .line 67
    .end local v15    # "module":Lgnu/expr/ModuleExp;
    :cond_e
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v9, v17

    .line 68
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v9

    invoke-static/range {v18 .. v18}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v14, v17

    goto/16 :goto_5

    .line 75
    .restart local v15    # "module":Lgnu/expr/ModuleExp;
    :cond_f
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v16, v17

    .line 76
    .local v16, "oldName":Ljava/lang/String;
    move-object/from16 v17, v16

    if-nez v17, :cond_10

    .line 77
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v17, v0

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 78
    :cond_10
    move-object/from16 v17, v16

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 79
    move-object/from16 v17, v5

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "duplicate module-name: old name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v17

    goto/16 :goto_6
.end method
