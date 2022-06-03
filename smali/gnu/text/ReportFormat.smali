.class public abstract Lgnu/text/ReportFormat;
.super Ljava/text/Format;
.source "ReportFormat.java"


# static fields
.field public static final PARAM_FROM_COUNT:I = -0x50000000

.field public static final PARAM_FROM_LIST:I = -0x60000000

.field public static final PARAM_UNSPECIFIED:I = -0x40000000


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/text/ReportFormat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/text/Format;-><init>()V

    return-void
.end method

.method public static format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "fmt":Ljava/text/Format;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move/from16 v2, p2

    .local v2, "start":I
    move-object/from16 v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object/from16 v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v8, v0

    instance-of v8, v8, Lgnu/text/ReportFormat;

    if-eqz v8, :cond_0

    .line 81
    move-object v8, v0

    check-cast v8, Lgnu/text/ReportFormat;

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v8

    move v0, v8

    .line 91
    .end local v0    # "fmt":Ljava/text/Format;
    :goto_0
    return v0

    .line 82
    .restart local v0    # "fmt":Ljava/text/Format;
    :cond_0
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v5, v8

    .line 83
    .local v5, "sbuf":Ljava/lang/StringBuffer;
    move-object v8, v0

    instance-of v8, v8, Ljava/text/MessageFormat;

    if-eqz v8, :cond_1

    .line 84
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v5

    move-object v12, v4

    invoke-static {v8, v9, v10, v11, v12}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result v8

    move v2, v8

    .line 87
    :goto_1
    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    move v6, v8

    .line 88
    .local v6, "slen":I
    move v8, v6

    new-array v8, v8, [C

    move-object v7, v8

    .line 89
    .local v7, "cbuf":[C
    move-object v8, v5

    const/4 v9, 0x0

    move v10, v6

    move-object v11, v7

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 90
    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write([C)V

    .line 91
    move v8, v2

    move v0, v8

    goto :goto_0

    .line 86
    .end local v6    # "slen":I
    .end local v7    # "cbuf":[C
    :cond_1
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v9, v9, v10

    move-object v10, v5

    move-object v11, v4

    invoke-virtual {v8, v9, v10, v11}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v8

    goto :goto_1
.end method

.method public static format(Ljava/text/Format;[Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I
    .locals 13

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "fmt":Ljava/text/Format;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object/from16 v3, p3

    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object/from16 v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v8, v0

    instance-of v8, v8, Lgnu/text/ReportFormat;

    if-eqz v8, :cond_0

    .line 98
    move-object v8, v0

    check-cast v8, Lgnu/text/ReportFormat;

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result v8

    move v0, v8

    .line 119
    .end local v0    # "fmt":Ljava/text/Format;
    :goto_0
    return v0

    .line 101
    .restart local v0    # "fmt":Ljava/text/Format;
    :cond_0
    move-object v8, v0

    instance-of v8, v8, Ljava/text/MessageFormat;

    if-eqz v8, :cond_2

    .line 103
    move-object v8, v1

    array-length v8, v8

    move v9, v2

    sub-int/2addr v8, v9

    move v5, v8

    .line 104
    .local v5, "nargs":I
    move v8, v2

    if-lez v8, :cond_1

    .line 106
    move-object v8, v1

    array-length v8, v8

    move v9, v2

    sub-int/2addr v8, v9

    new-array v8, v8, [Ljava/lang/Object;

    move-object v7, v8

    .line 107
    .local v7, "subarr":[Ljava/lang/Object;
    move-object v8, v1

    move v9, v2

    move-object v10, v7

    const/4 v11, 0x0

    move-object v12, v7

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    move-object v8, v7

    move-object v6, v8

    .line 118
    .end local v7    # "subarr":[Ljava/lang/Object;
    :goto_1
    move-object v8, v0

    move-object v9, v6

    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v8, v9, v10, v11}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 119
    move v8, v2

    move v9, v5

    add-int/2addr v8, v9

    move v0, v8

    goto :goto_0

    .line 111
    :cond_1
    move-object v8, v1

    move-object v6, v8

    .local v6, "arg":[Ljava/lang/Object;
    goto :goto_1

    .line 115
    .end local v5    # "nargs":I
    .end local v6    # "arg":[Ljava/lang/Object;
    :cond_2
    move-object v8, v1

    move v9, v2

    aget-object v8, v8, v9

    move-object v6, v8

    .line 116
    .local v6, "arg":Ljava/lang/Object;
    const/4 v8, 0x1

    move v5, v8

    .restart local v5    # "nargs":I
    goto :goto_1
.end method

.method protected static getParam(IC[Ljava/lang/Object;I)C
    .locals 8

    .prologue
    .line 173
    move v0, p0

    .local v0, "param":I
    move v1, p1

    .local v1, "defaultValue":C
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move v3, p3

    .local v3, "start":I
    move v4, v0

    move v5, v1

    move-object v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lgnu/text/ReportFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v4

    int-to-char v4, v4

    move v0, v4

    .end local v0    # "param":I
    return v0
.end method

.method protected static getParam(II[Ljava/lang/Object;I)I
    .locals 6

    .prologue
    .line 161
    move v0, p0

    .local v0, "param":I
    move v1, p1

    .local v1, "defaultValue":I
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move v3, p3

    .local v3, "start":I
    move v4, v0

    const/high16 v5, -0x50000000

    if-ne v4, v5, :cond_0

    .line 162
    move-object v4, v2

    array-length v4, v4

    move v5, v3

    sub-int/2addr v4, v5

    move v0, v4

    .line 168
    .end local v0    # "param":I
    :goto_0
    return v0

    .line 163
    .restart local v0    # "param":I
    :cond_0
    move v4, v0

    const/high16 v5, -0x60000000

    if-ne v4, v5, :cond_2

    .line 164
    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    move v5, v3

    aget-object v4, v4, v5

    move v5, v1

    invoke-static {v4, v5}, Lgnu/text/ReportFormat;->getParam(Ljava/lang/Object;I)I

    move-result v4

    goto :goto_1

    .line 165
    :cond_2
    move v4, v0

    const/high16 v5, -0x40000000    # -2.0f

    if-ne v4, v5, :cond_3

    .line 166
    move v4, v1

    move v0, v4

    goto :goto_0

    .line 168
    :cond_3
    move v4, v0

    move v0, v4

    goto :goto_0
.end method

.method public static getParam(Ljava/lang/Object;I)I
    .locals 3

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move v1, p1

    .local v1, "defaultValue":I
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_0

    .line 150
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v0, v2

    .line 156
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return v0

    .line 151
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Character;

    if-eqz v2, :cond_1

    .line 152
    move-object v2, v0

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    move v0, v2

    goto :goto_0

    .line 153
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Lgnu/text/Char;

    if-eqz v2, :cond_2

    .line 154
    move-object v2, v0

    check-cast v2, Lgnu/text/Char;

    invoke-virtual {v2}, Lgnu/text/Char;->charValue()C

    move-result v2

    move v0, v2

    goto :goto_0

    .line 156
    :cond_2
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method public static nextArg(I)I
    .locals 3

    .prologue
    .line 25
    move v0, p0

    .local v0, "result":I
    move v1, v0

    const v2, 0xffffff

    and-int/2addr v1, v2

    move v0, v1

    .end local v0    # "result":I
    return v0
.end method

.method public static print(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "dst":Ljava/io/Writer;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    instance-of v2, v2, Ljava/io/PrintWriter;

    if-eqz v2, :cond_0

    .line 127
    move-object v2, v0

    check-cast v2, Ljava/io/PrintWriter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write([C)V

    goto :goto_0
.end method

.method public static print(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v0

    instance-of v2, v2, Lgnu/text/Printable;

    if-eqz v2, :cond_0

    .line 135
    move-object v2, v0

    check-cast v2, Lgnu/text/Printable;

    move-object v3, v1

    invoke-interface {v2, v3}, Lgnu/text/Printable;->print(Lgnu/lists/Consumer;)V

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    move-object v2, v1

    move-object v3, v0

    if-nez v3, :cond_1

    const-string/jumbo v3, "null"

    :goto_1
    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static result(II)I
    .locals 4

    .prologue
    .line 23
    move v0, p0

    .local v0, "resultCode":I
    move v1, p1

    .local v1, "nextArg":I
    move v2, v0

    const/16 v3, 0x18

    shl-int/lit8 v2, v2, 0x18

    move v3, v1

    or-int/2addr v2, v3

    move v0, v2

    .end local v0    # "resultCode":I
    return v0
.end method

.method public static resultCode(I)I
    .locals 3

    .prologue
    .line 26
    move v0, p0

    .local v0, "result":I
    move v1, v0

    const/16 v2, 0x18

    ushr-int/lit8 v1, v1, 0x18

    move v0, v1

    .end local v0    # "result":I
    return v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/text/ReportFormat;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object/from16 v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v6, v1

    instance-of v6, v6, [Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 44
    move-object v6, v0

    move-object v7, v1

    check-cast v7, [Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v6

    move v0, v6

    .line 48
    .end local v0    # "this":Lgnu/text/ReportFormat;
    :goto_0
    return v0

    .line 47
    .restart local v0    # "this":Lgnu/text/ReportFormat;
    :cond_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v5, v6

    .line 48
    .local v5, "args":[Ljava/lang/Object;
    move-object v6, v0

    move-object v7, v5

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public abstract format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I
    .locals 13

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/text/ReportFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object/from16 v3, p3

    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object/from16 v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    new-instance v7, Ljava/io/CharArrayWriter;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/io/CharArrayWriter;-><init>()V

    move-object v5, v7

    .line 64
    .local v5, "wr":Ljava/io/CharArrayWriter;
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v5

    move-object v11, v4

    :try_start_0
    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    move v2, v7

    .line 65
    move v7, v2

    if-gez v7, :cond_0

    .line 66
    move v7, v2

    move v0, v7

    .line 73
    .end local v0    # "this":Lgnu/text/ReportFormat;
    :goto_0
    return v0

    .line 71
    .line 72
    .restart local v0    # "this":Lgnu/text/ReportFormat;
    :cond_0
    move-object v7, v3

    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 73
    move v7, v2

    move v0, v7

    goto :goto_0

    .line 68
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 70
    .local v6, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/Error;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unexpected exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 9

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/text/ReportFormat;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, p3

    .local v3, "fpos":Ljava/text/FieldPosition;
    move-object v4, v0

    move-object v5, v1

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result v4

    .line 55
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lgnu/text/ReportFormat;
    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lgnu/text/ReportFormat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "status":Ljava/text/ParsePosition;
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "ReportFormat.parseObject - not implemented"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method
