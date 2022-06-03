.class public Lgnu/kawa/lispexpr/ReaderString;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderString.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderString;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method

.method public static readString(Lgnu/text/Lexer;II)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 25
    move-object/from16 v0, p0

    .local v0, "in":Lgnu/text/Lexer;
    move/from16 v1, p1

    .local v1, "ch":I
    move/from16 v2, p2

    .local v2, "count":I
    move-object v10, v0

    iget v10, v10, Lgnu/text/Lexer;->tokenBufferLength:I

    move v3, v10

    .line 26
    .local v3, "startPos":I
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v10

    move-object v4, v10

    .line 27
    .local v4, "port":Lgnu/text/LineBufferedReader;
    const/4 v10, 0x0

    move v5, v10

    .line 28
    .local v5, "saveReadState":C
    move v10, v1

    move v6, v10

    .line 30
    .local v6, "c":I
    move-object v10, v4

    instance-of v10, v10, Lgnu/mapping/InPort;

    if-eqz v10, :cond_0

    .line 32
    move-object v10, v4

    check-cast v10, Lgnu/mapping/InPort;

    iget-char v10, v10, Lgnu/mapping/InPort;->readState:C

    move v5, v10

    .line 33
    move-object v10, v4

    check-cast v10, Lgnu/mapping/InPort;

    move v11, v1

    int-to-char v11, v11

    iput-char v11, v10, Lgnu/mapping/InPort;->readState:C

    .line 39
    :cond_0
    :goto_0
    move v10, v6

    move v7, v10

    .line 42
    .local v7, "prev":I
    move v10, v7

    const/16 v11, 0xd

    if-ne v10, v11, :cond_1

    .line 44
    move-object v10, v4

    :try_start_0
    invoke-virtual {v10}, Lgnu/text/LineBufferedReader;->read()I

    move-result v10

    move v6, v10

    .line 45
    move v10, v6

    const/16 v11, 0xa

    if-ne v10, v11, :cond_2

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    move-object v10, v4

    iget v10, v10, Lgnu/text/LineBufferedReader;->pos:I

    move-object v11, v4

    iget v11, v11, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v10, v11, :cond_4

    move v10, v7

    const/16 v11, 0xa

    if-eq v10, v11, :cond_4

    .line 49
    move-object v10, v4

    iget-object v10, v10, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v11, v4

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Lgnu/text/LineBufferedReader;->pos:I

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v10, v10, v11

    move v6, v10

    .line 52
    :cond_2
    :goto_1
    move v10, v6

    move v11, v1

    if-ne v10, v11, :cond_5

    .line 54
    .line 89
    new-instance v10, Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    iget-object v12, v12, Lgnu/text/Lexer;->tokenBuffer:[C

    move v13, v3

    move-object v14, v0

    iget v14, v14, Lgnu/text/Lexer;->tokenBufferLength:I

    move v15, v3

    sub-int/2addr v14, v15

    invoke-direct {v11, v12, v13, v14}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    move-object v8, v10

    .line 98
    move-object v10, v0

    move v11, v3

    iput v11, v10, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 99
    move-object v10, v4

    instance-of v10, v10, Lgnu/mapping/InPort;

    if-eqz v10, :cond_3

    .line 100
    move-object v10, v4

    check-cast v10, Lgnu/mapping/InPort;

    move v11, v5

    iput-char v11, v10, Lgnu/mapping/InPort;->readState:C

    :cond_3
    move-object v10, v8

    move-object v0, v10

    .end local v0    # "in":Lgnu/text/Lexer;
    return-object v0

    .line 51
    .restart local v0    # "in":Lgnu/text/Lexer;
    :cond_4
    move-object v10, v4

    :try_start_1
    invoke-virtual {v10}, Lgnu/text/LineBufferedReader;->read()I

    move-result v10

    move v6, v10

    goto :goto_1

    .line 56
    :cond_5
    move v10, v6

    sparse-switch v10, :sswitch_data_0

    .line 82
    :cond_6
    move v10, v6

    if-gez v10, :cond_7

    .line 83
    move-object v10, v0

    const-string/jumbo v11, "unexpected EOF in string literal"

    invoke-virtual {v10, v11}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 84
    :cond_7
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 85
    goto/16 :goto_0

    .line 60
    :sswitch_0
    move-object v10, v4

    invoke-virtual {v10}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 61
    const/16 v10, 0xa

    move v8, v10

    .line 68
    .local v8, "t":I
    :goto_2
    move-object v10, v0

    move v11, v8

    invoke-virtual {v10, v11}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 69
    goto/16 :goto_0

    .line 64
    .end local v8    # "t":I
    :cond_8
    const/16 v10, 0xd

    move v8, v10

    .line 66
    .restart local v8    # "t":I
    const/16 v10, 0x20

    move v6, v10

    goto :goto_2

    .line 71
    .end local v8    # "t":I
    :sswitch_1
    move-object v10, v0

    instance-of v10, v10, Lgnu/kawa/lispexpr/LispReader;

    if-eqz v10, :cond_9

    .line 72
    move-object v10, v0

    check-cast v10, Lgnu/kawa/lispexpr/LispReader;

    invoke-virtual {v10}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result v10

    move v6, v10

    .line 75
    :goto_3
    move v10, v6

    const/4 v11, -0x2

    if-ne v10, v11, :cond_6

    .line 77
    const/16 v10, 0xa

    move v6, v10

    .line 78
    goto/16 :goto_0

    .line 74
    :cond_9
    move-object v10, v4

    invoke-virtual {v10}, Lgnu/text/LineBufferedReader;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    move v6, v10

    goto :goto_3

    .line 98
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v0

    move v11, v3

    iput v11, v10, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 99
    move-object v10, v4

    instance-of v10, v10, Lgnu/mapping/InPort;

    if-eqz v10, :cond_a

    .line 100
    move-object v10, v4

    check-cast v10, Lgnu/mapping/InPort;

    move v11, v5

    iput-char v11, v10, Lgnu/mapping/InPort;->readState:C

    :cond_a
    move-object v10, v9

    throw v10

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderString;
    move-object v1, p1

    .local v1, "in":Lgnu/text/Lexer;
    move v2, p2

    .local v2, "ch":I
    move v3, p3

    .local v3, "count":I
    move-object v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Lgnu/kawa/lispexpr/ReaderString;->readString(Lgnu/text/Lexer;II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderString;
    return-object v0
.end method
