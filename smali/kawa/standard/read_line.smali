.class public Lkawa/standard/read_line;
.super Ljava/lang/Object;
.source "read_line.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lkawa/standard/read_line;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lgnu/text/LineBufferedReader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    move-object/from16 v0, p0

    .local v0, "in":Lgnu/text/LineBufferedReader;
    move-object/from16 v1, p1

    .local v1, "handling":Ljava/lang/String;
    move-object v14, v0

    invoke-virtual {v14}, Lgnu/text/LineBufferedReader;->read()I

    move-result v14

    move v2, v14

    .line 12
    .local v2, "ch":I
    move v14, v2

    if-gez v14, :cond_0

    .line 13
    sget-object v14, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    move-object v0, v14

    .line 86
    .end local v0    # "in":Lgnu/text/LineBufferedReader;
    :goto_0
    return-object v0

    .line 14
    .restart local v0    # "in":Lgnu/text/LineBufferedReader;
    :cond_0
    move-object v14, v0

    iget v14, v14, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v3, v14

    .line 15
    .local v3, "start":I
    move v14, v3

    move v4, v14

    .line 16
    .local v4, "pos":I
    move-object v14, v0

    iget v14, v14, Lgnu/text/LineBufferedReader;->limit:I

    move v5, v14

    .line 17
    .local v5, "limit":I
    move-object v14, v0

    iget-object v14, v14, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v6, v14

    .line 18
    .local v6, "buffer":[C
    const/4 v14, -0x1

    move v7, v14

    .line 21
    .local v7, "delim":I
    :cond_1
    move v14, v4

    move v15, v5

    if-ge v14, v15, :cond_8

    .line 23
    move-object v14, v6

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-char v14, v14, v15

    move v2, v14

    .line 24
    move v14, v2

    const/16 v15, 0xd

    if-eq v14, v15, :cond_2

    move v14, v2

    const/16 v15, 0xa

    if-ne v14, v15, :cond_1

    .line 26
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 27
    move-object v14, v1

    const-string/jumbo v15, "trim"

    if-eq v14, v15, :cond_3

    move-object v14, v1

    const-string/jumbo v15, "peek"

    if-ne v14, v15, :cond_7

    .line 29
    :cond_3
    move-object v14, v1

    const-string/jumbo v15, "peek"

    if-ne v14, v15, :cond_4

    .line 30
    const/4 v14, 0x0

    move v7, v14

    .line 31
    :cond_4
    move v14, v2

    const/16 v15, 0xa

    if-ne v14, v15, :cond_5

    .line 32
    const/4 v14, 0x1

    move v7, v14

    .line 37
    :goto_1
    move-object v14, v0

    move v15, v4

    move/from16 v16, v7

    add-int v15, v15, v16

    iput v15, v14, Lgnu/text/LineBufferedReader;->pos:I

    .line 45
    :goto_2
    new-instance v14, Lgnu/lists/FString;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v6

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v3

    sub-int v18, v18, v19

    invoke-direct/range {v15 .. v18}, Lgnu/lists/FString;-><init>([CII)V

    move-object v0, v14

    goto :goto_0

    .line 33
    :cond_5
    move v14, v4

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v15, v5

    if-ge v14, v15, :cond_8

    .line 34
    move-object v14, v6

    move v15, v4

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aget-char v14, v14, v15

    const/16 v15, 0xa

    if-ne v14, v15, :cond_6

    const/4 v14, 0x2

    :goto_3
    move v7, v14

    goto :goto_1

    :cond_6
    const/4 v14, 0x1

    goto :goto_3

    .line 39
    :cond_7
    move-object v14, v1

    const-string/jumbo v15, "concat"

    if-ne v14, v15, :cond_8

    move v14, v2

    const/16 v15, 0xa

    if-ne v14, v15, :cond_8

    .line 41
    move-object v14, v0

    add-int/lit8 v4, v4, 0x1

    move v15, v4

    iput v15, v14, Lgnu/text/LineBufferedReader;->pos:I

    goto :goto_2

    .line 51
    :cond_8
    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x64

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v8, v14

    .line 52
    .local v8, "sbuf":Ljava/lang/StringBuffer;
    move v14, v4

    move v15, v3

    if-le v14, v15, :cond_9

    .line 53
    move-object v14, v8

    move-object v15, v6

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v3

    sub-int v17, v17, v18

    invoke-virtual/range {v14 .. v17}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 54
    :cond_9
    move-object v14, v0

    move v15, v4

    iput v15, v14, Lgnu/text/LineBufferedReader;->pos:I

    .line 55
    move-object v14, v1

    const-string/jumbo v15, "peek"

    if-ne v14, v15, :cond_b

    const/16 v14, 0x50

    :goto_4
    move v9, v14

    .line 58
    .local v9, "mode":C
    move-object v14, v0

    move-object v15, v8

    move/from16 v16, v9

    invoke-virtual/range {v14 .. v16}, Lgnu/text/LineBufferedReader;->readLine(Ljava/lang/StringBuffer;C)V

    .line 59
    move-object v14, v8

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    move v10, v14

    .line 60
    .local v10, "length":I
    move-object v14, v1

    const-string/jumbo v15, "split"

    if-ne v14, v15, :cond_a

    .line 62
    move v14, v10

    if-nez v14, :cond_e

    .line 63
    const/4 v14, 0x0

    move v7, v14

    .line 78
    :cond_a
    :goto_5
    new-instance v14, Lgnu/lists/FString;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v8

    const/16 v17, 0x0

    move/from16 v18, v10

    invoke-direct/range {v15 .. v18}, Lgnu/lists/FString;-><init>(Ljava/lang/StringBuffer;II)V

    move-object v11, v14

    .line 79
    .local v11, "dataStr":Lgnu/lists/FString;
    move-object v14, v1

    const-string/jumbo v15, "split"

    if-ne v14, v15, :cond_12

    .line 81
    new-instance v14, Lgnu/lists/FString;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v8

    move/from16 v17, v10

    move/from16 v18, v7

    sub-int v17, v17, v18

    move/from16 v18, v7

    invoke-direct/range {v15 .. v18}, Lgnu/lists/FString;-><init>(Ljava/lang/StringBuffer;II)V

    move-object v12, v14

    .line 82
    .local v12, "delimStr":Lgnu/lists/FString;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x0

    move-object/from16 v17, v11

    aput-object v17, v15, v16

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x1

    move-object/from16 v17, v12

    aput-object v17, v15, v16

    move-object v13, v14

    .line 83
    .local v13, "values":[Ljava/lang/Object;
    new-instance v14, Lgnu/mapping/Values;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v13

    invoke-direct/range {v15 .. v16}, Lgnu/mapping/Values;-><init>([Ljava/lang/Object;)V

    move-object v0, v14

    goto/16 :goto_0

    .line 55
    .end local v9    # "mode":C
    .end local v10    # "length":I
    .end local v11    # "dataStr":Lgnu/lists/FString;
    .end local v12    # "delimStr":Lgnu/lists/FString;
    .end local v13    # "values":[Ljava/lang/Object;
    :cond_b
    move-object v14, v1

    const-string/jumbo v15, "concat"

    if-eq v14, v15, :cond_c

    move-object v14, v1

    const-string/jumbo v15, "split"

    if-ne v14, v15, :cond_d

    :cond_c
    const/16 v14, 0x41

    goto/16 :goto_4

    :cond_d
    const/16 v14, 0x49

    goto/16 :goto_4

    .line 66
    .restart local v9    # "mode":C
    .restart local v10    # "length":I
    :cond_e
    move-object v14, v8

    move v15, v10

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    move v11, v14

    .line 67
    .local v11, "last":C
    move v14, v11

    const/16 v15, 0xd

    if-ne v14, v15, :cond_f

    .line 68
    const/4 v14, 0x1

    move v7, v14

    .line 75
    :goto_6
    move v14, v10

    move v15, v7

    sub-int/2addr v14, v15

    move v10, v14

    goto/16 :goto_5

    .line 69
    :cond_f
    move v14, v11

    const/16 v15, 0xa

    if-eq v14, v15, :cond_10

    .line 70
    const/4 v14, 0x0

    move v7, v14

    goto :goto_6

    .line 71
    :cond_10
    move v14, v11

    const/4 v15, 0x2

    if-le v14, v15, :cond_11

    move-object v14, v8

    move v15, v10

    const/16 v16, 0x2

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0xd

    if-ne v14, v15, :cond_11

    .line 72
    const/4 v14, 0x2

    move v7, v14

    goto :goto_6

    .line 74
    :cond_11
    const/4 v14, 0x1

    move v7, v14

    goto :goto_6

    .line 86
    .local v11, "dataStr":Lgnu/lists/FString;
    :cond_12
    move-object v14, v11

    move-object v0, v14

    goto/16 :goto_0
.end method
