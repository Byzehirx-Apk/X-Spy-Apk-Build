.class public Lkawa/standard/fluid_let;
.super Lkawa/lang/Syntax;
.source "fluid_let.java"


# static fields
.field public static final fluid_let:Lkawa/standard/fluid_let;


# instance fields
.field defaultInit:Lgnu/expr/Expression;

.field star:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lkawa/standard/fluid_let;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/fluid_let;-><init>()V

    sput-object v0, Lkawa/standard/fluid_let;->fluid_let:Lkawa/standard/fluid_let;

    .line 15
    sget-object v0, Lkawa/standard/fluid_let;->fluid_let:Lkawa/standard/fluid_let;

    const-string/jumbo v1, "fluid-set"

    invoke-virtual {v0, v1}, Lkawa/standard/fluid_let;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lkawa/standard/fluid_let;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    .line 32
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lkawa/standard/fluid_let;->star:Z

    .line 33
    return-void
.end method

.method public constructor <init>(ZLgnu/expr/Expression;)V
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lkawa/standard/fluid_let;
    move v1, p1

    .local v1, "star":Z
    move-object v2, p2

    .local v2, "defaultInit":Lgnu/expr/Expression;
    move-object v3, v0

    invoke-direct {v3}, Lkawa/lang/Syntax;-><init>()V

    .line 26
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lkawa/standard/fluid_let;->star:Z

    .line 27
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkawa/standard/fluid_let;->defaultInit:Lgnu/expr/Expression;

    .line 28
    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 24

    .prologue
    .line 45
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/standard/fluid_let;
    move-object/from16 v3, p1

    .local v3, "bindings":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "body":Ljava/lang/Object;
    move-object/from16 v5, p3

    .local v5, "tr":Lkawa/lang/Translator;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lkawa/standard/fluid_let;->star:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    const/16 v18, 0x1

    :goto_0
    move/from16 v6, v18

    .line 46
    .local v6, "decl_count":I
    move/from16 v18, v6

    move/from16 v0, v18

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v18, v0

    move-object/from16 v7, v18

    .line 47
    .local v7, "inits":[Lgnu/expr/Expression;
    new-instance v18, Lgnu/expr/FluidLetExp;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Lgnu/expr/FluidLetExp;-><init>([Lgnu/expr/Expression;)V

    move-object/from16 v8, v18

    .line 48
    .local v8, "let":Lgnu/expr/FluidLetExp;
    const/16 v18, 0x0

    move/from16 v9, v18

    .local v9, "i":I
    :goto_1
    move/from16 v18, v9

    move/from16 v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 50
    move-object/from16 v18, v3

    check-cast v18, Lgnu/lists/Pair;

    move-object/from16 v10, v18

    .line 51
    .local v10, "bind_pair":Lgnu/lists/Pair;
    move-object/from16 v18, v5

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v11, v18

    .line 56
    .local v11, "savePos":Ljava/lang/Object;
    move-object/from16 v18, v10

    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    .line 57
    .local v14, "name":Ljava/lang/Object;
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 59
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lkawa/standard/fluid_let;->defaultInit:Lgnu/expr/Expression;

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    .line 81
    .local v12, "value":Lgnu/expr/Expression;
    :goto_2
    move-object/from16 v18, v8

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/FluidLetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v18

    move-object/from16 v15, v18

    .line 82
    .local v15, "decl":Lgnu/expr/Declaration;
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object/from16 v18, v0

    move-object/from16 v19, v14

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v18

    move-object/from16 v16, v18

    .line 83
    .local v16, "found":Lgnu/expr/Declaration;
    move-object/from16 v18, v16

    if-eqz v18, :cond_1

    .line 85
    move-object/from16 v18, v16

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Declaration;->maybeIndirectBinding(Lgnu/expr/Compilation;)V

    .line 86
    move-object/from16 v18, v15

    move-object/from16 v19, v16

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    .line 87
    move-object/from16 v18, v16

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Declaration;->setFluid(Z)V

    .line 88
    move-object/from16 v18, v16

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 90
    :cond_1
    move-object/from16 v18, v15

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 91
    move-object/from16 v18, v15

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Declaration;->setFluid(Z)V

    .line 92
    move-object/from16 v18, v15

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 93
    move-object/from16 v18, v12

    if-nez v18, :cond_2

    .line 94
    new-instance v18, Lgnu/expr/ReferenceExp;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v14

    invoke-direct/range {v19 .. v20}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v12, v18

    .line 95
    :cond_2
    move-object/from16 v18, v7

    move/from16 v19, v9

    move-object/from16 v20, v12

    aput-object v20, v18, v19

    .line 96
    move-object/from16 v18, v15

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 97
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    move-object/from16 v3, v18

    .line 101
    move-object/from16 v18, v5

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 102
    .line 48
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 45
    .end local v6    # "decl_count":I
    .end local v7    # "inits":[Lgnu/expr/Expression;
    .end local v8    # "let":Lgnu/expr/FluidLetExp;
    .end local v9    # "i":I
    .end local v10    # "bind_pair":Lgnu/lists/Pair;
    .end local v11    # "savePos":Ljava/lang/Object;
    .end local v12    # "value":Lgnu/expr/Expression;
    .end local v14    # "name":Ljava/lang/Object;
    .end local v15    # "decl":Lgnu/expr/Declaration;
    .end local v16    # "found":Lgnu/expr/Declaration;
    :cond_3
    move-object/from16 v18, v3

    invoke-static/range {v18 .. v18}, Lgnu/lists/LList;->length(Ljava/lang/Object;)I

    move-result v18

    goto/16 :goto_0

    .line 61
    .restart local v6    # "decl_count":I
    .restart local v7    # "inits":[Lgnu/expr/Expression;
    .restart local v8    # "let":Lgnu/expr/FluidLetExp;
    .restart local v9    # "i":I
    .restart local v10    # "bind_pair":Lgnu/lists/Pair;
    .restart local v11    # "savePos":Ljava/lang/Object;
    .restart local v14    # "name":Ljava/lang/Object;
    :cond_4
    move-object/from16 v18, v14

    :try_start_1
    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v18, v14

    check-cast v18, Lgnu/lists/Pair;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v13, v19

    .local v13, "binding":Lgnu/lists/Pair;
    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v18, v0

    if-nez v18, :cond_5

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v18, v0

    if-nez v18, :cond_5

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 66
    :cond_5
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    .line 67
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 68
    move-object/from16 v18, v14

    check-cast v18, Lkawa/lang/SyntaxForm;

    invoke-interface/range {v18 .. v18}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    .line 70
    :cond_6
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 71
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lkawa/standard/fluid_let;->defaultInit:Lgnu/expr/Expression;

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    .restart local v12    # "value":Lgnu/expr/Expression;
    goto/16 :goto_2

    .line 72
    .end local v12    # "value":Lgnu/expr/Expression;
    :cond_7
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lgnu/lists/Pair;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v13, v19

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 74
    :cond_8
    move-object/from16 v18, v5

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "bad syntax for value of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lkawa/standard/fluid_let;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    move-object/from16 v15, v18

    .line 101
    move-object/from16 v18, v5

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v18, v15

    move-object/from16 v2, v18

    .line 110
    .end local v2    # "this":Lkawa/standard/fluid_let;
    .end local v10    # "bind_pair":Lgnu/lists/Pair;
    .end local v11    # "savePos":Ljava/lang/Object;
    .end local v13    # "binding":Lgnu/lists/Pair;
    .end local v14    # "name":Ljava/lang/Object;
    :goto_3
    return-object v2

    .line 77
    .restart local v2    # "this":Lkawa/standard/fluid_let;
    .restart local v10    # "bind_pair":Lgnu/lists/Pair;
    .restart local v11    # "savePos":Ljava/lang/Object;
    .restart local v13    # "binding":Lgnu/lists/Pair;
    .restart local v14    # "name":Ljava/lang/Object;
    :cond_9
    move-object/from16 v18, v5

    move-object/from16 v19, v13

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v18

    move-object/from16 v12, v18

    .restart local v12    # "value":Lgnu/expr/Expression;
    goto/16 :goto_2

    .line 80
    .end local v12    # "value":Lgnu/expr/Expression;
    .end local v13    # "binding":Lgnu/lists/Pair;
    :cond_a
    move-object/from16 v18, v5

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "invalid "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lkawa/standard/fluid_let;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " syntax"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v18

    move-object/from16 v15, v18

    .line 101
    move-object/from16 v18, v5

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v18, v15

    move-object/from16 v2, v18

    goto :goto_3

    .end local v14    # "name":Ljava/lang/Object;
    :catchall_0
    move-exception v18

    move-object/from16 v17, v18

    move-object/from16 v18, v5

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v18, v17

    throw v18

    .line 104
    .end local v10    # "bind_pair":Lgnu/lists/Pair;
    .end local v11    # "savePos":Ljava/lang/Object;
    :cond_b
    move-object/from16 v18, v5

    move-object/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 105
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lkawa/standard/fluid_let;->star:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v18, v3

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 106
    move-object/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    invoke-virtual/range {v19 .. v22}, Lkawa/standard/fluid_let;->rewrite(Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/expr/FluidLetExp;->body:Lgnu/expr/Expression;

    .line 109
    :goto_4
    move-object/from16 v18, v5

    move-object/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 110
    move-object/from16 v18, v8

    move-object/from16 v2, v18

    goto/16 :goto_3

    .line 108
    :cond_c
    move-object/from16 v18, v8

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/expr/FluidLetExp;->body:Lgnu/expr/Expression;

    goto :goto_4
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lkawa/standard/fluid_let;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v4, v1

    instance-of v4, v4, Lgnu/lists/Pair;

    if-nez v4, :cond_0

    .line 38
    move-object v4, v2

    const-string/jumbo v5, "missing let arguments"

    invoke-virtual {v4, v5}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    .line 40
    .end local v0    # "this":Lkawa/standard/fluid_let;
    :goto_0
    return-object v0

    .line 39
    .restart local v0    # "this":Lkawa/standard/fluid_let;
    :cond_0
    move-object v4, v1

    check-cast v4, Lgnu/lists/Pair;

    move-object v3, v4

    .line 40
    .local v3, "pair":Lgnu/lists/Pair;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lkawa/standard/fluid_let;->rewrite(Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method
