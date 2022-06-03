.class public Lgnu/expr/SetExp;
.super Lgnu/expr/AccessExp;
.source "SetExp.java"


# static fields
.field public static final BAD_SHORT:I = 0x10000

.field public static final DEFINING_FLAG:I = 0x2

.field public static final GLOBAL_FLAG:I = 0x4

.field public static final HAS_VALUE:I = 0x40

.field public static final PREFER_BINDING2:I = 0x8

.field public static final PROCEDURE:I = 0x10

.field public static final SET_IF_UNBOUND:I = 0x20


# instance fields
.field new_value:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V
    .locals 5

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v2, p2

    .local v2, "val":Lgnu/expr/Expression;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/expr/AccessExp;-><init>()V

    .line 25
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 26
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    .line 27
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/expr/Expression;)V
    .locals 5

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "val":Lgnu/expr/Expression;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/expr/AccessExp;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    return-void
.end method

.method public static canUseInc(Lgnu/expr/Expression;Lgnu/expr/Declaration;)I
    .locals 21

    .prologue
    .line 341
    move-object/from16 v2, p0

    .local v2, "rhs":Lgnu/expr/Expression;
    move-object/from16 v3, p1

    .local v3, "target":Lgnu/expr/Declaration;
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v17

    move-object/from16 v5, v17

    .line 343
    .local v5, "var":Lgnu/bytecode/Variable;
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v17

    sget-object v18, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v17, v2

    check-cast v17, Lgnu/expr/ApplyExp;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move-object/from16 v4, v18

    .local v4, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 348
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v6, v17

    .line 349
    .local v6, "funcExp":Lgnu/expr/Expression;
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    .line 351
    .local v7, "func":Ljava/lang/Object;
    move-object/from16 v17, v7

    sget-object v18, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 352
    const/16 v17, 0x1

    move/from16 v8, v17

    .line 357
    .local v8, "sign":I
    :goto_0
    move-object/from16 v17, v4

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v9, v17

    .line 358
    .local v9, "arg0":Lgnu/expr/Expression;
    move-object/from16 v17, v4

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v10, v17

    .line 359
    .local v10, "arg1":Lgnu/expr/Expression;
    move-object/from16 v17, v9

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move/from16 v17, v8

    if-lez v17, :cond_0

    .line 361
    move-object/from16 v17, v10

    move-object/from16 v11, v17

    .line 362
    .local v11, "tmp":Lgnu/expr/Expression;
    move-object/from16 v17, v9

    move-object/from16 v10, v17

    .line 363
    move-object/from16 v17, v11

    move-object/from16 v9, v17

    .line 365
    .end local v11    # "tmp":Lgnu/expr/Expression;
    :cond_0
    move-object/from16 v17, v9

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 367
    move-object/from16 v17, v9

    check-cast v17, Lgnu/expr/ReferenceExp;

    move-object/from16 v11, v17

    .line 368
    .local v11, "ref0":Lgnu/expr/ReferenceExp;
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v17

    move-object/from16 v18, v3

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 369
    .line 395
    .end local v4    # "aexp":Lgnu/expr/ApplyExp;
    .end local v6    # "funcExp":Lgnu/expr/Expression;
    .end local v7    # "func":Ljava/lang/Object;
    .end local v8    # "sign":I
    .end local v9    # "arg0":Lgnu/expr/Expression;
    .end local v10    # "arg1":Lgnu/expr/Expression;
    .end local v11    # "ref0":Lgnu/expr/ReferenceExp;
    :cond_1
    const/high16 v17, 0x10000

    move/from16 v2, v17

    .end local v2    # "rhs":Lgnu/expr/Expression;
    :goto_1
    return v2

    .line 353
    .restart local v2    # "rhs":Lgnu/expr/Expression;
    .restart local v4    # "aexp":Lgnu/expr/ApplyExp;
    .restart local v6    # "funcExp":Lgnu/expr/Expression;
    .restart local v7    # "func":Ljava/lang/Object;
    :cond_2
    move-object/from16 v17, v7

    sget-object v18, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 354
    const/16 v17, -0x1

    move/from16 v8, v17

    .restart local v8    # "sign":I
    goto :goto_0

    .line 370
    .restart local v9    # "arg0":Lgnu/expr/Expression;
    .restart local v10    # "arg1":Lgnu/expr/Expression;
    .restart local v11    # "ref0":Lgnu/expr/ReferenceExp;
    :cond_3
    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    .line 372
    .local v12, "value1":Ljava/lang/Object;
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 374
    move-object/from16 v17, v12

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v13, v17

    .line 375
    .local v13, "val1":I
    move/from16 v17, v8

    if-gez v17, :cond_4

    .line 376
    move/from16 v17, v13

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v13, v17

    .line 377
    :cond_4
    move/from16 v17, v13

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    move/from16 v18, v13

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 378
    move/from16 v17, v13

    move/from16 v2, v17

    goto :goto_1

    .line 380
    .end local v13    # "val1":I
    :cond_5
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/math/IntNum;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 382
    move-object/from16 v17, v12

    check-cast v17, Lgnu/math/IntNum;

    move-object/from16 v14, v17

    .line 383
    .local v14, "int1":Lgnu/math/IntNum;
    const/16 v17, 0x7fff

    move/from16 v15, v17

    .line 384
    .local v15, "hi":I
    move/from16 v17, v15

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v16, v17

    .line 385
    .local v16, "lo":I
    move/from16 v17, v8

    if-lez v17, :cond_6

    .line 386
    add-int/lit8 v16, v16, -0x1

    .line 389
    :goto_2
    move-object/from16 v17, v14

    move/from16 v18, v16

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result v17

    if-ltz v17, :cond_1

    move-object/from16 v17, v14

    move/from16 v18, v15

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result v17

    if-gtz v17, :cond_1

    .line 391
    move/from16 v17, v8

    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Lgnu/math/IntNum;->intValue()I

    move-result v18

    mul-int v17, v17, v18

    move/from16 v2, v17

    goto/16 :goto_1

    .line 388
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_2
.end method

