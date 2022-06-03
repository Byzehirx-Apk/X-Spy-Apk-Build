.class public Lgnu/kawa/slib/pregexp$frame;
.super Lgnu/expr/ModuleBody;
.source "pregexp.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/pregexp;->pregexpMatchPositionsAux(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field backrefs:Ljava/lang/Object;

.field case$Mnsensitive$Qu:Ljava/lang/Object;

.field identity:Lgnu/mapping/Procedure;

.field n:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field sn:Ljava/lang/Object;

.field start:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 9

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xf

    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit112:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:460"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    return-void
.end method

.method public static lambda2identity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "x":Ljava/lang/Object;
    return-object v0
.end method

.method static lambda4()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 463
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    .line 460
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/pregexp$frame;->lambda2identity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 4294967295
    .line 460
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .prologue
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/slib/pregexp$frame;
    move-object/from16 v1, p1

    .local v1, "re":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "i":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "sk":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "fk":Ljava/lang/Object;
    new-instance v10, Lgnu/kawa/slib/pregexp$frame0;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Lgnu/kawa/slib/pregexp$frame0;-><init>()V

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    iput-object v12, v11, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    move-object v5, v10

    move-object v10, v5

    move-object v11, v1

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    move-object v10, v5

    move-object v11, v2

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v10, v5

    move-object v11, v3

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v10, v5

    move-object v11, v4

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    .line 465
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_1

    .line 467
    sget-object v10, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame;->start:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_0

    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 633
    :goto_0
    move-object v0, v10

    .end local v0    # "this":Lgnu/kawa/slib/pregexp$frame;
    return-object v0

    .line 467
    .restart local v0    # "this":Lgnu/kawa/slib/pregexp$frame;
    :cond_0
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    :cond_1
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 469
    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_3

    .line 471
    sget-object v10, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_2

    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_1
    goto :goto_0

    :cond_2
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_1

    :cond_3
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 473
    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit23:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_4

    .line 474
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    :cond_4
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 475
    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit26:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_6

    .line 476
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lgnu/kawa/slib/pregexp;->isPregexpAtWordBoundary(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_5

    .line 477
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 478
    :goto_2
    goto/16 :goto_0

    :cond_5
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_2

    :cond_6
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 479
    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit28:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_8

    .line 480
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lgnu/kawa/slib/pregexp;->isPregexpAtWordBoundary(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_7

    .line 481
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 482
    :goto_3
    goto/16 :goto_0

    :cond_7
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_3

    .line 483
    :cond_8
    move-object v10, v5

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {v10}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v10

    move v6, v10

    .local v6, "x":Z
    move v10, v6

    if-eqz v10, :cond_9

    sget-object v10, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_c

    .line 485
    :goto_4
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_a

    sget-object v10, Lkawa/lib/characters;->char$Eq$Qu:Lgnu/expr/ModuleMethod;

    .line 486
    :goto_5
    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v6, v12

    .end local v6    # "x":Z
    :try_start_0
    check-cast v11, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v6, v13

    :try_start_1
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    invoke-static {v11, v12}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v11

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_b

    .line 487
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    sget-object v12, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v13, v5

    iget-object v13, v13, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    sget-object v14, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v12, v13, v14}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_6
    goto/16 :goto_0

    .line 483
    .restart local v6    # "x":Z
    :cond_9
    move v10, v6

    if-eqz v10, :cond_c

    goto :goto_4

    .line 485
    :cond_a
    sget-object v10, Lkawa/lib/rnrs/unicode;->char$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

    goto :goto_5

    .line 487
    .end local v6    # "x":Z
    :cond_b
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_6

    .line 488
    .restart local v6    # "x":Z
    :cond_c
    move-object v10, v5

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {v10}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    move v6, v10

    move v10, v6

    if-eqz v10, :cond_d

    sget-object v10, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_f

    .line 489
    :goto_7
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v6, v11

    .end local v6    # "x":Z
    :try_start_2
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v6, v12

    :try_start_3
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v11

    invoke-static {v10, v11}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v10

    invoke-static {v10}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v10

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {v10, v11}, Lgnu/kawa/slib/pregexp;->isPregexpCheckIfInCharClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_e

    .line 491
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    sget-object v12, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v13, v5

    iget-object v13, v13, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    sget-object v14, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v12, v13, v14}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_8
    goto/16 :goto_0

    .line 488
    .restart local v6    # "x":Z
    :cond_d
    move v10, v6

    if-eqz v10, :cond_f

    goto :goto_7

    .line 491
    .end local v6    # "x":Z
    :cond_e
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_8

    .line 492
    .restart local v6    # "x":Z
    :cond_f
    move-object v10, v5

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {v10}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v10

    move v6, v10

    move v10, v6

    if-eqz v10, :cond_11

    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v11, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit83:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    .local v7, "x":Ljava/lang/Object;
    move-object v10, v7

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v6    # "x":Z
    if-eq v10, v11, :cond_10

    sget-object v10, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_15

    .line 493
    .end local v7    # "x":Ljava/lang/Object;
    :goto_9
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v7, v11

    :try_start_4
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v7, v12

    :try_start_5
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v11

    invoke-static {v10, v11}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v10

    move v6, v10

    .line 494
    .local v6, "c":C
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_12

    sget-object v10, Lkawa/lib/characters;->char$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    :goto_a
    move-object v7, v10

    .line 495
    .local v7, "c$Ls":Lgnu/expr/ModuleMethod;
    move-object v10, v7

    sget-object v11, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move v12, v6

    invoke-static {v12}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    .local v8, "x":Ljava/lang/Object;
    move-object v10, v8

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_13

    move-object v10, v7

    .line 496
    move v11, v6

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    sget-object v12, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    move-object v13, v5

    iget-object v13, v13, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_14

    .line 497
    :goto_b
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    sget-object v12, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v13, v5

    iget-object v13, v13, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    sget-object v14, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v12, v13, v14}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_c
    goto/16 :goto_0

    .line 492
    .end local v6    # "c":C
    .end local v8    # "x":Ljava/lang/Object;
    .local v7, "x":Ljava/lang/Object;
    :cond_10
    move-object v10, v7

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_15

    goto :goto_9

    .end local v7    # "x":Ljava/lang/Object;
    .local v6, "x":Z
    :cond_11
    move v10, v6

    if-eqz v10, :cond_15

    goto :goto_9

    .line 494
    .local v6, "c":C
    :cond_12
    sget-object v10, Lkawa/lib/rnrs/unicode;->char$Mnci$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    goto :goto_a

    .line 495
    .local v7, "c$Ls":Lgnu/expr/ModuleMethod;
    .restart local v8    # "x":Ljava/lang/Object;
    :cond_13
    move-object v10, v8

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_14

    goto :goto_b

    .line 497
    :cond_14
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_c

    .end local v6    # "c":C
    .end local v7    # "c$Ls":Lgnu/expr/ModuleMethod;
    .end local v8    # "x":Ljava/lang/Object;
    :cond_15
    move-object v10, v5

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {v10}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    .line 499
    sget-object v10, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v6, v10

    .local v6, "tmp":Ljava/lang/Object;
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object v11, v6

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit83:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_17

    .line 501
    sget-object v10, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_16

    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 502
    .line 631
    :goto_d
    goto/16 :goto_0

    .line 502
    :cond_16
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    sget-object v13, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v13, v11, v12

    invoke-static {v10}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_d

    :cond_17
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    move-object v11, v6

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit82:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_19

    .line 504
    sget-object v10, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_18

    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 505
    :goto_e
    goto :goto_d

    :cond_18
    move-object v10, v5

    sget-object v11, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/kawa/slib/pregexp$frame0;->lambda5loupOneOfChars(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_e

    :cond_19
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    move-object v11, v6

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit17:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_1b

    .line 511
    sget-object v10, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_1a

    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 512
    :goto_f
    goto :goto_d

    :cond_1a
    move-object v10, v0

    sget-object v11, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v13, v5

    iget-object v13, v13, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    move-object v14, v5

    iget-object v14, v14, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    invoke-virtual {v10, v11, v12, v13, v14}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_f

    :cond_1b
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    move-object v11, v6

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_1c

    .line 516
    move-object v10, v5

    sget-object v11, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/kawa/slib/pregexp$frame0;->lambda6loupSeq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_d

    :cond_1c
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    move-object v11, v6

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_1d

    .line 523
    move-object v10, v5

    sget-object v11, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/kawa/slib/pregexp$frame0;->lambda7loupOr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_d

    :cond_1d
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    move-object v11, v6

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_20

    .line 531
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame;->backrefs:Ljava/lang/Object;

    sget-object v11, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, Lgnu/kawa/slib/pregexp;->pregexpListRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    .line 533
    .local v7, "c":Ljava/lang/Object;
    move-object v10, v7

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_1e

    sget-object v10, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v11, v7

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 535
    :goto_10
    move-object v8, v10

    .line 538
    .local v8, "backref":Ljava/lang/Object;
    move-object v10, v8

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_1f

    .line 539
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v9, v11

    :try_start_6
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    sget-object v11, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 540
    move-object v12, v8

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v9, v12

    :try_start_7
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v11

    sget-object v12, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v13, v8

    invoke-virtual {v12, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v9, v13

    :try_start_8
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v12

    invoke-static {v10, v11, v12}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v14, v5

    iget-object v14, v14, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    move-object v15, v5

    iget-object v15, v15, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-static/range {v10 .. v15}, Lgnu/kawa/slib/pregexp;->pregexpStringMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 542
    :goto_11
    goto/16 :goto_d

    .line 535
    .end local v8    # "backref":Ljava/lang/Object;
    :cond_1e
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    sget-object v13, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    sget-object v13, Lgnu/kawa/slib/pregexp;->Lit102:Lgnu/mapping/SimpleSymbol;

    aput-object v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x2

    move-object v13, v5

    iget-object v13, v13, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    aput-object v13, v11, v12

    invoke-static {v10}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_10

    .line 542
    .restart local v8    # "backref":Ljava/lang/Object;
    :cond_1f
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_11

    .end local v7    # "c":Ljava/lang/Object;
    .end local v8    # "backref":Ljava/lang/Object;
    :cond_20
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    move-object v11, v6

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit100:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_21

    .line 544
    move-object v10, v0

    sget-object v11, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v13, v5

    iget-object v13, v13, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    move-object v14, v5

    iget-object v14, v14, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12, v13, v14}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_d

    :cond_21
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    move-object v11, v6

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit103:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_23

    .line 549
    move-object v10, v0

    sget-object v11, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    sget-object v14, Lgnu/kawa/slib/pregexp;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    invoke-virtual {v10, v11, v12, v13, v14}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    .line 552
    .local v7, "found$Mnit$Qu":Ljava/lang/Object;
    move-object v10, v7

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_22

    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_12
    goto/16 :goto_d

    :cond_22
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_12

    .end local v7    # "found$Mnit$Qu":Ljava/lang/Object;
    :cond_23
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    move-object v11, v6

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit104:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_25

    .line 554
    move-object v10, v0

    sget-object v11, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    sget-object v14, Lgnu/kawa/slib/pregexp;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    invoke-virtual {v10, v11, v12, v13, v14}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    .line 557
    .restart local v7    # "found$Mnit$Qu":Ljava/lang/Object;
    move-object v10, v7

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_24

    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_13
    goto/16 :goto_d

    :cond_24
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_13

    .end local v7    # "found$Mnit$Qu":Ljava/lang/Object;
    :cond_25
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    move-object v11, v6

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit105:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_27

    .line 559
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    move-object v8, v11

    .local v8, "sn$Mnactual":Ljava/lang/Object;
    move-object v7, v10

    .line 560
    .local v7, "n$Mnactual":Ljava/lang/Object;
    move-object v10, v0

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v10, v0

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    .line 561
    move-object v10, v0

    sget-object v11, Lgnu/kawa/slib/pregexp;->Lit5:Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit106:Lgnu/lists/PairWithPosition;

    sget-object v13, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    .line 563
    move-object v14, v5

    iget-object v14, v14, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v13, v14}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lgnu/kawa/slib/pregexp;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-static {v11, v12, v13, v14}, Lgnu/lists/LList;->list4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit73:Lgnu/math/IntNum;

    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    sget-object v14, Lgnu/kawa/slib/pregexp;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    invoke-virtual {v10, v11, v12, v13, v14}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    .line 565
    .local v9, "found$Mnit$Qu":Ljava/lang/Object;
    move-object v10, v0

    move-object v11, v7

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v10, v0

    move-object v11, v8

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    move-object v10, v9

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_26

    .line 566
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_14
    goto/16 :goto_d

    :cond_26
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_14

    .end local v7    # "n$Mnactual":Ljava/lang/Object;
    .end local v8    # "sn$Mnactual":Ljava/lang/Object;
    .end local v9    # "found$Mnit$Qu":Ljava/lang/Object;
    :cond_27
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    move-object v11, v6

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit107:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_29

    .line 568
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    move-object v8, v11

    .restart local v8    # "sn$Mnactual":Ljava/lang/Object;
    move-object v7, v10

    .line 569
    .restart local v7    # "n$Mnactual":Ljava/lang/Object;
    move-object v10, v0

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v10, v0

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    .line 570
    move-object v10, v0

    sget-object v11, Lgnu/kawa/slib/pregexp;->Lit5:Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit108:Lgnu/lists/PairWithPosition;

    sget-object v13, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    .line 572
    move-object v14, v5

    iget-object v14, v14, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v13, v14}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lgnu/kawa/slib/pregexp;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-static {v11, v12, v13, v14}, Lgnu/lists/LList;->list4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit73:Lgnu/math/IntNum;

    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    sget-object v14, Lgnu/kawa/slib/pregexp;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    invoke-virtual {v10, v11, v12, v13, v14}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    .line 574
    .restart local v9    # "found$Mnit$Qu":Ljava/lang/Object;
    move-object v10, v0

    move-object v11, v7

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v10, v0

    move-object v11, v8

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    move-object v10, v9

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_28

    .line 575
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_15
    goto/16 :goto_d

    :cond_28
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_15

    .end local v7    # "n$Mnactual":Ljava/lang/Object;
    .end local v8    # "sn$Mnactual":Ljava/lang/Object;
    .end local v9    # "found$Mnit$Qu":Ljava/lang/Object;
    :cond_29
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    move-object v11, v6

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit109:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_2b

    .line 577
    move-object v10, v0

    sget-object v11, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    sget-object v14, Lgnu/kawa/slib/pregexp;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    invoke-virtual {v10, v11, v12, v13, v14}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    .line 579
    .local v7, "found$Mnit$Qu":Ljava/lang/Object;
    move-object v10, v7

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_2a

    .line 580
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object v12, v7

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 581
    :goto_16
    goto/16 :goto_d

    :cond_2a
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_16

    .end local v7    # "found$Mnit$Qu":Ljava/lang/Object;
    :cond_2b
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    move-object v11, v6

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit60:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    .local v7, "x":Ljava/lang/Object;
    move-object v10, v7

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_2c

    move-object v10, v7

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_2d

    .line 583
    :goto_17
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    move-object v11, v5

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame0;->old:Ljava/lang/Object;

    .line 584
    move-object v10, v0

    sget-object v11, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 585
    sget-object v12, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v13, v5

    iget-object v13, v13, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lgnu/kawa/slib/pregexp;->Lit60:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    .line 586
    move-object v10, v0

    sget-object v11, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v13, v5

    iget-object v13, v13, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn11:Lgnu/expr/ModuleMethod;

    move-object v14, v5

    iget-object v14, v14, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn12:Lgnu/expr/ModuleMethod;

    invoke-virtual {v10, v11, v12, v13, v14}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_d

    .line 499
    :cond_2c
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object v11, v6

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit61:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_2d

    goto :goto_17

    .line 586
    :cond_2d
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    move-object v11, v6

    sget-object v12, Lgnu/kawa/slib/pregexp;->Lit68:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_31

    .line 594
    sget-object v10, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v7, v11

    .end local v7    # "x":Ljava/lang/Object;
    :try_start_9
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    if-eq v10, v11, :cond_2e

    const/4 v10, 0x1

    :goto_18
    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    move-object v11, v5

    move/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move/from16 v11, v16

    iput-boolean v11, v10, Lgnu/kawa/slib/pregexp$frame0;->maximal$Qu:Z

    .line 595
    sget-object v10, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v5

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame0;->p:Ljava/lang/Object;

    .line 594
    sget-object v10, Lkawa/lib/lists;->cadddr:Lgnu/expr/GenericProc;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v5

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame0;->q:Ljava/lang/Object;

    move-object v10, v5

    iget-boolean v10, v10, Lgnu/kawa/slib/pregexp$frame0;->maximal$Qu:Z

    if-eqz v10, :cond_30

    move-object v10, v5

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame0;->q:Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v7, v11

    :try_start_a
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    if-eq v10, v11, :cond_2f

    const/4 v10, 0x1

    :goto_19
    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    :goto_1a
    move-object v11, v5

    move/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move/from16 v11, v16

    iput-boolean v11, v10, Lgnu/kawa/slib/pregexp$frame0;->could$Mnloop$Mninfinitely$Qu:Z

    sget-object v10, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    sget-object v11, Lkawa/lib/lists;->cddddr:Lgnu/expr/GenericProc;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v5

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    iput-object v11, v10, Lgnu/kawa/slib/pregexp$frame0;->re:Ljava/lang/Object;

    .line 599
    move-object v10, v5

    sget-object v11, Lgnu/kawa/slib/pregexp;->Lit73:Lgnu/math/IntNum;

    move-object v12, v5

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/kawa/slib/pregexp$frame0;->lambda8loupP(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_d

    .line 594
    :cond_2e
    const/4 v10, 0x0

    goto/16 :goto_18

    :cond_2f
    const/4 v10, 0x0

    goto :goto_19

    :cond_30
    move-object v10, v5

    iget-boolean v10, v10, Lgnu/kawa/slib/pregexp$frame0;->maximal$Qu:Z

    goto :goto_1a

    .line 631
    .restart local v7    # "x":Ljava/lang/Object;
    :cond_31
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    sget-object v13, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v13, v11, v12

    invoke-static {v10}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_d

    .end local v6    # "tmp":Ljava/lang/Object;
    .end local v7    # "x":Ljava/lang/Object;
    :cond_32
    sget-object v10, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 632
    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_33

    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 633
    :cond_33
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    sget-object v13, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v13, v11, v12

    invoke-static {v10}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 486
    :catch_0
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    const-string/jumbo v13, "string-ref"

    const/4 v14, 0x1

    move-object v15, v6

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    :catch_1
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    const-string/jumbo v13, "string-ref"

    const/4 v14, 0x2

    move-object v15, v6

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 490
    :catch_2
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    const-string/jumbo v13, "string-ref"

    const/4 v14, 0x1

    move-object v15, v6

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    :catch_3
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    const-string/jumbo v13, "string-ref"

    const/4 v14, 0x2

    move-object v15, v6

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 493
    :catch_4
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    const-string/jumbo v13, "string-ref"

    const/4 v14, 0x1

    move-object v15, v7

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    :catch_5
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    const-string/jumbo v13, "string-ref"

    const/4 v14, 0x2

    move-object v15, v7

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 540
    .restart local v6    # "tmp":Ljava/lang/Object;
    .local v7, "c":Ljava/lang/Object;
    .local v8, "backref":Ljava/lang/Object;
    :catch_6
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    const-string/jumbo v13, "substring"

    const/4 v14, 0x1

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    :catch_7
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    const-string/jumbo v13, "substring"

    const/4 v14, 0x2

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    :catch_8
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    const-string/jumbo v13, "substring"

    const/4 v14, 0x3

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 594
    .end local v7    # "c":Ljava/lang/Object;
    .end local v8    # "backref":Ljava/lang/Object;
    :catch_9
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    const-string/jumbo v13, "maximal?"

    const/4 v14, -0x2

    move-object v15, v7

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 597
    :catch_a
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    const-string/jumbo v13, "could-loop-infinitely?"

    const/4 v14, -0x2

    move-object v15, v7

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_0

    .line 460
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    return v0

    .line 4294967295
    .line 460
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method
