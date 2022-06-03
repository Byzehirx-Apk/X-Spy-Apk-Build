.class public Lgnu/text/RomanIntegerFormat;
.super Ljava/text/NumberFormat;
.source "RomanIntegerFormat.java"


# static fields
.field static final codes:Ljava/lang/String; = "IVXLCDM"

.field private static newRoman:Lgnu/text/RomanIntegerFormat;

.field private static oldRoman:Lgnu/text/RomanIntegerFormat;


# instance fields
.field public oldStyle:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/text/RomanIntegerFormat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/text/NumberFormat;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/text/RomanIntegerFormat;
    move v1, p1

    .local v1, "oldStyle":Z
    move-object v2, v0

    invoke-direct {v2}, Ljava/text/NumberFormat;-><init>()V

    .line 13
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lgnu/text/RomanIntegerFormat;->oldStyle:Z

    .line 14
    return-void
.end method

.method public static format(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    move v0, p0

    .local v0, "num":I
    move v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/text/RomanIntegerFormat;->format(IZ)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "num":I
    return-object v0
.end method

.method public static format(IZ)Ljava/lang/String;
    .locals 13

    .prologue
    .line 40
    move v0, p0

    .local v0, "num":I
    move v1, p1

    .local v1, "oldStyle":Z
    move v7, v0

    if-lez v7, :cond_0

    move v7, v0

    const/16 v8, 0x1387

    if-lt v7, v8, :cond_1

    .line 41
    :cond_0
    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 68
    .end local v0    # "num":I
    :goto_0
    return-object v0

    .line 42
    .restart local v0    # "num":I
    :cond_1
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/16 v9, 0x14

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v2, v7

    .line 43
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    const/4 v7, 0x3

    move v3, v7

    .line 44
    .local v3, "power":I
    const/16 v7, 0x3e8

    move v4, v7

    .line 45
    .local v4, "unit":I
    :goto_1
    move v7, v3

    if-ltz v7, :cond_7

    .line 47
    move v7, v0

    move v8, v4

    div-int/2addr v7, v8

    move v5, v7

    .line 48
    .local v5, "digit":I
    move v7, v0

    move v8, v5

    move v9, v4

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    move v0, v7

    .line 49
    move v7, v5

    if-nez v7, :cond_3

    .line 50
    .line 45
    :cond_2
    :goto_2
    move v7, v4

    const/16 v8, 0xa

    div-int/lit8 v7, v7, 0xa

    move v4, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 51
    :cond_3
    move v7, v1

    if-nez v7, :cond_5

    move v7, v5

    const/4 v8, 0x4

    if-eq v7, v8, :cond_4

    move v7, v5

    const/16 v8, 0x9

    if-ne v7, v8, :cond_5

    .line 53
    :cond_4
    move-object v7, v2

    const-string/jumbo v8, "IVXLCDM"

    const/4 v9, 0x2

    move v10, v3

    mul-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 54
    move-object v7, v2

    const-string/jumbo v8, "IVXLCDM"

    const/4 v9, 0x2

    move v10, v3

    mul-int/2addr v9, v10

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x5

    div-int/lit8 v10, v10, 0x5

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 55
    goto :goto_2

    .line 57
    :cond_5
    move v7, v5

    move v6, v7

    .line 58
    .local v6, "rest":I
    move v7, v6

    const/4 v8, 0x5

    if-lt v7, v8, :cond_6

    .line 60
    move-object v7, v2

    const-string/jumbo v8, "IVXLCDM"

    const/4 v9, 0x2

    move v10, v3

    mul-int/2addr v9, v10

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 61
    add-int/lit8 v6, v6, -0x5

    .line 63
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, -0x1

    move v7, v6

    if-ltz v7, :cond_2

    .line 65
    move-object v7, v2

    const-string/jumbo v8, "IVXLCDM"

    const/4 v9, 0x2

    move v10, v3

    mul-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    goto :goto_3

    .line 68
    .end local v5    # "digit":I
    .end local v6    # "rest":I
    :cond_7
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0
.end method

.method public static getInstance(Z)Lgnu/text/RomanIntegerFormat;
    .locals 5

    .prologue
    .line 22
    move v0, p0

    .local v0, "oldStyle":Z
    move v1, v0

    if-eqz v1, :cond_1

    .line 24
    sget-object v1, Lgnu/text/RomanIntegerFormat;->oldRoman:Lgnu/text/RomanIntegerFormat;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lgnu/text/RomanIntegerFormat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lgnu/text/RomanIntegerFormat;-><init>(Z)V

    sput-object v1, Lgnu/text/RomanIntegerFormat;->oldRoman:Lgnu/text/RomanIntegerFormat;

    .line 26
    :cond_0
    sget-object v1, Lgnu/text/RomanIntegerFormat;->oldRoman:Lgnu/text/RomanIntegerFormat;

    move-object v0, v1

    .line 32
    .end local v0    # "oldStyle":Z
    :goto_0
    return-object v0

    .line 30
    .restart local v0    # "oldStyle":Z
    :cond_1
    sget-object v1, Lgnu/text/RomanIntegerFormat;->newRoman:Lgnu/text/RomanIntegerFormat;

    if-nez v1, :cond_2

    .line 31
    new-instance v1, Lgnu/text/RomanIntegerFormat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lgnu/text/RomanIntegerFormat;-><init>(Z)V

    sput-object v1, Lgnu/text/RomanIntegerFormat;->newRoman:Lgnu/text/RomanIntegerFormat;

    .line 32
    :cond_2
    sget-object v1, Lgnu/text/RomanIntegerFormat;->newRoman:Lgnu/text/RomanIntegerFormat;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 13

    .prologue
    .line 100
    move-object v1, p0

    .local v1, "this":Lgnu/text/RomanIntegerFormat;
    move-wide v2, p1

    .local v2, "num":D
    move-object/from16 v4, p3

    .local v4, "sbuf":Ljava/lang/StringBuffer;
    move-object/from16 v5, p4

    .local v5, "fpos":Ljava/text/FieldPosition;
    move-wide v8, v2

    double-to-long v8, v8

    move-wide v6, v8

    .line 101
    .local v6, "inum":J
    move-wide v8, v6

    long-to-double v8, v8

    move-wide v10, v2

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    .line 102
    move-object v8, v1

    move-wide v9, v6

    move-object v11, v4

    move-object v12, v5

    invoke-virtual {v8, v9, v10, v11, v12}, Lgnu/text/RomanIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v1, v8

    .line 104
    .end local v1    # "this":Lgnu/text/RomanIntegerFormat;
    :goto_0
    return-object v1

    .line 103
    .restart local v1    # "this":Lgnu/text/RomanIntegerFormat;
    :cond_0
    move-object v8, v4

    move-wide v9, v2

    invoke-static {v9, v10}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 104
    move-object v8, v4

    move-object v1, v8

    goto :goto_0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 17

    .prologue
    .line 79
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/text/RomanIntegerFormat;
    move-wide/from16 v1, p1

    .local v1, "num":J
    move-object/from16 v3, p3

    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object/from16 v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-wide v10, v1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    move-wide v10, v1

    move-object v12, v0

    iget-boolean v12, v12, Lgnu/text/RomanIntegerFormat;->oldStyle:Z

    if-eqz v12, :cond_0

    const/16 v12, 0x1387

    :goto_0
    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    .line 80
    move-wide v10, v1

    long-to-int v10, v10

    move-object v11, v0

    iget-boolean v11, v11, Lgnu/text/RomanIntegerFormat;->oldStyle:Z

    invoke-static {v10, v11}, Lgnu/text/RomanIntegerFormat;->format(IZ)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 83
    .local v5, "str":Ljava/lang/String;
    :goto_1
    move-object v10, v4

    if-eqz v10, :cond_3

    .line 86
    const-wide/16 v10, 0x1

    move-wide v6, v10

    .line 87
    .local v6, "tval":J
    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v8, v10

    .line 88
    .local v8, "len":I
    move v10, v8

    move v9, v10

    .local v9, "i":I
    :goto_2
    add-int/lit8 v9, v9, -0x1

    move v10, v9

    if-lez v10, :cond_2

    .line 89
    const-wide/16 v10, 0xa

    move-wide v12, v6

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x9

    add-long/2addr v10, v12

    move-wide v6, v10

    goto :goto_2

    .line 79
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "tval":J
    .end local v8    # "len":I
    .end local v9    # "i":I
    :cond_0
    const/16 v12, 0xf9f

    goto :goto_0

    .line 82
    :cond_1
    move-wide v10, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .restart local v5    # "str":Ljava/lang/String;
    goto :goto_1

    .line 91
    .restart local v6    # "tval":J
    .restart local v8    # "len":I
    .restart local v9    # "i":I
    :cond_2
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move v12, v8

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v9, v10

    .line 92
    .local v9, "tbuf":Ljava/lang/StringBuffer;
    new-instance v10, Ljava/text/DecimalFormat;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string/jumbo v12, "0"

    invoke-direct {v11, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-wide v11, v6

    move-object v13, v9

    move-object v14, v4

    invoke-virtual {v10, v11, v12, v13, v14}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 94
    .end local v6    # "tval":J
    .end local v8    # "len":I
    .end local v9    # "tbuf":Ljava/lang/StringBuffer;
    :cond_3
    move-object v10, v3

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 95
    move-object v10, v3

    move-object v0, v10

    .end local v0    # "this":Lgnu/text/RomanIntegerFormat;
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 7

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lgnu/text/RomanIntegerFormat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "status":Ljava/text/ParsePosition;
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "RomanIntegerFormat.parseObject - not implemented"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method
