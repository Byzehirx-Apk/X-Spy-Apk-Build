.class public Lgnu/text/WriterManager;
.super Ljava/lang/Object;
.source "WriterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final instance:Lgnu/text/WriterManager;


# instance fields
.field first:Lgnu/text/WriterRef;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lgnu/text/WriterManager;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/text/WriterManager;-><init>()V

    sput-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/text/WriterManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized register(Ljava/io/Writer;)Lgnu/text/WriterRef;
    .locals 9

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/text/WriterManager;
    move-object v1, p1

    .local v1, "port":Ljava/io/Writer;
    move-object v7, p0

    monitor-enter v7

    :try_start_0
    new-instance v4, Lgnu/text/WriterRef;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/text/WriterRef;-><init>(Ljava/io/Writer;)V

    move-object v2, v4

    .line 26
    .local v2, "ref":Lgnu/text/WriterRef;
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;

    move-object v3, v4

    .line 27
    .local v3, "first":Lgnu/text/WriterRef;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 29
    move-object v4, v2

    move-object v5, v3

    iget-object v5, v5, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    iput-object v5, v4, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    .line 30
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/text/WriterRef;->prev:Lgnu/text/WriterRef;

    .line 32
    :cond_0
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lgnu/text/WriterManager;
    monitor-exit v7

    return-object v0

    .line 25
    .end local v2    # "ref":Lgnu/text/WriterRef;
    .end local v3    # "first":Lgnu/text/WriterRef;
    .restart local v0    # "this":Lgnu/text/WriterManager;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lgnu/text/WriterManager;
    throw v0
.end method

.method public registerShutdownHook()Z
    .locals 13

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lgnu/text/WriterManager;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    move-object v1, v6

    .line 82
    .local v1, "runtime":Ljava/lang/Runtime;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v2, v6

    .line 83
    .local v2, "rclass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const-class v9, Ljava/lang/Thread;

    aput-object v9, v7, v8

    move-object v3, v6

    .line 84
    .local v3, "params":[Ljava/lang/Class;
    move-object v6, v2

    const-string/jumbo v7, "addShutdownHook"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v4, v6

    .line 86
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Thread;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v0

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v9, v7, v8

    move-object v5, v6

    .line 87
    .local v5, "args":[Ljava/lang/Object;
    move-object v6, v4

    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 88
    const/4 v6, 0x1

    move v0, v6

    .line 92
    .end local v0    # "this":Lgnu/text/WriterManager;
    .end local v1    # "runtime":Ljava/lang/Runtime;
    .end local v2    # "rclass":Ljava/lang/Class;
    .end local v3    # "params":[Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "args":[Ljava/lang/Object;
    :goto_0
    return v0

    .line 90
    .restart local v0    # "this":Lgnu/text/WriterManager;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 92
    .local v1, "ex":Ljava/lang/Throwable;
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public declared-synchronized run()V
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/text/WriterManager;
    move-object v6, p0

    monitor-enter v6

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;

    move-object v1, v4

    .local v1, "ref":Lgnu/text/WriterRef;
    :goto_0
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 58
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/text/WriterRef;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v2, v4

    .line 59
    .local v2, "port":Ljava/lang/Object;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 63
    move-object v4, v2

    :try_start_1
    check-cast v4, Ljava/io/Writer;

    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 56
    :cond_0
    :goto_1
    move-object v4, v1

    :try_start_2
    iget-object v4, v4, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    move-object v1, v4

    goto :goto_0

    .line 65
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_1

    .line 71
    .end local v2    # "port":Ljava/lang/Object;
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    monitor-exit v6

    return-void

    .line 56
    .end local v1    # "ref":Lgnu/text/WriterRef;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lgnu/text/WriterManager;
    throw v0
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/text/WriterManager;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v7, p0

    monitor-enter v7

    move-object v5, v1

    if-nez v5, :cond_0

    .line 42
    .line 52
    :goto_0
    monitor-exit v7

    return-void

    .line 43
    :cond_0
    move-object v5, v1

    :try_start_0
    check-cast v5, Lgnu/text/WriterRef;

    move-object v2, v5

    .line 44
    .local v2, "ref":Lgnu/text/WriterRef;
    move-object v5, v2

    iget-object v5, v5, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    move-object v3, v5

    .line 45
    .local v3, "next":Lgnu/text/WriterRef;
    move-object v5, v2

    iget-object v5, v5, Lgnu/text/WriterRef;->prev:Lgnu/text/WriterRef;

    move-object v4, v5

    .line 46
    .local v4, "prev":Lgnu/text/WriterRef;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 47
    move-object v5, v3

    move-object v6, v4

    iput-object v6, v5, Lgnu/text/WriterRef;->prev:Lgnu/text/WriterRef;

    .line 48
    :cond_1
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 49
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    .line 50
    :cond_2
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;

    if-ne v5, v6, :cond_3

    .line 51
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_3
    goto :goto_0

    .line 41
    .end local v2    # "ref":Lgnu/text/WriterRef;
    .end local v3    # "next":Lgnu/text/WriterRef;
    .end local v4    # "prev":Lgnu/text/WriterRef;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lgnu/text/WriterManager;
    throw v0
.end method
