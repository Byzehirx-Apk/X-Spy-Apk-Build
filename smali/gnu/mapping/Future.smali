.class public Lgnu/mapping/Future;
.super Ljava/lang/Thread;
.source "Future.java"


# instance fields
.field public closure:Lgnu/mapping/RunnableClosure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Future;
    move-object v1, p1

    .local v1, "action":Lgnu/mapping/Procedure;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Thread;-><init>()V

    .line 21
    move-object v2, v0

    new-instance v3, Lgnu/mapping/RunnableClosure;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;)V

    iput-object v3, v2, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    .line 22
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    .locals 9

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Future;
    move-object v1, p1

    .local v1, "action":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "parentContext":Lgnu/mapping/CallContext;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Thread;-><init>()V

    .line 10
    move-object v3, v0

    new-instance v4, Lgnu/mapping/RunnableClosure;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V

    iput-object v4, v3, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    .line 11
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V
    .locals 13

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Future;
    move-object v1, p1

    .local v1, "action":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "in":Lgnu/mapping/InPort;
    move-object/from16 v3, p3

    .local v3, "out":Lgnu/mapping/OutPort;
    move-object/from16 v4, p4

    .local v4, "err":Lgnu/mapping/OutPort;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Thread;-><init>()V

    .line 16
    move-object v5, v0

    new-instance v6, Lgnu/mapping/RunnableClosure;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V

    iput-object v6, v5, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    .line 17
    return-void
.end method

.method public static make(Lgnu/mapping/Procedure;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)Lgnu/mapping/Future;
    .locals 15

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "action":Lgnu/mapping/Procedure;
    move-object/from16 v1, p1

    .local v1, "penvironment":Lgnu/mapping/Environment;
    move-object/from16 v2, p2

    .local v2, "in":Lgnu/mapping/InPort;
    move-object/from16 v3, p3

    .local v3, "out":Lgnu/mapping/OutPort;
    move-object/from16 v4, p4

    .local v4, "err":Lgnu/mapping/OutPort;
    move-object v8, v1

    invoke-static {v8}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v8

    move-object v5, v8

    .line 30
    .local v5, "saveEnv":Lgnu/mapping/Environment;
    :try_start_0
    new-instance v8, Lgnu/mapping/Future;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/Future;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v8

    .line 34
    move-object v8, v5

    invoke-static {v8}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    move-object v8, v6

    move-object v0, v8

    .end local v0    # "action":Lgnu/mapping/Procedure;
    return-object v0

    .restart local v0    # "action":Lgnu/mapping/Procedure;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v5

    invoke-static {v8}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    move-object v8, v7

    throw v8
.end method


# virtual methods
.method public final getCallContext()Lgnu/mapping/CallContext;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Future;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    invoke-virtual {v1}, Lgnu/mapping/RunnableClosure;->getCallContext()Lgnu/mapping/CallContext;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Future;
    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Future;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    invoke-virtual {v1}, Lgnu/mapping/RunnableClosure;->run()V

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Future;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 65
    .local v1, "buf":Ljava/lang/StringBuffer;
    move-object v2, v1

    const-string/jumbo v3, "#<future "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 66
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/Future;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 67
    move-object v2, v1

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 68
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Future;
    return-object v0
.end method

.method public waitForResult()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Future;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lgnu/mapping/Future;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    iget-object v2, v2, Lgnu/mapping/RunnableClosure;->exception:Ljava/lang/Throwable;

    move-object v1, v2

    .line 58
    .local v1, "ex":Ljava/lang/Throwable;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 59
    move-object v2, v1

    throw v2

    .line 53
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 55
    .local v1, "ex":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "thread join [force] was interrupted"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    .local v1, "ex":Ljava/lang/Throwable;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    iget-object v2, v2, Lgnu/mapping/RunnableClosure;->result:Ljava/lang/Object;

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Future;
    return-object v0
.end method
