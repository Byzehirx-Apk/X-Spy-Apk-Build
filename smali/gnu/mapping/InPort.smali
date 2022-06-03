.class public Lgnu/mapping/InPort;
.super Lgnu/text/LineBufferedReader;
.source "InPort.java"

# interfaces
.implements Lgnu/text/Printable;


# static fields
.field public static final inLocation:Lgnu/mapping/ThreadLocation;

.field private static systemInPort:Lgnu/mapping/InPort;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 65
    new-instance v0, Lgnu/mapping/TtyInPort;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string/jumbo v3, "/dev/stdin"

    invoke-static {v3}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v3

    sget-object v4, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    invoke-direct {v1, v2, v3, v4}, Lgnu/mapping/TtyInPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/OutPort;)V

    sput-object v0, Lgnu/mapping/InPort;->systemInPort:Lgnu/mapping/InPort;

    .line 67
    new-instance v0, Lgnu/mapping/ThreadLocation;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "in-default"

    invoke-direct {v1, v2}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/InPort;->inLocation:Lgnu/mapping/ThreadLocation;

    .line 69
    sget-object v0, Lgnu/mapping/InPort;->inLocation:Lgnu/mapping/ThreadLocation;

    sget-object v1, Lgnu/mapping/InPort;->systemInPort:Lgnu/mapping/InPort;

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/InPort;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/text/LineBufferedReader;-><init>(Ljava/io/InputStream;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lgnu/text/Path;)V
    .locals 5

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/InPort;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "path":Lgnu/text/Path;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;)V

    .line 27
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/mapping/InPort;->setPath(Lgnu/text/Path;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lgnu/text/Path;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/InPort;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "path":Lgnu/text/Path;
    move-object v3, p3

    .local v3, "conv":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    invoke-static {v6, v7}, Lgnu/mapping/InPort;->convertToReader(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/io/Reader;

    move-result-object v6

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;Lgnu/text/Path;)V

    .line 51
    move-object v5, v3

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_0

    .line 57
    move-object v5, v0

    const/16 v6, 0x800

    :try_start_0
    new-array v6, v6, [C

    invoke-virtual {v5, v6}, Lgnu/mapping/InPort;->setBuffer([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 63
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_0

    .line 62
    :cond_0
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/mapping/InPort;->setConvertCR(Z)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/InPort;
    move-object v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/text/LineBufferedReader;-><init>(Ljava/io/Reader;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lgnu/text/Path;)V
    .locals 5

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/InPort;
    move-object v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object v2, p2

    .local v2, "path":Lgnu/text/Path;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;)V

    .line 16
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/mapping/InPort;->setPath(Lgnu/text/Path;)V

    .line 17
    return-void
.end method

.method public static convertToReader(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/io/Reader;
    .locals 9

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "in":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "conv":Ljava/lang/Object;
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_1

    .line 34
    move-object v4, v1

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v5, :cond_0

    const-string/jumbo v4, "8859_1"

    :goto_0
    move-object v2, v4

    .line 37
    .local v2, "enc":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 44
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v2    # "enc":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 34
    .restart local v0    # "in":Ljava/io/InputStream;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 39
    .restart local v2    # "enc":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 41
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown character encoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 44
    .end local v2    # "enc":Ljava/lang/String;
    .end local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_1
    new-instance v4, Ljava/io/InputStreamReader;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v4

    goto :goto_1
.end method

.method public static inDefault()Lgnu/mapping/InPort;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lgnu/mapping/InPort;->inLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/InPort;

    return-object v0
.end method

.method public static openFile(Ljava/io/InputStream;Ljava/lang/Object;)Lgnu/mapping/InPort;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "strm":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/Object;
    new-instance v2, Lgnu/mapping/InPort;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v5

    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v6

    const-string/jumbo v7, "port-char-encoding"

    invoke-virtual {v6, v7}, Lgnu/mapping/Environment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "strm":Ljava/io/InputStream;
    return-object v0
.end method

.method public static openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "fname":Ljava/lang/Object;
    move-object v3, v0

    invoke-static {v3}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v3

    move-object v1, v3

    .line 85
    .local v1, "path":Lgnu/text/Path;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 86
    .local v2, "strm":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 87
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/mapping/InPort;->openFile(Ljava/io/InputStream;Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "fname":Ljava/lang/Object;
    return-object v0
.end method

.method public static setInDefault(Lgnu/mapping/InPort;)V
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "in":Lgnu/mapping/InPort;
    sget-object v1, Lgnu/mapping/InPort;->inLocation:Lgnu/mapping/ThreadLocation;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    .line 79
    return-void
.end method


# virtual methods
.method public print(Lgnu/lists/Consumer;)V
    .locals 5

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/InPort;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v3, v1

    const-string/jumbo v4, "#<input-port"

    invoke-interface {v3, v4}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 100
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/InPort;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 101
    .local v2, "name":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 103
    move-object v3, v1

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lgnu/lists/Consumer;->write(I)V

    .line 104
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 106
    :cond_0
    move-object v3, v1

    const/16 v4, 0x3e

    invoke-interface {v3, v4}, Lgnu/lists/Consumer;->write(I)V

    .line 107
    return-void
.end method