.method public static makeDefinition(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/SetExp;
    .locals 8

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "decl":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "val":Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/SetExp;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    move-object v2, v3

    .line 40
    .local v2, "sexp":Lgnu/expr/SetExp;
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 41
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "decl":Lgnu/expr/Declaration;
    return-object v0
.end method

.method public static makeDefinition(Ljava/lang/Object;Lgnu/expr/Expression;)Lgnu/expr/SetExp;
    .locals 8

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "val":Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/SetExp;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    move-object v2, v3

    .line 33
    .local v2, "sexp":Lgnu/expr/SetExp;
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 34
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "symbol":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v9

    move-object v2, v9

    .line 89
    .local v2, "env":Lgnu/mapping/Environment;
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_3

    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    check-cast v9, Lgnu/mapping/Symbol;

    :goto_0
    move-object v3, v9

    .line 91
    .local v3, "sym":Lgnu/mapping/Symbol;
    const/4 v9, 0x0

    move-object v4, v9

    .line 92
    .local v4, "property":Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v9

    move-object v5, v9

    .line 93
    .local v5, "language":Lgnu/expr/Language;
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/SetExp;->isFuncDef()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v5

    invoke-virtual {v9}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 94
    sget-object v9, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v4, v9

    .line 95
    .end local v4    # "property":Ljava/lang/Object;
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/SetExp;->isSetIfUnbound()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 97
    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v9

    move-object v6, v9

    .line 98
    .local v6, "loc":Lgnu/mapping/Location;
    move-object v9, v6

    invoke-virtual {v9}, Lgnu/mapping/Location;->isBound()Z

    move-result v9

    if-nez v9, :cond_1

    .line 99
    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object v11, v2

    invoke-virtual {v10, v11}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 100
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/SetExp;->getHasValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 101
    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v9, v10}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 102
    .line 135
    .end local v6    # "loc":Lgnu/mapping/Location;
    :cond_2
    :goto_1
    return-void

    .line 89
    .end local v3    # "sym":Lgnu/mapping/Symbol;
    .end local v5    # "language":Lgnu/expr/Language;
    :cond_3
    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v9

    goto :goto_0

    .line 105
    .restart local v3    # "sym":Lgnu/mapping/Symbol;
    .restart local v5    # "language":Lgnu/expr/Language;
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object v10, v2

    invoke-virtual {v9, v10}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    .line 106
    .local v6, "new_val":Ljava/lang/Object;
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-eqz v9, :cond_8

    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget-object v9, v9, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v9, v9, Lgnu/expr/ModuleExp;

    if-nez v9, :cond_8

    .line 108
    move-object v9, v1

    iget-object v9, v9, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-static {v10}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v10

    aget-object v9, v9, v10

    move-object v7, v9

    .line 109
    .local v7, "evalFrame":[Ljava/lang/Object;
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v9}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 112
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 113
    move-object v9, v7

    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget v10, v10, Lgnu/expr/Declaration;->evalIndex:I

    move-object v11, v3

    invoke-static {v11}, Lgnu/mapping/Location;->make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;

    move-result-object v11

    aput-object v11, v9, v10

    .line 114
    :cond_5
    move-object v9, v7

    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget v10, v10, Lgnu/expr/Declaration;->evalIndex:I

    aget-object v9, v9, v10

    check-cast v9, Lgnu/mapping/Location;

    move-object v8, v9

    .line 115
    .local v8, "loc":Lgnu/mapping/Location;
    move-object v9, v8

    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v9, v10}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 116
    .line 119
    .line 133
    .end local v7    # "evalFrame":[Ljava/lang/Object;
    .end local v8    # "loc":Lgnu/mapping/Location;
    :goto_2
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/SetExp;->getHasValue()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 134
    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v9, v10}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 135
    :cond_6
    goto :goto_1

    .line 118
    .restart local v7    # "evalFrame":[Ljava/lang/Object;
    :cond_7
    move-object v9, v7

    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget v10, v10, Lgnu/expr/Declaration;->evalIndex:I

    move-object v11, v6

    aput-object v11, v9, v10

    goto :goto_2

    .line 120
    .end local v7    # "evalFrame":[Ljava/lang/Object;
    :cond_8
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 127
    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v6

    invoke-virtual {v9, v10, v11, v12}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 131
    :cond_9
    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v6

    invoke-virtual {v9, v10, v11, v12}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 21

    .prologue
    .line 139
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/expr/SetExp;
    move-object/from16 v2, p1

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object/from16 v3, p2

    .local v3, "target":Lgnu/expr/Target;
    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    instance-of v15, v15, Lgnu/expr/LambdaExp;

    if-eqz v15, :cond_0

    move-object v15, v3

    instance-of v15, v15, Lgnu/expr/IgnoreTarget;

    if-eqz v15, :cond_0

    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    check-cast v15, Lgnu/expr/LambdaExp;

    invoke-virtual {v15}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 142
    .line 330
    :goto_0
    return-void

    .line 144
    :cond_0
    move-object v15, v2

    invoke-virtual {v15}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v15

    move-object v5, v15

    .line 146
    .local v5, "code":Lgnu/bytecode/CodeAttr;
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/SetExp;->getHasValue()Z

    move-result v15

    if-eqz v15, :cond_2

    move-object v15, v3

    instance-of v15, v15, Lgnu/expr/IgnoreTarget;

    if-nez v15, :cond_2

    const/4 v15, 0x1

    :goto_1
    move v6, v15

    .line 151
    .local v6, "needValue":Z
    const/4 v15, 0x0

    move v7, v15

    .line 159
    .local v7, "valuePushed":Z
    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    move-object v8, v15

    .line 160
    .local v8, "decl":Lgnu/expr/Declaration;
    move-object v15, v8

    invoke-virtual {v15}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v15

    move-object v9, v15

    .line 161
    .local v9, "declValue":Lgnu/expr/Expression;
    move-object v15, v9

    instance-of v15, v15, Lgnu/expr/LambdaExp;

    if-eqz v15, :cond_3

    move-object v15, v8

    iget-object v15, v15, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v15, v15, Lgnu/expr/ModuleExp;

    if-eqz v15, :cond_3

    move-object v15, v8

    invoke-virtual {v15}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v15

    if-nez v15, :cond_3

    move-object v15, v9

    check-cast v15, Lgnu/expr/LambdaExp;

    invoke-virtual {v15}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    move-object v15, v9

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 167
    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    check-cast v15, Lgnu/expr/LambdaExp;

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/LambdaExp;->compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    move-result-object v15

    .line 323
    :cond_1
    :goto_2
    move v15, v6

    if-eqz v15, :cond_1d

    move v15, v7

    if-nez v15, :cond_1d

    .line 324
    new-instance v15, Ljava/lang/Error;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const-string/jumbo v17, "SetExp.compile: not implemented - return value"

    invoke-direct/range {v16 .. v17}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v15

    .line 146
    .end local v6    # "needValue":Z
    .end local v7    # "valuePushed":Z
    .end local v8    # "decl":Lgnu/expr/Declaration;
    .end local v9    # "declValue":Lgnu/expr/Expression;
    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 169
    .restart local v6    # "needValue":Z
    .restart local v7    # "valuePushed":Z
    .restart local v8    # "decl":Lgnu/expr/Declaration;
    .restart local v9    # "declValue":Lgnu/expr/Expression;
    :cond_3
    move-object v15, v8

    invoke-virtual {v15}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v15

    if-nez v15, :cond_4

    move-object v15, v8

    invoke-virtual {v15}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v15

    if-eqz v15, :cond_6

    :cond_4
    move-object v15, v8

    iget-object v15, v15, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v15, v15, Lgnu/expr/ModuleExp;

    if-eqz v15, :cond_6

    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v15

    if-eqz v15, :cond_6

    move-object v15, v8

    invoke-virtual {v15}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v15

    if-nez v15, :cond_6

    .line 173
    move-object v15, v8

    invoke-virtual {v15}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 174
    move-object v15, v8

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-static/range {v15 .. v17}, Lgnu/expr/BindingInitializer;->create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 175
    :cond_5
    move v15, v6

    if-eqz v15, :cond_1

    .line 177
    move-object v15, v8

    move-object/from16 v16, v1

    const/16 v17, 0x0

    move-object/from16 v18, v2

    sget-object v19, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual/range {v15 .. v19}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 178
    const/4 v15, 0x1

    move v7, v15

    goto :goto_2

    .line 183
    :cond_6
    move-object v15, v1

    move-object v10, v15

    .line 184
    .local v10, "access":Lgnu/expr/AccessExp;
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/SetExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v15

    move-object v11, v15

    .line 185
    .local v11, "owner":Lgnu/expr/Declaration;
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v15

    if-nez v15, :cond_7

    .line 187
    :goto_3
    move-object v15, v8

    if-eqz v15, :cond_7

    move-object v15, v8

    invoke-virtual {v15}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 189
    move-object v15, v8

    invoke-virtual {v15}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v15

    move-object v9, v15

    .line 190
    move-object v15, v9

    instance-of v15, v15, Lgnu/expr/ReferenceExp;

    if-nez v15, :cond_8

    .line 191
    .line 203
    :cond_7
    :goto_4
    move-object v15, v8

    invoke-virtual {v15}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 204
    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v16, v2

    sget-object v17, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_2

    .line 192
    :cond_8
    move-object v15, v9

    check-cast v15, Lgnu/expr/ReferenceExp;

    move-object v12, v15

    .line 193
    .local v12, "rexp":Lgnu/expr/ReferenceExp;
    move-object v15, v12

    iget-object v15, v15, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    move-object v13, v15

    .line 194
    .local v13, "orig":Lgnu/expr/Declaration;
    move-object v15, v13

    if-nez v15, :cond_9

    .line 195
    goto :goto_4

    .line 196
    :cond_9
    move-object v15, v11

    if-eqz v15, :cond_a

    move-object v15, v13

    invoke-virtual {v15}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 197
    goto :goto_4

    .line 198
    :cond_a
    move-object v15, v12

    invoke-virtual {v15}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v15

    move-object v11, v15

    .line 199
    move-object v15, v12

    move-object v10, v15

    .line 200
    move-object v15, v13

    move-object v8, v15

    .line 201
    goto :goto_3

    .line 205
    .end local v12    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v13    # "orig":Lgnu/expr/Declaration;
    :cond_b
    move-object v15, v8

    invoke-virtual {v15}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v15

    if-eqz v15, :cond_c

    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 207
    move-object v15, v8

    move-object/from16 v16, v1

    const/16 v17, 0x2

    move-object/from16 v18, v2

    sget-object v19, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual/range {v15 .. v19}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 209
    const-string/jumbo v15, "gnu.mapping.IndirectableLocation"

    invoke-static {v15}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v15

    move-object v12, v15

    .line 211
    .local v12, "locType":Lgnu/bytecode/ClassType;
    move-object v15, v5

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 212
    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v16, v2

    sget-object v17, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 213
    move-object v15, v12

    const-string/jumbo v16, "setAlias"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v15

    move-object v13, v15

    .line 214
    .local v13, "meth":Lgnu/bytecode/Method;
    move-object v15, v5

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 215
    goto/16 :goto_2

    .line 216
    .end local v12    # "locType":Lgnu/bytecode/ClassType;
    .end local v13    # "meth":Lgnu/bytecode/Method;
    :cond_c
    move-object v15, v8

    invoke-virtual {v15}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v15

    if-eqz v15, :cond_11

    .line 218
    move-object v15, v8

    move-object/from16 v16, v10

    const/16 v17, 0x2

    move-object/from16 v18, v2

    sget-object v19, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual/range {v15 .. v19}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 220
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/SetExp;->isSetIfUnbound()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 222
    move v15, v6

    if-eqz v15, :cond_d

    .line 224
    move-object v15, v5

    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 225
    const/4 v15, 0x1

    move v7, v15

    .line 227
    :cond_d
    move-object v15, v5

    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v15

    .line 228
    move-object v15, v5

    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 229
    move-object v15, v5

    sget-object v16, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v15

    move-object v12, v15

    .line 230
    .local v12, "symLoc":Lgnu/bytecode/Variable;
    move-object v15, v5

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 231
    move-object v15, v5

    sget-object v16, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string/jumbo v17, "isBound"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 233
    move-object v15, v5

    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitIfIntEqZero()V

    .line 234
    move-object v15, v5

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 236
    .end local v12    # "symLoc":Lgnu/bytecode/Variable;
    :cond_e
    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v16, v2

    sget-object v17, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 237
    move v15, v6

    if-eqz v15, :cond_f

    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/SetExp;->isSetIfUnbound()Z

    move-result v15

    if-nez v15, :cond_f

    .line 239
    move-object v15, v5

    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 240
    const/4 v15, 0x1

    move v7, v15

    .line 242
    :cond_f
    const-string/jumbo v15, "set"

    move-object v12, v15

    .line 243
    .local v12, "setterName":Ljava/lang/String;
    move-object v15, v5

    sget-object v16, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    move-object/from16 v17, v12

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 245
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/SetExp;->isSetIfUnbound()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 247
    move-object v15, v5

    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 248
    move-object v15, v5

    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v15

    .line 250
    :cond_10
    goto/16 :goto_2

    .line 251
    .end local v12    # "setterName":Ljava/lang/String;
    :cond_11
    move-object v15, v8

    invoke-virtual {v15}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 253
    move-object v15, v8

    invoke-virtual {v15}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v15

    move-object v4, v15

    .line 254
    .local v4, "type":Lgnu/bytecode/Type;
    move-object v15, v8

    invoke-virtual {v15}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v15

    move-object v12, v15

    .line 255
    .local v12, "var":Lgnu/bytecode/Variable;
    move-object v15, v12

    if-nez v15, :cond_12

    .line 256
    move-object v15, v8

    move-object/from16 v16, v5

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v15

    move-object v12, v15

    .line 257
    :cond_12
    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v16, v8

    invoke-static/range {v15 .. v16}, Lgnu/expr/SetExp;->canUseInc(Lgnu/expr/Expression;Lgnu/expr/Declaration;)I

    move-result v15

    move v13, v15

    .line 258
    .local v13, "delta":I
    move v15, v13

    const/high16 v16, 0x10000

    move/from16 v0, v16

    if-eq v15, v0, :cond_14

    .line 260
    move-object v15, v2

    invoke-virtual {v15}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v15

    move-object/from16 v16, v12

    move/from16 v17, v13

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 261
    move v15, v6

    if-eqz v15, :cond_13

    .line 263
    move-object v15, v5

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 264
    const/4 v15, 0x1

    move v7, v15

    .line 277
    :cond_13
    :goto_5
    goto/16 :goto_2

    .line 269
    :cond_14
    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v16, v2

    move-object/from16 v17, v8

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Declaration;)V

    .line 270
    move v15, v6

    if-eqz v15, :cond_15

    .line 272
    move-object v15, v5

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 273
    const/4 v15, 0x1

    move v7, v15

    .line 275
    :cond_15
    move-object v15, v5

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_5

    .line 278
    .end local v4    # "type":Lgnu/bytecode/Type;
    .end local v12    # "var":Lgnu/bytecode/Variable;
    .end local v13    # "delta":I
    :cond_16
    move-object v15, v8

    iget-object v15, v15, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v15, v15, Lgnu/expr/ClassExp;

    if-eqz v15, :cond_18

    move-object v15, v8

    iget-object v15, v15, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-nez v15, :cond_18

    move-object v15, v1

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/SetExp;->getFlag(I)Z

    move-result v15

    if-nez v15, :cond_18

    move-object v15, v8

    iget-object v15, v15, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v15, Lgnu/expr/ClassExp;

    invoke-virtual {v15}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v15

    if-eqz v15, :cond_18

    .line 282
    const-string/jumbo v15, "set"

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    .line 283
    .local v12, "setName":Ljava/lang/String;
    move-object v15, v8

    iget-object v15, v15, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v15, Lgnu/expr/ClassExp;

    move-object v13, v15

    .line 284
    .local v13, "cl":Lgnu/expr/ClassExp;
    move-object v15, v13

    iget-object v15, v15, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v16, v12

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v15

    move-object v14, v15

    .line 285
    .local v14, "setter":Lgnu/bytecode/Method;
    move-object v15, v13

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/ClassExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 286
    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v16, v2

    move-object/from16 v17, v8

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Declaration;)V

    .line 287
    move v15, v6

    if-eqz v15, :cond_17

    .line 289
    move-object v15, v5

    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 290
    const/4 v15, 0x1

    move v7, v15

    .line 292
    :cond_17
    move-object v15, v5

    move-object/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 293
    goto/16 :goto_2

    .line 296
    .end local v12    # "setName":Ljava/lang/String;
    .end local v13    # "cl":Lgnu/expr/ClassExp;
    .end local v14    # "setter":Lgnu/bytecode/Method;
    :cond_18
    move-object v15, v8

    iget-object v15, v15, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object v12, v15

    .line 297
    .local v12, "field":Lgnu/bytecode/Field;
    move-object v15, v12

    invoke-virtual {v15}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v15

    if-nez v15, :cond_19

    .line 298
    move-object v15, v8

    move-object/from16 v16, v11

    move-object/from16 v17, v2

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 299
    :cond_19
    move-object v15, v12

    invoke-virtual {v15}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v15

    move-object v4, v15

    .line 300
    .restart local v4    # "type":Lgnu/bytecode/Type;
    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v16, v2

    move-object/from16 v17, v8

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Declaration;)V

    .line 301
    move-object v15, v2

    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 302
    move-object v15, v12

    invoke-virtual {v15}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 304
    move v15, v6

    if-eqz v15, :cond_1a

    .line 306
    move-object v15, v5

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 307
    const/4 v15, 0x1

    move v7, v15

    .line 309
    :cond_1a
    move-object v15, v5

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto/16 :goto_2

    .line 313
    :cond_1b
    move v15, v6

    if-eqz v15, :cond_1c

    .line 315
    move-object v15, v5

    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 316
    const/4 v15, 0x1

    move v7, v15

    .line 318
    :cond_1c
    move-object v15, v5

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto/16 :goto_2

    .line 326
    .end local v4    # "type":Lgnu/bytecode/Type;
    .end local v10    # "access":Lgnu/expr/AccessExp;
    .end local v11    # "owner":Lgnu/expr/Declaration;
    .end local v12    # "field":Lgnu/bytecode/Field;
    :cond_1d
    move v15, v6

    if-eqz v15, :cond_1e

    .line 327
    move-object v15, v3

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/SetExp;->getType()Lgnu/bytecode/Type;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 330
    :goto_6
    goto/16 :goto_0

    .line 329
    :cond_1e
    move-object v15, v2

    sget-object v16, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v17, v3

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto :goto_6
.end method

