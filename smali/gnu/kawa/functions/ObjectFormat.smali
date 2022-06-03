.class public Lgnu/kawa/functions/ObjectFormat;
.super Lgnu/text/ReportFormat;
.source "ObjectFormat.java"


# static fields
.field private static plainFormat:Lgnu/kawa/functions/ObjectFormat;

.field private static readableFormat:Lgnu/kawa/functions/ObjectFormat;


# instance fields
.field maxChars:I

.field readable:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ObjectFormat;
    move v1, p1

    .local v1, "readable":Z
    move-object v2, v0

    invoke-direct {v2}, Lgnu/text/ReportFormat;-><init>()V

    .line 39
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lgnu/kawa/functions/ObjectFormat;->readable:Z

    .line 40
    move-object v2, v0

    const/high16 v3, -0x40000000    # -2.0f

    iput v3, v2, Lgnu/kawa/functions/ObjectFormat;->maxChars:I

    .line 41
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ObjectFormat;
    move v1, p1

    .local v1, "readable":Z
    move v2, p2

    .local v2, "maxChars":I
    move-object v3, v0

    invoke-direct {v3}, Lgnu/text/ReportFormat;-><init>()V

    .line 45
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lgnu/kawa/functions/ObjectFormat;->readable:Z

    .line 46
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/kawa/functions/ObjectFormat;->maxChars:I

    .line 47
    return-void
.end method

