.class public Lgnu/mapping/RunnableClosure;
.super Ljava/lang/Object;
.source "RunnableClosure.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static nrunnables:I


# instance fields
.field action:Lgnu/mapping/Procedure;

.field context:Lgnu/mapping/CallContext;

.field private err:Lgnu/mapping/OutPort;

.field exception:Ljava/lang/Throwable;

.field private in:Lgnu/mapping/InPort;

.field name:Ljava/lang/String;

.field private out:Lgnu/mapping/OutPort;

.field result:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput v0, Lgnu/mapping/RunnableClosure;->nrunnables:I

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/RunnableClosure;
    move-object v1, p1

    .local v1, "action":Lgnu/mapping/Procedure;
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    .locals 9

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/RunnableClosure;
    move-object v1, p1

    .local v1, "action":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "parentContext":Lgnu/mapping/CallContext;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "r"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lgnu/mapping/RunnableClosure;->nrunnables:I

    move v8, v5

    move v5, v8

    move v6, v8

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    sput v6, Lgnu/mapping/RunnableClosure;->nrunnables:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/RunnableClosure;->setName(Ljava/lang/String;)V

    .line 38
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/RunnableClosure;->action:Lgnu/mapping/Procedure;

    .line 39
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V
    .locals 8

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/RunnableClosure;
    move-object v1, p1

    .local v1, "action":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "in":Lgnu/mapping/InPort;
    move-object v3, p3

    .local v3, "out":Lgnu/mapping/OutPort;
    move-object v4, p4

    .local v4, "err":Lgnu/mapping/OutPort;
    move-object v5, v0

    move-object v6, v1

    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V

    .line 45
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/RunnableClosure;->in:Lgnu/mapping/InPort;

    .line 46
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/RunnableClosure;->out:Lgnu/mapping/OutPort;

    .line 47
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/mapping/RunnableClosure;->err:Lgnu/mapping/OutPort;

    .line 48
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/RunnableClosure;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/RunnableClosure;->run()V

    .line 101
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/RunnableClosure;->exception:Ljava/lang/Throwable;

    move-object v1, v2

    .line 102
    .local v1, "ex":Ljava/lang/Throwable;
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 104
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Exception;

    if-eqz v2, :cond_0

    .line 105
    move-object v2, v1

    check-cast v2, Ljava/lang/Exception;

    throw v2

    .line 106
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Error;

    if-eqz v2, :cond_1

    .line 107
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 109
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 111
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/RunnableClosure;->result:Ljava/lang/Object;

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/RunnableClosure;
    return-object v0
.end method

.method public final getCallContext()Lgnu/mapping/CallContext;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/RunnableClosure;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/RunnableClosure;->context:Lgnu/mapping/CallContext;

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/RunnableClosure;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/RunnableClosure;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/RunnableClosure;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/RunnableClosure;
    return-object v0
.end method

.method getResult()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/RunnableClosure;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/RunnableClosure;->exception:Ljava/lang/Throwable;

    move-object v1, v2

    .line 92
    .local v1, "ex":Ljava/lang/Throwable;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 93
    move-object v2, v1

    throw v2

    .line 94
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/RunnableClosure;->result:Ljava/lang/Object;

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/RunnableClosure;
    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/RunnableClosure;
    :try_start_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v3

    move-object v1, v3

    .line 63
    .local v1, "env":Lgnu/mapping/Environment;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/RunnableClosure;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 64
    .local v2, "name":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/Environment;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    .line 66
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/mapping/Environment;->setName(Ljava/lang/String;)V

    .line 68
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/RunnableClosure;->context:Lgnu/mapping/CallContext;

    if-nez v3, :cond_4

    .line 69
    move-object v3, v0

    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v4

    iput-object v4, v3, Lgnu/mapping/RunnableClosure;->context:Lgnu/mapping/CallContext;

    .line 72
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/RunnableClosure;->in:Lgnu/mapping/InPort;

    if-eqz v3, :cond_1

    .line 73
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/RunnableClosure;->in:Lgnu/mapping/InPort;

    invoke-static {v3}, Lgnu/mapping/InPort;->setInDefault(Lgnu/mapping/InPort;)V

    .line 74
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/RunnableClosure;->out:Lgnu/mapping/OutPort;

    if-eqz v3, :cond_2

    .line 75
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/RunnableClosure;->out:Lgnu/mapping/OutPort;

    invoke-static {v3}, Lgnu/mapping/OutPort;->setOutDefault(Lgnu/mapping/OutPort;)V

    .line 76
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/RunnableClosure;->err:Lgnu/mapping/OutPort;

    if-eqz v3, :cond_3

    .line 77
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/RunnableClosure;->err:Lgnu/mapping/OutPort;

    invoke-static {v3}, Lgnu/mapping/OutPort;->setErrDefault(Lgnu/mapping/OutPort;)V

    .line 78
    :cond_3
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/RunnableClosure;->action:Lgnu/mapping/Procedure;

    invoke-virtual {v4}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lgnu/mapping/RunnableClosure;->result:Ljava/lang/Object;

    .line 83
    .line 84
    .end local v1    # "env":Lgnu/mapping/Environment;
    .end local v2    # "name":Ljava/lang/String;
    :goto_1
    return-void

    .line 71
    .restart local v1    # "env":Lgnu/mapping/Environment;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/RunnableClosure;->context:Lgnu/mapping/CallContext;

    invoke-static {v3}, Lgnu/mapping/CallContext;->setInstance(Lgnu/mapping/CallContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v1    # "env":Lgnu/mapping/Environment;
    .end local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 82
    .local v1, "ex":Ljava/lang/Throwable;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/RunnableClosure;->exception:Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/RunnableClosure;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/mapping/RunnableClosure;->name:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/RunnableClosure;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 116
    .local v1, "buf":Ljava/lang/StringBuffer;
    move-object v2, v1

    const-string/jumbo v3, "#<runnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 117
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/RunnableClosure;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 118
    move-object v2, v1

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 119
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/RunnableClosure;
    return-object v0
.end method
