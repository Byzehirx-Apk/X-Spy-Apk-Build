.class public Lgnu/kawa/slib/srfi13$frame93;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringTokenize$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame93"
.end annotation


# instance fields
.field final lambda$Fn208:Lgnu/expr/ModuleMethod;

.field final lambda$Fn209:Lgnu/expr/ModuleMethod;

.field s:Ljava/lang/Object;


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

    const/16 v5, 0xb7

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame93;->lambda$Fn208:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xb8

    const/4 v6, 0x0

    const/16 v7, 0x2002

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame93;->lambda$Fn209:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0xb7

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi13$frame93;->lambda208()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v5, 0xb8

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/srfi13$frame93;->lambda209(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method lambda208()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1696
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame93;
    sget-object v1, Lgnu/kawa/slib/srfi13;->string$Mntokenize:Lgnu/expr/ModuleMethod;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame93;->s:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/srfi13;->loc$rest:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-static {v1, v2, v3}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame93;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame93;
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v4, 0x6a0

    const/16 v5, 0x39

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1
.end method

.method lambda209(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 1697
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame93;
    move-object/from16 v1, p1

    .local v1, "start":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "end":Ljava/lang/Object;
    move-object v9, v2

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v4, v10

    move-object v3, v9

    .line 1698
    .local v3, "i":Ljava/lang/Object;
    :goto_0
    sget-object v9, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    move-object v10, v1

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v7, v10

    :try_start_0
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    move v6, v9

    .local v6, "x":Z
    move v9, v6

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi13$frame93;->s:Ljava/lang/Object;

    sget-object v10, Lgnu/kawa/slib/srfi13;->loc$token$Mnchars:Lgnu/mapping/Location;

    :try_start_1
    invoke-virtual {v10}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v1

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move-object v14, v3

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11}, Lgnu/kawa/slib/srfi13;->stringIndexRight$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :goto_1
    move-object v5, v9

    .local v5, "temp":Ljava/lang/Object;
    move-object v9, v5

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v10, :cond_3

    .line 10000
    sget-object v9, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v10, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    move-object v11, v5

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    .line 1701
    .local v6, "tend":Ljava/lang/Object;
    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi13$frame93;->s:Ljava/lang/Object;

    sget-object v10, Lgnu/kawa/slib/srfi13;->loc$token$Mnchars:Lgnu/mapping/Location;

    :try_start_2
    invoke-virtual {v10}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_2
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v1

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move-object v14, v5

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11}, Lgnu/kawa/slib/srfi13;->stringSkipRight$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .end local v5    # "temp":Ljava/lang/Object;
    .local v7, "temp":Ljava/lang/Object;
    move-object v9, v7

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v10, :cond_2

    .line 10000
    move-object v9, v7

    .line 1704
    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/srfi13$frame93;->s:Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v8, v11

    :try_start_3
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    sget-object v11, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v12, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    .line 10000
    move-object v13, v7

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v8, v12

    :try_start_4
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v11

    move-object v12, v6

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v8, v13

    :try_start_5
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v12

    invoke-static {v10, v11, v12}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v10

    move-object v11, v4

    invoke-static {v10, v11}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    move-object v4, v10

    .local v4, "ans":Lgnu/lists/Pair;
    move-object v3, v9

    goto/16 :goto_0

    .line 1698
    .end local v4    # "ans":Lgnu/lists/Pair;
    .end local v7    # "temp":Ljava/lang/Object;
    .local v6, "x":Z
    :cond_0
    move v9, v6

    if-eqz v9, :cond_1

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1706
    .local v6, "tend":Ljava/lang/Object;
    .restart local v7    # "temp":Ljava/lang/Object;
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi13$frame93;->s:Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v8, v10

    :try_start_6
    check-cast v9, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v10, v1

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v8, v11

    :try_start_7
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v10

    move-object v11, v6

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v8, v12

    :try_start_8
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v11

    invoke-static {v9, v10, v11}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v10, v4

    invoke-static {v9, v10}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    .line 1707
    .end local v6    # "tend":Ljava/lang/Object;
    .end local v7    # "temp":Ljava/lang/Object;
    :goto_2
    move-object v0, v9

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame93;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame93;
    .restart local v5    # "temp":Ljava/lang/Object;
    .local v6, "x":Z
    :cond_3
    move-object v9, v4

    goto :goto_2

    .line 1698
    .end local v5    # "temp":Ljava/lang/Object;
    .end local v6    # "x":Z
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

    const-string/jumbo v12, "x"

    const/4 v13, -0x2

    move-object v14, v7

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .restart local v6    # "x":Z
    :catch_1
    move-exception v9

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string/jumbo v11, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v12, 0x6a2

    const/16 v13, 0x30

    invoke-virtual {v10, v11, v12, v13}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v9

    .restart local v5    # "temp":Ljava/lang/Object;
    .local v6, "tend":Ljava/lang/Object;
    :catch_2
    move-exception v9

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string/jumbo v11, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v12, 0x6a5

    const/16 v13, 0x22

    invoke-virtual {v10, v11, v12, v13}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v9

    .line 1704
    .end local v5    # "temp":Ljava/lang/Object;
    .restart local v7    # "temp":Ljava/lang/Object;
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

    const-string/jumbo v12, "substring"

    const/4 v13, 0x1

    move-object v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 11674
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

    const-string/jumbo v12, "substring"

    const/4 v13, 0x2

    move-object v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

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

    const-string/jumbo v12, "substring"

    const/4 v13, 0x3

    move-object v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 1706
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

    const-string/jumbo v12, "substring"

    const/4 v13, 0x1

    move-object v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

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

    const-string/jumbo v12, "substring"

    const/4 v13, 0x2

    move-object v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    :catch_8
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

    const-string/jumbo v12, "substring"

    const/4 v13, 0x3

    move-object v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0xb7

    if-ne v3, v4, :cond_0

    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v6, 0xb8

    if-ne v5, v6, :cond_0

    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method
