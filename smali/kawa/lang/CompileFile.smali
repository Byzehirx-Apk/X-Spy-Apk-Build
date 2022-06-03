.class public Lkawa/lang/CompileFile;
.super Ljava/lang/Object;
.source "CompileFile.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lkawa/lang/CompileFile;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final read(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/expr/Compilation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "port":Lgnu/mapping/InPort;
    move-object v1, p1

    .local v1, "messages":Lgnu/text/SourceMessages;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "port":Lgnu/mapping/InPort;
    return-object v0
.end method

.method public static final read(Ljava/lang/String;Lgnu/text/SourceMessages;)Lgnu/expr/Compilation;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "messages":Lgnu/text/SourceMessages;
    move-object v4, v0

    :try_start_0
    invoke-static {v4}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v4

    move-object v2, v4

    .line 20
    .local v2, "fstream":Lgnu/mapping/InPort;
    move-object v4, v2

    move-object v5, v1

    invoke-static {v4, v5}, Lkawa/lang/CompileFile;->read(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/expr/Compilation;

    move-result-object v4

    move-object v3, v4

    .line 21
    .local v3, "result":Lgnu/expr/Compilation;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/mapping/InPort;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "name":Ljava/lang/String;
    return-object v0

    .line 24
    .end local v2    # "fstream":Lgnu/mapping/InPort;
    .end local v3    # "result":Lgnu/expr/Compilation;
    .restart local v0    # "name":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 26
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Lgnu/mapping/WrappedException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "compile-file: file not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 28
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 30
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Lgnu/mapping/WrappedException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "compile-file: read-error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
