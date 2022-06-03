.class public Lgnu/mapping/OutPort;
.super Lgnu/lists/PrintConsumer;
.source "OutPort.java"

# interfaces
.implements Lgnu/text/Printable;


# static fields
.field private static errInitial:Lgnu/mapping/OutPort;

.field public static final errLocation:Lgnu/mapping/ThreadLocation;

.field static logFile:Ljava/io/Writer;

.field static outInitial:Lgnu/mapping/OutPort;

.field public static final outLocation:Lgnu/mapping/ThreadLocation;


# instance fields
.field private base:Ljava/io/Writer;

.field protected bout:Lgnu/text/PrettyWriter;

.field numberFormat:Ljava/text/NumberFormat;

.field public objectFormat:Lgnu/lists/AbstractFormat;

.field path:Lgnu/text/Path;

.field public printReadable:Z

.field protected unregisterRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 91
    new-instance v0, Lgnu/mapping/OutPort;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    new-instance v2, Lgnu/mapping/LogWriter;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    new-instance v4, Ljava/io/BufferedWriter;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/io/OutputStreamWriter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v3, v4}, Lgnu/mapping/LogWriter;-><init>(Ljava/io/Writer;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "/dev/stdout"

    invoke-static {v5}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZLgnu/text/Path;)V

    sput-object v0, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    .line 93
    new-instance v0, Lgnu/mapping/OutPort;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    new-instance v2, Lgnu/mapping/LogWriter;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    new-instance v4, Ljava/io/OutputStreamWriter;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Lgnu/mapping/LogWriter;-><init>(Ljava/io/Writer;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "/dev/stderr"

    invoke-static {v5}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZLgnu/text/Path;)V

    sput-object v0, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    .line 95
    new-instance v0, Lgnu/mapping/ThreadLocation;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "out-default"

    invoke-direct {v1, v2}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/OutPort;->outLocation:Lgnu/mapping/ThreadLocation;

    .line 97
    sget-object v0, Lgnu/mapping/OutPort;->outLocation:Lgnu/mapping/ThreadLocation;

    sget-object v1, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    .line 98
    new-instance v0, Lgnu/mapping/ThreadLocation;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string/jumbo v2, "err-default"

    invoke-direct {v1, v2}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/OutPort;->errLocation:Lgnu/mapping/ThreadLocation;

    .line 100
    sget-object v0, Lgnu/mapping/OutPort;->errLocation:Lgnu/mapping/ThreadLocation;

    sget-object v1, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Lgnu/mapping/OutPort;Z)V
    .locals 7

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move v2, p2

    .local v2, "autoflush":Z
    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "out":Ljava/io/OutputStream;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lgnu/text/Path;)V
    .locals 8

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "out":Ljava/io/OutputStream;
    move-object v2, p2

    .local v2, "path":Lgnu/text/Path;
    move-object v3, v0

    new-instance v4, Ljava/io/OutputStreamWriter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZLgnu/text/Path;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 9

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/OutPort;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lgnu/mapping/OutPort;

    iget-object v4, v4, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    :goto_0
    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    .line 75
    return-void

    .line 71
    :cond_0
    new-instance v4, Lgnu/text/PrettyWriter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lgnu/text/PrettyWriter;-><init>(Ljava/io/Writer;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;Lgnu/text/Path;)V
    .locals 7

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "base":Ljava/io/Writer;
    move-object v2, p2

    .local v2, "path":Lgnu/text/Path;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    .line 80
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    .line 81
    return-void
.end method

