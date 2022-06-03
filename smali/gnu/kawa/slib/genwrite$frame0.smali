.class public Lgnu/kawa/slib/genwrite$frame0;
.super Lgnu/expr/ModuleBody;
.source "genwrite.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/genwrite;->genericWrite(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation


# instance fields
.field pp$MnAND:Lgnu/mapping/Procedure;

.field pp$MnBEGIN:Lgnu/mapping/Procedure;

.field pp$MnCASE:Lgnu/mapping/Procedure;

.field pp$MnCOND:Lgnu/mapping/Procedure;

.field pp$MnDO:Lgnu/mapping/Procedure;

.field pp$MnIF:Lgnu/mapping/Procedure;

.field pp$MnLAMBDA:Lgnu/mapping/Procedure;

.field pp$MnLET:Lgnu/mapping/Procedure;

.field pp$Mnexpr:Lgnu/mapping/Procedure;

.field pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

.field staticLink:Lgnu/kawa/slib/genwrite$frame;


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

    const/4 v5, 0x2

    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit20:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0x3003

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x3

    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0x3003

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x4

    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit22:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0x3003

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/genwrite$frame0;->pp$MnLAMBDA:Lgnu/mapping/Procedure;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x5

    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit23:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0x3003

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/genwrite$frame0;->pp$MnIF:Lgnu/mapping/Procedure;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x6

    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit24:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0x3003

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/genwrite$frame0;->pp$MnCOND:Lgnu/mapping/Procedure;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x7

    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit25:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0x3003

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/genwrite$frame0;->pp$MnCASE:Lgnu/mapping/Procedure;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x8

    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit26:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0x3003

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/genwrite$frame0;->pp$MnAND:Lgnu/mapping/Procedure;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x9

    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit27:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0x3003

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/genwrite$frame0;->pp$MnLET:Lgnu/mapping/Procedure;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xa

    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit28:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0x3003

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/genwrite$frame0;->pp$MnBEGIN:Lgnu/mapping/Procedure;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xb

    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit29:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0x3003

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/genwrite$frame0;->pp$MnDO:Lgnu/mapping/Procedure;

    return-void
.end method


