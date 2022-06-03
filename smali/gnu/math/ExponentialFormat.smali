.class public Lgnu/math/ExponentialFormat;
.super Ljava/text/Format;
.source "ExponentialFormat.java"


# static fields
.field static final LOG10:D


# instance fields
.field public expDigits:I

.field public exponentChar:C

.field public exponentShowSign:Z

.field public fracDigits:I

.field public general:Z

.field public intDigits:I

.field public overflowChar:C

.field public padChar:C

.field public showPlus:Z

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lgnu/math/ExponentialFormat;->LOG10:D

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/math/ExponentialFormat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/text/Format;-><init>()V

    .line 17
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lgnu/math/ExponentialFormat;->fracDigits:I

    .line 31
    move-object v1, v0

    const/16 v2, 0x45

    iput-char v2, v1, Lgnu/math/ExponentialFormat;->exponentChar:C

    return-void
.end method

.method static addOne(Ljava/lang/StringBuffer;II)Z
    .locals 9

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "sbuf":Ljava/lang/StringBuffer;
    move v1, p1

    .local v1, "digStart":I
    move v2, p2

    .local v2, "digEnd":I
    move v5, v2

    move v3, v5

    .line 49
    .local v3, "j":I
    :goto_0
    move v5, v3

    move v6, v1

    if-ne v5, v6, :cond_0

    .line 51
    move-object v5, v0

    move v6, v3

    const/16 v7, 0x31

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 52
    const/4 v5, 0x1

    move v0, v5

    .line 58
    .end local v0    # "sbuf":Ljava/lang/StringBuffer;
    :goto_1
    return v0

    .line 54
    .restart local v0    # "sbuf":Ljava/lang/StringBuffer;
    :cond_0
    move-object v5, v0

    add-int/lit8 v3, v3, -0x1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    move v4, v5

    .line 55
    .local v4, "ch":C
    move v5, v4

    const/16 v6, 0x39

    if-eq v5, v6, :cond_1

    .line 57
    move-object v5, v0

    move v6, v3

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    int-to-char v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 58
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 60
    :cond_1
    move-object v5, v0

    move v6, v3

    const/16 v7, 0x30

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 61
    goto :goto_0
.end method


