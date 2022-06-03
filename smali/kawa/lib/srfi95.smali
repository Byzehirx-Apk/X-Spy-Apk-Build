.class public Lkawa/lib/srfi95;
.super Lgnu/expr/ModuleBody;
.source "srfi95.scm"


# static fields
.field public static final $Pcsort$Mnlist:Lgnu/expr/ModuleMethod;

.field public static final $Pcsort$Mnvector:Lgnu/expr/ModuleMethod;

.field public static final $Pcvector$Mnsort$Ex:Lgnu/expr/ModuleMethod;

.field public static final $instance:Lkawa/lib/srfi95;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/math/IntNum;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/math/IntNum;

.field static final Lit3:Lgnu/math/IntNum;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field static final identity:Lgnu/expr/ModuleMethod;

.field public static final merge:Lgnu/expr/ModuleMethod;

.field public static final merge$Ex:Lgnu/expr/ModuleMethod;

.field public static final sort:Lgnu/expr/ModuleMethod;

.field public static final sort$Ex:Lgnu/expr/ModuleMethod;

.field public static final sorted$Qu:Lgnu/expr/ModuleMethod;


# direct methods
.method public static $PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "seq":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "isLess":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "key":Ljava/lang/Object;
    new-instance v7, Lkawa/lib/srfi95$frame0;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lkawa/lib/srfi95$frame0;-><init>()V

    move-object v3, v7

    move-object v7, v3

    move-object v8, v0

    iput-object v8, v7, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    move-object v7, v3

    move-object v8, v1

    iput-object v8, v7, Lkawa/lib/srfi95$frame0;->less$Qu:Ljava/lang/Object;

    .line 125
    sget-object v7, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    .line 126
    move-object v8, v3

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    iput-object v8, v7, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    .line 125
    move-object v7, v3

    move-object v8, v2

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_0

    sget-object v8, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    :goto_0
    iput-object v8, v7, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    move-object v7, v2

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_3

    .line 155
    move-object v7, v3

    iget-object v7, v7, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 146
    move-object v4, v7

    .line 147
    .local v4, "lst":Ljava/lang/Object;
    :goto_1
    move-object v7, v4

    invoke-static {v7}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v7

    move v5, v7

    .local v5, "x":Z
    move v7, v5

    if-eqz v7, :cond_1

    .line 156
    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    iget-object v9, v9, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v4, v10

    .end local v4    # "lst":Ljava/lang/Object;
    :try_start_0
    check-cast v9, Lgnu/lists/LList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v9}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lkawa/lib/srfi95$frame0;->lambda2step(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v7, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 157
    move-object v7, v3

    iget-object v7, v7, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 150
    move-object v4, v7

    .line 151
    .restart local v4    # "lst":Ljava/lang/Object;
    :goto_2
    move-object v7, v4

    invoke-static {v7}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v7

    move v5, v7

    move v7, v5

    if-eqz v7, :cond_2

    .line 158
    move-object v7, v3

    iget-object v7, v7, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 160
    .end local v4    # "lst":Ljava/lang/Object;
    .end local v5    # "x":Z
    :goto_3
    move-object v0, v7

    .end local v0    # "seq":Ljava/lang/Object;
    return-object v0

    .line 125
    .restart local v0    # "seq":Ljava/lang/Object;
    :cond_0
    sget-object v8, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    goto :goto_0

    .line 148
    .restart local v4    # "lst":Ljava/lang/Object;
    .restart local v5    # "x":Z
    :cond_1
    move-object v7, v4

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v6, v8

    :try_start_1
    check-cast v7, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    sget-object v8, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v9, v2

    sget-object v10, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v11, v4

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 149
    sget-object v7, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v8, v4

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    goto :goto_1

    .line 152
    :cond_2
    move-object v7, v4

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v6, v8

    :try_start_2
    check-cast v7, Lgnu/lists/Pair;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    sget-object v8, Lkawa/lib/lists;->cdar:Lgnu/expr/GenericProc;

    move-object v9, v4

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 153
    sget-object v7, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v8, v4

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    goto :goto_2

    .line 160
    .end local v4    # "lst":Ljava/lang/Object;
    .end local v5    # "x":Z
    :cond_3
    move-object v7, v3

    move-object v8, v3

    iget-object v8, v8, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v4, v9

    :try_start_3
    check-cast v8, Lgnu/lists/LList;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {v8}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkawa/lib/srfi95$frame0;->lambda2step(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_3

    .line 148
    .restart local v4    # "lst":Ljava/lang/Object;
    .restart local v5    # "x":Z
    :catch_0
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    move-object v9, v14

    move-object v13, v8

    move-object v14, v9

    move-object v8, v14

    move-object v9, v13

    const-string/jumbo v10, "set-car!"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 156
    .end local v4    # "lst":Ljava/lang/Object;
    :catch_1
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    move-object v9, v14

    move-object v13, v8

    move-object v14, v9

    move-object v8, v14

    move-object v9, v13

    const-string/jumbo v10, "length"

    const/4 v11, 0x1

    move-object v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 152
    .restart local v4    # "lst":Ljava/lang/Object;
    :catch_2
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    move-object v9, v14

    move-object v13, v8

    move-object v14, v9

    move-object v8, v14

    move-object v9, v13

    const-string/jumbo v10, "set-car!"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 160
    .end local v4    # "lst":Ljava/lang/Object;
    .end local v5    # "x":Z
    :catch_3
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    move-object v9, v14

    move-object v13, v8

    move-object v14, v9

    move-object v8, v14

    move-object v9, v13

    const-string/jumbo v10, "length"

    const/4 v11, 0x1

    move-object v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public static $PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3, v4}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static $PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 16

    .prologue
    .line 196
    move-object/from16 v0, p0

    .local v0, "seq":Lgnu/lists/Sequence;
    move-object/from16 v1, p1

    .local v1, "less$Qu":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "key":Ljava/lang/Object;
    move-object v8, v0

    invoke-interface {v8}, Lgnu/lists/Sequence;->size()I

    move-result v8

    move v3, v8

    .line 198
    .local v3, "dim":I
    move v8, v3

    invoke-static {v8}, Lkawa/lib/vectors;->makeVector(I)Lgnu/lists/FVector;

    move-result-object v8

    move-object v4, v8

    .line 199
    .local v4, "newra":Lgnu/lists/FVector;
    move-object v8, v0

    invoke-static {v8}, Lkawa/lib/srfi95;->rank$Mn1Array$To$List(Lgnu/lists/Sequence;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v1

    move-object v10, v2

    invoke-static {v8, v9, v10}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lkawa/lib/srfi95;->Lit3:Lgnu/math/IntNum;

    move-object v6, v9

    move-object v5, v8

    .local v5, "sorted":Ljava/lang/Object;
    :goto_0
    move-object v8, v5

    invoke-static {v8}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 203
    move-object v8, v4

    move-object v9, v6

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v7, v10

    :try_start_0
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    sget-object v10, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v11, v5

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lkawa/lib/vectors;->vectorSet$Ex(Lgnu/lists/FVector;ILjava/lang/Object;)V

    .line 200
    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v9, v5

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 201
    sget-object v9, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v10, v6

    sget-object v11, Lkawa/lib/srfi95;->Lit2:Lgnu/math/IntNum;

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    .local v6, "i":Ljava/lang/Object;
    move-object v5, v8

    goto :goto_0

    .line 199
    .end local v6    # "i":Ljava/lang/Object;
    :cond_0
    return-void

    .line 203
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

    const-string/jumbo v11, "vector-set!"

    const/4 v12, 0x1

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method public static $PcVectorSort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "seq":Lgnu/lists/Sequence;
    move-object v1, p1

    .local v1, "less$Qu":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "key":Ljava/lang/Object;
    move-object v5, v0

    invoke-static {v5}, Lkawa/lib/srfi95;->rank$Mn1Array$To$List(Lgnu/lists/Sequence;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkawa/lib/srfi95;->Lit3:Lgnu/math/IntNum;

    move-object v4, v6

    move-object v3, v5

    .local v3, "sorted":Ljava/lang/Object;
    :goto_0
    move-object v5, v3

    invoke-static {v5}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 194
    move-object v5, v0

    move-object v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v8, v3

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lgnu/lists/Sequence;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 191
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 192
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v7, v4

    sget-object v8, Lkawa/lib/srfi95;->Lit2:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .local v4, "i":Ljava/lang/Object;
    move-object v3, v5

    goto :goto_0

    .line 190
    .end local v4    # "i":Ljava/lang/Object;
    :cond_0
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "seq":Lgnu/lists/Sequence;
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 8

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "sort"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/srfi95;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "%sort-vector"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/srfi95;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "%vector-sort!"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/srfi95;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "sort!"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/srfi95;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "%sort-list"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/srfi95;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "merge!"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/srfi95;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "merge"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/srfi95;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "sorted?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/srfi95;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "identity"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/srfi95;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v1, 0x0

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/srfi95;->Lit3:Lgnu/math/IntNum;

    const/4 v1, 0x1

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/srfi95;->Lit2:Lgnu/math/IntNum;

    const/4 v1, 0x2

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/srfi95;->Lit1:Lgnu/math/IntNum;

    const/4 v1, -0x1

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/srfi95;->Lit0:Lgnu/math/IntNum;

    new-instance v1, Lkawa/lib/srfi95;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    invoke-direct {v2}, Lkawa/lib/srfi95;-><init>()V

    sput-object v1, Lkawa/lib/srfi95;->$instance:Lkawa/lib/srfi95;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    sget-object v3, Lkawa/lib/srfi95;->$instance:Lkawa/lib/srfi95;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x1

    sget-object v5, Lkawa/lib/srfi95;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x2

    sget-object v5, Lkawa/lib/srfi95;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/srfi95;->sorted$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x4

    sget-object v5, Lkawa/lib/srfi95;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x4003

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/srfi95;->merge:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x6

    sget-object v5, Lkawa/lib/srfi95;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x4003

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/srfi95;->merge$Ex:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x8

    sget-object v5, Lkawa/lib/srfi95;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3003

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/srfi95;->$Pcsort$Mnlist:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x9

    sget-object v5, Lkawa/lib/srfi95;->Lit9:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/srfi95;->sort$Ex:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xb

    sget-object v5, Lkawa/lib/srfi95;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3003

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/srfi95;->$Pcvector$Mnsort$Ex:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xc

    sget-object v5, Lkawa/lib/srfi95;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/srfi95;->$Pcsort$Mnvector:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xe

    sget-object v5, Lkawa/lib/srfi95;->Lit12:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/srfi95;->sort:Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/srfi95;->$instance:Lkawa/lib/srfi95;

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

.method static identity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "x":Ljava/lang/Object;
    return-object v0
.end method

.method public static isSorted(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    invoke-static {v2, v3, v4}, Lkawa/lib/srfi95;->isSorted(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static isSorted(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .prologue
    .line 44
    move-object/from16 v0, p0

    .local v0, "seq":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "less$Qu":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "key":Ljava/lang/Object;
    move-object v11, v0

    invoke-static {v11}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 62
    :goto_0
    move-object v0, v11

    .end local v0    # "seq":Ljava/lang/Object;
    return-object v0

    .line 46
    .restart local v0    # "seq":Ljava/lang/Object;
    :cond_0
    move-object v11, v0

    instance-of v11, v11, Lgnu/lists/Sequence;

    if-eqz v11, :cond_7

    .line 47
    move-object v11, v0

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v4, v12

    :try_start_0
    check-cast v11, Lgnu/lists/Sequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v11

    .line 48
    .local v3, "arr":Lgnu/lists/Sequence;
    const/4 v11, -0x1

    move-object v12, v3

    invoke-interface {v12}, Lgnu/lists/Sequence;->size()I

    move-result v12

    add-int/2addr v11, v12

    move v4, v11

    .line 49
    .local v4, "dimax":I
    move v11, v4

    const/4 v12, 0x1

    if-gt v11, v12, :cond_1

    const/4 v11, 0x1

    :goto_1
    move v5, v11

    .local v5, "x":Z
    move v11, v5

    if-eqz v11, :cond_3

    move v11, v5

    if-eqz v11, :cond_2

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    .end local v5    # "x":Z
    :goto_2
    goto :goto_0

    .line 49
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .restart local v5    # "x":Z
    :cond_2
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 50
    :cond_3
    const/4 v11, -0x1

    move v12, v4

    add-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 51
    sget-object v12, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v13, v2

    move-object v14, v3

    move v15, v4

    invoke-interface {v14, v15}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v7, v12

    move-object v6, v11

    .line 52
    .end local v5    # "x":Z
    :goto_3
    move-object v11, v6

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v9, v12

    :try_start_1
    invoke-static {v11}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    invoke-static {v11}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v11

    move v8, v11

    .local v8, "x":Z
    move v11, v8

    if-eqz v11, :cond_5

    move v11, v8

    if-eqz v11, :cond_4

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    goto :goto_2

    :cond_4
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    .line 53
    :cond_5
    sget-object v11, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v12, v2

    move-object v13, v3

    move-object v14, v6

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object v10, v15

    :try_start_2
    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v14

    invoke-interface {v13, v14}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 54
    .local v9, "nxt":Ljava/lang/Object;
    sget-object v11, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v12, v1

    move-object v13, v9

    move-object v14, v7

    invoke-virtual {v11, v12, v13, v14}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    .local v10, "x":Ljava/lang/Object;
    move-object v11, v10

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v8    # "x":Z
    if-eq v11, v12, :cond_6

    .line 55
    sget-object v11, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v12, Lkawa/lib/srfi95;->Lit0:Lgnu/math/IntNum;

    move-object v13, v6

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v9

    move-object v7, v12

    .local v7, "last":Ljava/lang/Object;
    move-object v6, v11

    .local v6, "idx":Ljava/lang/Object;
    goto :goto_3

    .line 54
    .end local v6    # "idx":Ljava/lang/Object;
    .end local v7    # "last":Ljava/lang/Object;
    :cond_6
    move-object v11, v10

    goto :goto_2

    .end local v3    # "arr":Lgnu/lists/Sequence;
    .end local v4    # "dimax":I
    .end local v9    # "nxt":Ljava/lang/Object;
    .end local v10    # "x":Ljava/lang/Object;
    :cond_7
    sget-object v11, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 56
    move-object v12, v0

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 58
    :cond_8
    sget-object v11, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v12, v2

    sget-object v13, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 59
    sget-object v12, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v13, v0

    invoke-virtual {v12, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v4, v12

    move-object v3, v11

    .line 60
    .local v3, "last":Ljava/lang/Object;
    :goto_5
    move-object v11, v4

    invoke-static {v11}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v11

    move v5, v11

    .restart local v5    # "x":Z
    move v11, v5

    if-eqz v11, :cond_a

    move v11, v5

    if-eqz v11, :cond_9

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_6
    goto/16 :goto_0

    :cond_9
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    .line 61
    :cond_a
    sget-object v11, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v12, v2

    sget-object v13, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v14, v4

    invoke-virtual {v13, v14}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    .line 62
    .local v6, "nxt":Ljava/lang/Object;
    sget-object v11, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v12, v1

    move-object v13, v6

    move-object v14, v3

    invoke-virtual {v11, v12, v13, v14}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v8, v12

    :try_start_3
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    if-eq v11, v12, :cond_b

    const/4 v11, 0x1

    :goto_7
    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    and-int/lit8 v11, v11, 0x1

    move v7, v11

    .end local v5    # "x":Z
    .local v7, "x":Z
    move v11, v7

    if-eqz v11, :cond_c

    .line 63
    move-object v11, v6

    sget-object v12, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v13, v4

    invoke-virtual {v12, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v4, v12

    .local v4, "next":Ljava/lang/Object;
    move-object v3, v11

    goto :goto_5

    .line 62
    .end local v4    # "next":Ljava/lang/Object;
    .end local v7    # "x":Z
    .restart local v5    # "x":Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_7

    .end local v5    # "x":Z
    .restart local v7    # "x":Z
    :cond_c
    move v11, v7

    if-eqz v11, :cond_d

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_d
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 47
    .end local v3    # "last":Ljava/lang/Object;
    .end local v6    # "nxt":Ljava/lang/Object;
    .end local v7    # "x":Z
    :catch_0
    move-exception v11

    new-instance v12, Lgnu/mapping/WrongType;

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v12, v18

    move-object/from16 v13, v17

    const-string/jumbo v14, "arr"

    const/4 v15, -0x2

    move-object/from16 v16, v4

    invoke-direct/range {v12 .. v16}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v11

    .line 52
    .local v3, "arr":Lgnu/lists/Sequence;
    .local v4, "dimax":I
    :catch_1
    move-exception v11

    new-instance v12, Lgnu/mapping/WrongType;

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v12, v18

    move-object/from16 v13, v17

    const-string/jumbo v14, "negative?"

    const/4 v15, 0x1

    move-object/from16 v16, v9

    invoke-direct/range {v12 .. v16}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v11

    .line 53
    .restart local v8    # "x":Z
    :catch_2
    move-exception v11

    new-instance v12, Lgnu/mapping/WrongType;

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v12, v18

    move-object/from16 v13, v17

    const-string/jumbo v14, "gnu.lists.Sequence.get(int)"

    const/4 v15, 0x2

    move-object/from16 v16, v10

    invoke-direct/range {v12 .. v16}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v11

    .line 62
    .end local v4    # "dimax":I
    .end local v8    # "x":Z
    .local v3, "last":Ljava/lang/Object;
    .restart local v5    # "x":Z
    .restart local v6    # "nxt":Ljava/lang/Object;
    :catch_3
    move-exception v11

    new-instance v12, Lgnu/mapping/WrongType;

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v12, v18

    move-object/from16 v13, v17

    const-string/jumbo v14, "x"

    const/4 v15, -0x2

    move-object/from16 v16, v8

    invoke-direct/range {v12 .. v16}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v11
.end method

.method public static merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget-object v6, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    invoke-static {v3, v4, v5, v6}, Lkawa/lib/srfi95;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "a":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "b":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "isLess":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "key":Ljava/lang/Object;
    new-instance v5, Lkawa/lib/srfi95$frame;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    invoke-direct {v6}, Lkawa/lib/srfi95$frame;-><init>()V

    move-object v4, v5

    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lkawa/lib/srfi95$frame;->less$Qu:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lkawa/lib/srfi95$frame;->key:Ljava/lang/Object;

    .line 72
    move-object v5, v0

    invoke-static {v5}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 76
    :goto_0
    move-object v0, v5

    .end local v0    # "a":Ljava/lang/Object;
    return-object v0

    .line 72
    .restart local v0    # "a":Ljava/lang/Object;
    :cond_0
    move-object v5, v1

    invoke-static {v5}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    move-object v5, v0

    goto :goto_0

    .line 75
    :cond_1
    move-object v5, v4

    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v8, v4

    iget-object v8, v8, Lkawa/lib/srfi95$frame;->key:Ljava/lang/Object;

    sget-object v9, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v9, v0

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 76
    move-object v10, v1

    invoke-virtual {v9, v10}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v4

    iget-object v11, v11, Lkawa/lib/srfi95$frame;->key:Ljava/lang/Object;

    sget-object v12, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v13, v1

    invoke-virtual {v12, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v12, v1

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual/range {v5 .. v11}, Lkawa/lib/srfi95$frame;->lambda1loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0
.end method

.method public static merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget-object v6, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    invoke-static {v3, v4, v5, v6}, Lkawa/lib/srfi95;->merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "a":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "b":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "less$Qu":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "key":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lkawa/lib/srfi95;->sort$ClMerge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "a":Ljava/lang/Object;
    return-object v0
.end method

.method static rank$Mn1Array$To$List(Lgnu/lists/Sequence;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "seq":Lgnu/lists/Sequence;
    move-object v3, v0

    invoke-interface {v3}, Lgnu/lists/Sequence;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v2, v4

    move v1, v3

    .line 165
    .local v1, "idx":I
    :goto_0
    move v3, v1

    if-gez v3, :cond_0

    move-object v3, v2

    .line 166
    move-object v0, v3

    .end local v0    # "seq":Lgnu/lists/Sequence;
    return-object v0

    .restart local v0    # "seq":Lgnu/lists/Sequence;
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-interface {v3, v4}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v2

    invoke-static {v3, v4}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    move-object v2, v3

    .local v2, "lst":Lgnu/lists/Pair;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static sort(Lgnu/lists/Sequence;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3, v4}, Lkawa/lib/srfi95;->sort(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static sort(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "seq":Lgnu/lists/Sequence;
    move-object v1, p1

    .local v1, "less$Qu":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "key":Ljava/lang/Object;
    move-object v3, v0

    invoke-static {v3}, Lkawa/lib/lists;->isList(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v6, v4, v5

    invoke-static {v3}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 216
    :goto_0
    move-object v0, v3

    .end local v0    # "seq":Lgnu/lists/Sequence;
    return-object v0

    .restart local v0    # "seq":Lgnu/lists/Sequence;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0
.end method

.method static sort$ClMerge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .prologue
    .line 88
    move-object/from16 v0, p0

    .local v0, "a":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "b":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "isLess":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "key":Ljava/lang/Object;
    new-instance v8, Lkawa/lib/srfi95$frame1;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Lkawa/lib/srfi95$frame1;-><init>()V

    move-object v4, v8

    move-object v8, v4

    move-object v9, v2

    iput-object v9, v8, Lkawa/lib/srfi95$frame1;->less$Qu:Ljava/lang/Object;

    move-object v8, v4

    move-object v9, v3

    iput-object v9, v8, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    .line 89
    move-object v8, v0

    invoke-static {v8}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 100
    move-object v8, v1

    .line 115
    :goto_0
    move-object v0, v8

    .end local v0    # "a":Ljava/lang/Object;
    return-object v0

    .line 100
    .restart local v0    # "a":Ljava/lang/Object;
    :cond_0
    move-object v8, v1

    invoke-static {v8}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 101
    move-object v8, v0

    goto :goto_0

    .line 103
    :cond_1
    sget-object v8, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v9, v4

    iget-object v9, v9, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v10, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v11, v0

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 104
    sget-object v9, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v10, v4

    iget-object v10, v10, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v11, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v12, v1

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    .local v6, "kcarb":Ljava/lang/Object;
    move-object v5, v8

    .line 105
    .local v5, "kcara":Ljava/lang/Object;
    sget-object v8, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 106
    move-object v9, v4

    iget-object v9, v9, Lkawa/lib/srfi95$frame1;->less$Qu:Ljava/lang/Object;

    move-object v10, v6

    move-object v11, v5

    invoke-virtual {v8, v9, v10, v11}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_3

    .line 107
    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v9, v1

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 108
    move-object v8, v1

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v7, v9

    :try_start_0
    check-cast v8, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    invoke-static {v8, v9}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 110
    :goto_1
    move-object v8, v1

    goto :goto_0

    .line 109
    :cond_2
    move-object v8, v4

    move-object v9, v1

    move-object v10, v0

    move-object v11, v5

    sget-object v12, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v13, v1

    invoke-virtual {v12, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v14, v4

    iget-object v14, v14, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v15, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual/range {v8 .. v13}, Lkawa/lib/srfi95$frame1;->lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 112
    :cond_3
    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v9, v0

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 113
    move-object v8, v0

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v7, v9

    :try_start_1
    check-cast v8, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v1

    invoke-static {v8, v9}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 115
    :goto_2
    move-object v8, v0

    goto/16 :goto_0

    .line 114
    :cond_4
    move-object v8, v4

    move-object v9, v0

    sget-object v10, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v11, v0

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v12, v4

    iget-object v12, v12, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v13, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v1

    move-object v13, v6

    invoke-virtual/range {v8 .. v13}, Lkawa/lib/srfi95$frame1;->lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    .line 108
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v8, v18

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v9, v18

    move-object/from16 v10, v17

    const-string/jumbo v11, "set-cdr!"

    const/4 v12, 0x1

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 113
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v8, v18

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v9, v18

    move-object/from16 v10, v17

    const-string/jumbo v11, "set-cdr!"

    const/4 v12, 0x1

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method public static sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3, v4}, Lkawa/lib/srfi95;->sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .prologue
    .line 175
    move-object/from16 v0, p0

    .local v0, "seq":Lgnu/lists/Sequence;
    move-object/from16 v1, p1

    .local v1, "less$Qu":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "key":Ljava/lang/Object;
    move-object v8, v0

    invoke-static {v8}, Lkawa/lib/lists;->isList(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 177
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-static {v8, v9, v10}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    .line 178
    .local v3, "ret":Ljava/lang/Object;
    move-object v8, v3

    move-object v9, v0

    if-eq v8, v9, :cond_1

    .line 179
    move-object v8, v3

    move-object v4, v8

    .local v4, "crt":Ljava/lang/Object;
    :goto_0
    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 180
    move-object v9, v4

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v0

    if-eq v8, v9, :cond_0

    .line 179
    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v9, v4

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    goto :goto_0

    .line 181
    :cond_0
    move-object v8, v4

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v5, v9

    :try_start_0
    check-cast v8, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v3

    invoke-static {v8, v9}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 182
    sget-object v8, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v9, v0

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    .local v6, "scdr":Ljava/lang/Object;
    move-object v5, v8

    .line 183
    .local v5, "scar":Ljava/lang/Object;
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v7, v9

    :try_start_1
    check-cast v8, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v9, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v10, v3

    invoke-virtual {v9, v10}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v7, v9

    :try_start_2
    check-cast v8, Lgnu/lists/Pair;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    sget-object v9, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v10, v3

    invoke-virtual {v9, v10}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 184
    move-object v8, v3

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v7, v9

    :try_start_3
    check-cast v8, Lgnu/lists/Pair;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v9, v5

    invoke-static {v8, v9}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    move-object v8, v3

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v7, v9

    :try_start_4
    check-cast v8, Lgnu/lists/Pair;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v9, v6

    invoke-static {v8, v9}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 185
    .end local v4    # "crt":Ljava/lang/Object;
    .end local v5    # "scar":Ljava/lang/Object;
    .end local v6    # "scdr":Ljava/lang/Object;
    :cond_1
    move-object v8, v0

    .line 187
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_1
    move-object v0, v8

    .end local v0    # "seq":Lgnu/lists/Sequence;
    return-object v0

    .restart local v0    # "seq":Lgnu/lists/Sequence;
    :cond_2
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-static {v8, v9, v10}, Lkawa/lib/srfi95;->$PcVectorSort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 181
    .restart local v3    # "ret":Ljava/lang/Object;
    .restart local v4    # "crt":Ljava/lang/Object;
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

    const-string/jumbo v11, "set-cdr!"

    const/4 v12, 0x1

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 183
    .restart local v5    # "scar":Ljava/lang/Object;
    .restart local v6    # "scdr":Ljava/lang/Object;
    :catch_1
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

    const-string/jumbo v11, "set-car!"

    const/4 v12, 0x1

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_2
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

    const-string/jumbo v11, "set-cdr!"

    const/4 v12, 0x1

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 184
    :catch_3
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

    const-string/jumbo v11, "set-car!"

    const/4 v12, 0x1

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_4
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

    const-string/jumbo v11, "set-cdr!"

    const/4 v12, 0x1

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
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

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 34
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/srfi95;->identity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 4294967295
    .line 34
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
    .locals 12

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v4, :sswitch_data_0

    .line 212
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 44
    :sswitch_0
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lkawa/lib/srfi95;->isSorted(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 175
    :sswitch_1
    move-object v4, v2

    :try_start_0
    check-cast v4, Lgnu/lists/Sequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    invoke-static {v4, v5}, Lkawa/lib/srfi95;->sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 196
    :sswitch_2
    move-object v4, v2

    :try_start_1
    check-cast v4, Lgnu/lists/Sequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v3

    invoke-static {v4, v5}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;)V

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    goto :goto_0

    .line 212
    :sswitch_3
    move-object v4, v2

    :try_start_2
    check-cast v4, Lgnu/lists/Sequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v3

    invoke-static {v4, v5}, Lkawa/lib/srfi95;->sort(Lgnu/lists/Sequence;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 175
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "sort!"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 196
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "%sort-vector"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 212
    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "sort"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_1
        0xc -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v5, :pswitch_data_0

    .line 212
    :pswitch_0
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

    .line 44
    :pswitch_1
    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lkawa/lib/srfi95;->isSorted(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 71
    :pswitch_2
    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lkawa/lib/srfi95;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 121
    :pswitch_3
    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lkawa/lib/srfi95;->merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 124
    :pswitch_4
    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 175
    :pswitch_5
    move-object v5, v2

    :try_start_0
    check-cast v5, Lgnu/lists/Sequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lkawa/lib/srfi95;->sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 189
    :pswitch_6
    move-object v5, v2

    :try_start_1
    check-cast v5, Lgnu/lists/Sequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lkawa/lib/srfi95;->$PcVectorSort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 196
    :pswitch_7
    move-object v5, v2

    :try_start_2
    check-cast v5, Lgnu/lists/Sequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v5

    goto :goto_0

    .line 212
    :pswitch_8
    move-object v5, v2

    :try_start_3
    check-cast v5, Lgnu/lists/Sequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lkawa/lib/srfi95;->sort(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 175
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

    const-string/jumbo v8, "sort!"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 189
    :catch_1
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

    const-string/jumbo v8, "%vector-sort!"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 196
    :catch_2
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

    const-string/jumbo v8, "%sort-vector"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 212
    :catch_3
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

    const-string/jumbo v8, "sort"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 121
    :pswitch_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    :goto_0
    return-object v0

    .line 71
    :pswitch_1
    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    move-object v9, v5

    invoke-static {v6, v7, v8, v9}, Lkawa/lib/srfi95;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 121
    :pswitch_2
    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    move-object v9, v5

    invoke-static {v6, v7, v8, v9}, Lkawa/lib/srfi95;->merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
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

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 34
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
    .line 34
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
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v5, :sswitch_data_0

    .line 44
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    .line 212
    :goto_0
    return v0

    :sswitch_0
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/lists/Sequence;

    if-nez v7, :cond_0

    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    :cond_0
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

    goto :goto_0

    .line 196
    :sswitch_1
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/lists/Sequence;

    if-nez v7, :cond_1

    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    :cond_1
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

    goto :goto_0

    .line 175
    :sswitch_2
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/lists/Sequence;

    if-nez v7, :cond_2

    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    :cond_2
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

    goto :goto_0

    .line 44
    :sswitch_3
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

    goto :goto_0

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x9 -> :sswitch_2
        0xc -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v1

    iget v6, v6, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v6, :pswitch_data_0

    .line 44
    :pswitch_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    .line 212
    :goto_0
    return v0

    :pswitch_1
    move-object v6, v5

    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/lists/Sequence;

    if-nez v8, :cond_0

    const v8, -0xbffff

    move v0, v8

    goto :goto_0

    :cond_0
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

    .line 196
    :pswitch_2
    move-object v6, v5

    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/lists/Sequence;

    if-nez v8, :cond_1

    const v8, -0xbffff

    move v0, v8

    goto :goto_0

    :cond_1
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

    .line 189
    :pswitch_3
    move-object v6, v5

    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/lists/Sequence;

    if-nez v8, :cond_2

    const v8, -0xbffff

    move v0, v8

    goto :goto_0

    :cond_2
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

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/lists/Sequence;

    if-nez v8, :cond_3

    const v8, -0xbffff

    move v0, v8

    goto :goto_0

    :cond_3
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

    .line 124
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

    .line 121
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

    .line 71
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

    .line 44
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

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 14

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v1

    iget v7, v7, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v7, :pswitch_data_0

    .line 71
    :pswitch_0
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-super/range {v7 .. v13}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    .line 121
    :goto_0
    return v0

    :pswitch_1
    move-object v7, v6

    move-object v8, v2

    iput-object v8, v7, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v3

    iput-object v8, v7, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v4

    iput-object v8, v7, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v5

    iput-object v8, v7, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v1

    iput-object v8, v7, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v7, v6

    const/4 v8, 0x4

    iput v8, v7, Lgnu/mapping/CallContext;->pc:I

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 71
    :pswitch_2
    move-object v7, v6

    move-object v8, v2

    iput-object v8, v7, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v3

    iput-object v8, v7, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v4

    iput-object v8, v7, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v5

    iput-object v8, v7, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v1

    iput-object v8, v7, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v7, v6

    const/4 v8, 0x4

    iput v8, v7, Lgnu/mapping/CallContext;->pc:I

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lkawa/lib/srfi95;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 34
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
