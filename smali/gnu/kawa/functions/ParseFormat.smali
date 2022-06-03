.class public Lgnu/kawa/functions/ParseFormat;
.super Lgnu/mapping/Procedure1;
.source "ParseFormat.java"


# static fields
.field public static final PARAM_FROM_LIST:I = -0x60000000

.field public static final PARAM_UNSPECIFIED:I = -0x40000000

.field public static final SEEN_HASH:I = 0x10

.field public static final SEEN_MINUS:I = 0x1

.field public static final SEEN_PLUS:I = 0x2

.field public static final SEEN_SPACE:I = 0x4

.field public static final SEEN_ZERO:I = 0x8

.field public static final parseFormat:Lgnu/kawa/functions/ParseFormat;


# instance fields
.field emacsStyle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10
    new-instance v0, Lgnu/kawa/functions/ParseFormat;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgnu/kawa/functions/ParseFormat;-><init>(Z)V

    sput-object v0, Lgnu/kawa/functions/ParseFormat;->parseFormat:Lgnu/kawa/functions/ParseFormat;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ParseFormat;
    move v1, p1

    .local v1, "emacsStyle":Z
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/Procedure1;-><init>()V

    .line 12
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    .line 18
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    .line 19
    return-void
.end method

.method public static asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;
    .locals 10

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move v1, p1

    .local v1, "style":C
    move-object v5, v0

    :try_start_0
    instance-of v5, v5, Lgnu/text/ReportFormat;

    if-eqz v5, :cond_0

    .line 235
    move-object v5, v0

    check-cast v5, Lgnu/text/ReportFormat;

    move-object v0, v5

    .line 254
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 236
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_0
    move v5, v1

    const/16 v6, 0x7e

    if-ne v5, v6, :cond_1

    .line 237
    new-instance v5, Lgnu/kawa/functions/LispFormat;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lgnu/kawa/functions/LispFormat;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_0

    .line 241
    :cond_1
    move-object v5, v0

    instance-of v5, v5, Lgnu/lists/FString;

    if-eqz v5, :cond_2

    .line 243
    move-object v5, v0

    check-cast v5, Lgnu/lists/FString;

    move-object v3, v5

    .line 244
    .local v3, "str":Lgnu/lists/FString;
    new-instance v5, Lgnu/mapping/CharArrayInPort;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    iget-object v7, v7, Lgnu/lists/FString;->data:[C

    move-object v8, v3

    iget v8, v8, Lgnu/lists/FString;->size:I

    invoke-direct {v6, v7, v8}, Lgnu/mapping/CharArrayInPort;-><init>([CI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v5

    .line 250
    .end local v3    # "str":Lgnu/lists/FString;
    .local v2, "iport":Lgnu/mapping/InPort;
    :goto_1
    move-object v5, v2

    move v6, v1

    :try_start_1
    invoke-static {v5, v6}, Lgnu/kawa/functions/ParseFormat;->parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 254
    move-object v5, v2

    :try_start_2
    invoke-virtual {v5}, Lgnu/mapping/InPort;->close()V

    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 247
    .end local v2    # "iport":Lgnu/mapping/InPort;
    :cond_2
    new-instance v5, Lgnu/mapping/CharArrayInPort;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .restart local v2    # "iport":Lgnu/mapping/InPort;
    goto :goto_1

    .line 254
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/mapping/InPort;->close()V

    move-object v5, v4

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 258
    .end local v2    # "iport":Lgnu/mapping/InPort;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 260
    .local v2, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error parsing format ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 262
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 264
    .local v2, "ex":Ljava/text/ParseException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid format ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 266
    .end local v2    # "ex":Ljava/text/ParseException;
    :catch_2
    move-exception v5

    move-object v2, v5

    .line 268
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "End while parsing format"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move-object/from16 v2, p0

    .local v2, "fmt":Lgnu/text/LineBufferedReader;
    move/from16 v3, p1

    .local v3, "magic":C
    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    const/16 v21, 0x64

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object/from16 v4, v19

    .line 37
    .local v4, "fbuf":Ljava/lang/StringBuffer;
    const/16 v19, 0x0

    move/from16 v5, v19

    .line 38
    .local v5, "position":I
    new-instance v19, Ljava/util/Vector;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V

    move-object/from16 v6, v19

    .line 42
    .local v6, "formats":Ljava/util/Vector;
    :goto_0
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/text/LineBufferedReader;->read()I

    move-result v19

    move/from16 v8, v19

    .line 43
    .local v8, "ch":I
    move/from16 v19, v8

    if-ltz v19, :cond_1

    .line 45
    move/from16 v19, v8

    move/from16 v20, v3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 48
    move-object/from16 v19, v4

    move/from16 v20, v8

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v19

    .line 49
    goto :goto_0

    .line 51
    :cond_0
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/text/LineBufferedReader;->read()I

    move-result v19

    move/from16 v8, v19

    .line 52
    move/from16 v19, v8

    move/from16 v20, v3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 54
    move-object/from16 v19, v4

    move/from16 v20, v8

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v19

    .line 55
    goto :goto_0

    .line 58
    :cond_1
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    move/from16 v9, v19

    .line 59
    .local v9, "len":I
    move/from16 v19, v9

    if-lez v19, :cond_2

    .line 61
    move/from16 v19, v9

    move/from16 v0, v19

    new-array v0, v0, [C

    move-object/from16 v19, v0

    move-object/from16 v10, v19

    .line 62
    .local v10, "text":[C
    move-object/from16 v19, v4

    const/16 v20, 0x0

    move/from16 v21, v9

    move-object/from16 v22, v10

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 63
    move-object/from16 v19, v4

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 64
    move-object/from16 v19, v6

    new-instance v20, Lgnu/text/LiteralFormat;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v10

    invoke-direct/range {v21 .. v22}, Lgnu/text/LiteralFormat;-><init>([C)V

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 66
    .end local v10    # "text":[C
    :cond_2
    move/from16 v19, v8

    if-gez v19, :cond_3

    .line 67
    .line 213
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v8, v19

    .line 214
    .local v8, "fcount":I
    move/from16 v19, v8

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c

    .line 216
    move-object/from16 v19, v6

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v9, v19

    .line 217
    .local v9, "f":Ljava/lang/Object;
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/text/ReportFormat;

    move/from16 v19, v0

    if-eqz v19, :cond_1c

    .line 218
    move-object/from16 v19, v9

    check-cast v19, Lgnu/text/ReportFormat;

    move-object/from16 v2, v19

    .line 222
    .end local v2    # "fmt":Lgnu/text/LineBufferedReader;
    .end local v9    # "f":Ljava/lang/Object;
    :goto_1
    return-object v2

    .line 69
    .restart local v2    # "fmt":Lgnu/text/LineBufferedReader;
    .local v8, "ch":I
    .local v9, "len":I
    :cond_3
    move/from16 v19, v8

    const/16 v20, 0x24

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 71
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/text/LineBufferedReader;->read()I

    move-result v19

    move/from16 v8, v19

    .line 72
    move/from16 v19, v8

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    const/16 v20, 0xa

    invoke-static/range {v19 .. v20}, Ljava/lang/Character;->digit(CI)I

    move-result v19

    move/from16 v5, v19

    .line 73
    move/from16 v19, v5

    if-gez v19, :cond_5

    .line 74
    new-instance v19, Ljava/text/ParseException;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    const-string/jumbo v21, "missing number (position) after \'%$\'"

    const/16 v22, -0x1

    invoke-direct/range {v20 .. v22}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v19

    .line 82
    .local v10, "digit":I
    :cond_4
    const/16 v19, 0xa

    move/from16 v20, v5

    mul-int v19, v19, v20

    move/from16 v20, v10

    add-int v19, v19, v20

    move/from16 v5, v19

    .line 78
    .end local v10    # "digit":I
    :cond_5
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/text/LineBufferedReader;->read()I

    move-result v19

    move/from16 v8, v19

    .line 79
    move/from16 v19, v8

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    const/16 v20, 0xa

    invoke-static/range {v19 .. v20}, Ljava/lang/Character;->digit(CI)I

    move-result v19

    move/from16 v10, v19

    .line 80
    .restart local v10    # "digit":I
    move/from16 v19, v10

    if-gez v19, :cond_4

    .line 81
    .line 84
    add-int/lit8 v5, v5, -0x1

    .line 87
    .end local v10    # "digit":I
    :cond_6
    const/16 v19, 0x0

    move/from16 v11, v19

    .line 90
    .local v11, "flags":I
    :goto_2
    move/from16 v19, v8

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 98
    .line 101
    const/high16 v19, -0x40000000    # -2.0f

    move/from16 v12, v19

    .line 102
    .local v12, "width":I
    move/from16 v19, v8

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    const/16 v20, 0xa

    invoke-static/range {v19 .. v20}, Ljava/lang/Character;->digit(CI)I

    move-result v19

    move/from16 v10, v19

    .line 103
    .restart local v10    # "digit":I
    move/from16 v19, v10

    if-ltz v19, :cond_a

    .line 105
    move/from16 v19, v10

    move/from16 v12, v19

    .line 108
    :goto_3
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/text/LineBufferedReader;->read()I

    move-result v19

    move/from16 v8, v19

    .line 109
    move/from16 v19, v8

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    const/16 v20, 0xa

    invoke-static/range {v19 .. v20}, Ljava/lang/Character;->digit(CI)I

    move-result v19

    move/from16 v10, v19

    .line 110
    move/from16 v19, v10

    if-gez v19, :cond_9

    .line 111
    .line 118
    :cond_7
    :goto_4
    const/high16 v19, -0x40000000    # -2.0f

    move/from16 v13, v19

    .line 119
    .local v13, "precision":I
    move/from16 v19, v8

    const/16 v20, 0x2e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 121
    move/from16 v19, v8

    const/16 v20, 0x2a

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 122
    const/high16 v19, -0x60000000

    move/from16 v13, v19

    .line 137
    :cond_8
    :goto_5
    move/from16 v19, v8

    sparse-switch v19, :sswitch_data_1

    .line 191
    new-instance v19, Ljava/text/ParseException;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "unknown format character \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move/from16 v22, v8

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, -0x1

    invoke-direct/range {v20 .. v22}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v19

    .line 92
    .end local v10    # "digit":I
    .end local v12    # "width":I
    .end local v13    # "precision":I
    :sswitch_0
    move/from16 v19, v11

    const/16 v20, 0x1

    or-int/lit8 v19, v19, 0x1

    move/from16 v11, v19

    .line 88
    :goto_6
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/text/LineBufferedReader;->read()I

    move-result v19

    move/from16 v8, v19

    goto/16 :goto_2

    .line 93
    :sswitch_1
    move/from16 v19, v11

    const/16 v20, 0x2

    or-int/lit8 v19, v19, 0x2

    move/from16 v11, v19

    goto :goto_6

    .line 94
    :sswitch_2
    move/from16 v19, v11

    const/16 v20, 0x4

    or-int/lit8 v19, v19, 0x4

    move/from16 v11, v19

    goto :goto_6

    .line 95
    :sswitch_3
    move/from16 v19, v11

    const/16 v20, 0x8

    or-int/lit8 v19, v19, 0x8

    move/from16 v11, v19

    goto :goto_6

    .line 96
    :sswitch_4
    move/from16 v19, v11

    const/16 v20, 0x10

    or-int/lit8 v19, v19, 0x10

    move/from16 v11, v19

    goto :goto_6

    .line 112
    .restart local v10    # "digit":I
    .restart local v12    # "width":I
    :cond_9
    const/16 v19, 0xa

    move/from16 v20, v12

    mul-int v19, v19, v20

    move/from16 v20, v10

    add-int v19, v19, v20

    move/from16 v12, v19

    goto/16 :goto_3

    .line 115
    :cond_a
    move/from16 v19, v8

    const/16 v20, 0x2a

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 116
    const/high16 v19, -0x60000000

    move/from16 v12, v19

    goto/16 :goto_4

    .line 125
    .restart local v13    # "precision":I
    :cond_b
    const/16 v19, 0x0

    move/from16 v13, v19

    .line 128
    :goto_7
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/text/LineBufferedReader;->read()I

    move-result v19

    move/from16 v8, v19

    .line 129
    move/from16 v19, v8

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    const/16 v20, 0xa

    invoke-static/range {v19 .. v20}, Ljava/lang/Character;->digit(CI)I

    move-result v19

    move/from16 v10, v19

    .line 130
    move/from16 v19, v10

    if-gez v19, :cond_c

    .line 131
    goto/16 :goto_5

    .line 132
    :cond_c
    const/16 v19, 0xa

    move/from16 v20, v13

    mul-int v19, v19, v20

    move/from16 v20, v10

    add-int v19, v19, v20

    move/from16 v13, v19

    goto :goto_7

    .line 141
    :sswitch_5
    new-instance v19, Lgnu/kawa/functions/ObjectFormat;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move/from16 v21, v8

    const/16 v22, 0x53

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    const/16 v21, 0x1

    :goto_8
    move/from16 v22, v13

    invoke-direct/range {v20 .. v22}, Lgnu/kawa/functions/ObjectFormat;-><init>(ZI)V

    move-object/from16 v7, v19

    .line 193
    .local v7, "format":Ljava/text/Format;
    :goto_9
    move/from16 v19, v12

    if-lez v19, :cond_d

    .line 195
    move/from16 v19, v11

    const/16 v20, 0x8

    and-int/lit8 v19, v19, 0x8

    if-eqz v19, :cond_19

    const/16 v19, 0x30

    :goto_a
    move/from16 v14, v19

    .line 197
    .local v14, "padChar":C
    move/from16 v19, v11

    const/16 v20, 0x1

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_1a

    .line 198
    const/16 v19, 0x64

    move/from16 v15, v19

    .line 203
    .local v15, "where":I
    :goto_b
    new-instance v19, Lgnu/text/PadFormat;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v7

    move/from16 v22, v12

    move/from16 v23, v14

    move/from16 v24, v15

    invoke-direct/range {v20 .. v24}, Lgnu/text/PadFormat;-><init>(Ljava/text/Format;ICI)V

    move-object/from16 v7, v19

    .line 209
    .end local v14    # "padChar":C
    .end local v15    # "where":I
    :cond_d
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 210
    add-int/lit8 v5, v5, 0x1

    .line 211
    goto/16 :goto_0

    .line 141
    .end local v7    # "format":Ljava/text/Format;
    :cond_e
    const/16 v21, 0x0

    goto :goto_8

    .line 150
    :sswitch_6
    const/16 v19, 0x0

    move/from16 v15, v19

    .line 151
    .local v15, "fflags":I
    move/from16 v19, v8

    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    move/from16 v19, v8

    const/16 v20, 0x69

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 152
    :cond_f
    const/16 v19, 0xa

    move/from16 v14, v19

    .line 160
    .local v14, "base":I
    :cond_10
    :goto_c
    const/16 v19, 0x0

    move/from16 v16, v19

    .line 161
    .local v16, "seenColon":Z
    const/16 v19, 0x0

    move/from16 v17, v19

    .line 162
    .local v17, "seenAt":Z
    move/from16 v19, v11

    const/16 v20, 0x9

    and-int/lit8 v19, v19, 0x9

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    const/16 v19, 0x30

    :goto_d
    move/from16 v18, v19

    .line 164
    .local v18, "padChar":C
    move/from16 v19, v11

    const/16 v20, 0x10

    and-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_11

    .line 165
    move/from16 v19, v15

    const/16 v20, 0x8

    or-int/lit8 v19, v19, 0x8

    move/from16 v15, v19

    .line 166
    :cond_11
    move/from16 v19, v11

    const/16 v20, 0x2

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_12

    .line 167
    move/from16 v19, v15

    const/16 v20, 0x2

    or-int/lit8 v19, v19, 0x2

    move/from16 v15, v19

    .line 168
    :cond_12
    move/from16 v19, v11

    const/16 v20, 0x1

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_13

    .line 169
    move/from16 v19, v15

    const/16 v20, 0x10

    or-int/lit8 v19, v19, 0x10

    move/from16 v15, v19

    .line 170
    :cond_13
    move/from16 v19, v11

    const/16 v20, 0x4

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_14

    .line 171
    move/from16 v19, v15

    const/16 v20, 0x4

    or-int/lit8 v19, v19, 0x4

    move/from16 v15, v19

    .line 172
    :cond_14
    move/from16 v19, v13

    const/high16 v20, -0x40000000    # -2.0f

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_18

    .line 174
    move/from16 v19, v11

    const/16 v20, -0x9

    and-int/lit8 v19, v19, -0x9

    move/from16 v11, v19

    .line 175
    move/from16 v19, v15

    const/16 v20, 0x40

    or-int/lit8 v19, v19, 0x40

    move/from16 v15, v19

    .line 176
    move/from16 v19, v14

    move/from16 v20, v13

    const/16 v21, 0x30

    const/high16 v22, -0x40000000    # -2.0f

    const/high16 v23, -0x40000000    # -2.0f

    move/from16 v24, v15

    invoke-static/range {v19 .. v24}, Lgnu/kawa/functions/IntegerFormat;->getInstance(IIIIII)Ljava/text/Format;

    move-result-object v19

    move-object/from16 v7, v19

    .restart local v7    # "format":Ljava/text/Format;
    goto/16 :goto_9

    .line 153
    .end local v7    # "format":Ljava/text/Format;
    .end local v14    # "base":I
    .end local v16    # "seenColon":Z
    .end local v17    # "seenAt":Z
    .end local v18    # "padChar":C
    :cond_15
    move/from16 v19, v8

    const/16 v20, 0x6f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 154
    const/16 v19, 0x8

    move/from16 v14, v19

    .restart local v14    # "base":I
    goto/16 :goto_c

    .line 157
    .end local v14    # "base":I
    :cond_16
    const/16 v19, 0x10

    move/from16 v14, v19

    .line 158
    .restart local v14    # "base":I
    move/from16 v19, v8

    const/16 v20, 0x58

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    const/16 v19, 0x20

    move/from16 v15, v19

    goto/16 :goto_c

    .line 162
    .restart local v16    # "seenColon":Z
    .restart local v17    # "seenAt":Z
    :cond_17
    const/16 v19, 0x20

    goto/16 :goto_d

    .line 181
    .restart local v18    # "padChar":C
    :cond_18
    move/from16 v19, v14

    move/from16 v20, v12

    move/from16 v21, v18

    const/high16 v22, -0x40000000    # -2.0f

    const/high16 v23, -0x40000000    # -2.0f

    move/from16 v24, v15

    invoke-static/range {v19 .. v24}, Lgnu/kawa/functions/IntegerFormat;->getInstance(IIIIII)Ljava/text/Format;

    move-result-object v19

    move-object/from16 v7, v19

    .line 184
    .restart local v7    # "format":Ljava/text/Format;
    goto/16 :goto_9

    .line 188
    .end local v7    # "format":Ljava/text/Format;
    .end local v14    # "base":I
    .end local v15    # "fflags":I
    .end local v16    # "seenColon":Z
    .end local v17    # "seenAt":Z
    .end local v18    # "padChar":C
    :sswitch_7
    new-instance v19, Lgnu/kawa/functions/ObjectFormat;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Lgnu/kawa/functions/ObjectFormat;-><init>(Z)V

    move-object/from16 v7, v19

    .line 189
    .restart local v7    # "format":Ljava/text/Format;
    goto/16 :goto_9

    .line 195
    :cond_19
    const/16 v19, 0x20

    goto/16 :goto_a

    .line 199
    .local v14, "padChar":C
    :cond_1a
    move/from16 v19, v14

    const/16 v20, 0x30

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1b

    .line 200
    const/16 v19, -0x1

    move/from16 v15, v19

    .local v15, "where":I
    goto/16 :goto_b

    .line 202
    .end local v15    # "where":I
    :cond_1b
    const/16 v19, 0x0

    move/from16 v15, v19

    .restart local v15    # "where":I
    goto/16 :goto_b

    .line 220
    .end local v7    # "format":Ljava/text/Format;
    .end local v9    # "len":I
    .end local v10    # "digit":I
    .end local v11    # "flags":I
    .end local v12    # "width":I
    .end local v13    # "precision":I
    .end local v14    # "padChar":C
    .end local v15    # "where":I
    .local v8, "fcount":I
    :cond_1c
    move/from16 v19, v8

    move/from16 v0, v19

    new-array v0, v0, [Ljava/text/Format;

    move-object/from16 v19, v0

    move-object/from16 v9, v19

    .line 221
    .local v9, "farray":[Ljava/text/Format;
    move-object/from16 v19, v6

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 222
    new-instance v19, Lgnu/text/CompoundFormat;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v9

    invoke-direct/range {v20 .. v21}, Lgnu/text/CompoundFormat;-><init>([Ljava/text/Format;)V

    move-object/from16 v2, v19

    goto/16 :goto_1

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x23 -> :sswitch_4
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x30 -> :sswitch_3
    .end sparse-switch

    .line 137
    :sswitch_data_1
    .sparse-switch
        0x53 -> :sswitch_5
        0x58 -> :sswitch_6
        0x64 -> :sswitch_6
        0x65 -> :sswitch_7
        0x66 -> :sswitch_7
        0x67 -> :sswitch_7
        0x69 -> :sswitch_6
        0x6f -> :sswitch_6
        0x73 -> :sswitch_5
        0x78 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ParseFormat;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x3f

    :goto_0
    invoke-static {v2, v3}, Lgnu/kawa/functions/ParseFormat;->asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/ParseFormat;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/functions/ParseFormat;
    :cond_0
    const/16 v3, 0x7e

    goto :goto_0
.end method

.method public parseFormat(Lgnu/text/LineBufferedReader;)Lgnu/text/ReportFormat;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ParseFormat;
    move-object v1, p1

    .local v1, "fmt":Lgnu/text/LineBufferedReader;
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x3f

    :goto_0
    invoke-static {v2, v3}, Lgnu/kawa/functions/ParseFormat;->parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/ParseFormat;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/functions/ParseFormat;
    :cond_0
    const/16 v3, 0x7e

    goto :goto_0
.end method
