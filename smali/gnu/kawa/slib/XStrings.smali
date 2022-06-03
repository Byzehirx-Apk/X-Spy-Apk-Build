.class public Lgnu/kawa/slib/XStrings;
.super Lgnu/expr/ModuleBody;
.source "XStrings.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/XStrings;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field public static final string$Mnlength:Lgnu/expr/ModuleMethod;

.field public static final substring:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string-length"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/XStrings;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "substring"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/XStrings;->Lit1:Lgnu/mapping/SimpleSymbol;

    const v1, 0x7fffffff

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/XStrings;->Lit0:Lgnu/math/IntNum;

    new-instance v1, Lgnu/kawa/slib/XStrings;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    invoke-direct {v2}, Lgnu/kawa/slib/XStrings;-><init>()V

    sput-object v1, Lgnu/kawa/slib/XStrings;->$instance:Lgnu/kawa/slib/XStrings;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    sget-object v3, Lgnu/kawa/slib/XStrings;->$instance:Lgnu/kawa/slib/XStrings;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x1

    sget-object v5, Lgnu/kawa/slib/XStrings;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/XStrings;->substring:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x3

    sget-object v5, Lgnu/kawa/slib/XStrings;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/XStrings;->string$Mnlength:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/XStrings;->$instance:Lgnu/kawa/slib/XStrings;

    invoke-virtual {v1}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    move-object v1, v0

    invoke-static {v1}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static stringLength(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "string":Ljava/lang/Object;
    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_0

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 18
    :goto_0
    move-object v0, v1

    .end local v0    # "string":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "string":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lgnu/kawa/slib/XStrings;->Lit0:Lgnu/math/IntNum;

    invoke-static {v2, v3, v4}, Lgnu/kawa/slib/XStrings;->substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .prologue
    .line 1
    move-object/from16 v0, p0

    .local v0, "string":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "start":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "length":Ljava/lang/Object;
    move-object v10, v0

    sget-object v11, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v10, v11, :cond_0

    const/4 v10, 0x1

    :goto_0
    move v3, v10

    .local v3, "x":Z
    move v10, v3

    if-eqz v10, :cond_1

    move v10, v3

    if-eqz v10, :cond_4

    .line 2
    .end local v3    # "x":Z
    :goto_1
    sget-object v10, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 13
    :goto_2
    move-object v0, v10

    .end local v0    # "string":Ljava/lang/Object;
    return-object v0

    .line 1
    .restart local v0    # "string":Ljava/lang/Object;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 3
    .restart local v3    # "x":Z
    :cond_1
    move-object v10, v1

    sget-object v11, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_3
    move v4, v10

    .line 2
    .end local v3    # "x":Z
    .local v4, "x":Z
    move v10, v4

    if-eqz v10, :cond_3

    move v10, v4

    if-eqz v10, :cond_4

    goto :goto_1

    .line 3
    .end local v4    # "x":Z
    .restart local v3    # "x":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    .line 2
    .end local v3    # "x":Z
    .restart local v4    # "x":Z
    :cond_3
    move-object v10, v2

    sget-object v11, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v10, v11, :cond_4

    goto :goto_1

    .line 6
    .end local v4    # "x":Z
    :cond_4
    move-object v10, v0

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v4, v11

    :try_start_0
    check-cast v10, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v10

    .line 7
    .local v3, "s":Ljava/lang/String;
    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v4, v10

    .line 6
    .local v4, "slen":I
    move-object v10, v1

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v6, v11

    :try_start_1
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    move v5, v10

    .local v5, "sindex":I
    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v6, v10

    .local v6, "index":I
    move-object v10, v2

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v8, v11

    :try_start_2
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v10

    move v7, v10

    .local v7, "len":I
    move v10, v4

    move v11, v6

    sub-int/2addr v10, v11

    move v8, v10

    .local v8, "avail":I
    move v10, v7

    move v11, v8

    if-le v10, v11, :cond_5

    move v10, v8

    :goto_4
    move v9, v10

    .line 13
    .local v9, "rlen":I
    move-object v10, v3

    move v11, v6

    move v12, v6

    move v13, v9

    add-int/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 6
    .end local v9    # "rlen":I
    :cond_5
    move v10, v7

    goto :goto_4

    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "slen":I
    .end local v5    # "sindex":I
    .end local v6    # "index":I
    .end local v7    # "len":I
    .end local v8    # "avail":I
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

    const-string/jumbo v13, "s"

    const/4 v14, -0x2

    move-object v15, v4

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 8
    .restart local v3    # "s":Ljava/lang/String;
    .restart local v4    # "slen":I
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

    const-string/jumbo v13, "sindex"

    const/4 v14, -0x2

    move-object v15, v6

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 10
    .restart local v5    # "sindex":I
    .restart local v6    # "index":I
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

    const-string/jumbo v13, "len"

    const/4 v14, -0x2

    move-object v15, v8

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10
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

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 15
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/XStrings;->stringLength(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 4294967295
    .line 15
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/kawa/slib/XStrings;->substring(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 4294967295
    .line 1
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

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1
    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lgnu/kawa/slib/XStrings;->substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    :goto_0
    return-object v0

    .line 4294967295
    .line 1
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
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

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 15
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
    .line 15
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

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 10

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1
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

    .line 4294967295
    .line 1
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

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 12

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v1

    iget v6, v6, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    return v0

    .line 4294967295
    .line 1
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 1
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/XStrings;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 15
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
