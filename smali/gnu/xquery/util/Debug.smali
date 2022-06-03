.class public Lgnu/xquery/util/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static traceFilename:Ljava/lang/String;

.field public static tracePort:Lgnu/mapping/OutPort;

.field public static tracePrefix:Ljava/lang/String;

.field public static traceShouldAppend:Z

.field public static traceShouldFlush:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string/jumbo v0, "XQuery-trace: "

    sput-object v0, Lgnu/xquery/util/Debug;->tracePrefix:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    sput-object v0, Lgnu/xquery/util/Debug;->tracePort:Lgnu/mapping/OutPort;

    .line 9
    const-string/jumbo v0, "XQuery-trace.log"

    sput-object v0, Lgnu/xquery/util/Debug;->traceFilename:Ljava/lang/String;

    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/xquery/util/Debug;->traceShouldFlush:Z

    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/xquery/util/Debug;->traceShouldAppend:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/Debug;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized trace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "message":Ljava/lang/Object;
    const-class v10, Lgnu/xquery/util/Debug;

    monitor-enter v10

    :try_start_0
    sget-object v4, Lgnu/xquery/util/Debug;->tracePort:Lgnu/mapping/OutPort;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    .line 16
    .local v2, "out":Lgnu/mapping/OutPort;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 20
    :try_start_1
    new-instance v4, Lgnu/mapping/OutPort;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    new-instance v6, Ljava/io/FileOutputStream;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    sget-object v8, Lgnu/xquery/util/Debug;->traceFilename:Ljava/lang/String;

    sget-boolean v9, Lgnu/xquery/util/Debug;->traceShouldAppend:Z

    invoke-direct {v7, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v5, v6}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    .line 27
    .line 28
    :goto_0
    move-object v4, v2

    :try_start_2
    sput-object v4, Lgnu/xquery/util/Debug;->tracePort:Lgnu/mapping/OutPort;

    .line 30
    :cond_0
    move-object v4, v2

    sget-object v5, Lgnu/xquery/util/Debug;->tracePrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 31
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 32
    move-object v4, v2

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->print(C)V

    .line 33
    new-instance v4, Lgnu/xml/XMLPrinter;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lgnu/xml/XMLPrinter;-><init>(Lgnu/mapping/OutPort;Z)V

    move-object v3, v4

    .line 34
    .local v3, "xout":Lgnu/xml/XMLPrinter;
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/xml/XMLPrinter;->writeObject(Ljava/lang/Object;)V

    .line 35
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/mapping/OutPort;->println()V

    .line 36
    sget-boolean v4, Lgnu/xquery/util/Debug;->traceShouldFlush:Z

    if-eqz v4, :cond_1

    .line 37
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/mapping/OutPort;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :cond_1
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v10

    return-object v0

    .line 23
    .end local v3    # "xout":Lgnu/xml/XMLPrinter;
    .restart local v0    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 25
    .local v3, "ex":Ljava/lang/Throwable;
    :try_start_3
    new-instance v4, Lgnu/mapping/WrappedException;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not open \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lgnu/xquery/util/Debug;->traceFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' for fn:trace output"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 15
    .end local v2    # "out":Lgnu/mapping/OutPort;
    .end local v3    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "value":Ljava/lang/Object;
    throw v0
.end method
