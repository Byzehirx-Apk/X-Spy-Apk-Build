.class public Lgnu/kawa/slib/srfi13$frame70;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringTrimBoth$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame70"
.end annotation


# instance fields
.field final lambda$Fn159:Lgnu/expr/ModuleMethod;

.field final lambda$Fn160:Lgnu/expr/ModuleMethod;

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

    const/16 v5, 0x88

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame70;->lambda$Fn159:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x89

    const/4 v6, 0x0

    const/16 v7, 0x2002

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame70;->lambda$Fn160:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0x88

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi13$frame70;->lambda159()Ljava/lang/Object;

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

    const/16 v5, 0x89

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/srfi13$frame70;->lambda160(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method lambda159()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1037
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame70;
    sget-object v1, Lgnu/kawa/slib/srfi13;->string$Mntrim$Mnboth:Lgnu/expr/ModuleMethod;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame70;->s:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/srfi13;->loc$rest:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-static {v1, v2, v3}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame70;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame70;
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v4, 0x40d

    const/16 v5, 0x3a

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1
.end method

.method lambda160(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 1038
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame70;
    move-object/from16 v1, p1

    .local v1, "start":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "end":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/srfi13$frame70;->s:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/srfi13;->loc$criterion:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v6}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    const/4 v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lgnu/kawa/slib/srfi13;->stringSkip$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .local v3, "temp":Ljava/lang/Object;
    move-object v5, v3

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_0

    .line 10000
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/srfi13$frame70;->s:Ljava/lang/Object;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    move-object v4, v6

    :try_start_1
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v3

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v4, v7

    :try_start_2
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi13$frame70;->s:Ljava/lang/Object;

    sget-object v10, Lgnu/kawa/slib/srfi13;->loc$criterion:Lgnu/mapping/Location;

    :try_start_3
    invoke-virtual {v10}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_3
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v3

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move-object v14, v2

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11}, Lgnu/kawa/slib/srfi13;->stringSkipRight$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v4, v8

    :try_start_4
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v7

    invoke-static {v5, v6, v7}, Lgnu/kawa/slib/srfi13;->$PcSubstring$SlShared(Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v5

    .line 1041
    :goto_0
    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame70;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame70;
    :cond_0
    const-string/jumbo v5, ""

    goto :goto_0

    .end local v3    # "temp":Ljava/lang/Object;
    :catch_0
    move-exception v5

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const-string/jumbo v7, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v8, 0x40e

    const/16 v9, 0x1d

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v5

    .line 1040
    .restart local v3    # "temp":Ljava/lang/Object;
    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v5, v16

    move-object v6, v15

    move-object/from16 v7, v16

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v6, v16

    move-object v7, v15

    const-string/jumbo v8, "%substring/shared"

    const/4 v9, 0x0

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 30
    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v5, v16

    move-object v6, v15

    move-object/from16 v7, v16

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v6, v16

    move-object v7, v15

    const-string/jumbo v8, "%substring/shared"

    const/4 v9, 0x1

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_3
    move-exception v5

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const-string/jumbo v7, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v8, 0x410

    const/16 v9, 0x3a

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v5

    .line 1040
    :catch_4
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v5, v16

    move-object v6, v15

    move-object/from16 v7, v16

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v6, v16

    move-object v7, v15

    const-string/jumbo v8, "%substring/shared"

    const/4 v9, 0x2

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0x88

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

    const/16 v6, 0x89

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
