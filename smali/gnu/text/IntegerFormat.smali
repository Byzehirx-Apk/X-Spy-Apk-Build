.class public Lgnu/text/IntegerFormat;
.super Lgnu/text/ReportFormat;
.source "IntegerFormat.java"


# static fields
.field public static final MIN_DIGITS:I = 0x40

.field public static final PAD_RIGHT:I = 0x10

.field public static final SHOW_BASE:I = 0x8

.field public static final SHOW_GROUPS:I = 0x1

.field public static final SHOW_PLUS:I = 0x2

.field public static final SHOW_SPACE:I = 0x4

.field public static final UPPERCASE:I = 0x20


# instance fields
.field public base:I

.field public commaChar:I

.field public commaInterval:I

.field public flags:I

.field public minWidth:I

.field public padChar:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/text/IntegerFormat;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/text/ReportFormat;-><init>()V

    .line 49
    move-object v1, v0

    const/16 v2, 0xa

    iput v2, v1, Lgnu/text/IntegerFormat;->base:I

    .line 50
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lgnu/text/IntegerFormat;->minWidth:I

    .line 51
    move-object v1, v0

    const/16 v2, 0x20

    iput v2, v1, Lgnu/text/IntegerFormat;->padChar:I

    .line 52
    move-object v1, v0

    const/16 v2, 0x2c

    iput v2, v1, Lgnu/text/IntegerFormat;->commaChar:I

    .line 53
    move-object v1, v0

    const/4 v2, 0x3

    iput v2, v1, Lgnu/text/IntegerFormat;->commaInterval:I

    .line 54
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/IntegerFormat;->flags:I

    .line 55
    return-void
.end method


