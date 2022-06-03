.class public Lgnu/kawa/slib/printf$frame11;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->stdio$ClIprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame11"
.end annotation


# instance fields
.field fc:Ljava/lang/Object;

.field format$Mnreal:Lgnu/mapping/Procedure;

.field final lambda$Fn17:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/printf$frame10;


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

    const/16 v5, 0xd

    sget-object v6, Lgnu/kawa/slib/printf;->Lit64:Lgnu/mapping/SimpleSymbol;

    const/16 v7, -0xffc

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/16 v7, -0xffd

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:401"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/printf$frame11;->lambda$Fn17:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 401
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 386
    :pswitch_0
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x1

    aget-object v6, v6, v7

    move-object v7, v2

    const/4 v8, 0x2

    aget-object v7, v7, v8

    move-object v8, v2

    const/4 v9, 0x3

    aget-object v8, v8, v9

    move-object v9, v2

    array-length v9, v9

    const/4 v10, 0x4

    add-int/lit8 v9, v9, -0x4

    move v3, v9

    move v9, v3

    new-array v9, v9, [Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v10, v3

    if-gez v10, :cond_0

    invoke-virtual/range {v4 .. v9}, Lgnu/kawa/slib/printf$frame11;->lambda30formatReal$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_0
    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move v11, v3

    move-object v12, v2

    move v13, v3

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    goto :goto_1

    .line 401
    :pswitch_1
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x1

    aget-object v6, v6, v7

    move-object v7, v2

    const/4 v8, 0x2

    aget-object v7, v7, v8

    move-object v8, v2

    array-length v8, v8

    const/4 v9, 0x3

    add-int/lit8 v8, v8, -0x3

    move v3, v8

    move v8, v3

    new-array v8, v8, [Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v3, -0x1

    move v9, v3

    if-gez v9, :cond_1

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/kawa/slib/printf$frame11;->lambda31$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move v10, v3

    move-object v11, v2

    move v12, v3

    const/4 v13, 0x3

    add-int/lit8 v12, v12, 0x3

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    goto :goto_2

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .prologue
    .line 307
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame11;
    move-object/from16 v1, p1

    .local v1, "digs":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "exp":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "strip$Mn0s":Ljava/lang/Object;
    move-object v10, v1

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v5, v11

    :try_start_0
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v11, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 309
    move-object v12, v2

    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v13, v13, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v3

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v13, :cond_0

    move-object v12, v2

    :goto_0
    invoke-static {v10, v11, v12}, Lgnu/kawa/slib/printf;->stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v4, v10

    .line 310
    .end local v1    # "digs":Ljava/lang/Object;
    .local v4, "digs":Ljava/lang/Object;
    sget-object v10, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    move-object v11, v2

    sget-object v12, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_5

    .line 311
    move-object v10, v2

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v6, v11

    :try_start_1
    check-cast v10, Ljava/lang/Number;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v10}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    .line 313
    :goto_1
    move-object v5, v10

    .line 311
    .local v5, "i0":Lgnu/math/IntNum;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x0

    sget-object v13, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    aput-object v13, v11, v12

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x1

    sget-object v13, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v14, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object v15, v2

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10}, Lkawa/lib/numbers;->max([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v6, v10

    .local v6, "i1":Ljava/lang/Object;
    move-object v10, v4

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v8, v11

    :try_start_2
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v11, v5

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v8, v12

    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v11

    move-object v12, v6

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v8, v13

    :try_start_4
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_5

    move-result v12

    invoke-static {v10, v11, v12}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v10

    move-object v7, v10

    .local v7, "idigs":Ljava/lang/CharSequence;
    move-object v10, v4

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v9, v11

    :try_start_5
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_6

    move-object v11, v6

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v9, v12

    :try_start_6
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_7

    move-result v11

    move-object v12, v4

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v9, v13

    :try_start_7
    check-cast v12, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_8

    invoke-static {v12}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v12

    invoke-static {v10, v11, v12}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v10

    move-object v8, v10

    .line 318
    .local v8, "fdigs":Ljava/lang/CharSequence;
    move-object v10, v7

    .line 319
    move-object v11, v8

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    move v9, v11

    .local v9, "x":Z
    move v11, v9

    if-eqz v11, :cond_3

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v11, v11, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v11, v12, :cond_4

    :goto_2
    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_3
    invoke-static {v10, v11}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    .line 328
    .end local v5    # "i0":Lgnu/math/IntNum;
    .end local v6    # "i1":Ljava/lang/Object;
    .end local v7    # "idigs":Ljava/lang/CharSequence;
    .end local v8    # "fdigs":Ljava/lang/CharSequence;
    .end local v9    # "x":Z
    :goto_4
    move-object v0, v10

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame11;
    return-object v0

    .line 309
    .end local v4    # "digs":Ljava/lang/Object;
    .restart local v0    # "this":Lgnu/kawa/slib/printf$frame11;
    .restart local v1    # "digs":Ljava/lang/Object;
    :cond_0
    move-object v12, v3

    goto/16 :goto_0

    .line 311
    .end local v1    # "digs":Ljava/lang/Object;
    .restart local v4    # "digs":Ljava/lang/Object;
    :cond_1
    sget-object v10, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    move-object v11, v4

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v6, v12

    :try_start_8
    check-cast v11, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_2

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v11

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    invoke-static {v10, v11}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 312
    sget-object v10, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    goto/16 :goto_1

    .line 313
    :cond_2
    sget-object v10, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    goto/16 :goto_1

    .line 319
    .restart local v5    # "i0":Lgnu/math/IntNum;
    .restart local v6    # "i1":Ljava/lang/Object;
    .restart local v7    # "idigs":Ljava/lang/CharSequence;
    .restart local v8    # "fdigs":Ljava/lang/CharSequence;
    .restart local v9    # "x":Z
    :cond_3
    move v11, v9

    if-eqz v11, :cond_4

    goto :goto_2

    :cond_4
    const-string/jumbo v11, "."

    move-object v12, v8

    invoke-static {v11, v12}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    goto :goto_3

    .end local v5    # "i0":Lgnu/math/IntNum;
    .end local v6    # "i1":Ljava/lang/Object;
    .end local v7    # "idigs":Ljava/lang/CharSequence;
    .end local v8    # "fdigs":Ljava/lang/CharSequence;
    .end local v9    # "x":Z
    :cond_5
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v10, v10, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v5, v11

    :try_start_9
    check-cast v10, Ljava/lang/Number;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    invoke-static {v10}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v10, v10, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_6

    .line 324
    const-string/jumbo v10, "0."

    :goto_5
    invoke-static {v10}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    goto :goto_4

    :cond_6
    const-string/jumbo v10, "0"

    goto :goto_5

    .line 325
    :cond_7
    move-object v10, v3

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_a

    move-object v10, v4

    const-string/jumbo v11, ""

    invoke-static {v10, v11}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    move v6, v10

    .local v6, "x":Z
    move v10, v6

    if-eqz v10, :cond_8

    const-string/jumbo v10, "0"

    invoke-static {v10}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    .end local v6    # "x":Z
    :goto_6
    move-object v5, v10

    .line 310
    .local v5, "x":Ljava/lang/Object;
    move-object v10, v5

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_b

    move-object v10, v5

    goto :goto_4

    .line 325
    .end local v5    # "x":Ljava/lang/Object;
    .restart local v6    # "x":Z
    :cond_8
    move v10, v6

    if-eqz v10, :cond_9

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_9
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    .end local v6    # "x":Z
    :cond_a
    move-object v10, v3

    goto :goto_6

    .line 310
    .restart local v5    # "x":Ljava/lang/Object;
    :cond_b
    const-string/jumbo v10, "0."

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v14, v14, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    aput-object v14, v12, v13

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x1

    sget-object v14, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 328
    sget-object v15, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    move-object/from16 v16, v2

    invoke-virtual/range {v14 .. v16}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11}, Lkawa/lib/numbers;->min([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v6, v12

    :try_start_a
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    move-result v11

    sget-object v12, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    invoke-static {v11, v12}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v11

    move-object v12, v4

    invoke-static {v10, v11, v12}, Lgnu/lists/LList;->list3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    goto/16 :goto_4

    .line 309
    .end local v4    # "digs":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Object;
    .restart local v1    # "digs":Ljava/lang/Object;
    :catch_0
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    const-string/jumbo v13, "stdio:round-string"

    const/4 v14, 0x0

    move-object v15, v5

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 311
    .end local v1    # "digs":Ljava/lang/Object;
    .restart local v4    # "digs":Ljava/lang/Object;
    :catch_1
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    const-string/jumbo v13, "zero?"

    const/4 v14, 0x1

    move-object v15, v6

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 312
    :catch_2
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    const-string/jumbo v13, "string-ref"

    const/4 v14, 0x1

    move-object v15, v6

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 315
    .local v5, "i0":Lgnu/math/IntNum;
    .local v6, "i1":Ljava/lang/Object;
    :catch_3
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    const-string/jumbo v13, "substring"

    const/4 v14, 0x1

    move-object v15, v8

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    :catch_4
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    const-string/jumbo v13, "substring"

    const/4 v14, 0x2

    move-object v15, v8

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    :catch_5
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    const-string/jumbo v13, "substring"

    const/4 v14, 0x3

    move-object v15, v8

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 316
    .restart local v7    # "idigs":Ljava/lang/CharSequence;
    :catch_6
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    const-string/jumbo v13, "substring"

    const/4 v14, 0x1

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    :catch_7
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    const-string/jumbo v13, "substring"

    const/4 v14, 0x2

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 317
    :catch_8
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    const-string/jumbo v13, "string-length"

    const/4 v14, 0x1

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 323
    .end local v5    # "i0":Lgnu/math/IntNum;
    .end local v6    # "i1":Ljava/lang/Object;
    .end local v7    # "idigs":Ljava/lang/CharSequence;
    :catch_9
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    const-string/jumbo v13, "zero?"

    const/4 v14, 0x1

    move-object v15, v5

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 328
    .local v5, "x":Ljava/lang/Object;
    :catch_a
    move-exception v10

    new-instance v11, Lgnu/mapping/WrongType;

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    const-string/jumbo v13, "make-string"

    const/4 v14, 0x1

    move-object v15, v6

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10
.end method

.method public lambda30formatReal$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .prologue
    .line 386
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/slib/printf$frame11;
    move-object/from16 v3, p1

    .local v3, "signed$Qu":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "sgn":Ljava/lang/Object;
    move-object/from16 v5, p3

    .local v5, "digs":Ljava/lang/Object;
    move-object/from16 v6, p4

    .local v6, "exp":Ljava/lang/Object;
    move-object/from16 v7, p5

    .local v7, "argsArray":[Ljava/lang/Object;
    move-object/from16 v17, v7

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v17

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v9, v18

    move-object/from16 v8, v17

    .line 387
    .local v8, "rest":Lgnu/lists/LList;
    move-object/from16 v17, v8

    invoke-static/range {v17 .. v17}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 388
    sget-object v17, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    move-object/from16 v18, v4

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v9, v19

    :try_start_0
    check-cast v18, Lgnu/text/Char;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static/range {v17 .. v18}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 389
    const-string/jumbo v17, "-"

    .line 391
    :goto_0
    sget-object v18, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object/from16 v19, v0

    sget-object v20, Lgnu/kawa/slib/printf;->Lit13:Lgnu/text/Char;

    invoke-virtual/range {v18 .. v20}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    .local v9, "x":Ljava/lang/Object;
    move-object/from16 v18, v9

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v18, v9

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 392
    :goto_1
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 330
    move-object/from16 v11, v20

    move-object/from16 v10, v19

    move-object/from16 v9, v18

    .line 331
    .end local v5    # "digs":Ljava/lang/Object;
    .end local v6    # "exp":Ljava/lang/Object;
    .local v9, "digs":Ljava/lang/Object;
    :goto_2
    move-object/from16 v18, v9

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v13, v19

    :try_start_1
    check-cast v18, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v19, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 332
    sget-object v20, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v11

    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_4

    sget-object v20, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    :goto_3
    invoke-static/range {v18 .. v20}, Lgnu/kawa/slib/printf;->stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v12, v18

    .line 331
    .end local v9    # "digs":Ljava/lang/Object;
    .local v12, "digs":Ljava/lang/Object;
    sget-object v18, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    move-object/from16 v19, v12

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move-object/from16 v14, v20

    :try_start_2
    check-cast v19, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v18

    if-eqz v18, :cond_5

    sget-object v18, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    :goto_4
    move-object/from16 v13, v18

    .local v13, "istrt":Lgnu/math/IntNum;
    move-object/from16 v18, v12

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v15, v19

    :try_start_3
    check-cast v18, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v19, 0x1

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v20, v12

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    move-object/from16 v15, v21

    :try_start_4
    check-cast v20, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static/range {v20 .. v20}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v20

    invoke-static/range {v18 .. v20}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v14, v18

    .local v14, "fdigs":Ljava/lang/CharSequence;
    move-object/from16 v18, v13

    invoke-static/range {v18 .. v18}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v18, v10

    :goto_5
    move-object/from16 v15, v18

    .local v15, "exp":Ljava/lang/Object;
    move-object/from16 v18, v12

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v16, v19

    :try_start_5
    check-cast v18, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v19, v13

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move-object/from16 v16, v20

    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->intValue()I

    move-result v21

    add-int v20, v20, v21

    invoke-static/range {v18 .. v20}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v18

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    .line 339
    move-object/from16 v20, v14

    const-string/jumbo v21, ""

    invoke-static/range {v20 .. v21}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    move/from16 v16, v20

    .local v16, "x":Z
    move/from16 v20, v16

    if-eqz v20, :cond_7

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    :goto_6
    const-string/jumbo v20, ""

    :goto_7
    move-object/from16 v21, v14

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    move-object/from16 v16, v23

    .end local v16    # "x":Z
    :try_start_7
    check-cast v22, Lgnu/text/Char;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static/range {v22 .. v22}, Lkawa/lib/rnrs/unicode;->isCharUpperCase(Lgnu/text/Char;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 342
    const-string/jumbo v22, "E"

    :goto_8
    move-object/from16 v23, v15

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    move-object/from16 v16, v24

    :try_start_8
    invoke-static/range {v23 .. v23}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 343
    const-string/jumbo v23, "-"

    :goto_9
    invoke-static/range {v19 .. v23}, Lgnu/lists/LList;->chain4(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v19

    sget-object v20, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 344
    sget-object v21, Lgnu/kawa/slib/printf;->Lit60:Lgnu/math/IntNum;

    move-object/from16 v22, v15

    sget-object v23, Lgnu/kawa/slib/printf;->Lit45:Lgnu/math/IntNum;

    invoke-virtual/range {v20 .. v23}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_b

    const-string/jumbo v20, "0"

    :goto_a
    invoke-static/range {v19 .. v20}, Lgnu/lists/LList;->chain1(Lgnu/lists/Pair;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v19

    move-object/from16 v20, v15

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    move-object/from16 v16, v21

    :try_start_9
    check-cast v20, Ljava/lang/Number;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    invoke-static/range {v20 .. v20}, Lkawa/lib/numbers;->abs(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lgnu/lists/LList;->chain1(Lgnu/lists/Pair;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v19

    .line 396
    .end local v12    # "digs":Ljava/lang/Object;
    .end local v13    # "istrt":Lgnu/math/IntNum;
    .end local v14    # "fdigs":Ljava/lang/CharSequence;
    .end local v15    # "exp":Ljava/lang/Object;
    :goto_b
    invoke-static/range {v17 .. v18}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v17

    .line 398
    :goto_c
    move-object/from16 v2, v17

    .end local v2    # "this":Lgnu/kawa/slib/printf$frame11;
    return-object v2

    .line 390
    .restart local v2    # "this":Lgnu/kawa/slib/printf$frame11;
    .restart local v5    # "digs":Ljava/lang/Object;
    .restart local v6    # "exp":Ljava/lang/Object;
    :cond_0
    move-object/from16 v17, v3

    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    const-string/jumbo v17, "+"

    goto/16 :goto_0

    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    move-object/from16 v17, v0

    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_2

    const-string/jumbo v17, " "

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v17, ""

    goto/16 :goto_0

    .line 391
    .local v9, "x":Ljava/lang/Object;
    :cond_3
    sget-object v18, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object/from16 v19, v0

    sget-object v20, Lgnu/kawa/slib/printf;->Lit54:Lgnu/text/Char;

    invoke-virtual/range {v18 .. v20}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_c

    goto/16 :goto_1

    .line 332
    .end local v5    # "digs":Ljava/lang/Object;
    .end local v6    # "exp":Ljava/lang/Object;
    .local v9, "digs":Ljava/lang/Object;
    :cond_4
    move-object/from16 v20, v11

    goto/16 :goto_3

    .line 331
    .end local v9    # "digs":Ljava/lang/Object;
    .restart local v12    # "digs":Ljava/lang/Object;
    :cond_5
    sget-object v18, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    goto/16 :goto_4

    .restart local v13    # "istrt":Lgnu/math/IntNum;
    .restart local v14    # "fdigs":Ljava/lang/CharSequence;
    :cond_6
    sget-object v18, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v19, v10

    sget-object v20, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual/range {v18 .. v20}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    goto/16 :goto_5

    .line 339
    .restart local v15    # "exp":Ljava/lang/Object;
    .restart local v16    # "x":Z
    :cond_7
    move/from16 v20, v16

    if-eqz v20, :cond_8

    goto/16 :goto_6

    :cond_8
    const-string/jumbo v20, "."

    goto/16 :goto_7

    .line 342
    .end local v16    # "x":Z
    :cond_9
    const-string/jumbo v22, "e"

    goto/16 :goto_8

    .line 343
    :cond_a
    const-string/jumbo v23, "+"

    goto/16 :goto_9

    .line 344
    :cond_b
    const-string/jumbo v20, ""

    goto/16 :goto_a

    .end local v12    # "digs":Ljava/lang/Object;
    .end local v13    # "istrt":Lgnu/math/IntNum;
    .end local v14    # "fdigs":Ljava/lang/CharSequence;
    .end local v15    # "exp":Ljava/lang/Object;
    .restart local v5    # "digs":Ljava/lang/Object;
    .restart local v6    # "exp":Ljava/lang/Object;
    .local v9, "x":Ljava/lang/Object;
    :cond_c
    sget-object v18, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 391
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object/from16 v19, v0

    sget-object v20, Lgnu/kawa/slib/printf;->Lit25:Lgnu/text/Char;

    invoke-virtual/range {v18 .. v20}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    move-object/from16 v18, v9

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_d

    move-object/from16 v18, v9

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 393
    :goto_d
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v21}, Lgnu/kawa/slib/printf$frame11;->lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    goto/16 :goto_b

    .line 391
    :cond_d
    sget-object v18, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object/from16 v19, v0

    sget-object v20, Lgnu/kawa/slib/printf;->Lit26:Lgnu/text/Char;

    invoke-virtual/range {v18 .. v20}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_e

    goto :goto_d

    .line 393
    :cond_e
    sget-object v18, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 391
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object/from16 v19, v0

    sget-object v20, Lgnu/kawa/slib/printf;->Lit55:Lgnu/text/Char;

    invoke-virtual/range {v18 .. v20}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    move-object/from16 v18, v9

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_f

    move-object/from16 v18, v9

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_14

    .line 394
    :goto_e
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 346
    move-object/from16 v10, v19

    move-object/from16 v9, v18

    .end local v5    # "digs":Ljava/lang/Object;
    .end local v6    # "exp":Ljava/lang/Object;
    .local v9, "digs":Ljava/lang/Object;
    :goto_f
    move-object/from16 v18, v2

    move-object/from16 v11, v18

    .line 347
    .local v11, "closureEnv":Lgnu/kawa/slib/printf$frame11;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v13, v19

    :try_start_a
    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_10

    const/16 v18, 0x1

    :goto_10
    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    const/16 v19, 0x1

    and-int/lit8 v18, v18, 0x1

    move/from16 v12, v18

    .line 348
    .local v12, "strip$Mn0s":Z
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object/from16 v18, v0

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v18, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 349
    sget-object v19, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v20, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v10

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_12

    .line 350
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object/from16 v18, v0

    sget-object v19, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v21, v10

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    .line 351
    move-object/from16 v18, v2

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move/from16 v21, v12

    if-eqz v21, :cond_11

    sget-object v21, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_11
    invoke-virtual/range {v18 .. v21}, Lgnu/kawa/slib/printf$frame11;->lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 354
    goto/16 :goto_b

    .line 391
    .end local v11    # "closureEnv":Lgnu/kawa/slib/printf$frame11;
    .end local v12    # "strip$Mn0s":Z
    .restart local v5    # "digs":Ljava/lang/Object;
    .restart local v6    # "exp":Ljava/lang/Object;
    .local v9, "x":Ljava/lang/Object;
    :cond_f
    sget-object v18, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object/from16 v19, v0

    sget-object v20, Lgnu/kawa/slib/printf;->Lit56:Lgnu/text/Char;

    invoke-virtual/range {v18 .. v20}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_14

    goto/16 :goto_e

    .line 347
    .end local v5    # "digs":Ljava/lang/Object;
    .end local v6    # "exp":Ljava/lang/Object;
    .local v9, "digs":Ljava/lang/Object;
    .restart local v11    # "closureEnv":Lgnu/kawa/slib/printf$frame11;
    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_10

    .line 351
    .restart local v12    # "strip$Mn0s":Z
    :cond_11
    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_11

    .line 353
    :cond_12
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object/from16 v18, v0

    sget-object v19, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    .line 354
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move/from16 v20, v12

    if-eqz v20, :cond_13

    sget-object v20, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_12
    move-object/from16 v11, v20

    move-object/from16 v10, v19

    .local v10, "exp":Ljava/lang/Object;
    move-object/from16 v9, v18

    goto/16 :goto_2

    .end local v10    # "exp":Ljava/lang/Object;
    :cond_13
    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_12

    .end local v11    # "closureEnv":Lgnu/kawa/slib/printf$frame11;
    .end local v12    # "strip$Mn0s":Z
    .restart local v5    # "digs":Ljava/lang/Object;
    .restart local v6    # "exp":Ljava/lang/Object;
    .local v9, "x":Ljava/lang/Object;
    :cond_14
    sget-object v18, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 391
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object/from16 v19, v0

    sget-object v20, Lgnu/kawa/slib/printf;->Lit57:Lgnu/text/Char;

    invoke-virtual/range {v18 .. v20}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_19

    .line 395
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const-string/jumbo v20, ""

    .line 355
    move-object/from16 v11, v20

    move-object/from16 v10, v19

    move-object/from16 v9, v18

    .end local v5    # "digs":Ljava/lang/Object;
    .end local v9    # "x":Ljava/lang/Object;
    :goto_13
    move-object/from16 v18, v2

    move-object/from16 v12, v18

    .line 356
    .local v12, "closureEnv":Lgnu/kawa/slib/printf$frame11;
    move-object/from16 v18, v10

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v15, v19

    :try_start_b
    invoke-static/range {v18 .. v18}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 360
    sget-object v18, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    sget-object v19, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v20, v10

    sget-object v21, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    invoke-virtual/range {v18 .. v20}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 361
    :goto_14
    move-object/from16 v14, v18

    .line 362
    .local v14, "i":Ljava/lang/Object;
    sget-object v18, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    sget-object v19, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    sget-object v20, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object/from16 v21, v14

    .line 358
    sget-object v22, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    invoke-virtual/range {v20 .. v22}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 363
    sget-object v21, Lgnu/kawa/slib/printf;->Lit62:Lgnu/lists/FVector;

    invoke-static/range {v21 .. v21}, Lkawa/lib/vectors;->vectorLength(Lgnu/lists/FVector;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v18 .. v21}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v16, v19

    :try_start_c
    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_c

    move-result v18

    move/from16 v15, v18

    .line 362
    .local v15, "x":Z
    move/from16 v18, v15

    if-eqz v18, :cond_16

    move-object/from16 v18, v14

    :goto_15
    move-object/from16 v13, v18

    .line 365
    .local v13, "uind":Ljava/lang/Object;
    move-object/from16 v18, v13

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_18

    .line 366
    sget-object v18, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v19, v10

    sget-object v20, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    sget-object v21, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    move-object/from16 v22, v13

    invoke-virtual/range {v20 .. v22}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    .line 367
    .end local v6    # "exp":Ljava/lang/Object;
    .restart local v10    # "exp":Ljava/lang/Object;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const/16 v21, 0x0

    sget-object v22, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    aput-object v22, v20, v21

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const/16 v21, 0x1

    sget-object v22, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v24, v10

    invoke-virtual/range {v22 .. v24}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v19}, Lkawa/lib/numbers;->max([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    .line 368
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const/16 v20, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    sget-object v24, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v24}, Lgnu/kawa/slib/printf$frame11;->lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const/16 v20, 0x1

    move-object/from16 v21, v11

    sget-object v22, Lgnu/kawa/slib/printf;->Lit62:Lgnu/lists/FVector;

    sget-object v23, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 371
    move-object/from16 v24, v13

    .line 358
    sget-object v25, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    invoke-virtual/range {v23 .. v25}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    move-object/from16 v14, v24

    .end local v14    # "i":Ljava/lang/Object;
    :try_start_d
    check-cast v23, Ljava/lang/Number;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Number;->intValue()I
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_d

    move-result v23

    invoke-static/range {v22 .. v23}, Lkawa/lib/vectors;->vectorRef(Lgnu/lists/FVector;I)Ljava/lang/Object;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v18}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 373
    goto/16 :goto_b

    .line 361
    .end local v10    # "exp":Ljava/lang/Object;
    .end local v13    # "uind":Ljava/lang/Object;
    .end local v15    # "x":Z
    .restart local v6    # "exp":Ljava/lang/Object;
    :cond_15
    sget-object v18, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    sget-object v19, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v20, v10

    sget-object v21, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    invoke-virtual/range {v18 .. v20}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    goto/16 :goto_14

    .line 362
    .restart local v14    # "i":Ljava/lang/Object;
    .restart local v15    # "x":Z
    :cond_16
    move/from16 v18, v15

    if-eqz v18, :cond_17

    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_15

    :cond_17
    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_15

    .line 373
    .restart local v13    # "uind":Ljava/lang/Object;
    :cond_18
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    .end local v6    # "exp":Ljava/lang/Object;
    .restart local v10    # "exp":Ljava/lang/Object;
    move-object/from16 v9, v18

    .local v9, "digs":Ljava/lang/Object;
    goto/16 :goto_f

    .end local v10    # "exp":Ljava/lang/Object;
    .end local v12    # "closureEnv":Lgnu/kawa/slib/printf$frame11;
    .end local v13    # "uind":Ljava/lang/Object;
    .end local v14    # "i":Ljava/lang/Object;
    .end local v15    # "x":Z
    .restart local v5    # "digs":Ljava/lang/Object;
    .restart local v6    # "exp":Ljava/lang/Object;
    .local v9, "x":Ljava/lang/Object;
    :cond_19
    sget-object v18, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 391
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object/from16 v19, v0

    sget-object v20, Lgnu/kawa/slib/printf;->Lit58:Lgnu/text/Char;

    invoke-virtual/range {v18 .. v20}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1a

    .line 396
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const-string/jumbo v20, " "

    move-object/from16 v11, v20

    move-object/from16 v10, v19

    move-object/from16 v9, v18

    goto/16 :goto_13

    :cond_1a
    sget-object v18, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto/16 :goto_b

    .line 397
    .end local v9    # "x":Ljava/lang/Object;
    :cond_1b
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    const/16 v19, 0x0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v20 .. v25}, Lgnu/kawa/slib/printf$frame11;->lambda30formatReal$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    const/16 v19, 0x1

    sget-object v20, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 398
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    move-object/from16 v21, v0

    sget-object v22, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v23, v8

    invoke-virtual/range {v20 .. v23}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    const/16 v19, 0x2

    sget-object v20, Lgnu/kawa/slib/printf;->Lit63:Lgnu/lists/PairWithPosition;

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v17}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    goto/16 :goto_c

    .line 389
    :catch_0
    move-exception v17

    new-instance v18, Lgnu/mapping/WrongType;

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v26

    move-object/from16 v19, v27

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v18, v27

    move-object/from16 v19, v26

    const-string/jumbo v20, "char=?"

    const/16 v21, 0x2

    move-object/from16 v22, v9

    invoke-direct/range {v18 .. v22}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v17

    .line 332
    .end local v5    # "digs":Ljava/lang/Object;
    .end local v6    # "exp":Ljava/lang/Object;
    .local v9, "digs":Ljava/lang/Object;
    :catch_1
    move-exception v17

    new-instance v18, Lgnu/mapping/WrongType;

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v26

    move-object/from16 v19, v27

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v18, v27

    move-object/from16 v19, v26

    const-string/jumbo v20, "stdio:round-string"

    const/16 v21, 0x0

    move-object/from16 v22, v13

    invoke-direct/range {v18 .. v22}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v17

    .line 333
    .end local v9    # "digs":Ljava/lang/Object;
    .local v12, "digs":Ljava/lang/Object;
    :catch_2
    move-exception v17

    new-instance v18, Lgnu/mapping/WrongType;

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v26

    move-object/from16 v19, v27

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v18, v27

    move-object/from16 v19, v26

    const-string/jumbo v20, "string-ref"

    const/16 v21, 0x1

    move-object/from16 v22, v14

    invoke-direct/range {v18 .. v22}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v17

    .line 335
    .local v13, "istrt":Lgnu/math/IntNum;
    :catch_3
    move-exception v17

    new-instance v18, Lgnu/mapping/WrongType;

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v26

    move-object/from16 v19, v27

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v18, v27

    move-object/from16 v19, v26

    const-string/jumbo v20, "substring"

    const/16 v21, 0x1

    move-object/from16 v22, v15

    invoke-direct/range {v18 .. v22}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v17

    :catch_4
    move-exception v17

    new-instance v18, Lgnu/mapping/WrongType;

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v26

    move-object/from16 v19, v27

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v18, v27

    move-object/from16 v19, v26

    const-string/jumbo v20, "string-length"

    const/16 v21, 0x1

    move-object/from16 v22, v15

    invoke-direct/range {v18 .. v22}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v17

    .line 338
    .local v14, "fdigs":Ljava/lang/CharSequence;
    .local v15, "exp":Ljava/lang/Object;
    :catch_5
    move-exception v17

    new-instance v18, Lgnu/mapping/WrongType;

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v26

    move-object/from16 v19, v27

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v18, v27

    move-object/from16 v19, v26

    const-string/jumbo v20, "substring"

    const/16 v21, 0x1

    move-object/from16 v22, v16

    invoke-direct/range {v18 .. v22}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v17

    :catch_6
    move-exception v17

    new-instance v18, Lgnu/mapping/WrongType;

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v26

    move-object/from16 v19, v27

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v18, v27

    move-object/from16 v19, v26

    const-string/jumbo v20, "substring"

    const/16 v21, 0x2

    move-object/from16 v22, v16

    invoke-direct/range {v18 .. v22}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v17

    .line 342
    :catch_7
    move-exception v17

    new-instance v18, Lgnu/mapping/WrongType;

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v26

    move-object/from16 v19, v27

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v18, v27

    move-object/from16 v19, v26

    const-string/jumbo v20, "char-upper-case?"

    const/16 v21, 0x1

    move-object/from16 v22, v16

    invoke-direct/range {v18 .. v22}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v17

    .line 343
    :catch_8
    move-exception v17

    new-instance v18, Lgnu/mapping/WrongType;

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v26

    move-object/from16 v19, v27

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v18, v27

    move-object/from16 v19, v26

    const-string/jumbo v20, "negative?"

    const/16 v21, 0x1

    move-object/from16 v22, v16

    invoke-direct/range {v18 .. v22}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v17

    .line 345
    :catch_9
    move-exception v17

    new-instance v18, Lgnu/mapping/WrongType;

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v26

    move-object/from16 v19, v27

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v18, v27

    move-object/from16 v19, v26

    const-string/jumbo v20, "abs"

    const/16 v21, 0x1

    move-object/from16 v22, v16

    invoke-direct/range {v18 .. v22}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v17

    .line 347
    .end local v12    # "digs":Ljava/lang/Object;
    .end local v13    # "istrt":Lgnu/math/IntNum;
    .end local v14    # "fdigs":Ljava/lang/CharSequence;
    .end local v15    # "exp":Ljava/lang/Object;
    .restart local v9    # "digs":Ljava/lang/Object;
    .restart local v11    # "closureEnv":Lgnu/kawa/slib/printf$frame11;
    :catch_a
    move-exception v17

    new-instance v18, Lgnu/mapping/WrongType;

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v26

    move-object/from16 v19, v27

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v18, v27

    move-object/from16 v19, v26

    const-string/jumbo v20, "strip-0s"

    const/16 v21, -0x2

    move-object/from16 v22, v13

    invoke-direct/range {v18 .. v22}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v17

    .line 359
    .end local v9    # "digs":Ljava/lang/Object;
    .end local v11    # "closureEnv":Lgnu/kawa/slib/printf$frame11;
    .restart local v6    # "exp":Ljava/lang/Object;
    .local v12, "closureEnv":Lgnu/kawa/slib/printf$frame11;
    :catch_b
    move-exception v17

    new-instance v18, Lgnu/mapping/WrongType;

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v26

    move-object/from16 v19, v27

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v18, v27

    move-object/from16 v19, v26

    const-string/jumbo v20, "negative?"

    const/16 v21, 0x1

    move-object/from16 v22, v15

    invoke-direct/range {v18 .. v22}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v17

    .line 363
    .local v14, "i":Ljava/lang/Object;
    :catch_c
    move-exception v17

    new-instance v18, Lgnu/mapping/WrongType;

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v26

    move-object/from16 v19, v27

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v18, v27

    move-object/from16 v19, v26

    const-string/jumbo v20, "x"

    const/16 v21, -0x2

    move-object/from16 v22, v16

    invoke-direct/range {v18 .. v22}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v17

    .line 371
    .end local v6    # "exp":Ljava/lang/Object;
    .end local v14    # "i":Ljava/lang/Object;
    .restart local v10    # "exp":Ljava/lang/Object;
    .local v13, "uind":Ljava/lang/Object;
    .local v15, "x":Z
    :catch_d
    move-exception v17

    new-instance v18, Lgnu/mapping/WrongType;

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v26

    move-object/from16 v19, v27

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v18, v27

    move-object/from16 v19, v26

    const-string/jumbo v20, "vector-ref"

    const/16 v21, 0x2

    move-object/from16 v22, v14

    invoke-direct/range {v18 .. v22}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v17
.end method

.method lambda31$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame11;
    move-object/from16 v1, p1

    .local v1, "sgn":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "digs":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "expon":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "argsArray":[Ljava/lang/Object;
    move-object v7, v4

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v7

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v6, v8

    move-object v5, v7

    .line 402
    .local v5, "imag":Lgnu/lists/LList;
    sget-object v7, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame10;->pad:Lgnu/mapping/Procedure;

    .line 403
    sget-object v9, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    .line 404
    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v13, v13, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    .line 405
    move-object v13, v1

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    move-object v13, v2

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x4

    move-object v13, v3

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x5

    move-object v13, v5

    aput-object v13, v11, v12

    invoke-virtual {v9, v10}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame11;
    return-object v0
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 386
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 401
    :goto_0
    return v0

    :pswitch_0
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 386
    :pswitch_1
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
