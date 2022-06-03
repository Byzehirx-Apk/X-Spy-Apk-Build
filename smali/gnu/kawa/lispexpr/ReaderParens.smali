.class public Lgnu/kawa/lispexpr/ReaderParens;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderParens.java"


# static fields
.field private static instance:Lgnu/kawa/lispexpr/ReaderParens;


# instance fields
.field close:C

.field command:Ljava/lang/Object;

.field kind:I

.field open:C


# direct methods
.method public constructor <init>(CCILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderParens;
    move v1, p1

    .local v1, "open":C
    move v2, p2

    .local v2, "close":C
    move v3, p3

    .local v3, "kind":I
    move-object v4, p4

    .local v4, "command":Ljava/lang/Object;
    move-object v5, v0

    invoke-direct {v5}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 51
    move-object v5, v0

    move v6, v1

    iput-char v6, v5, Lgnu/kawa/lispexpr/ReaderParens;->open:C

    .line 52
    move-object v5, v0

    move v6, v2

    iput-char v6, v5, Lgnu/kawa/lispexpr/ReaderParens;->close:C

    .line 53
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lgnu/kawa/lispexpr/ReaderParens;->kind:I

    .line 54
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/kawa/lispexpr/ReaderParens;->command:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public static getInstance(CC)Lgnu/kawa/lispexpr/ReaderParens;
    .locals 5

    .prologue
    .line 24
    move v0, p0

    .local v0, "open":C
    move v1, p1

    .local v1, "close":C
    move v2, v0

    move v3, v1

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lgnu/kawa/lispexpr/ReaderParens;->getInstance(CCI)Lgnu/kawa/lispexpr/ReaderParens;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "open":C
    return-object v0
.end method

.method public static getInstance(CCI)Lgnu/kawa/lispexpr/ReaderParens;
    .locals 10

    .prologue
    .line 29
    move v0, p0

    .local v0, "open":C
    move v1, p1

    .local v1, "close":C
    move v2, p2

    .local v2, "kind":I
    move v3, v0

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1

    move v3, v1

    const/16 v4, 0x29

    if-ne v3, v4, :cond_1

    move v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 31
    sget-object v3, Lgnu/kawa/lispexpr/ReaderParens;->instance:Lgnu/kawa/lispexpr/ReaderParens;

    if-nez v3, :cond_0

    .line 32
    new-instance v3, Lgnu/kawa/lispexpr/ReaderParens;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move v5, v0

    move v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/kawa/lispexpr/ReaderParens;-><init>(CCILjava/lang/Object;)V

    sput-object v3, Lgnu/kawa/lispexpr/ReaderParens;->instance:Lgnu/kawa/lispexpr/ReaderParens;

    .line 33
    :cond_0
    sget-object v3, Lgnu/kawa/lispexpr/ReaderParens;->instance:Lgnu/kawa/lispexpr/ReaderParens;

    move-object v0, v3

    .line 37
    .end local v0    # "open":C
    :goto_0
    return-object v0

    .restart local v0    # "open":C
    :cond_1
    new-instance v3, Lgnu/kawa/lispexpr/ReaderParens;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move v5, v0

    move v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/kawa/lispexpr/ReaderParens;-><init>(CCILjava/lang/Object;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static getInstance(CCILjava/lang/Object;)Lgnu/kawa/lispexpr/ReaderParens;
    .locals 11

    .prologue
    .line 43
    move v0, p0

    .local v0, "open":C
    move v1, p1

    .local v1, "close":C
    move v2, p2

    .local v2, "kind":I
    move-object v3, p3

    .local v3, "command":Ljava/lang/Object;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 44
    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Lgnu/kawa/lispexpr/ReaderParens;->getInstance(CCI)Lgnu/kawa/lispexpr/ReaderParens;

    move-result-object v4

    move-object v0, v4

    .line 46
    .end local v0    # "open":C
    :goto_0
    return-object v0

    .restart local v0    # "open":C
    :cond_0
    new-instance v4, Lgnu/kawa/lispexpr/ReaderParens;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move v6, v0

    move v7, v1

    move v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/kawa/lispexpr/ReaderParens;-><init>(CCILjava/lang/Object;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 80
    move-object/from16 v2, p0

    .local v2, "lexer":Lgnu/kawa/lispexpr/LispReader;
    move/from16 v3, p1

    .local v3, "ch":I
    move/from16 v4, p2

    .local v4, "count":I
    move/from16 v5, p3

    .local v5, "close":I
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v20

    move-object/from16 v6, v20

    .line 81
    .local v6, "port":Lgnu/text/LineBufferedReader;
    move-object/from16 v20, v2

    move/from16 v21, v5

    const/16 v22, 0x5d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    const/16 v21, 0x5b

    :goto_0
    invoke-virtual/range {v20 .. v21}, Lgnu/kawa/lispexpr/LispReader;->pushNesting(C)C

    move-result v20

    move/from16 v7, v20

    .line 82
    .local v7, "saveReadState":C
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v20

    move/from16 v8, v20

    .line 83
    .local v8, "startLine":I
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v20

    move/from16 v9, v20

    .line 86
    .local v9, "startColumn":I
    const/16 v20, 0x0

    move-object/from16 v10, v20

    .line 87
    .local v10, "last":Ljava/lang/Object;
    move-object/from16 v20, v2

    :try_start_0
    invoke-virtual/range {v20 .. v20}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v11, v20

    .line 88
    .local v11, "list":Ljava/lang/Object;
    const/16 v20, 0x0

    move/from16 v12, v20

    .line 89
    .local v12, "sawDot":Z
    const/16 v20, 0x0

    move/from16 v13, v20

    .line 90
    .local v13, "sawDotCdr":Z
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v20

    move-object/from16 v14, v20

    .line 93
    .end local v10    # "last":Ljava/lang/Object;
    .local v14, "readTable":Lgnu/kawa/lispexpr/ReadTable;
    :goto_1
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v20

    move/from16 v15, v20

    .line 94
    .local v15, "line":I
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v20

    move/from16 v16, v20

    .line 95
    .local v16, "column":I
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lgnu/text/LineBufferedReader;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v20

    move/from16 v3, v20

    .line 96
    move/from16 v20, v3

    move/from16 v21, v5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 97
    .line 177
    :goto_2
    move-object/from16 v20, v11

    move-object/from16 v15, v20

    .line 181
    .end local v15    # "line":I
    move-object/from16 v20, v2

    move/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    move-object/from16 v20, v15

    move-object/from16 v2, v20

    .end local v2    # "lexer":Lgnu/kawa/lispexpr/LispReader;
    return-object v2

    .line 81
    .end local v7    # "saveReadState":C
    .end local v8    # "startLine":I
    .end local v9    # "startColumn":I
    .end local v11    # "list":Ljava/lang/Object;
    .end local v12    # "sawDot":Z
    .end local v13    # "sawDotCdr":Z
    .end local v14    # "readTable":Lgnu/kawa/lispexpr/ReadTable;
    .end local v16    # "column":I
    .restart local v2    # "lexer":Lgnu/kawa/lispexpr/LispReader;
    :cond_0
    const/16 v21, 0x28

    goto :goto_0

    .line 98
    .restart local v7    # "saveReadState":C
    .restart local v8    # "startLine":I
    .restart local v9    # "startColumn":I
    .restart local v11    # "list":Ljava/lang/Object;
    .restart local v12    # "sawDot":Z
    .restart local v13    # "sawDotCdr":Z
    .restart local v14    # "readTable":Lgnu/kawa/lispexpr/ReadTable;
    .restart local v15    # "line":I
    .restart local v16    # "column":I
    :cond_1
    move/from16 v20, v3

    if-gez v20, :cond_2

    .line 99
    move-object/from16 v20, v2

    :try_start_1
    const-string/jumbo v21, "unexpected EOF in list starting here"

    move/from16 v22, v8

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v23, v9

    invoke-virtual/range {v20 .. v23}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;II)V

    .line 102
    :cond_2
    move/from16 v20, v3

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 104
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v20

    move/from16 v3, v20

    .line 105
    move-object/from16 v20, v14

    move/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v20

    move-object/from16 v17, v20

    .line 106
    .local v17, "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v20

    move/from16 v18, v20

    .line 107
    .local v18, "kind":I
    move/from16 v20, v18

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    move/from16 v20, v18

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    move/from16 v20, v18

    if-nez v20, :cond_7

    .line 111
    :cond_3
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lgnu/text/LineBufferedReader;->skip()V

    .line 112
    add-int/lit8 v16, v16, 0x1

    .line 113
    move/from16 v20, v3

    move/from16 v21, v5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 115
    move-object/from16 v20, v2

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "unexpected \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move/from16 v22, v5

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\' after \'.\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 117
    goto/16 :goto_2

    .line 119
    :cond_4
    move/from16 v20, v3

    if-gez v20, :cond_5

    .line 120
    move-object/from16 v20, v2

    const-string/jumbo v21, "unexpected EOF in list starting here"

    move/from16 v22, v8

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v23, v9

    invoke-virtual/range {v20 .. v23}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;II)V

    .line 122
    :cond_5
    move/from16 v20, v12

    if-eqz v20, :cond_6

    .line 124
    move-object/from16 v20, v2

    const-string/jumbo v21, "multiple \'.\' in list"

    invoke-virtual/range {v20 .. v21}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 125
    const/16 v20, 0x0

    move/from16 v13, v20

    .line 126
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v11, v20

    .line 127
    const/16 v20, 0x0

    move-object/from16 v10, v20

    .line 129
    :cond_6
    const/16 v20, 0x1

    move/from16 v12, v20

    .line 137
    .line 140
    .end local v18    # "kind":I
    :goto_3
    move-object/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v22, v17

    move-object/from16 v23, v14

    invoke-virtual/range {v20 .. v23}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v18, v20

    .line 141
    .local v18, "value":Ljava/lang/Object;
    move-object/from16 v20, v18

    sget-object v21, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 142
    goto/16 :goto_1

    .line 134
    .local v18, "kind":I
    :cond_7
    const/16 v20, 0x2e

    move/from16 v3, v20

    .line 135
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getConstituentInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v20

    move-object/from16 v17, v20

    goto :goto_3

    .line 139
    .end local v17    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    .end local v18    # "kind":I
    :cond_8
    move-object/from16 v20, v14

    move/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v20

    move-object/from16 v17, v20

    .restart local v17    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    goto :goto_3

    .line 143
    .local v18, "value":Ljava/lang/Object;
    :cond_9
    move-object/from16 v20, v2

    move-object/from16 v21, v18

    move-object/from16 v22, v14

    move/from16 v23, v15

    move/from16 v24, v16

    invoke-virtual/range {v20 .. v24}, Lgnu/kawa/lispexpr/LispReader;->handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v18, v20

    .line 150
    move/from16 v20, v13

    if-eqz v20, :cond_a

    .line 152
    move-object/from16 v20, v2

    const-string/jumbo v21, "multiple values after \'.\'"

    invoke-virtual/range {v20 .. v21}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 153
    const/16 v20, 0x0

    move-object/from16 v10, v20

    .line 154
    .restart local v10    # "last":Ljava/lang/Object;
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v11, v20

    .line 155
    const/16 v20, 0x0

    move/from16 v13, v20

    .line 156
    goto/16 :goto_1

    .line 158
    .end local v10    # "last":Ljava/lang/Object;
    :cond_a
    move/from16 v20, v12

    if-eqz v20, :cond_b

    .line 160
    const/16 v20, 0x1

    move/from16 v13, v20

    .line 171
    .end local v18    # "value":Ljava/lang/Object;
    :goto_4
    move-object/from16 v20, v10

    if-nez v20, :cond_d

    .line 172
    move-object/from16 v20, v18

    move-object/from16 v11, v20

    .line 175
    :goto_5
    move-object/from16 v20, v18

    move-object/from16 v10, v20

    .line 176
    .restart local v10    # "last":Ljava/lang/Object;
    goto/16 :goto_1

    .line 164
    .end local v10    # "last":Ljava/lang/Object;
    .restart local v18    # "value":Ljava/lang/Object;
    :cond_b
    move-object/from16 v20, v10

    if-nez v20, :cond_c

    .line 166
    move/from16 v20, v8

    move/from16 v15, v20

    .line 167
    move/from16 v20, v9

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v16, v20

    .line 169
    :cond_c
    move-object/from16 v20, v2

    move-object/from16 v21, v18

    move/from16 v22, v15

    move/from16 v23, v16

    invoke-virtual/range {v20 .. v23}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v20

    move-object/from16 v18, v20

    .local v18, "value":Lgnu/lists/Pair;
    goto :goto_4

    .line 174
    .end local v18    # "value":Lgnu/lists/Pair;
    :cond_d
    move-object/from16 v20, v2

    move-object/from16 v21, v10

    move-object/from16 v22, v18

    invoke-virtual/range {v20 .. v22}, Lgnu/kawa/lispexpr/LispReader;->setCdr(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 181
    .end local v11    # "list":Ljava/lang/Object;
    .end local v12    # "sawDot":Z
    .end local v13    # "sawDotCdr":Z
    .end local v14    # "readTable":Lgnu/kawa/lispexpr/ReadTable;
    .end local v15    # "line":I
    .end local v16    # "column":I
    .end local v17    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    :catchall_0
    move-exception v20

    move-object/from16 v19, v20

    move-object/from16 v20, v2

    move/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    move-object/from16 v20, v19

    throw v20
.end method


# virtual methods
.method public getKind()I
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderParens;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/lispexpr/ReaderParens;->kind:I

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderParens;
    return v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderParens;
    move-object v1, p1

    .local v1, "in":Lgnu/text/Lexer;
    move v2, p2

    .local v2, "ch":I
    move/from16 v3, p3

    .local v3, "count":I
    move-object v9, v1

    check-cast v9, Lgnu/kawa/lispexpr/LispReader;

    move v10, v2

    move v11, v3

    move-object v12, v0

    iget-char v12, v12, Lgnu/kawa/lispexpr/ReaderParens;->close:C

    invoke-static {v9, v10, v11, v12}, Lgnu/kawa/lispexpr/ReaderParens;->readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    .line 64
    .local v4, "r":Ljava/lang/Object;
    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/lispexpr/ReaderParens;->command:Ljava/lang/Object;

    if-eqz v9, :cond_0

    .line 66
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v9

    move-object v5, v9

    .line 67
    .local v5, "port":Lgnu/text/LineBufferedReader;
    move-object v9, v5

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v9

    move v6, v9

    .line 68
    .local v6, "startLine":I
    move-object v9, v5

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v9

    move v7, v9

    .line 69
    .local v7, "startColumn":I
    move-object v9, v1

    check-cast v9, Lgnu/kawa/lispexpr/LispReader;

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/lispexpr/ReaderParens;->command:Ljava/lang/Object;

    move v11, v6

    move v12, v7

    invoke-virtual {v9, v10, v11, v12}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v9

    move-object v8, v9

    .line 70
    .local v8, "p":Lgnu/lists/Pair;
    move-object v9, v1

    check-cast v9, Lgnu/kawa/lispexpr/LispReader;

    move-object v10, v8

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/lispexpr/LispReader;->setCdr(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    move-object v9, v8

    move-object v4, v9

    .line 73
    .end local v4    # "r":Ljava/lang/Object;
    .end local v5    # "port":Lgnu/text/LineBufferedReader;
    .end local v6    # "startLine":I
    .end local v7    # "startColumn":I
    .end local v8    # "p":Lgnu/lists/Pair;
    :cond_0
    move-object v9, v4

    move-object v0, v9

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderParens;
    return-object v0
.end method
