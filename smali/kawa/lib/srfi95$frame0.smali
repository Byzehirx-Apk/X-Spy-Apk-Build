.class public Lkawa/lib/srfi95$frame0;
.super Lgnu/expr/ModuleBody;
.source "srfi95.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation


# instance fields
.field keyer:Ljava/lang/Object;

.field less$Qu:Ljava/lang/Object;

.field seq:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda2step(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lkawa/lib/srfi95$frame0;
    move-object v1, p1

    .local v1, "n":Ljava/lang/Object;
    sget-object v6, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    move-object v7, v1

    sget-object v8, Lkawa/lib/srfi95;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_0

    sget-object v6, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    move-object v7, v1

    sget-object v8, Lkawa/lib/srfi95;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 128
    .local v2, "j":Ljava/lang/Object;
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lkawa/lib/srfi95$frame0;->lambda2step(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 127
    .local v3, "a":Ljava/lang/Object;
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .local v4, "k":Ljava/lang/Object;
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Lkawa/lib/srfi95$frame0;->lambda2step(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 131
    .local v5, "b":Ljava/lang/Object;
    move-object v6, v3

    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Lkawa/lib/srfi95$frame0;->less$Qu:Ljava/lang/Object;

    move-object v9, v0

    iget-object v9, v9, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lkawa/lib/srfi95;->sort$ClMerge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 144
    .end local v2    # "j":Ljava/lang/Object;
    .end local v3    # "a":Ljava/lang/Object;
    .end local v4    # "k":Ljava/lang/Object;
    .end local v5    # "b":Ljava/lang/Object;
    :goto_0
    move-object v0, v6

    .end local v0    # "this":Lkawa/lib/srfi95$frame0;
    return-object v0

    .line 131
    .restart local v0    # "this":Lkawa/lib/srfi95$frame0;
    :cond_0
    sget-object v6, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 132
    move-object v7, v1

    sget-object v8, Lkawa/lib/srfi95;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_2

    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v7, v0

    iget-object v7, v7, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 133
    sget-object v7, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object v8, v0

    iget-object v8, v8, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 134
    move-object v8, v0

    iget-object v8, v8, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    move-object v4, v8

    .local v4, "p":Ljava/lang/Object;
    move-object v3, v7

    .local v3, "y":Ljava/lang/Object;
    move-object v2, v6

    .line 135
    .local v2, "x":Ljava/lang/Object;
    move-object v6, v0

    sget-object v7, Lkawa/lib/lists;->cddr:Lgnu/expr/GenericProc;

    move-object v8, v0

    iget-object v8, v8, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v6, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    sget-object v6, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 136
    move-object v7, v0

    iget-object v7, v7, Lkawa/lib/srfi95$frame0;->less$Qu:Ljava/lang/Object;

    sget-object v8, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v9, v0

    iget-object v9, v9, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v10, v0

    iget-object v10, v10, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_1

    .line 137
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    :try_start_0
    check-cast v6, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v3

    invoke-static {v6, v7}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 138
    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    :try_start_1
    check-cast v6, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v2

    invoke-static {v6, v7}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 139
    :cond_1
    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    :try_start_2
    check-cast v6, Lgnu/lists/Pair;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v6, v7}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 140
    move-object v6, v4

    goto/16 :goto_0

    .end local v2    # "x":Ljava/lang/Object;
    .end local v3    # "y":Ljava/lang/Object;
    .end local v4    # "p":Ljava/lang/Object;
    :cond_2
    sget-object v6, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 141
    move-object v7, v1

    sget-object v8, Lkawa/lib/srfi95;->Lit2:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    move-object v2, v6

    .line 142
    .local v2, "p":Ljava/lang/Object;
    move-object v6, v0

    sget-object v7, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v8, v0

    iget-object v8, v8, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v6, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 143
    move-object v6, v2

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v3, v7

    :try_start_3
    check-cast v6, Lgnu/lists/Pair;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v6, v7}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 144
    move-object v6, v2

    goto/16 :goto_0

    .end local v2    # "p":Ljava/lang/Object;
    :cond_3
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto/16 :goto_0

    .line 137
    .local v2, "x":Ljava/lang/Object;
    .restart local v3    # "y":Ljava/lang/Object;
    .restart local v4    # "p":Ljava/lang/Object;
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "set-car!"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 138
    :catch_1
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "set-car!"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 139
    :catch_2
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "set-cdr!"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 143
    .end local v3    # "y":Ljava/lang/Object;
    .end local v4    # "p":Ljava/lang/Object;
    .local v2, "p":Ljava/lang/Object;
    :catch_3
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "set-cdr!"

    const/4 v10, 0x1

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method
