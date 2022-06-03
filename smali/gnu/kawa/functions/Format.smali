.class public Lgnu/kawa/functions/Format;
.super Lgnu/mapping/ProcedureN;
.source "Format.java"


# static fields
.field public static final format:Lgnu/kawa/functions/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 11
    new-instance v0, Lgnu/kawa/functions/Format;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/kawa/functions/Format;-><init>()V

    sput-object v0, Lgnu/kawa/functions/Format;->format:Lgnu/kawa/functions/Format;

    .line 13
    sget-object v0, Lgnu/kawa/functions/Format;->format:Lgnu/kawa/functions/Format;

    const-string/jumbo v1, "format"

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/Format;->setName(Ljava/lang/String;)V

    .line 14
    sget-object v0, Lgnu/kawa/functions/Format;->format:Lgnu/kawa/functions/Format;

    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v2, "gnu.kawa.functions.CompileMisc:validateApplyFormat"

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/Format;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Format;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method static drop2([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "vals":[Ljava/lang/Object;
    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x2

    add-int/lit8 v3, v3, -0x2

    move v1, v3

    .line 143
    .local v1, "xlen":I
    move v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 144
    .local v2, "xvals":[Ljava/lang/Object;
    move-object v3, v0

    const/4 v4, 0x2

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "vals":[Ljava/lang/Object;
    return-object v0
.end method

.method public static varargs format([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    move-object v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v1, v2

    .line 106
    .local v1, "port_arg":Ljava/lang/Object;
    move-object v2, v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_0

    .line 108
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v2

    move-object v3, v0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/Format;->format(Ljava/io/Writer;[Ljava/lang/Object;I)V

    .line 109
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v2

    .line 134
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 111
    .restart local v0    # "args":[Ljava/lang/Object;
    :cond_0
    move-object v2, v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    .line 113
    const/4 v2, 0x1

    move-object v3, v0

    invoke-static {v2, v3}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 115
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljava/text/MessageFormat;

    if-nez v2, :cond_2

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    move-object v2, v1

    instance-of v2, v2, Lgnu/text/ReportFormat;

    if-eqz v2, :cond_3

    .line 123
    :cond_2
    const/4 v2, 0x0

    move-object v3, v0

    invoke-static {v2, v3}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 125
    :cond_3
    move-object v2, v1

    instance-of v2, v2, Ljava/io/Writer;

    if-eqz v2, :cond_4

    .line 127
    move-object v2, v1

    check-cast v2, Ljava/io/Writer;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/Format;->format(Ljava/io/Writer;[Ljava/lang/Object;I)V

    .line 128
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v2

    goto :goto_0

    .line 130
    :cond_4
    move-object v2, v1

    instance-of v2, v2, Ljava/io/OutputStream;

    if-eqz v2, :cond_5

    .line 132
    move-object v2, v1

    check-cast v2, Ljava/io/OutputStream;

    move-object v3, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-object v4, v0

    invoke-static {v4}, Lgnu/kawa/functions/Format;->drop2([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/Format;->formatToOutputStream(Ljava/io/OutputStream;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 134
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v2

    goto :goto_0

    .line 137
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "bad first argument to format"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static format(Ljava/io/Writer;[Ljava/lang/Object;I)V
    .locals 10

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "dst":Ljava/io/Writer;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "arg_offset":I
    move-object v5, v1

    move v6, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v5, v5, v6

    move-object v3, v5

    .line 21
    .local v3, "format":Ljava/lang/Object;
    move-object v5, v1

    array-length v5, v5

    move v6, v2

    sub-int/2addr v5, v6

    new-array v5, v5, [Ljava/lang/Object;

    move-object v4, v5

    .line 22
    .local v4, "vals":[Ljava/lang/Object;
    move-object v5, v1

    move v6, v2

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v4

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    move-object v5, v0

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lgnu/kawa/functions/Format;->formatToWriter(Ljava/io/Writer;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static formatToFString(CLjava/lang/Object;[Ljava/lang/Object;)Lgnu/lists/FString;
    .locals 12

    .prologue
    .line 75
    move v0, p0

    .local v0, "style":C
    move-object v1, p1

    .local v1, "fmt":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move-object v6, v1

    move v7, v0

    invoke-static {v6, v7}, Lgnu/kawa/functions/ParseFormat;->asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;

    move-result-object v6

    move-object v3, v6

    .line 76
    .local v3, "rfmt":Lgnu/text/ReportFormat;
    new-instance v6, Lgnu/mapping/CharArrayOutPort;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    move-object v4, v6

    .line 79
    .local v4, "port":Lgnu/mapping/CharArrayOutPort;
    move-object v6, v3

    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v4

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 84
    .line 85
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/mapping/CharArrayOutPort;->toCharArray()[C

    move-result-object v6

    move-object v5, v6

    .line 86
    .local v5, "chars":[C
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 87
    new-instance v6, Lgnu/lists/FString;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v5

    invoke-direct {v7, v8}, Lgnu/lists/FString;-><init>([C)V

    move-object v0, v6

    .end local v0    # "style":C
    return-object v0

    .line 81
    .end local v5    # "chars":[C
    .restart local v0    # "style":C
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 83
    .local v5, "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error in format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static varargs formatToOutputStream(Ljava/io/OutputStream;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "dst":Ljava/io/OutputStream;
    move-object v1, p1

    .local v1, "format":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "vals":[Ljava/lang/Object;
    new-instance v4, Lgnu/mapping/OutPort;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v4

    .line 53
    .local v3, "port":Lgnu/mapping/OutPort;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v3

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    move-object v7, v2

    aput-object v7, v5, v6

    invoke-static {v4}, Lgnu/kawa/functions/Format;->format([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 54
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/mapping/OutPort;->closeThis()V

    .line 55
    return-void
.end method

.method public static varargs formatToString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 59
    move v0, p0

    .local v0, "arg_offset":I
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    new-instance v4, Lgnu/mapping/CharArrayOutPort;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    move-object v2, v4

    .line 60
    .local v2, "port":Lgnu/mapping/CharArrayOutPort;
    move-object v4, v2

    move-object v5, v1

    move v6, v0

    invoke-static {v4, v5, v6}, Lgnu/kawa/functions/Format;->format(Ljava/io/Writer;[Ljava/lang/Object;I)V

    .line 61
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/mapping/CharArrayOutPort;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 62
    .local v3, "str":Ljava/lang/String;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 63
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "arg_offset":I
    return-object v0
.end method

.method public static varargs formatToWriter(Ljava/io/Writer;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "dst":Ljava/io/Writer;
    move-object v1, p1

    .local v1, "format":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "vals":[Ljava/lang/Object;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 29
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v4

    move-object v0, v4

    .line 32
    :cond_0
    move-object v4, v1

    :try_start_0
    instance-of v4, v4, Ljava/text/MessageFormat;

    if-eqz v4, :cond_1

    .line 34
    move-object v4, v1

    check-cast v4, Ljava/text/MessageFormat;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 35
    .local v3, "out":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 36
    .line 47
    .line 48
    .end local v3    # "out":Ljava/lang/String;
    :goto_0
    return-void

    .line 39
    :cond_1
    move-object v4, v1

    instance-of v4, v4, Lgnu/text/ReportFormat;

    if-nez v4, :cond_2

    .line 40
    sget-object v4, Lgnu/kawa/functions/ParseFormat;->parseFormat:Lgnu/kawa/functions/ParseFormat;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/kawa/functions/ParseFormat;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 41
    :cond_2
    move-object v4, v1

    check-cast v4, Lgnu/text/ReportFormat;

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 44
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 46
    .local v3, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Format;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Lgnu/kawa/functions/Format;->format([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/Format;
    return-object v0
.end method
