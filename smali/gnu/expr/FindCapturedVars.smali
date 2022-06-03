.class public Lgnu/expr/FindCapturedVars;
.super Lgnu/expr/ExpExpVisitor;
.source "FindCapturedVars.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpExpVisitor",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field backJumpPossible:I

.field currentModule:Lgnu/expr/ModuleExp;

.field unknownDecls:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ExpExpVisitor;-><init>()V

    .line 20
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    .line 426
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 427
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    return-void
.end method

.method static checkInlineable(Lgnu/expr/LambdaExp;Ljava/util/Set;)Lgnu/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LambdaExp;",
            "Ljava/util/Set",
            "<",
            "Lgnu/expr/LambdaExp;",
            ">;)",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "current":Lgnu/expr/LambdaExp;
    move-object v1, p1

    .local v1, "seen":Ljava/util/Set;, "Ljava/util/Set<Lgnu/expr/LambdaExp;>;"
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    sget-object v7, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-ne v6, v7, :cond_0

    .line 228
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    move-object v0, v6

    .line 272
    .end local v0    # "current":Lgnu/expr/LambdaExp;
    :goto_0
    return-object v0

    .line 229
    .restart local v0    # "current":Lgnu/expr/LambdaExp;
    :cond_0
    move-object v6, v1

    move-object v7, v0

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 230
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    move-object v0, v6

    goto :goto_0

    .line 231
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getCanRead()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v0

    iget v6, v6, Lgnu/expr/LambdaExp;->min_args:I

    move-object v7, v0

    iget v7, v7, Lgnu/expr/LambdaExp;->max_args:I

    if-eq v6, v7, :cond_3

    .line 235
    :cond_2
    move-object v6, v0

    sget-object v7, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object v7, v6, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 236
    sget-object v6, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    move-object v0, v6

    goto :goto_0

    .line 238
    :cond_3
    move-object v6, v1

    move-object v7, v0

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 239
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    move-object v2, v6

    .line 240
    .local v2, "r":Lgnu/expr/Expression;
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->tailCallers:Ljava/util/Set;

    if-eqz v6, :cond_c

    .line 242
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->tailCallers:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/LambdaExp;

    move-object v4, v6

    .line 244
    .local v4, "p":Lgnu/expr/LambdaExp;
    move-object v6, v4

    move-object v7, v1

    invoke-static {v6, v7}, Lgnu/expr/FindCapturedVars;->checkInlineable(Lgnu/expr/LambdaExp;Ljava/util/Set;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v5, v6

    .line 245
    .local v5, "t":Lgnu/expr/Expression;
    move-object v6, v5

    sget-object v7, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-ne v6, v7, :cond_7

    .line 247
    move-object v6, v2

    if-eqz v6, :cond_4

    move-object v6, v2

    move-object v7, v4

    iget-object v7, v7, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-ne v6, v7, :cond_6

    .line 249
    :cond_4
    move-object v6, v4

    iget-object v6, v6, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v2, v6

    .line 250
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 270
    :cond_5
    :goto_2
    goto :goto_1

    .line 254
    :cond_6
    move-object v6, v0

    sget-object v7, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object v7, v6, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 255
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 258
    :cond_7
    move-object v6, v2

    if-nez v6, :cond_9

    .line 260
    move-object v6, v5

    move-object v2, v6

    .line 261
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    if-nez v6, :cond_5

    .line 262
    move-object v6, v0

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Lgnu/expr/LambdaExp;->nestedIn(Lgnu/expr/ScopeExp;)Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v7, v4

    :goto_3
    iput-object v7, v6, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    goto :goto_2

    :cond_8
    move-object v7, v4

    iget-object v7, v7, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    goto :goto_3

    .line 264
    :cond_9
    move-object v6, v5

    if-eqz v6, :cond_a

    move-object v6, v2

    move-object v7, v5

    if-ne v6, v7, :cond_b

    :cond_a
    move-object v6, v0

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 267
    :cond_b
    move-object v6, v0

    sget-object v7, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object v7, v6, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 268
    sget-object v6, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    move-object v0, v6

    goto/16 :goto_0

    .line 272
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lgnu/expr/LambdaExp;
    .end local v5    # "t":Lgnu/expr/Expression;
    :cond_c
    move-object v6, v2

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public static findCapturedVars(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 7

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    new-instance v3, Lgnu/expr/FindCapturedVars;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lgnu/expr/FindCapturedVars;-><init>()V

    move-object v2, v3

    .line 16
    .local v2, "visitor":Lgnu/expr/FindCapturedVars;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/FindCapturedVars;->setContext(Lgnu/expr/Compilation;)V

    .line 17
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    return-void
.end method


# virtual methods
.method allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;
    .locals 10

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move v2, p2

    .local v2, "function":Z
    move-object v5, v1

    move-object v4, v5

    .line 433
    .local v4, "key":Ljava/lang/Object;
    move v5, v2

    if-eqz v5, :cond_0

    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_0

    .line 435
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/FindCapturedVars;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v5

    if-nez v5, :cond_4

    .line 436
    const/4 v5, 0x0

    move v2, v5

    .line 440
    .end local v4    # "key":Ljava/lang/Object;
    :cond_0
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    if-nez v5, :cond_5

    .line 442
    move-object v5, v0

    new-instance v6, Ljava/util/Hashtable;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v6, v5, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 443
    const/4 v5, 0x0

    move-object v3, v5

    .line 447
    .local v3, "decl":Lgnu/expr/Declaration;
    :goto_1
    move-object v5, v3

    if-nez v5, :cond_3

    .line 449
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/ModuleExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v5

    move-object v3, v5

    .line 450
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 451
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 452
    move v5, v2

    if-eqz v5, :cond_1

    .line 453
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 454
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    invoke-virtual {v5}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 455
    move-object v5, v3

    const-wide/16 v6, 0x800

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 456
    :cond_2
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 457
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 462
    move-object v5, v3

    const-wide/32 v6, 0x50000

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 463
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 464
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 466
    :cond_3
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    return-object v0

    .line 438
    .end local v3    # "decl":Lgnu/expr/Declaration;
    .restart local v0    # "this":Lgnu/expr/FindCapturedVars;
    .restart local v4    # "key":Ljava/lang/Object;
    :cond_4
    new-instance v5, Lgnu/mapping/KeyPair;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    check-cast v7, Lgnu/mapping/Symbol;

    sget-object v8, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lgnu/mapping/KeyPair;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    move-object v4, v5

    .local v4, "key":Lgnu/mapping/KeyPair;
    goto :goto_0

    .line 446
    .end local v4    # "key":Lgnu/mapping/KeyPair;
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/expr/Declaration;

    move-object v3, v5

    .restart local v3    # "decl":Lgnu/expr/Declaration;
    goto :goto_1
.end method

.method public capture(Lgnu/expr/Declaration;)V
    .locals 20

    .prologue
    .line 294
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object/from16 v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v13

    if-nez v13, :cond_0

    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v13

    if-nez v13, :cond_0

    .line 295
    .line 424
    :goto_0
    return-void

    .line 296
    :cond_0
    move-object v13, v1

    iget-object v13, v13, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v13, :cond_1

    move-object v13, v1

    iget-object v13, v13, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v13}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 297
    goto :goto_0

    .line 300
    :cond_1
    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    iget-boolean v13, v13, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v13, :cond_2

    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/Declaration;->hasConstantValue()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 301
    goto :goto_0

    .line 303
    :cond_2
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/expr/FindCapturedVars;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v13

    move-object v2, v13

    .line 304
    .local v2, "curLambda":Lgnu/expr/LambdaExp;
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v13

    move-object v3, v13

    .line 305
    .local v3, "sc":Lgnu/expr/ScopeExp;
    move-object v13, v3

    if-nez v13, :cond_3

    new-instance v13, Ljava/lang/Error;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "null context for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " curL:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v13

    .line 306
    :cond_3
    move-object v13, v3

    invoke-virtual {v13}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v13

    move-object v4, v13

    .line 322
    .local v4, "declLambda":Lgnu/expr/LambdaExp;
    const/4 v13, 0x0

    move-object v5, v13

    .line 323
    .local v5, "oldParent":Lgnu/expr/LambdaExp;
    const/4 v13, 0x0

    move-object v6, v13

    .line 324
    .local v6, "chain":Lgnu/expr/LambdaExp;
    :goto_1
    move-object v13, v2

    move-object v14, v4

    if-eq v13, v14, :cond_7

    move-object v13, v2

    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 326
    move-object v13, v2

    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v13

    move-object v7, v13

    .line 327
    .local v7, "curParent":Lgnu/expr/LambdaExp;
    move-object v13, v7

    move-object v14, v5

    if-eq v13, v14, :cond_4

    .line 330
    move-object v13, v7

    iget-object v13, v13, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    move-object v6, v13

    .line 331
    move-object v13, v7

    move-object v5, v13

    .line 333
    :cond_4
    move-object v13, v6

    if-eqz v13, :cond_5

    move-object v13, v2

    iget-object v13, v13, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    if-nez v13, :cond_6

    .line 336
    :cond_5
    move-object v13, v2

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lgnu/expr/LambdaExp;->setCanCall(Z)V

    .line 337
    goto/16 :goto_0

    .line 339
    :cond_6
    move-object v13, v2

    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->getCaller()Lgnu/expr/LambdaExp;

    move-result-object v13

    move-object v2, v13

    .line 340
    move-object v13, v6

    iget-object v13, v13, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    move-object v6, v13

    .line 341
    goto :goto_1

    .line 342
    .end local v7    # "curParent":Lgnu/expr/LambdaExp;
    :cond_7
    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v13}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 344
    move-object v13, v2

    instance-of v13, v13, Lgnu/expr/ModuleExp;

    if-eqz v13, :cond_9

    .line 345
    goto/16 :goto_0

    .line 348
    :cond_8
    move-object v13, v2

    move-object v14, v4

    if-ne v13, v14, :cond_9

    .line 349
    goto/16 :goto_0

    .line 352
    :cond_9
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v13

    move-object v7, v13

    .line 354
    .local v7, "value":Lgnu/expr/Expression;
    move-object v13, v7

    if-eqz v13, :cond_a

    move-object v13, v7

    instance-of v13, v13, Lgnu/expr/LambdaExp;

    if-nez v13, :cond_e

    .line 355
    :cond_a
    const/4 v13, 0x0

    move-object v8, v13

    .line 367
    .local v8, "declValue":Lgnu/expr/LambdaExp;
    :cond_b
    :goto_2
    move-object v13, v1

    const-wide/32 v14, 0x10000

    invoke-virtual {v13, v14, v15}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 370
    move-object v13, v2

    move-object v9, v13

    .line 372
    .local v9, "parent":Lgnu/expr/LambdaExp;
    :goto_3
    move-object v13, v9

    move-object v14, v4

    if-ne v13, v14, :cond_11

    .line 373
    .line 382
    .end local v9    # "parent":Lgnu/expr/LambdaExp;
    :cond_c
    :goto_4
    move-object v13, v1

    iget-object v13, v13, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v13, :cond_13

    .line 384
    move-object v13, v1

    iget-object v13, v13, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 385
    move-object v13, v0

    move-object v14, v1

    iget-object v14, v14, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v13, v14}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    .line 424
    :cond_d
    :goto_5
    goto/16 :goto_0

    .line 358
    .end local v8    # "declValue":Lgnu/expr/LambdaExp;
    :cond_e
    move-object v13, v7

    check-cast v13, Lgnu/expr/LambdaExp;

    move-object v8, v13

    .line 359
    .restart local v8    # "declValue":Lgnu/expr/LambdaExp;
    move-object v13, v8

    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 360
    goto/16 :goto_0

    .line 361
    :cond_f
    move-object v13, v8

    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 362
    const/4 v13, 0x0

    move-object v8, v13

    goto :goto_2

    .line 363
    :cond_10
    move-object v13, v8

    move-object v14, v2

    if-ne v13, v14, :cond_b

    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v13

    if-nez v13, :cond_b

    .line 364
    goto/16 :goto_0

    .line 374
    .restart local v9    # "parent":Lgnu/expr/LambdaExp;
    :cond_11
    move-object v13, v9

    iget-object v13, v13, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v13, :cond_12

    move-object v13, v9

    iget-object v13, v13, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const-wide/16 v14, 0x800

    invoke-virtual {v13, v14, v15}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 377
    move-object v13, v1

    const-wide/16 v14, 0x800

    invoke-virtual {v13, v14, v15}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 378
    goto :goto_4

    .line 370
    :cond_12
    move-object v13, v9

    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v13

    move-object v9, v13

    goto :goto_3

    .line 387
    .end local v9    # "parent":Lgnu/expr/LambdaExp;
    :cond_13
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v13

    if-nez v13, :cond_14

    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v13

    if-nez v13, :cond_14

    move-object v13, v8

    if-nez v13, :cond_d

    .line 389
    :cond_14
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v13

    if-nez v13, :cond_16

    .line 391
    move-object v13, v2

    move-object v9, v13

    .line 392
    .local v9, "heapLambda":Lgnu/expr/LambdaExp;
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v13

    if-nez v13, :cond_15

    .line 393
    move-object v13, v9

    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->setImportsLexVars()V

    .line 394
    :cond_15
    move-object v13, v9

    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v13

    move-object v10, v13

    .line 395
    .local v10, "parent":Lgnu/expr/LambdaExp;
    move-object v13, v10

    move-object v11, v13

    .local v11, "outer":Lgnu/expr/LambdaExp;
    :goto_6
    move-object v13, v11

    move-object v14, v4

    if-eq v13, v14, :cond_16

    move-object v13, v11

    if-eqz v13, :cond_16

    .line 397
    move-object v13, v11

    move-object v9, v13

    .line 398
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v13

    if-nez v13, :cond_17

    move-object v13, v8

    move-object v14, v11

    if-ne v13, v14, :cond_17

    .line 399
    .line 416
    .end local v9    # "heapLambda":Lgnu/expr/LambdaExp;
    .end local v10    # "parent":Lgnu/expr/LambdaExp;
    .end local v11    # "outer":Lgnu/expr/LambdaExp;
    :cond_16
    move-object v13, v4

    if-nez v13, :cond_1a

    .line 417
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "null declLambda for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " curL:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    move-object v13, v1

    iget-object v13, v13, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object v9, v13

    .line 419
    .local v9, "c":Lgnu/expr/ScopeExp;
    :goto_7
    move-object v13, v9

    if-eqz v13, :cond_1a

    .line 420
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "- context:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 419
    move-object v13, v9

    iget-object v13, v13, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v9, v13

    goto :goto_7

    .line 400
    .local v9, "heapLambda":Lgnu/expr/LambdaExp;
    .restart local v10    # "parent":Lgnu/expr/LambdaExp;
    .restart local v11    # "outer":Lgnu/expr/LambdaExp;
    :cond_17
    move-object v13, v9

    iget-object v13, v13, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object v12, v13

    .line 401
    .local v12, "heapDecl":Lgnu/expr/Declaration;
    move-object v13, v12

    if-eqz v13, :cond_18

    move-object v13, v12

    const-wide/16 v14, 0x800

    invoke-virtual {v13, v14, v15}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 404
    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    const/16 v14, 0x65

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "static "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " references non-static "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 407
    :cond_18
    move-object v13, v9

    instance-of v13, v13, Lgnu/expr/ClassExp;

    if-eqz v13, :cond_19

    move-object v13, v9

    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_19

    move-object v13, v9

    check-cast v13, Lgnu/expr/ClassExp;

    invoke-virtual {v13}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v13

    if-eqz v13, :cond_19

    .line 410
    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    const/16 v14, 0x77

    move-object v15, v9

    iget-object v15, v15, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const-string/jumbo v16, "simple class "

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v19, v17

    move-object/from16 v17, v19

    move-object/from16 v18, v19

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " requiring lexical link (because of reference to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ") - use define-class instead"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v13 .. v17}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_19
    move-object v13, v9

    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->setNeedsStaticLink()V

    .line 413
    move-object v13, v9

    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v13

    move-object v11, v13

    .line 414
    goto/16 :goto_6

    .line 422
    .end local v9    # "heapLambda":Lgnu/expr/LambdaExp;
    .end local v10    # "parent":Lgnu/expr/LambdaExp;
    .end local v11    # "outer":Lgnu/expr/LambdaExp;
    .end local v12    # "heapDecl":Lgnu/expr/Declaration;
    :cond_1a
    move-object v13, v4

    move-object v14, v1

    invoke-virtual {v13, v14}, Lgnu/expr/LambdaExp;->capture(Lgnu/expr/Declaration;)V

    goto/16 :goto_5
