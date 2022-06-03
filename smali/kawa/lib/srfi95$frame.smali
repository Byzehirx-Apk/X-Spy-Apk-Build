.class public Lkawa/lib/srfi95$frame;
.super Lgnu/expr/ModuleBody;
.source "srfi95.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/srfi95;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
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
.method public lambda1loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 79
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/lib/srfi95$frame;
    move-object/from16 v1, p1

    .local v1, "x":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "kx":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "a":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "y":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "ky":Ljava/lang/Object;
    move-object/from16 v6, p6

    .local v6, "b":Ljava/lang/Object;
    sget-object v7, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v8, v0

    iget-object v8, v8, Lkawa/lib/srfi95$frame;->less$Qu:Ljava/lang/Object;

    move-object v9, v5

    move-object v10, v2

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_1

    .line 80
    move-object v7, v6

    invoke-static {v7}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 81
    move-object v7, v4

    move-object v8, v1

    move-object v9, v3

    invoke-static {v8, v9}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    .line 82
    .line 86
    :goto_0
    move-object v0, v7

    .end local v0    # "this":Lkawa/lib/srfi95$frame;
    return-object v0

    .line 82
    .restart local v0    # "this":Lkawa/lib/srfi95$frame;
    :cond_0
    move-object v7, v4

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    sget-object v12, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v13, v6

    invoke-virtual {v12, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v14, v0

    iget-object v14, v14, Lkawa/lib/srfi95$frame;->key:Ljava/lang/Object;

    sget-object v15, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v15, v6

    invoke-virtual {v14, v15}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual/range {v8 .. v14}, Lkawa/lib/srfi95$frame;->lambda1loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    goto :goto_0

    .line 84
    :cond_1
    move-object v7, v3

    invoke-static {v7}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 85
    move-object v7, v1

    move-object v8, v4

    move-object v9, v6

    invoke-static {v8, v9}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    goto :goto_0

    .line 86
    :cond_2
    move-object v7, v1

    move-object v8, v0

    sget-object v9, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v10, v3

    invoke-virtual {v9, v10}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v11, v0

    iget-object v11, v11, Lkawa/lib/srfi95$frame;->key:Ljava/lang/Object;

    sget-object v12, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v13, v3

    invoke-virtual {v12, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v12, v3

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-virtual/range {v8 .. v14}, Lkawa/lib/srfi95$frame;->lambda1loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    goto :goto_0
.end method
