.class public Lgnu/text/SourceMessages;
.super Ljava/lang/Object;
.source "SourceMessages.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# static fields
.field public static debugStackTraceOnError:Z

.field public static debugStackTraceOnWarning:Z


# instance fields
.field current_column:I

.field current_filename:Ljava/lang/String;

.field current_line:I

.field private errorCount:I

.field firstError:Lgnu/text/SourceError;

.field lastError:Lgnu/text/SourceError;

.field lastPrevFilename:Lgnu/text/SourceError;

.field locator:Lgnu/text/SourceLocator;

.field public sortMessages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/text/SourceMessages;->debugStackTraceOnWarning:Z

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/text/SourceMessages;->debugStackTraceOnError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/SourceMessages;->errorCount:I

    .line 58
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/text/SourceMessages;->lastPrevFilename:Lgnu/text/SourceError;

    return-void
.end method


# virtual methods
.method public checkErrors(Ljava/io/PrintStream;I)Z
    .locals 10

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, p1

    .local v1, "out":Ljava/io/PrintStream;
    move v2, p2

    .local v2, "max":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    if-eqz v4, :cond_1

    .line 248
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintStream;I)V

    .line 249
    move-object v4, v0

    move-object v5, v0

    const/4 v6, 0x0

    move-object v8, v5

    move-object v9, v6

    move-object v5, v9

    move-object v6, v8

    move-object v7, v9

    iput-object v7, v6, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iput-object v5, v4, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    .line 250
    move-object v4, v0

    iget v4, v4, Lgnu/text/SourceMessages;->errorCount:I

    move v3, v4

    .line 251
    .local v3, "saveCount":I
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lgnu/text/SourceMessages;->errorCount:I

    .line 252
    move v4, v3

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 254
    .end local v0    # "this":Lgnu/text/SourceMessages;
    .end local v3    # "saveCount":I
    :goto_1
    return v0

    .line 252
    .restart local v0    # "this":Lgnu/text/SourceMessages;
    .restart local v3    # "saveCount":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 254
    .end local v3    # "saveCount":I
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public checkErrors(Ljava/io/PrintWriter;I)Z
    .locals 10

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, p1

    .local v1, "out":Ljava/io/PrintWriter;
    move v2, p2

    .local v2, "max":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    if-eqz v4, :cond_1

    .line 232
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 233
    move-object v4, v0

    move-object v5, v0

    const/4 v6, 0x0

    move-object v8, v5

    move-object v9, v6

    move-object v5, v9

    move-object v6, v8

    move-object v7, v9

    iput-object v7, v6, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iput-object v5, v4, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    .line 234
    move-object v4, v0

    iget v4, v4, Lgnu/text/SourceMessages;->errorCount:I

    move v3, v4

    .line 235
    .local v3, "saveCount":I
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lgnu/text/SourceMessages;->errorCount:I

    .line 236
    move v4, v3

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 238
    .end local v0    # "this":Lgnu/text/SourceMessages;
    .end local v3    # "saveCount":I
    :goto_1
    return v0

    .line 236
    .restart local v0    # "this":Lgnu/text/SourceMessages;
    .restart local v3    # "saveCount":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 238
    .end local v3    # "saveCount":I
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public clear()V
    .locals 7

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iput-object v2, v1, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    .line 54
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/SourceMessages;->errorCount:I

    .line 55
    return-void
.end method

.method public clearErrors()V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/SourceMessages;->errorCount:I

    return-void
.end method