.method protected constructor <init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V
    .locals 7

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "base":Ljava/io/Writer;
    move-object v2, p2

    .local v2, "out":Lgnu/text/PrettyWriter;
    move v3, p3

    .local v3, "autoflush":Z
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    invoke-direct {v4, v5, v6}, Lgnu/lists/PrintConsumer;-><init>(Ljava/io/Writer;Z)V

    .line 28
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    .line 29
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    .line 30
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/OutPort;->closeOnExit()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    move-object v4, v0

    sget-object v5, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/text/WriterManager;->register(Ljava/io/Writer;)Lgnu/text/WriterRef;

    move-result-object v5

    iput-object v5, v4, Lgnu/mapping/OutPort;->unregisterRef:Ljava/lang/Object;

    .line 32
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/io/Writer;Z)V
    .locals 10

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move v2, p2

    .local v2, "autoflush":Z
    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/OutPort;

    if-eqz v5, :cond_0

    move-object v5, v1

    check-cast v5, Lgnu/mapping/OutPort;

    iget-object v5, v5, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    :goto_0
    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    .line 45
    return-void

    .line 41
    :cond_0
    new-instance v5, Lgnu/text/PrettyWriter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lgnu/text/PrettyWriter;-><init>(Ljava/io/Writer;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;ZLgnu/text/Path;)V
    .locals 8

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "base":Ljava/io/Writer;
    move v2, p2

    .local v2, "autoflush":Z
    move-object v3, p3

    .local v3, "path":Lgnu/text/Path;
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    .line 86
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZZ)V
    .locals 11

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "base":Ljava/io/Writer;
    move v2, p2

    .local v2, "printPretty":Z
    move v3, p3

    .local v3, "autoflush":Z
    move-object v4, v0

    move-object v5, v1

    new-instance v6, Lgnu/text/PrettyWriter;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move v9, v2

    invoke-direct {v7, v8, v9}, Lgnu/text/PrettyWriter;-><init>(Ljava/io/Writer;Z)V

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZZLgnu/text/Path;)V
    .locals 12

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "base":Ljava/io/Writer;
    move v2, p2

    .local v2, "printPretty":Z
    move v3, p3

    .local v3, "autoflush":Z
    move-object/from16 v4, p4

    .local v4, "path":Lgnu/text/Path;
    move-object v5, v0

    move-object v6, v1

    new-instance v7, Lgnu/text/PrettyWriter;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    move v10, v2

    invoke-direct {v8, v9, v10}, Lgnu/text/PrettyWriter;-><init>(Ljava/io/Writer;Z)V

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    .line 56
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    .line 57
    return-void
.end method

.method public static closeLogFile()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    sget-object v0, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 153
    const/4 v0, 0x0

    sput-object v0, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    .line 155
    :cond_0
    sget-object v0, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v0, v0, Lgnu/mapping/LogWriter;

    if-eqz v0, :cond_1

    .line 156
    sget-object v0, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v0, Lgnu/mapping/LogWriter;

    const/4 v1, 0x0

    check-cast v1, Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lgnu/mapping/LogWriter;->setLogFile(Ljava/io/Writer;)V

    .line 157
    :cond_1
    sget-object v0, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v0, v0, Lgnu/mapping/LogWriter;

    if-eqz v0, :cond_2

    .line 158
    sget-object v0, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v0, Lgnu/mapping/LogWriter;

    const/4 v1, 0x0

    check-cast v1, Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lgnu/mapping/LogWriter;->setLogFile(Ljava/io/Writer;)V

    .line 159
    :cond_2
    return-void
.end method

.method public static errDefault()Lgnu/mapping/OutPort;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lgnu/mapping/OutPort;->errLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/OutPort;

    return-object v0
.end method

