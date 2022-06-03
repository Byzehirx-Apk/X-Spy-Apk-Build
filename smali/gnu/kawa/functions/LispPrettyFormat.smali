.class Lgnu/kawa/functions/LispPrettyFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field body:Ljava/text/Format;

.field perLine:Z

.field prefix:Ljava/lang/String;

.field seenAt:Z

.field segments:[Ljava/text/Format;

.field suffix:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 875
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispPrettyFormat;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/text/ReportFormat;-><init>()V

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
    .line 888
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispPrettyFormat;
    move-object/from16 v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move/from16 v2, p2

    .local v2, "start":I
    move-object/from16 v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object/from16 v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    move-object v5, v11

    .line 889
    .local v5, "pre":Ljava/lang/String;
    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    move-object v6, v11

    .line 890
    .local v6, "suf":Ljava/lang/String;
    move-object v11, v3

    instance-of v11, v11, Lgnu/mapping/OutPort;

    if-eqz v11, :cond_2

    move-object v11, v3

    check-cast v11, Lgnu/mapping/OutPort;

    :goto_0
    move-object v7, v11

    .line 893
    .local v7, "out":Lgnu/mapping/OutPort;
    move-object v11, v0

    :try_start_0
    iget-boolean v11, v11, Lgnu/kawa/functions/LispPrettyFormat;->seenAt:Z

    if-eqz v11, :cond_3

    .line 895
    move-object v11, v7

    if-eqz v11, :cond_0

    .line 896
    move-object v11, v7

    move-object v12, v5

    move-object v13, v0

    iget-boolean v13, v13, Lgnu/kawa/functions/LispPrettyFormat;->perLine:Z

    move-object v14, v0

    iget-object v14, v14, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 897
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    move-object v12, v1

    move v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-static {v11, v12, v13, v14, v15}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    move v2, v11

    .line 916
    :goto_1
    move-object v11, v7

    if-eqz v11, :cond_1

    .line 917
    move-object v11, v7

    move-object v12, v6

    invoke-virtual {v11, v12}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 919
    :cond_1
    move v11, v2

    move v0, v11

    .end local v0    # "this":Lgnu/kawa/functions/LispPrettyFormat;
    return v0

    .line 890
    .end local v7    # "out":Lgnu/mapping/OutPort;
    .restart local v0    # "this":Lgnu/kawa/functions/LispPrettyFormat;
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 901
    .restart local v7    # "out":Lgnu/mapping/OutPort;
    :cond_3
    move-object v11, v1

    move v12, v2

    :try_start_1
    aget-object v11, v11, v12

    move-object v8, v11

    .line 902
    .local v8, "curArg":Ljava/lang/Object;
    move-object v11, v8

    invoke-static {v11}, Lgnu/kawa/functions/LispFormat;->asArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 903
    .local v9, "curArr":[Ljava/lang/Object;
    move-object v11, v9

    if-nez v11, :cond_4

    .line 904
    const-string/jumbo v11, ""

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v6, v12

    move-object v5, v11

    .line 905
    :cond_4
    move-object v11, v7

    if-eqz v11, :cond_5

    .line 906
    move-object v11, v7

    move-object v12, v5

    move-object v13, v0

    iget-boolean v13, v13, Lgnu/kawa/functions/LispPrettyFormat;->perLine:Z

    move-object v14, v0

    iget-object v14, v14, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 907
    :cond_5
    move-object v11, v9

    if-nez v11, :cond_6

    .line 908
    move-object v11, v8

    move-object v12, v3

    const/4 v13, -0x1

    const/4 v14, 0x1

    invoke-static {v11, v12, v13, v14}, Lgnu/kawa/functions/ObjectFormat;->format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z

    move-result v11

    .line 911
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 910
    :cond_6
    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    move-object v12, v9

    const/4 v13, 0x0

    move-object v14, v3

    move-object v15, v4

    invoke-static {v11, v12, v13, v14, v15}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    goto :goto_2

    .line 916
    .end local v8    # "curArg":Ljava/lang/Object;
    .end local v9    # "curArr":[Ljava/lang/Object;
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v7

    if-eqz v11, :cond_7

    .line 917
    move-object v11, v7

    move-object v12, v6

    invoke-virtual {v11, v12}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    :cond_7
    move-object v11, v10

    throw v11
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 924
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispPrettyFormat;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 925
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v1

    const-string/jumbo v3, "LispPrettyFormat["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 926
    move-object v2, v1

    const-string/jumbo v3, "prefix: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 927
    move-object v2, v1

    const-string/jumbo v3, "\", suffix: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 928
    move-object v2, v1

    const-string/jumbo v3, "\", body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 929
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 930
    move-object v2, v1

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 931
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/LispPrettyFormat;
    return-object v0
.end method