.method public final getHasValue()Z
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/SetExp;->flags:I

    const/16 v2, 0x40

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/SetExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/SetExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getNewValue()Lgnu/expr/Expression;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/SetExp;
    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/SetExp;->getHasValue()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/SetExp;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/SetExp;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-nez v1, :cond_1

    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    goto :goto_0
.end method

.method public final isDefining()Z
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/SetExp;->flags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/SetExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/SetExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isFuncDef()Z
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/SetExp;->flags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/SetExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/SetExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isSetIfUnbound()Z
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/SetExp;->flags:I

    const/16 v2, 0x20

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/SetExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/SetExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected mustCompile()Z
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/SetExp;
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 6

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "(Define"

    :goto_0
    const-string/jumbo v4, ")"

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 416
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 417
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/SetExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 418
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 420
    :cond_0
    move-object v2, v1

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(C)V

    .line 421
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 423
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-eqz v2, :cond_2

    .line 425
    move-object v2, v1

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(C)V

    .line 426
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 428
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 429
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 430
    move-object v2, v1

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 431
    return-void

    .line 415
    :cond_3
    const-string/jumbo v3, "(Set"

    goto :goto_0
.end method

.method public final setDefining(Z)V
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    move v1, p1

    .local v1, "value":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/SetExp;->flags:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lgnu/expr/SetExp;->flags:I

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/SetExp;->flags:I

    const/4 v4, -0x3

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Lgnu/expr/SetExp;->flags:I

    goto :goto_0