.method protected static final isWordChar(C)Z
    .locals 3

    .prologue
    .line 188
    move v0, p0

    .local v0, "ch":C
    move v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "ch":C
    return v0

    .restart local v0    # "ch":C
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openFile(Ljava/lang/Object;)Lgnu/mapping/OutPort;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "fname":Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v5

    const-string/jumbo v6, "port-char-encoding"

    invoke-virtual {v5, v6}, Lgnu/mapping/Environment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 125
    .local v1, "conv":Ljava/lang/Object;
    move-object v5, v0

    invoke-static {v5}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v5

    move-object v2, v5

    .line 126
    .local v2, "path":Lgnu/text/Path;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    move-object v3, v5

    .line 127
    .local v3, "strm":Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v5

    .line 129
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_1

    .line 130
    :cond_0
    new-instance v5, Ljava/io/OutputStreamWriter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 137
    .end local v1    # "conv":Ljava/lang/Object;
    .local v4, "wr":Ljava/io/Writer;
    :goto_0
    new-instance v5, Lgnu/mapping/OutPort;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/Path;)V

    move-object v0, v5

    .end local v0    # "fname":Ljava/lang/Object;
    return-object v0

    .line 133
    .end local v4    # "wr":Ljava/io/Writer;
    .restart local v0    # "fname":Ljava/lang/Object;
    .restart local v1    # "conv":Ljava/lang/Object;
    :cond_1
    move-object v5, v1

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_2

    .line 134
    const-string/jumbo v5, "8859_1"

    move-object v1, v5

    .line 135
    .end local v1    # "conv":Ljava/lang/Object;
    :cond_2
    new-instance v5, Ljava/io/OutputStreamWriter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object v4, v5

    .restart local v4    # "wr":Ljava/io/Writer;
    goto :goto_0
.end method

.method public static outDefault()Lgnu/mapping/OutPort;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lgnu/mapping/OutPort;->outLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/OutPort;

    return-object v0
.end method

.method public static runCleanups()V
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v0}, Lgnu/text/WriterManager;->run()V

    .line 384
    return-void
.end method

.method public static setErrDefault(Lgnu/mapping/OutPort;)V
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "e":Lgnu/mapping/OutPort;
    sget-object v1, Lgnu/mapping/OutPort;->errLocation:Lgnu/mapping/ThreadLocation;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public static setLogFile(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 164
    invoke-static {}, Lgnu/mapping/OutPort;->closeLogFile()V

    .line 165
    :cond_0
    new-instance v1, Ljava/io/PrintWriter;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    new-instance v3, Ljava/io/BufferedWriter;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/io/FileWriter;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v1, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    .line 166
    sget-object v1, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    iget-object v1, v1, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v1, v1, Lgnu/mapping/LogWriter;

    if-eqz v1, :cond_1

    .line 167
    sget-object v1, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    iget-object v1, v1, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v1, Lgnu/mapping/LogWriter;

    sget-object v2, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Lgnu/mapping/LogWriter;->setLogFile(Ljava/io/Writer;)V

    .line 168
    :cond_1
    sget-object v1, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    iget-object v1, v1, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v1, v1, Lgnu/mapping/LogWriter;

    if-eqz v1, :cond_2

    .line 169
    sget-object v1, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    iget-object v1, v1, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v1, Lgnu/mapping/LogWriter;

    sget-object v2, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Lgnu/mapping/LogWriter;->setLogFile(Ljava/io/Writer;)V

    .line 170
    :cond_2
    return-void
.end method

.method public static setOutDefault(Lgnu/mapping/OutPort;)V
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "o":Lgnu/mapping/OutPort;
    sget-object v1, Lgnu/mapping/OutPort;->outLocation:Lgnu/mapping/ThreadLocation;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    .line 109
    return-void
.end method


# virtual methods
.method public clearBuffer()V
    .locals 2

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v1}, Lgnu/text/PrettyWriter;->clearBuffer()V

    .line 341
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v2, v2, Lgnu/mapping/OutPort;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v2, Lgnu/mapping/OutPort;

    iget-object v2, v2, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    if-ne v2, v3, :cond_0

    .line 363
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .line 371
    :goto_0
    sget-object v2, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/OutPort;->unregisterRef:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/text/WriterManager;->unregister(Ljava/lang/Object;)V

    .line 372
    return-void

    .line 365
    :cond_0
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lgnu/mapping/OutPort;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 369
    .local v1, "ex":Ljava/io/IOException;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->setError()V

    goto :goto_0
.end method