.method public error(CLgnu/text/SourceLocator;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move v1, p1

    .local v1, "severity":C
    move-object v2, p2

    .local v2, "location":Lgnu/text/SourceLocator;
    move-object v3, p3

    .local v3, "message":Ljava/lang/String;
    move-object v4, v0

    new-instance v5, Lgnu/text/SourceError;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lgnu/text/SourceError;-><init>(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 140
    return-void
.end method

.method public error(CLgnu/text/SourceLocator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move v1, p1

    .local v1, "severity":C
    move-object v2, p2

    .local v2, "location":Lgnu/text/SourceLocator;
    move-object v3, p3

    .local v3, "message":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "code":Ljava/lang/String;
    new-instance v6, Lgnu/text/SourceError;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Lgnu/text/SourceError;-><init>(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    move-object v5, v6

    .line 155
    .local v5, "err":Lgnu/text/SourceError;
    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 156
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 157
    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 12

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move v1, p1

    .local v1, "severity":C
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, v0

    new-instance v4, Lgnu/text/SourceError;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    move-object v8, v0

    iget v8, v8, Lgnu/text/SourceMessages;->current_line:I

    move-object v9, v0

    iget v9, v9, Lgnu/text/SourceMessages;->current_column:I

    move-object v10, v2

    invoke-direct/range {v5 .. v10}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 168
    return-void
.end method

.method public error(CLjava/lang/String;IILjava/lang/String;)V
    .locals 15

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move/from16 v1, p1

    .local v1, "severity":C
    move-object/from16 v2, p2

    .local v2, "filename":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "line":I
    move/from16 v4, p4

    .local v4, "column":I
    move-object/from16 v5, p5

    .local v5, "message":Ljava/lang/String;
    move-object v6, v0

    new-instance v7, Lgnu/text/SourceError;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v5

    invoke-direct/range {v8 .. v13}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v7}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 135
    return-void
.end method

.method public error(CLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 145
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move/from16 v1, p1

    .local v1, "severity":C
    move-object/from16 v2, p2

    .local v2, "filename":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "line":I
    move/from16 v4, p4

    .local v4, "column":I
    move-object/from16 v5, p5

    .local v5, "message":Ljava/lang/String;
    move-object/from16 v6, p6

    .local v6, "code":Ljava/lang/String;
    new-instance v8, Lgnu/text/SourceError;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move v10, v1

    move-object v11, v2

    move v12, v3

    move v13, v4

    move-object v14, v5

    invoke-direct/range {v9 .. v14}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    move-object v7, v8

    .line 147
    .local v7, "err":Lgnu/text/SourceError;
    move-object v8, v7

    move-object v9, v6

    iput-object v9, v8, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 148
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 149
    return-void
.end method

.method public error(CLjava/lang/String;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move v1, p1

    .local v1, "severity":C
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "code":Ljava/lang/String;
    new-instance v5, Lgnu/text/SourceError;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    move-object v9, v0

    iget v9, v9, Lgnu/text/SourceMessages;->current_line:I

    move-object v10, v0

    iget v10, v10, Lgnu/text/SourceMessages;->current_column:I

    move-object v11, v2

    invoke-direct/range {v6 .. v11}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    move-object v4, v5

    .line 182
    .local v4, "err":Lgnu/text/SourceError;
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 183
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 184
    return-void
.end method

.method public error(CLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 13

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move v1, p1

    .local v1, "severity":C
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "exception":Ljava/lang/Throwable;
    new-instance v5, Lgnu/text/SourceError;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    move-object v9, v0

    iget v9, v9, Lgnu/text/SourceMessages;->current_line:I

    move-object v10, v0

    iget v10, v10, Lgnu/text/SourceMessages;->current_column:I

    move-object v11, v2

    invoke-direct/range {v6 .. v11}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    move-object v4, v5

    .line 174
    .local v4, "err":Lgnu/text/SourceError;
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/text/SourceError;->fakeException:Ljava/lang/Throwable;

    .line 175
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 176
    return-void
.end method

.method public error(Lgnu/text/SourceError;)V
    .locals 8

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, p1

    .local v1, "error":Lgnu/text/SourceError;
    move-object v4, v1

    iget-char v4, v4, Lgnu/text/SourceError;->severity:C

    const/16 v5, 0x66

    if-ne v4, v5, :cond_7

    .line 67
    move-object v4, v0

    const/16 v5, 0x3e8

    iput v5, v4, Lgnu/text/SourceMessages;->errorCount:I

    .line 70
    :cond_0
    :goto_0
    sget-boolean v4, Lgnu/text/SourceMessages;->debugStackTraceOnError:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-char v4, v4, Lgnu/text/SourceError;->severity:C

    const/16 v5, 0x65

    if-eq v4, v5, :cond_2

    move-object v4, v1

    iget-char v4, v4, Lgnu/text/SourceError;->severity:C

    const/16 v5, 0x66

    if-eq v4, v5, :cond_2

    :cond_1
    sget-boolean v4, Lgnu/text/SourceMessages;->debugStackTraceOnWarning:Z

    if-eqz v4, :cond_3

    move-object v4, v1

    iget-char v4, v4, Lgnu/text/SourceError;->severity:C

    const/16 v5, 0x77

    if-ne v4, v5, :cond_3

    .line 74
    :cond_2
    move-object v4, v1

    new-instance v5, Ljava/lang/Throwable;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    iput-object v5, v4, Lgnu/text/SourceError;->fakeException:Ljava/lang/Throwable;

    .line 78
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iget-object v4, v4, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iget-object v4, v4, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    move-object v5, v1

    iget-object v5, v5, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 80
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iput-object v5, v4, Lgnu/text/SourceMessages;->lastPrevFilename:Lgnu/text/SourceError;

    .line 81
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SourceMessages;->lastPrevFilename:Lgnu/text/SourceError;

    move-object v2, v4

    .line 82
    .local v2, "prev":Lgnu/text/SourceError;
    move-object v4, v0

    iget-boolean v4, v4, Lgnu/text/SourceMessages;->sortMessages:Z

    if-eqz v4, :cond_5

    move-object v4, v1

    iget-char v4, v4, Lgnu/text/SourceError;->severity:C

    const/16 v5, 0x66

    if-ne v4, v5, :cond_9

    .line 83
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    move-object v2, v4

    .line 109
    :goto_1
    move-object v4, v2

    if-nez v4, :cond_d

    .line 111
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    iput-object v5, v4, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    .line 112
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    .line 119
    :goto_2
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    if-ne v4, v5, :cond_6

    .line 120
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    .line 121
    :cond_6
    return-void

    .line 68
    .end local v2    # "prev":Lgnu/text/SourceError;
    :cond_7
    move-object v4, v1

    iget-char v4, v4, Lgnu/text/SourceError;->severity:C

    const/16 v5, 0x77

    if-eq v4, v5, :cond_0

    .line 69
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lgnu/text/SourceMessages;->errorCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/text/SourceMessages;->errorCount:I

    goto/16 :goto_0

    .line 106
    .restart local v2    # "prev":Lgnu/text/SourceError;
    .local v3, "next":Lgnu/text/SourceError;
    :cond_8
    move-object v4, v3

    move-object v2, v4

    .line 89
    .end local v3    # "next":Lgnu/text/SourceError;
    :cond_9
    move-object v4, v2

    if-nez v4, :cond_a

    .line 90
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    move-object v3, v4

    .line 93
    .restart local v3    # "next":Lgnu/text/SourceError;
    :goto_3
    move-object v4, v3

    if-nez v4, :cond_b

    .line 94
    goto :goto_1

    .line 92
    .end local v3    # "next":Lgnu/text/SourceError;
    :cond_a
    move-object v4, v2

    iget-object v4, v4, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    move-object v3, v4

    .restart local v3    # "next":Lgnu/text/SourceError;
    goto :goto_3

    .line 95
    :cond_b
    move-object v4, v1

    iget v4, v4, Lgnu/text/SourceError;->line:I

    if-eqz v4, :cond_8

    move-object v4, v3

    iget v4, v4, Lgnu/text/SourceError;->line:I

    if-eqz v4, :cond_8

    .line 97
    move-object v4, v1

    iget v4, v4, Lgnu/text/SourceError;->line:I

    move-object v5, v3

    iget v5, v5, Lgnu/text/SourceError;->line:I

    if-ge v4, v5, :cond_c

    .line 98
    goto :goto_1

    .line 99
    :cond_c
    move-object v4, v1

    iget v4, v4, Lgnu/text/SourceError;->line:I

    move-object v5, v3

    iget v5, v5, Lgnu/text/SourceError;->line:I

    if-ne v4, v5, :cond_8

    move-object v4, v1

    iget v4, v4, Lgnu/text/SourceError;->column:I

    if-eqz v4, :cond_8

    move-object v4, v3

    iget v4, v4, Lgnu/text/SourceError;->column:I

    if-eqz v4, :cond_8

    .line 102
    move-object v4, v1

    iget v4, v4, Lgnu/text/SourceError;->column:I

    move-object v5, v3

    iget v5, v5, Lgnu/text/SourceError;->column:I

    if-ge v4, v5, :cond_8

    .line 103
    goto :goto_1

    .line 116
    .end local v3    # "next":Lgnu/text/SourceError;
    :cond_d
    move-object v4, v1

    move-object v5, v2

    iget-object v5, v5, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    iput-object v5, v4, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    .line 117
    move-object v4, v2

    move-object v5, v1

    iput-object v5, v4, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    goto :goto_2
.end method

.method public final getColumnNumber()I
    .locals 2

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/text/SourceMessages;->current_column:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/text/SourceMessages;
    return v0

    .restart local v0    # "this":Lgnu/text/SourceMessages;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    invoke-interface {v1}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v1

    goto :goto_0
.end method

.method public getErrorCount()I
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, v0

    iget v1, v1, Lgnu/text/SourceMessages;->errorCount:I

    move v0, v1

    .end local v0    # "this":Lgnu/text/SourceMessages;
    return v0
.end method

.method public getErrors()Lgnu/text/SourceError;
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/SourceMessages;
    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/SourceMessages;
    return-object v0
.end method

.method public final getLineNumber()I
    .locals 2

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/text/SourceMessages;->current_line:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/text/SourceMessages;
    return v0

    .restart local v0    # "this":Lgnu/text/SourceMessages;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    invoke-interface {v1}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v1

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/text/SourceMessages;
    return-object v0

    .restart local v0    # "this":Lgnu/text/SourceMessages;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    invoke-interface {v1}, Lgnu/text/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/text/SourceMessages;
    return-object v0

    .restart local v0    # "this":Lgnu/text/SourceMessages;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    invoke-interface {v1}, Lgnu/text/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isStableSourceLocation()Z
    .locals 2

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/text/SourceMessages;
    return v0
.end method

.method public printAll(Ljava/io/PrintStream;I)V
    .locals 6

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, p1

    .local v1, "out":Ljava/io/PrintStream;
    move v2, p2

    .local v2, "max":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    move-object v3, v4

    .line 190
    .local v3, "err":Lgnu/text/SourceError;
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    if-ltz v4, :cond_0

    .line 192
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/text/SourceError;->println(Ljava/io/PrintStream;)V

    .line 190
    move-object v4, v3

    iget-object v4, v4, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    move-object v3, v4

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method public printAll(Ljava/io/PrintWriter;I)V
    .locals 6

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, p1

    .local v1, "out":Ljava/io/PrintWriter;
    move v2, p2

    .local v2, "max":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    move-object v3, v4

    .line 200
    .local v3, "err":Lgnu/text/SourceError;
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    if-ltz v4, :cond_0

    .line 202
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/text/SourceError;->println(Ljava/io/PrintWriter;)V

    .line 200
    move-object v4, v3

    iget-object v4, v4, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    move-object v3, v4

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method public seenErrors()Z
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, v0

    iget v1, v1, Lgnu/text/SourceMessages;->errorCount:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/text/SourceMessages;
    return v0

    .restart local v0    # "this":Lgnu/text/SourceMessages;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public seenErrorsOrWarnings()Z
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/text/SourceMessages;
    return v0

    .restart local v0    # "this":Lgnu/text/SourceMessages;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setColumn(I)V
    .locals 4

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move v1, p1

    .local v1, "column":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/text/SourceMessages;->current_column:I

    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    return-void
.end method

.method public setLine(I)V
    .locals 4

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move v1, p1

    .local v1, "line":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/text/SourceMessages;->current_line:I

    return-void
.end method

.method public setLine(Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move v2, p2

    .local v2, "line":I
    move v3, p3

    .local v3, "column":I
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    .line 316
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/text/SourceMessages;->current_line:I

    .line 317
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/text/SourceMessages;->current_column:I

    .line 318
    return-void
.end method

.method public final setLocation(Lgnu/text/SourceLocator;)V
    .locals 4

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, p1

    .local v1, "locator":Lgnu/text/SourceLocator;
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    .line 274
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v3

    iput v3, v2, Lgnu/text/SourceMessages;->current_line:I

    .line 275
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v3

    iput v3, v2, Lgnu/text/SourceMessages;->current_column:I

    .line 276
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public final setSourceLocator(Lgnu/text/SourceLocator;)V
    .locals 5

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, p1

    .local v1, "locator":Lgnu/text/SourceLocator;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    iput-object v3, v2, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    .line 261
    return-void

    .line 260
    :cond_0
    move-object v3, v1

    goto :goto_0
.end method

.method public final swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;
    .locals 5

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move-object v1, p1

    .local v1, "locator":Lgnu/text/SourceLocator;
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    move-object v2, v3

    .line 266
    .local v2, "save":Lgnu/text/SourceLocator;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    .line 267
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/text/SourceMessages;
    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lgnu/text/SourceMessages;
    move v1, p1

    .local v1, "max":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    if-nez v4, :cond_0

    .line 213
    const/4 v4, 0x0

    move-object v0, v4

    .line 221
    .end local v0    # "this":Lgnu/text/SourceMessages;
    :goto_0
    return-object v0

    .line 214
    .restart local v0    # "this":Lgnu/text/SourceMessages;
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v4

    .line 215
    .local v2, "buffer":Ljava/lang/StringBuffer;
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    move-object v3, v4

    .line 216
    .local v3, "err":Lgnu/text/SourceError;
    :goto_1
    move-object v4, v3

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    if-ltz v4, :cond_1

    .line 218
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 219
    move-object v4, v2

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 216
    move-object v4, v3

    iget-object v4, v4, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    move-object v3, v4

    goto :goto_1

    .line 221
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method
