.class public Lkawa/TelnetRepl;
.super Lgnu/mapping/Procedure0;
.source "TelnetRepl.java"


# instance fields
.field language:Lgnu/expr/Language;

.field socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/net/Socket;)V
    .locals 5

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lkawa/TelnetRepl;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, p2

    .local v2, "socket":Ljava/net/Socket;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/mapping/Procedure0;-><init>()V

    .line 15
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkawa/TelnetRepl;->language:Lgnu/expr/Language;

    .line 16
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkawa/TelnetRepl;->socket:Ljava/net/Socket;

    .line 17
    return-void
.end method

.method public static serve(Lgnu/expr/Language;Ljava/net/Socket;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "language":Lgnu/expr/Language;
    move-object/from16 v1, p1

    .local v1, "client":Ljava/net/Socket;
    new-instance v8, Lkawa/Telnet;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    move-object v2, v8

    .line 47
    .local v2, "conn":Lkawa/Telnet;
    move-object v8, v2

    invoke-virtual {v8}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v8

    move-object v3, v8

    .line 48
    .local v3, "sout":Ljava/io/OutputStream;
    move-object v8, v2

    invoke-virtual {v8}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v8

    move-object v4, v8

    .line 49
    .local v4, "sin":Ljava/io/InputStream;
    new-instance v8, Lgnu/mapping/OutPort;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v3

    const-string/jumbo v11, "/dev/stdout"

    invoke-static {v11}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    move-object v5, v8

    .line 50
    .local v5, "out":Lgnu/mapping/OutPort;
    new-instance v8, Lgnu/mapping/TtyInPort;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v4

    const-string/jumbo v11, "/dev/stdin"

    invoke-static {v11}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v11

    move-object v12, v5

    invoke-direct {v9, v10, v11, v12}, Lgnu/mapping/TtyInPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/OutPort;)V

    move-object v6, v8

    .line 58
    .local v6, "in":Lgnu/mapping/TtyInPort;
    new-instance v8, Lgnu/mapping/Future;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Lkawa/TelnetRepl;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    move-object v13, v1

    invoke-direct {v11, v12, v13}, Lkawa/TelnetRepl;-><init>(Lgnu/expr/Language;Ljava/net/Socket;)V

    move-object v11, v6

    move-object v12, v5

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/Future;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V

    move-object v7, v8

    .line 60
    .local v7, "thread":Ljava/lang/Thread;
    move-object v8, v7

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lkawa/TelnetRepl;
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lkawa/TelnetRepl;->language:Lgnu/expr/Language;

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v6

    invoke-static {v5, v6}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    move-result v5

    .line 24
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v5

    .line 30
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lkawa/TelnetRepl;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    :goto_0
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lkawa/TelnetRepl;
    return-object v0

    .line 32
    .restart local v0    # "this":Lkawa/TelnetRepl;
    :catch_0
    move-exception v5

    move-object v2, v5

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v5

    move-object v3, v5

    .line 30
    move-object v5, v0

    :try_start_2
    iget-object v5, v5, Lkawa/TelnetRepl;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 34
    :goto_1
    move-object v5, v3

    throw v5

    .line 32
    :catch_1
    move-exception v5

    move-object v4, v5

    goto :goto_1
.end method
