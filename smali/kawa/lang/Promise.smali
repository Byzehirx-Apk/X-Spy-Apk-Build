.class public Lkawa/lang/Promise;
.super Ljava/lang/Object;
.source "Promise.java"

# interfaces
.implements Lgnu/text/Printable;


# instance fields
.field result:Ljava/lang/Object;

.field thunk:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Promise;
    move-object v1, p1

    .local v1, "thunk":Lgnu/mapping/Procedure;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/lang/Promise;->thunk:Lgnu/mapping/Procedure;

    .line 21
    return-void
.end method

.method public static force(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lkawa/lang/Promise;

    if-eqz v1, :cond_0

    .line 37
    move-object v1, v0

    check-cast v1, Lkawa/lang/Promise;

    invoke-virtual {v1}, Lkawa/lang/Promise;->force()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 44
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 38
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Lgnu/mapping/Future;

    if-eqz v1, :cond_1

    .line 39
    move-object v1, v0

    check-cast v1, Lgnu/mapping/Future;

    invoke-virtual {v1}, Lgnu/mapping/Future;->waitForResult()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 41
    :cond_1
    move-object v1, v0

    instance-of v1, v1, Ljava/util/concurrent/Future;

    if-eqz v1, :cond_2

    .line 42
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 44
    :cond_2
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public force()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Promise;
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 27
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/Promise;->thunk:Lgnu/mapping/Procedure;

    invoke-virtual {v2}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 28
    .local v1, "x":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 29
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    .line 31
    .end local v1    # "x":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    move-object v0, v2

    .end local v0    # "this":Lkawa/lang/Promise;
    return-object v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Promise;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 50
    move-object v2, v1

    const-string/jumbo v3, "#<promise - not forced yet>"

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "#<promise - forced to a "

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 54
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 55
    move-object v2, v1

    const/16 v3, 0x3e

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_0
.end method
