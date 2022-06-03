.class public Lgnu/kawa/lispexpr/ReaderMacro;
.super Lgnu/kawa/lispexpr/ReaderMisc;
.source "ReaderMacro.java"


# instance fields
.field procedure:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderMacro;
    move-object v1, p1

    .local v1, "procedure":Lgnu/mapping/Procedure;
    move-object v2, v0

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    .line 24
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/lispexpr/ReaderMacro;->procedure:Lgnu/mapping/Procedure;

    .line 25
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Z)V
    .locals 5

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderMacro;
    move-object v1, p1

    .local v1, "procedure":Lgnu/mapping/Procedure;
    move v2, p2

    .local v2, "nonTerminating":Z
    move-object v3, v0

    move v4, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    :goto_0
    invoke-direct {v3, v4}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    .line 18
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/lispexpr/ReaderMacro;->procedure:Lgnu/mapping/Procedure;

    .line 19
    return-void

    .line 16
    :cond_0
    const/4 v4, 0x5

    goto :goto_0
.end method


# virtual methods
.method public getProcedure()Lgnu/mapping/Procedure;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderMacro;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/lispexpr/ReaderMacro;->procedure:Lgnu/mapping/Procedure;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderMacro;
    return-object v0
.end method

.method public isNonTerminating()Z
    .locals 3

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderMacro;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/lispexpr/ReaderMacro;->kind:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderMacro;
    return v0

    .restart local v0    # "this":Lgnu/kawa/lispexpr/ReaderMacro;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderMacro;
    move-object v1, p1

    .local v1, "in":Lgnu/text/Lexer;
    move v2, p2

    .local v2, "ch":I
    move v3, p3

    .local v3, "count":I
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v6

    move-object v4, v6

    .line 44
    .local v4, "reader":Ljava/io/Reader;
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lgnu/kawa/lispexpr/ReaderMacro;->procedure:Lgnu/mapping/Procedure;

    move-object v7, v4

    move v8, v2

    invoke-static {v8}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    move-object v0, v6

    .line 57
    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderMacro;
    :goto_0
    return-object v0

    .line 46
    .restart local v0    # "this":Lgnu/kawa/lispexpr/ReaderMacro;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 48
    .local v5, "ex":Ljava/io/IOException;
    move-object v6, v5

    throw v6

    .line 50
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 52
    .local v5, "ex":Lgnu/text/SyntaxException;
    move-object v6, v5

    throw v6

    .line 54
    .end local v5    # "ex":Lgnu/text/SyntaxException;
    :catch_2
    move-exception v6

    move-object v5, v6

    .line 56
    .local v5, "ex":Ljava/lang/Throwable;
    move-object v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reader macro \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/lispexpr/ReaderMacro;->procedure:Lgnu/mapping/Procedure;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' threw: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/text/Lexer;->fatal(Ljava/lang/String;)V

    .line 57
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method
