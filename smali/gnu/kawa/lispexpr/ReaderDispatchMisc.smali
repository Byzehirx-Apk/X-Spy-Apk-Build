.class public Lgnu/kawa/lispexpr/ReaderDispatchMisc;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderDispatchMisc.java"


# static fields
.field private static instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;


# instance fields
.field protected code:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderDispatchMisc;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 28
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderDispatchMisc;
    move v1, p1

    .local v1, "code":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 33
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    .line 34
    return-void
.end method

.method public static getInstance()Lgnu/kawa/lispexpr/ReaderDispatchMisc;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    return-object v0
.end method

.method public static readRegex(Lgnu/text/Lexer;II)Ljava/util/regex/Pattern;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 213
    move-object/from16 v0, p0

    .local v0, "in":Lgnu/text/Lexer;
    move/from16 v1, p1

    .local v1, "ch":I
    move/from16 v2, p2

    .local v2, "count":I
    move-object v10, v0

    iget v10, v10, Lgnu/text/Lexer;->tokenBufferLength:I

    move v3, v10

    .line 214
    .local v3, "startPos":I
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v10

    move-object v4, v10

    .line 215
    .local v4, "port":Lgnu/text/LineBufferedReader;
    const/4 v10, 0x0

    move v5, v10

    .line 216
    .local v5, "saveReadState":C
    const/4 v10, 0x0

    move v6, v10

    .line 217
    .local v6, "flags":I
    move-object v10, v4

    instance-of v10, v10, Lgnu/mapping/InPort;

    if-eqz v10, :cond_0

    .line 219
    move-object v10, v4

    check-cast v10, Lgnu/mapping/InPort;

    iget-char v10, v10, Lgnu/mapping/InPort;->readState:C

    move v5, v10

    .line 220
    move-object v10, v4

    check-cast v10, Lgnu/mapping/InPort;

    const/16 v11, 0x2f

    iput-char v11, v10, Lgnu/mapping/InPort;->readState:C

    .line 228
    :cond_0
    :goto_0
    move-object v10, v4

    :try_start_0
    invoke-virtual {v10}, Lgnu/text/LineBufferedReader;->read()I

    move-result v10

    move v8, v10

    .line 229
    .local v8, "c":I
    move v10, v8

    if-gez v10, :cond_1

    .line 230
    move-object v10, v0

    const-string/jumbo v11, "unexpected EOF in regex literal"

    invoke-virtual {v10, v11}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 231
    :cond_1
    move v10, v8

    move v11, v1

    if-ne v10, v11, :cond_3

    .line 232
    .line 250
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

    move-object v7, v10

    .line 254
    .local v7, "pattern":Ljava/lang/String;
    :goto_1
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/text/Lexer;->peek()I

    move-result v10

    move v8, v10

    .line 255
    move v10, v8

    const/16 v11, 0x69

    if-eq v10, v11, :cond_2

    move v10, v8

    const/16 v11, 0x49

    if-ne v10, v11, :cond_8

    .line 256
    :cond_2
    move v10, v6

    const/16 v11, 0x42

    or-int/lit8 v10, v10, 0x42

    move v6, v10

    .line 276
    :goto_2
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/text/Lexer;->skip()V

    .line 277
    goto :goto_1

    .line 233
    .end local v7    # "pattern":Ljava/lang/String;
    :cond_3
    move v10, v8

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_7

    .line 235
    move-object v10, v4

    invoke-virtual {v10}, Lgnu/text/LineBufferedReader;->read()I

    move-result v10

    move v8, v10

    .line 236
    move v10, v8

    const/16 v11, 0x20

    if-eq v10, v11, :cond_4

    move v10, v8

    const/16 v11, 0x9

    if-eq v10, v11, :cond_4

    move v10, v8

    const/16 v11, 0xd

    if-eq v10, v11, :cond_4

    move v10, v8

    const/16 v11, 0xa

    if-ne v10, v11, :cond_5

    :cond_4
    move-object v10, v0

    instance-of v10, v10, Lgnu/kawa/lispexpr/LispReader;

    if-eqz v10, :cond_5

    .line 239
    move-object v10, v0

    check-cast v10, Lgnu/kawa/lispexpr/LispReader;

    move v11, v8

    invoke-virtual {v10, v11}, Lgnu/kawa/lispexpr/LispReader;->readEscape(I)I

    move-result v10

    move v8, v10

    .line 240
    move v10, v8

    const/4 v11, -0x2

    if-ne v10, v11, :cond_5

    .line 241
    goto :goto_0

    .line 243
    :cond_5
    move v10, v8

    if-gez v10, :cond_6

    .line 244
    move-object v10, v0

    const-string/jumbo v11, "unexpected EOF in regex literal"

    invoke-virtual {v10, v11}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 245
    :cond_6
    move v10, v8

    move v11, v1

    if-eq v10, v11, :cond_7

    .line 246
    move-object v10, v0

    const/16 v11, 0x5c

    invoke-virtual {v10, v11}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 248
    :cond_7
    move-object v10, v0

    move v11, v8

    invoke-virtual {v10, v11}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 249
    goto/16 :goto_0

    .line 257
    .restart local v7    # "pattern":Ljava/lang/String;
    :cond_8
    move v10, v8

    const/16 v11, 0x73

    if-eq v10, v11, :cond_9

    move v10, v8

    const/16 v11, 0x53

    if-ne v10, v11, :cond_a

    .line 258
    :cond_9
    move v10, v6

    const/16 v11, 0x20

    or-int/lit8 v10, v10, 0x20

    move v6, v10

    goto :goto_2

    .line 259
    :cond_a
    move v10, v8

    const/16 v11, 0x6d

    if-eq v10, v11, :cond_b

    move v10, v8

    const/16 v11, 0x4d

    if-ne v10, v11, :cond_c

    .line 260
    :cond_b
    move v10, v6

    const/16 v11, 0x8

    or-int/lit8 v10, v10, 0x8

    move v6, v10

    goto :goto_2

    .line 270
    :cond_c
    move v10, v8

    invoke-static {v10}, Ljava/lang/Character;->isLetter(I)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 272
    move-object v10, v0

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unrecognized regex option \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v8

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x27

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 282
    .end local v7    # "pattern":Ljava/lang/String;
    .end local v8    # "c":I
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v0

    move v11, v3

    iput v11, v10, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 283
    move-object v10, v4

    instance-of v10, v10, Lgnu/mapping/InPort;

    if-eqz v10, :cond_d

    .line 284
    move-object v10, v4

    check-cast v10, Lgnu/mapping/InPort;

    move v11, v5

    iput-char v11, v10, Lgnu/mapping/InPort;->readState:C

    :cond_d
    move-object v10, v9

    throw v10

    .line 278
    .restart local v7    # "pattern":Ljava/lang/String;
    .restart local v8    # "c":I
    :cond_e
    move-object v10, v7

    move v11, v6

    :try_start_1
    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    move-object v8, v10

    .line 282
    .end local v8    # "c":I
    move-object v10, v0

    move v11, v3

    iput v11, v10, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 283
    move-object v10, v4

    instance-of v10, v10, Lgnu/mapping/InPort;

    if-eqz v10, :cond_f

    .line 284
    move-object v10, v4

    check-cast v10, Lgnu/mapping/InPort;

    move v11, v5

    iput-char v11, v10, Lgnu/mapping/InPort;->readState:C

    :cond_f
    move-object v10, v8

    move-object v0, v10

    .end local v0    # "in":Lgnu/text/Lexer;
    return-object v0
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 39
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/lispexpr/ReaderDispatchMisc;
    move-object/from16 v3, p1

    .local v3, "in":Lgnu/text/Lexer;
    move/from16 v4, p2

    .local v4, "ch":I
    move/from16 v5, p3

    .local v5, "count":I
    move-object/from16 v19, v3

    check-cast v19, Lgnu/kawa/lispexpr/LispReader;

    move-object/from16 v6, v19

    .line 40
    .local v6, "reader":Lgnu/kawa/lispexpr/LispReader;
    const/16 v19, 0x0

    move/from16 v7, v19

    .line 44
    .local v7, "saveReadState":C
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    move/from16 v19, v0

    if-ltz v19, :cond_0

    .line 45
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    move/from16 v19, v0

    move/from16 v4, v19

    .line 46
    :cond_0
    move/from16 v19, v4

    sparse-switch v19, :sswitch_data_0

    .line 204
    move-object/from16 v19, v3

    const-string/jumbo v20, "An invalid #-construct was read."

    invoke-virtual/range {v19 .. v20}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 205
    sget-object v19, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v2, v19

    .end local v2    # "this":Lgnu/kawa/lispexpr/ReaderDispatchMisc;
    :goto_0
    return-object v2

    .line 51
    .restart local v2    # "this":Lgnu/kawa/lispexpr/ReaderDispatchMisc;
    :sswitch_0
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v19, v0

    move/from16 v11, v19

    .line 52
    .local v11, "startPos":I
    move-object/from16 v19, v6

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v20

    const/16 v21, 0x50

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v22

    invoke-virtual/range {v19 .. v22}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 53
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v19, v0

    move/from16 v20, v11

    sub-int v19, v19, v20

    move/from16 v9, v19

    .line 54
    .local v9, "length":I
    new-instance v19, Ljava/lang/String;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v21, v0

    move/from16 v22, v11

    move/from16 v23, v9

    invoke-direct/range {v20 .. v23}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v10, v19

    .line 55
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v19, v6

    move/from16 v20, v11

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 56
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v19

    move-object/from16 v2, v19

    goto :goto_0

    .line 58
    .end local v9    # "length":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "startPos":I
    :sswitch_1
    move-object/from16 v19, v6

    invoke-static/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->readCharacter(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    goto :goto_0

    .line 60
    :sswitch_2
    move-object/from16 v19, v6

    invoke-static/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->readSpecial(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    goto :goto_0

    .line 62
    :sswitch_3
    sget-object v19, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v2, v19

    goto :goto_0

    .line 64
    :sswitch_4
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/text/Lexer;->peek()I

    move-result v19

    move/from16 v4, v19

    .line 65
    move/from16 v19, v4

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isDigit(C)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 66
    move-object/from16 v19, v6

    const/16 v20, 0x46

    invoke-static/range {v19 .. v20}, Lgnu/kawa/lispexpr/LispReader;->readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 67
    :cond_1
    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 70
    :sswitch_5
    move-object/from16 v19, v6

    move/from16 v20, v4

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lgnu/kawa/lispexpr/LispReader;->readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 72
    :sswitch_6
    move/from16 v19, v5

    const/16 v20, 0x24

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    .line 74
    move-object/from16 v19, v3

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "the radix "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " is too big (max is 36)"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 75
    const/16 v19, 0x24

    move/from16 v5, v19

    .line 77
    :cond_2
    const/16 v19, 0x0

    move-object/from16 v20, v6

    move/from16 v21, v5

    invoke-static/range {v19 .. v21}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 79
    :sswitch_7
    const/16 v19, 0x0

    move-object/from16 v20, v6

    const/16 v21, 0x10

    invoke-static/range {v19 .. v21}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 81
    :sswitch_8
    const/16 v19, 0x0

    move-object/from16 v20, v6

    const/16 v21, 0xa

    invoke-static/range {v19 .. v21}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 83
    :sswitch_9
    const/16 v19, 0x0

    move-object/from16 v20, v6

    const/16 v21, 0x8

    invoke-static/range {v19 .. v21}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 85
    :sswitch_a
    const/16 v19, 0x0

    move-object/from16 v20, v6

    const/16 v21, 0x2

    invoke-static/range {v19 .. v21}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 88
    :sswitch_b
    move-object/from16 v19, v6

    const/16 v20, 0x23

    invoke-virtual/range {v19 .. v20}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 89
    move-object/from16 v19, v6

    move/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 90
    const/16 v19, 0x2

    move-object/from16 v20, v6

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 93
    :sswitch_c
    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-static/range {v19 .. v21}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->readRegex(Lgnu/text/Lexer;II)Ljava/util/regex/Pattern;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 96
    :sswitch_d
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v19

    move-object/from16 v8, v19

    .line 97
    .local v8, "port":Lgnu/text/LineBufferedReader;
    move-object/from16 v19, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 99
    move-object/from16 v19, v8

    check-cast v19, Lgnu/mapping/InPort;

    move-object/from16 v0, v19

    iget-char v0, v0, Lgnu/mapping/InPort;->readState:C

    move/from16 v19, v0

    move/from16 v7, v19

    .line 100
    move-object/from16 v19, v8

    check-cast v19, Lgnu/mapping/InPort;

    const/16 v20, 0x7c

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 104
    :cond_3
    move-object/from16 v19, v6

    const/16 v20, 0x23

    const/16 v21, 0x7c

    :try_start_0
    invoke-virtual/range {v19 .. v21}, Lgnu/kawa/lispexpr/LispReader;->readNestedComment(CC)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    move-object/from16 v19, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 109
    move-object/from16 v19, v8

    check-cast v19, Lgnu/mapping/InPort;

    move/from16 v20, v7

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 111
    :cond_4
    sget-object v19, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 108
    :catchall_0
    move-exception v19

    move-object/from16 v12, v19

    move-object/from16 v19, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 109
    move-object/from16 v19, v8

    check-cast v19, Lgnu/mapping/InPort;

    move/from16 v20, v7

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    :cond_5
    move-object/from16 v19, v12

    throw v19

    .line 113
    .end local v8    # "port":Lgnu/text/LineBufferedReader;
    :sswitch_e
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v19

    move-object/from16 v8, v19

    .line 114
    .restart local v8    # "port":Lgnu/text/LineBufferedReader;
    move-object/from16 v19, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 116
    move-object/from16 v19, v8

    check-cast v19, Lgnu/mapping/InPort;

    move-object/from16 v0, v19

    iget-char v0, v0, Lgnu/mapping/InPort;->readState:C

    move/from16 v19, v0

    move/from16 v7, v19

    .line 117
    move-object/from16 v19, v8

    check-cast v19, Lgnu/mapping/InPort;

    const/16 v20, 0x3b

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 121
    :cond_6
    move-object/from16 v19, v6

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v19

    .line 125
    move-object/from16 v19, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 126
    move-object/from16 v19, v8

    check-cast v19, Lgnu/mapping/InPort;

    move/from16 v20, v7

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 128
    :cond_7
    sget-object v19, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 125
    :catchall_1
    move-exception v19

    move-object/from16 v13, v19

    move-object/from16 v19, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 126
    move-object/from16 v19, v8

    check-cast v19, Lgnu/mapping/InPort;

    move/from16 v20, v7

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    :cond_8
    move-object/from16 v19, v13

    throw v19

    .line 130
    .end local v8    # "port":Lgnu/text/LineBufferedReader;
    :sswitch_f
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v19

    move-object/from16 v8, v19

    .line 132
    .restart local v8    # "port":Lgnu/text/LineBufferedReader;
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v19

    const/16 v20, 0x28

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v12, v20

    .local v12, "list":Ljava/lang/Object;
    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v19

    move/from16 v24, v19

    move/from16 v19, v24

    move/from16 v20, v24

    move/from16 v9, v20

    .restart local v9    # "length":I
    if-lez v19, :cond_e

    move-object/from16 v19, v12

    check-cast v19, Lgnu/lists/Pair;

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 138
    move-object/from16 v19, v12

    check-cast v19, Lgnu/lists/Pair;

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v10, v19

    .line 139
    .restart local v10    # "name":Ljava/lang/String;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v19

    move-object/from16 v20, v10

    invoke-virtual/range {v19 .. v20}, Lgnu/kawa/lispexpr/ReadTable;->getReaderCtor(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    .line 140
    .local v13, "proc":Ljava/lang/Object;
    move-object/from16 v19, v13

    if-nez v19, :cond_9

    .line 141
    move-object/from16 v19, v3

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "unknown reader constructor "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 170
    .line 173
    .end local v9    # "length":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "list":Ljava/lang/Object;
    .end local v13    # "proc":Ljava/lang/Object;
    :goto_1
    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 142
    .restart local v9    # "length":I
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v12    # "list":Ljava/lang/Object;
    .restart local v13    # "proc":Ljava/lang/Object;
    :cond_9
    move-object/from16 v19, v13

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/Procedure;

    move/from16 v19, v0

    if-nez v19, :cond_a

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/Type;

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 143
    move-object/from16 v19, v3

    const-string/jumbo v20, "reader constructor must be procedure or type name"

    invoke-virtual/range {v19 .. v20}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_a
    add-int/lit8 v9, v9, -0x1

    .line 147
    move-object/from16 v19, v13

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/Type;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    const/16 v19, 0x1

    :goto_2
    move/from16 v14, v19

    .line 148
    .local v14, "parg":I
    move/from16 v19, v14

    move/from16 v20, v9

    add-int v19, v19, v20

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v15, v19

    .line 149
    .local v15, "args":[Ljava/lang/Object;
    move-object/from16 v19, v12

    check-cast v19, Lgnu/lists/Pair;

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v16, v19

    .line 150
    .local v16, "argList":Ljava/lang/Object;
    const/16 v19, 0x0

    move/from16 v17, v19

    .local v17, "i":I
    :goto_3
    move/from16 v19, v17

    move/from16 v20, v9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    .line 152
    move-object/from16 v19, v16

    check-cast v19, Lgnu/lists/Pair;

    move-object/from16 v18, v19

    .line 153
    .local v18, "pair":Lgnu/lists/Pair;
    move-object/from16 v19, v15

    move/from16 v20, v14

    move/from16 v21, v17

    add-int v20, v20, v21

    move-object/from16 v21, v18

    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    aput-object v21, v19, v20

    .line 154
    move-object/from16 v19, v18

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v16, v19

    .line 150
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 147
    .end local v14    # "parg":I
    .end local v15    # "args":[Ljava/lang/Object;
    .end local v16    # "argList":Ljava/lang/Object;
    .end local v17    # "i":I
    .end local v18    # "pair":Lgnu/lists/Pair;
    :cond_b
    const/16 v19, 0x0

    goto :goto_2

    .line 158
    .restart local v14    # "parg":I
    .restart local v15    # "args":[Ljava/lang/Object;
    .restart local v16    # "argList":Ljava/lang/Object;
    .restart local v17    # "i":I
    :cond_c
    move/from16 v19, v14

    if-lez v19, :cond_d

    .line 160
    move-object/from16 v19, v15

    const/16 v20, 0x0

    move-object/from16 v21, v13

    :try_start_2
    aput-object v21, v19, v20

    .line 161
    sget-object v19, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 163
    :cond_d
    move-object/from16 v19, v13

    check-cast v19, Lgnu/mapping/Procedure;

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 165
    :catch_0
    move-exception v19

    move-object/from16 v17, v19

    .line 167
    .local v17, "ex":Ljava/lang/Throwable;
    move-object/from16 v19, v3

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "caught "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " applying reader constructor "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 172
    .end local v9    # "length":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "list":Ljava/lang/Object;
    .end local v13    # "proc":Ljava/lang/Object;
    .end local v14    # "parg":I
    .end local v15    # "args":[Ljava/lang/Object;
    .end local v16    # "argList":Ljava/lang/Object;
    .end local v17    # "ex":Ljava/lang/Throwable;
    :cond_e
    move-object/from16 v19, v3

    const-string/jumbo v20, "a non-empty list starting with a symbol must follow #,"

    invoke-virtual/range {v19 .. v20}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 175
    .end local v8    # "port":Lgnu/text/LineBufferedReader;
    :sswitch_10
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    .line 176
    .local v13, "object":Ljava/lang/Object;
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/kawa/lispexpr/LispReader;

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 178
    move-object/from16 v19, v3

    check-cast v19, Lgnu/kawa/lispexpr/LispReader;

    move-object/from16 v14, v19

    .line 179
    .local v14, "lin":Lgnu/kawa/lispexpr/LispReader;
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;

    move-object/from16 v19, v0

    move-object/from16 v15, v19

    .line 180
    .local v15, "map":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v19, v15

    if-nez v19, :cond_f

    .line 182
    new-instance v19, Lgnu/kawa/util/GeneralHashTable;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    move-object/from16 v15, v19

    .line 183
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/lispexpr/LispReader;->sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;

    .line 185
    :cond_f
    move-object/from16 v19, v15

    move/from16 v20, v5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v21, v13

    invoke-virtual/range {v19 .. v21}, Lgnu/kawa/util/GeneralHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 187
    .end local v14    # "lin":Lgnu/kawa/lispexpr/LispReader;
    .end local v15    # "map":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_10
    move-object/from16 v19, v13

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 189
    .end local v13    # "object":Ljava/lang/Object;
    :sswitch_11
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/kawa/lispexpr/LispReader;

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 191
    move-object/from16 v19, v3

    check-cast v19, Lgnu/kawa/lispexpr/LispReader;

    move-object/from16 v14, v19

    .line 192
    .restart local v14    # "lin":Lgnu/kawa/lispexpr/LispReader;
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;

    move-object/from16 v19, v0

    move-object/from16 v15, v19

    .line 193
    .restart local v15    # "map":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v19, v15

    if-eqz v19, :cond_11

    .line 195
    move/from16 v19, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v16, v19

    .line 196
    .local v16, "key":Ljava/lang/Integer;
    move-object/from16 v19, v15

    move-object/from16 v20, v16

    move-object/from16 v21, v3

    invoke-virtual/range {v19 .. v21}, Lgnu/kawa/util/GeneralHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    .line 197
    .restart local v13    # "object":Ljava/lang/Object;
    move-object/from16 v19, v13

    move-object/from16 v20, v3

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_11

    .line 198
    move-object/from16 v19, v13

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 201
    .end local v13    # "object":Ljava/lang/Object;
    .end local v14    # "lin":Lgnu/kawa/lispexpr/LispReader;
    .end local v15    # "map":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v16    # "key":Ljava/lang/Integer;
    :cond_11
    move-object/from16 v19, v3

    const-string/jumbo v20, "an unrecognized #n# back-reference was read"

    invoke-virtual/range {v19 .. v20}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 202
    sget-object v19, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_2
        0x23 -> :sswitch_11
        0x2c -> :sswitch_f
        0x2f -> :sswitch_c
        0x3a -> :sswitch_0
        0x3b -> :sswitch_e
        0x3d -> :sswitch_10
        0x42 -> :sswitch_a
        0x44 -> :sswitch_8
        0x45 -> :sswitch_b
        0x46 -> :sswitch_4
        0x49 -> :sswitch_b
        0x4f -> :sswitch_9
        0x52 -> :sswitch_6
        0x53 -> :sswitch_5
        0x54 -> :sswitch_3
        0x55 -> :sswitch_5
        0x58 -> :sswitch_7
        0x5c -> :sswitch_1
        0x7c -> :sswitch_d
    .end sparse-switch
.end method
