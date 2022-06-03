.class Lgnu/kawa/functions/LispIterationFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field atLeastOnce:Z

.field body:Ljava/text/Format;

.field maxIterations:I

.field seenAt:Z

.field seenColon:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 935
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispIterationFormat;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static format(Ljava/text/Format;I[Ljava/lang/Object;ILjava/io/Writer;ZZ)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 949
    move-object/from16 v0, p0

    .local v0, "body":Ljava/text/Format;
    move/from16 v1, p1

    .local v1, "maxIterations":I
    move-object/from16 v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move/from16 v3, p3

    .local v3, "start":I
    move-object/from16 v4, p4

    .local v4, "dst":Ljava/io/Writer;
    move/from16 v5, p5

    .local v5, "seenColon":Z
    move/from16 v6, p6

    .local v6, "atLeastOnce":Z
    const/4 v11, 0x0

    move v7, v11

    .line 951
    .local v7, "i":I
    :goto_0
    move v11, v7

    move v12, v1

    if-ne v11, v12, :cond_1

    move v11, v1

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    .line 952
    .line 977
    :cond_0
    :goto_1
    move v11, v3

    move v0, v11

    .end local v0    # "body":Ljava/text/Format;
    return v0

    .line 953
    .restart local v0    # "body":Ljava/text/Format;
    :cond_1
    move v11, v3

    move-object v12, v2

    array-length v12, v12

    if-ne v11, v12, :cond_2

    move v11, v7

    if-gtz v11, :cond_0

    move v11, v6

    if-nez v11, :cond_2

    .line 954
    goto :goto_1

    .line 955
    :cond_2
    move v11, v5

    if-eqz v11, :cond_5

    .line 957
    move-object v11, v2

    move v12, v3

    aget-object v11, v11, v12

    move-object v8, v11

    .line 958
    .local v8, "curArg":Ljava/lang/Object;
    move-object v11, v8

    invoke-static {v11}, Lgnu/kawa/functions/LispFormat;->asArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 959
    .local v9, "curArr":[Ljava/lang/Object;
    move-object v11, v9

    if-nez v11, :cond_3

    .line 962
    :cond_3
    move-object v11, v0

    move-object v12, v9

    const/4 v13, 0x0

    move-object v14, v4

    const/4 v15, 0x0

    invoke-static {v11, v12, v13, v14, v15}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v11

    move v10, v11

    .line 963
    .local v10, "result":I
    add-int/lit8 v3, v3, 0x1

    .line 964
    move v11, v10

    invoke-static {v11}, Lgnu/text/ReportFormat;->resultCode(I)I

    move-result v11

    const/16 v12, 0xf2

    if-ne v11, v12, :cond_4

    .line 965
    goto :goto_1

    .line 966
    .line 949
    .end local v8    # "curArg":Ljava/lang/Object;
    .end local v9    # "curArr":[Ljava/lang/Object;
    .end local v10    # "result":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 969
    :cond_5
    move-object v11, v0

    move-object v12, v2

    move v13, v3

    move-object v14, v4

    const/4 v15, 0x0

    invoke-static {v11, v12, v13, v14, v15}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v11

    move v3, v11

    .line 970
    move v11, v3

    if-gez v11, :cond_4

    .line 972
    move v11, v3

    invoke-static {v11}, Lgnu/text/ReportFormat;->nextArg(I)I

    move-result v11

    move v3, v11

    .line 973
    goto :goto_1
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
    .line 984
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispIterationFormat;
    move-object/from16 v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move/from16 v2, p2

    .local v2, "start":I
    move-object/from16 v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object/from16 v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v9, v0

    iget v9, v9, Lgnu/kawa/functions/LispIterationFormat;->maxIterations:I

    const/4 v10, -0x1

    move-object v11, v1

    move v12, v2

    invoke-static {v9, v10, v11, v12}, Lgnu/kawa/functions/LispIterationFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v9

    move v5, v9

    .line 986
    .local v5, "maxIterations":I
    move-object v9, v0

    iget v9, v9, Lgnu/kawa/functions/LispIterationFormat;->maxIterations:I

    const/high16 v10, -0x60000000

    if-ne v9, v10, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 988
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/functions/LispIterationFormat;->body:Ljava/text/Format;

    move-object v6, v9

    .line 989
    .local v6, "body":Ljava/text/Format;
    move-object v9, v6

    if-nez v9, :cond_1

    .line 992
    move-object v9, v1

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v9, v9, v10

    move-object v7, v9

    .line 993
    .local v7, "arg":Ljava/lang/Object;
    move-object v9, v7

    instance-of v9, v9, Ljava/text/Format;

    if-eqz v9, :cond_2

    .line 994
    move-object v9, v7

    check-cast v9, Ljava/text/Format;

    move-object v6, v9

    .line 1008
    .end local v7    # "arg":Ljava/lang/Object;
    :cond_1
    :goto_0
    move-object v9, v0

    iget-boolean v9, v9, Lgnu/kawa/functions/LispIterationFormat;->seenAt:Z

    if-eqz v9, :cond_3

    .line 1010
    move-object v9, v6

    move v10, v5

    move-object v11, v1

    move v12, v2

    move-object v13, v3

    move-object v14, v0

    iget-boolean v14, v14, Lgnu/kawa/functions/LispIterationFormat;->seenColon:Z

    move-object v15, v0

    iget-boolean v15, v15, Lgnu/kawa/functions/LispIterationFormat;->atLeastOnce:Z

    invoke-static/range {v9 .. v15}, Lgnu/kawa/functions/LispIterationFormat;->format(Ljava/text/Format;I[Ljava/lang/Object;ILjava/io/Writer;ZZ)I

    move-result v9

    move v0, v9

    .line 1022
    .end local v0    # "this":Lgnu/kawa/functions/LispIterationFormat;
    :goto_1
    return v0

    .line 999
    .restart local v0    # "this":Lgnu/kawa/functions/LispIterationFormat;
    .restart local v7    # "arg":Ljava/lang/Object;
    :cond_2
    :try_start_0
    new-instance v9, Lgnu/kawa/functions/LispFormat;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lgnu/kawa/functions/LispFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v9

    .line 1005
    goto :goto_0

    .line 1001
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 1003
    .local v8, "ex":Ljava/lang/Exception;
    move-object v9, v3

    const-string/jumbo v10, "<invalid argument for \"~{~}\" format>"

    invoke-static {v9, v10}, Lgnu/kawa/functions/LispIterationFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1004
    move-object v9, v1

    array-length v9, v9

    move v0, v9

    goto :goto_1

    .line 1015
    .end local v7    # "arg":Ljava/lang/Object;
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_3
    move-object v9, v1

    move v10, v2

    aget-object v9, v9, v10

    move-object v7, v9

    .line 1016
    .restart local v7    # "arg":Ljava/lang/Object;
    move-object v9, v7

    invoke-static {v9}, Lgnu/kawa/functions/LispFormat;->asArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .line 1017
    .local v8, "curArgs":[Ljava/lang/Object;
    move-object v9, v8

    if-nez v9, :cond_4

    .line 1018
    move-object v9, v3

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "{"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "}"

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1022
    :goto_2
    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v0, v9

    goto :goto_1

    .line 1020
    :cond_4
    move-object v9, v6

    move v10, v5

    move-object v11, v8

    const/4 v12, 0x0

    move-object v13, v3

    move-object v14, v0

    iget-boolean v14, v14, Lgnu/kawa/functions/LispIterationFormat;->seenColon:Z

    move-object v15, v0

    iget-boolean v15, v15, Lgnu/kawa/functions/LispIterationFormat;->atLeastOnce:Z

    invoke-static/range {v9 .. v15}, Lgnu/kawa/functions/LispIterationFormat;->format(Ljava/text/Format;I[Ljava/lang/Object;ILjava/io/Writer;ZZ)I

    move-result v9

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1028
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispIterationFormat;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 1029
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v1

    const-string/jumbo v3, "LispIterationFormat["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1030
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/LispIterationFormat;->body:Ljava/text/Format;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1031
    move-object v2, v1

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1032
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/LispIterationFormat;
    return-object v0
.end method