.end method

.method capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .locals 8

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "containing":Lgnu/expr/Declaration;
    move-object v2, p2

    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    iget-object v5, v5, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v5, v5, Lgnu/expr/ReferenceExp;

    if-eqz v5, :cond_1

    .line 492
    move-object v5, v2

    iget-object v5, v5, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v5, Lgnu/expr/ReferenceExp;

    move-object v3, v5

    .line 493
    .local v3, "rexp":Lgnu/expr/ReferenceExp;
    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    move-object v4, v5

    .line 494
    .local v4, "orig":Lgnu/expr/Declaration;
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 497
    :cond_0
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 498
    .line 509
    .end local v3    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v4    # "orig":Lgnu/expr/Declaration;
    :goto_0
    return-void

    .line 501
    :cond_1
    :goto_1
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    iget-object v5, v5, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v5, v5, Lgnu/expr/FluidLetExp;

    if-eqz v5, :cond_2

    .line 503
    move-object v5, v2

    iget-object v5, v5, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object v2, v5

    goto :goto_1

    .line 505
    :cond_2
    move-object v5, v1

    if-eqz v5, :cond_3

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 506
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    .line 509
    :goto_2
    goto :goto_0

    .line 508
    :cond_3
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    goto :goto_2
.end method

.method maybeWarnNoDeclarationSeen(Ljava/lang/Object;Lgnu/expr/Compilation;Lgnu/text/SourceLocator;)V
    .locals 9

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "location":Lgnu/text/SourceLocator;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/expr/Compilation;->warnUndefinedVariable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    move-object v4, v2

    const/16 v5, 0x77

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no declaration seen for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 160
    :cond_0
    return-void
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 20

    .prologue
    .line 24
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/expr/FindCapturedVars;
    move-object/from16 v2, p1

    .local v2, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v3, p2

    .local v3, "ignored":Ljava/lang/Void;
    move-object v15, v1

    iget v15, v15, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    move v4, v15

    .line 25
    .local v4, "oldBackJumpPossible":I
    const/4 v15, 0x0

    move v5, v15

    .line 26
    .local v5, "skipFunc":Z
    const/4 v15, 0x0

    move v6, v15

    .line 36
    .local v6, "skipArgs":Z
    move-object v15, v2

    iget-object v15, v15, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v15, v15, Lgnu/expr/ReferenceExp;

    if-eqz v15, :cond_4

    sget v15, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-gt v15, v0, :cond_4

    .line 39
    move-object v15, v2

    iget-object v15, v15, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v15, Lgnu/expr/ReferenceExp;

    iget-object v15, v15, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v15}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v15

    move-object v7, v15

    .line 41
    .local v7, "decl":Lgnu/expr/Declaration;
    move-object v15, v7

    if-eqz v15, :cond_0

    move-object v15, v7

    iget-object v15, v15, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v15, v15, Lgnu/expr/ModuleExp;

    if-eqz v15, :cond_0

    move-object v15, v7

    invoke-virtual {v15}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v15

    if-nez v15, :cond_0

    move-object v15, v7

    const-wide/16 v16, 0x1000

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v15

    if-nez v15, :cond_0

    .line 45
    move-object v15, v7

    invoke-virtual {v15}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v15

    move-object v8, v15

    .line 46
    .local v8, "value":Lgnu/expr/Expression;
    move-object v15, v8

    instance-of v15, v15, Lgnu/expr/LambdaExp;

    if-eqz v15, :cond_0

    .line 48
    move-object v15, v8

    check-cast v15, Lgnu/expr/LambdaExp;

    move-object v9, v15

    .line 49
    .local v9, "lexp":Lgnu/expr/LambdaExp;
    move-object v15, v9

    invoke-virtual {v15}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v15

    if-nez v15, :cond_0

    .line 50
    const/4 v15, 0x1

    move v5, v15

    .line 53
    .line 85
    .end local v7    # "decl":Lgnu/expr/Declaration;
    .end local v8    # "value":Lgnu/expr/Expression;
    .end local v9    # "lexp":Lgnu/expr/LambdaExp;
    :cond_0
    :goto_0
    move v15, v5

    if-nez v15, :cond_1

    .line 86
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    invoke-virtual/range {v16 .. v18}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/expr/Expression;

    move-object/from16 v0, v16

    iput-object v0, v15, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 87
    :cond_1
    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/FindCapturedVars;->exitValue:Ljava/lang/Object;

    if-nez v15, :cond_2

    move v15, v6

    if-nez v15, :cond_2

    .line 88
    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    invoke-virtual/range {v16 .. v18}, Lgnu/expr/FindCapturedVars;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 89
    :cond_2
    move-object v15, v1

    iget v15, v15, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    move/from16 v16, v4

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 90
    move-object v15, v2

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 91
    :cond_3
    move-object v15, v2

    move-object v1, v15

    .end local v1    # "this":Lgnu/expr/FindCapturedVars;
    return-object v1

    .line 56
    .restart local v1    # "this":Lgnu/expr/FindCapturedVars;
    :cond_4
    move-object v15, v2

    iget-object v15, v15, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v15, v15, Lgnu/expr/QuoteExp;

    if-eqz v15, :cond_0

    move-object v15, v2

    invoke-virtual {v15}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v15

    if-lez v15, :cond_0

    .line 58
    move-object v15, v2

    iget-object v15, v15, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v15, Lgnu/expr/QuoteExp;

    invoke-virtual {v15}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v15

    move-object v7, v15

    .line 59
    .local v7, "val":Ljava/lang/Object;
    move-object v15, v2

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v15

    move-object v8, v15

    .line 60
    .local v8, "arg0":Lgnu/expr/Expression;
    move-object v15, v7

    instance-of v15, v15, Lgnu/expr/PrimProcedure;

    if-eqz v15, :cond_0

    move-object v15, v8

    instance-of v15, v15, Lgnu/expr/ReferenceExp;

    if-eqz v15, :cond_0

    .line 62
    move-object v15, v7

    check-cast v15, Lgnu/expr/PrimProcedure;

    move-object v9, v15

    .line 63
    .local v9, "pproc":Lgnu/expr/PrimProcedure;
    move-object v15, v8

    check-cast v15, Lgnu/expr/ReferenceExp;

    iget-object v15, v15, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v15}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v15

    move-object v10, v15

    .line 65
    .local v10, "decl":Lgnu/expr/Declaration;
    move-object v15, v10

    if-eqz v15, :cond_0

    move-object v15, v10

    iget-object v15, v15, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v15, v15, Lgnu/expr/ModuleExp;

    if-eqz v15, :cond_0

    move-object v15, v10

    const-wide/16 v16, 0x1000

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v15

    if-nez v15, :cond_0

    .line 68
    move-object v15, v10

    invoke-virtual {v15}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v15

    move-object v11, v15

    .line 69
    .local v11, "value":Lgnu/expr/Expression;
    move-object v15, v11

    instance-of v15, v15, Lgnu/expr/ClassExp;

    if-eqz v15, :cond_0

    .line 71
    move-object v15, v2

    invoke-virtual {v15}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v15

    move-object v12, v15

    .line 72
    .local v12, "args":[Lgnu/expr/Expression;
    move-object v15, v11

    check-cast v15, Lgnu/expr/LambdaExp;

    move-object v13, v15

    .line 73
    .local v13, "lexp":Lgnu/expr/LambdaExp;
    move-object v15, v13

    invoke-virtual {v15}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v15

    if-nez v15, :cond_0

    .line 75
    move-object v15, v2

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lgnu/expr/ApplyExp;->nextCall:Lgnu/expr/ApplyExp;

    .line 76
    move-object v15, v10

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iput-object v0, v15, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    .line 77
    const/4 v15, 0x1

    move v14, v15

    .local v14, "i":I
    :goto_1
    move v15, v14

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 78
    move-object v15, v12

    move/from16 v16, v14

    aget-object v15, v15, v16

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 77
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 79
    :cond_5
    const/4 v15, 0x1

    move/from16 v19, v15

    move/from16 v15, v19

    move/from16 v16, v19

    move/from16 v6, v16

    move v5, v15

    goto/16 :goto_0
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindCapturedVars;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    return-object v0
.end method

.method protected visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ClassExp;
    move-object v2, p2

    .local v2, "ignored":Ljava/lang/Void;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Lgnu/expr/ExpExpVisitor;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/expr/Expression;

    move-object v3, v5

    .line 121
    .local v3, "ret":Lgnu/expr/Expression;
    move-object v5, v1

    iget-boolean v5, v5, Lgnu/expr/ClassExp;->explicitInit:Z

    if-nez v5, :cond_2

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v5

    if-nez v5, :cond_2

    .line 123
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object v6, v1

    invoke-static {v5, v6}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v5

    .line 133
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v5, :cond_1

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v5}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    sget-object v6, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    if-ne v5, v6, :cond_1

    .line 135
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    sget-object v6, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 136
    :cond_1
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    return-object v0

    .line 124
    .restart local v0    # "this":Lgnu/expr/FindCapturedVars;
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    move-object v4, v5

    .local v4, "child":Lgnu/expr/LambdaExp;
    :goto_0
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 129
    const-string/jumbo v5, "*init*"

    move-object v6, v4

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 130
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/LambdaExp;->setNeedsStaticLink(Z)V

    .line 127
    :cond_3
    move-object v5, v4

    iget-object v5, v5, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    move-object v4, v5

    goto :goto_0
