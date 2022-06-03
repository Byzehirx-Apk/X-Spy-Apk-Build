.class public Lkawa/lang/Eval;
.super Lgnu/mapping/Procedure1or2;
.source "Eval.java"


# static fields
.field public static final eval:Lkawa/lang/Eval;

.field static final evalFunctionName:Ljava/lang/String; = "atEvalLevel$"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lkawa/lang/Eval;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/lang/Eval;-><init>()V

    sput-object v0, Lkawa/lang/Eval;->eval:Lkawa/lang/Eval;

    .line 15
    sget-object v0, Lkawa/lang/Eval;->eval:Lkawa/lang/Eval;

    const-string/jumbo v1, "eval"

    invoke-virtual {v0, v1}, Lkawa/lang/Eval;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Eval;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure1or2;-><init>()V

    return-void
.end method

.method public static eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "sexpr":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v5

    move-object v2, v5

    .line 56
    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v5

    move v3, v5

    .line 59
    .local v3, "oldIndex":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    :try_start_0
    invoke-static {v5, v6, v7}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V

    .line 60
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    .end local v0    # "sexpr":Ljava/lang/Object;
    return-object v0

    .line 62
    .restart local v0    # "sexpr":Ljava/lang/Object;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 64
    .local v4, "ex":Ljava/lang/Throwable;
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 65
    move-object v5, v4

    throw v5
.end method

.method public static eval(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "sexpr":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v0

    instance-of v4, v4, Lgnu/lists/PairWithPosition;

    if-eqz v4, :cond_0

    .line 24
    new-instance v4, Lgnu/lists/PairWithPosition;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    check-cast v6, Lgnu/lists/PairWithPosition;

    move-object v7, v0

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v5, v6, v7, v8}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    .line 31
    .local v3, "body":Lgnu/lists/PairWithPosition;
    :goto_0
    move-object v4, v3

    move-object v5, v1

    new-instance v6, Lgnu/text/SourceMessages;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lgnu/text/SourceMessages;-><init>()V

    move-object v7, v2

    invoke-static {v4, v5, v6, v7}, Lkawa/lang/Eval;->evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;Lgnu/mapping/CallContext;)V

    .line 32
    return-void

    .line 28
    .end local v3    # "body":Lgnu/lists/PairWithPosition;
    :cond_0
    new-instance v4, Lgnu/lists/PairWithPosition;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v5, v6, v7}, Lgnu/lists/PairWithPosition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    .line 29
    .restart local v3    # "body":Lgnu/lists/PairWithPosition;
    move-object v4, v3

    const-string/jumbo v5, "<eval>"

    invoke-virtual {v4, v5}, Lgnu/lists/PairWithPosition;->setFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "body":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v6

    move-object v3, v6

    .line 39
    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v6

    move v4, v6

    .line 42
    .local v4, "oldIndex":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    :try_start_0
    invoke-static {v6, v7, v8, v9}, Lkawa/lang/Eval;->evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;Lgnu/mapping/CallContext;)V

    .line 43
    move-object v6, v3

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .end local v0    # "body":Ljava/lang/Object;
    return-object v0

    .line 45
    .restart local v0    # "body":Ljava/lang/Object;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 47
    .local v5, "ex":Ljava/lang/Throwable;
    move-object v6, v3

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 48
    move-object v6, v5

    throw v6
.end method

