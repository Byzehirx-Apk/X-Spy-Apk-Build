.class public Lgnu/text/CaseConvertFormat;
.super Lgnu/text/ReportFormat;
.source "CaseConvertFormat.java"


# instance fields
.field baseFormat:Ljava/text/Format;

.field code:C


# direct methods
.method public constructor <init>(Ljava/text/Format;C)V
    .locals 5

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/text/CaseConvertFormat;
    move-object v1, p1

    .local v1, "baseFormat":Ljava/text/Format;
    move v2, p2

    .local v2, "action":C
    move-object v3, v0

    invoke-direct {v3}, Lgnu/text/ReportFormat;-><init>()V

    .line 18
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/text/CaseConvertFormat;->baseFormat:Ljava/text/Format;

    .line 19
    move-object v3, v0

    move v4, v2

    iput-char v4, v3, Lgnu/text/CaseConvertFormat;->code:C

    .line 20
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/text/CaseConvertFormat;
    move-object/from16 v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move/from16 v2, p2

    .local v2, "start":I
    move-object/from16 v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object/from16 v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/16 v13, 0x64

    invoke-direct {v12, v13}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v5, v11

    .line 29
    .local v5, "sbuf":Ljava/lang/StringBuffer;
    move-object v11, v0

    iget-object v11, v11, Lgnu/text/CaseConvertFormat;->baseFormat:Ljava/text/Format;

    move-object v12, v1

    move v13, v2

    move-object v14, v5

    move-object v15, v4

    invoke-static {v11, v12, v13, v14, v15}, Lgnu/text/CaseConvertFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result v11

    move v6, v11

    .line 30
    .local v6, "result":I
    move-object v11, v5

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    move v7, v11

    .line 31
    .local v7, "len":I
    const/16 v11, 0x20

    move v8, v11

    .line 32
    .local v8, "prev":C
    const/4 v11, 0x0

    move v9, v11

    .local v9, "i":I
    :goto_0
    move v11, v9

    move v12, v7

    if-ge v11, v12, :cond_4

    .line 34
    move-object v11, v5

    move v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    move v10, v11

    .line 35
    .local v10, "ch":C
    move-object v11, v0

    iget-char v11, v11, Lgnu/text/CaseConvertFormat;->code:C

    const/16 v12, 0x55

    if-ne v11, v12, :cond_0

    .line 36
    move v11, v10

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    move v10, v11

    .line 42
    :goto_1
    move v11, v10

    move v8, v11

    .line 43
    move-object v11, v3

    move v12, v10

    invoke-virtual {v11, v12}, Ljava/io/Writer;->write(I)V

    .line 32
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 37
    :cond_0
    move-object v11, v0

    iget-char v11, v11, Lgnu/text/CaseConvertFormat;->code:C

    const/16 v12, 0x54

    if-ne v11, v12, :cond_1

    move v11, v9

    if-eqz v11, :cond_2

    :cond_1
    move-object v11, v0

    iget-char v11, v11, Lgnu/text/CaseConvertFormat;->code:C

    const/16 v12, 0x43

    if-ne v11, v12, :cond_3

    move v11, v8

    invoke-static {v11}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v11

    if-nez v11, :cond_3

    .line 39
    :cond_2
    move v11, v10

    invoke-static {v11}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v11

    move v10, v11

    goto :goto_1

    .line 41
    :cond_3
    move v11, v10

    invoke-static {v11}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    move v10, v11

    goto :goto_1

    .line 45
    .end local v10    # "ch":C
    :cond_4
    move v11, v6

    move v0, v11

    .end local v0    # "this":Lgnu/text/CaseConvertFormat;
    return v0
.end method

.method public getBaseFormat()Ljava/text/Format;
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/text/CaseConvertFormat;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/CaseConvertFormat;->baseFormat:Ljava/text/Format;

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/CaseConvertFormat;
    return-object v0
.end method

.method public setBaseFormat(Ljava/text/Format;)V
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/text/CaseConvertFormat;
    move-object v1, p1

    .local v1, "baseFormat":Ljava/text/Format;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/CaseConvertFormat;->baseFormat:Ljava/text/Format;

    return-void
.end method
