.class public Lgnu/kawa/slib/srfi37$frame;
.super Lgnu/expr/ModuleBody;
.source "srfi37.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi37;->argsFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field operand$Mnproc:Ljava/lang/Object;

.field options:Ljava/lang/Object;

.field unrecognized$Mnoption$Mnproc:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda1find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "l":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "$Qu":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 66
    :goto_0
    move-object v0, v2

    .end local v0    # "l":Ljava/lang/Object;
    return-object v0

    .line 63
    .restart local v0    # "l":Ljava/lang/Object;
    :cond_0
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 65
    move-object v3, v1

    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_1

    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 66
    :cond_1
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/kawa/slib/srfi37$frame;->lambda1find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi37$frame;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    new-instance v3, Lgnu/kawa/slib/srfi37$frame0;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lgnu/kawa/slib/srfi37$frame0;-><init>()V

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iput-object v5, v4, Lgnu/kawa/slib/srfi37$frame0;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/slib/srfi37$frame0;->name:Ljava/lang/Object;

    .line 70
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi37$frame;->options:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Lgnu/kawa/slib/srfi37$frame0;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    invoke-static {v3, v4}, Lgnu/kawa/slib/srfi37$frame;->lambda1find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/slib/srfi37$frame;
    return-object v0
.end method

.method public lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 78
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi37$frame;
    move-object/from16 v1, p1

    .local v1, "index":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "shorts":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "args":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "seeds":Ljava/lang/Object;
    new-instance v9, Lgnu/kawa/slib/srfi37$frame1;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Lgnu/kawa/slib/srfi37$frame1;-><init>()V

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    iput-object v11, v10, Lgnu/kawa/slib/srfi37$frame1;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    move-object v5, v9

    move-object v9, v5

    move-object v10, v1

    iput-object v10, v9, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    move-object v9, v5

    move-object v10, v2

    iput-object v10, v9, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    move-object v9, v5

    move-object v10, v3

    iput-object v10, v9, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    move-object v9, v5

    move-object v10, v4

    iput-object v10, v9, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    .line 79
    sget-object v9, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    move-object v10, v5

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v6, v12

    :try_start_0
    check-cast v11, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v11}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v10, :cond_0

    .line 80
    move-object v9, v0

    move-object v10, v5

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/slib/srfi37$frame;->lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 110
    :goto_0
    move-object v0, v9

    .end local v0    # "this":Lgnu/kawa/slib/srfi37$frame;
    return-object v0

    .line 81
    .restart local v0    # "this":Lgnu/kawa/slib/srfi37$frame;
    :cond_0
    move-object v9, v5

    iget-object v9, v9, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v6, v10

    :try_start_1
    check-cast v9, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v5

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v6, v11

    :try_start_2
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v10

    invoke-static {v9, v10}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v9

    move-object v10, v5

    move v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move v10, v15

    iput-char v10, v9, Lgnu/kawa/slib/srfi37$frame1;->name:C

    .line 82
    move-object v9, v0

    move-object v10, v5

    iget-char v10, v10, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {v10}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/kawa/slib/srfi37$frame;->lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    .local v6, "x":Ljava/lang/Object;
    move-object v9, v6

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v10, :cond_1

    move-object v9, v6

    :goto_1
    move-object v10, v5

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    iput-object v10, v9, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    .line 87
    sget-object v9, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    sget-object v10, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    sget-object v12, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v5

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v7, v12

    :try_start_3
    check-cast v11, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {v11}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v7, v10

    :try_start_4
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v9

    move v6, v9

    .local v6, "x":Z
    move v9, v6

    if-eqz v9, :cond_3

    .line 88
    move-object v9, v5

    iget-object v9, v9, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v8, v10

    :try_start_5
    check-cast v9, Lgnu/kawa/slib/option$Mntype;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {v9}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .local v7, "x":Ljava/lang/Object;
    move-object v9, v7

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v6    # "x":Z
    if-eq v9, v10, :cond_2

    move-object v9, v7

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v10, :cond_4

    .line 90
    .end local v7    # "x":Ljava/lang/Object;
    :goto_2
    move-object v9, v5

    iget-object v9, v9, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    move-object v10, v5

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    invoke-static {v9, v10}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_0

    .line 82
    .local v6, "x":Ljava/lang/Object;
    :cond_1
    move-object v9, v5

    iget-char v9, v9, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {v9}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v9

    invoke-static {v9}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/srfi37$frame;->unrecognized$Mnoption$Mnproc:Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lgnu/kawa/slib/srfi37;->option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;

    move-result-object v9

    goto :goto_1

    .line 88
    .end local v6    # "x":Ljava/lang/Object;
    .restart local v7    # "x":Ljava/lang/Object;
    :cond_2
    move-object v9, v5

    iget-object v9, v9, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v8, v10

    :try_start_6
    check-cast v9, Lgnu/kawa/slib/option$Mntype;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {v9}, Lgnu/kawa/slib/srfi37;->isOptionOptionalArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v10, :cond_4

    goto :goto_2

    .line 87
    .end local v7    # "x":Ljava/lang/Object;
    .local v6, "x":Z
    :cond_3
    move v9, v6

    if-eqz v9, :cond_4

    goto :goto_2

    .line 100
    .end local v6    # "x":Z
    :cond_4
    move-object v9, v5

    iget-object v9, v9, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v7, v10

    :try_start_7
    check-cast v9, Lgnu/kawa/slib/option$Mntype;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {v9}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    .local v6, "x":Ljava/lang/Object;
    move-object v9, v6

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v10, :cond_5

    move-object v9, v5

    iget-object v9, v9, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    invoke-static {v9}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 102
    :goto_3
    move-object v9, v5

    iget-object v9, v9, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    move-object v10, v5

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    invoke-static {v9, v10}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_0

    .line 100
    :cond_5
    move-object v9, v6

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v10, :cond_6

    goto :goto_3

    .line 110
    :cond_6
    move-object v9, v5

    iget-object v9, v9, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    move-object v10, v5

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    invoke-static {v9, v10}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_0

    .line 79
    .end local v6    # "x":Ljava/lang/Object;
    :catch_0
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "string-length"

    const/4 v13, 0x1

    move-object v14, v6

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 81
    :catch_1
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "string-ref"

    const/4 v13, 0x1

    move-object v14, v6

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    :catch_2
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "string-ref"

    const/4 v13, 0x2

    move-object v14, v6

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 87
    .restart local v6    # "x":Ljava/lang/Object;
    :catch_3
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "string-length"

    const/4 v13, 0x1

    move-object v14, v7

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    :catch_4
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "x"

    const/4 v13, -0x2

    move-object v14, v7

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 88
    .local v6, "x":Z
    :catch_5
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "option-required-arg?"

    const/4 v13, 0x0

    move-object v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 89
    .end local v6    # "x":Z
    .restart local v7    # "x":Ljava/lang/Object;
    :catch_6
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "option-optional-arg?"

    const/4 v13, 0x0

    move-object v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 100
    .end local v7    # "x":Ljava/lang/Object;
    :catch_7
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "option-required-arg?"

    const/4 v13, 0x0

    move-object v14, v7

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9
.end method