# virtual methods
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

    packed-switch v5, :pswitch_data_0

    .line 189
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/slib/genwrite$frame0;->lambda8ppExpr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 163
    :pswitch_1
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/slib/genwrite$frame0;->lambda13ppExprList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 166
    :pswitch_2
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/slib/genwrite$frame0;->lambda14pp$MnLAMBDA(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 169
    :pswitch_3
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/slib/genwrite$frame0;->lambda15pp$MnIF(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 172
    :pswitch_4
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/slib/genwrite$frame0;->lambda16pp$MnCOND(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 175
    :pswitch_5
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/slib/genwrite$frame0;->lambda17pp$MnCASE(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 178
    :pswitch_6
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/slib/genwrite$frame0;->lambda18pp$MnAND(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 181
    :pswitch_7
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/slib/genwrite$frame0;->lambda19pp$MnLET(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 186
    :pswitch_8
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/slib/genwrite$frame0;->lambda20pp$MnBEGIN(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 189
    :pswitch_9
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/kawa/slib/genwrite$frame0;->lambda21pp$MnDO(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public lambda10ppList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/genwrite$frame0;
    move-object v1, p1

    .local v1, "l":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "col":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "extra":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "pp$Mnitem":Ljava/lang/Object;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string/jumbo v7, "("

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 113
    .end local v2    # "col":Ljava/lang/Object;
    .local v5, "col":Ljava/lang/Object;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v5

    move-object v9, v5

    move-object v10, v3

    move-object v11, v4

    invoke-virtual/range {v6 .. v11}, Lgnu/kawa/slib/genwrite$frame0;->lambda11ppDown(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    return-object v0
.end method

.method public lambda11ppDown(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .prologue
    .line 115
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/kawa/slib/genwrite$frame0;
    move-object/from16 v2, p1

    .local v2, "l":Ljava/lang/Object;
    move-object/from16 v3, p2

    .local v3, "col1":Ljava/lang/Object;
    move-object/from16 v4, p3

    .local v4, "col2":Ljava/lang/Object;
    move-object/from16 v5, p4

    .local v5, "extra":Ljava/lang/Object;
    move-object/from16 v6, p5

    .local v6, "pp$Mnitem":Ljava/lang/Object;
    move-object v12, v2

    move-object v13, v3

    move-object v8, v13

    move-object v7, v12

    .end local v2    # "l":Ljava/lang/Object;
    .end local v5    # "extra":Ljava/lang/Object;
    .local v7, "l":Ljava/lang/Object;
    :goto_0
    move-object v12, v1

    move-object v9, v12

    .line 117
    .local v9, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    move-object v12, v8

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v13, :cond_3

    move-object v12, v7

    invoke-static {v12}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 119
    sget-object v12, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v13, v7

    invoke-virtual {v12, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v10, v12

    .line 120
    .local v10, "rest":Ljava/lang/Object;
    move-object v12, v10

    invoke-static {v12}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v12, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v13, v5

    sget-object v14, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v12, v13, v14}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :goto_1
    move-object v11, v12

    .line 121
    .local v11, "extra":Ljava/lang/Object;
    move-object v12, v10

    .line 122
    move-object v13, v1

    sget-object v14, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v15, v7

    invoke-virtual {v14, v15}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v1

    move-object/from16 v16, v4

    move-object/from16 v17, v8

    invoke-virtual/range {v15 .. v17}, Lgnu/kawa/slib/genwrite$frame0;->lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v11

    move-object/from16 v17, v6

    invoke-virtual/range {v13 .. v17}, Lgnu/kawa/slib/genwrite$frame0;->lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v8, v13

    .local v8, "col":Ljava/lang/Object;
    move-object v7, v12

    goto :goto_0

    .line 120
    .end local v8    # "col":Ljava/lang/Object;
    .end local v11    # "extra":Ljava/lang/Object;
    :cond_0
    sget-object v12, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    goto :goto_1

    .line 122
    .end local v10    # "rest":Ljava/lang/Object;
    :cond_1
    move-object v12, v7

    invoke-static {v12}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 124
    move-object v12, v1

    iget-object v12, v12, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string/jumbo v13, ")"

    move-object v14, v8

    invoke-virtual {v12, v13, v14}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 129
    .line 117
    :goto_2
    move-object v1, v12

    .end local v1    # "this":Lgnu/kawa/slib/genwrite$frame0;
    return-object v1

    .line 126
    .restart local v1    # "this":Lgnu/kawa/slib/genwrite$frame0;
    :cond_2
    move-object v12, v1

    iget-object v12, v12, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string/jumbo v13, ")"

    move-object v14, v1

    move-object v15, v7

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    move-object/from16 v18, v0

    const-string/jumbo v19, "."

    move-object/from16 v20, v1

    move-object/from16 v21, v4

    move-object/from16 v22, v8

    invoke-virtual/range {v20 .. v22}, Lgnu/kawa/slib/genwrite$frame0;->lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lgnu/kawa/slib/genwrite$frame0;->lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    sget-object v17, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 129
    move-object/from16 v18, v5

    sget-object v19, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual/range {v17 .. v19}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v6

    invoke-virtual/range {v14 .. v18}, Lgnu/kawa/slib/genwrite$frame0;->lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_2

    .line 117
    :cond_3
    move-object v12, v8

    goto :goto_2
.end method

.method public lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 43

    .prologue
    .line 132
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/slib/genwrite$frame0;
    move-object/from16 v3, p1

    .local v3, "expr":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "col":Ljava/lang/Object;
    move-object/from16 v5, p3

    .local v5, "extra":Ljava/lang/Object;
    move-object/from16 v6, p4

    .local v6, "named$Qu":Ljava/lang/Object;
    move-object/from16 v7, p5

    .local v7, "pp$Mn1":Ljava/lang/Object;
    move-object/from16 v8, p6

    .local v8, "pp$Mn2":Ljava/lang/Object;
    move-object/from16 v9, p7

    .local v9, "pp$Mn3":Ljava/lang/Object;
    sget-object v36, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v37, v3

    invoke-virtual/range {v36 .. v37}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v10, v36

    .line 154
    .local v10, "head":Ljava/lang/Object;
    sget-object v36, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v37, v3

    invoke-virtual/range {v36 .. v37}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v11, v36

    .line 153
    .local v11, "rest":Ljava/lang/Object;
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    move-object/from16 v36, v0

    move-object/from16 v37, v10

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    move-object/from16 v38, v0

    const-string/jumbo v39, "("

    move-object/from16 v40, v4

    invoke-virtual/range {v38 .. v40}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v12, v36

    .line 156
    .local v12, "col$St":Ljava/lang/Object;
    move-object/from16 v36, v6

    sget-object v37, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_0

    move-object/from16 v36, v11

    invoke-static/range {v36 .. v36}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_7

    .line 157
    :goto_0
    sget-object v36, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v37, v11

    invoke-virtual/range {v36 .. v37}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v13, v36

    .line 158
    .local v13, "name":Ljava/lang/Object;
    sget-object v36, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v37, v11

    invoke-virtual/range {v36 .. v37}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v14, v36

    .line 157
    .end local v11    # "rest":Ljava/lang/Object;
    .local v14, "rest":Ljava/lang/Object;
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    move-object/from16 v36, v0

    move-object/from16 v37, v13

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    move-object/from16 v38, v0

    const-string/jumbo v39, " "

    move-object/from16 v40, v12

    invoke-virtual/range {v38 .. v40}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v15, v36

    .line 160
    .local v15, "col$St$St":Ljava/lang/Object;
    move-object/from16 v36, v14

    sget-object v37, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object/from16 v38, v4

    .line 194
    sget-object v39, Lgnu/kawa/slib/genwrite;->Lit19:Lgnu/math/IntNum;

    invoke-virtual/range {v37 .. v39}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    .line 160
    move-object/from16 v38, v15

    sget-object v39, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object/from16 v40, v15

    sget-object v41, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual/range {v39 .. v41}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .line 134
    move-object/from16 v19, v39

    move-object/from16 v18, v38

    move-object/from16 v17, v37

    move-object/from16 v16, v36

    .end local v13    # "name":Ljava/lang/Object;
    .end local v14    # "rest":Ljava/lang/Object;
    .end local v15    # "col$St$St":Ljava/lang/Object;
    :goto_1
    move-object/from16 v36, v2

    move-object/from16 v20, v36

    .line 135
    .local v20, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    move-object/from16 v36, v7

    sget-object v37, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_1

    move-object/from16 v36, v16

    invoke-static/range {v36 .. v36}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_6

    .line 136
    :goto_2
    sget-object v36, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v37, v16

    invoke-virtual/range {v36 .. v37}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v21, v36

    .line 137
    .local v21, "val1":Ljava/lang/Object;
    sget-object v36, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v37, v16

    invoke-virtual/range {v36 .. v37}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v22, v36

    .line 136
    .local v22, "rest":Ljava/lang/Object;
    move-object/from16 v36, v22

    invoke-static/range {v36 .. v36}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_2

    sget-object v36, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object/from16 v37, v5

    sget-object v38, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual/range {v36 .. v38}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    :goto_3
    move-object/from16 v23, v36

    .line 139
    .end local v5    # "extra":Ljava/lang/Object;
    .local v23, "extra":Ljava/lang/Object;
    move-object/from16 v36, v22

    move-object/from16 v37, v17

    move-object/from16 v38, v2

    move-object/from16 v39, v21

    move-object/from16 v40, v2

    move-object/from16 v41, v19

    move-object/from16 v42, v18

    invoke-virtual/range {v40 .. v42}, Lgnu/kawa/slib/genwrite$frame0;->lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v41, v23

    move-object/from16 v42, v7

    invoke-virtual/range {v38 .. v42}, Lgnu/kawa/slib/genwrite$frame0;->lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v39, v19

    .line 142
    move-object/from16 v27, v39

    move-object/from16 v26, v38

    move-object/from16 v25, v37

    move-object/from16 v24, v36

    .end local v21    # "val1":Ljava/lang/Object;
    .end local v22    # "rest":Ljava/lang/Object;
    .end local v23    # "extra":Ljava/lang/Object;
    :goto_4
    move-object/from16 v36, v2

    move-object/from16 v28, v36

    .line 143
    .end local v20    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .local v28, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    move-object/from16 v36, v8

    sget-object v37, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_3

    move-object/from16 v36, v24

    invoke-static/range {v36 .. v36}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 144
    :goto_5
    sget-object v36, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v37, v24

    invoke-virtual/range {v36 .. v37}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v29, v36

    .line 145
    .local v29, "val1":Ljava/lang/Object;
    sget-object v36, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v37, v24

    invoke-virtual/range {v36 .. v37}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v30, v36

    .line 144
    .local v30, "rest":Ljava/lang/Object;
    move-object/from16 v36, v30

    invoke-static/range {v36 .. v36}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_4

    sget-object v36, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object/from16 v37, v5

    sget-object v38, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual/range {v36 .. v38}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    :goto_6
    move-object/from16 v31, v36

    .line 147
    .local v31, "extra":Ljava/lang/Object;
    move-object/from16 v36, v30

    move-object/from16 v37, v25

    move-object/from16 v38, v2

    move-object/from16 v39, v29

    move-object/from16 v40, v2

    move-object/from16 v41, v27

    move-object/from16 v42, v26

    invoke-virtual/range {v40 .. v42}, Lgnu/kawa/slib/genwrite$frame0;->lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v41, v31

    move-object/from16 v42, v8

    invoke-virtual/range {v38 .. v42}, Lgnu/kawa/slib/genwrite$frame0;->lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .line 150
    move-object/from16 v34, v38

    move-object/from16 v33, v37

    move-object/from16 v32, v36

    .end local v29    # "val1":Ljava/lang/Object;
    .end local v30    # "rest":Ljava/lang/Object;
    .end local v31    # "extra":Ljava/lang/Object;
    :goto_7
    move-object/from16 v36, v2

    move-object/from16 v35, v36

    .line 151
    .end local v28    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .local v35, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    move-object/from16 v36, v2

    move-object/from16 v37, v32

    move-object/from16 v38, v34

    move-object/from16 v39, v33

    move-object/from16 v40, v5

    move-object/from16 v41, v9

    invoke-virtual/range {v36 .. v41}, Lgnu/kawa/slib/genwrite$frame0;->lambda11ppDown(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 148
    .line 140
    .line 161
    move-object/from16 v2, v36

    .end local v2    # "this":Lgnu/kawa/slib/genwrite$frame0;
    return-object v2

    .line 156
    .end local v35    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .restart local v2    # "this":Lgnu/kawa/slib/genwrite$frame0;
    .restart local v5    # "extra":Ljava/lang/Object;
    .restart local v11    # "rest":Ljava/lang/Object;
    :cond_0
    move-object/from16 v36, v6

    sget-object v37, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_7

    goto/16 :goto_0

    .line 135
    .end local v11    # "rest":Ljava/lang/Object;
    .restart local v20    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    :cond_1
    move-object/from16 v36, v7

    sget-object v37, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_6

    goto/16 :goto_2

    .line 136
    .restart local v21    # "val1":Ljava/lang/Object;
    .restart local v22    # "rest":Ljava/lang/Object;
    :cond_2
    sget-object v36, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    goto/16 :goto_3

    .line 143
    .end local v5    # "extra":Ljava/lang/Object;
    .end local v20    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .end local v21    # "val1":Ljava/lang/Object;
    .end local v22    # "rest":Ljava/lang/Object;
    .restart local v28    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    :cond_3
    move-object/from16 v36, v8

    sget-object v37, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_5

    goto/16 :goto_5

    .line 144
    .restart local v29    # "val1":Ljava/lang/Object;
    .restart local v30    # "rest":Ljava/lang/Object;
    :cond_4
    sget-object v36, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    goto :goto_6

    .line 148
    .end local v29    # "val1":Ljava/lang/Object;
    .end local v30    # "rest":Ljava/lang/Object;
    :cond_5
    move-object/from16 v36, v24

    move-object/from16 v37, v25

    move-object/from16 v38, v26

    move-object/from16 v34, v38

    move-object/from16 v33, v37

    move-object/from16 v32, v36

    goto :goto_7

    .line 140
    .end local v28    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .restart local v5    # "extra":Ljava/lang/Object;
    .restart local v20    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    :cond_6
    move-object/from16 v36, v16

    move-object/from16 v37, v17

    move-object/from16 v38, v18

    move-object/from16 v39, v19

    move-object/from16 v27, v39

    move-object/from16 v26, v38

    move-object/from16 v25, v37

    move-object/from16 v24, v36

    goto/16 :goto_4

    .line 161
    .end local v20    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .restart local v11    # "rest":Ljava/lang/Object;
    :cond_7
    move-object/from16 v36, v11

    sget-object v37, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object/from16 v38, v4

    .line 194
    sget-object v39, Lgnu/kawa/slib/genwrite;->Lit19:Lgnu/math/IntNum;

    invoke-virtual/range {v37 .. v39}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    .line 161
    move-object/from16 v38, v12

    sget-object v39, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object/from16 v40, v12

    sget-object v41, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual/range {v39 .. v41}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    move-object/from16 v19, v39

    move-object/from16 v18, v38

    move-object/from16 v17, v37

    move-object/from16 v16, v36

    goto/16 :goto_1
.end method

.method public lambda13ppExprList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/genwrite$frame0;
    move-object v1, p1

    .local v1, "l":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "col":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "extra":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/kawa/slib/genwrite$frame0;->lambda10ppList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    return-object v0
.end method

.method public lambda14pp$MnLAMBDA(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/genwrite$frame0;
    move-object v1, p1

    .local v1, "expr":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "col":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "extra":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual/range {v4 .. v11}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    return-object v0
.end method

.method public lambda15pp$MnIF(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/genwrite$frame0;
    move-object v1, p1

    .local v1, "expr":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "col":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "extra":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual/range {v4 .. v11}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    return-object v0
.end method

.method public lambda16pp$MnCOND(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/genwrite$frame0;
    move-object v1, p1

    .local v1, "expr":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "col":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "extra":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/kawa/slib/genwrite$frame0;->lambda9ppCall(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    return-object v0
.end method

.method public lambda17pp$MnCASE(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/genwrite$frame0;
    move-object v1, p1

    .local v1, "expr":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "col":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "extra":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    invoke-virtual/range {v4 .. v11}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    return-object v0
.end method

.method public lambda18pp$MnAND(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/genwrite$frame0;
    move-object v1, p1

    .local v1, "expr":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "col":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "extra":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/kawa/slib/genwrite$frame0;->lambda9ppCall(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    return-object v0
.end method

.method public lambda19pp$MnLET(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/genwrite$frame0;
    move-object/from16 v1, p1

    .local v1, "expr":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "col":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "extra":Ljava/lang/Object;
    sget-object v7, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 183
    .local v4, "rest":Ljava/lang/Object;
    move-object v7, v4

    invoke-static {v7}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v7

    move v6, v7

    .local v6, "x":Z
    move v7, v6

    if-eqz v7, :cond_0

    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v8, v4

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v7

    :goto_0
    move v5, v7

    .line 184
    .local v5, "named$Qu":Z
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v5

    if-eqz v11, :cond_1

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v14, v0

    iget-object v14, v14, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual/range {v7 .. v14}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    return-object v0

    .line 183
    .end local v5    # "named$Qu":Z
    .restart local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    :cond_0
    move v7, v6

    goto :goto_0

    .line 184
    .restart local v5    # "named$Qu":Z
    :cond_1
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public lambda20pp$MnBEGIN(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/genwrite$frame0;
    move-object v1, p1

    .local v1, "expr":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "col":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "extra":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual/range {v4 .. v11}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    return-object v0
.end method

.method public lambda21pp$MnDO(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/genwrite$frame0;
    move-object v1, p1

    .local v1, "expr":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "col":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "extra":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual/range {v4 .. v11}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    return-object v0
.end method

.method public lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .prologue
    .line 61
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/slib/genwrite$frame0;
    move-object/from16 v1, p1

    .local v1, "to":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "col":Ljava/lang/Object;
    move-object v8, v2

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_4

    sget-object v8, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 63
    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_3

    .line 64
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const/4 v9, 0x1

    sget-object v10, Lgnu/kawa/slib/genwrite;->Lit0:Lgnu/text/Char;

    invoke-static {v9, v10}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    .local v3, "x":Ljava/lang/Object;
    move-object v8, v3

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_2

    move-object v8, v1

    sget-object v9, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    .line 54
    move-object v5, v9

    move-object v4, v8

    .end local v2    # "col":Ljava/lang/Object;
    .end local v3    # "x":Ljava/lang/Object;
    :goto_0
    move-object v8, v0

    move-object v6, v8

    .line 55
    .local v6, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    sget-object v8, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    move-object v9, v4

    sget-object v10, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_1

    .line 56
    sget-object v8, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    move-object v9, v4

    sget-object v10, Lgnu/kawa/slib/genwrite;->Lit15:Lgnu/math/IntNum;

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_0

    .line 57
    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v9, v4

    sget-object v10, Lgnu/kawa/slib/genwrite;->Lit16:Lgnu/math/IntNum;

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string/jumbo v10, "        "

    move-object v11, v5

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    .local v5, "col":Ljava/lang/Object;
    move-object v4, v8

    .local v4, "n":Ljava/lang/Object;
    goto :goto_0

    .line 58
    .end local v4    # "n":Ljava/lang/Object;
    .end local v5    # "col":Ljava/lang/Object;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string/jumbo v9, "        "

    const/4 v10, 0x0

    move-object v11, v4

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v7, v12

    :try_start_0
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    invoke-static {v9, v10, v11}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 55
    .line 64
    .line 65
    .line 62
    .end local v6    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    :goto_1
    move-object v0, v8

    .end local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    return-object v0

    .line 55
    .restart local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    .restart local v6    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    :cond_1
    move-object v8, v5

    goto :goto_1

    .line 64
    .end local v6    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .restart local v2    # "col":Ljava/lang/Object;
    .restart local v3    # "x":Ljava/lang/Object;
    :cond_2
    move-object v8, v3

    goto :goto_1

    .line 65
    .end local v3    # "x":Ljava/lang/Object;
    :cond_3
    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v2

    move-object v5, v9

    move-object v4, v8

    goto :goto_0

    .line 62
    :cond_4
    move-object v8, v2

    goto :goto_1

    .line 58
    .end local v2    # "col":Ljava/lang/Object;
    .restart local v6    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "substring"

    const/4 v12, 0x3

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method public lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .prologue
    .line 67
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/slib/genwrite$frame0;
    move-object/from16 v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "col":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "extra":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "pp$Mnpair":Ljava/lang/Object;
    new-instance v7, Lgnu/kawa/slib/genwrite$frame1;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    invoke-direct {v8}, Lgnu/kawa/slib/genwrite$frame1;-><init>()V

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    iput-object v9, v8, Lgnu/kawa/slib/genwrite$frame1;->staticLink:Lgnu/kawa/slib/genwrite$frame0;

    move-object v5, v7

    .line 68
    move-object v7, v1

    invoke-static {v7}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v7

    move v6, v7

    .local v6, "x":Z
    move v7, v6

    if-eqz v7, :cond_0

    move v7, v6

    if-eqz v7, :cond_3

    .line 69
    :goto_0
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 70
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x0

    sget-object v11, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v12, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v13, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v14, v0

    iget-object v14, v14, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    iget-object v14, v14, Lgnu/kawa/slib/genwrite$frame;->width:Ljava/lang/Object;

    move-object v15, v2

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v3

    invoke-virtual {v12, v13, v14}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x1

    sget-object v11, Lgnu/kawa/slib/genwrite;->Lit18:Lgnu/math/IntNum;

    aput-object v11, v9, v10

    invoke-static {v8}, Lkawa/lib/numbers;->min([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v5

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v16

    iput-object v9, v8, Lgnu/kawa/slib/genwrite$frame1;->left:Ljava/lang/Object;

    move-object v8, v5

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v7, v17

    move-object/from16 v8, v16

    iput-object v8, v7, Lgnu/kawa/slib/genwrite$frame1;->result:Ljava/lang/Object;

    .line 71
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    iget-object v8, v8, Lgnu/kawa/slib/genwrite$frame;->display$Qu:Ljava/lang/Object;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v10, v5

    iget-object v10, v10, Lgnu/kawa/slib/genwrite$frame1;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    invoke-static {v7, v8, v9, v10}, Lgnu/kawa/slib/genwrite;->genericWrite(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v7, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    .line 76
    move-object v8, v5

    iget-object v8, v8, Lgnu/kawa/slib/genwrite$frame1;->left:Ljava/lang/Object;

    sget-object v9, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_1

    .line 77
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    move-object v8, v5

    iget-object v8, v8, Lgnu/kawa/slib/genwrite$frame1;->result:Ljava/lang/Object;

    invoke-static {v8}, Lgnu/kawa/slib/genwrite;->reverseStringAppend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 80
    .line 81
    .end local v6    # "x":Z
    :goto_1
    move-object v0, v7

    .end local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    return-object v0

    .line 68
    .restart local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    .restart local v6    # "x":Z
    :cond_0
    move-object v7, v1

    invoke-static {v7}, Lkawa/lib/vectors;->isVector(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 78
    :cond_1
    move-object v7, v1

    invoke-static {v7}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 79
    sget-object v7, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v8, v4

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 80
    :cond_2
    move-object v7, v0

    move-object v8, v1

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v6, v9

    .end local v6    # "x":Z
    :try_start_0
    check-cast v8, Lgnu/lists/FVector;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v8}, Lkawa/lib/vectors;->vector$To$List(Lgnu/lists/FVector;)Lgnu/lists/LList;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string/jumbo v10, "#"

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/kawa/slib/genwrite$frame0;->lambda10ppList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 81
    .restart local v6    # "x":Z
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 80
    .end local v6    # "x":Z
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

    const-string/jumbo v10, "vector->list"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public lambda8ppExpr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .prologue
    .line 83
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/kawa/slib/genwrite$frame0;
    move-object/from16 v2, p1

    .local v2, "expr":Ljava/lang/Object;
    move-object/from16 v3, p2

    .local v3, "col":Ljava/lang/Object;
    move-object/from16 v4, p3

    .local v4, "extra":Ljava/lang/Object;
    move-object v11, v2

    invoke-static {v11}, Lgnu/kawa/slib/genwrite$frame;->lambda1isReadMacro(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_0

    .line 85
    move-object v11, v1

    move-object v12, v2

    invoke-static {v12}, Lgnu/kawa/slib/genwrite$frame;->lambda2readMacroBody(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v1

    iget-object v13, v13, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    move-object v14, v2

    invoke-static {v14}, Lgnu/kawa/slib/genwrite$frame;->lambda3readMacroPrefix(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v13, v14, v15}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v4

    move-object v15, v1

    iget-object v15, v15, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {v11, v12, v13, v14, v15}, Lgnu/kawa/slib/genwrite$frame0;->lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 98
    :goto_0
    move-object v1, v11

    .end local v1    # "this":Lgnu/kawa/slib/genwrite$frame0;
    return-object v1

    .line 89
    .restart local v1    # "this":Lgnu/kawa/slib/genwrite$frame0;
    :cond_0
    sget-object v11, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v12, v2

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    .line 90
    .local v5, "head":Ljava/lang/Object;
    move-object v11, v5

    invoke-static {v11}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 91
    move-object v11, v5

    .line 200
    move-object v7, v11

    .line 201
    .end local v5    # "head":Ljava/lang/Object;
    .local v7, "head":Ljava/lang/Object;
    sget-object v11, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object v12, v7

    sget-object v13, Lgnu/kawa/slib/genwrite;->Lit2:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    .local v8, "x":Ljava/lang/Object;
    move-object v11, v8

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_1

    move-object v11, v8

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_4

    .line 202
    .end local v8    # "x":Ljava/lang/Object;
    :goto_1
    move-object v11, v1

    iget-object v11, v11, Lgnu/kawa/slib/genwrite$frame0;->pp$MnLAMBDA:Lgnu/mapping/Procedure;

    .line 209
    :goto_2
    move-object v6, v11

    .line 92
    .local v6, "proc":Ljava/lang/Object;
    move-object v11, v6

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_e

    .line 93
    sget-object v11, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v12, v6

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v11, v12, v13, v14, v15}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 97
    .end local v7    # "head":Ljava/lang/Object;
    :goto_3
    goto :goto_0

    .line 201
    .end local v6    # "proc":Ljava/lang/Object;
    .restart local v7    # "head":Ljava/lang/Object;
    .restart local v8    # "x":Ljava/lang/Object;
    :cond_1
    sget-object v11, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object v12, v7

    sget-object v13, Lgnu/kawa/slib/genwrite;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .end local v8    # "x":Ljava/lang/Object;
    .local v9, "x":Ljava/lang/Object;
    move-object v11, v9

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_2

    move-object v11, v9

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_4

    goto :goto_1

    :cond_2
    sget-object v11, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object v12, v7

    sget-object v13, Lgnu/kawa/slib/genwrite;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    .end local v9    # "x":Ljava/lang/Object;
    .local v10, "x":Ljava/lang/Object;
    move-object v11, v10

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_3

    move-object v11, v10

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_4

    goto :goto_1

    :cond_3
    sget-object v11, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object v12, v7

    sget-object v13, Lgnu/kawa/slib/genwrite;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_4

    goto :goto_1

    .line 202
    .end local v10    # "x":Ljava/lang/Object;
    :cond_4
    sget-object v11, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    move-object v12, v7

    sget-object v13, Lgnu/kawa/slib/genwrite;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    .restart local v8    # "x":Ljava/lang/Object;
    move-object v11, v8

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_5

    move-object v11, v8

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_6

    .line 203
    :goto_4
    move-object v11, v1

    iget-object v11, v11, Lgnu/kawa/slib/genwrite$frame0;->pp$MnIF:Lgnu/mapping/Procedure;

    goto :goto_2

    .line 201
    :cond_5
    sget-object v11, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object v12, v7

    sget-object v13, Lgnu/kawa/slib/genwrite;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_6

    goto :goto_4

    .line 203
    :cond_6
    sget-object v11, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    move-object v12, v7

    sget-object v13, Lgnu/kawa/slib/genwrite;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_7

    .line 204
    move-object v11, v1

    iget-object v11, v11, Lgnu/kawa/slib/genwrite$frame0;->pp$MnCOND:Lgnu/mapping/Procedure;

    goto :goto_2

    :cond_7
    sget-object v11, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    move-object v12, v7

    sget-object v13, Lgnu/kawa/slib/genwrite;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_8

    .line 205
    move-object v11, v1

    iget-object v11, v11, Lgnu/kawa/slib/genwrite$frame0;->pp$MnCASE:Lgnu/mapping/Procedure;

    goto/16 :goto_2

    :cond_8
    sget-object v11, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    move-object v12, v7

    sget-object v13, Lgnu/kawa/slib/genwrite;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    move-object v11, v8

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_9

    move-object v11, v8

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_a

    .line 206
    :goto_5
    move-object v11, v1

    iget-object v11, v11, Lgnu/kawa/slib/genwrite$frame0;->pp$MnAND:Lgnu/mapping/Procedure;

    goto/16 :goto_2

    .line 201
    :cond_9
    sget-object v11, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object v12, v7

    sget-object v13, Lgnu/kawa/slib/genwrite;->Lit11:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_a

    goto :goto_5

    .line 206
    :cond_a
    sget-object v11, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    move-object v12, v7

    sget-object v13, Lgnu/kawa/slib/genwrite;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_b

    .line 207
    move-object v11, v1

    iget-object v11, v11, Lgnu/kawa/slib/genwrite$frame0;->pp$MnLET:Lgnu/mapping/Procedure;

    goto/16 :goto_2

    :cond_b
    sget-object v11, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    move-object v12, v7

    sget-object v13, Lgnu/kawa/slib/genwrite;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_c

    .line 208
    move-object v11, v1

    iget-object v11, v11, Lgnu/kawa/slib/genwrite$frame0;->pp$MnBEGIN:Lgnu/mapping/Procedure;

    goto/16 :goto_2

    :cond_c
    sget-object v11, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    move-object v12, v7

    sget-object v13, Lgnu/kawa/slib/genwrite;->Lit14:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v12, :cond_d

    .line 209
    move-object v11, v1

    iget-object v11, v11, Lgnu/kawa/slib/genwrite$frame0;->pp$MnDO:Lgnu/mapping/Procedure;

    goto/16 :goto_2

    :cond_d
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 94
    .end local v8    # "x":Ljava/lang/Object;
    .restart local v6    # "proc":Ljava/lang/Object;
    :cond_e
    move-object v11, v5

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v7, v12

    .end local v7    # "head":Ljava/lang/Object;
    :try_start_0
    check-cast v11, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v11}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v11

    const/4 v12, 0x5

    if-le v11, v12, :cond_f

    .line 96
    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    move-object/from16 v18, v0

    invoke-virtual/range {v11 .. v18}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto/16 :goto_3

    .line 97
    :cond_f
    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v1

    iget-object v15, v15, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {v11, v12, v13, v14, v15}, Lgnu/kawa/slib/genwrite$frame0;->lambda9ppCall(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto/16 :goto_3

    .line 98
    .end local v6    # "proc":Ljava/lang/Object;
    .restart local v5    # "head":Ljava/lang/Object;
    :cond_10
    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v1

    iget-object v15, v15, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {v11, v12, v13, v14, v15}, Lgnu/kawa/slib/genwrite$frame0;->lambda10ppList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto/16 :goto_0

    .line 94
    .end local v5    # "head":Ljava/lang/Object;
    .restart local v6    # "proc":Ljava/lang/Object;
    :catch_0
    move-exception v11

    new-instance v12, Lgnu/mapping/WrongType;

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v11, v20

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v12, v20

    move-object/from16 v13, v19

    const-string/jumbo v14, "symbol->string"

    const/4 v15, 0x1

    move-object/from16 v16, v7

    invoke-direct/range {v12 .. v16}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v11
.end method

.method public lambda9ppCall(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/genwrite$frame0;
    move-object v1, p1

    .local v1, "expr":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "col":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "extra":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "pp$Mnitem":Ljava/lang/Object;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string/jumbo v9, "("

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 105
    .local v5, "col$St":Ljava/lang/Object;
    move-object v6, v2

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_0

    move-object v6, v0

    sget-object v7, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 106
    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v5

    sget-object v9, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v10, v5

    sget-object v11, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v3

    move-object v11, v4

    invoke-virtual/range {v6 .. v11}, Lgnu/kawa/slib/genwrite$frame0;->lambda11ppDown(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 105
    :goto_0
    move-object v0, v6

    .end local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    :cond_0
    move-object v6, v2

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

    packed-switch v6, :pswitch_data_0

    .line 83
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    .line 189
    :goto_0
    return v0

    :pswitch_0
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

    goto :goto_0

    .line 186
    :pswitch_1
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

    goto :goto_0

    .line 181
    :pswitch_2
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

    goto :goto_0

    .line 178
    :pswitch_3
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

    goto :goto_0

    .line 175
    :pswitch_4
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

    goto :goto_0

    .line 172
    :pswitch_5
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

    goto/16 :goto_0

    .line 169
    :pswitch_6
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

    goto/16 :goto_0

    .line 166
    :pswitch_7
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

    goto/16 :goto_0

    .line 163
    :pswitch_8
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

    goto/16 :goto_0

    .line 83
    :pswitch_9
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

    goto/16 :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