.method public static evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;Lgnu/mapping/CallContext;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 73
    move-object/from16 v0, p0

    .local v0, "body":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    move-object/from16 v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object/from16 v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v12

    move-object v4, v12

    .line 74
    .local v4, "language":Lgnu/expr/Language;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v12

    move-object v5, v12

    .line 77
    .local v5, "saveGlobalEnv":Lgnu/mapping/Environment;
    move-object v12, v1

    move-object v13, v5

    if-eq v12, v13, :cond_0

    .line 78
    move-object v12, v1

    :try_start_0
    invoke-static {v12}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 79
    :cond_0
    new-instance v12, Lkawa/lang/Translator;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v4

    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    invoke-static/range {v16 .. v17}, Lgnu/expr/NameLookup;->getInstance(Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/NameLookup;

    move-result-object v16

    invoke-direct/range {v13 .. v16}, Lkawa/lang/Translator;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    move-object v6, v12

    .line 81
    .local v6, "tr":Lkawa/lang/Translator;
    move-object v12, v6

    const/4 v13, 0x1

    iput-boolean v13, v12, Lkawa/lang/Translator;->immediate:Z

    .line 84
    move-object v12, v6

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lkawa/lang/Translator;->setState(I)V

    .line 85
    move-object v12, v6

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lkawa/lang/Translator;->setSharedModuleDefs(Z)V

    .line 86
    move-object v12, v6

    const/4 v13, 0x0

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Lkawa/lang/Translator;->pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;

    move-result-object v12

    move-object v7, v12

    .line 87
    .local v7, "mod":Lgnu/expr/ModuleExp;
    move-object v12, v6

    invoke-static {v12}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    move-object v8, v12

    .line 90
    .local v8, "saveComp":Lgnu/expr/Compilation;
    move-object v12, v6

    :try_start_1
    iget-object v12, v12, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    move v9, v12

    .line 91
    .local v9, "first":I
    move-object v12, v6

    move-object v13, v0

    move-object v14, v7

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object v12

    .line 92
    move-object v12, v6

    move v13, v9

    iput v13, v12, Lkawa/lang/Translator;->firstForm:I

    .line 93
    move-object v12, v6

    move-object v13, v7

    invoke-virtual {v12, v13}, Lkawa/lang/Translator;->finishModule(Lgnu/expr/ModuleExp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    move-object v12, v8

    :try_start_2
    invoke-static {v12}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 98
    .line 100
    move-object v12, v0

    instance-of v12, v12, Lgnu/lists/PairWithPosition;

    if-eqz v12, :cond_1

    .line 101
    move-object v12, v7

    move-object v13, v0

    check-cast v13, Lgnu/lists/PairWithPosition;

    invoke-virtual {v13}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgnu/expr/ModuleExp;->setFile(Ljava/lang/String;)V

    .line 102
    :cond_1
    move-object v12, v7

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "atEvalLevel$"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lgnu/expr/ModuleExp;->interactiveCounter:I

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v18, v14

    move/from16 v14, v18

    move/from16 v15, v18

    sput v15, Lgnu/expr/ModuleExp;->interactiveCounter:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 103
    move-object v12, v1

    move-object v13, v3

    move-object v14, v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z

    move-result v12

    .line 104
    move-object v12, v2

    invoke-virtual {v12}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 105
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "invalid syntax in eval form:\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    const/16 v16, 0x14

    invoke-virtual/range {v15 .. v16}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local v6    # "tr":Lkawa/lang/Translator;
    .end local v7    # "mod":Lgnu/expr/ModuleExp;
    .end local v8    # "saveComp":Lgnu/expr/Compilation;
    .end local v9    # "first":I
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v1

    move-object v13, v5

    if-eq v12, v13, :cond_2

    .line 111
    move-object v12, v5

    invoke-static {v12}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    :cond_2
    move-object v12, v11

    throw v12

    .line 97
    .restart local v6    # "tr":Lkawa/lang/Translator;
    .restart local v7    # "mod":Lgnu/expr/ModuleExp;
    .restart local v8    # "saveComp":Lgnu/expr/Compilation;
    :catchall_1
    move-exception v12

    move-object v10, v12

    move-object v12, v8

    :try_start_3
    invoke-static {v12}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    move-object v12, v10

    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    .restart local v9    # "first":I
    :cond_3
    move-object v12, v1

    move-object v13, v5

    if-eq v12, v13, :cond_4

    .line 111
    move-object v12, v5

    invoke-static {v12}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 113
    :cond_4
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Eval;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lgnu/mapping/CallContext;->count:I

    invoke-static {v4, v5}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 131
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 133
    .local v2, "exp":Ljava/lang/Object;
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/Environment;

    move-object v3, v4

    .line 134
    .local v3, "env":Lgnu/mapping/Environment;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 135
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v4

    move-object v3, v4

    .line 136
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/CallContext;->lastArg()V

    .line 137
    move-object v4, v2

    move-object v5, v3

    move-object v6, v1

    invoke-static {v4, v5, v6}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V

    .line 138
    return-void
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Eval;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, v1

    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v3

    invoke-static {v2, v3}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lkawa/lang/Eval;
    return-object v0
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Eval;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Lgnu/mapping/Environment;

    invoke-static {v3, v4}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lkawa/lang/Eval;
    return-object v0
.end method
