.class public Lgnu/kawa/slib/genwrite$frame;
.super Lgnu/expr/ModuleBody;
.source "genwrite.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/genwrite;->genericWrite(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field display$Qu:Ljava/lang/Object;

.field output:Ljava/lang/Object;

.field width:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda1isReadMacro(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "l":Ljava/lang/Object;
    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .local v2, "tail":Ljava/lang/Object;
    move-object v1, v6

    .line 11
    .local v1, "head":Ljava/lang/Object;
    sget-object v6, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object v7, v1

    sget-object v8, Lgnu/kawa/slib/genwrite;->Lit30:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .local v3, "x":Ljava/lang/Object;
    move-object v6, v3

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_0

    move-object v6, v3

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_6

    .line 12
    .end local v3    # "x":Ljava/lang/Object;
    :goto_0
    move-object v6, v2

    .line 9
    move-object v3, v6

    .end local v0    # "l":Ljava/lang/Object;
    .local v3, "l":Ljava/lang/Object;
    move-object v6, v3

    invoke-static {v6}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v6

    move v4, v6

    .local v4, "x":Z
    move v6, v4

    if-eqz v6, :cond_4

    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .end local v3    # "l":Ljava/lang/Object;
    .end local v4    # "x":Z
    :goto_1
    move-object v0, v6

    return-object v0

    .line 11
    .restart local v0    # "l":Ljava/lang/Object;
    .local v3, "x":Ljava/lang/Object;
    :cond_0
    sget-object v6, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object v7, v1

    sget-object v8, Lgnu/kawa/slib/genwrite;->Lit31:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .end local v3    # "x":Ljava/lang/Object;
    .local v4, "x":Ljava/lang/Object;
    move-object v6, v4

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_1

    move-object v6, v4

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_6

    goto :goto_0

    :cond_1
    sget-object v6, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object v7, v1

    sget-object v8, Lgnu/kawa/slib/genwrite;->Lit32:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .end local v4    # "x":Ljava/lang/Object;
    .local v5, "x":Ljava/lang/Object;
    move-object v6, v5

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_2

    move-object v6, v5

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_6

    goto :goto_0

    :cond_2
    sget-object v6, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object v7, v1

    sget-object v8, Lgnu/kawa/slib/genwrite;->Lit33:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_6

    goto :goto_0

    .line 9
    .end local v0    # "l":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Object;
    .local v3, "l":Ljava/lang/Object;
    .local v4, "x":Z
    :cond_3
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    move v6, v4

    if-eqz v6, :cond_5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .end local v3    # "l":Ljava/lang/Object;
    .end local v4    # "x":Z
    .restart local v0    # "l":Ljava/lang/Object;
    :cond_6
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static lambda2readMacroBody(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "l":Ljava/lang/Object;
    sget-object v1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "l":Ljava/lang/Object;
    return-object v0
.end method

.method public static lambda3readMacroPrefix(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "l":Ljava/lang/Object;
    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v2

    .line 20
    .local v1, "head":Ljava/lang/Object;
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object v3, v1

    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit30:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_0

    .line 21
    const-string/jumbo v2, "\'"

    .line 24
    :goto_0
    move-object v0, v2

    .end local v0    # "l":Ljava/lang/Object;
    return-object v0

    .line 21
    .restart local v0    # "l":Ljava/lang/Object;
    :cond_0
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 20
    move-object v3, v1

    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit31:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_1

    .line 22
    const-string/jumbo v2, "`"

    goto :goto_0

    :cond_1
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 20
    move-object v3, v1

    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit32:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_2

    .line 23
    const-string/jumbo v2, ","

    goto :goto_0

    :cond_2
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 20
    move-object v3, v1

    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit33:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_3

    .line 24
    const-string/jumbo v2, ",@"

    goto :goto_0

    :cond_3
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0
.end method


# virtual methods
.method public lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/genwrite$frame;
    move-object v1, p1

    .local v1, "str":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "col":Ljava/lang/Object;
    move-object v5, v2

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_1

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/genwrite$frame;->output:Ljava/lang/Object;

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .local v3, "x":Ljava/lang/Object;
    move-object v5, v3

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_0

    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v6, v2

    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v4, v8

    :try_start_0
    check-cast v7, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v7}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v3    # "x":Ljava/lang/Object;
    :goto_0
    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/slib/genwrite$frame;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/genwrite$frame;
    .restart local v3    # "x":Ljava/lang/Object;
    :cond_0
    move-object v5, v3

    goto :goto_0

    .end local v3    # "x":Ljava/lang/Object;
    :cond_1
    move-object v5, v2

    goto :goto_0

    .restart local v3    # "x":Ljava/lang/Object;
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "string-length"

    const/4 v9, 0x1

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .prologue
    .line 29
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/slib/genwrite$frame;
    move-object/from16 v3, p1

    .local v3, "obj":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "col":Ljava/lang/Object;
    move-object v13, v3

    invoke-static {v13}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 47
    move-object v13, v3

    move-object v14, v4

    .line 31
    move-object v6, v14

    move-object v5, v13

    .local v5, "expr":Ljava/lang/Object;
    move-object v13, v2

    move-object v7, v13

    .line 32
    .local v7, "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    move-object v13, v5

    invoke-static {v13}, Lgnu/kawa/slib/genwrite$frame;->lambda1isReadMacro(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v13, v14, :cond_0

    .line 33
    move-object v13, v2

    move-object v14, v5

    invoke-static {v14}, Lgnu/kawa/slib/genwrite$frame;->lambda2readMacroBody(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v2

    move-object/from16 v16, v5

    invoke-static/range {v16 .. v16}, Lgnu/kawa/slib/genwrite$frame;->lambda3readMacroPrefix(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v6

    invoke-virtual/range {v15 .. v17}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 45
    .line 50
    .end local v4    # "col":Ljava/lang/Object;
    .end local v5    # "expr":Ljava/lang/Object;
    .end local v7    # "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    :goto_0
    move-object v2, v13

    .end local v2    # "this":Lgnu/kawa/slib/genwrite$frame;
    return-object v2

    .line 34
    .restart local v2    # "this":Lgnu/kawa/slib/genwrite$frame;
    .restart local v4    # "col":Ljava/lang/Object;
    .restart local v5    # "expr":Ljava/lang/Object;
    .restart local v7    # "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    :cond_0
    move-object v13, v5

    move-object v14, v6

    .line 36
    move-object v9, v14

    move-object v8, v13

    .end local v5    # "expr":Ljava/lang/Object;
    .end local v7    # "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    :goto_1
    move-object v13, v2

    move-object v10, v13

    .line 37
    .local v10, "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    move-object v13, v8

    invoke-static {v13}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 38
    sget-object v13, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v14, v8

    invoke-virtual {v13, v14}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 39
    move-object v14, v9

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v14, v15, :cond_1

    move-object v14, v2

    sget-object v15, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v2

    const-string/jumbo v17, "("

    move-object/from16 v18, v9

    invoke-virtual/range {v16 .. v18}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    :goto_2
    move-object v12, v14

    move-object v11, v13

    .line 40
    .end local v4    # "col":Ljava/lang/Object;
    .local v11, "l":Ljava/lang/Object;
    :goto_3
    move-object v13, v12

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v13, v14, :cond_2

    move-object v13, v12

    .line 44
    :goto_4
    goto :goto_0

    .line 39
    .end local v11    # "l":Ljava/lang/Object;
    .restart local v4    # "col":Ljava/lang/Object;
    :cond_1
    move-object v14, v9

    goto :goto_2

    .line 40
    .end local v4    # "col":Ljava/lang/Object;
    .restart local v11    # "l":Ljava/lang/Object;
    :cond_2
    move-object v13, v11

    invoke-static {v13}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 42
    sget-object v13, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v14, v11

    invoke-virtual {v13, v14}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v2

    sget-object v15, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v16, v11

    invoke-virtual/range {v15 .. v16}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v2

    const-string/jumbo v17, " "

    move-object/from16 v18, v12

    invoke-virtual/range {v16 .. v18}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v12, v14

    .local v12, "col":Ljava/lang/Object;
    move-object v11, v13

    goto :goto_3

    .end local v12    # "col":Ljava/lang/Object;
    :cond_3
    move-object v13, v11

    invoke-static {v13}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 43
    move-object v13, v2

    const-string/jumbo v14, ")"

    move-object v15, v12

    invoke-virtual {v13, v14, v15}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_4

    .line 44
    :cond_4
    move-object v13, v2

    const-string/jumbo v14, ")"

    move-object v15, v2

    move-object/from16 v16, v11

    move-object/from16 v17, v2

    const-string/jumbo v18, " . "

    move-object/from16 v19, v12

    invoke-virtual/range {v17 .. v19}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_4

    .line 45
    .end local v11    # "l":Ljava/lang/Object;
    .restart local v4    # "col":Ljava/lang/Object;
    :cond_5
    move-object v13, v2

    const-string/jumbo v14, "()"

    move-object v15, v9

    invoke-virtual {v13, v14, v15}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    .end local v10    # "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    :cond_6
    move-object v13, v3

    invoke-static {v13}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 48
    move-object v13, v3

    move-object v14, v4

    move-object v9, v14

    move-object v8, v13

    goto/16 :goto_1

    :cond_7
    move-object v13, v3

    invoke-static {v13}, Lkawa/lib/vectors;->isVector(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 49
    move-object v13, v3

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v5, v14

    :try_start_0
    check-cast v13, Lgnu/lists/FVector;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v13}, Lkawa/lib/vectors;->vector$To$List(Lgnu/lists/FVector;)Lgnu/lists/LList;

    move-result-object v13

    move-object v14, v2

    const-string/jumbo v15, "#"

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v16}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v9, v14

    move-object v8, v13

    goto/16 :goto_1

    .line 50
    :cond_8
    move-object v13, v2

    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/kawa/slib/genwrite$frame;->display$Qu:Ljava/lang/Object;

    move-object/from16 v18, v0

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_9

    const-string/jumbo v18, "~a"

    :goto_5
    aput-object v18, v16, v17

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x1

    move-object/from16 v18, v3

    aput-object v18, v16, v17

    invoke-static {v14, v15}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v18, "~s"

    goto :goto_5

    .line 49
    :catch_0
    move-exception v13

    new-instance v14, Lgnu/mapping/WrongType;

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v13, v21

    move-object/from16 v14, v20

    move-object/from16 v15, v21

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    move-object/from16 v14, v21

    move-object/from16 v15, v20

    const-string/jumbo v16, "vector->list"

    const/16 v17, 0x1

    move-object/from16 v18, v5

    invoke-direct/range {v14 .. v18}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v13
.end method