.end method

.method protected bridge synthetic visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ClassExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindCapturedVars;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    return-object v0
.end method

.method public bridge synthetic visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindCapturedVars;->visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Void;)V

    return-void
.end method

.method public visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Void;)V
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "ignored":Ljava/lang/Void;
    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v4, :cond_0

    .line 97
    .line 116
    :goto_0
    return-void

    .line 99
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lgnu/expr/ExpExpVisitor;->visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V

    .line 107
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    .line 108
    .local v3, "param":Lgnu/expr/Declaration;
    :goto_1
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 110
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v4

    if-nez v4, :cond_2

    .line 112
    move-object v4, v1

    const/4 v5, 0x1

    const/16 v6, 0x200

    invoke-virtual {v4, v5, v6}, Lgnu/expr/LambdaExp;->setFlag(ZI)V

    .line 113
    .line 116
    :cond_1
    goto :goto_0

    .line 108
    :cond_2
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    goto :goto_1
.end method

.method protected visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/FluidLetExp;
    move-object v2, p2

    .local v2, "ignored":Ljava/lang/Void;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/FluidLetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v3, v6

    .local v3, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 166
    move-object v6, v3

    iget-object v6, v6, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v6, :cond_0

    .line 168
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 169
    .local v4, "name":Ljava/lang/Object;
    move-object v6, v0

    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v6

    move-object v5, v6

    .line 170
    .local v5, "bind":Lgnu/expr/Declaration;
    move-object v6, v0

    move-object v7, v4

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    move-object v9, v1

    invoke-virtual {v6, v7, v8, v9}, Lgnu/expr/FindCapturedVars;->maybeWarnNoDeclarationSeen(Ljava/lang/Object;Lgnu/expr/Compilation;Lgnu/text/SourceLocator;)V

    .line 171
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    .line 172
    move-object v6, v3

    move-object v7, v5

    iput-object v7, v6, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    .line 164
    .end local v4    # "name":Ljava/lang/Object;
    .end local v5    # "bind":Lgnu/expr/Declaration;
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    .line 175
    :cond_1
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Lgnu/expr/ExpExpVisitor;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/Expression;

    move-object v0, v6

    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    return-object v0
