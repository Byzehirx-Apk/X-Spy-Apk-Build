.class public Lcom/google/appinventor/components/runtime/util/TelnetRepl;
.super Lgnu/mapping/Procedure0;
.source "SourceFile"


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lgnu/expr/Language;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/net/Socket;)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lgnu/mapping/Procedure0;-><init>()V

    .line 33
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lgnu/expr/Language;

    .line 34
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/net/Socket;

    .line 35
    return-void
.end method

.method public static serve(Lgnu/expr/Language;Ljava/net/Socket;)Ljava/lang/Thread;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    move-object v1, p0

    move-object/from16 v2, p1

    new-instance v5, Lkawa/Telnet;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    move-object v7, v2

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    .line 71
    move-object v3, v6

    invoke-virtual {v5}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 72
    move-object v5, v3

    invoke-virtual {v5}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v5

    move-object v3, v5

    .line 73
    new-instance v5, Lgnu/mapping/OutPort;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    move-object v7, v4

    const-string/jumbo v8, "/dev/stdout"

    invoke-static {v8}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    move-object v4, v5

    .line 74
    new-instance v5, Lgnu/mapping/TtyInPort;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    move-object v7, v3

    const-string/jumbo v8, "/dev/stdin"

    invoke-static {v8}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v8

    move-object v9, v4

    invoke-direct {v6, v7, v8, v9}, Lgnu/mapping/TtyInPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/OutPort;)V

    move-object v3, v5

    .line 83
    new-instance v5, Lcom/google/appinventor/components/runtime/util/BiggerFuture;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    new-instance v7, Lcom/google/appinventor/components/runtime/util/TelnetRepl;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/TelnetRepl;-><init>(Lgnu/expr/Language;Ljava/net/Socket;)V

    move-object v8, v3

    move-object v9, v4

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "Telnet Repl Thread"

    const-wide/32 v12, 0x40000

    invoke-direct/range {v6 .. v13}, Lcom/google/appinventor/components/runtime/util/BiggerFuture;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Ljava/lang/String;J)V

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    .line 86
    move-object v1, v6

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 87
    move-object v5, v1

    move-object v1, v5

    return-object v1
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 38
    move-object v0, p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 39
    move-object v1, v3

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 40
    if-nez v2, :cond_0

    .line 43
    move-object v2, v1

    const-class v3, Lkawa/Telnet;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 47
    :cond_0
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lgnu/expr/Language;

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v3

    invoke-static {v2, v3}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    move-result v2

    .line 48
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 55
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .line 48
    :goto_0
    move-object v2, v1

    move-object v0, v2

    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 49
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 50
    :try_start_2
    const-string/jumbo v2, "TelnetRepl"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Repl is exiting with error "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 51
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 52
    move-object v2, v1

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :catchall_0
    move-exception v2

    move-object v1, v2

    .line 55
    move-object v2, v0

    :try_start_3
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 58
    .line 59
    :goto_1
    move-object v2, v1

    throw v2

    :catch_2
    move-exception v2

    goto :goto_1
.end method