.method public static format([Ljava/lang/Object;ILjava/io/Writer;IZ)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    move v1, p1

    .local v1, "start":I
    move-object v2, p2

    .local v2, "dst":Ljava/io/Writer;
    move v3, p3

    .local v3, "maxChars":I
    move v4, p4

    .local v4, "readable":Z
    move v6, v1

    move-object v7, v0

    array-length v7, v7

    if-lt v6, v7, :cond_0

    .line 124
    const-string/jumbo v6, "#<missing format argument>"

    move-object v5, v6

    .line 125
    .local v5, "arg":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    .line 126
    const/4 v6, 0x0

    move v4, v6

    .line 127
    const/4 v6, -0x1

    move v3, v6

    .line 131
    .end local v5    # "arg":Ljava/lang/String;
    :goto_0
    move-object v6, v5

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Lgnu/kawa/functions/ObjectFormat;->format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z

    move-result v6

    .line 132
    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    .end local v0    # "args":[Ljava/lang/Object;
    return v0

    .line 130
    .restart local v0    # "args":[Ljava/lang/Object;
    :cond_0
    move-object v6, v0

    move v7, v1

    aget-object v6, v6, v7

    move-object v5, v6

    .local v5, "arg":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "dst":Ljava/io/Writer;
    move v2, p2

    .local v2, "maxChars":I
    move v3, p3

    .local v3, "readable":Z
    move v7, v2

    if-gez v7, :cond_0

    move-object v7, v1

    instance-of v7, v7, Lgnu/mapping/OutPort;

    if-eqz v7, :cond_0

    .line 87
    move-object v7, v0

    move-object v8, v1

    check-cast v8, Lgnu/mapping/OutPort;

    move v9, v3

    invoke-static {v7, v8, v9}, Lgnu/kawa/functions/ObjectFormat;->print(Ljava/lang/Object;Lgnu/mapping/OutPort;Z)V

    .line 88
    const/4 v7, 0x1

    move v0, v7

    .line 112
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return v0

    .line 90
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_0
    move v7, v2

    if-gez v7, :cond_1

    move-object v7, v1

    instance-of v7, v7, Ljava/io/CharArrayWriter;

    if-eqz v7, :cond_1

    .line 92
    new-instance v7, Lgnu/mapping/OutPort;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    invoke-direct {v8, v9}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    move-object v4, v7

    .line 93
    .local v4, "oport":Lgnu/mapping/OutPort;
    move-object v7, v0

    move-object v8, v4

    move v9, v3

    invoke-static {v7, v8, v9}, Lgnu/kawa/functions/ObjectFormat;->print(Ljava/lang/Object;Lgnu/mapping/OutPort;Z)V

    .line 94
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/mapping/OutPort;->close()V

    .line 95
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 99
    .end local v4    # "oport":Lgnu/mapping/OutPort;
    :cond_1
    new-instance v7, Ljava/io/CharArrayWriter;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/io/CharArrayWriter;-><init>()V

    move-object v4, v7

    .line 100
    .local v4, "wr":Ljava/io/CharArrayWriter;
    new-instance v7, Lgnu/mapping/OutPort;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    invoke-direct {v8, v9}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    move-object v5, v7

    .line 101
    .local v5, "oport":Lgnu/mapping/OutPort;
    move-object v7, v0

    move-object v8, v5

    move v9, v3

    invoke-static {v7, v8, v9}, Lgnu/kawa/functions/ObjectFormat;->print(Ljava/lang/Object;Lgnu/mapping/OutPort;Z)V

    .line 102
    move-object v7, v5

    invoke-virtual {v7}, Lgnu/mapping/OutPort;->close()V

    .line 103
    move-object v7, v4

    invoke-virtual {v7}, Ljava/io/CharArrayWriter;->size()I

    move-result v7

    move v6, v7

    .line 104
    .local v6, "len":I
    move v7, v2

    if-ltz v7, :cond_2

    move v7, v6

    move v8, v2

    if-gt v7, v8, :cond_3

    .line 106
    :cond_2
    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/io/CharArrayWriter;->writeTo(Ljava/io/Writer;)V

    .line 107
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 111
    :cond_3
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v8}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v8

    const/4 v9, 0x0

    move v10, v2

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/Writer;->write([CII)V

    .line 112
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public static getInstance(Z)Lgnu/kawa/functions/ObjectFormat;
    .locals 5

    .prologue
    .line 23
    move v0, p0

    .local v0, "readable":Z
    move v1, v0

    if-eqz v1, :cond_1

    .line 25
    sget-object v1, Lgnu/kawa/functions/ObjectFormat;->readableFormat:Lgnu/kawa/functions/ObjectFormat;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lgnu/kawa/functions/ObjectFormat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lgnu/kawa/functions/ObjectFormat;-><init>(Z)V

    sput-object v1, Lgnu/kawa/functions/ObjectFormat;->readableFormat:Lgnu/kawa/functions/ObjectFormat;

    .line 27
    :cond_0
    sget-object v1, Lgnu/kawa/functions/ObjectFormat;->readableFormat:Lgnu/kawa/functions/ObjectFormat;

    move-object v0, v1

    .line 33
    .end local v0    # "readable":Z
    :goto_0
    return-object v0

    .line 31
    .restart local v0    # "readable":Z
    :cond_1
    sget-object v1, Lgnu/kawa/functions/ObjectFormat;->plainFormat:Lgnu/kawa/functions/ObjectFormat;

    if-nez v1, :cond_2

    .line 32
    new-instance v1, Lgnu/kawa/functions/ObjectFormat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lgnu/kawa/functions/ObjectFormat;-><init>(Z)V

    sput-object v1, Lgnu/kawa/functions/ObjectFormat;->plainFormat:Lgnu/kawa/functions/ObjectFormat;

    .line 33
    :cond_2
    sget-object v1, Lgnu/kawa/functions/ObjectFormat;->plainFormat:Lgnu/kawa/functions/ObjectFormat;

    move-object v0, v1

    goto :goto_0
.end method

.method private static print(Ljava/lang/Object;Lgnu/mapping/OutPort;Z)V
    .locals 10

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move v2, p2

    .local v2, "readable":Z
    move-object v7, v1

    iget-boolean v7, v7, Lgnu/mapping/OutPort;->printReadable:Z

    move v3, v7

    .line 61
    .local v3, "saveReadable":Z
    move-object v7, v1

    iget-object v7, v7, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move-object v4, v7

    .line 64
    .local v4, "saveFormat":Lgnu/lists/AbstractFormat;
    move-object v7, v1

    move v8, v2

    :try_start_0
    iput-boolean v8, v7, Lgnu/mapping/OutPort;->printReadable:Z

    .line 65
    move v7, v2

    if-eqz v7, :cond_0

    sget-object v7, Lkawa/standard/Scheme;->writeFormat:Lgnu/lists/AbstractFormat;

    :goto_0
    move-object v5, v7

    .line 67
    .local v5, "format":Lgnu/lists/AbstractFormat;
    move-object v7, v1

    move-object v8, v5

    iput-object v8, v7, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 68
    move-object v7, v5

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    move-object v7, v1

    move v8, v3

    iput-boolean v8, v7, Lgnu/mapping/OutPort;->printReadable:Z

    .line 73
    move-object v7, v1

    move-object v8, v4

    iput-object v8, v7, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 74
    .line 75
    return-void

    .line 65
    .end local v5    # "format":Lgnu/lists/AbstractFormat;
    :cond_0
    :try_start_1
    sget-object v7, Lkawa/standard/Scheme;->displayFormat:Lgnu/lists/AbstractFormat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v1

    move v8, v3

    iput-boolean v8, v7, Lgnu/mapping/OutPort;->printReadable:Z

    .line 73
    move-object v7, v1

    move-object v8, v4

    iput-object v8, v7, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move-object v7, v6

    throw v7
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ObjectFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v6, v0

    iget v6, v6, Lgnu/kawa/functions/ObjectFormat;->maxChars:I

    const/4 v7, -0x1

    move-object v8, v1

    move v9, v2

    invoke-static {v6, v7, v8, v9}, Lgnu/kawa/functions/ObjectFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v6

    move v5, v6

    .line 53
    .local v5, "maxChars":I
    move-object v6, v0

    iget v6, v6, Lgnu/kawa/functions/ObjectFormat;->maxChars:I

    const/high16 v7, -0x60000000

    if-ne v6, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 54
    :cond_0
    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v5

    move-object v10, v0

    iget-boolean v10, v10, Lgnu/kawa/functions/ObjectFormat;->readable:Z

    invoke-static {v6, v7, v8, v9, v10}, Lgnu/kawa/functions/ObjectFormat;->format([Ljava/lang/Object;ILjava/io/Writer;IZ)I

    move-result v6

    move v0, v6

    .end local v0    # "this":Lgnu/kawa/functions/ObjectFormat;
    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ObjectFormat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "status":Ljava/text/ParsePosition;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "ObjectFormat.parseObject - not implemented"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