.method public lambda4scanOperands(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi37$frame;
    move-object v1, p1

    .local v1, "operands":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "seeds":Ljava/lang/Object;
    new-instance v4, Lgnu/kawa/slib/srfi37$frame2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lgnu/kawa/slib/srfi37$frame2;-><init>()V

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iput-object v6, v5, Lgnu/kawa/slib/srfi37$frame2;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/slib/srfi37$frame2;->operands:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/kawa/slib/srfi37$frame2;->seeds:Ljava/lang/Object;

    .line 123
    move-object v4, v3

    iget-object v4, v4, Lgnu/kawa/slib/srfi37$frame2;->operands:Ljava/lang/Object;

    invoke-static {v4}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    sget-object v4, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v5, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    move-object v6, v3

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame2;->seeds:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 125
    :goto_0
    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/srfi37$frame;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi37$frame;
    :cond_0
    move-object v4, v3

    iget-object v4, v4, Lgnu/kawa/slib/srfi37$frame2;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    move-object v5, v3

    iget-object v5, v5, Lgnu/kawa/slib/srfi37$frame2;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    invoke-static {v4, v5}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .prologue
    .line 130
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi37$frame;
    move-object/from16 v1, p1

    .local v1, "args":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "seeds":Ljava/lang/Object;
    new-instance v10, Lgnu/kawa/slib/srfi37$frame3;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Lgnu/kawa/slib/srfi37$frame3;-><init>()V

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    iput-object v12, v11, Lgnu/kawa/slib/srfi37$frame3;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    move-object v3, v10

    move-object v10, v3

    move-object v11, v2

    iput-object v11, v10, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    .line 131
    move-object v10, v1

    invoke-static {v10}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 132
    sget-object v10, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v11, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    move-object v12, v3

    iget-object v12, v12, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 215
    :goto_0
    move-object v0, v10

    .end local v0    # "this":Lgnu/kawa/slib/srfi37$frame;
    return-object v0

    .line 133
    .restart local v0    # "this":Lgnu/kawa/slib/srfi37$frame;
    :cond_0
    sget-object v10, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v11, v1

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 134
    sget-object v11, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v12, v1

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v3

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    iput-object v12, v11, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    move-object v11, v3

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    iput-object v11, v10, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    .line 137
    const-string/jumbo v10, "--"

    move-object v11, v3

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    invoke-static {v10, v11}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 141
    move-object v10, v0

    move-object v11, v3

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    move-object v12, v3

    iget-object v12, v12, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lgnu/kawa/slib/srfi37$frame;->lambda4scanOperands(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 142
    :cond_1
    move-object v10, v3

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v5, v11

    :try_start_0
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v10}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_1
    move v4, v10

    .local v4, "x":Z
    move v10, v4

    if-eqz v10, :cond_b

    .line 148
    sget-object v10, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    move-object v11, v3

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v6, v12

    :try_start_1
    check-cast v11, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v11

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    invoke-static {v10, v11}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v10

    move v5, v10

    .line 147
    .end local v4    # "x":Z
    .local v5, "x":Z
    move v10, v5

    if-eqz v10, :cond_9

    .line 149
    sget-object v10, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    move-object v11, v3

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v7, v12

    :try_start_2
    check-cast v11, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v11

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    invoke-static {v10, v11}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v10

    move v6, v10

    .line 147
    .end local v5    # "x":Z
    .local v6, "x":Z
    move v10, v6

    if-eqz v10, :cond_7

    .line 150
    sget-object v10, Lgnu/kawa/slib/srfi37;->Lit2:Lgnu/text/Char;

    move-object v11, v3

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v8, v12

    :try_start_3
    check-cast v11, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v12, 0x2

    invoke-static {v11, v12}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v11

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    invoke-static {v10, v11}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    move v7, v10

    .line 147
    .end local v6    # "x":Z
    .local v7, "x":Z
    move v10, v7

    if-eqz v10, :cond_5

    .line 151
    sget-object v10, Lgnu/kawa/slib/srfi37;->Lit3:Lgnu/math/IntNum;

    move-object v8, v10

    .line 152
    :goto_2
    sget-object v10, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    move-object v11, v8

    move-object v12, v3

    iget-object v12, v12, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v9, v13

    :try_start_4
    check-cast v12, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {v12}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_3

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 157
    .line 147
    .end local v7    # "x":Z
    :goto_3
    move-object v11, v3

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    iput-object v11, v10, Lgnu/kawa/slib/srfi37$frame3;->temp:Ljava/lang/Object;

    .line 137
    move-object v10, v3

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame3;->temp:Ljava/lang/Object;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_d

    .line 10000
    move-object v10, v3

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn11:Lgnu/expr/ModuleMethod;

    move-object v11, v3

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn12:Lgnu/expr/ModuleMethod;

    invoke-static {v10, v11}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 142
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 152
    .restart local v7    # "x":Z
    :cond_3
    sget-object v10, Lgnu/kawa/slib/srfi37;->Lit2:Lgnu/text/Char;

    move-object v11, v3

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v9, v12

    :try_start_5
    check-cast v11, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v12, v8

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v9, v13

    :try_start_6
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v12

    invoke-static {v11, v12}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v11

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    invoke-static {v10, v11}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 155
    move-object v10, v8

    goto :goto_3

    .line 157
    :cond_4
    sget-object v10, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v11, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    .local v8, "index":Ljava/lang/Object;
    goto :goto_2

    .line 147
    .end local v8    # "index":Ljava/lang/Object;
    :cond_5
    move v10, v7

    if-eqz v10, :cond_6

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_6
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .end local v7    # "x":Z
    .restart local v6    # "x":Z
    :cond_7
    move v10, v6

    if-eqz v10, :cond_8

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_8
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .end local v6    # "x":Z
    .restart local v5    # "x":Z
    :cond_9
    move v10, v5

    if-eqz v10, :cond_a

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_a
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .end local v5    # "x":Z
    .restart local v4    # "x":Z
    :cond_b
    move v10, v4

    if-eqz v10, :cond_c

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_c
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .line 181
    .end local v4    # "x":Z
    :cond_d
    move-object v10, v3

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v5, v11

    :try_start_7
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {v10}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v10

    const/4 v11, 0x3

    if-le v10, v11, :cond_e

    const/4 v10, 0x1

    :goto_4
    move v4, v10

    .restart local v4    # "x":Z
    move v10, v4

    if-eqz v10, :cond_10

    .line 182
    sget-object v10, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    move-object v11, v3

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v6, v12

    :try_start_8
    check-cast v11, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v11

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    invoke-static {v10, v11}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v10

    move v5, v10

    .line 181
    .end local v4    # "x":Z
    .restart local v5    # "x":Z
    move v10, v5

    if-eqz v10, :cond_f

    sget-object v10, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    move-object v11, v3

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v6, v12

    :try_start_9
    check-cast v11, Ljava/lang/CharSequence;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v11

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    invoke-static {v10, v11}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 185
    .end local v5    # "x":Z
    :goto_5
    move-object v10, v3

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v4, v11

    :try_start_a
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    const/4 v11, 0x2

    move-object v12, v3

    iget-object v12, v12, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v4, v13

    :try_start_b
    check-cast v12, Ljava/lang/CharSequence;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    invoke-static {v12}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v12

    invoke-static {v10, v11, v12}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v10

    move-object v11, v3

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    iput-object v11, v10, Lgnu/kawa/slib/srfi37$frame3;->name:Ljava/lang/CharSequence;

    .line 186
    move-object v10, v0

    move-object v11, v3

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame3;->name:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Lgnu/kawa/slib/srfi37$frame;->lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v4, v10

    .local v4, "x":Ljava/lang/Object;
    move-object v10, v4

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_11

    move-object v10, v4

    :goto_6
    move-object v11, v3

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    iput-object v11, v10, Lgnu/kawa/slib/srfi37$frame3;->option:Ljava/lang/Object;

    .line 192
    move-object v10, v3

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame3;->option:Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v5, v11

    :try_start_c
    check-cast v10, Lgnu/kawa/slib/option$Mntype;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_c

    invoke-static {v10}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v10

    move-object v4, v10

    move-object v10, v4

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_12

    move-object v10, v3

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    invoke-static {v10}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 194
    :goto_7
    move-object v10, v3

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn19:Lgnu/expr/ModuleMethod;

    move-object v11, v3

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn20:Lgnu/expr/ModuleMethod;

    invoke-static {v10, v11}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v10

    .line 201
    :goto_8
    goto/16 :goto_0

    .line 181
    .end local v4    # "x":Ljava/lang/Object;
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_4

    .restart local v5    # "x":Z
    :cond_f
    move v10, v5

    if-eqz v10, :cond_14

    goto :goto_5

    .end local v5    # "x":Z
    .local v4, "x":Z
    :cond_10
    move v10, v4

    if-eqz v10, :cond_14

    goto :goto_5

    .line 186
    .local v4, "x":Ljava/lang/Object;
    :cond_11
    move-object v10, v3

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame3;->name:Ljava/lang/CharSequence;

    invoke-static {v10}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/slib/srfi37$frame;->unrecognized$Mnoption$Mnproc:Ljava/lang/Object;

    invoke-static {v10, v11, v12, v13}, Lgnu/kawa/slib/srfi37;->option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;

    move-result-object v10

    goto :goto_6

    .line 192
    :cond_12
    move-object v10, v4

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_13

    goto :goto_7

    .line 201
    :cond_13
    move-object v10, v3

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn21:Lgnu/expr/ModuleMethod;

    move-object v11, v3

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn22:Lgnu/expr/ModuleMethod;

    invoke-static {v10, v11}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_8

    .line 209
    .end local v4    # "x":Ljava/lang/Object;
    :cond_14
    move-object v10, v3

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v5, v11

    :try_start_d
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_d

    invoke-static {v10}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_15

    const/4 v10, 0x1

    :goto_9
    move v4, v10

    .local v4, "x":Z
    move v10, v4

    if-eqz v10, :cond_16

    sget-object v10, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    move-object v11, v3

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v5, v12

    :try_start_e
    check-cast v11, Ljava/lang/CharSequence;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_e

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v11

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    invoke-static {v10, v11}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 212
    :goto_a
    move-object v10, v3

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v5, v11

    :try_start_f
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_f

    const/4 v11, 0x1

    move-object v12, v3

    iget-object v12, v12, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v5, v13

    :try_start_10
    check-cast v12, Ljava/lang/CharSequence;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_10

    invoke-static {v12}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v12

    invoke-static {v10, v11, v12}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v10

    move-object v4, v10

    .line 213
    .local v4, "shorts":Ljava/lang/CharSequence;
    move-object v10, v0

    sget-object v11, Lgnu/kawa/slib/srfi37;->Lit4:Lgnu/math/IntNum;

    move-object v12, v4

    move-object v13, v3

    iget-object v13, v13, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    move-object v14, v3

    iget-object v14, v14, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12, v13, v14}, Lgnu/kawa/slib/srfi37$frame;->lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 209
    .end local v4    # "shorts":Ljava/lang/CharSequence;
    :cond_15
    const/4 v10, 0x0

    goto :goto_9

    .local v4, "x":Z
    :cond_16
    move v10, v4

    if-eqz v10, :cond_17

    goto :goto_a

    .line 215
    :cond_17
    move-object v10, v3

    iget-object v10, v10, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn23:Lgnu/expr/ModuleMethod;

    move-object v11, v3

    iget-object v11, v11, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn24:Lgnu/expr/ModuleMethod;

    invoke-static {v10, v11}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 147
    .end local v4    # "x":Z
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

    const-string/jumbo v13, "string-length"

    const/4 v14, 0x1

    move-object v15, v5

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 148
    .restart local v4    # "x":Z
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

    const/4 v14, 0x1

    move-object v15, v6

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 149
    .end local v4    # "x":Z
    .restart local v5    # "x":Z
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

    move-object v15, v7

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 150
    .end local v5    # "x":Z
    .restart local v6    # "x":Z
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

    const/4 v14, 0x1

    move-object v15, v8

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 152
    .end local v6    # "x":Z
    .restart local v7    # "x":Z
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

    const-string/jumbo v13, "string-length"

    const/4 v14, 0x1

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 154
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

    const/4 v14, 0x1

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

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

    const-string/jumbo v13, "string-ref"

    const/4 v14, 0x2

    move-object v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 181
    .end local v7    # "x":Z
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

    const-string/jumbo v13, "string-length"

    const/4 v14, 0x1

    move-object v15, v5

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 182
    .restart local v4    # "x":Z
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

    const-string/jumbo v13, "string-ref"

    const/4 v14, 0x1

    move-object v15, v6

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 183
    .end local v4    # "x":Z
    .restart local v5    # "x":Z
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

    const-string/jumbo v13, "string-ref"

    const/4 v14, 0x1

    move-object v15, v6

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 185
    .end local v5    # "x":Z
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

    const-string/jumbo v13, "substring"

    const/4 v14, 0x1

    move-object v15, v4

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    :catch_b
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

    const-string/jumbo v13, "string-length"

    const/4 v14, 0x1

    move-object v15, v4

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 192
    .local v4, "x":Ljava/lang/Object;
    :catch_c
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

    const-string/jumbo v13, "option-required-arg?"

    const/4 v14, 0x0

    move-object v15, v5

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 209
    .end local v4    # "x":Ljava/lang/Object;
    :catch_d
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

    const-string/jumbo v13, "string-length"

    const/4 v14, 0x1

    move-object v15, v5

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 210
    .local v4, "x":Z
    :catch_e
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

    move-object v15, v5

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 212
    :catch_f
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

    move-object v15, v5

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    :catch_10
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

    const-string/jumbo v13, "string-length"

    const/4 v14, 0x1

    move-object v15, v5

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10
.end method
