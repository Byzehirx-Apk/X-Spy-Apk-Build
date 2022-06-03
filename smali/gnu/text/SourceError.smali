.class public Lgnu/text/SourceError;
.super Ljava/lang/Object;
.source "SourceError.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# instance fields
.field public code:Ljava/lang/String;

.field public column:I

.field public fakeException:Ljava/lang/Throwable;

.field public filename:Ljava/lang/String;

.field public line:I

.field public message:Ljava/lang/String;

.field public next:Lgnu/text/SourceError;

.field public severity:C


# direct methods
.method public constructor <init>(CLgnu/text/SourceLocator;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceError;
    move v1, p1

    .local v1, "severity":C
    move-object v2, p2

    .local v2, "location":Lgnu/text/SourceLocator;
    move-object v3, p3

    .local v3, "message":Ljava/lang/String;
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-interface {v6}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    invoke-interface {v7}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v7

    move-object v8, v2

    invoke-interface {v8}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v8

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(CLjava/lang/String;IILjava/lang/String;)V
    .locals 8

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceError;
    move v1, p1

    .local v1, "severity":C
    move-object v2, p2

    .local v2, "filename":Ljava/lang/String;
    move v3, p3

    .local v3, "line":I
    move v4, p4

    .local v4, "column":I
    move-object v5, p5

    .local v5, "message":Ljava/lang/String;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v6, v0

    move v7, v1

    iput-char v7, v6, Lgnu/text/SourceError;->severity:C

    .line 46
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    .line 47
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lgnu/text/SourceError;->line:I

    .line 48
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lgnu/text/SourceError;->column:I

    .line 49
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lgnu/text/SourceError;->message:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Lgnu/text/LineBufferedReader;CLjava/lang/String;)V
    .locals 11

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceError;
    move-object v1, p1

    .local v1, "port":Lgnu/text/LineBufferedReader;
    move v2, p2

    .local v2, "severity":C
    move-object v3, p3

    .local v3, "message":Ljava/lang/String;
    move-object v4, v0

    move v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v8

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 65
    move-object v4, v0

    iget v4, v4, Lgnu/text/SourceError;->column:I

    if-ltz v4, :cond_0

    .line 66
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lgnu/text/SourceError;->column:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/text/SourceError;->column:I

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceError;
    move-object v1, v0

    iget v1, v1, Lgnu/text/SourceError;->column:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/text/SourceError;
    return v0

    .restart local v0    # "this":Lgnu/text/SourceError;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/text/SourceError;->column:I

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceError;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/SourceError;
    return-object v0
.end method

.method public getLineNumber()I
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceError;
    move-object v1, v0

    iget v1, v1, Lgnu/text/SourceError;->line:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/text/SourceError;
    return v0

    .restart local v0    # "this":Lgnu/text/SourceError;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/text/SourceError;->line:I

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceError;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/SourceError;
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceError;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/SourceError;
    return-object v0
.end method

.method public isStableSourceLocation()Z
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceError;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/text/SourceError;
    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceError;
    move-object v1, p1

    .local v1, "out":Ljava/io/PrintWriter;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public println(Ljava/io/PrintStream;)V
    .locals 8

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceError;
    move-object v1, p1

    .local v1, "out":Ljava/io/PrintStream;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/text/SourceError;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 144
    .local v2, "line":Ljava/lang/String;
    :goto_0
    move-object v4, v2

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move v3, v4

    .line 145
    .local v3, "nl":I
    move v4, v3

    if-gez v4, :cond_0

    .line 146
    .line 150
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    return-void

    .line 147
    :cond_0
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 149
    goto :goto_0
.end method

.method public println(Ljava/io/PrintWriter;)V
    .locals 8

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceError;
    move-object v1, p1

    .local v1, "out":Ljava/io/PrintWriter;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/text/SourceError;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 130
    .local v2, "line":Ljava/lang/String;
    :goto_0
    move-object v4, v2

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move v3, v4

    .line 131
    .local v3, "nl":I
    move v4, v3

    if-gez v4, :cond_0

    .line 132
    .line 136
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    return-void

    .line 133
    :cond_0
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 135
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceError;
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v4

    .line 75
    .local v1, "buffer":Ljava/lang/StringBuffer;
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string/jumbo v5, "<unknown>"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 76
    move-object v4, v0

    iget v4, v4, Lgnu/text/SourceError;->line:I

    if-gtz v4, :cond_0

    move-object v4, v0

    iget v4, v4, Lgnu/text/SourceError;->column:I

    if-lez v4, :cond_1

    .line 78
    :cond_0
    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 79
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/text/SourceError;->line:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 80
    move-object v4, v0

    iget v4, v4, Lgnu/text/SourceError;->column:I

    if-lez v4, :cond_1

    .line 82
    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 83
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/text/SourceError;->column:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 86
    :cond_1
    move-object v4, v1

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 87
    move-object v4, v0

    iget-char v4, v4, Lgnu/text/SourceError;->severity:C

    const/16 v5, 0x77

    if-ne v4, v5, :cond_2

    .line 88
    move-object v4, v1

    const-string/jumbo v5, "warning - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 89
    :cond_2
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/text/SourceError;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 90
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SourceError;->code:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 92
    move-object v4, v1

    const-string/jumbo v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 93
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/text/SourceError;->code:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 94
    move-object v4, v1

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 96
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SourceError;->fakeException:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    .line 101
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SourceError;->fakeException:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    move-object v2, v4

    .line 102
    .local v2, "stackTrace":[Ljava/lang/StackTraceElement;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 104
    move-object v4, v1

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 105
    move-object v4, v1

    const-string/jumbo v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 106
    move-object v4, v1

    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 75
    .end local v2    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v3    # "i":I
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    goto/16 :goto_0

    .line 117
    :cond_5
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/text/SourceError;
    return-object v0
.end method