.method protected closeOnExit()Z
    .locals 2

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/OutPort;
    return v0
.end method

.method public closeThis()V
    .locals 4

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v2, v2, Lgnu/mapping/OutPort;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v2, Lgnu/mapping/OutPort;

    iget-object v2, v2, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    if-eq v2, v3, :cond_1

    .line 349
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v2}, Lgnu/text/PrettyWriter;->closeThis()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .line 355
    :cond_1
    :goto_0
    sget-object v2, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/OutPort;->unregisterRef:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/text/WriterManager;->unregister(Ljava/lang/Object;)V

    .line 356
    return-void

    .line 351
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 353
    .local v1, "ex":Ljava/io/IOException;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->setError()V

    goto :goto_0
.end method

.method public echo([CII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "buf":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v4, v4, Lgnu/mapping/LogWriter;

    if-eqz v4, :cond_0

    .line 143
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v4, Lgnu/mapping/LogWriter;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/LogWriter;->echo([CII)V

    .line 144
    :cond_0
    return-void
.end method

.method public endAttribute()V
    .locals 3

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v1, :cond_0

    .line 301
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractFormat;->endAttribute(Lgnu/lists/Consumer;)V

    .line 304
    :goto_0
    return-void

    .line 303
    :cond_0
    move-object v1, v0

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lgnu/mapping/OutPort;->print(C)V

    goto :goto_0
.end method

.method public endElement()V
    .locals 3

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v1, :cond_0

    .line 278
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractFormat;->endElement(Lgnu/lists/Consumer;)V

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    move-object v1, v0

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lgnu/mapping/OutPort;->print(C)V

    goto :goto_0
.end method

.method public endLogicalBlock(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "suffix":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->endLogicalBlock(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public freshLine()V
    .locals 3

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v2}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v2

    move v1, v2

    .line 324
    .local v1, "col":I
    move v2, v1

    if-eqz v2, :cond_0

    .line 325
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->println()V

    .line 326
    :cond_0
    return-void
.end method

.method public getColumnNumber()I
    .locals 2

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v1}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/OutPort;
    return v0
.end method

.method public print(D)V
    .locals 9

    .prologue
    .line 216
    move-object v1, p0

    .local v1, "this":Lgnu/mapping/OutPort;
    move-wide v2, p1

    .local v2, "v":D
    move-object v4, v1

    iget-object v4, v4, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    if-nez v4, :cond_0

    .line 217
    move-object v4, v1

    move-wide v5, v2

    invoke-super {v4, v5, v6}, Lgnu/lists/PrintConsumer;->print(D)V

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public print(F)V
    .locals 6

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move v1, p1

    .local v1, "v":F
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    if-nez v2, :cond_0

    .line 225
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lgnu/lists/PrintConsumer;->print(F)V

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    move v4, v1

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public print(I)V
    .locals 6

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    if-nez v2, :cond_0

    .line 201
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lgnu/lists/PrintConsumer;->print(I)V

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    move v4, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public print(J)V
    .locals 9

    .prologue
    .line 208
    move-object v1, p0

    .local v1, "this":Lgnu/mapping/OutPort;
    move-wide v2, p1

    .local v2, "v":J
    move-object v4, v1

    iget-object v4, v4, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    if-nez v4, :cond_0

    .line 209
    move-object v4, v1

    move-wide v5, v2

    invoke-super {v4, v5, v6}, Lgnu/lists/PrintConsumer;->print(J)V

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v1

    const-string/jumbo v3, "#<output-port"

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 256
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    if-eqz v2, :cond_0

    .line 258
    move-object v2, v1

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 259
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 261
    :cond_0
    move-object v2, v1

    const/16 v3, 0x3e

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 262
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v2, :cond_0

    .line 246
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/PrintConsumer;)V

    .line 251
    :goto_0
    return-void

    .line 247
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/lists/Consumable;

    if-eqz v2, :cond_1

    .line 248
    move-object v2, v1

    check-cast v2, Lgnu/lists/Consumable;

    move-object v3, v0

    invoke-interface {v2, v3}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 250
    :cond_1
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_2

    const-string/jumbo v3, "null"

    :goto_1
    invoke-super {v2, v3}, Lgnu/lists/PrintConsumer;->print(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1
.end method

.method public print(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "v":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, "(null)"

    :goto_0
    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->write(Ljava/lang/String;)V

    .line 241
    return-void

    .line 240
    :cond_0
    move-object v3, v1

    goto :goto_0
.end method

.method public print(Z)V
    .locals 5

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move v1, p1

    .local v1, "v":Z
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-nez v2, :cond_0

    .line 233
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lgnu/lists/PrintConsumer;->print(Z)V

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move v3, v1

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lgnu/lists/AbstractFormat;->writeBoolean(ZLgnu/lists/Consumer;)V

    goto :goto_0
.end method

.method public setColumnNumber(I)V
    .locals 4

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move v1, p1

    .local v1, "column":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->setColumnNumber(I)V

    .line 336
    return-void
.end method

.method public setIndentation(IZ)V
    .locals 6

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move v1, p1

    .local v1, "amount":I
    move v2, p2

    .local v2, "current":Z
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/text/PrettyWriter;->addIndentation(IZ)V

    .line 439
    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "attrType":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v2, :cond_0

    .line 288
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lgnu/lists/AbstractFormat;->startAttribute(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 295
    :goto_0
    return-void

    .line 291
    :cond_0
    move-object v2, v0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(C)V

    .line 292
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 293
    move-object v2, v0

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v2, :cond_0

    .line 267
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lgnu/lists/AbstractFormat;->startElement(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 273
    :goto_0
    return-void

    .line 270
    :cond_0
    move-object v2, v0

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(C)V

    .line 271
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "suffix":Ljava/lang/String;
    move v3, p3

    .local v3, "indent":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/text/PrettyWriter;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 395
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    move-object v5, v1

    if-nez v5, :cond_0

    move v5, v3

    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgnu/text/PrettyWriter;->addIndentation(IZ)V

    .line 397
    return-void

    .line 395
    :cond_0
    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_0
.end method

.method public startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move v2, p2

    .local v2, "perLine":Z
    move-object v3, p3

    .local v3, "suffix":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/text/PrettyWriter;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 390
    return-void
.end method

.method public writeBreak(I)V
    .locals 4

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move v1, p1

    .local v1, "kind":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->writeBreak(I)V

    .line 407
    return-void
.end method

.method public writeBreakFill()V
    .locals 3

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, v0

    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Lgnu/mapping/OutPort;->writeBreak(I)V

    .line 434
    return-void
.end method

.method public writeBreakLinear()V
    .locals 3

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, v0

    const/16 v2, 0x4e

    invoke-virtual {v1, v2}, Lgnu/mapping/OutPort;->writeBreak(I)V

    .line 422
    return-void
.end method

.method public writeSpaceFill()V
    .locals 3

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, v0

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lgnu/mapping/OutPort;->write(I)V

    .line 428
    move-object v1, v0

    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Lgnu/mapping/OutPort;->writeBreak(I)V

    .line 429
    return-void
.end method

.method public writeSpaceLinear()V
    .locals 3

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, v0

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lgnu/mapping/OutPort;->write(I)V

    .line 412
    move-object v1, v0

    const/16 v2, 0x4e

    invoke-virtual {v1, v2}, Lgnu/mapping/OutPort;->writeBreak(I)V

    .line 413
    return-void
.end method

.method public writeWordEnd()V
    .locals 2

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v1}, Lgnu/text/PrettyWriter;->writeWordEnd()V

    .line 310
    return-void
.end method

.method public writeWordStart()V
    .locals 2

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/OutPort;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v1}, Lgnu/text/PrettyWriter;->writeWordStart()V

    .line 319
    return-void
.end method
