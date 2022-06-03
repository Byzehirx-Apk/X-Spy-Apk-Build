.class public Lgnu/math/FixedRealFormat;
.super Ljava/text/Format;
.source "FixedRealFormat.java"


# instance fields
.field private d:I

.field private i:I

.field public internalPad:Z

.field public overflowChar:C

.field public padChar:C

.field public scale:I

.field public showPlus:Z

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/math/FixedRealFormat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/text/Format;-><init>()V

    return-void
.end method

.method private format(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;IIIII)V
    .locals 18

    .prologue
    .line 214
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/math/FixedRealFormat;
    move-object/from16 v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object/from16 v2, p2

    .local v2, "fpos":Ljava/text/FieldPosition;
    move/from16 v3, p3

    .local v3, "length":I
    move/from16 v4, p4

    .local v4, "digits":I
    move/from16 v5, p5

    .local v5, "decimals":I
    move/from16 v6, p6

    .local v6, "signLen":I
    move/from16 v7, p7

    .local v7, "oldSize":I
    move v13, v4

    move v14, v5

    add-int/2addr v13, v14

    move v8, v13

    .line 216
    .local v8, "total_digits":I
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/math/FixedRealFormat;->getMinimumIntegerDigits()I

    move-result v13

    move v9, v13

    .line 217
    .local v9, "zero_digits":I
    move v13, v4

    if-ltz v13, :cond_2

    move v13, v4

    move v14, v9

    if-le v13, v14, :cond_2

    .line 218
    const/4 v13, 0x0

    move v9, v13

    .line 222
    :goto_0
    move v13, v4

    move v14, v9

    add-int/2addr v13, v14

    if-gtz v13, :cond_1

    move-object v13, v0

    iget v13, v13, Lgnu/math/FixedRealFormat;->width:I

    if-lez v13, :cond_0

    move-object v13, v0

    iget v13, v13, Lgnu/math/FixedRealFormat;->width:I

    move v14, v5

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v15, v6

    add-int/2addr v14, v15

    if-le v13, v14, :cond_1

    .line 224
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 225
    :cond_1
    move v13, v6

    move v14, v3

    add-int/2addr v13, v14

    move v14, v9

    add-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v10, v13

    .line 226
    .local v10, "needed":I
    move-object v13, v0

    iget v13, v13, Lgnu/math/FixedRealFormat;->width:I

    move v14, v10

    sub-int/2addr v13, v14

    move v11, v13

    .line 227
    .local v11, "padding":I
    move v13, v9

    move v12, v13

    .local v12, "i":I
    :goto_1
    add-int/lit8 v12, v12, -0x1

    move v13, v12

    if-ltz v13, :cond_3

    .line 228
    move-object v13, v1

    move v14, v7

    move v15, v6

    add-int/2addr v14, v15

    const/16 v15, 0x30

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v13

    goto :goto_1

    .line 220
    .end local v10    # "needed":I
    .end local v11    # "padding":I
    .end local v12    # "i":I
    :cond_2
    move v13, v9

    move v14, v4

    sub-int/2addr v13, v14

    move v9, v13

    goto :goto_0

    .line 229
    .restart local v10    # "needed":I
    .restart local v11    # "padding":I
    .restart local v12    # "i":I
    :cond_3
    move v13, v11

    if-ltz v13, :cond_6

    .line 231
    move v13, v7

    move v12, v13

    .line 232
    move-object v13, v0

    iget-boolean v13, v13, Lgnu/math/FixedRealFormat;->internalPad:Z

    if-eqz v13, :cond_4

    move v13, v6

    if-lez v13, :cond_4

    .line 233
    add-int/lit8 v12, v12, 0x1

    .line 234
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, -0x1

    move v13, v11

    if-ltz v13, :cond_5

    .line 235
    move-object v13, v1

    move v14, v12

    move-object v15, v0

    iget-char v15, v15, Lgnu/math/FixedRealFormat;->padChar:C

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v13

    goto :goto_2

    .line 236
    .line 244
    :cond_5
    move-object v13, v1

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    move v12, v13

    .line 245
    .local v12, "newSize":I
    move-object v13, v1

    move v14, v12

    move v15, v5

    sub-int/2addr v14, v15

    const/16 v15, 0x2e

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 263
    .end local v12    # "newSize":I
    :goto_3
    return-void

    .line 237
    .local v12, "i":I
    :cond_6
    move-object v13, v0

    iget-char v13, v13, Lgnu/math/FixedRealFormat;->overflowChar:C

    if-eqz v13, :cond_5

    .line 239
    move-object v13, v1

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 240
    move-object v13, v0

    move-object v14, v0

    iget v14, v14, Lgnu/math/FixedRealFormat;->width:I

    iput v14, v13, Lgnu/math/FixedRealFormat;->i:I

    :goto_4
    move-object v13, v0

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    iget v14, v14, Lgnu/math/FixedRealFormat;->i:I

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v16, v13

    move/from16 v17, v14

    move/from16 v13, v17

    move-object/from16 v14, v16

    move/from16 v15, v17

    iput v15, v14, Lgnu/math/FixedRealFormat;->i:I

    if-ltz v13, :cond_7

    .line 241
    move-object v13, v1

    move-object v14, v0

    iget-char v14, v14, Lgnu/math/FixedRealFormat;->overflowChar:C

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    goto :goto_4

    .line 242
    :cond_7
    goto :goto_3
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 33

    .prologue
    .line 68
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/math/FixedRealFormat;
    move-wide/from16 v3, p1

    .local v3, "num":D
    move-object/from16 v5, p3

    .local v5, "sbuf":Ljava/lang/StringBuffer;
    move-object/from16 v6, p4

    .local v6, "fpos":Ljava/text/FieldPosition;
    move-wide/from16 v24, v3

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v24

    if-nez v24, :cond_0

    move-wide/from16 v24, v3

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 69
    :cond_0
    move-object/from16 v24, v5

    move-wide/from16 v25, v3

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v2, v24

    .line 188
    .end local v2    # "this":Lgnu/math/FixedRealFormat;
    :goto_0
    return-object v2

    .line 70
    .restart local v2    # "this":Lgnu/math/FixedRealFormat;
    :cond_1
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lgnu/math/FixedRealFormat;->getMaximumFractionDigits()I

    move-result v24

    if-ltz v24, :cond_2

    .line 71
    move-object/from16 v24, v2

    move-wide/from16 v25, v3

    invoke-static/range {v25 .. v26}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v25

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    invoke-virtual/range {v24 .. v27}, Lgnu/math/FixedRealFormat;->format(Lgnu/math/RealNum;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 188
    :goto_1
    move-object/from16 v24, v5

    move-object/from16 v2, v24

    goto :goto_0

    .line 75
    :cond_2
    move-wide/from16 v24, v3

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_6

    .line 77
    const/16 v24, 0x1

    move/from16 v7, v24

    .line 78
    .local v7, "negative":Z
    move-wide/from16 v24, v3

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v3, v24

    .line 82
    :goto_2
    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    move/from16 v8, v24

    .line 83
    .local v8, "oldSize":I
    const/16 v24, 0x1

    move/from16 v9, v24

    .line 84
    .local v9, "signLen":I
    move/from16 v24, v7

    if-eqz v24, :cond_7

    .line 85
    move-object/from16 v24, v5

    const/16 v25, 0x2d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 91
    :goto_3
    move-wide/from16 v24, v3

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v10, v24

    .line 92
    .local v10, "string":Ljava/lang/String;
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/math/FixedRealFormat;->scale:I

    move/from16 v24, v0

    move/from16 v11, v24

    .line 93
    .local v11, "cur_scale":I
    move-object/from16 v24, v10

    const/16 v25, 0x45

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    move/from16 v12, v24

    .line 94
    .local v12, "seenE":I
    move/from16 v24, v12

    if-ltz v24, :cond_4

    .line 96
    move/from16 v24, v12

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v13, v24

    .line 97
    .local v13, "expStart":I
    move-object/from16 v24, v10

    move/from16 v25, v13

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x2b

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 98
    add-int/lit8 v13, v13, 0x1

    .line 99
    :cond_3
    move/from16 v24, v11

    move-object/from16 v25, v10

    move/from16 v26, v13

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    add-int v24, v24, v25

    move/from16 v11, v24

    .line 100
    move-object/from16 v24, v10

    const/16 v25, 0x0

    move/from16 v26, v12

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v10, v24

    .line 102
    .end local v13    # "expStart":I
    :cond_4
    move-object/from16 v24, v10

    const/16 v25, 0x2e

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    move/from16 v13, v24

    .line 103
    .local v13, "seenDot":I
    move-object/from16 v24, v10

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v14, v24

    .line 104
    .local v14, "length":I
    move/from16 v24, v13

    if-ltz v24, :cond_5

    .line 106
    move/from16 v24, v11

    move/from16 v25, v14

    move/from16 v26, v13

    sub-int v25, v25, v26

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    sub-int v24, v24, v25

    move/from16 v11, v24

    .line 107
    add-int/lit8 v14, v14, -0x1

    .line 108
    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v10

    const/16 v26, 0x0

    move/from16 v27, v13

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v25, v10

    move/from16 v26, v13

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v10, v24

    .line 111
    :cond_5
    move-object/from16 v24, v10

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v15, v24

    .line 114
    .local v15, "i":I
    const/16 v24, 0x0

    move/from16 v16, v24

    .line 115
    .local v16, "initial_zeros":I
    :goto_4
    move/from16 v24, v16

    move/from16 v25, v15

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    move-object/from16 v24, v10

    move/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x30

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 116
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 81
    .end local v7    # "negative":Z
    .end local v8    # "oldSize":I
    .end local v9    # "signLen":I
    .end local v10    # "string":Ljava/lang/String;
    .end local v11    # "cur_scale":I
    .end local v12    # "seenE":I
    .end local v13    # "seenDot":I
    .end local v14    # "length":I
    .end local v15    # "i":I
    .end local v16    # "initial_zeros":I
    :cond_6
    const/16 v24, 0x0

    move/from16 v7, v24

    .restart local v7    # "negative":Z
    goto/16 :goto_2

    .line 86
    .restart local v8    # "oldSize":I
    .restart local v9    # "signLen":I
    :cond_7
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lgnu/math/FixedRealFormat;->showPlus:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 87
    move-object/from16 v24, v5

    const/16 v25, 0x2b

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v24

    goto/16 :goto_3

    .line 89
    :cond_8
    const/16 v24, 0x0

    move/from16 v9, v24

    goto/16 :goto_3

    .line 117
    .restart local v10    # "string":Ljava/lang/String;
    .restart local v11    # "cur_scale":I
    .restart local v12    # "seenE":I
    .restart local v13    # "seenDot":I
    .restart local v14    # "length":I
    .restart local v15    # "i":I
    .restart local v16    # "initial_zeros":I
    :cond_9
    move/from16 v24, v16

    if-lez v24, :cond_a

    .line 119
    move-object/from16 v24, v10

    move/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v10, v24

    .line 120
    move/from16 v24, v15

    move/from16 v25, v16

    sub-int v24, v24, v25

    move/from16 v15, v24

    .line 124
    :cond_a
    move/from16 v24, v15

    move/from16 v25, v11

    add-int v24, v24, v25

    move/from16 v18, v24

    .line 125
    .local v18, "digits":I
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/math/FixedRealFormat;->width:I

    move/from16 v24, v0

    if-lez v24, :cond_d

    .line 129
    :goto_5
    move/from16 v24, v18

    if-gez v24, :cond_b

    .line 131
    move-object/from16 v24, v5

    const/16 v25, 0x30

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 132
    add-int/lit8 v18, v18, 0x1

    .line 133
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 135
    :cond_b
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/math/FixedRealFormat;->width:I

    move/from16 v24, v0

    move/from16 v25, v9

    sub-int v24, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v25, v18

    sub-int v24, v24, v25

    move/from16 v17, v24

    .line 139
    .local v17, "decimals":I
    :goto_6
    move/from16 v24, v17

    if-gez v24, :cond_c

    .line 140
    const/16 v24, 0x0

    move/from16 v17, v24

    .line 141
    :cond_c
    move-object/from16 v24, v5

    move-object/from16 v25, v10

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 142
    :goto_7
    move/from16 v24, v11

    if-lez v24, :cond_f

    .line 144
    move-object/from16 v24, v5

    const/16 v25, 0x30

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 145
    add-int/lit8 v11, v11, -0x1

    .line 146
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 138
    .end local v17    # "decimals":I
    :cond_d
    move/from16 v24, v15

    const/16 v25, 0x10

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_e

    const/16 v24, 0x10

    :goto_8
    move/from16 v25, v18

    sub-int v24, v24, v25

    move/from16 v17, v24

    .restart local v17    # "decimals":I
    goto :goto_6

    .end local v17    # "decimals":I
    :cond_e
    move/from16 v24, v15

    goto :goto_8

    .line 148
    .restart local v17    # "decimals":I
    :cond_f
    move/from16 v24, v8

    move/from16 v25, v9

    add-int v24, v24, v25

    move/from16 v19, v24

    .line 149
    .local v19, "digStart":I
    move/from16 v24, v19

    move/from16 v25, v18

    add-int v24, v24, v25

    move/from16 v25, v17

    add-int v24, v24, v25

    move/from16 v20, v24

    .line 150
    .local v20, "digEnd":I
    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    move/from16 v15, v24

    .line 152
    move/from16 v24, v20

    move/from16 v25, v15

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_10

    .line 154
    move/from16 v24, v15

    move/from16 v20, v24

    .line 155
    const/16 v24, 0x30

    move/from16 v21, v24

    .line 159
    .local v21, "nextDigit":C
    :goto_9
    move/from16 v24, v21

    const/16 v25, 0x35

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_11

    const/16 v24, 0x1

    :goto_a
    move/from16 v22, v24

    .line 160
    .local v22, "addOne":Z
    move/from16 v24, v22

    if-eqz v24, :cond_12

    const/16 v24, 0x39

    :goto_b
    move/from16 v23, v24

    .line 161
    .local v23, "skip":C
    :goto_c
    move/from16 v24, v20

    move/from16 v25, v19

    move/from16 v26, v18

    add-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_13

    move-object/from16 v24, v5

    move/from16 v25, v20

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v24

    move/from16 v25, v23

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 162
    add-int/lit8 v20, v20, -0x1

    goto :goto_c

    .line 158
    .end local v21    # "nextDigit":C
    .end local v22    # "addOne":Z
    .end local v23    # "skip":C
    :cond_10
    move-object/from16 v24, v5

    move/from16 v25, v20

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v24

    move/from16 v21, v24

    .restart local v21    # "nextDigit":C
    goto :goto_9

    .line 159
    :cond_11
    const/16 v24, 0x0

    goto :goto_a

    .line 160
    .restart local v22    # "addOne":Z
    :cond_12
    const/16 v24, 0x30

    goto :goto_b

    .line 163
    .restart local v23    # "skip":C
    :cond_13
    move/from16 v24, v20

    move/from16 v25, v19

    sub-int v24, v24, v25

    move/from16 v14, v24

    .line 164
    move/from16 v24, v14

    move/from16 v25, v18

    sub-int v24, v24, v25

    move/from16 v17, v24

    .line 165
    move/from16 v24, v22

    if-eqz v24, :cond_14

    .line 167
    move-object/from16 v24, v5

    move/from16 v25, v19

    move/from16 v26, v20

    invoke-static/range {v24 .. v26}, Lgnu/math/ExponentialFormat;->addOne(Ljava/lang/StringBuffer;II)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 169
    add-int/lit8 v18, v18, 0x1

    .line 170
    const/16 v24, 0x0

    move/from16 v17, v24

    .line 171
    move/from16 v24, v18

    move/from16 v14, v24

    .line 174
    :cond_14
    move/from16 v24, v17

    if-nez v24, :cond_16

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/math/FixedRealFormat;->width:I

    move/from16 v24, v0

    if-lez v24, :cond_15

    move/from16 v24, v9

    move/from16 v25, v18

    add-int v24, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/math/FixedRealFormat;->width:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_16

    .line 177
    :cond_15
    const/16 v24, 0x1

    move/from16 v17, v24

    .line 178
    add-int/lit8 v14, v14, 0x1

    .line 180
    move-object/from16 v24, v5

    move/from16 v25, v19

    move/from16 v26, v18

    add-int v25, v25, v26

    const/16 v26, 0x30

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 182
    :cond_16
    move-object/from16 v24, v5

    move/from16 v25, v19

    move/from16 v26, v14

    add-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 184
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move/from16 v27, v14

    move/from16 v28, v18

    move/from16 v29, v17

    move/from16 v30, v7

    if-eqz v30, :cond_17

    const/16 v30, 0x1

    :goto_d
    move/from16 v31, v8

    invoke-direct/range {v24 .. v31}, Lgnu/math/FixedRealFormat;->format(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;IIIII)V

    goto/16 :goto_1

    :cond_17
    const/16 v30, 0x0

    goto :goto_d
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 9

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/math/FixedRealFormat;
    move-wide v1, p1

    .local v1, "num":J
    move-object v3, p3

    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v5, v0

    move-wide v6, v1

    invoke-static {v6, v7}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v6

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/math/FixedRealFormat;->format(Lgnu/math/RealNum;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 63
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lgnu/math/FixedRealFormat;
    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 12

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lgnu/math/FixedRealFormat;
    move-object v1, p1

    .local v1, "num":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, p3

    .local v3, "fpos":Ljava/text/FieldPosition;
    move-object v7, v1

    invoke-static {v7}, Lgnu/math/RealNum;->asRealNumOrNull(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v7

    move-object v4, v7

    .line 194
    .local v4, "rnum":Lgnu/math/RealNum;
    move-object v7, v4

    if-nez v7, :cond_2

    .line 196
    move-object v7, v1

    instance-of v7, v7, Lgnu/math/Complex;

    if-eqz v7, :cond_1

    .line 199
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 200
    .local v5, "str":Ljava/lang/String;
    move-object v7, v0

    iget v7, v7, Lgnu/math/FixedRealFormat;->width:I

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 201
    .local v6, "padding":I
    :goto_0
    add-int/lit8 v6, v6, -0x1

    move v7, v6

    if-ltz v7, :cond_0

    .line 202
    move-object v7, v2

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    goto :goto_0

    .line 203
    :cond_0
    move-object v7, v2

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 204
    move-object v7, v2

    move-object v0, v7

    .line 208
    .end local v0    # "this":Lgnu/math/FixedRealFormat;
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "padding":I
    :goto_1
    return-object v0

    .line 206
    .restart local v0    # "this":Lgnu/math/FixedRealFormat;
    :cond_1
    move-object v7, v1

    check-cast v7, Lgnu/math/RealNum;

    move-object v4, v7

    .line 208
    :cond_2
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v8

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/math/FixedRealFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v0, v7

    goto :goto_1
.end method

.method public format(Lgnu/math/RealNum;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V
    .locals 22

    .prologue
    .line 34
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/math/FixedRealFormat;
    move-object/from16 v2, p1

    .local v2, "number":Lgnu/math/RealNum;
    move-object/from16 v3, p2

    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object/from16 v4, p3

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v13, v2

    instance-of v13, v13, Lgnu/math/RatNum;

    if-eqz v13, :cond_3

    move-object v13, v1

    invoke-virtual {v13}, Lgnu/math/FixedRealFormat;->getMaximumFractionDigits()I

    move-result v13

    move/from16 v21, v13

    move/from16 v13, v21

    move/from16 v14, v21

    move v5, v14

    .local v5, "decimals":I
    if-ltz v13, :cond_3

    .line 37
    move-object v13, v2

    check-cast v13, Lgnu/math/RatNum;

    move-object v6, v13

    .line 38
    .local v6, "ratnum":Lgnu/math/RatNum;
    move-object v13, v6

    invoke-virtual {v13}, Lgnu/math/RatNum;->isNegative()Z

    move-result v13

    move v7, v13

    .line 39
    .local v7, "negative":Z
    move v13, v7

    if-eqz v13, :cond_0

    .line 40
    move-object v13, v6

    invoke-virtual {v13}, Lgnu/math/RatNum;->rneg()Lgnu/math/RatNum;

    move-result-object v13

    move-object v6, v13

    .line 41
    :cond_0
    move-object v13, v3

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    move v8, v13

    .line 42
    .local v8, "oldSize":I
    const/4 v13, 0x1

    move v9, v13

    .line 43
    .local v9, "signLen":I
    move v13, v7

    if-eqz v13, :cond_1

    .line 44
    move-object v13, v3

    const/16 v14, 0x2d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 49
    :goto_0
    move-object v13, v6

    move v14, v5

    move-object v15, v1

    iget v15, v15, Lgnu/math/FixedRealFormat;->scale:I

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Lgnu/math/RealNum;->toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;

    move-result-object v13

    invoke-virtual {v13}, Lgnu/math/IntNum;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 51
    .local v10, "string":Ljava/lang/String;
    move-object v13, v3

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 52
    move-object v13, v10

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move v11, v13

    .line 53
    .local v11, "length":I
    move v13, v11

    move v14, v5

    sub-int/2addr v13, v14

    move v12, v13

    .line 54
    .local v12, "digits":I
    move-object v13, v1

    move-object v14, v3

    move-object v15, v4

    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v5

    move/from16 v19, v9

    move/from16 v20, v8

    invoke-direct/range {v13 .. v20}, Lgnu/math/FixedRealFormat;->format(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;IIIII)V

    .line 55
    .line 58
    .end local v5    # "decimals":I
    .end local v6    # "ratnum":Lgnu/math/RatNum;
    .end local v7    # "negative":Z
    .end local v8    # "oldSize":I
    .end local v9    # "signLen":I
    .end local v10    # "string":Ljava/lang/String;
    .end local v11    # "length":I
    .end local v12    # "digits":I
    :goto_1
    return-void

    .line 45
    .restart local v5    # "decimals":I
    .restart local v6    # "ratnum":Lgnu/math/RatNum;
    .restart local v7    # "negative":Z
    .restart local v8    # "oldSize":I
    .restart local v9    # "signLen":I
    :cond_1
    move-object v13, v1

    iget-boolean v13, v13, Lgnu/math/FixedRealFormat;->showPlus:Z

    if-eqz v13, :cond_2

    .line 46
    move-object v13, v3

    const/16 v14, 0x2b

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    goto :goto_0

    .line 48
    :cond_2
    const/4 v13, 0x0

    move v9, v13

    goto :goto_0

    .line 57
    .end local v5    # "decimals":I
    .end local v6    # "ratnum":Lgnu/math/RatNum;
    .end local v7    # "negative":Z
    .end local v8    # "oldSize":I
    .end local v9    # "signLen":I
    :cond_3
    move-object v13, v1

    move-object v14, v2

    invoke-virtual {v14}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v14

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-virtual/range {v13 .. v17}, Lgnu/math/FixedRealFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v13

    goto :goto_1
.end method

.method public getMaximumFractionDigits()I
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/math/FixedRealFormat;
    move-object v1, v0

    iget v1, v1, Lgnu/math/FixedRealFormat;->d:I

    move v0, v1

    .end local v0    # "this":Lgnu/math/FixedRealFormat;
    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/math/FixedRealFormat;
    move-object v1, v0

    iget v1, v1, Lgnu/math/FixedRealFormat;->i:I

    move v0, v1

    .end local v0    # "this":Lgnu/math/FixedRealFormat;
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 7

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lgnu/math/FixedRealFormat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "status":Ljava/text/ParsePosition;
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "RealFixedFormat.parse - not implemented"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lgnu/math/FixedRealFormat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "status":Ljava/text/ParsePosition;
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "RealFixedFormat.parseObject - not implemented"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setMaximumFractionDigits(I)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/math/FixedRealFormat;
    move v1, p1

    .local v1, "d":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/math/FixedRealFormat;->d:I

    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/math/FixedRealFormat;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/math/FixedRealFormat;->i:I

    return-void
.end method
