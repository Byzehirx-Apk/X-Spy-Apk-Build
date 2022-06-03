.class public Lgnu/text/PadFormat;
.super Lgnu/text/ReportFormat;
.source "PadFormat.java"


# instance fields
.field fmt:Ljava/text/Format;

.field minWidth:I

.field padChar:C

.field where:I


# direct methods
.method public constructor <init>(Ljava/text/Format;I)V
    .locals 8

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/text/PadFormat;
    move-object v1, p1

    .local v1, "fmt":Ljava/text/Format;
    move v2, p2

    .local v2, "minWidth":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/16 v6, 0x20

    const/16 v7, 0x64

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/text/PadFormat;-><init>(Ljava/text/Format;ICI)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/text/Format;ICI)V
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/text/PadFormat;
    move-object v1, p1

    .local v1, "fmt":Ljava/text/Format;
    move v2, p2

    .local v2, "minWidth":I
    move v3, p3

    .local v3, "padChar":C
    move v4, p4

    .local v4, "where":I
    move-object v5, v0

    invoke-direct {v5}, Lgnu/text/ReportFormat;-><init>()V

    .line 21
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/text/PadFormat;->fmt:Ljava/text/Format;

    .line 22
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lgnu/text/PadFormat;->minWidth:I

    .line 23
    move-object v5, v0

    move v6, v3

    iput-char v6, v5, Lgnu/text/PadFormat;->padChar:C

    .line 24
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lgnu/text/PadFormat;->where:I

    .line 25
    return-void
.end method