.end method

.method protected bridge synthetic visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/FluidLetExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindCapturedVars;->visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    return-object v0
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 9

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "ignored":Ljava/lang/Void;
    new-instance v5, Ljava/util/LinkedHashSet;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v3, v5

    .line 279
    .local v3, "seen":Ljava/util/Set;, "Ljava/util/Set<Lgnu/expr/LambdaExp;>;"
    move-object v5, v1

    move-object v6, v3

    invoke-static {v5, v6}, Lgnu/expr/FindCapturedVars;->checkInlineable(Lgnu/expr/LambdaExp;Ljava/util/Set;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 280
    .local v4, "caller":Lgnu/expr/Expression;
    move-object v5, v4

    sget-object v6, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-eq v5, v6, :cond_1

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    instance-of v5, v5, Lgnu/expr/ModuleExp;

    if-eqz v5, :cond_0

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v5, :cond_1

    .line 286
    :cond_0
    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 287
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    .line 289
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Lgnu/expr/ExpExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/expr/Expression;

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    return-object v0
.end method

.method protected bridge synthetic visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindCapturedVars;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    return-object v0
.end method

.method protected visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 15

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object/from16 v1, p1

    .local v1, "exp":Lgnu/expr/LetExp;
    move-object/from16 v2, p2

    .local v2, "ignored":Ljava/lang/Void;
    move-object v12, v1

    iget-object v12, v12, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    instance-of v12, v12, Lgnu/expr/BeginExp;

    if-eqz v12, :cond_3

    .line 190
    move-object v12, v1

    iget-object v12, v12, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move-object v3, v12

    .line 191
    .local v3, "inits":[Lgnu/expr/Expression;
    move-object v12, v3

    array-length v12, v12

    move v4, v12

    .line 192
    .local v4, "len":I
    move-object v12, v1

    iget-object v12, v12, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    check-cast v12, Lgnu/expr/BeginExp;

    iget-object v12, v12, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move-object v5, v12

    .line 193
    .local v5, "exps":[Lgnu/expr/Expression;
    const/4 v12, 0x0

    move v6, v12

    .line 194
    .local v6, "init_index":I
    move-object v12, v1

    invoke-virtual {v12}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v12

    move-object v7, v12

    .line 195
    .local v7, "decl":Lgnu/expr/Declaration;
    const/4 v12, 0x0

    move v8, v12

    .line 196
    .local v8, "begin_index":I
    :goto_0
    move v12, v8

    move-object v13, v5

    array-length v13, v13

    if-ge v12, v13, :cond_3

    move v12, v6

    move v13, v4

    if-ge v12, v13, :cond_3

    .line 199
    move-object v12, v5

    move v13, v8

    aget-object v12, v12, v13

    move-object v9, v12

    .line 200
    .local v9, "st":Lgnu/expr/Expression;
    move-object v12, v9

    instance-of v12, v12, Lgnu/expr/SetExp;

    if-eqz v12, :cond_2

    .line 202
    move-object v12, v9

    check-cast v12, Lgnu/expr/SetExp;

    move-object v10, v12

    .line 203
    .local v10, "set":Lgnu/expr/SetExp;
    move-object v12, v10

    iget-object v12, v12, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    move-object v13, v7

    if-ne v12, v13, :cond_2

    move-object v12, v3

    move v13, v6

    aget-object v12, v12, v13

    sget-object v13, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    if-ne v12, v13, :cond_2

    move-object v12, v10

    invoke-virtual {v12}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 207
    move-object v12, v10

    iget-object v12, v12, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object v11, v12

    .line 208
    .local v11, "new_value":Lgnu/expr/Expression;
    move-object v12, v11

    instance-of v12, v12, Lgnu/expr/QuoteExp;

    if-nez v12, :cond_0

    move-object v12, v11

    instance-of v12, v12, Lgnu/expr/LambdaExp;

    if-eqz v12, :cond_1

    :cond_0
    move-object v12, v7

    invoke-virtual {v12}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v12

    move-object v13, v11

    if-ne v12, v13, :cond_1

    .line 212
    move-object v12, v3

    move v13, v6

    move-object v14, v11

    aput-object v14, v12, v13

    .line 213
    move-object v12, v5

    move v13, v8

    sget-object v14, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    aput-object v14, v12, v13

    .line 215
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 216
    move-object v12, v7

    invoke-virtual {v12}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v12

    move-object v7, v12

    .line 197
    .end local v10    # "set":Lgnu/expr/SetExp;
    .end local v11    # "new_value":Lgnu/expr/Expression;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 221
    .end local v3    # "inits":[Lgnu/expr/Expression;
    .end local v4    # "len":I
    .end local v5    # "exps":[Lgnu/expr/Expression;
    .end local v6    # "init_index":I
    .end local v7    # "decl":Lgnu/expr/Declaration;
    .end local v8    # "begin_index":I
    .end local v9    # "st":Lgnu/expr/Expression;
    :cond_3
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    invoke-super {v12, v13, v14}, Lgnu/expr/ExpExpVisitor;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/expr/Expression;

    move-object v0, v12

    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    return-object v0
.end method

.method protected bridge synthetic visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/LetExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindCapturedVars;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    return-object v0
.end method

.method protected visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ModuleExp;
    move-object v2, p2

    .local v2, "ignored":Ljava/lang/Void;
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    move-object v3, v7

    .line 142
    .local v3, "saveModule":Lgnu/expr/ModuleExp;
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    move-object v4, v7

    .line 143
    .local v4, "saveDecls":Ljava/util/Hashtable;
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 144
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 147
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    :try_start_0
    invoke-virtual {v7, v8, v9}, Lgnu/expr/FindCapturedVars;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v5, v7

    .line 151
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 152
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    return-object v0

    .line 151
    .restart local v0    # "this":Lgnu/expr/FindCapturedVars;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 152
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    move-object v7, v6

    throw v7
.end method

.method protected bridge synthetic visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ModuleExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindCapturedVars;->visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 9

    .prologue
    .line 471
    move-object v1, p0

    .local v1, "this":Lgnu/expr/FindCapturedVars;
    move-object v2, p1

    .local v2, "exp":Lgnu/expr/ReferenceExp;
    move-object v3, p2

    .local v3, "ignored":Ljava/lang/Void;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v5

    move-object v4, v5

    .line 472
    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 474
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v5

    move-object v4, v5

    .line 476
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/expr/ReferenceExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 478
    :cond_0
    move-object v5, v4

    const-wide/32 v6, 0x10000

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Compilation;->resolve(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 481
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    move-object v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lgnu/expr/FindCapturedVars;->maybeWarnNoDeclarationSeen(Ljava/lang/Object;Lgnu/expr/Compilation;Lgnu/text/SourceLocator;)V

    .line 484
    :cond_1
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 485
    move-object v5, v2

    move-object v1, v5

    .end local v1    # "this":Lgnu/expr/FindCapturedVars;
    return-object v1
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ReferenceExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindCapturedVars;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    return-object v0
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/SetExp;
    move-object v2, p2

    .local v2, "ignored":Ljava/lang/Void;
    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    move-object v3, v4

    .line 527
    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 529
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/SetExp;->getSymbol()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/SetExp;->isFuncDef()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    .line 530
    move-object v4, v1

    move-object v5, v3

    iput-object v5, v4, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 532
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 534
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v4

    if-nez v4, :cond_1

    .line 535
    move-object v4, v3

    invoke-static {v4}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    .line 536
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/SetExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 538
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lgnu/expr/ExpExpVisitor;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Expression;

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    return-object v0
.end method

.method protected bridge synthetic visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/SetExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindCapturedVars;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    return-object v0
.end method

.method protected visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ThisExp;
    move-object v2, p2

    .local v2, "ignored":Ljava/lang/Void;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/ThisExp;->isForContext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 517
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/FindCapturedVars;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->setImportsLexVars()V

    .line 518
    move-object v3, v1

    move-object v0, v3

    .line 521
    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/expr/FindCapturedVars;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindCapturedVars;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method protected bridge synthetic visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/expr/FindCapturedVars;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ThisExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/FindCapturedVars;->visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/FindCapturedVars;
    return-object v0
.end method
