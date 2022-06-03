.class public Lgnu/text/Lexer;
.super Ljava/io/Reader;
.source "Lexer.java"


# instance fields
.field protected interactive:Z

.field messages:Lgnu/text/SourceMessages;

.field protected nesting:I

.field protected port:Lgnu/text/LineBufferedReader;

.field private saveTokenBufferLength:I

.field public tokenBuffer:[C

.field public tokenBufferLength:I


# direct methods
.method public constructor <init>(Lgnu/text/LineBufferedReader;)V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, p1

    .local v1, "port":Lgnu/text/LineBufferedReader;
    move-object v2, v0

    invoke-direct {v2}, Ljava/io/Reader;-><init>()V

    .line 134
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    .line 317
    move-object v2, v0

    const/16 v3, 0x64

    new-array v3, v3, [C

    iput-object v3, v2, Lgnu/text/Lexer;->tokenBuffer:[C

    .line 320
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 348
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lgnu/text/Lexer;->saveTokenBufferLength:I

    .line 19
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    .line 20
    return-void
.end method

.method public constructor <init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V
    .locals 5

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, p1

    .local v1, "port":Lgnu/text/LineBufferedReader;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v3, v0

    invoke-direct {v3}, Ljava/io/Reader;-><init>()V

    .line 134
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    .line 317
    move-object v3, v0

    const/16 v4, 0x64

    new-array v4, v4, [C

    iput-object v4, v3, Lgnu/text/Lexer;->tokenBuffer:[C

    .line 320
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 348
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lgnu/text/Lexer;->saveTokenBufferLength:I

    .line 24
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    .line 25
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    .line 26
    return-void
.end method

.method public static readDigitsInBuffer(Lgnu/text/LineBufferedReader;I)J
    .locals 14

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "port":Lgnu/text/LineBufferedReader;
    move v1, p1

    .local v1, "radix":I
    const-wide/16 v10, 0x0

    move-wide v2, v10

    .line 285
    .local v2, "ival":J
    const/4 v10, 0x0

    move v4, v10

    .line 286
    .local v4, "overflow":Z
    const-wide v10, 0x7fffffffffffffffL

    move v12, v1

    int-to-long v12, v12

    div-long/2addr v10, v12

    move-wide v5, v10

    .line 287
    .local v5, "max_val":J
    move-object v10, v0

    iget v10, v10, Lgnu/text/LineBufferedReader;->pos:I

    move v7, v10

    .line 288
    .local v7, "i":I
    move v10, v7

    move-object v11, v0

    iget v11, v11, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v10, v11, :cond_0

    .line 289
    const-wide/16 v10, 0x0

    move-wide v0, v10

    .line 306
    .end local v0    # "port":Lgnu/text/LineBufferedReader;
    :goto_0
    return-wide v0

    .line 304
    .line 292
    .restart local v0    # "port":Lgnu/text/LineBufferedReader;
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lgnu/text/LineBufferedReader;->buffer:[C

    move v11, v7

    aget-char v10, v10, v11

    move v8, v10

    .line 293
    .local v8, "c":C
    move v10, v8

    move v11, v1

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    move v9, v10

    .line 294
    .local v9, "dval":I
    move v10, v9

    if-gez v10, :cond_1

    .line 295
    .line 305
    :goto_1
    move-object v10, v0

    move v11, v7

    iput v11, v10, Lgnu/text/LineBufferedReader;->pos:I

    .line 306
    move v10, v4

    if-eqz v10, :cond_4

    const-wide/16 v10, -0x1

    :goto_2
    move-wide v0, v10

    goto :goto_0

    .line 296
    :cond_1
    move-wide v10, v2

    move-wide v12, v5

    cmp-long v10, v10, v12

    if-lez v10, :cond_3

    .line 297
    const/4 v10, 0x1

    move v4, v10

    .line 300
    :goto_3
    move-wide v10, v2

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    .line 301
    const/4 v10, 0x1

    move v4, v10

    .line 302
    :cond_2
    add-int/lit8 v7, v7, 0x1

    move v10, v7

    move-object v11, v0

    iget v11, v11, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v10, v11, :cond_0

    .line 303
    goto :goto_1

    .line 299
    :cond_3
    move-wide v10, v2

    move v12, v1

    int-to-long v12, v12

    mul-long/2addr v10, v12

    move v12, v9

    int-to-long v12, v12

    add-long/2addr v10, v12

    move-wide v2, v10

    goto :goto_3

    .line 306
    :cond_4
    move-wide v10, v2

    goto :goto_2
.end method


# virtual methods
.method public checkErrors(Ljava/io/PrintWriter;I)Z
    .locals 6

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, p1

    .local v1, "out":Ljava/io/PrintWriter;
    move v2, p2

    .local v2, "max":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/text/Lexer;
    return v0

    .restart local v0    # "this":Lgnu/text/Lexer;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public checkNext(C)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move v1, p1

    .local v1, "ch":C
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    move v2, v3

    .line 122
    .local v2, "r":I
    move v3, v2

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 123
    const/4 v3, 0x1

    move v0, v3

    .line 126
    .end local v0    # "this":Lgnu/text/Lexer;
    :goto_0
    return v0

    .line 124
    .restart local v0    # "this":Lgnu/text/Lexer;
    :cond_0
    move v3, v2

    if-ltz v3, :cond_1

    .line 125
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 126
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public clearErrors()V
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->clearErrors()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->close()V

    .line 60
    return-void
.end method

.method public eofError(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/Lexer;->fatal(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public eofError(Ljava/lang/String;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move v2, p2

    .local v2, "startLine":I
    move v3, p3

    .local v3, "startColumn":I
    move-object v4, v0

    const/16 v5, 0x66

    move-object v6, v0

    iget-object v6, v6, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v6

    move v7, v2

    move v8, v3

    move-object v9, v1

    invoke-virtual/range {v4 .. v9}, Lgnu/text/Lexer;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 192
    new-instance v4, Lgnu/text/SyntaxException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-direct {v5, v6}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v4
.end method

.method public error(CLjava/lang/String;)V
    .locals 11

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move v1, p1

    .local v1, "severity":C
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v5

    move v3, v5

    .line 167
    .local v3, "line":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v5

    move v4, v5

    .line 168
    .local v4, "column":I
    move-object v5, v0

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v7

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v4

    if-ltz v9, :cond_0

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    :goto_0
    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lgnu/text/Lexer;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 170
    return-void

    .line 168
    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public error(CLjava/lang/String;IILjava/lang/String;)V
    .locals 13

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move v1, p1

    .local v1, "severity":C
    move-object v2, p2

    .local v2, "filename":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "line":I
    move/from16 v4, p4

    .local v4, "column":I
    move-object/from16 v5, p5

    .local v5, "message":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-nez v6, :cond_0

    .line 160
    move-object v6, v0

    new-instance v7, Lgnu/text/SourceMessages;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lgnu/text/SourceMessages;-><init>()V

    iput-object v7, v6, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    .line 161
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    move v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 162
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    const/16 v3, 0x65

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/text/Lexer;->error(CLjava/lang/String;)V

    .line 175
    return-void
.end method

.method public fatal(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    const/16 v3, 0x66

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/text/Lexer;->error(CLjava/lang/String;)V

    .line 180
    new-instance v2, Lgnu/text/SyntaxException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-direct {v3, v4}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v2
.end method

.method public getColumnNumber()I
    .locals 2

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/text/Lexer;
    return v0
.end method

.method public getErrors()Lgnu/text/SourceError;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Lexer;
    return-object v0

    .restart local v0    # "this":Lgnu/text/Lexer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->getErrors()Lgnu/text/SourceError;

    move-result-object v1

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 2

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/text/Lexer;
    return v0
.end method

.method public getMessages()Lgnu/text/SourceMessages;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Lexer;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Lexer;
    return-object v0
.end method

.method public final getPort()Lgnu/text/LineBufferedReader;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Lexer;
    return-object v0
.end method

.method public isInteractive()Z
    .locals 2

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/text/Lexer;->interactive:Z

    move v0, v1

    .end local v0    # "this":Lgnu/text/Lexer;
    return v0
.end method

.method public mark()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget v1, v1, Lgnu/text/Lexer;->saveTokenBufferLength:I

    if-ltz v1, :cond_0

    .line 355
    new-instance v1, Ljava/lang/Error;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "internal error: recursive call to mark not allowed"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 356
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lgnu/text/LineBufferedReader;->mark(I)V

    .line 357
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/text/Lexer;->tokenBufferLength:I

    iput v2, v1, Lgnu/text/Lexer;->saveTokenBufferLength:I

    .line 358
    return-void
.end method

.method public peek()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/text/Lexer;
    return v0
.end method

.method public popNesting(C)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move v1, p1

    .local v1, "save":C
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v3

    move-object v2, v3

    .line 49
    .local v2, "port":Lgnu/text/LineBufferedReader;
    move-object v3, v2

    move v4, v1

    iput-char v4, v3, Lgnu/text/LineBufferedReader;->readState:C

    .line 50
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/text/Lexer;->nesting:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lgnu/text/Lexer;->nesting:I

    .line 51
    return-void
.end method

.method public pushNesting(C)C
    .locals 8

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move v1, p1

    .local v1, "promptChar":C
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lgnu/text/Lexer;->nesting:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/text/Lexer;->nesting:I

    .line 37
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v4

    move-object v2, v4

    .line 38
    .local v2, "port":Lgnu/text/LineBufferedReader;
    move-object v4, v2

    iget-char v4, v4, Lgnu/text/LineBufferedReader;->readState:C

    move v3, v4

    .line 39
    .local v3, "save":C
    move-object v4, v2

    move v5, v1

    iput-char v5, v4, Lgnu/text/LineBufferedReader;->readState:C

    .line 40
    move v4, v3

    move v0, v4

    .end local v0    # "this":Lgnu/text/Lexer;
    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/text/Lexer;
    return v0
.end method

.method public read([CII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, p1

    .local v1, "buf":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/text/LineBufferedReader;->read([CII)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/text/Lexer;
    return v0
.end method

.method public readDelimited(Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, p1

    .local v1, "delimiter":Ljava/lang/String;
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 251
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v2, v7

    .line 252
    .local v2, "dlen":I
    move-object v7, v1

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v3, v7

    .line 255
    .local v3, "last":C
    :goto_0
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/text/Lexer;->read()I

    move-result v7

    move v4, v7

    .line 256
    .local v4, "ch":I
    move v7, v4

    if-gez v7, :cond_0

    .line 257
    const/4 v7, 0x0

    move v0, v7

    .line 269
    .end local v0    # "this":Lgnu/text/Lexer;
    :goto_1
    return v0

    .line 260
    .restart local v0    # "this":Lgnu/text/Lexer;
    :cond_0
    move v7, v4

    move v8, v3

    if-ne v7, v8, :cond_3

    move-object v7, v0

    iget v7, v7, Lgnu/text/Lexer;->tokenBufferLength:I

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v10, v8

    move v8, v10

    move v9, v10

    move v6, v9

    .local v6, "j":I
    sub-int/2addr v7, v8

    move v10, v7

    move v7, v10

    move v8, v10

    move v5, v8

    .local v5, "dstart":I
    if-ltz v7, :cond_3

    .line 266
    :cond_1
    move v7, v6

    if-nez v7, :cond_2

    .line 268
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 269
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1

    .line 271
    :cond_2
    add-int/lit8 v6, v6, -0x1

    .line 273
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/Lexer;->tokenBuffer:[C

    move v8, v5

    move v9, v6

    add-int/2addr v8, v9

    aget-char v7, v7, v8

    move-object v8, v1

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_1

    .line 275
    .end local v5    # "dstart":I
    .end local v6    # "j":I
    :cond_3
    move-object v7, v0

    move v8, v4

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 276
    goto :goto_0
.end method

.method public readOptionalExponent()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/text/Lexer;->read()I

    move-result v7

    move v1, v7

    .line 204
    .local v1, "sign":I
    const/4 v7, 0x0

    move v2, v7

    .line 206
    .local v2, "overflow":Z
    move v7, v1

    const/16 v8, 0x2b

    if-eq v7, v8, :cond_0

    move v7, v1

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_5

    .line 207
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/text/Lexer;->read()I

    move-result v7

    move v3, v7

    .line 214
    .local v3, "c":I
    :goto_0
    move v7, v3

    if-ltz v7, :cond_1

    move v7, v3

    int-to-char v7, v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    move v9, v7

    move v7, v9

    move v8, v9

    move v4, v8

    .local v4, "value":I
    if-gez v7, :cond_6

    .line 216
    .end local v4    # "value":I
    :cond_1
    move v7, v1

    if-eqz v7, :cond_2

    .line 217
    move-object v7, v0

    const-string/jumbo v8, "exponent sign not followed by digit"

    invoke-virtual {v7, v8}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 218
    :cond_2
    const/4 v7, 0x1

    move v4, v7

    .line 234
    .restart local v4    # "value":I
    :goto_1
    move v7, v3

    if-ltz v7, :cond_3

    .line 235
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Lgnu/text/Lexer;->unread(I)V

    .line 236
    :cond_3
    move v7, v1

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_4

    .line 237
    move v7, v4

    neg-int v7, v7

    move v4, v7

    .line 238
    :cond_4
    move v7, v2

    if-eqz v7, :cond_a

    .line 239
    move v7, v1

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_9

    const/high16 v7, -0x80000000

    :goto_2
    move v0, v7

    .line 240
    .end local v0    # "this":Lgnu/text/Lexer;
    :goto_3
    return v0

    .line 210
    .end local v3    # "c":I
    .end local v4    # "value":I
    .restart local v0    # "this":Lgnu/text/Lexer;
    :cond_5
    move v7, v1

    move v3, v7

    .line 211
    .restart local v3    # "c":I
    const/4 v7, 0x0

    move v1, v7

    goto :goto_0

    .line 222
    .restart local v4    # "value":I
    :cond_6
    const v7, 0xccccccb

    move v5, v7

    .line 225
    .local v5, "max":I
    :goto_4
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/text/Lexer;->read()I

    move-result v7

    move v3, v7

    .line 226
    move v7, v3

    int-to-char v7, v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    move v6, v7

    .line 227
    .local v6, "d":I
    move v7, v6

    if-gez v7, :cond_7

    .line 228
    goto :goto_1

    .line 229
    :cond_7
    move v7, v4

    move v8, v5

    if-le v7, v8, :cond_8

    .line 230
    const/4 v7, 0x1

    move v2, v7

    .line 231
    :cond_8
    const/16 v7, 0xa

    move v8, v4

    mul-int/2addr v7, v8

    move v8, v6

    add-int/2addr v7, v8

    move v4, v7

    .line 232
    goto :goto_4

    .line 239
    .end local v5    # "max":I
    .end local v6    # "d":I
    :cond_9
    const v7, 0x7fffffff

    goto :goto_2

    .line 240
    :cond_a
    move v7, v4

    move v0, v7

    goto :goto_3
.end method

.method public readUnicodeChar()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    move v1, v3

    .line 70
    .local v1, "c":I
    move v3, v1

    const v4, 0xd800

    if-lt v3, v4, :cond_0

    move v3, v1

    const v4, 0xdbff

    if-ge v3, v4, :cond_0

    .line 72
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    move v2, v3

    .line 74
    .local v2, "next":I
    move v3, v2

    const v4, 0xdc00

    if-lt v3, v4, :cond_0

    move v3, v2

    const v4, 0xdfff

    if-gt v3, v4, :cond_0

    .line 75
    move v3, v1

    const v4, 0xd800

    sub-int/2addr v3, v4

    const/16 v4, 0xa

    shl-int/lit8 v3, v3, 0xa

    move v4, v1

    const v5, 0xdc00

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    const/high16 v4, 0x10000

    add-int/2addr v3, v4

    move v1, v3

    .line 77
    .end local v2    # "next":I
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lgnu/text/Lexer;
    return v0
.end method

.method public reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget v1, v1, Lgnu/text/Lexer;->saveTokenBufferLength:I

    if-gez v1, :cond_0

    .line 365
    new-instance v1, Ljava/lang/Error;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "internal error: reset called without prior mark"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->reset()V

    .line 367
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lgnu/text/Lexer;->saveTokenBufferLength:I

    .line 368
    return-void
.end method

.method public seenErrors()Z
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/text/Lexer;
    return v0

    .restart local v0    # "this":Lgnu/text/Lexer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInteractive(Z)V
    .locals 4

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move v1, p1

    .local v1, "v":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lgnu/text/Lexer;->interactive:Z

    return-void
.end method

.method public setMessages(Lgnu/text/SourceMessages;)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, p1

    .local v1, "messages":Lgnu/text/SourceMessages;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    return-void
.end method

.method public skip()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->skip()V

    .line 100
    return-void
.end method

.method protected skip_quick()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 132
    return-void
.end method

.method public tokenBufferAppend(I)V
    .locals 9

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move v1, p1

    .local v1, "ch":I
    move v4, v1

    const/high16 v5, 0x10000

    if-lt v4, v5, :cond_0

    .line 327
    move-object v4, v0

    move v5, v1

    const/high16 v6, 0x10000

    sub-int/2addr v5, v6

    const/16 v6, 0xa

    shr-int/lit8 v5, v5, 0xa

    const v6, 0xd800

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 328
    move v4, v1

    const/16 v5, 0x3ff

    and-int/lit16 v4, v4, 0x3ff

    const v5, 0xdc00

    add-int/2addr v4, v5

    move v1, v4

    .line 331
    :cond_0
    move-object v4, v0

    iget v4, v4, Lgnu/text/Lexer;->tokenBufferLength:I

    move v2, v4

    .line 332
    .local v2, "len":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/Lexer;->tokenBuffer:[C

    move-object v3, v4

    .line 333
    .local v3, "buffer":[C
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/text/Lexer;->tokenBuffer:[C

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 335
    move-object v4, v0

    const/4 v5, 0x2

    move v6, v2

    mul-int/2addr v5, v6

    new-array v5, v5, [C

    iput-object v5, v4, Lgnu/text/Lexer;->tokenBuffer:[C

    .line 336
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lgnu/text/Lexer;->tokenBuffer:[C

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/Lexer;->tokenBuffer:[C

    move-object v3, v4

    .line 339
    :cond_1
    move-object v4, v3

    move v5, v2

    move v6, v1

    int-to-char v6, v6

    aput-char v6, v4, v5

    .line 340
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 341
    return-void
.end method

.method public tokenBufferString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    new-instance v1, Ljava/lang/String;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Lgnu/text/Lexer;->tokenBuffer:[C

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Lexer;
    return-object v0
.end method

.method protected unread()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->unread()V

    .line 105
    return-void
.end method

.method public unread(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move v1, p1

    .local v1, "ch":I
    move v2, v1

    if-ltz v2, :cond_0

    .line 89
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->unread()V

    .line 90
    :cond_0
    return-void
.end method

.method protected unread_quick()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lgnu/text/Lexer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 110
    return-void
.end method
