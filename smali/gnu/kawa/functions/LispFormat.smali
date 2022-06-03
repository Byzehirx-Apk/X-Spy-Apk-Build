.class public Lgnu/kawa/functions/LispFormat;
.super Lgnu/text/CompoundFormat;
.source "LispFormat.java"


# static fields
.field public static final paramFromCount:Ljava/lang/String; = "<from count>"

.field public static final paramFromList:Ljava/lang/String; = "<from list>"

.field public static final paramUnspecified:Ljava/lang/String; = "<unspecified>"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispFormat;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/kawa/functions/LispFormat;-><init>([C)V

    .line 464
    return-void
.end method

.method public constructor <init>([C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispFormat;
    move-object v1, p1

    .local v1, "format":[C
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-direct {v2, v3, v4, v5}, Lgnu/kawa/functions/LispFormat;-><init>([CII)V

    .line 515
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 45
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 22
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/functions/LispFormat;
    move-object/from16 v3, p1

    .local v3, "format":[C
    move/from16 v4, p2

    .local v4, "offset":I
    move/from16 v5, p3

    .local v5, "length":I
    move-object/from16 v36, v2

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-direct/range {v36 .. v38}, Lgnu/text/CompoundFormat;-><init>([Ljava/text/Format;I)V

    .line 24
    const/16 v36, -0x1

    move/from16 v6, v36

    .line 25
    .local v6, "start_nesting":I
    const/16 v36, 0x0

    move/from16 v7, v36

    .line 27
    .local v7, "choices_seen":I
    new-instance v36, Ljava/lang/StringBuffer;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    const/16 v38, 0x64

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object/from16 v8, v36

    .line 28
    .local v8, "litbuf":Ljava/lang/StringBuffer;
    new-instance v36, Ljava/util/Stack;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    invoke-direct/range {v37 .. v37}, Ljava/util/Stack;-><init>()V

    move-object/from16 v9, v36

    .line 30
    .local v9, "stack":Ljava/util/Stack;
    move/from16 v36, v4

    move/from16 v37, v5

    add-int v36, v36, v37

    move/from16 v10, v36

    .line 31
    .local v10, "limit":I
    move/from16 v36, v4

    move/from16 v11, v36

    .line 34
    .local v11, "i":I
    :cond_0
    :goto_0
    move/from16 v36, v11

    move/from16 v37, v10

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_1

    move-object/from16 v36, v3

    move/from16 v37, v11

    aget-char v36, v36, v37

    const/16 v37, 0x7e

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2

    :cond_1
    move-object/from16 v36, v8

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuffer;->length()I

    move-result v36

    if-lez v36, :cond_2

    .line 36
    move-object/from16 v36, v9

    new-instance v37, Lgnu/text/LiteralFormat;

    move-object/from16 v44, v37

    move-object/from16 v37, v44

    move-object/from16 v38, v44

    move-object/from16 v39, v8

    invoke-direct/range {v38 .. v39}, Lgnu/text/LiteralFormat;-><init>(Ljava/lang/StringBuffer;)V

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 37
    move-object/from16 v36, v8

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 39
    :cond_2
    move/from16 v36, v11

    move/from16 v37, v10

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_3

    .line 40
    .line 430
    move/from16 v36, v11

    move/from16 v37, v10

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_48

    .line 431
    new-instance v36, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    invoke-direct/range {v37 .. v37}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v36

    .line 41
    :cond_3
    move-object/from16 v36, v3

    move/from16 v37, v11

    add-int/lit8 v11, v11, 0x1

    aget-char v36, v36, v37

    move/from16 v12, v36

    .line 42
    .local v12, "ch":C
    move/from16 v36, v12

    const/16 v37, 0x7e

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_4

    .line 44
    move-object/from16 v36, v8

    move/from16 v37, v12

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 45
    goto :goto_0

    .line 47
    :cond_4
    move-object/from16 v36, v9

    invoke-virtual/range {v36 .. v36}, Ljava/util/Stack;->size()I

    move-result v36

    move/from16 v13, v36

    .line 48
    .local v13, "speci":I
    move-object/from16 v36, v3

    move/from16 v37, v11

    add-int/lit8 v11, v11, 0x1

    aget-char v36, v36, v37

    move/from16 v12, v36

    .line 51
    :goto_1
    move/from16 v36, v12

    const/16 v37, 0x23

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_6

    .line 53
    move-object/from16 v36, v9

    const-string/jumbo v37, "<from count>"

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 54
    move-object/from16 v36, v3

    move/from16 v37, v11

    add-int/lit8 v11, v11, 0x1

    aget-char v36, v36, v37

    move/from16 v12, v36

    .line 90
    :goto_2
    move/from16 v36, v12

    const/16 v37, 0x2c

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_11

    .line 91
    .line 94
    :cond_5
    const/16 v36, 0x0

    move/from16 v14, v36

    .line 95
    .local v14, "seenColon":Z
    const/16 v36, 0x0

    move/from16 v15, v36

    .line 98
    .local v15, "seenAt":Z
    :goto_3
    move/from16 v36, v12

    const/16 v37, 0x3a

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_12

    .line 99
    const/16 v36, 0x1

    move/from16 v14, v36

    .line 104
    :goto_4
    move-object/from16 v36, v3

    move/from16 v37, v11

    add-int/lit8 v11, v11, 0x1

    aget-char v36, v36, v37

    move/from16 v12, v36

    goto :goto_3

    .line 56
    .end local v14    # "seenColon":Z
    .end local v15    # "seenAt":Z
    :cond_6
    move/from16 v36, v12

    const/16 v37, 0x76

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_7

    move/from16 v36, v12

    const/16 v37, 0x56

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_8

    .line 58
    :cond_7
    move-object/from16 v36, v9

    const-string/jumbo v37, "<from list>"

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 59
    move-object/from16 v36, v3

    move/from16 v37, v11

    add-int/lit8 v11, v11, 0x1

    aget-char v36, v36, v37

    move/from16 v12, v36

    goto :goto_2

    .line 61
    :cond_8
    move/from16 v36, v12

    const/16 v37, 0x2d

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_9

    move/from16 v36, v12

    const/16 v37, 0xa

    invoke-static/range {v36 .. v37}, Ljava/lang/Character;->digit(CI)I

    move-result v36

    if-ltz v36, :cond_f

    .line 63
    :cond_9
    move/from16 v36, v12

    const/16 v37, 0x2d

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_b

    const/16 v36, 0x1

    :goto_5
    move/from16 v14, v36

    .line 64
    .local v14, "neg":Z
    move/from16 v36, v14

    if-eqz v36, :cond_a

    .line 65
    move-object/from16 v36, v3

    move/from16 v37, v11

    add-int/lit8 v11, v11, 0x1

    aget-char v36, v36, v37

    move/from16 v12, v36

    .line 66
    :cond_a
    const/16 v36, 0x0

    move/from16 v15, v36

    .line 67
    .local v15, "val":I
    move/from16 v36, v11

    move/from16 v16, v36

    .line 70
    .local v16, "start":I
    :goto_6
    move/from16 v36, v12

    const/16 v37, 0xa

    invoke-static/range {v36 .. v37}, Ljava/lang/Character;->digit(CI)I

    move-result v36

    move/from16 v17, v36

    .line 71
    .local v17, "dig":I
    move/from16 v36, v17

    if-gez v36, :cond_c

    .line 72
    .line 76
    move-object/from16 v36, v9

    move/from16 v37, v11

    move/from16 v38, v16

    sub-int v37, v37, v38

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_e

    move/from16 v37, v14

    if-eqz v37, :cond_d

    move/from16 v37, v15

    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v37, v0

    :goto_7
    invoke-static/range {v37 .. v37}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v37

    :goto_8
    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 78
    goto/16 :goto_2

    .line 63
    .end local v14    # "neg":Z
    .end local v15    # "val":I
    .end local v16    # "start":I
    .end local v17    # "dig":I
    :cond_b
    const/16 v36, 0x0

    goto :goto_5

    .line 73
    .restart local v14    # "neg":Z
    .restart local v15    # "val":I
    .restart local v16    # "start":I
    .restart local v17    # "dig":I
    :cond_c
    const/16 v36, 0xa

    move/from16 v37, v15

    mul-int v36, v36, v37

    move/from16 v37, v17

    add-int v36, v36, v37

    move/from16 v15, v36

    .line 74
    move-object/from16 v36, v3

    move/from16 v37, v11

    add-int/lit8 v11, v11, 0x1

    aget-char v36, v36, v37

    move/from16 v12, v36

    .line 75
    goto :goto_6

    .line 76
    :cond_d
    move/from16 v37, v15

    goto :goto_7

    :cond_e
    move-object/from16 v37, v3

    move/from16 v38, v16

    move/from16 v39, v11

    move/from16 v40, v16

    sub-int v39, v39, v40

    const/16 v40, 0xa

    move/from16 v41, v14

    invoke-static/range {v37 .. v41}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v37

    goto :goto_8

    .line 79
    .end local v14    # "neg":Z
    .end local v15    # "val":I
    .end local v16    # "start":I
    .end local v17    # "dig":I
    :cond_f
    move/from16 v36, v12

    const/16 v37, 0x27

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_10

    .line 81
    move-object/from16 v36, v9

    move-object/from16 v37, v3

    move/from16 v38, v11

    add-int/lit8 v11, v11, 0x1

    aget-char v37, v37, v38

    invoke-static/range {v37 .. v37}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 82
    move-object/from16 v36, v3

    move/from16 v37, v11

    add-int/lit8 v11, v11, 0x1

    aget-char v36, v36, v37

    move/from16 v12, v36

    goto/16 :goto_2

    .line 84
    :cond_10
    move/from16 v36, v12

    const/16 v37, 0x2c

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_5

    .line 86
    move-object/from16 v36, v9

    const-string/jumbo v37, "<unspecified>"

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    goto/16 :goto_2

    .line 92
    :cond_11
    move-object/from16 v36, v3

    move/from16 v37, v11

    add-int/lit8 v11, v11, 0x1

    aget-char v36, v36, v37

    move/from16 v12, v36

    goto/16 :goto_1

    .line 100
    .local v14, "seenColon":Z
    .local v15, "seenAt":Z
    :cond_12
    move/from16 v36, v12

    const/16 v37, 0x40

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_13

    .line 101
    const/16 v36, 0x1

    move/from16 v15, v36

    goto/16 :goto_4

    .line 106
    :cond_13
    move/from16 v36, v12

    invoke-static/range {v36 .. v36}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v36

    move/from16 v12, v36

    .line 107
    move-object/from16 v36, v9

    invoke-virtual/range {v36 .. v36}, Ljava/util/Stack;->size()I

    move-result v36

    move/from16 v37, v13

    sub-int v36, v36, v37

    move/from16 v16, v36

    .line 110
    .local v16, "numParams":I
    move/from16 v36, v12

    sparse-switch v36, :sswitch_data_0

    .line 425
    new-instance v36, Ljava/text/ParseException;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    new-instance v38, Ljava/lang/StringBuilder;

    move-object/from16 v44, v38

    move-object/from16 v38, v44

    move-object/from16 v39, v44

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "unrecognized format specifier ~"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move/from16 v39, v12

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move/from16 v39, v11

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v36

    .line 113
    :sswitch_0
    move/from16 v36, v13

    move/from16 v25, v36

    .line 115
    .local v25, "argstart":I
    move/from16 v36, v12

    const/16 v37, 0x52

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_17

    move-object/from16 v36, v9

    move/from16 v37, v25

    add-int/lit8 v25, v25, 0x1

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v26, v36

    .line 120
    .local v26, "base":I
    :goto_9
    move-object/from16 v36, v9

    move/from16 v37, v25

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v18, v36

    .line 121
    .local v18, "minWidth":I
    move-object/from16 v36, v9

    move/from16 v37, v25

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v19, v36

    .line 122
    .local v19, "padChar":I
    move-object/from16 v36, v9

    move/from16 v37, v25

    const/16 v38, 0x2

    add-int/lit8 v37, v37, 0x2

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v27, v36

    .line 123
    .local v27, "commaChar":I
    move-object/from16 v36, v9

    move/from16 v37, v25

    const/16 v38, 0x3

    add-int/lit8 v37, v37, 0x3

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v28, v36

    .line 124
    .local v28, "commaInterval":I
    const/16 v36, 0x0

    move/from16 v29, v36

    .line 125
    .local v29, "flags":I
    move/from16 v36, v14

    if-eqz v36, :cond_14

    .line 126
    move/from16 v36, v29

    const/16 v37, 0x1

    or-int/lit8 v36, v36, 0x1

    move/from16 v29, v36

    .line 127
    :cond_14
    move/from16 v36, v15

    if-eqz v36, :cond_15

    .line 128
    move/from16 v36, v29

    const/16 v37, 0x2

    or-int/lit8 v36, v36, 0x2

    move/from16 v29, v36

    .line 129
    :cond_15
    move/from16 v36, v26

    move/from16 v37, v18

    move/from16 v38, v19

    move/from16 v39, v27

    move/from16 v40, v28

    move/from16 v41, v29

    invoke-static/range {v36 .. v41}, Lgnu/kawa/functions/IntegerFormat;->getInstance(IIIIII)Ljava/text/Format;

    move-result-object v36

    move-object/from16 v17, v36

    .line 427
    .end local v18    # "minWidth":I
    .end local v19    # "padChar":I
    .end local v25    # "argstart":I
    .end local v26    # "base":I
    .end local v27    # "commaChar":I
    .end local v28    # "commaInterval":I
    .end local v29    # "flags":I
    .local v17, "fmt":Ljava/text/Format;
    :cond_16
    :goto_a
    move-object/from16 v36, v9

    move/from16 v37, v13

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->setSize(I)V

    .line 428
    move-object/from16 v36, v9

    move-object/from16 v37, v17

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 429
    goto/16 :goto_0

    .line 116
    .end local v17    # "fmt":Ljava/text/Format;
    .restart local v25    # "argstart":I
    :cond_17
    move/from16 v36, v12

    const/16 v37, 0x44

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_18

    const/16 v36, 0xa

    move/from16 v26, v36

    .restart local v26    # "base":I
    goto/16 :goto_9

    .line 117
    .end local v26    # "base":I
    :cond_18
    move/from16 v36, v12

    const/16 v37, 0x4f

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_19

    const/16 v36, 0x8

    move/from16 v26, v36

    .restart local v26    # "base":I
    goto/16 :goto_9

    .line 118
    .end local v26    # "base":I
    :cond_19
    move/from16 v36, v12

    const/16 v37, 0x58

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1a

    const/16 v36, 0x10

    move/from16 v26, v36

    .restart local v26    # "base":I
    goto/16 :goto_9

    .line 119
    .end local v26    # "base":I
    :cond_1a
    const/16 v36, 0x2

    move/from16 v26, v36

    .restart local v26    # "base":I
    goto/16 :goto_9

    .line 133
    .end local v25    # "argstart":I
    .end local v26    # "base":I
    :sswitch_1
    move/from16 v36, v14

    move/from16 v37, v15

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispPluralFormat;->getInstance(ZZ)Lgnu/kawa/functions/LispPluralFormat;

    move-result-object v36

    move-object/from16 v17, v36

    .line 134
    .restart local v17    # "fmt":Ljava/text/Format;
    goto :goto_a

    .line 139
    .end local v17    # "fmt":Ljava/text/Format;
    :sswitch_2
    new-instance v36, Lgnu/kawa/functions/LispRealFormat;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    invoke-direct/range {v37 .. v37}, Lgnu/kawa/functions/LispRealFormat;-><init>()V

    move-object/from16 v30, v36

    .line 140
    .local v30, "dfmt":Lgnu/kawa/functions/LispRealFormat;
    move-object/from16 v36, v30

    move/from16 v37, v12

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput-char v0, v1, Lgnu/kawa/functions/LispRealFormat;->op:C

    .line 141
    move-object/from16 v36, v30

    move-object/from16 v37, v9

    move/from16 v38, v13

    invoke-static/range {v37 .. v38}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    .line 142
    move-object/from16 v36, v30

    move-object/from16 v37, v9

    move/from16 v38, v13

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    invoke-static/range {v37 .. v38}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    .line 143
    move-object/from16 v36, v30

    move-object/from16 v37, v9

    move/from16 v38, v13

    const/16 v39, 0x2

    add-int/lit8 v38, v38, 0x2

    invoke-static/range {v37 .. v38}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    .line 144
    move-object/from16 v36, v30

    move-object/from16 v37, v9

    move/from16 v38, v13

    const/16 v39, 0x3

    add-int/lit8 v38, v38, 0x3

    invoke-static/range {v37 .. v38}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    .line 145
    move/from16 v36, v12

    const/16 v37, 0x24

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_1c

    .line 147
    move-object/from16 v36, v30

    move-object/from16 v37, v9

    move/from16 v38, v13

    const/16 v39, 0x4

    add-int/lit8 v38, v38, 0x4

    invoke-static/range {v37 .. v38}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    .line 148
    move/from16 v36, v12

    const/16 v37, 0x45

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_1b

    move/from16 v36, v12

    const/16 v37, 0x47

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1c

    .line 150
    :cond_1b
    move-object/from16 v36, v30

    move-object/from16 v37, v9

    move/from16 v38, v13

    const/16 v39, 0x5

    add-int/lit8 v38, v38, 0x5

    invoke-static/range {v37 .. v38}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Lgnu/kawa/functions/LispRealFormat;->arg6:I

    .line 151
    move-object/from16 v36, v30

    move-object/from16 v37, v9

    move/from16 v38, v13

    const/16 v39, 0x6

    add-int/lit8 v38, v38, 0x6

    invoke-static/range {v37 .. v38}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Lgnu/kawa/functions/LispRealFormat;->arg7:I

    .line 154
    :cond_1c
    move-object/from16 v36, v30

    move/from16 v37, v15

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lgnu/kawa/functions/LispRealFormat;->showPlus:Z

    .line 155
    move-object/from16 v36, v30

    move/from16 v37, v14

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lgnu/kawa/functions/LispRealFormat;->internalPad:Z

    .line 156
    move-object/from16 v36, v30

    move-object/from16 v0, v36

    iget v0, v0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    move/from16 v36, v0

    if-nez v36, :cond_1d

    .line 157
    move-object/from16 v36, v30

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Lgnu/kawa/functions/LispRealFormat;->resolve([Ljava/lang/Object;I)Ljava/text/Format;

    move-result-object v36

    move-object/from16 v17, v36

    .restart local v17    # "fmt":Ljava/text/Format;
    goto/16 :goto_a

    .line 159
    .end local v17    # "fmt":Ljava/text/Format;
    :cond_1d
    move-object/from16 v36, v30

    move-object/from16 v17, v36

    .line 160
    .restart local v17    # "fmt":Ljava/text/Format;
    goto/16 :goto_a

    .line 164
    .end local v17    # "fmt":Ljava/text/Format;
    .end local v30    # "dfmt":Lgnu/kawa/functions/LispRealFormat;
    :sswitch_3
    move/from16 v36, v12

    const/16 v37, 0x41

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_1e

    const/16 v36, 0x1

    :goto_b
    invoke-static/range {v36 .. v36}, Lgnu/kawa/functions/ObjectFormat;->getInstance(Z)Lgnu/kawa/functions/ObjectFormat;

    move-result-object v36

    move-object/from16 v17, v36

    .line 165
    .restart local v17    # "fmt":Ljava/text/Format;
    move/from16 v36, v16

    if-lez v36, :cond_16

    .line 167
    move-object/from16 v36, v9

    move/from16 v37, v13

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v18, v36

    .line 168
    .restart local v18    # "minWidth":I
    move-object/from16 v36, v9

    move/from16 v37, v13

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v31, v36

    .line 169
    .local v31, "colInc":I
    move-object/from16 v36, v9

    move/from16 v37, v13

    const/16 v38, 0x2

    add-int/lit8 v37, v37, 0x2

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v32, v36

    .line 170
    .local v32, "minPad":I
    move-object/from16 v36, v9

    move/from16 v37, v13

    const/16 v38, 0x3

    add-int/lit8 v37, v37, 0x3

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v19, v36

    .line 171
    .restart local v19    # "padChar":I
    new-instance v36, Lgnu/kawa/functions/LispObjectFormat;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    move-object/from16 v38, v17

    check-cast v38, Lgnu/text/ReportFormat;

    move/from16 v39, v18

    move/from16 v40, v31

    move/from16 v41, v32

    move/from16 v42, v19

    move/from16 v43, v15

    if-eqz v43, :cond_1f

    const/16 v43, 0x0

    :goto_c
    invoke-direct/range {v37 .. v43}, Lgnu/kawa/functions/LispObjectFormat;-><init>(Lgnu/text/ReportFormat;IIIII)V

    move-object/from16 v17, v36

    .line 174
    goto/16 :goto_a

    .line 164
    .end local v17    # "fmt":Ljava/text/Format;
    .end local v18    # "minWidth":I
    .end local v19    # "padChar":I
    .end local v31    # "colInc":I
    .end local v32    # "minPad":I
    :cond_1e
    const/16 v36, 0x0

    goto :goto_b

    .line 171
    .restart local v17    # "fmt":Ljava/text/Format;
    .restart local v18    # "minWidth":I
    .restart local v19    # "padChar":I
    .restart local v31    # "colInc":I
    .restart local v32    # "minPad":I
    :cond_1f
    const/16 v43, 0x64

    goto :goto_c

    .line 177
    .end local v17    # "fmt":Ljava/text/Format;
    .end local v18    # "minWidth":I
    .end local v19    # "padChar":I
    .end local v31    # "colInc":I
    .end local v32    # "minPad":I
    :sswitch_4
    move/from16 v36, v16

    if-lez v36, :cond_20

    move-object/from16 v36, v9

    move/from16 v37, v13

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    :goto_d
    move/from16 v20, v36

    .line 179
    .local v20, "charVal":I
    move/from16 v36, v20

    const/16 v37, 0x1

    move/from16 v38, v15

    move/from16 v39, v14

    invoke-static/range {v36 .. v39}, Lgnu/kawa/functions/LispCharacterFormat;->getInstance(IIZZ)Lgnu/kawa/functions/LispCharacterFormat;

    move-result-object v36

    move-object/from16 v17, v36

    .line 181
    .restart local v17    # "fmt":Ljava/text/Format;
    goto/16 :goto_a

    .line 177
    .end local v17    # "fmt":Ljava/text/Format;
    .end local v20    # "charVal":I
    :cond_20
    const/high16 v36, -0x60000000

    goto :goto_d

    .line 183
    :sswitch_5
    new-instance v36, Lgnu/kawa/functions/LispRepositionFormat;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    move-object/from16 v38, v9

    move/from16 v39, v13

    invoke-static/range {v38 .. v39}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v38

    move/from16 v39, v14

    move/from16 v40, v15

    invoke-direct/range {v37 .. v40}, Lgnu/kawa/functions/LispRepositionFormat;-><init>(IZZ)V

    move-object/from16 v17, v36

    .line 185
    .restart local v17    # "fmt":Ljava/text/Format;
    goto/16 :goto_a

    .line 187
    .end local v17    # "fmt":Ljava/text/Format;
    :sswitch_6
    move/from16 v36, v14

    if-eqz v36, :cond_22

    move/from16 v36, v15

    if-eqz v36, :cond_21

    const/16 v36, 0x55

    :goto_e
    move/from16 v12, v36

    .line 188
    new-instance v36, Lgnu/text/CaseConvertFormat;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    const/16 v38, 0x0

    move/from16 v39, v12

    invoke-direct/range {v37 .. v39}, Lgnu/text/CaseConvertFormat;-><init>(Ljava/text/Format;C)V

    move-object/from16 v31, v36

    .line 189
    .local v31, "cfmt":Lgnu/text/CaseConvertFormat;
    move-object/from16 v36, v9

    move/from16 v37, v13

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->setSize(I)V

    .line 190
    move-object/from16 v36, v9

    move-object/from16 v37, v31

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 191
    move-object/from16 v36, v9

    move/from16 v37, v6

    invoke-static/range {v37 .. v37}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 192
    move/from16 v36, v13

    move/from16 v6, v36

    .line 193
    goto/16 :goto_0

    .line 187
    .end local v31    # "cfmt":Lgnu/text/CaseConvertFormat;
    :cond_21
    const/16 v36, 0x43

    goto :goto_e

    :cond_22
    move/from16 v36, v15

    if-eqz v36, :cond_23

    const/16 v36, 0x54

    goto :goto_e

    :cond_23
    const/16 v36, 0x4c

    goto :goto_e

    .line 195
    :sswitch_7
    move/from16 v36, v6

    if-ltz v36, :cond_24

    move-object/from16 v36, v9

    move/from16 v37, v6

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/text/CaseConvertFormat;

    move/from16 v36, v0

    if-nez v36, :cond_25

    .line 198
    :cond_24
    new-instance v36, Ljava/text/ParseException;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    const-string/jumbo v38, "saw ~) without matching ~("

    move/from16 v39, v11

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v36

    .line 199
    :cond_25
    move-object/from16 v36, v9

    move/from16 v37, v6

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lgnu/text/CaseConvertFormat;

    move-object/from16 v31, v36

    .line 200
    .restart local v31    # "cfmt":Lgnu/text/CaseConvertFormat;
    move-object/from16 v36, v31

    move-object/from16 v37, v9

    move/from16 v38, v6

    const/16 v39, 0x2

    add-int/lit8 v38, v38, 0x2

    move/from16 v39, v13

    invoke-static/range {v37 .. v39}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lgnu/text/CaseConvertFormat;->setBaseFormat(Ljava/text/Format;)V

    .line 201
    move-object/from16 v36, v9

    invoke-virtual/range {v36 .. v36}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lgnu/math/IntNum;

    invoke-virtual/range {v36 .. v36}, Lgnu/math/IntNum;->intValue()I

    move-result v36

    move/from16 v6, v36

    .line 202
    goto/16 :goto_0

    .line 204
    .end local v31    # "cfmt":Lgnu/text/CaseConvertFormat;
    :sswitch_8
    new-instance v36, Lgnu/kawa/functions/LispIterationFormat;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    invoke-direct/range {v37 .. v37}, Lgnu/kawa/functions/LispIterationFormat;-><init>()V

    move-object/from16 v32, v36

    .line 205
    .local v32, "lfmt":Lgnu/kawa/functions/LispIterationFormat;
    move-object/from16 v36, v32

    move/from16 v37, v15

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lgnu/kawa/functions/LispIterationFormat;->seenAt:Z

    .line 206
    move-object/from16 v36, v32

    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Lgnu/kawa/functions/LispIterationFormat;->maxIterations:I

    .line 207
    move-object/from16 v36, v32

    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lgnu/kawa/functions/LispIterationFormat;->atLeastOnce:Z

    .line 208
    move-object/from16 v36, v32

    move-object/from16 v17, v36

    .line 209
    .restart local v17    # "fmt":Ljava/text/Format;
    goto/16 :goto_a

    .line 211
    .end local v17    # "fmt":Ljava/text/Format;
    .end local v32    # "lfmt":Lgnu/kawa/functions/LispIterationFormat;
    :sswitch_9
    new-instance v36, Lgnu/kawa/functions/LispIterationFormat;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    invoke-direct/range {v37 .. v37}, Lgnu/kawa/functions/LispIterationFormat;-><init>()V

    move-object/from16 v32, v36

    .line 212
    .restart local v32    # "lfmt":Lgnu/kawa/functions/LispIterationFormat;
    move-object/from16 v36, v32

    move/from16 v37, v15

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lgnu/kawa/functions/LispIterationFormat;->seenAt:Z

    .line 213
    move-object/from16 v36, v32

    move/from16 v37, v14

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lgnu/kawa/functions/LispIterationFormat;->seenColon:Z

    .line 214
    move-object/from16 v36, v32

    move-object/from16 v37, v9

    move/from16 v38, v13

    invoke-static/range {v37 .. v38}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Lgnu/kawa/functions/LispIterationFormat;->maxIterations:I

    .line 215
    move-object/from16 v36, v9

    move/from16 v37, v13

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->setSize(I)V

    .line 216
    move-object/from16 v36, v9

    move-object/from16 v37, v32

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 217
    move-object/from16 v36, v9

    move/from16 v37, v6

    invoke-static/range {v37 .. v37}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 218
    move/from16 v36, v13

    move/from16 v6, v36

    .line 219
    goto/16 :goto_0

    .line 221
    .end local v32    # "lfmt":Lgnu/kawa/functions/LispIterationFormat;
    :sswitch_a
    move/from16 v36, v6

    if-ltz v36, :cond_26

    move-object/from16 v36, v9

    move/from16 v37, v6

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/kawa/functions/LispIterationFormat;

    move/from16 v36, v0

    if-nez v36, :cond_27

    .line 224
    :cond_26
    new-instance v36, Ljava/text/ParseException;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    const-string/jumbo v38, "saw ~} without matching ~{"

    move/from16 v39, v11

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v36

    .line 225
    :cond_27
    move-object/from16 v36, v9

    move/from16 v37, v6

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lgnu/kawa/functions/LispIterationFormat;

    move-object/from16 v32, v36

    .line 226
    .restart local v32    # "lfmt":Lgnu/kawa/functions/LispIterationFormat;
    move-object/from16 v36, v32

    move/from16 v37, v14

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lgnu/kawa/functions/LispIterationFormat;->atLeastOnce:Z

    .line 227
    move/from16 v36, v13

    move/from16 v37, v6

    const/16 v38, 0x2

    add-int/lit8 v37, v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_28

    .line 228
    move-object/from16 v36, v32

    move-object/from16 v37, v9

    move/from16 v38, v6

    const/16 v39, 0x2

    add-int/lit8 v38, v38, 0x2

    move/from16 v39, v13

    invoke-static/range {v37 .. v39}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lgnu/kawa/functions/LispIterationFormat;->body:Ljava/text/Format;

    .line 229
    :cond_28
    move-object/from16 v36, v9

    invoke-virtual/range {v36 .. v36}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lgnu/math/IntNum;

    invoke-virtual/range {v36 .. v36}, Lgnu/math/IntNum;->intValue()I

    move-result v36

    move/from16 v6, v36

    .line 230
    goto/16 :goto_0

    .line 232
    .end local v32    # "lfmt":Lgnu/kawa/functions/LispIterationFormat;
    :sswitch_b
    new-instance v36, Lgnu/kawa/functions/LispPrettyFormat;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    invoke-direct/range {v37 .. v37}, Lgnu/kawa/functions/LispPrettyFormat;-><init>()V

    move-object/from16 v33, v36

    .line 233
    .local v33, "pfmt":Lgnu/kawa/functions/LispPrettyFormat;
    move-object/from16 v36, v33

    move/from16 v37, v15

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->seenAt:Z

    .line 234
    move/from16 v36, v14

    if-eqz v36, :cond_29

    .line 236
    move-object/from16 v36, v33

    const-string/jumbo v37, "("

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    .line 237
    move-object/from16 v36, v33

    const-string/jumbo v37, ")"

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    .line 244
    :goto_f
    move-object/from16 v36, v9

    move/from16 v37, v13

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->setSize(I)V

    .line 245
    move-object/from16 v36, v9

    move-object/from16 v37, v33

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 246
    move-object/from16 v36, v9

    move/from16 v37, v6

    invoke-static/range {v37 .. v37}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 247
    move-object/from16 v36, v9

    move/from16 v37, v7

    invoke-static/range {v37 .. v37}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 248
    move/from16 v36, v13

    move/from16 v6, v36

    .line 249
    const/16 v36, 0x0

    move/from16 v7, v36

    .line 250
    goto/16 :goto_0

    .line 241
    :cond_29
    move-object/from16 v36, v33

    const-string/jumbo v37, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    .line 242
    move-object/from16 v36, v33

    const-string/jumbo v37, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    goto :goto_f

    .line 252
    .end local v33    # "pfmt":Lgnu/kawa/functions/LispPrettyFormat;
    :sswitch_c
    move/from16 v36, v6

    if-ltz v36, :cond_2a

    move-object/from16 v36, v9

    move/from16 v37, v6

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/kawa/functions/LispPrettyFormat;

    move/from16 v36, v0

    if-nez v36, :cond_2b

    .line 255
    :cond_2a
    new-instance v36, Ljava/text/ParseException;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    const-string/jumbo v38, "saw ~> without matching ~<"

    move/from16 v39, v11

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v36

    .line 256
    :cond_2b
    move-object/from16 v36, v9

    move/from16 v37, v6

    const/16 v38, 0x3

    add-int/lit8 v37, v37, 0x3

    move/from16 v38, v7

    add-int v37, v37, v38

    move/from16 v38, v13

    invoke-static/range {v36 .. v38}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v36

    move-object/from16 v17, v36

    .line 257
    .restart local v17    # "fmt":Ljava/text/Format;
    move-object/from16 v36, v9

    move-object/from16 v37, v17

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 258
    move-object/from16 v36, v9

    move/from16 v37, v6

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lgnu/kawa/functions/LispPrettyFormat;

    move-object/from16 v33, v36

    .line 259
    .restart local v33    # "pfmt":Lgnu/kawa/functions/LispPrettyFormat;
    move-object/from16 v36, v33

    move-object/from16 v37, v9

    move/from16 v38, v6

    const/16 v39, 0x3

    add-int/lit8 v38, v38, 0x3

    move-object/from16 v39, v9

    invoke-virtual/range {v39 .. v39}, Ljava/util/Stack;->size()I

    move-result v39

    invoke-static/range {v37 .. v39}, Lgnu/kawa/functions/LispFormat;->getFormats(Ljava/util/Vector;II)[Ljava/text/Format;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    .line 260
    move-object/from16 v36, v9

    move/from16 v37, v6

    const/16 v38, 0x3

    add-int/lit8 v37, v37, 0x3

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->setSize(I)V

    .line 261
    move-object/from16 v36, v9

    invoke-virtual/range {v36 .. v36}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lgnu/math/IntNum;

    invoke-virtual/range {v36 .. v36}, Lgnu/math/IntNum;->intValue()I

    move-result v36

    move/from16 v6, v36

    .line 262
    move-object/from16 v36, v9

    invoke-virtual/range {v36 .. v36}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lgnu/math/IntNum;

    invoke-virtual/range {v36 .. v36}, Lgnu/math/IntNum;->intValue()I

    move-result v36

    move/from16 v6, v36

    .line 263
    move/from16 v36, v14

    if-eqz v36, :cond_31

    .line 265
    move-object/from16 v36, v33

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v34, v36

    .line 266
    .local v34, "nsegments":I
    move/from16 v36, v34

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_2c

    .line 267
    new-instance v36, Ljava/text/ParseException;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    const-string/jumbo v38, "too many segments in Logical Block format"

    move/from16 v39, v11

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v36

    .line 268
    :cond_2c
    move/from16 v36, v34

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_2e

    .line 270
    move-object/from16 v36, v33

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/text/LiteralFormat;

    move/from16 v36, v0

    if-nez v36, :cond_2d

    .line 271
    new-instance v36, Ljava/text/ParseException;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    const-string/jumbo v38, "prefix segment is not literal"

    move/from16 v39, v11

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v36

    .line 272
    :cond_2d
    move-object/from16 v36, v33

    move-object/from16 v37, v33

    move-object/from16 v0, v37

    iget-object v0, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v37, v37, v38

    check-cast v37, Lgnu/text/LiteralFormat;

    invoke-virtual/range {v37 .. v37}, Lgnu/text/LiteralFormat;->content()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    .line 273
    move-object/from16 v36, v33

    move-object/from16 v37, v33

    move-object/from16 v0, v37

    iget-object v0, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    .line 277
    :goto_10
    move/from16 v36, v34

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_30

    .line 279
    move-object/from16 v36, v33

    move-object/from16 v0, v36

    iget-object v0, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/text/LiteralFormat;

    move/from16 v36, v0

    if-nez v36, :cond_2f

    .line 280
    new-instance v36, Ljava/text/ParseException;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    const-string/jumbo v38, "suffix segment is not literal"

    move/from16 v39, v11

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v36

    .line 276
    :cond_2e
    move-object/from16 v36, v33

    move-object/from16 v37, v33

    move-object/from16 v0, v37

    iget-object v0, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    goto :goto_10

    .line 281
    :cond_2f
    move-object/from16 v36, v33

    move-object/from16 v37, v33

    move-object/from16 v0, v37

    iget-object v0, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    move-object/from16 v37, v0

    const/16 v38, 0x2

    aget-object v37, v37, v38

    check-cast v37, Lgnu/text/LiteralFormat;

    invoke-virtual/range {v37 .. v37}, Lgnu/text/LiteralFormat;->content()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    .line 283
    :cond_30
    goto/16 :goto_0

    .line 285
    .end local v34    # "nsegments":I
    :cond_31
    new-instance v36, Ljava/text/ParseException;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    const-string/jumbo v38, "not implemented: justfication i.e. ~<...~>"

    move/from16 v39, v11

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v36

    .line 288
    .end local v17    # "fmt":Ljava/text/Format;
    .end local v33    # "pfmt":Lgnu/kawa/functions/LispPrettyFormat;
    :sswitch_d
    new-instance v36, Lgnu/kawa/functions/LispChoiceFormat;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    invoke-direct/range {v37 .. v37}, Lgnu/kawa/functions/LispChoiceFormat;-><init>()V

    move-object/from16 v34, v36

    .line 289
    .local v34, "afmt":Lgnu/kawa/functions/LispChoiceFormat;
    move-object/from16 v36, v34

    move-object/from16 v37, v9

    move/from16 v38, v13

    invoke-static/range {v37 .. v38}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    .line 290
    move-object/from16 v36, v34

    move-object/from16 v0, v36

    iget v0, v0, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    move/from16 v36, v0

    const/high16 v37, -0x40000000    # -2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_32

    .line 291
    move-object/from16 v36, v34

    const/high16 v37, -0x60000000

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    .line 292
    :cond_32
    move/from16 v36, v14

    if-eqz v36, :cond_33

    .line 293
    move-object/from16 v36, v34

    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lgnu/kawa/functions/LispChoiceFormat;->testBoolean:Z

    .line 294
    :cond_33
    move/from16 v36, v15

    if-eqz v36, :cond_34

    .line 295
    move-object/from16 v36, v34

    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lgnu/kawa/functions/LispChoiceFormat;->skipIfFalse:Z

    .line 296
    :cond_34
    move-object/from16 v36, v9

    move/from16 v37, v13

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->setSize(I)V

    .line 297
    move-object/from16 v36, v9

    move-object/from16 v37, v34

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 298
    move-object/from16 v36, v9

    move/from16 v37, v6

    invoke-static/range {v37 .. v37}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 299
    move-object/from16 v36, v9

    move/from16 v37, v7

    invoke-static/range {v37 .. v37}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 300
    move/from16 v36, v13

    move/from16 v6, v36

    .line 301
    const/16 v36, 0x0

    move/from16 v7, v36

    .line 302
    goto/16 :goto_0

    .line 304
    .end local v34    # "afmt":Lgnu/kawa/functions/LispChoiceFormat;
    :sswitch_e
    move/from16 v36, v6

    if-ltz v36, :cond_38

    .line 306
    move-object/from16 v36, v9

    move/from16 v37, v6

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/kawa/functions/LispChoiceFormat;

    move/from16 v36, v0

    if-eqz v36, :cond_36

    .line 309
    move-object/from16 v36, v9

    move/from16 v37, v6

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lgnu/kawa/functions/LispChoiceFormat;

    move-object/from16 v34, v36

    .line 310
    .restart local v34    # "afmt":Lgnu/kawa/functions/LispChoiceFormat;
    move/from16 v36, v14

    if-eqz v36, :cond_35

    .line 311
    move-object/from16 v36, v34

    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lgnu/kawa/functions/LispChoiceFormat;->lastIsDefault:Z

    .line 312
    :cond_35
    move-object/from16 v36, v9

    move/from16 v37, v6

    const/16 v38, 0x3

    add-int/lit8 v37, v37, 0x3

    move/from16 v38, v7

    add-int v37, v37, v38

    move/from16 v38, v13

    invoke-static/range {v36 .. v38}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v36

    move-object/from16 v17, v36

    .line 314
    .restart local v17    # "fmt":Ljava/text/Format;
    move-object/from16 v36, v9

    move-object/from16 v37, v17

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 315
    add-int/lit8 v7, v7, 0x1

    .line 316
    goto/16 :goto_0

    .line 318
    .end local v17    # "fmt":Ljava/text/Format;
    .end local v34    # "afmt":Lgnu/kawa/functions/LispChoiceFormat;
    :cond_36
    move-object/from16 v36, v9

    move/from16 v37, v6

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/kawa/functions/LispPrettyFormat;

    move/from16 v36, v0

    if-eqz v36, :cond_38

    .line 321
    move-object/from16 v36, v9

    move/from16 v37, v6

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lgnu/kawa/functions/LispPrettyFormat;

    move-object/from16 v33, v36

    .line 322
    .restart local v33    # "pfmt":Lgnu/kawa/functions/LispPrettyFormat;
    move/from16 v36, v15

    if-eqz v36, :cond_37

    .line 323
    move-object/from16 v36, v33

    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->perLine:Z

    .line 324
    :cond_37
    move-object/from16 v36, v9

    move/from16 v37, v6

    const/16 v38, 0x3

    add-int/lit8 v37, v37, 0x3

    move/from16 v38, v7

    add-int v37, v37, v38

    move/from16 v38, v13

    invoke-static/range {v36 .. v38}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v36

    move-object/from16 v17, v36

    .line 326
    .restart local v17    # "fmt":Ljava/text/Format;
    move-object/from16 v36, v9

    move-object/from16 v37, v17

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 327
    add-int/lit8 v7, v7, 0x1

    .line 328
    goto/16 :goto_0

    .line 332
    .end local v17    # "fmt":Ljava/text/Format;
    .end local v33    # "pfmt":Lgnu/kawa/functions/LispPrettyFormat;
    :cond_38
    new-instance v36, Ljava/text/ParseException;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    const-string/jumbo v38, "saw ~; without matching ~[ or ~<"

    move/from16 v39, v11

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v36

    .line 334
    :sswitch_f
    move/from16 v36, v6

    if-ltz v36, :cond_39

    move-object/from16 v36, v9

    move/from16 v37, v6

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/kawa/functions/LispChoiceFormat;

    move/from16 v36, v0

    if-nez v36, :cond_3a

    .line 337
    :cond_39
    new-instance v36, Ljava/text/ParseException;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    const-string/jumbo v38, "saw ~] without matching ~["

    move/from16 v39, v11

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v36

    .line 338
    :cond_3a
    move-object/from16 v36, v9

    move/from16 v37, v6

    const/16 v38, 0x3

    add-int/lit8 v37, v37, 0x3

    move/from16 v38, v7

    add-int v37, v37, v38

    move/from16 v38, v13

    invoke-static/range {v36 .. v38}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v36

    move-object/from16 v17, v36

    .line 339
    .restart local v17    # "fmt":Ljava/text/Format;
    move-object/from16 v36, v9

    move-object/from16 v37, v17

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 340
    move-object/from16 v36, v9

    move/from16 v37, v6

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lgnu/kawa/functions/LispChoiceFormat;

    move-object/from16 v34, v36

    .line 341
    .restart local v34    # "afmt":Lgnu/kawa/functions/LispChoiceFormat;
    move-object/from16 v36, v34

    move-object/from16 v37, v9

    move/from16 v38, v6

    const/16 v39, 0x3

    add-int/lit8 v38, v38, 0x3

    move-object/from16 v39, v9

    invoke-virtual/range {v39 .. v39}, Ljava/util/Stack;->size()I

    move-result v39

    invoke-static/range {v37 .. v39}, Lgnu/kawa/functions/LispFormat;->getFormats(Ljava/util/Vector;II)[Ljava/text/Format;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    .line 342
    move-object/from16 v36, v9

    move/from16 v37, v6

    const/16 v38, 0x3

    add-int/lit8 v37, v37, 0x3

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->setSize(I)V

    .line 343
    move-object/from16 v36, v9

    invoke-virtual/range {v36 .. v36}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lgnu/math/IntNum;

    invoke-virtual/range {v36 .. v36}, Lgnu/math/IntNum;->intValue()I

    move-result v36

    move/from16 v7, v36

    .line 344
    move-object/from16 v36, v9

    invoke-virtual/range {v36 .. v36}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lgnu/math/IntNum;

    invoke-virtual/range {v36 .. v36}, Lgnu/math/IntNum;->intValue()I

    move-result v36

    move/from16 v6, v36

    .line 345
    goto/16 :goto_0

    .line 347
    .end local v17    # "fmt":Ljava/text/Format;
    .end local v34    # "afmt":Lgnu/kawa/functions/LispChoiceFormat;
    :sswitch_10
    move-object/from16 v36, v9

    move/from16 v37, v13

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v21, v36

    .line 348
    .local v21, "param1":I
    move-object/from16 v36, v9

    move/from16 v37, v13

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v22, v36

    .line 349
    .local v22, "param2":I
    move-object/from16 v36, v9

    move/from16 v37, v13

    const/16 v38, 0x2

    add-int/lit8 v37, v37, 0x2

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v23, v36

    .line 350
    .local v23, "param3":I
    new-instance v36, Lgnu/kawa/functions/LispEscapeFormat;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    move/from16 v38, v21

    move/from16 v39, v22

    move/from16 v40, v23

    invoke-direct/range {v37 .. v40}, Lgnu/kawa/functions/LispEscapeFormat;-><init>(III)V

    move-object/from16 v17, v36

    .line 351
    .restart local v17    # "fmt":Ljava/text/Format;
    goto/16 :goto_a

    .line 353
    .end local v17    # "fmt":Ljava/text/Format;
    .end local v21    # "param1":I
    .end local v22    # "param2":I
    .end local v23    # "param3":I
    :sswitch_11
    move/from16 v36, v15

    if-eqz v36, :cond_3b

    .line 354
    move-object/from16 v36, v8

    move/from16 v37, v12

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 355
    :cond_3b
    move/from16 v36, v14

    if-nez v36, :cond_0

    .line 357
    :cond_3c
    move/from16 v36, v11

    move/from16 v37, v10

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_0

    .line 359
    move-object/from16 v36, v3

    move/from16 v37, v11

    add-int/lit8 v11, v11, 0x1

    aget-char v36, v36, v37

    move/from16 v12, v36

    .line 360
    move/from16 v36, v12

    invoke-static/range {v36 .. v36}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v36

    if-nez v36, :cond_3c

    .line 362
    add-int/lit8 v11, v11, -0x1

    .line 363
    goto/16 :goto_0

    .line 369
    :sswitch_12
    invoke-static {}, Lgnu/text/FlushFormat;->getInstance()Lgnu/text/FlushFormat;

    move-result-object v36

    move-object/from16 v17, v36

    .line 370
    .restart local v17    # "fmt":Ljava/text/Format;
    goto/16 :goto_a

    .line 372
    .end local v17    # "fmt":Ljava/text/Format;
    :sswitch_13
    move-object/from16 v36, v9

    move/from16 v37, v13

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v21, v36

    .line 373
    .restart local v21    # "param1":I
    move-object/from16 v36, v9

    move/from16 v37, v13

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v22, v36

    .line 374
    .restart local v22    # "param2":I
    move-object/from16 v36, v9

    move/from16 v37, v13

    const/16 v38, 0x2

    add-int/lit8 v37, v37, 0x2

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v23, v36

    .line 375
    .restart local v23    # "param3":I
    new-instance v36, Lgnu/kawa/functions/LispTabulateFormat;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    move/from16 v38, v21

    move/from16 v39, v22

    move/from16 v40, v23

    move/from16 v41, v15

    invoke-direct/range {v37 .. v41}, Lgnu/kawa/functions/LispTabulateFormat;-><init>(IIIZ)V

    move-object/from16 v17, v36

    .line 376
    .restart local v17    # "fmt":Ljava/text/Format;
    goto/16 :goto_a

    .line 378
    .end local v17    # "fmt":Ljava/text/Format;
    .end local v21    # "param1":I
    .end local v22    # "param2":I
    .end local v23    # "param3":I
    :sswitch_14
    move-object/from16 v36, v9

    move/from16 v37, v13

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v21, v36

    .line 379
    .restart local v21    # "param1":I
    new-instance v36, Lgnu/kawa/functions/LispFreshlineFormat;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    move/from16 v38, v21

    invoke-direct/range {v37 .. v38}, Lgnu/kawa/functions/LispFreshlineFormat;-><init>(I)V

    move-object/from16 v17, v36

    .line 380
    .restart local v17    # "fmt":Ljava/text/Format;
    goto/16 :goto_a

    .line 382
    .end local v17    # "fmt":Ljava/text/Format;
    .end local v21    # "param1":I
    :sswitch_15
    move-object/from16 v36, v9

    move/from16 v37, v13

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v21, v36

    .line 383
    .restart local v21    # "param1":I
    move/from16 v36, v21

    const/high16 v37, -0x40000000    # -2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_3d

    .line 384
    const/16 v36, 0x0

    move/from16 v21, v36

    .line 385
    :cond_3d
    move/from16 v36, v21

    move/from16 v37, v14

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispIndentFormat;->getInstance(IZ)Lgnu/kawa/functions/LispIndentFormat;

    move-result-object v36

    move-object/from16 v17, v36

    .line 386
    .restart local v17    # "fmt":Ljava/text/Format;
    goto/16 :goto_a

    .line 388
    .end local v17    # "fmt":Ljava/text/Format;
    .end local v21    # "param1":I
    :sswitch_16
    move-object/from16 v36, v9

    move/from16 v37, v13

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v21, v36

    .line 389
    .restart local v21    # "param1":I
    move/from16 v36, v21

    const/high16 v37, -0x40000000    # -2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_3e

    .line 390
    const/16 v36, 0x1

    move/from16 v21, v36

    .line 391
    :cond_3e
    move/from16 v36, v14

    if-eqz v36, :cond_3f

    move/from16 v36, v15

    if-eqz v36, :cond_3f

    const/16 v36, 0xa

    :goto_11
    move/from16 v20, v36

    .line 393
    .restart local v20    # "charVal":I
    move/from16 v36, v15

    if-eqz v36, :cond_40

    move/from16 v36, v14

    if-eqz v36, :cond_40

    const/16 v36, 0x52

    move/from16 v35, v36

    .line 397
    .local v35, "kind":I
    :goto_12
    move/from16 v36, v21

    move/from16 v37, v35

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispNewlineFormat;->getInstance(II)Lgnu/kawa/functions/LispNewlineFormat;

    move-result-object v36

    move-object/from16 v17, v36

    .line 398
    .restart local v17    # "fmt":Ljava/text/Format;
    goto/16 :goto_a

    .line 391
    .end local v17    # "fmt":Ljava/text/Format;
    .end local v20    # "charVal":I
    .end local v35    # "kind":I
    :cond_3f
    const/16 v36, 0x20

    goto :goto_11

    .line 394
    .restart local v20    # "charVal":I
    :cond_40
    move/from16 v36, v15

    if-eqz v36, :cond_41

    const/16 v36, 0x4d

    move/from16 v35, v36

    .restart local v35    # "kind":I
    goto :goto_12

    .line 395
    .end local v35    # "kind":I
    :cond_41
    move/from16 v36, v14

    if-eqz v36, :cond_42

    const/16 v36, 0x46

    move/from16 v35, v36

    .restart local v35    # "kind":I
    goto :goto_12

    .line 396
    .end local v35    # "kind":I
    :cond_42
    const/16 v36, 0x4e

    move/from16 v35, v36

    .restart local v35    # "kind":I
    goto :goto_12

    .line 400
    .end local v20    # "charVal":I
    .end local v21    # "param1":I
    .end local v35    # "kind":I
    :sswitch_17
    move/from16 v36, v16

    if-nez v36, :cond_43

    .line 402
    move-object/from16 v36, v8

    move/from16 v37, v12

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v36

    .line 403
    goto/16 :goto_0

    .line 407
    :cond_43
    :sswitch_18
    move-object/from16 v36, v9

    move/from16 v37, v13

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v24, v36

    .line 408
    .local v24, "count":I
    move/from16 v36, v24

    const/high16 v37, -0x40000000    # -2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_44

    .line 409
    const/16 v36, 0x1

    move/from16 v24, v36

    .line 411
    :cond_44
    move-object/from16 v36, v9

    move/from16 v37, v13

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v20, v36

    .line 412
    .restart local v20    # "charVal":I
    move/from16 v36, v20

    const/high16 v37, -0x40000000    # -2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_45

    .line 413
    move/from16 v36, v12

    const/16 v37, 0x7c

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_46

    const/16 v36, 0xc

    :goto_13
    move/from16 v20, v36

    .line 414
    :cond_45
    move/from16 v36, v20

    move/from16 v37, v24

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-static/range {v36 .. v39}, Lgnu/kawa/functions/LispCharacterFormat;->getInstance(IIZZ)Lgnu/kawa/functions/LispCharacterFormat;

    move-result-object v36

    move-object/from16 v17, v36

    .line 416
    .restart local v17    # "fmt":Ljava/text/Format;
    goto/16 :goto_a

    .line 413
    .end local v17    # "fmt":Ljava/text/Format;
    :cond_46
    const/16 v36, 0x7e

    goto :goto_13

    .line 418
    .end local v20    # "charVal":I
    .end local v24    # "count":I
    :sswitch_19
    move-object/from16 v36, v9

    move/from16 v37, v13

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v36

    move/from16 v24, v36

    .line 419
    .restart local v24    # "count":I
    move/from16 v36, v24

    const/high16 v37, -0x40000000    # -2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_47

    .line 420
    const/16 v36, 0x1

    move/from16 v24, v36

    .line 421
    :cond_47
    move/from16 v36, v24

    const/16 v37, 0x4c

    invoke-static/range {v36 .. v37}, Lgnu/kawa/functions/LispNewlineFormat;->getInstance(II)Lgnu/kawa/functions/LispNewlineFormat;

    move-result-object v36

    move-object/from16 v17, v36

    .line 423
    .restart local v17    # "fmt":Ljava/text/Format;
    goto/16 :goto_a

    .line 432
    .end local v12    # "ch":C
    .end local v13    # "speci":I
    .end local v14    # "seenColon":Z
    .end local v15    # "seenAt":Z
    .end local v16    # "numParams":I
    .end local v17    # "fmt":Ljava/text/Format;
    .end local v24    # "count":I
    :cond_48
    move/from16 v36, v6

    if-ltz v36, :cond_49

    .line 434
    new-instance v36, Ljava/text/ParseException;

    move-object/from16 v44, v36

    move-object/from16 v36, v44

    move-object/from16 v37, v44

    const-string/jumbo v38, "missing ~] or ~}"

    move/from16 v39, v11

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v36

    .line 436
    :cond_49
    move-object/from16 v36, v2

    move-object/from16 v37, v9

    invoke-virtual/range {v37 .. v37}, Ljava/util/Stack;->size()I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Lgnu/kawa/functions/LispFormat;->length:I

    .line 437
    move-object/from16 v36, v2

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Lgnu/kawa/functions/LispFormat;->length:I

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/text/Format;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lgnu/kawa/functions/LispFormat;->formats:[Ljava/text/Format;

    .line 438
    move-object/from16 v36, v9

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Lgnu/kawa/functions/LispFormat;->formats:[Ljava/text/Format;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/util/Stack;->copyInto([Ljava/lang/Object;)V

    .line 439
    return-void

    .line 110
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_11
        0x21 -> :sswitch_12
        0x24 -> :sswitch_2
        0x25 -> :sswitch_19
        0x26 -> :sswitch_14
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x2a -> :sswitch_5
        0x3b -> :sswitch_e
        0x3c -> :sswitch_b
        0x3e -> :sswitch_c
        0x3f -> :sswitch_8
        0x41 -> :sswitch_3
        0x42 -> :sswitch_0
        0x43 -> :sswitch_4
        0x44 -> :sswitch_0
        0x45 -> :sswitch_2
        0x46 -> :sswitch_2
        0x47 -> :sswitch_2
        0x49 -> :sswitch_15
        0x4f -> :sswitch_0
        0x50 -> :sswitch_1
        0x52 -> :sswitch_0
        0x53 -> :sswitch_3
        0x54 -> :sswitch_13
        0x57 -> :sswitch_3
        0x58 -> :sswitch_0
        0x59 -> :sswitch_3
        0x5b -> :sswitch_d
        0x5d -> :sswitch_f
        0x5e -> :sswitch_10
        0x5f -> :sswitch_16
        0x7b -> :sswitch_9
        0x7c -> :sswitch_18
        0x7d -> :sswitch_a
        0x7e -> :sswitch_17
    .end sparse-switch
.end method

.method public static asArray(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v6, v0

    instance-of v6, v6, [Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 536
    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    .line 557
    .end local v0    # "arg":Ljava/lang/Object;
    .local v1, "count":I
    .local v2, "arr":[Ljava/lang/Object;
    .local v3, "i":I
    :goto_0
    return-object v0

    .line 537
    .end local v1    # "count":I
    .end local v2    # "arr":[Ljava/lang/Object;
    .end local v3    # "i":I
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_0
    move-object v6, v0

    instance-of v6, v6, Lgnu/lists/Sequence;

    if-nez v6, :cond_1

    .line 538
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 539
    :cond_1
    move-object v6, v0

    check-cast v6, Lgnu/lists/Sequence;

    invoke-interface {v6}, Lgnu/lists/Sequence;->size()I

    move-result v6

    move v1, v6

    .line 540
    .restart local v1    # "count":I
    move v6, v1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v2, v6

    .line 541
    .restart local v2    # "arr":[Ljava/lang/Object;
    const/4 v6, 0x0

    move v3, v6

    .line 542
    .restart local v3    # "i":I
    :goto_1
    move-object v6, v0

    instance-of v6, v6, Lgnu/lists/Pair;

    if-eqz v6, :cond_2

    .line 544
    move-object v6, v0

    check-cast v6, Lgnu/lists/Pair;

    move-object v4, v6

    .line 545
    .local v4, "pair":Lgnu/lists/Pair;
    move-object v6, v2

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v4

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    .line 546
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .line 547
    goto :goto_1

    .line 548
    .end local v4    # "pair":Lgnu/lists/Pair;
    :cond_2
    move v6, v3

    move v7, v1

    if-ge v6, v7, :cond_4

    .line 550
    move-object v6, v0

    instance-of v6, v6, Lgnu/lists/Sequence;

    if-nez v6, :cond_3

    .line 551
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 552
    :cond_3
    move v6, v3

    move v4, v6

    .line 553
    .local v4, "npairs":I
    move-object v6, v0

    check-cast v6, Lgnu/lists/Sequence;

    move-object v5, v6

    .line 554
    .local v5, "seq":Lgnu/lists/Sequence;
    :goto_2
    move v6, v3

    move v7, v1

    if-ge v6, v7, :cond_4

    .line 555
    move-object v6, v2

    move v7, v3

    move-object v8, v5

    move v9, v4

    move v10, v3

    add-int/2addr v9, v10

    invoke-interface {v8, v9}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    .line 554
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 557
    .end local v4    # "npairs":I
    .end local v5    # "seq":Lgnu/lists/Sequence;
    :cond_4
    move-object v6, v2

    move-object v0, v6

    goto :goto_0
.end method

.method static getFormats(Ljava/util/Vector;II)[Ljava/text/Format;
    .locals 9

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "vector":Ljava/util/Vector;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move v5, v2

    move v6, v1

    sub-int/2addr v5, v6

    new-array v5, v5, [Ljava/text/Format;

    move-object v3, v5

    .line 444
    .local v3, "f":[Ljava/text/Format;
    move v5, v1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 445
    move-object v5, v3

    move v6, v4

    move v7, v1

    sub-int/2addr v6, v7

    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/text/Format;

    aput-object v7, v5, v6

    .line 444
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 446
    :cond_0
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "vector":Ljava/util/Vector;
    return-object v0
.end method

.method public static getParam(Ljava/util/Vector;I)I
    .locals 5

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "vec":Ljava/util/Vector;
    move v1, p1

    .local v1, "index":I
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 520
    const/high16 v3, -0x40000000    # -2.0f

    move v0, v3

    .line 528
    .end local v0    # "vec":Ljava/util/Vector;
    :goto_0
    return v0

    .line 521
    .restart local v0    # "vec":Ljava/util/Vector;
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 522
    .local v2, "arg":Ljava/lang/Object;
    move-object v3, v2

    const-string/jumbo v4, "<from list>"

    if-ne v3, v4, :cond_1

    .line 523
    const/high16 v3, -0x60000000

    move v0, v3

    goto :goto_0

    .line 524
    :cond_1
    move-object v3, v2

    const-string/jumbo v4, "<from count>"

    if-ne v3, v4, :cond_2

    .line 525
    const/high16 v3, -0x50000000

    move v0, v3

    goto :goto_0

    .line 526
    :cond_2
    move-object v3, v2

    const-string/jumbo v4, "<unspecified>"

    if-ne v3, v4, :cond_3

    .line 527
    const/high16 v3, -0x40000000    # -2.0f

    move v0, v3

    goto :goto_0

    .line 528
    :cond_3
    move-object v3, v2

    const/high16 v4, -0x40000000    # -2.0f

    invoke-static {v3, v4}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/lang/Object;I)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method static popFormats(Ljava/util/Vector;II)Ljava/text/Format;
    .locals 10

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "vector":Ljava/util/Vector;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move v4, v2

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_0

    .line 453
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/Format;

    move-object v3, v4

    .line 456
    .local v3, "f":Ljava/text/Format;
    :goto_0
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->setSize(I)V

    .line 457
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "vector":Ljava/util/Vector;
    return-object v0

    .line 455
    .end local v3    # "f":Ljava/text/Format;
    .restart local v0    # "vector":Ljava/util/Vector;
    :cond_0
    new-instance v4, Lgnu/text/CompoundFormat;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-static {v6, v7, v8}, Lgnu/kawa/functions/LispFormat;->getFormats(Ljava/util/Vector;II)[Ljava/text/Format;

    move-result-object v6

    invoke-direct {v5, v6}, Lgnu/text/CompoundFormat;-><init>([Ljava/text/Format;)V

    move-object v3, v4

    .restart local v3    # "f":Ljava/text/Format;
    goto :goto_0
.end method