# virtual methods
.method public convertToIntegerString(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 165
    move-object v1, p0

    .local v1, "this":Lgnu/text/IntegerFormat;
    move-object v2, p1

    .local v2, "x":Ljava/lang/Object;
    move v3, p2

    .local v3, "radix":I
    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Number;

    if-nez v4, :cond_0

    .line 166
    const/4 v4, 0x0

    move-object v1, v4

    .line 170
    .end local v1    # "this":Lgnu/text/IntegerFormat;
    :goto_0
    return-object v1

    .line 167
    .restart local v1    # "this":Lgnu/text/IntegerFormat;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljava/math/BigInteger;

    if-eqz v4, :cond_1

    .line 168
    move-object v4, v2

    check-cast v4, Ljava/math/BigInteger;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 170
    :cond_1
    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move v6, v3

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public format(Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/text/IntegerFormat;
    move-object/from16 v3, p1

    .local v3, "arg":Ljava/lang/Object;
    move/from16 v4, p2

    .local v4, "start":I
    move-object/from16 v5, p3

    .local v5, "dst":Ljava/io/Writer;
    move-object/from16 v6, p4

    .local v6, "fpos":Ljava/text/FieldPosition;
    move-object/from16 v25, v3

    move-object/from16 v0, v25

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v25, v3

    check-cast v25, [Ljava/lang/Object;

    check-cast v25, [Ljava/lang/Object;

    :goto_0
    move-object/from16 v7, v25

    .line 69
    .local v7, "args":[Ljava/lang/Object;
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->minWidth:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v27, v7

    move/from16 v28, v4

    invoke-static/range {v25 .. v28}, Lgnu/text/IntegerFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v25

    move/from16 v8, v25

    .line 70
    .local v8, "minWidth":I
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->minWidth:I

    move/from16 v25, v0

    const/high16 v26, -0x60000000

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 71
    :cond_0
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->padChar:I

    move/from16 v25, v0

    const/16 v26, 0x20

    move-object/from16 v27, v7

    move/from16 v28, v4

    invoke-static/range {v25 .. v28}, Lgnu/text/IntegerFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v25

    move/from16 v9, v25

    .line 72
    .local v9, "padChar":C
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->padChar:I

    move/from16 v25, v0

    const/high16 v26, -0x60000000

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 73
    :cond_1
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->commaChar:I

    move/from16 v25, v0

    const/16 v26, 0x2c

    move-object/from16 v27, v7

    move/from16 v28, v4

    invoke-static/range {v25 .. v28}, Lgnu/text/IntegerFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v25

    move/from16 v10, v25

    .line 74
    .local v10, "commaChar":C
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->commaChar:I

    move/from16 v25, v0

    const/high16 v26, -0x60000000

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 75
    :cond_2
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->commaInterval:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move-object/from16 v27, v7

    move/from16 v28, v4

    invoke-static/range {v25 .. v28}, Lgnu/text/IntegerFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v25

    move/from16 v11, v25

    .line 76
    .local v11, "commaInterval":I
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->commaInterval:I

    move/from16 v25, v0

    const/high16 v26, -0x60000000

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 77
    :cond_3
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v25, v0

    const/16 v26, 0x1

    and-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_5

    const/16 v25, 0x1

    :goto_1
    move/from16 v12, v25

    .line 78
    .local v12, "printCommas":Z
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v25, v0

    const/16 v26, 0x10

    and-int/lit8 v25, v25, 0x10

    if-eqz v25, :cond_6

    const/16 v25, 0x1

    :goto_2
    move/from16 v13, v25

    .line 79
    .local v13, "padRight":Z
    move/from16 v25, v9

    const/16 v26, 0x30

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    const/16 v25, 0x1

    :goto_3
    move/from16 v14, v25

    .line 80
    .local v14, "padInternal":Z
    move-object/from16 v25, v7

    if-eqz v25, :cond_9

    .line 82
    move/from16 v25, v4

    move-object/from16 v26, v7

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_8

    .line 84
    move-object/from16 v25, v5

    const-string/jumbo v26, "#<missing format argument>"

    invoke-virtual/range {v25 .. v26}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 85
    move/from16 v25, v4

    move/from16 v2, v25

    .line 160
    .end local v2    # "this":Lgnu/text/IntegerFormat;
    :goto_4
    return v2

    .line 68
    .end local v7    # "args":[Ljava/lang/Object;
    .end local v8    # "minWidth":I
    .end local v9    # "padChar":C
    .end local v10    # "commaChar":C
    .end local v11    # "commaInterval":I
    .end local v12    # "printCommas":Z
    .end local v13    # "padRight":Z
    .end local v14    # "padInternal":Z
    .restart local v2    # "this":Lgnu/text/IntegerFormat;
    :cond_4
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 77
    .restart local v7    # "args":[Ljava/lang/Object;
    .restart local v8    # "minWidth":I
    .restart local v9    # "padChar":C
    .restart local v10    # "commaChar":C
    .restart local v11    # "commaInterval":I
    :cond_5
    const/16 v25, 0x0

    goto :goto_1

    .line 78
    .restart local v12    # "printCommas":Z
    :cond_6
    const/16 v25, 0x0

    goto :goto_2

    .line 79
    .restart local v13    # "padRight":Z
    :cond_7
    const/16 v25, 0x0

    goto :goto_3

    .line 87
    .restart local v14    # "padInternal":Z
    :cond_8
    move-object/from16 v25, v7

    move/from16 v26, v4

    aget-object v25, v25, v26

    move-object/from16 v3, v25

    .line 89
    :cond_9
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lgnu/text/IntegerFormat;->convertToIntegerString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v15, v25

    .line 90
    .local v15, "sarg":Ljava/lang/String;
    move-object/from16 v25, v15

    if-eqz v25, :cond_1e

    .line 92
    move-object/from16 v25, v15

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    move-result v25

    move/from16 v16, v25

    .line 93
    .local v16, "sarg0":C
    move/from16 v25, v16

    const/16 v26, 0x2d

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    const/16 v25, 0x1

    :goto_5
    move/from16 v17, v25

    .line 94
    .local v17, "neg":Z
    move-object/from16 v25, v15

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v18, v25

    .line 95
    .local v18, "slen":I
    move/from16 v25, v17

    if-eqz v25, :cond_f

    move/from16 v25, v18

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    :goto_6
    move/from16 v19, v25

    .line 96
    .local v19, "ndigits":I
    move/from16 v25, v12

    if-eqz v25, :cond_10

    move/from16 v25, v19

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    move/from16 v26, v11

    div-int v25, v25, v26

    :goto_7
    move/from16 v20, v25

    .line 97
    .local v20, "numCommas":I
    move/from16 v25, v19

    move/from16 v26, v20

    add-int v25, v25, v26

    move/from16 v21, v25

    .line 98
    .local v21, "unpadded_len":I
    move/from16 v25, v17

    if-nez v25, :cond_a

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v25, v0

    const/16 v26, 0x6

    and-int/lit8 v25, v25, 0x6

    if-eqz v25, :cond_b

    .line 99
    :cond_a
    add-int/lit8 v21, v21, 0x1

    .line 101
    :cond_b
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v25, v0

    const/16 v26, 0x8

    and-int/lit8 v25, v25, 0x8

    if-eqz v25, :cond_c

    .line 103
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 104
    add-int/lit8 v21, v21, 0x2

    .line 108
    :cond_c
    :goto_8
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v25, v0

    const/16 v26, 0x40

    and-int/lit8 v25, v25, 0x40

    if-eqz v25, :cond_d

    .line 110
    move/from16 v25, v19

    move/from16 v21, v25

    .line 111
    move/from16 v25, v18

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    move/from16 v25, v16

    const/16 v26, 0x30

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    move/from16 v25, v8

    if-nez v25, :cond_d

    .line 112
    const/16 v25, 0x0

    move/from16 v18, v25

    .line 114
    :cond_d
    move/from16 v25, v13

    if-nez v25, :cond_12

    move/from16 v25, v14

    if-nez v25, :cond_12

    .line 115
    :goto_9
    move/from16 v25, v8

    move/from16 v26, v21

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_12

    .line 116
    move-object/from16 v25, v5

    move/from16 v26, v9

    invoke-virtual/range {v25 .. v26}, Ljava/io/Writer;->write(I)V

    .line 115
    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    .line 93
    .end local v17    # "neg":Z
    .end local v18    # "slen":I
    .end local v19    # "ndigits":I
    .end local v20    # "numCommas":I
    .end local v21    # "unpadded_len":I
    :cond_e
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 95
    .restart local v17    # "neg":Z
    .restart local v18    # "slen":I
    :cond_f
    move/from16 v25, v18

    goto/16 :goto_6

    .line 96
    .restart local v19    # "ndigits":I
    :cond_10
    const/16 v25, 0x0

    goto/16 :goto_7

    .line 105
    .restart local v20    # "numCommas":I
    .restart local v21    # "unpadded_len":I
    :cond_11
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v25, v0

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    move/from16 v25, v16

    const/16 v26, 0x30

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_c

    .line 106
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 117
    :cond_12
    const/16 v25, 0x0

    move/from16 v22, v25

    .line 118
    .local v22, "i":I
    move/from16 v25, v17

    if-eqz v25, :cond_15

    .line 120
    move-object/from16 v25, v5

    const/16 v26, 0x2d

    invoke-virtual/range {v25 .. v26}, Ljava/io/Writer;->write(I)V

    .line 121
    add-int/lit8 v22, v22, 0x1

    .line 122
    add-int/lit8 v18, v18, -0x1

    .line 128
    :cond_13
    :goto_a
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v25, v0

    const/16 v26, 0xa

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_17

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v25, v0

    const/16 v26, 0x20

    and-int/lit8 v25, v25, 0x20

    if-eqz v25, :cond_17

    const/16 v25, 0x1

    :goto_b
    move/from16 v23, v25

    .line 129
    .local v23, "uppercase":Z
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v25, v0

    const/16 v26, 0x8

    and-int/lit8 v25, v25, 0x8

    if-eqz v25, :cond_14

    .line 131
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    .line 133
    move-object/from16 v25, v5

    const/16 v26, 0x30

    invoke-virtual/range {v25 .. v26}, Ljava/io/Writer;->write(I)V

    .line 134
    move-object/from16 v25, v5

    move/from16 v26, v23

    if-eqz v26, :cond_18

    const/16 v26, 0x58

    :goto_c
    invoke-virtual/range {v25 .. v26}, Ljava/io/Writer;->write(I)V

    .line 139
    :cond_14
    :goto_d
    move/from16 v25, v14

    if-eqz v25, :cond_1c

    .line 140
    :goto_e
    move/from16 v25, v8

    move/from16 v26, v21

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1c

    .line 141
    move-object/from16 v25, v5

    move/from16 v26, v9

    invoke-virtual/range {v25 .. v26}, Ljava/io/Writer;->write(I)V

    .line 140
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 124
    .end local v23    # "uppercase":Z
    :cond_15
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v25, v0

    const/16 v26, 0x2

    and-int/lit8 v25, v25, 0x2

    if-eqz v25, :cond_16

    .line 125
    move-object/from16 v25, v5

    const/16 v26, 0x2b

    invoke-virtual/range {v25 .. v26}, Ljava/io/Writer;->write(I)V

    goto :goto_a

    .line 126
    :cond_16
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v25, v0

    const/16 v26, 0x4

    and-int/lit8 v25, v25, 0x4

    if-eqz v25, :cond_13

    .line 127
    move-object/from16 v25, v5

    const/16 v26, 0x20

    invoke-virtual/range {v25 .. v26}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_a

    .line 128
    :cond_17
    const/16 v25, 0x0

    goto :goto_b

    .line 134
    .restart local v23    # "uppercase":Z
    :cond_18
    const/16 v26, 0x78

    goto :goto_c

    .line 136
    :cond_19
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v25, v0

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    move/from16 v25, v16

    const/16 v26, 0x30

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_14

    .line 137
    move-object/from16 v25, v5

    const/16 v26, 0x30

    invoke-virtual/range {v25 .. v26}, Ljava/io/Writer;->write(I)V

    goto :goto_d

    .line 146
    :cond_1a
    move-object/from16 v25, v15

    move/from16 v26, v22

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    move-result v25

    move/from16 v24, v25

    .line 147
    .local v24, "ch":C
    move/from16 v25, v23

    if-eqz v25, :cond_1b

    .line 148
    move/from16 v25, v24

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v25

    move/from16 v24, v25

    .line 149
    :cond_1b
    move-object/from16 v25, v5

    move/from16 v26, v24

    invoke-virtual/range {v25 .. v26}, Ljava/io/Writer;->write(I)V

    .line 150
    add-int/lit8 v18, v18, -0x1

    .line 151
    move/from16 v25, v12

    if-eqz v25, :cond_1c

    move/from16 v25, v18

    if-lez v25, :cond_1c

    move/from16 v25, v18

    move/from16 v26, v11

    rem-int v25, v25, v26

    if-nez v25, :cond_1c

    .line 152
    move-object/from16 v25, v5

    move/from16 v26, v10

    invoke-virtual/range {v25 .. v26}, Ljava/io/Writer;->write(I)V

    .line 153
    .line 144
    .end local v24    # "ch":C
    :cond_1c
    move/from16 v25, v18

    if-nez v25, :cond_1a

    .line 145
    .line 154
    move/from16 v25, v13

    if-eqz v25, :cond_1d

    .line 155
    :goto_f
    move/from16 v25, v8

    move/from16 v26, v21

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1d

    .line 156
    move-object/from16 v25, v5

    move/from16 v26, v9

    invoke-virtual/range {v25 .. v26}, Ljava/io/Writer;->write(I)V

    .line 155
    add-int/lit8 v8, v8, -0x1

    goto :goto_f

    .line 157
    .line 160
    .end local v16    # "sarg0":C
    .end local v17    # "neg":Z
    .end local v18    # "slen":I
    .end local v19    # "ndigits":I
    .end local v20    # "numCommas":I
    .end local v21    # "unpadded_len":I
    .end local v22    # "i":I
    .end local v23    # "uppercase":Z
    :cond_1d
    :goto_10
    move/from16 v25, v4

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v2, v25

    goto/16 :goto_4

    .line 159
    :cond_1e
    move-object/from16 v25, v5

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lgnu/text/IntegerFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/text/IntegerFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/text/IntegerFormat;->format(Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Lgnu/text/IntegerFormat;
    return v0
.end method