.method public static format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;CIIIILjava/text/FieldPosition;)I
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    move-object/from16 v2, p0

    .local v2, "fmt":Ljava/text/Format;
    move-object/from16 v3, p1

    .local v3, "args":[Ljava/lang/Object;
    move/from16 v4, p2

    .local v4, "start":I
    move-object/from16 v5, p3

    .local v5, "dst":Ljava/io/Writer;
    move/from16 v6, p4

    .local v6, "padChar":C
    move/from16 v7, p5

    .local v7, "minWidth":I
    move/from16 v8, p6

    .local v8, "colInc":I
    move/from16 v9, p7

    .local v9, "minPad":I
    move/from16 v10, p8

    .local v10, "where":I
    move-object/from16 v11, p9

    .local v11, "fpos":Ljava/text/FieldPosition;
    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const/16 v21, 0xc8

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object/from16 v12, v19

    .line 69
    .local v12, "tbuf":Ljava/lang/StringBuffer;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/text/ReportFormat;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 70
    move-object/from16 v19, v2

    check-cast v19, Lgnu/text/ReportFormat;

    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v22, v12

    move-object/from16 v23, v11

    invoke-virtual/range {v19 .. v23}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result v19

    move/from16 v4, v19

    .line 82
    :goto_0
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    move/from16 v13, v19

    .line 83
    .local v13, "len":I
    move/from16 v19, v13

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    invoke-static/range {v19 .. v22}, Lgnu/text/PadFormat;->padNeeded(IIII)I

    move-result v19

    move/from16 v14, v19

    .line 84
    .local v14, "pad":I
    const/16 v19, 0x0

    move/from16 v15, v19

    .line 85
    .local v15, "prefix":I
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v16, v19

    .line 86
    .local v16, "text":Ljava/lang/String;
    move/from16 v19, v14

    if-lez v19, :cond_a

    .line 88
    move/from16 v19, v10

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 90
    move/from16 v19, v13

    if-lez v19, :cond_4

    .line 92
    move-object/from16 v19, v16

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v17, v19

    .line 93
    .local v17, "ch":C
    move/from16 v19, v17

    const/16 v20, 0x2d

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    move/from16 v19, v17

    const/16 v20, 0x2b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 95
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 96
    move-object/from16 v19, v5

    move/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Ljava/io/Writer;->write(I)V

    .line 98
    :cond_1
    move/from16 v19, v13

    move/from16 v20, v15

    sub-int v19, v19, v20

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    move-object/from16 v19, v16

    move/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x30

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 100
    move-object/from16 v19, v5

    const/16 v20, 0x30

    invoke-virtual/range {v19 .. v20}, Ljava/io/Writer;->write(I)V

    .line 101
    move-object/from16 v19, v16

    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v17, v19

    .line 102
    move/from16 v19, v17

    const/16 v20, 0x78

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    move/from16 v19, v17

    const/16 v20, 0x58

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 104
    :cond_2
    add-int/lit8 v15, v15, 0x1

    .line 105
    move-object/from16 v19, v5

    move/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Ljava/io/Writer;->write(I)V

    .line 108
    :cond_3
    move/from16 v19, v15

    if-lez v19, :cond_4

    .line 109
    move-object/from16 v19, v16

    move/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v16, v19

    .line 111
    .end local v17    # "ch":C
    :cond_4
    const/16 v19, 0x0

    move/from16 v10, v19

    .line 113
    :cond_5
    move/from16 v19, v14

    move/from16 v20, v10

    mul-int v19, v19, v20

    const/16 v20, 0x64

    div-int/lit8 v19, v19, 0x64

    move/from16 v17, v19

    .line 114
    .local v17, "padAfter":I
    move/from16 v19, v14

    move/from16 v20, v17

    sub-int v19, v19, v20

    move/from16 v18, v19

    .line 123
    .local v18, "padBefore":I
    :goto_1
    add-int/lit8 v18, v18, -0x1

    move/from16 v19, v18

    if-ltz v19, :cond_8

    .line 124
    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 71
    .end local v13    # "len":I
    .end local v14    # "pad":I
    .end local v15    # "prefix":I
    .end local v16    # "text":Ljava/lang/String;
    .end local v17    # "padAfter":I
    .end local v18    # "padBefore":I
    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/text/MessageFormat;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 74
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v12

    move-object/from16 v22, v11

    invoke-virtual/range {v19 .. v22}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v19

    .line 75
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v4, v19

    goto/16 :goto_0

    .line 79
    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    aget-object v20, v20, v21

    move-object/from16 v21, v12

    move-object/from16 v22, v11

    invoke-virtual/range {v19 .. v22}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v19

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 125
    .restart local v13    # "len":I
    .restart local v14    # "pad":I
    .restart local v15    # "prefix":I
    .restart local v16    # "text":Ljava/lang/String;
    .restart local v17    # "padAfter":I
    .restart local v18    # "padBefore":I
    :cond_8
    move-object/from16 v19, v5

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 126
    :goto_2
    add-int/lit8 v17, v17, -0x1

    move/from16 v19, v17

    if-ltz v19, :cond_9

    .line 127
    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 128
    .line 133
    .end local v17    # "padAfter":I
    .end local v18    # "padBefore":I
    :cond_9
    :goto_3
    move/from16 v19, v4

    move/from16 v2, v19

    .end local v2    # "fmt":Ljava/text/Format;
    return v2

    .line 131
    .restart local v2    # "fmt":Ljava/text/Format;
    :cond_a
    move-object/from16 v19, v5

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static padNeeded(IIII)I
    .locals 7

    .prologue
    .line 42
    move v0, p0

    .local v0, "actualWidth":I
    move v1, p1

    .local v1, "minWidth":I
    move v2, p2

    .local v2, "colInc":I
    move v3, p3

    .local v3, "minPad":I
    move v5, v0

    move v6, v3

    add-int/2addr v5, v6

    move v4, v5

    .line 43
    .local v4, "total":I
    move v5, v2

    const/4 v6, 0x1

    if-gt v5, v6, :cond_0

    .line 44
    move v5, v1

    move v6, v4

    sub-int/2addr v5, v6

    move v2, v5

    .line 45
    :cond_0
    :goto_0
    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 46
    move v5, v4

    move v6, v2

    add-int/2addr v5, v6

    move v4, v5

    goto :goto_0

    .line 47
    :cond_1
    move v5, v4

    move v6, v0

    sub-int/2addr v5, v6

    move v0, v5

    .end local v0    # "actualWidth":I
    return v0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/text/PadFormat;
    move-object/from16 v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move/from16 v2, p2

    .local v2, "start":I
    move-object/from16 v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object/from16 v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v5, v0

    iget-object v5, v5, Lgnu/text/PadFormat;->fmt:Ljava/text/Format;

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v0

    iget-char v9, v9, Lgnu/text/PadFormat;->padChar:C

    move-object v10, v0

    iget v10, v10, Lgnu/text/PadFormat;->minWidth:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v13, v0

    iget v13, v13, Lgnu/text/PadFormat;->where:I

    move-object v14, v4

    invoke-static/range {v5 .. v14}, Lgnu/text/PadFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;CIIIILjava/text/FieldPosition;)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Lgnu/text/PadFormat;
    return v0
.end method