.end method

.method public final setFuncDef(Z)V
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    move v1, p1

    .local v1, "value":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/SetExp;->flags:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lgnu/expr/SetExp;->flags:I

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/SetExp;->flags:I

    const/16 v4, -0x11

    and-int/lit8 v3, v3, -0x11

    iput v3, v2, Lgnu/expr/SetExp;->flags:I

    goto :goto_0
.end method

.method public final setHasValue(Z)V
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    move v1, p1

    .local v1, "value":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/SetExp;->flags:I

    const/16 v4, 0x40

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Lgnu/expr/SetExp;->flags:I

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/SetExp;->flags:I

    const/16 v4, -0x41

    and-int/lit8 v3, v3, -0x41

    iput v3, v2, Lgnu/expr/SetExp;->flags:I

    goto :goto_0
.end method

.method public final setSetIfUnbound(Z)V
    .locals 6

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    move v1, p1

    .local v1, "value":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/SetExp;->flags:I

    const/16 v4, 0x20

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Lgnu/expr/SetExp;->flags:I

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/SetExp;->flags:I

    const/16 v4, -0x21

    and-int/lit8 v3, v3, -0x21

    iput v3, v2, Lgnu/expr/SetExp;->flags:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SetExp["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/SetExp;
    return-object v0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/SetExp;
    return-object v0
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Lgnu/expr/SetExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    .line 412
    return-void
.end method
