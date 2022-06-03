.class public Lgnu/kawa/slib/srfi13$frame32;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13$frame31;->lambda69(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame32"
.end annotation


# instance fields
.field end1:Ljava/lang/Object;

.field final lambda$Fn70:Lgnu/expr/ModuleMethod;

.field final lambda$Fn71:Lgnu/expr/ModuleMethod;

.field rest:Ljava/lang/Object;

.field start1:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi13$frame31;


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

    const/16 v5, 0x40

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame32;->lambda$Fn70:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x41

    const/4 v6, 0x0

    const/16 v7, 0x2002

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame32;->lambda$Fn71:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda72(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "i":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "i":Ljava/lang/Object;
    return-object v0
.end method

.method static lambda73(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "i":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "i":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi13$frame32;->lambda70()Ljava/lang/Object;

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

    const/16 v5, 0x41

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/srfi13$frame32;->lambda71(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method lambda70()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 751
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame32;
    sget-object v1, Lgnu/kawa/slib/srfi13;->string$Eq:Lgnu/expr/ModuleMethod;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame32;->staticLink:Lgnu/kawa/slib/srfi13$frame31;

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame31;->s2:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame32;->rest:Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame32;
    return-object v0
.end method

.method lambda71(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .prologue
    .line 753
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi13$frame32;
    move-object/from16 v1, p1

    .local v1, "start2":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "end2":Ljava/lang/Object;
    sget-object v7, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi13$frame32;->end1:Ljava/lang/Object;

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/srfi13$frame32;->start1:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v10, v2

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v4, v8

    :try_start_0
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    move v3, v7

    .local v3, "x":Z
    move v7, v3

    if-eqz v7, :cond_4

    .line 754
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame32;->staticLink:Lgnu/kawa/slib/srfi13$frame31;

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame31;->s1:Ljava/lang/Object;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/srfi13$frame32;->staticLink:Lgnu/kawa/slib/srfi13$frame31;

    iget-object v8, v8, Lgnu/kawa/slib/srfi13$frame31;->s2:Ljava/lang/Object;

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v5, v7

    .end local v3    # "x":Z
    .local v5, "x":Z
    move v7, v5

    if-eqz v7, :cond_1

    sget-object v7, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/srfi13$frame32;->start1:Ljava/lang/Object;

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v6, v8

    :try_start_1
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    :goto_1
    move v4, v7

    .end local v5    # "x":Z
    .local v4, "x":Z
    move v7, v4

    if-eqz v7, :cond_3

    move v7, v4

    if-eqz v7, :cond_2

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 753
    .end local v4    # "x":Z
    :goto_2
    move-object v0, v7

    .end local v0    # "this":Lgnu/kawa/slib/srfi13$frame32;
    return-object v0

    .line 754
    .restart local v0    # "this":Lgnu/kawa/slib/srfi13$frame32;
    .restart local v3    # "x":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .end local v3    # "x":Z
    .restart local v5    # "x":Z
    :cond_1
    move v7, v5

    goto :goto_1

    .end local v5    # "x":Z
    .restart local v4    # "x":Z
    :cond_2
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame32;->staticLink:Lgnu/kawa/slib/srfi13$frame31;

    iget-object v7, v7, Lgnu/kawa/slib/srfi13$frame31;->s1:Ljava/lang/Object;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/srfi13$frame32;->start1:Ljava/lang/Object;

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/srfi13$frame32;->end1:Ljava/lang/Object;

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/srfi13$frame32;->staticLink:Lgnu/kawa/slib/srfi13$frame31;

    iget-object v10, v10, Lgnu/kawa/slib/srfi13$frame31;->s2:Ljava/lang/Object;

    move-object v11, v1

    move-object v12, v2

    sget-object v13, Lgnu/kawa/slib/srfi13;->lambda$Fn72:Lgnu/expr/ModuleMethod;

    sget-object v14, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    sget-object v15, Lgnu/kawa/slib/srfi13;->lambda$Fn73:Lgnu/expr/ModuleMethod;

    invoke-static/range {v7 .. v15}, Lgnu/kawa/slib/srfi13;->$PcStringCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 753
    .end local v4    # "x":Z
    .restart local v3    # "x":Z
    :cond_4
    move v7, v3

    if-eqz v7, :cond_5

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_5
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .end local v3    # "x":Z
    :catch_0
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v7, v17

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v16

    const-string/jumbo v10, "x"

    const/4 v11, -0x2

    move-object v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 754
    .restart local v5    # "x":Z
    :catch_1
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v7, v17

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v16

    const-string/jumbo v10, "x"

    const/4 v11, -0x2

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0x40

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

    const/16 v6, 0x41

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
