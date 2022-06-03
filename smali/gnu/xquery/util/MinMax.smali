.class public Lgnu/xquery/util/MinMax;
.super Ljava/lang/Object;
.source "MinMax.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/MinMax;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 89
    move-object v1, v0

    instance-of v1, v1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v1, :cond_0

    .line 90
    sget-object v1, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    move-object v2, v0

    invoke-static {v2}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    move-object v0, v1

    .line 92
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public static max(Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "collation":Lgnu/xquery/util/NamedCollator;
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lgnu/xquery/util/MinMax;->minMax(Ljava/lang/Object;ZLgnu/xquery/util/NamedCollator;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0
.end method

.method public static min(Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "collation":Lgnu/xquery/util/NamedCollator;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lgnu/xquery/util/MinMax;->minMax(Ljava/lang/Object;ZLgnu/xquery/util/NamedCollator;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0
.end method

.method public static minMax(Ljava/lang/Object;ZLgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .locals 19

    .prologue
    .line 26
    move-object/from16 v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move/from16 v1, p1

    .local v1, "returnMax":Z
    move-object/from16 v2, p2

    .local v2, "collation":Lgnu/xquery/util/NamedCollator;
    move-object v13, v0

    instance-of v13, v13, Lgnu/mapping/Values;

    if-eqz v13, :cond_d

    .line 28
    move-object v13, v0

    check-cast v13, Lgnu/lists/TreeList;

    move-object v3, v13

    .line 29
    .local v3, "tlist":Lgnu/lists/TreeList;
    const/4 v13, 0x0

    move v4, v13

    .line 30
    .local v4, "pos":I
    move v13, v1

    if-eqz v13, :cond_0

    const/16 v13, 0x10

    :goto_0
    move v5, v13

    .line 31
    .local v5, "flags":I
    move-object v13, v3

    move v14, v4

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v13

    move-object v6, v13

    .line 32
    .local v6, "cur":Ljava/lang/Object;
    move-object v13, v6

    sget-object v14, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v13, v14, :cond_1

    .line 33
    sget-object v13, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v13

    .line 82
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v3    # "tlist":Lgnu/lists/TreeList;
    .end local v4    # "pos":I
    .end local v5    # "flags":I
    .end local v6    # "cur":Ljava/lang/Object;
    :goto_1
    return-object v0

    .line 30
    .restart local v0    # "arg":Ljava/lang/Object;
    .restart local v3    # "tlist":Lgnu/lists/TreeList;
    .restart local v4    # "pos":I
    :cond_0
    const/4 v13, 0x4

    goto :goto_0

    .line 34
    .restart local v5    # "flags":I
    .restart local v6    # "cur":Ljava/lang/Object;
    :cond_1
    move-object v13, v6

    invoke-static {v13}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v7, v13

    .line 37
    :cond_2
    :goto_2
    move-object v13, v3

    move v14, v4

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v13

    move v4, v13

    .line 38
    move-object v13, v3

    move v14, v4

    invoke-virtual {v13, v14}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v13

    move-object v6, v13

    .line 39
    move-object v13, v6

    sget-object v14, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v13, v14, :cond_3

    .line 40
    move-object v13, v7

    move-object v0, v13

    goto :goto_1

    .line 41
    :cond_3
    move-object v13, v6

    invoke-static {v13}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v6, v13

    .line 43
    move-object v13, v7

    instance-of v13, v13, Ljava/lang/Number;

    if-nez v13, :cond_4

    move-object v13, v6

    instance-of v13, v13, Ljava/lang/Number;

    if-eqz v13, :cond_c

    .line 45
    :cond_4
    move-object v13, v7

    invoke-static {v13}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v13

    move v8, v13

    .line 46
    .local v8, "code1":I
    move-object v13, v6

    invoke-static {v13}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v13

    move v9, v13

    .line 47
    .local v9, "code2":I
    move-object v13, v7

    move v14, v8

    move-object v15, v6

    move/from16 v16, v9

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;ILjava/lang/Object;IZ)I

    move-result v13

    move v10, v13

    .line 49
    .local v10, "rcode":I
    move v13, v10

    const/4 v14, -0x3

    if-ne v13, v14, :cond_5

    .line 50
    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const-string/jumbo v15, "values cannot be compared"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 51
    :cond_5
    move v13, v8

    move v14, v9

    if-ge v13, v14, :cond_7

    move v13, v9

    :goto_3
    move v11, v13

    .line 53
    .local v11, "code":I
    move v13, v10

    const/4 v14, -0x2

    if-ne v13, v14, :cond_8

    .line 55
    sget-object v13, Lgnu/xquery/util/NumberValue;->NaN:Ljava/lang/Double;

    move-object v7, v13

    .line 56
    .local v7, "result":Ljava/lang/Double;
    const/4 v13, 0x1

    move v12, v13

    .line 67
    .end local v7    # "result":Ljava/lang/Double;
    .local v12, "castNeeded":Z
    :goto_4
    move v13, v12

    if-eqz v13, :cond_6

    .line 68
    move-object v13, v7

    move v14, v11

    invoke-static {v13, v14}, Lgnu/kawa/functions/Arithmetic;->convert(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    move-object v7, v13

    .line 69
    :cond_6
    goto :goto_2

    .line 51
    .end local v11    # "code":I
    .end local v12    # "castNeeded":Z
    :cond_7
    move v13, v8

    goto :goto_3

    .line 58
    .restart local v11    # "code":I
    :cond_8
    move v13, v10

    move v14, v5

    invoke-static {v13, v14}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result v13

    if-nez v13, :cond_a

    .line 60
    move v13, v11

    move v14, v9

    if-eq v13, v14, :cond_9

    const/4 v13, 0x1

    :goto_5
    move v12, v13

    .line 61
    .restart local v12    # "castNeeded":Z
    move-object v13, v6

    move-object v7, v13

    .local v7, "result":Ljava/lang/Object;
    goto :goto_4

    .line 60
    .end local v7    # "result":Ljava/lang/Object;
    .end local v12    # "castNeeded":Z
    :cond_9
    const/4 v13, 0x0

    goto :goto_5

    .line 65
    :cond_a
    move v13, v11

    move v14, v8

    if-eq v13, v14, :cond_b

    const/4 v13, 0x1

    :goto_6
    move v12, v13

    .restart local v12    # "castNeeded":Z
    goto :goto_4

    .end local v12    # "castNeeded":Z
    :cond_b
    const/4 v13, 0x0

    goto :goto_6

    .line 72
    .end local v8    # "code1":I
    .end local v9    # "code2":I
    .end local v10    # "rcode":I
    .end local v11    # "code":I
    :cond_c
    move v13, v5

    move-object v14, v7

    move-object v15, v6

    move-object/from16 v16, v2

    invoke-static/range {v13 .. v16}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 73
    move-object v13, v6

    move-object v7, v13

    .restart local v7    # "result":Ljava/lang/Object;
    goto/16 :goto_2

    .line 79
    .end local v3    # "tlist":Lgnu/lists/TreeList;
    .end local v4    # "pos":I
    .end local v5    # "flags":I
    .end local v6    # "cur":Ljava/lang/Object;
    .end local v7    # "result":Ljava/lang/Object;
    :cond_d
    move-object v13, v0

    invoke-static {v13}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    .line 81
    const/16 v13, 0x10

    move-object v14, v0

    move-object v15, v0

    move-object/from16 v16, v2

    invoke-static/range {v13 .. v16}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v13

    .line 82
    move-object v13, v0

    move-object v0, v13

    goto/16 :goto_1
.end method
