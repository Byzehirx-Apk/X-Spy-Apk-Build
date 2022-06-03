.class public Lgnu/text/CompoundFormat;
.super Lgnu/text/ReportFormat;
.source "CompoundFormat.java"


# instance fields
.field protected formats:[Ljava/text/Format;

.field protected length:I


# direct methods
.method public constructor <init>([Ljava/text/Format;)V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/text/CompoundFormat;
    move-object v1, p1

    .local v1, "formats":[Ljava/text/Format;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/text/ReportFormat;-><init>()V

    .line 19
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    .line 20
    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    iput v3, v2, Lgnu/text/CompoundFormat;->length:I

    .line 21
    return-void
.end method

.method public constructor <init>([Ljava/text/Format;I)V
    .locals 5

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/text/CompoundFormat;
    move-object v1, p1

    .local v1, "formats":[Ljava/text/Format;
    move v2, p2

    .local v2, "length":I
    move-object v3, v0

    invoke-direct {v3}, Lgnu/text/ReportFormat;-><init>()V

    .line 13
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    .line 14
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/text/CompoundFormat;->length:I

    .line 15
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/text/CompoundFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move/from16 v2, p2

    .local v2, "start":I
    move-object/from16 v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object/from16 v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    move-object v9, v0

    iget v9, v9, Lgnu/text/CompoundFormat;->length:I

    if-ge v8, v9, :cond_3

    .line 28
    move-object v8, v0

    iget-object v8, v8, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 29
    .local v6, "fmt":Ljava/text/Format;
    move-object v8, v6

    instance-of v8, v8, Lgnu/text/ReportFormat;

    if-eqz v8, :cond_0

    .line 31
    move-object v8, v6

    check-cast v8, Lgnu/text/ReportFormat;

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v8

    move v2, v8

    .line 32
    move v8, v2

    if-gez v8, :cond_1

    .line 33
    move v8, v2

    move v0, v8

    .line 45
    .end local v0    # "this":Lgnu/text/CompoundFormat;
    .end local v6    # "fmt":Ljava/text/Format;
    :goto_1
    return v0

    .line 35
    .restart local v0    # "this":Lgnu/text/CompoundFormat;
    .restart local v6    # "fmt":Ljava/text/Format;
    :cond_0
    move v8, v2

    move-object v9, v1

    array-length v9, v9

    if-lt v8, v9, :cond_2

    .line 36
    move-object v8, v3

    const-string/jumbo v9, "#<missing format argument>"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 26
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 39
    :cond_2
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v8

    .line 40
    .local v7, "sbuf":Ljava/lang/StringBuffer;
    move-object v8, v6

    move-object v9, v1

    move v10, v2

    aget-object v9, v9, v10

    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v8, v9, v10, v11}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 41
    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 45
    .end local v6    # "fmt":Ljava/text/Format;
    .end local v7    # "sbuf":Ljava/lang/StringBuffer;
    :cond_3
    move v8, v2

    move v0, v8

    goto :goto_1
.end method

.method public final format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I
    .locals 12

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/text/CompoundFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object v3, p3

    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object/from16 v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move-object v8, v0

    iget v8, v8, Lgnu/text/CompoundFormat;->length:I

    if-ge v7, v8, :cond_2

    .line 53
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 54
    .local v6, "fmt":Ljava/text/Format;
    move-object v7, v6

    instance-of v7, v7, Lgnu/text/ReportFormat;

    if-eqz v7, :cond_0

    .line 56
    move-object v7, v6

    check-cast v7, Lgnu/text/ReportFormat;

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result v7

    move v2, v7

    .line 57
    move v7, v2

    if-gez v7, :cond_1

    .line 58
    move v7, v2

    move v0, v7

    .line 66
    .end local v0    # "this":Lgnu/text/CompoundFormat;
    .end local v6    # "fmt":Ljava/text/Format;
    :goto_1
    return v0

    .line 62
    .restart local v0    # "this":Lgnu/text/CompoundFormat;
    .restart local v6    # "fmt":Ljava/text/Format;
    :cond_0
    move-object v7, v6

    move-object v8, v1

    move v9, v2

    aget-object v8, v8, v9

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v7, v8, v9, v10}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 51
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 66
    .end local v6    # "fmt":Ljava/text/Format;
    :cond_2
    move v7, v2

    move v0, v7

    goto :goto_1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lgnu/text/CompoundFormat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "status":Ljava/text/ParsePosition;
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "CompoundFormat.parseObject - not implemented"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lgnu/text/CompoundFormat;
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v3

    .line 77
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, v1

    const-string/jumbo v4, "CompoundFormat["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 78
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/text/CompoundFormat;->length:I

    if-ge v3, v4, :cond_1

    .line 80
    move v3, v2

    if-lez v3, :cond_0

    .line 81
    move-object v3, v1

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 82
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 85
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/text/CompoundFormat;
    return-object v0
.end method
