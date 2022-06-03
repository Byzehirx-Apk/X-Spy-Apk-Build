.class public Lkawa/lib/srfi95$frame1;
.super Lgnu/expr/ModuleBody;
.source "srfi95.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/srfi95;->sort$ClMerge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame1"
.end annotation


# instance fields
.field key:Ljava/lang/Object;

.field less$Qu:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .prologue
    .line 89
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/lib/srfi95$frame1;
    move-object/from16 v1, p1

    .local v1, "r":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "a":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "kcara":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "b":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "kcarb":Ljava/lang/Object;
    sget-object v7, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v8, v0

    iget-object v8, v8, Lkawa/lib/srfi95$frame1;->less$Qu:Ljava/lang/Object;

    move-object v9, v5

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_1

    .line 91
    move-object v7, v1

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v6, v8

    :try_start_0
    check-cast v7, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v4

    invoke-static {v7, v8}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object v7, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 92
    move-object v8, v4

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 93
    move-object v7, v4

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v6, v8

    :try_start_1
    check-cast v7, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v2

    invoke-static {v7, v8}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 94
    .line 99
    :goto_0
    move-object v0, v7

    .end local v0    # "this":Lkawa/lib/srfi95$frame1;
    return-object v0

    .line 94
    .restart local v0    # "this":Lkawa/lib/srfi95$frame1;
    :cond_0
    move-object v7, v0

    move-object v8, v4

    move-object v9, v2

    move-object v10, v3

    sget-object v11, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v12, v4

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v13, v0

    iget-object v13, v13, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v14, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object v15, v4

    invoke-virtual {v14, v15}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual/range {v7 .. v12}, Lkawa/lib/srfi95$frame1;->lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 96
    :cond_1
    move-object v7, v1

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v6, v8

    :try_start_2
    check-cast v7, Lgnu/lists/Pair;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v2

    invoke-static {v7, v8}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object v7, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 97
    move-object v8, v2

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 98
    move-object v7, v2

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v6, v8

    :try_start_3
    check-cast v7, Lgnu/lists/Pair;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v8, v4

    invoke-static {v7, v8}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 99
    :cond_2
    move-object v7, v0

    move-object v8, v2

    sget-object v9, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v10, v2

    invoke-virtual {v9, v10}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v0

    iget-object v11, v11, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v12, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object v13, v2

    invoke-virtual {v12, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v4

    move-object v12, v5

    invoke-virtual/range {v7 .. v12}, Lkawa/lib/srfi95$frame1;->lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 91
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

    const-string/jumbo v10, "set-cdr!"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 93
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

    const-string/jumbo v10, "set-cdr!"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 96
    :catch_2
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

    const-string/jumbo v10, "set-cdr!"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 98
    :catch_3
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

    const-string/jumbo v10, "set-cdr!"

    const/4 v11, 0x1

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method
