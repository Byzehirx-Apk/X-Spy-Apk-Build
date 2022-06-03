.class public Lgnu/kawa/lispexpr/ReaderTypespec;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderTypespec.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderTypespec;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKind()I
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderTypespec;
    const/4 v1, 0x6

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderTypespec;
    return v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 23
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/lispexpr/ReaderTypespec;
    move-object/from16 v3, p1

    .local v3, "in":Lgnu/text/Lexer;
    move/from16 v4, p2

    .local v4, "ch":I
    move/from16 v5, p3

    .local v5, "count":I
    move-object v15, v3

    iget v15, v15, Lgnu/text/Lexer;->tokenBufferLength:I

    move v6, v15

    .line 24
    .local v6, "startPos":I
    move-object v15, v3

    invoke-virtual {v15}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v15

    move-object v7, v15

    .line 25
    .local v7, "port":Lgnu/text/LineBufferedReader;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v15

    move-object v8, v15

    .line 26
    .local v8, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    const/4 v15, 0x0

    move v9, v15

    .line 27
    .local v9, "saveReadState":C
    move-object v15, v3

    move/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 28
    move v15, v4

    move v10, v15

    .line 30
    .local v10, "c":I
    move-object v15, v7

    instance-of v15, v15, Lgnu/mapping/InPort;

    if-eqz v15, :cond_0

    .line 32
    move-object v15, v7

    check-cast v15, Lgnu/mapping/InPort;

    iget-char v15, v15, Lgnu/mapping/InPort;->readState:C

    move v9, v15

    .line 33
    move-object v15, v7

    check-cast v15, Lgnu/mapping/InPort;

    move/from16 v16, v4

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput-char v0, v15, Lgnu/mapping/InPort;->readState:C

    .line 37
    :cond_0
    const/4 v15, 0x0

    move v12, v15

    .line 42
    .local v12, "got_open_square":Z
    :goto_0
    move v15, v10

    move v11, v15

    .line 44
    .local v11, "prev":I
    move-object v15, v7

    :try_start_0
    iget v15, v15, Lgnu/text/LineBufferedReader;->pos:I

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget v0, v0, Lgnu/text/LineBufferedReader;->limit:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    move v15, v11

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 45
    move-object v15, v7

    iget-object v15, v15, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object/from16 v16, v7

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    move/from16 v17, v0

    move-object/from16 v21, v16

    move/from16 v22, v17

    move/from16 v16, v22

    move-object/from16 v17, v21

    move/from16 v18, v22

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v15, v15, v16

    move v10, v15

    .line 48
    :goto_1
    move v15, v10

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 50
    move-object v15, v3

    instance-of v15, v15, Lgnu/kawa/lispexpr/LispReader;

    if-eqz v15, :cond_2

    .line 51
    move-object v15, v3

    check-cast v15, Lgnu/kawa/lispexpr/LispReader;

    invoke-virtual {v15}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result v15

    move v10, v15

    goto :goto_0

    .line 47
    :cond_1
    move-object v15, v7

    invoke-virtual {v15}, Lgnu/text/LineBufferedReader;->read()I

    move-result v15

    move v10, v15

    goto :goto_1

    .line 53
    :cond_2
    move-object v15, v7

    invoke-virtual {v15}, Lgnu/text/LineBufferedReader;->read()I

    move-result v15

    move v10, v15

    goto :goto_0

    .line 57
    :cond_3
    move v15, v12

    if-nez v15, :cond_4

    move v15, v10

    const/16 v16, 0x5b

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v21, v16

    move/from16 v16, v21

    move/from16 v17, v21

    move/from16 v12, v17

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    :cond_4
    move v15, v12

    if-eqz v15, :cond_5

    move v15, v10

    const/16 v16, 0x5d

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v21, v16

    move/from16 v16, v21

    move/from16 v17, v21

    move/from16 v12, v17

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    :cond_5
    move-object v15, v8

    move/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v15

    invoke-virtual {v15}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 63
    :cond_6
    move-object v15, v3

    move/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 64
    goto/16 :goto_0

    .line 68
    :cond_7
    move-object v15, v3

    move/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Lgnu/text/Lexer;->unread(I)V

    .line 69
    .line 73
    new-instance v15, Ljava/lang/String;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    move-object/from16 v17, v0

    move/from16 v18, v6

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    move/from16 v19, v0

    move/from16 v20, v6

    sub-int v19, v19, v20

    invoke-direct/range {v16 .. v19}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    move-object v13, v15

    .line 78
    move-object v15, v3

    move/from16 v16, v6

    move/from16 v0, v16

    iput v0, v15, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 79
    move-object v15, v7

    instance-of v15, v15, Lgnu/mapping/InPort;

    if-eqz v15, :cond_8

    .line 80
    move-object v15, v7

    check-cast v15, Lgnu/mapping/InPort;

    move/from16 v16, v9

    move/from16 v0, v16

    iput-char v0, v15, Lgnu/mapping/InPort;->readState:C

    :cond_8
    move-object v15, v13

    move-object v2, v15

    .end local v2    # "this":Lgnu/kawa/lispexpr/ReaderTypespec;
    return-object v2

    .line 78
    .restart local v2    # "this":Lgnu/kawa/lispexpr/ReaderTypespec;
    :catchall_0
    move-exception v15

    move-object v14, v15

    move-object v15, v3

    move/from16 v16, v6

    move/from16 v0, v16

    iput v0, v15, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 79
    move-object v15, v7

    instance-of v15, v15, Lgnu/mapping/InPort;

    if-eqz v15, :cond_9

    .line 80
    move-object v15, v7

    check-cast v15, Lgnu/mapping/InPort;

    move/from16 v16, v9

    move/from16 v0, v16

    iput-char v0, v15, Lgnu/mapping/InPort;->readState:C

    :cond_9
    move-object v15, v14

    throw v15
.end method
