.class public Lgnu/expr/CompiledModule;
.super Ljava/lang/Object;
.source "CompiledModule.java"


# instance fields
.field cookie:Ljava/lang/Object;

.field language:Lgnu/expr/Language;

.field mexp:Lgnu/expr/ModuleExp;


# direct methods
.method public constructor <init>(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/expr/Language;)V
    .locals 6

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CompiledModule;
    move-object v1, p1

    .local v1, "mexp":Lgnu/expr/ModuleExp;
    move-object v2, p2

    .local v2, "cookie":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "language":Lgnu/expr/Language;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/expr/CompiledModule;->mexp:Lgnu/expr/ModuleExp;

    .line 23
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/expr/CompiledModule;->cookie:Ljava/lang/Object;

    .line 24
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/expr/CompiledModule;->language:Lgnu/expr/Language;

    .line 25
    return-void
.end method

.method public static make(Ljava/lang/Class;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;
    .locals 8

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "clas":Ljava/lang/Class;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    new-instance v2, Lgnu/expr/CompiledModule;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lgnu/expr/CompiledModule;-><init>(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/expr/Language;)V

    move-object v0, v2

    .end local v0    # "clas":Ljava/lang/Class;
    return-object v0
.end method


# virtual methods
.method public evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CompiledModule;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/CompiledModule;->language:Lgnu/expr/Language;

    invoke-static {v6}, Lgnu/expr/Language;->setSaveCurrent(Lgnu/expr/Language;)Lgnu/expr/Language;

    move-result-object v6

    move-object v3, v6

    .line 38
    .local v3, "saveLang":Lgnu/expr/Language;
    move-object v6, v1

    invoke-static {v6}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v6

    move-object v4, v6

    .line 41
    .local v4, "saveEnv":Lgnu/mapping/Environment;
    move-object v6, v1

    move-object v7, v2

    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lgnu/expr/CompiledModule;->language:Lgnu/expr/Language;

    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/CompiledModule;->mexp:Lgnu/expr/ModuleExp;

    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/CompiledModule;->cookie:Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9, v10}, Lgnu/expr/ModuleExp;->evalModule2(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Language;Lgnu/expr/ModuleExp;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    move-object v6, v3

    invoke-static {v6}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    .line 46
    move-object v6, v4

    invoke-static {v6}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 47
    .line 48
    return-void

    .line 45
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    invoke-static {v6}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    .line 46
    move-object v6, v4

    invoke-static {v6}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    move-object v6, v5

    throw v6
.end method

.method public evalModule(Lgnu/mapping/Environment;Lgnu/mapping/OutPort;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CompiledModule;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    move-object v2, p2

    .local v2, "out":Lgnu/mapping/OutPort;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v8

    move-object v3, v8

    .line 54
    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v8, v3

    iget-object v8, v8, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v4, v8

    .line 55
    .local v4, "saveConsumer":Lgnu/lists/Consumer;
    invoke-static {}, Lgnu/expr/ModuleBody;->getMainPrintValues()Z

    move-result v8

    move v5, v8

    .line 56
    .local v5, "print":Z
    move-object v8, v2

    iget-object v8, v8, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move-object v6, v8

    .line 57
    .local v6, "saveFormat":Lgnu/lists/AbstractFormat;
    move-object v8, v3

    move v9, v5

    if-eqz v9, :cond_1

    move-object v9, v2

    invoke-static {v9}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v9

    :goto_0
    iput-object v9, v8, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 60
    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    :try_start_0
    invoke-virtual {v8, v9, v10}, Lgnu/expr/CompiledModule;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    move-object v8, v3

    iget-object v8, v8, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    instance-of v8, v8, Ljava/io/Writer;

    if-eqz v8, :cond_0

    .line 65
    move-object v8, v3

    iget-object v8, v8, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    check-cast v8, Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 67
    :cond_0
    move-object v8, v3

    move-object v9, v4

    iput-object v9, v8, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 68
    move-object v8, v2

    move-object v9, v6

    iput-object v9, v8, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 69
    .line 70
    return-void

    .line 57
    :cond_1
    new-instance v9, Lgnu/lists/VoidConsumer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Lgnu/lists/VoidConsumer;-><init>()V

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v3

    iget-object v8, v8, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    instance-of v8, v8, Ljava/io/Writer;

    if-eqz v8, :cond_2

    .line 65
    move-object v8, v3

    iget-object v8, v8, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    check-cast v8, Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 67
    :cond_2
    move-object v8, v3

    move-object v9, v4

    iput-object v9, v8, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 68
    move-object v8, v2

    move-object v9, v6

    iput-object v9, v8, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move-object v8, v7

    throw v8
.end method

.method public evalToResultValue(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CompiledModule;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v5

    move v3, v5

    .line 80
    .local v3, "oldIndex":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    :try_start_0
    invoke-virtual {v5, v6, v7}, Lgnu/expr/CompiledModule;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V

    .line 81
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/CompiledModule;
    return-object v0

    .line 83
    .restart local v0    # "this":Lgnu/expr/CompiledModule;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 85
    .local v4, "ex":Ljava/lang/Throwable;
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 86
    move-object v5, v4

    throw v5
.end method
