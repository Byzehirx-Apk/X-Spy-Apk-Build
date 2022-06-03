.class public Lgnu/xml/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/xml/TextUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "node":Ljava/lang/Object;
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    if-nez v2, :cond_1

    .line 13
    :cond_0
    const-string/jumbo v2, ""

    move-object v0, v2

    .line 18
    .end local v0    # "node":Ljava/lang/Object;
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    :goto_0
    return-object v0

    .line 14
    .end local v1    # "sbuf":Ljava/lang/StringBuffer;
    .restart local v0    # "node":Ljava/lang/Object;
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Lgnu/mapping/Values;

    if-eqz v2, :cond_2

    .line 15
    new-instance v2, Ljava/lang/ClassCastException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/ClassCastException;-><init>()V

    throw v2

    .line 16
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v1, v2

    .line 17
    .restart local v1    # "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 18
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 14

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move v1, p1

    .local v1, "collapse":Z
    const/4 v10, 0x0

    move-object v2, v10

    .line 102
    .local v2, "sbuf":Ljava/lang/StringBuilder;
    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v3, v10

    .line 105
    .local v3, "len":I
    move v10, v1

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    :goto_0
    move v4, v10

    .line 106
    .local v4, "prevSpace":I
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    :goto_1
    move v10, v5

    move v11, v3

    if-ge v10, v11, :cond_10

    .line 108
    move-object v10, v0

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v6, v10

    .line 109
    .local v6, "ch":C
    move v10, v6

    const/16 v11, 0x20

    if-ne v10, v11, :cond_3

    const/4 v10, 0x1

    :goto_2
    move v7, v10

    .line 111
    .local v7, "isSpace":I
    move-object v10, v2

    if-nez v10, :cond_8

    move v10, v7

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    move v10, v7

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    move v10, v4

    if-lez v10, :cond_0

    move v10, v1

    if-nez v10, :cond_1

    :cond_0
    move v10, v7

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    move v10, v5

    move v11, v3

    if-ne v10, v11, :cond_8

    move v10, v1

    if-eqz v10, :cond_8

    .line 117
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v10

    .line 121
    move v10, v4

    if-lez v10, :cond_6

    move v10, v5

    const/4 v11, 0x2

    add-int/lit8 v10, v10, -0x2

    :goto_3
    move v8, v10

    .line 122
    .local v8, "k":I
    const/4 v10, 0x0

    move v9, v10

    .local v9, "j":I
    :goto_4
    move v10, v9

    move v11, v8

    if-ge v10, v11, :cond_7

    .line 123
    move-object v10, v2

    move-object v11, v0

    move v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 122
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 105
    .end local v4    # "prevSpace":I
    .end local v5    # "i":I
    .end local v6    # "ch":C
    .end local v7    # "isSpace":I
    .end local v8    # "k":I
    .end local v9    # "j":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 109
    .restart local v4    # "prevSpace":I
    .restart local v5    # "i":I
    .restart local v6    # "ch":C
    :cond_3
    move v10, v6

    const/16 v11, 0x9

    if-eq v10, v11, :cond_4

    move v10, v6

    const/16 v11, 0xd

    if-eq v10, v11, :cond_4

    move v10, v6

    const/16 v11, 0xa

    if-ne v10, v11, :cond_5

    :cond_4
    const/4 v10, 0x2

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 121
    .restart local v7    # "isSpace":I
    :cond_6
    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 124
    .restart local v8    # "k":I
    .restart local v9    # "j":I
    :cond_7
    const/16 v10, 0x20

    move v6, v10

    .line 126
    .end local v8    # "k":I
    .end local v9    # "j":I
    :cond_8
    move v10, v1

    if-eqz v10, :cond_e

    .line 128
    move v10, v4

    if-lez v10, :cond_a

    move v10, v7

    if-nez v10, :cond_a

    .line 130
    move-object v10, v2

    if-eqz v10, :cond_9

    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_9

    .line 131
    move-object v10, v2

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 132
    :cond_9
    const/4 v10, 0x0

    move v4, v10

    .line 140
    :goto_5
    move v10, v4

    if-lez v10, :cond_e

    .line 141
    goto/16 :goto_1

    .line 134
    :cond_a
    move v10, v7

    const/4 v11, 0x2

    if-eq v10, v11, :cond_b

    move v10, v7

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    move v10, v4

    if-lez v10, :cond_c

    .line 135
    :cond_b
    const/4 v10, 0x2

    move v4, v10

    goto :goto_5

    .line 136
    :cond_c
    move v10, v7

    if-lez v10, :cond_d

    .line 137
    const/4 v10, 0x1

    move v4, v10

    goto :goto_5

    .line 139
    :cond_d
    const/4 v10, 0x0

    move v4, v10

    goto :goto_5

    .line 143
    :cond_e
    move-object v10, v2

    if-eqz v10, :cond_f

    .line 144
    move-object v10, v2

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 145
    :cond_f
    goto/16 :goto_1

    .line 146
    .end local v6    # "ch":C
    .end local v7    # "isSpace":I
    :cond_10
    move-object v10, v2

    if-eqz v10, :cond_11

    .line 147
    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 149
    .end local v0    # "str":Ljava/lang/String;
    :goto_6
    return-object v0

    .restart local v0    # "str":Ljava/lang/String;
    :cond_11
    move-object v10, v0

    move-object v0, v10

    goto :goto_6
.end method