# virtual methods
.method format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 35

    .prologue
    .line 81
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/math/ExponentialFormat;
    move-wide/from16 v3, p1

    .local v3, "value":D
    move-object/from16 v5, p3

    .local v5, "dstr":Ljava/lang/String;
    move-object/from16 v6, p4

    .local v6, "sbuf":Ljava/lang/StringBuffer;
    move-object/from16 v7, p5

    .local v7, "fpos":Ljava/text/FieldPosition;
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/math/ExponentialFormat;->intDigits:I

    move/from16 v30, v0

    move/from16 v8, v30

    .line 82
    .local v8, "k":I
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/math/ExponentialFormat;->fracDigits:I

    move/from16 v30, v0

    move/from16 v9, v30

    .line 83
    .local v9, "d":I
    move-wide/from16 v30, v3

    const-wide/16 v32, 0x0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_5

    const/16 v30, 0x1

    :goto_0
    move/from16 v10, v30

    .line 84
    .local v10, "negative":Z
    move/from16 v30, v10

    if-eqz v30, :cond_0

    .line 85
    move-wide/from16 v30, v3

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v3, v30

    .line 86
    :cond_0
    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->length()I

    move-result v30

    move/from16 v11, v30

    .line 87
    .local v11, "oldLen":I
    const/16 v30, 0x1

    move/from16 v12, v30

    .line 88
    .local v12, "signLen":I
    move/from16 v30, v10

    if-eqz v30, :cond_6

    .line 90
    move/from16 v30, v9

    if-ltz v30, :cond_1

    .line 91
    move-object/from16 v30, v6

    const/16 v31, 0x2d

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v30

    .line 100
    :cond_1
    :goto_1
    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->length()I

    move-result v30

    move/from16 v15, v30

    .line 102
    .local v15, "digStart":I
    move-wide/from16 v30, v3

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->isNaN(D)Z

    move-result v30

    if-nez v30, :cond_2

    move-wide/from16 v30, v3

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v30

    if-eqz v30, :cond_8

    :cond_2
    const/16 v30, 0x1

    :goto_2
    move/from16 v17, v30

    .line 103
    .local v17, "nonFinite":Z
    move/from16 v30, v9

    if-ltz v30, :cond_3

    move/from16 v30, v17

    if-eqz v30, :cond_14

    .line 105
    :cond_3
    move-object/from16 v30, v5

    if-nez v30, :cond_4

    .line 106
    move-wide/from16 v30, v3

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v5, v30

    .line 107
    :cond_4
    move-object/from16 v30, v5

    const/16 v31, 0x45

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->indexOf(I)I

    move-result v30

    move/from16 v18, v30

    .line 108
    .local v18, "indexE":I
    move/from16 v30, v18

    if-ltz v30, :cond_13

    .line 110
    move-object/from16 v30, v6

    move-object/from16 v31, v5

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    .line 111
    move/from16 v30, v18

    move/from16 v31, v15

    add-int v30, v30, v31

    move/from16 v18, v30

    .line 112
    move-object/from16 v30, v5

    move/from16 v31, v18

    const/16 v32, 0x1

    add-int/lit8 v31, v31, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->charAt(I)C

    move-result v30

    const/16 v31, 0x2d

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    const/16 v30, 0x1

    :goto_3
    move/from16 v19, v30

    .line 113
    .local v19, "negexp":Z
    const/16 v30, 0x0

    move/from16 v16, v30

    .line 114
    .local v16, "exponent":I
    move/from16 v30, v18

    move/from16 v31, v19

    if-eqz v31, :cond_a

    const/16 v31, 0x2

    :goto_4
    add-int v30, v30, v31

    move/from16 v20, v30

    .local v20, "i":I
    :goto_5
    move/from16 v30, v20

    move-object/from16 v31, v6

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->length()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    .line 115
    const/16 v30, 0xa

    move/from16 v31, v16

    mul-int v30, v30, v31

    move-object/from16 v31, v6

    move/from16 v32, v20

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v31

    const/16 v32, 0x30

    add-int/lit8 v31, v31, -0x30

    add-int v30, v30, v31

    move/from16 v16, v30

    .line 114
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 83
    .end local v10    # "negative":Z
    .end local v11    # "oldLen":I
    .end local v12    # "signLen":I
    .end local v15    # "digStart":I
    .end local v16    # "exponent":I
    .end local v17    # "nonFinite":Z
    .end local v18    # "indexE":I
    .end local v19    # "negexp":Z
    .end local v20    # "i":I
    :cond_5
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 94
    .restart local v10    # "negative":Z
    .restart local v11    # "oldLen":I
    .restart local v12    # "signLen":I
    :cond_6
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lgnu/math/ExponentialFormat;->showPlus:Z

    move/from16 v30, v0

    if-eqz v30, :cond_7

    .line 95
    move-object/from16 v30, v6

    const/16 v31, 0x2b

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v30

    goto/16 :goto_1

    .line 97
    :cond_7
    const/16 v30, 0x0

    move/from16 v12, v30

    goto/16 :goto_1

    .line 102
    .restart local v15    # "digStart":I
    :cond_8
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 112
    .restart local v17    # "nonFinite":Z
    .restart local v18    # "indexE":I
    :cond_9
    const/16 v30, 0x0

    goto :goto_3

    .line 114
    .restart local v16    # "exponent":I
    .restart local v19    # "negexp":Z
    :cond_a
    const/16 v31, 0x1

    goto :goto_4

    .line 116
    .restart local v20    # "i":I
    :cond_b
    move/from16 v30, v19

    if-eqz v30, :cond_c

    .line 117
    move/from16 v30, v16

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v16, v30

    .line 118
    :cond_c
    move-object/from16 v30, v6

    move/from16 v31, v18

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 119
    .line 122
    .end local v19    # "negexp":Z
    .end local v20    # "i":I
    :goto_6
    move/from16 v30, v10

    if-eqz v30, :cond_d

    .line 123
    add-int/lit8 v15, v15, 0x1

    .line 124
    :cond_d
    move/from16 v30, v15

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    move/from16 v19, v30

    .line 126
    .local v19, "dot":I
    move-object/from16 v30, v6

    move/from16 v31, v19

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v30

    .line 132
    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->length()I

    move-result v30

    move/from16 v31, v15

    sub-int v30, v30, v31

    move/from16 v13, v30

    .line 134
    .local v13, "digits":I
    move/from16 v30, v13

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_e

    move-object/from16 v30, v6

    move/from16 v31, v15

    move/from16 v32, v13

    add-int v31, v31, v32

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v30

    const/16 v31, 0x30

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    .line 135
    move-object/from16 v30, v6

    move/from16 v31, v15

    add-int/lit8 v13, v13, -0x1

    move/from16 v32, v13

    add-int v31, v31, v32

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 136
    :cond_e
    move/from16 v30, v13

    move/from16 v31, v16

    sub-int v30, v30, v31

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    move/from16 v14, v30

    .line 151
    .end local v18    # "indexE":I
    .end local v19    # "dot":I
    .local v14, "scale":I
    :goto_7
    move/from16 v30, v16

    move/from16 v31, v8

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    sub-int v30, v30, v31

    move/from16 v16, v30

    .line 152
    move/from16 v30, v16

    if-gez v30, :cond_17

    move/from16 v30, v16

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    :goto_8
    move/from16 v18, v30

    .line 153
    .local v18, "exponentAbs":I
    move/from16 v30, v18

    const/16 v31, 0x3e8

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_18

    const/16 v30, 0x4

    :goto_9
    move/from16 v19, v30

    .line 155
    .local v19, "exponentLen":I
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v30, v0

    move/from16 v31, v19

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_f

    .line 156
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v30, v0

    move/from16 v19, v30

    .line 157
    :cond_f
    const/16 v30, 0x1

    move/from16 v20, v30

    .line 158
    .local v20, "showExponent":Z
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lgnu/math/ExponentialFormat;->general:Z

    move/from16 v30, v0

    if-nez v30, :cond_1b

    const/16 v30, 0x0

    :goto_a
    move/from16 v21, v30

    .line 159
    .local v21, "ee":I
    move/from16 v30, v9

    if-gez v30, :cond_1d

    const/16 v30, 0x1

    :goto_b
    move/from16 v22, v30

    .line 160
    .local v22, "fracUnspecified":Z
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lgnu/math/ExponentialFormat;->general:Z

    move/from16 v30, v0

    if-nez v30, :cond_10

    move/from16 v30, v22

    if-eqz v30, :cond_12

    .line 162
    :cond_10
    move/from16 v30, v13

    move/from16 v31, v14

    sub-int v30, v30, v31

    move/from16 v23, v30

    .line 163
    .local v23, "n":I
    move/from16 v30, v22

    if-eqz v30, :cond_11

    .line 165
    move/from16 v30, v23

    const/16 v31, 0x7

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1e

    move/from16 v30, v23

    :goto_c
    move/from16 v9, v30

    .line 166
    move/from16 v30, v13

    move/from16 v31, v9

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_11

    .line 167
    move/from16 v30, v13

    move/from16 v9, v30

    .line 169
    :cond_11
    move/from16 v30, v9

    move/from16 v31, v23

    sub-int v30, v30, v31

    move/from16 v24, v30

    .line 170
    .local v24, "dd":I
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lgnu/math/ExponentialFormat;->general:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1f

    move/from16 v30, v23

    if-ltz v30, :cond_1f

    move/from16 v30, v24

    if-ltz v30, :cond_1f

    .line 174
    move/from16 v30, v9

    move/from16 v13, v30

    .line 175
    move/from16 v30, v23

    move/from16 v8, v30

    .line 176
    const/16 v30, 0x0

    move/from16 v20, v30

    .line 196
    .end local v23    # "n":I
    .end local v24    # "dd":I
    :cond_12
    :goto_d
    move/from16 v30, v15

    move/from16 v31, v13

    add-int v30, v30, v31

    move/from16 v23, v30

    .line 197
    .local v23, "digEnd":I
    :goto_e
    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->length()I

    move-result v30

    move/from16 v31, v23

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_23

    .line 198
    move-object/from16 v30, v6

    const/16 v31, 0x30

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v30

    goto :goto_e

    .line 121
    .end local v13    # "digits":I
    .end local v14    # "scale":I
    .end local v16    # "exponent":I
    .end local v19    # "exponentLen":I
    .end local v20    # "showExponent":Z
    .end local v21    # "ee":I
    .end local v22    # "fracUnspecified":Z
    .end local v23    # "digEnd":I
    .local v18, "indexE":I
    :cond_13
    move-object/from16 v30, v5

    move-object/from16 v31, v6

    invoke-static/range {v30 .. v31}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v30

    move/from16 v16, v30

    .restart local v16    # "exponent":I
    goto/16 :goto_6

    .line 140
    .end local v16    # "exponent":I
    .end local v18    # "indexE":I
    :cond_14
    move/from16 v30, v9

    move/from16 v31, v8

    if-lez v31, :cond_15

    const/16 v31, 0x1

    :goto_f
    add-int v30, v30, v31

    move/from16 v13, v30

    .line 141
    .restart local v13    # "digits":I
    move-wide/from16 v30, v3

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->log(D)D

    move-result-wide v30

    sget-wide v32, Lgnu/math/ExponentialFormat;->LOG10:D

    div-double v30, v30, v32

    const-wide v32, 0x408f400000000000L    # 1000.0

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    move/from16 v18, v30

    .line 142
    .local v18, "log":I
    move/from16 v30, v18

    const/high16 v31, -0x80000000

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_16

    .line 143
    const/16 v30, 0x0

    move/from16 v18, v30

    .line 146
    :goto_10
    move/from16 v30, v13

    move/from16 v31, v18

    sub-int v30, v30, v31

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    move/from16 v14, v30

    .line 147
    .restart local v14    # "scale":I
    move-wide/from16 v30, v3

    move/from16 v32, v14

    invoke-static/range {v30 .. v32}, Lgnu/math/RealNum;->toScaledInt(DI)Lgnu/math/IntNum;

    move-result-object v30

    const/16 v31, 0xa

    move-object/from16 v32, v6

    invoke-virtual/range {v30 .. v32}, Lgnu/math/IntNum;->format(ILjava/lang/StringBuffer;)V

    .line 148
    move/from16 v30, v13

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    move/from16 v31, v14

    sub-int v30, v30, v31

    move/from16 v16, v30

    .restart local v16    # "exponent":I
    goto/16 :goto_7

    .line 140
    .end local v13    # "digits":I
    .end local v14    # "scale":I
    .end local v16    # "exponent":I
    .end local v18    # "log":I
    :cond_15
    move/from16 v31, v8

    goto :goto_f

    .line 145
    .restart local v13    # "digits":I
    .restart local v18    # "log":I
    :cond_16
    move/from16 v30, v18

    const/16 v31, 0x3e8

    move/from16 v0, v30

    add-int/lit16 v0, v0, -0x3e8

    move/from16 v30, v0

    move/from16 v18, v30

    goto :goto_10

    .line 152
    .end local v18    # "log":I
    .restart local v14    # "scale":I
    .restart local v16    # "exponent":I
    :cond_17
    move/from16 v30, v16

    goto/16 :goto_8

    .line 153
    .local v18, "exponentAbs":I
    :cond_18
    move/from16 v30, v18

    const/16 v31, 0x64

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_19

    const/16 v30, 0x3

    goto/16 :goto_9

    :cond_19
    move/from16 v30, v18

    const/16 v31, 0xa

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_1a

    const/16 v30, 0x2

    goto/16 :goto_9

    :cond_1a
    const/16 v30, 0x1

    goto/16 :goto_9

    .line 158
    .restart local v19    # "exponentLen":I
    .restart local v20    # "showExponent":Z
    :cond_1b
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v30, v0

    if-lez v30, :cond_1c

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v30, v0

    const/16 v31, 0x2

    add-int/lit8 v30, v30, 0x2

    goto/16 :goto_a

    :cond_1c
    const/16 v30, 0x4

    goto/16 :goto_a

    .line 159
    .restart local v21    # "ee":I
    :cond_1d
    const/16 v30, 0x0

    goto/16 :goto_b

    .line 165
    .restart local v22    # "fracUnspecified":Z
    .local v23, "n":I
    :cond_1e
    const/16 v30, 0x7

    goto/16 :goto_c

    .line 178
    .restart local v24    # "dd":I
    :cond_1f
    move/from16 v30, v22

    if-eqz v30, :cond_12

    .line 180
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v30, v0

    if-gtz v30, :cond_21

    .line 181
    move/from16 v30, v9

    move/from16 v13, v30

    .line 191
    :cond_20
    :goto_11
    move/from16 v30, v13

    if-gtz v30, :cond_12

    .line 192
    const/16 v30, 0x1

    move/from16 v13, v30

    goto/16 :goto_d

    .line 184
    :cond_21
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v30, v0

    move/from16 v31, v12

    sub-int v30, v30, v31

    move/from16 v31, v19

    sub-int v30, v30, v31

    const/16 v31, 0x3

    add-int/lit8 v30, v30, -0x3

    move/from16 v25, v30

    .line 185
    .local v25, "avail":I
    move/from16 v30, v25

    move/from16 v13, v30

    .line 186
    move/from16 v30, v8

    if-gez v30, :cond_22

    .line 187
    move/from16 v30, v13

    move/from16 v31, v8

    sub-int v30, v30, v31

    move/from16 v13, v30

    .line 188
    :cond_22
    move/from16 v30, v13

    move/from16 v31, v9

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_20

    .line 189
    move/from16 v30, v9

    move/from16 v13, v30

    goto :goto_11

    .line 201
    .end local v24    # "dd":I
    .end local v25    # "avail":I
    .local v23, "digEnd":I
    :cond_23
    move/from16 v30, v23

    move-object/from16 v31, v6

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->length()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_25

    const/16 v30, 0x30

    :goto_12
    move/from16 v24, v30

    .line 202
    .local v24, "nextDigit":C
    move/from16 v30, v24

    const/16 v31, 0x35

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_26

    const/16 v30, 0x1

    :goto_13
    move/from16 v25, v30

    .line 205
    .local v25, "addOne":Z
    move/from16 v30, v25

    if-eqz v30, :cond_24

    move-object/from16 v30, v6

    move/from16 v31, v15

    move/from16 v32, v23

    invoke-static/range {v30 .. v32}, Lgnu/math/ExponentialFormat;->addOne(Ljava/lang/StringBuffer;II)Z

    move-result v30

    if-eqz v30, :cond_24

    .line 206
    add-int/lit8 v14, v14, 0x1

    .line 208
    :cond_24
    move/from16 v30, v14

    move-object/from16 v31, v6

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->length()I

    move-result v31

    move/from16 v32, v23

    sub-int v31, v31, v32

    sub-int v30, v30, v31

    move/from16 v14, v30

    .line 209
    move-object/from16 v30, v6

    move/from16 v31, v23

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 211
    move/from16 v30, v15

    move/from16 v26, v30

    .line 212
    .local v26, "dot":I
    move/from16 v30, v8

    if-gez v30, :cond_2a

    .line 215
    move/from16 v30, v8

    move/from16 v27, v30

    .local v27, "j":I
    :goto_14
    add-int/lit8 v27, v27, 0x1

    move/from16 v30, v27

    if-gtz v30, :cond_27

    .line 216
    move-object/from16 v30, v6

    move/from16 v31, v15

    const/16 v32, 0x30

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v30

    goto :goto_14

    .line 201
    .end local v24    # "nextDigit":C
    .end local v25    # "addOne":Z
    .end local v26    # "dot":I
    .end local v27    # "j":I
    :cond_25
    move-object/from16 v30, v6

    move/from16 v31, v23

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v30

    goto :goto_12

    .line 202
    .restart local v24    # "nextDigit":C
    :cond_26
    const/16 v30, 0x0

    goto :goto_13

    .line 216
    .line 225
    .restart local v25    # "addOne":Z
    .restart local v26    # "dot":I
    :cond_27
    :goto_15
    move/from16 v30, v17

    if-eqz v30, :cond_2c

    .line 226
    const/16 v30, 0x0

    move/from16 v20, v30

    .line 231
    :goto_16
    move/from16 v30, v20

    if-eqz v30, :cond_36

    .line 234
    move-object/from16 v30, v6

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->exponentChar:C

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v30

    .line 235
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lgnu/math/ExponentialFormat;->exponentShowSign:Z

    move/from16 v30, v0

    if-nez v30, :cond_28

    move/from16 v30, v16

    if-gez v30, :cond_29

    .line 236
    :cond_28
    move-object/from16 v30, v6

    move/from16 v31, v16

    if-ltz v31, :cond_2d

    const/16 v31, 0x2b

    :goto_17
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v30

    .line 237
    :cond_29
    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->length()I

    move-result v30

    move/from16 v28, v30

    .line 238
    .local v28, "i":I
    move-object/from16 v30, v6

    move/from16 v31, v18

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v30

    .line 239
    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->length()I

    move-result v30

    move/from16 v27, v30

    .line 240
    .local v27, "newLen":I
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v30, v0

    move/from16 v31, v27

    move/from16 v32, v28

    sub-int v31, v31, v32

    sub-int v30, v30, v31

    move/from16 v29, v30

    .line 241
    .local v29, "j":I
    move/from16 v30, v29

    if-lez v30, :cond_2e

    .line 243
    move/from16 v30, v27

    move/from16 v31, v29

    add-int v30, v30, v31

    move/from16 v27, v30

    .line 244
    :goto_18
    add-int/lit8 v29, v29, -0x1

    move/from16 v30, v29

    if-ltz v30, :cond_2e

    .line 245
    move-object/from16 v30, v6

    move/from16 v31, v28

    const/16 v32, 0x30

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v30

    goto :goto_18

    .line 221
    .end local v27    # "newLen":I
    .end local v28    # "i":I
    .end local v29    # "j":I
    :cond_2a
    :goto_19
    move/from16 v30, v15

    move/from16 v31, v8

    add-int v30, v30, v31

    move/from16 v31, v23

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_2b

    .line 222
    move-object/from16 v30, v6

    const/16 v31, 0x30

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v30

    .line 221
    add-int/lit8 v23, v23, 0x1

    goto :goto_19

    .line 223
    :cond_2b
    move/from16 v30, v26

    move/from16 v31, v8

    add-int v30, v30, v31

    move/from16 v26, v30

    goto/16 :goto_15

    .line 228
    :cond_2c
    move-object/from16 v30, v6

    move/from16 v31, v26

    const/16 v32, 0x2e

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v30

    goto/16 :goto_16

    .line 236
    :cond_2d
    const/16 v31, 0x2d

    goto :goto_17

    .line 247
    .line 252
    :cond_2e
    :goto_1a
    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->length()I

    move-result v30

    move/from16 v27, v30

    .line 253
    .restart local v27    # "newLen":I
    move/from16 v30, v27

    move/from16 v31, v11

    sub-int v30, v30, v31

    move/from16 v29, v30

    .line 254
    .local v29, "used":I
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v30, v0

    move/from16 v31, v29

    sub-int v30, v30, v31

    move/from16 v28, v30

    .line 257
    .restart local v28    # "i":I
    move/from16 v30, v22

    if-eqz v30, :cond_31

    move/from16 v30, v26

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    move-object/from16 v31, v6

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->length()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2f

    move-object/from16 v30, v6

    move/from16 v31, v26

    const/16 v32, 0x1

    add-int/lit8 v31, v31, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v30

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->exponentChar:C

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_31

    :cond_2f
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v30, v0

    if-lez v30, :cond_30

    move/from16 v30, v28

    if-lez v30, :cond_31

    .line 261
    :cond_30
    add-int/lit8 v28, v28, -0x1

    .line 262
    move-object/from16 v30, v6

    move/from16 v31, v26

    const/16 v32, 0x1

    add-int/lit8 v31, v31, 0x1

    const/16 v32, 0x30

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v30

    .line 265
    :cond_31
    move/from16 v30, v28

    if-gez v30, :cond_32

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v30, v0

    if-gtz v30, :cond_38

    :cond_32
    move/from16 v30, v20

    if-eqz v30, :cond_33

    move/from16 v30, v19

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_33

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v30, v0

    if-lez v30, :cond_33

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    move/from16 v30, v0

    if-nez v30, :cond_38

    .line 270
    :cond_33
    move/from16 v30, v8

    if-gtz v30, :cond_35

    move/from16 v30, v28

    if-gtz v30, :cond_34

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v30, v0

    if-gtz v30, :cond_35

    .line 272
    :cond_34
    move-object/from16 v30, v6

    move/from16 v31, v15

    const/16 v32, 0x30

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v30

    .line 273
    add-int/lit8 v28, v28, -0x1

    .line 275
    :cond_35
    move/from16 v30, v20

    if-nez v30, :cond_37

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v30, v0

    if-lez v30, :cond_37

    .line 282
    :goto_1b
    add-int/lit8 v21, v21, -0x1

    move/from16 v30, v21

    if-ltz v30, :cond_37

    .line 283
    move-object/from16 v30, v6

    const/16 v31, 0x20

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v30

    .line 282
    add-int/lit8 v28, v28, -0x1

    goto :goto_1b

    .line 250
    .end local v27    # "newLen":I
    .end local v28    # "i":I
    .end local v29    # "used":I
    :cond_36
    const/16 v30, 0x0

    move/from16 v19, v30

    goto/16 :goto_1a

    .line 286
    .restart local v27    # "newLen":I
    .restart local v28    # "i":I
    .restart local v29    # "used":I
    :cond_37
    :goto_1c
    add-int/lit8 v28, v28, -0x1

    move/from16 v30, v28

    if-ltz v30, :cond_39

    .line 287
    move-object/from16 v30, v6

    move/from16 v31, v11

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->padChar:C

    move/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v30

    goto :goto_1c

    .line 289
    :cond_38
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    move/from16 v30, v0

    if-eqz v30, :cond_39

    .line 291
    move-object/from16 v30, v6

    move/from16 v31, v11

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 292
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v30, v0

    move/from16 v28, v30

    :goto_1d
    add-int/lit8 v28, v28, -0x1

    move/from16 v30, v28

    if-ltz v30, :cond_39

    .line 293
    move-object/from16 v30, v6

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v30

    goto :goto_1d

    .line 295
    :cond_39
    move-object/from16 v30, v6

    move-object/from16 v2, v30

    .end local v2    # "this":Lgnu/math/ExponentialFormat;
    return-object v2
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 11

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lgnu/math/ExponentialFormat;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, p3

    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v0

    iget v8, v8, Lgnu/math/ExponentialFormat;->fracDigits:I

    if-gez v8, :cond_0

    move-wide v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v8

    :goto_0
    move-object v9, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/math/ExponentialFormat;
    return-object v0

    .restart local v0    # "this":Lgnu/math/ExponentialFormat;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public format(FLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 11

    .prologue
    .line 67
    move-object v1, p0

    .local v1, "this":Lgnu/math/ExponentialFormat;
    move v2, p1

    .local v2, "value":F
    move-object v3, p2

    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object v4, p3

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v5, v1

    move v6, v2

    float-to-double v6, v6

    move-object v8, v1

    iget v8, v8, Lgnu/math/ExponentialFormat;->fracDigits:I

    if-gez v8, :cond_0

    move v8, v2

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    :goto_0
    move-object v9, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Lgnu/math/ExponentialFormat;
    return-object v1

    .restart local v1    # "this":Lgnu/math/ExponentialFormat;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 11

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lgnu/math/ExponentialFormat;
    move-wide v1, p1

    .local v1, "num":J
    move-object v3, p3

    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v5, v0

    move-wide v6, v1

    long-to-double v6, v6

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/math/ExponentialFormat;
    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 10

    .prologue
    .line 306
    move-object v1, p0

    .local v1, "this":Lgnu/math/ExponentialFormat;
    move-object v2, p1

    .local v2, "num":Ljava/lang/Object;
    move-object v3, p2

    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object v4, p3

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v5, v1

    move-object v6, v2

    check-cast v6, Lgnu/math/RealNum;

    invoke-virtual {v6}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Lgnu/math/ExponentialFormat;
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 7

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lgnu/math/ExponentialFormat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "status":Ljava/text/ParsePosition;
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "ExponentialFormat.parse - not implemented"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lgnu/math/ExponentialFormat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "status":Ljava/text/ParsePosition;
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "ExponentialFormat.parseObject - not implemented"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method
