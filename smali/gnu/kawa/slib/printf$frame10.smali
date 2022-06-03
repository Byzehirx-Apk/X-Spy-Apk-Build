.class public Lgnu/kawa/slib/printf$frame10;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->stdio$ClIprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame10"
.end annotation


# instance fields
.field alternate$Mnform:Ljava/lang/Object;

.field args:Ljava/lang/Object;

.field blank:Ljava/lang/Object;

.field final lambda$Fn13:Lgnu/expr/ModuleMethod;

.field final lambda$Fn14:Lgnu/expr/ModuleMethod;

.field final lambda$Fn15:Lgnu/expr/ModuleMethod;

.field final lambda$Fn16:Lgnu/expr/ModuleMethod;

.field leading$Mn0s:Ljava/lang/Object;

.field left$Mnadjust:Ljava/lang/Object;

.field os:Ljava/lang/Object;

.field pad:Lgnu/mapping/Procedure;

.field pr:Ljava/lang/Object;

.field precision:Ljava/lang/Object;

.field signed:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/printf$frame9;

.field width:Ljava/lang/Object;


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

    sget-object v6, Lgnu/kawa/slib/printf;->Lit67:Lgnu/mapping/SimpleSymbol;

    const/16 v7, -0xfff

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/printf$frame10;->pad:Lgnu/mapping/Procedure;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:472"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/printf$frame10;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:476"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/printf$frame10;->lambda$Fn14:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x12

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:484"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/printf$frame10;->lambda$Fn15:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x13

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:494"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/printf$frame10;->lambda$Fn16:Lgnu/expr/ModuleMethod;

    return-void
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

    packed-switch v3, :pswitch_data_0

    .line 494
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 472
    :pswitch_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/printf$frame10;->lambda25(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 476
    :pswitch_1
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/printf$frame10;->lambda26(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 484
    :pswitch_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/printf$frame10;->lambda27(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 494
    :pswitch_3
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/printf$frame10;->lambda28(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    move-object v0, v3

    goto :goto_0

    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_0

    .line 256
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v6, v2

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    move v6, v3

    new-array v6, v6, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v7, v3

    if-gez v7, :cond_1

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/printf$frame10;->lambda23pad$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_1
    return-object v0

    .line 4294967295
    .line 256
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    :cond_1
    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v3

    move-object v9, v2

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-object v9, v9, v10

    aput-object v9, v7, v8

    goto :goto_0
.end method

.method public lambda22readFormatNumber()Ljava/lang/Object;
    .locals 14

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame10;
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 245
    sget-object v6, Lgnu/kawa/slib/printf;->Lit66:Lgnu/text/Char;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_0

    .line 246
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    invoke-virtual {v5}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    move-result-object v5

    .line 247
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 248
    .local v1, "ans":Ljava/lang/Object;
    move-object v5, v0

    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v5, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    .line 249
    move-object v5, v1

    .line 251
    .end local v1    # "ans":Ljava/lang/Object;
    :goto_0
    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame10;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/printf$frame10;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    move-object v2, v6

    move-object v1, v5

    .local v1, "c":Ljava/lang/Object;
    :goto_1
    move-object v5, v0

    move-object v3, v5

    .local v3, "closureEnv":Lgnu/kawa/slib/printf$frame10;
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v4, v6

    :try_start_0
    check-cast v5, Lgnu/text/Char;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v5}, Lkawa/lib/rnrs/unicode;->isCharNumeric(Lgnu/text/Char;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 255
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    invoke-virtual {v5}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    .line 252
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    move-object v8, v2

    sget-object v9, Lgnu/kawa/slib/printf;->Lit45:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 253
    move-object v8, v1

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    instance-of v9, v9, [Ljava/lang/Object;

    if-eqz v9, :cond_1

    check-cast v8, [Ljava/lang/Object;

    :goto_2
    invoke-static {v8}, Lkawa/lib/strings;->$make$string$([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Lkawa/lib/numbers;->string$To$Number(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .local v2, "accum":Ljava/lang/Object;
    move-object v1, v5

    goto :goto_1

    .end local v2    # "accum":Ljava/lang/Object;
    :cond_1
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v12, v8

    move-object v13, v9

    move-object v8, v13

    move-object v9, v12

    move-object v10, v13

    move-object v12, v9

    move-object v13, v10

    move-object v9, v13

    move-object v10, v12

    const/4 v11, 0x0

    move-object v12, v10

    move v13, v11

    move v10, v13

    move-object v11, v12

    aput-object v11, v9, v10

    goto :goto_2

    .line 251
    :cond_2
    move-object v5, v2

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v12, v5

    move-object v13, v6

    move-object v5, v13

    move-object v6, v12

    move-object v7, v13

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    const-string/jumbo v8, "char-numeric?"

    const/4 v9, 0x1

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public lambda23pad$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .prologue
    .line 256
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame10;
    move-object/from16 v1, p1

    .local v1, "pre":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "argsArray":[Ljava/lang/Object;
    move-object v7, v2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v7

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v4, v8

    move-object v3, v7

    .line 257
    .local v3, "strs":Lgnu/lists/LList;
    move-object v7, v1

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v4, v8

    :try_start_0
    check-cast v7, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v7}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v3

    move-object v5, v8

    move-object v4, v7

    .line 259
    :goto_0
    sget-object v7, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_0

    move-object v7, v1

    move-object v8, v3

    invoke-static {v7, v8}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    .line 274
    :goto_1
    move-object v0, v7

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame10;
    return-object v0

    .line 259
    .restart local v0    # "this":Lgnu/kawa/slib/printf$frame10;
    :cond_0
    move-object v7, v5

    invoke-static {v7}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 261
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_1

    .line 262
    move-object v7, v1

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x1

    sget-object v11, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 265
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object v13, v4

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v6, v12

    :try_start_1
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    sget-object v12, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    invoke-static {v11, v12}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    .line 271
    :goto_2
    goto :goto_1

    .line 265
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_2

    .line 267
    move-object v7, v1

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 268
    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v6, v9

    :try_start_2
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    sget-object v9, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    invoke-static {v8, v9}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v9, v3

    invoke-static {v8, v9}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    goto :goto_2

    .line 271
    :cond_2
    sget-object v7, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v6, v8

    :try_start_3
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v7

    sget-object v8, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    invoke-static {v7, v8}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v8, v1

    move-object v9, v3

    invoke-static {v8, v9}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    goto :goto_2

    .line 274
    :cond_3
    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v8, v4

    sget-object v9, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v10, v5

    invoke-virtual {v9, v10}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v6, v10

    :try_start_4
    check-cast v9, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {v9}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v9, v5

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .local v5, "ss":Ljava/lang/Object;
    move-object v4, v7

    .local v4, "len":Ljava/lang/Object;
    goto/16 :goto_0

    .line 257
    .end local v4    # "len":Ljava/lang/Object;
    .end local v5    # "ss":Ljava/lang/Object;
    :catch_0
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v14, v7

    move-object v15, v8

    move-object v7, v15

    move-object v8, v14

    move-object v9, v15

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    const-string/jumbo v10, "string-length"

    const/4 v11, 0x1

    move-object v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 265
    :catch_1
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v14, v7

    move-object v15, v8

    move-object v7, v15

    move-object v8, v14

    move-object v9, v15

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    const-string/jumbo v10, "make-string"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 268
    :catch_2
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v14, v7

    move-object v15, v8

    move-object v7, v15

    move-object v8, v14

    move-object v9, v15

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    const-string/jumbo v10, "make-string"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 271
    :catch_3
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v14, v7

    move-object v15, v8

    move-object v7, v15

    move-object v8, v14

    move-object v9, v15

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    const-string/jumbo v10, "make-string"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 274
    :catch_4
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v14, v7

    move-object v15, v8

    move-object v7, v15

    move-object v8, v14

    move-object v9, v15

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    const-string/jumbo v10, "string-length"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 276
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame10;
    move-object/from16 v1, p1

    .local v1, "s":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "radix":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "fixcase":Ljava/lang/Object;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v4, v7

    :try_start_0
    invoke-static {v6}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    invoke-static {v6}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 278
    move-object v6, v0

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v7, v6, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    .line 279
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v5, v7

    :try_start_1
    check-cast v6, Ljava/lang/Number;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v6}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v6

    move v4, v6

    .local v4, "x":Z
    move v6, v4

    if-eqz v6, :cond_2

    sget-object v6, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 280
    sget-object v7, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_0

    .line 281
    :goto_0
    const-string/jumbo v6, ""

    move-object v1, v6

    .line 282
    .end local v1    # "s":Ljava/lang/Object;
    .end local v4    # "x":Z
    :cond_0
    move-object v6, v1

    invoke-static {v6}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v1

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v4, v7

    :try_start_2
    check-cast v6, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {v6}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v6

    .line 286
    :goto_1
    move-object v1, v6

    .restart local v1    # "s":Ljava/lang/Object;
    move-object v6, v3

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_1

    .line 287
    sget-object v6, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    .line 288
    :cond_1
    const-string/jumbo v6, ""

    move-object v7, v1

    invoke-static {v6, v7}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, ""

    .line 299
    .end local v1    # "s":Ljava/lang/Object;
    :goto_2
    move-object v4, v6

    .line 300
    .local v4, "pre":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v4

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    sget-object v11, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 301
    move-object v12, v1

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v5, v13

    :try_start_3
    check-cast v12, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_9

    invoke-static {v12}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_10

    .line 302
    sget-object v11, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 303
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object v13, v1

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    move-object v5, v14

    :try_start_4
    check-cast v13, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_a

    invoke-static {v13}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v5, v12

    :try_start_5
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_b

    move-result v11

    sget-object v12, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    invoke-static {v11, v12}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 301
    :goto_3
    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lgnu/kawa/slib/printf$frame10;->lambda23pad$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame10;
    return-object v0

    .line 279
    .restart local v0    # "this":Lgnu/kawa/slib/printf$frame10;
    .restart local v1    # "s":Ljava/lang/Object;
    .local v4, "x":Z
    :cond_2
    move v6, v4

    if-eqz v6, :cond_0

    goto/16 :goto_0

    .line 282
    .end local v1    # "s":Ljava/lang/Object;
    .end local v4    # "x":Z
    :cond_3
    move-object v6, v1

    invoke-static {v6}, Lkawa/lib/numbers;->isNumber(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 283
    move-object v6, v1

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v4, v7

    :try_start_6
    check-cast v6, Ljava/lang/Number;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v7, v2

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v4, v8

    :try_start_7
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_4

    move-result v7

    invoke-static {v6, v7}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;I)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_1

    .line 284
    :cond_4
    move-object v6, v1

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v5, v7

    :try_start_8
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_5

    if-eq v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_4
    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    move v4, v6

    .restart local v4    # "x":Z
    move v6, v4

    if-eqz v6, :cond_6

    move v6, v4

    if-eqz v6, :cond_7

    :goto_5
    const-string/jumbo v6, "0"

    goto/16 :goto_1

    .end local v4    # "x":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .restart local v4    # "x":Z
    :cond_6
    move-object v6, v1

    invoke-static {v6}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    move-object v6, v1

    invoke-static {v6}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 285
    move-object v6, v1

    goto/16 :goto_1

    .line 286
    :cond_8
    const-string/jumbo v6, "1"

    goto/16 :goto_1

    .line 288
    .end local v4    # "x":Z
    .restart local v1    # "s":Ljava/lang/Object;
    :cond_9
    sget-object v6, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 289
    sget-object v7, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    move-object v8, v1

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v5, v9

    :try_start_9
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_6

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v8

    invoke-static {v8}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_a

    .line 290
    move-object v6, v1

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v5, v7

    :try_start_a
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_7

    const/4 v7, 0x1

    move-object v8, v1

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v5, v9

    :try_start_b
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_8

    invoke-static {v8}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v1, v6

    .line 291
    .local v1, "s":Ljava/lang/CharSequence;
    const-string/jumbo v6, "-"

    goto/16 :goto_2

    .local v1, "s":Ljava/lang/Object;
    :cond_a
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_b

    .line 292
    const-string/jumbo v6, "+"

    goto/16 :goto_2

    :cond_b
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_c

    .line 293
    const-string/jumbo v6, " "

    goto/16 :goto_2

    :cond_c
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_f

    .line 295
    sget-object v6, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object v7, v2

    sget-object v8, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_d

    .line 296
    const-string/jumbo v6, "0"

    .line 298
    :goto_6
    goto/16 :goto_2

    .line 296
    :cond_d
    sget-object v6, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 295
    move-object v7, v2

    sget-object v8, Lgnu/kawa/slib/printf;->Lit50:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_e

    .line 297
    const-string/jumbo v6, "0x"

    goto :goto_6

    .line 298
    :cond_e
    const-string/jumbo v6, ""

    goto :goto_6

    .line 299
    :cond_f
    const-string/jumbo v6, ""

    goto/16 :goto_2

    .line 301
    .end local v1    # "s":Ljava/lang/Object;
    .local v4, "pre":Ljava/lang/String;
    :cond_10
    const-string/jumbo v11, ""

    goto/16 :goto_3

    .line 277
    .end local v4    # "pre":Ljava/lang/String;
    .restart local v1    # "s":Ljava/lang/Object;
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move-object v8, v15

    const-string/jumbo v9, "negative?"

    const/4 v10, 0x1

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 279
    :catch_1
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move-object v8, v15

    const-string/jumbo v9, "zero?"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 282
    .end local v1    # "s":Ljava/lang/Object;
    :catch_2
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move-object v8, v15

    const-string/jumbo v9, "symbol->string"

    const/4 v10, 0x1

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 283
    :catch_3
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move-object v8, v15

    const-string/jumbo v9, "number->string"

    const/4 v10, 0x1

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_4
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move-object v8, v15

    const-string/jumbo v9, "number->string"

    const/4 v10, 0x2

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 284
    :catch_5
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move-object v8, v15

    const-string/jumbo v9, "x"

    const/4 v10, -0x2

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 289
    .restart local v1    # "s":Ljava/lang/Object;
    :catch_6
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move-object v8, v15

    const-string/jumbo v9, "string-ref"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 290
    :catch_7
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move-object v8, v15

    const-string/jumbo v9, "substring"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_8
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move-object v8, v15

    const-string/jumbo v9, "string-length"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 301
    .end local v1    # "s":Ljava/lang/Object;
    .restart local v4    # "pre":Ljava/lang/String;
    :catch_9
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move-object v8, v15

    const-string/jumbo v9, "string-length"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 303
    :catch_a
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move-object v8, v15

    const-string/jumbo v9, "string-length"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_b
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move-object v8, v15

    const-string/jumbo v9, "make-string"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method lambda25(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame10;
    move-object v1, p1

    .local v1, "s":Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    move-object v6, v1

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v2, v7

    :try_start_0
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v6}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    .line 474
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame10;
    return-object v0

    .line 473
    .restart local v0    # "this":Lgnu/kawa/slib/printf$frame10;
    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "string-length"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method lambda26(Ljava/lang/Object;)Z
    .locals 13

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame10;
    move-object v1, p1

    .local v1, "s":Ljava/lang/Object;
    sget-object v4, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    move-object v2, v4

    .local v2, "sl":Lgnu/expr/Special;
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    move-object v6, v1

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v3, v7

    :try_start_0
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v6}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 478
    .local v2, "sl":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v2

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v3, v6

    :try_start_1
    invoke-static {v5}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    invoke-static {v5}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 479
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v3, v8

    :try_start_2
    check-cast v7, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    move-object v3, v10

    :try_start_3
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v9

    invoke-static {v7, v8, v9}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v5, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    .line 480
    :goto_0
    iput-object v5, v4, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    .line 481
    move-object v4, v2

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v3, v5

    :try_start_4
    invoke-static {v4}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v4

    invoke-static {v4}, Lkawa/lib/numbers;->isPositive(Lgnu/math/RealNum;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame10;
    return v0

    .line 480
    .restart local v0    # "this":Lgnu/kawa/slib/printf$frame10;
    :cond_0
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v2

    goto :goto_0

    .line 477
    .local v2, "sl":Lgnu/expr/Special;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "string-length"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 478
    .local v2, "sl":Ljava/lang/Object;
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "negative?"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 479
    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "substring"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "substring"

    const/4 v8, 0x3

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 481
    :catch_4
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "positive?"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method lambda27(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 11

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame10;
    move-object v1, p1

    .local v1, "s":Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    move-object v6, v1

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v2, v7

    :try_start_0
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v6}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_0

    .line 486
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 491
    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame10;
    return-object v0

    .line 486
    .restart local v0    # "this":Lgnu/kawa/slib/printf$frame10;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v2, v4

    :try_start_1
    invoke-static {v3}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    invoke-static {v3}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 488
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 489
    move-object v3, v0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v4, v3, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    .line 490
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 491
    :cond_1
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v4}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v4

    iput-object v4, v3, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    goto :goto_0

    .line 485
    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "string-length"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 487
    :catch_1
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "negative?"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method lambda28(Ljava/lang/Object;)Z
    .locals 14

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame10;
    move-object v1, p1

    .local v1, "s":Ljava/lang/Object;
    sget-object v4, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    move-object v2, v4

    .local v2, "sl":Lgnu/expr/Special;
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    move-object v6, v1

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v3, v7

    :try_start_0
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v6}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .local v2, "sl":Ljava/lang/Object;
    move-object v4, v2

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v3, v5

    :try_start_1
    invoke-static {v4}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    invoke-static {v4}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 497
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    aput-object v8, v6, v7

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x1

    move-object v8, v1

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v3, v9

    :try_start_2
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    move-object v3, v11

    :try_start_3
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v10

    invoke-static {v8, v9, v10}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v5

    iput-object v5, v4, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    .line 500
    :goto_0
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    .line 501
    move-object v4, v2

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v3, v5

    :try_start_4
    invoke-static {v4}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v4

    invoke-static {v4}, Lkawa/lib/numbers;->isPositive(Lgnu/math/RealNum;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame10;
    return v0

    .line 499
    .restart local v0    # "this":Lgnu/kawa/slib/printf$frame10;
    :cond_0
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    aput-object v8, v6, v7

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-static {v5}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v5

    iput-object v5, v4, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    goto :goto_0

    .line 495
    .local v2, "sl":Lgnu/expr/Special;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v12, v4

    move-object v13, v5

    move-object v4, v13

    move-object v5, v12

    move-object v6, v13

    move-object v12, v5

    move-object v13, v6

    move-object v5, v13

    move-object v6, v12

    const-string/jumbo v7, "string-length"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 496
    .local v2, "sl":Ljava/lang/Object;
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v12, v4

    move-object v13, v5

    move-object v4, v13

    move-object v5, v12

    move-object v6, v13

    move-object v12, v5

    move-object v13, v6

    move-object v5, v13

    move-object v6, v12

    const-string/jumbo v7, "negative?"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 498
    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v12, v4

    move-object v13, v5

    move-object v4, v13

    move-object v5, v12

    move-object v6, v13

    move-object v12, v5

    move-object v13, v6

    move-object v5, v13

    move-object v6, v12

    const-string/jumbo v7, "substring"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v12, v4

    move-object v13, v5

    move-object v4, v13

    move-object v5, v12

    move-object v6, v13

    move-object v12, v5

    move-object v13, v6

    move-object v5, v13

    move-object v6, v12

    const-string/jumbo v7, "substring"

    const/4 v8, 0x3

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 501
    :catch_4
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v12, v4

    move-object v13, v5

    move-object v4, v13

    move-object v5, v12

    move-object v6, v13

    move-object v12, v5

    move-object v13, v6

    move-object v5, v13

    move-object v6, v12

    const-string/jumbo v7, "positive?"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
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

    packed-switch v4, :pswitch_data_0

    .line 472
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 494
    :goto_0
    return v0

    :pswitch_0
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

    goto :goto_0

    .line 484
    :pswitch_1
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

    goto :goto_0

    .line 476
    :pswitch_2
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

    goto :goto_0

    .line 472
    :pswitch_3
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

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    const/16 v5, 0xf

    if-ne v4, v5, :cond_0

    .line 256
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

    :goto_0
    return v0

    .line 4294967295
    .line 256
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method