.method public static stringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "node":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v1, v5

    .line 24
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v5, v0

    instance-of v5, v5, Lgnu/mapping/Values;

    if-eqz v5, :cond_2

    .line 26
    move-object v5, v0

    check-cast v5, Lgnu/lists/TreeList;

    move-object v2, v5

    .line 27
    .local v2, "tlist":Lgnu/lists/TreeList;
    const/4 v5, 0x0

    move v3, v5

    .line 30
    .local v3, "index":I
    :goto_0
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v5

    move v4, v5

    .line 31
    .local v4, "kind":I
    move v5, v4

    if-nez v5, :cond_0

    .line 32
    .line 39
    .line 42
    .end local v2    # "tlist":Lgnu/lists/TreeList;
    .end local v3    # "index":I
    .end local v4    # "kind":I
    :goto_1
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "node":Ljava/lang/Object;
    return-object v0

    .line 33
    .restart local v0    # "node":Ljava/lang/Object;
    .restart local v2    # "tlist":Lgnu/lists/TreeList;
    .restart local v3    # "index":I
    .restart local v4    # "kind":I
    :cond_0
    move v5, v4

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1

    .line 34
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    invoke-static {v5, v6}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 37
    :goto_2
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v5

    move v3, v5

    .line 38
    goto :goto_0

    .line 36
    :cond_1
    move-object v5, v2

    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v6

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lgnu/lists/TreeList;->stringValue(ILjava/lang/StringBuffer;)I

    move-result v5

    goto :goto_2

    .line 41
    .end local v2    # "tlist":Lgnu/lists/TreeList;
    .end local v3    # "index":I
    .end local v4    # "kind":I
    :cond_2
    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    goto :goto_1
.end method

.method public static stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "node":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v4, v0

    instance-of v4, v4, Lgnu/kawa/xml/KNode;

    if-eqz v4, :cond_0

    .line 49
    move-object v4, v0

    check-cast v4, Lgnu/kawa/xml/KNode;

    move-object v2, v4

    .line 50
    .local v2, "pos":Lgnu/kawa/xml/KNode;
    move-object v4, v2

    iget-object v4, v4, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v4, Lgnu/xml/NodeTree;

    move-object v3, v4

    .line 51
    .local v3, "tlist":Lgnu/xml/NodeTree;
    move-object v4, v3

    move-object v5, v3

    move-object v6, v2

    iget v6, v6, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v5, v6}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v5

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lgnu/xml/NodeTree;->stringValue(ILjava/lang/StringBuffer;)I

    move-result v4

    .line 52
    .line 62
    .end local v0    # "node":Ljava/lang/Object;
    .end local v2    # "pos":Lgnu/kawa/xml/KNode;
    .end local v3    # "tlist":Lgnu/xml/NodeTree;
    :goto_0
    return-void

    .line 54
    .restart local v0    # "node":Ljava/lang/Object;
    :cond_0
    move-object v4, v0

    instance-of v4, v4, Ljava/math/BigDecimal;

    if-eqz v4, :cond_3

    .line 55
    move-object v4, v0

    check-cast v4, Ljava/math/BigDecimal;

    invoke-static {v4}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 60
    .end local v0    # "node":Ljava/lang/Object;
    :cond_1
    :goto_1
    move-object v4, v0

    if-eqz v4, :cond_2

    move-object v4, v0

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v4, v5, :cond_2

    .line 61
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 62
    :cond_2
    goto :goto_0

    .line 56
    .restart local v0    # "node":Ljava/lang/Object;
    :cond_3
    move-object v4, v0

    instance-of v4, v4, Ljava/lang/Double;

    if-nez v4, :cond_4

    move-object v4, v0

    instance-of v4, v4, Lgnu/math/DFloNum;

    if-eqz v4, :cond_5

    .line 57
    :cond_4
    move-object v4, v0

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lgnu/xml/XMLPrinter;->formatDouble(D)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .local v0, "node":Ljava/lang/String;
    goto :goto_1

    .line 58
    .local v0, "node":Ljava/lang/Object;
    :cond_5
    move-object v4, v0

    instance-of v4, v4, Ljava/lang/Float;

    if-eqz v4, :cond_1

    .line 59
    move-object v4, v0

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v4}, Lgnu/xml/XMLPrinter;->formatFloat(F)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .local v0, "node":Ljava/lang/String;
    goto :goto_1
.end method

.method public static textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 9

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v6, v0

    if-eqz v6, :cond_0

    move-object v6, v0

    instance-of v6, v6, Lgnu/mapping/Values;

    if-eqz v6, :cond_1

    move-object v6, v0

    check-cast v6, Lgnu/mapping/Values;

    invoke-virtual {v6}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    .line 89
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    move-object v6, v0

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 70
    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    move-object v2, v6

    .line 88
    .local v2, "str":Ljava/lang/String;
    :goto_1
    move-object v6, v1

    move-object v7, v2

    invoke-interface {v6, v7}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 89
    goto :goto_0

    .line 73
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v6

    .line 74
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object v6, v0

    instance-of v6, v6, Lgnu/mapping/Values;

    if-eqz v6, :cond_5

    .line 76
    move-object v6, v0

    check-cast v6, Lgnu/mapping/Values;

    invoke-virtual {v6}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 77
    .local v4, "vals":[Ljava/lang/Object;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_2
    move v6, v5

    move-object v7, v4

    array-length v7, v7

    if-ge v6, v7, :cond_4

    .line 79
    move v6, v5

    if-lez v6, :cond_3

    .line 80
    move-object v6, v3

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 81
    :cond_3
    move-object v6, v4

    move v7, v5

    aget-object v6, v6, v7

    move-object v7, v3

    invoke-static {v6, v7}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 77
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 83
    .line 86
    .end local v4    # "vals":[Ljava/lang/Object;
    .end local v5    # "i":I
    :cond_4
    :goto_3
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_1

    .line 85
    .end local v2    # "str":Ljava/lang/String;
    :cond_5
    move-object v6, v0

    move-object v7, v3

    invoke-static {v6, v7}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    goto :goto_3
.end method
