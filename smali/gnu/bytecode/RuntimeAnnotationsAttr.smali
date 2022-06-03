.class public Lgnu/bytecode/RuntimeAnnotationsAttr;
.super Lgnu/bytecode/MiscAttr;
.source "RuntimeAnnotationsAttr.java"


# instance fields
.field numEntries:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLgnu/bytecode/AttrContainer;)V
    .locals 9

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/RuntimeAnnotationsAttr;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":[B
    move-object v3, p3

    .local v3, "container":Lgnu/bytecode/AttrContainer;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v2

    array-length v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    .line 16
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/bytecode/RuntimeAnnotationsAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 17
    move-object v4, v0

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2(I)I

    move-result v5

    iput v5, v4, Lgnu/bytecode/RuntimeAnnotationsAttr;->numEntries:I

    .line 18
    return-void
.end method


# virtual methods
.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 7

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/RuntimeAnnotationsAttr;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move-object v4, v1

    const-string/jumbo v5, "Attribute \""

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 23
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/RuntimeAnnotationsAttr;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 24
    move-object v4, v1

    const-string/jumbo v5, "\", length:"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 25
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/RuntimeAnnotationsAttr;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 26
    move-object v4, v1

    const-string/jumbo v5, ", number of entries: "

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 27
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/RuntimeAnnotationsAttr;->numEntries:I

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 28
    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/RuntimeAnnotationsAttr;->offset:I

    move v2, v4

    .line 29
    .local v2, "saveOffset":I
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    iput v5, v4, Lgnu/bytecode/RuntimeAnnotationsAttr;->offset:I

    .line 30
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/RuntimeAnnotationsAttr;->numEntries:I

    if-ge v4, v5, :cond_0

    .line 32
    move-object v4, v0

    const/4 v5, 0x2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/RuntimeAnnotationsAttr;->printAnnotation(ILgnu/bytecode/ClassTypeWriter;)V

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :cond_0
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/bytecode/RuntimeAnnotationsAttr;->offset:I

    .line 35
    return-void
.end method

.method public printAnnotation(ILgnu/bytecode/ClassTypeWriter;)V
    .locals 10

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/RuntimeAnnotationsAttr;
    move v1, p1

    .local v1, "indentation":I
    move-object v2, p2

    .local v2, "dst":Lgnu/bytecode/ClassTypeWriter;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v7

    move v3, v7

    .line 40
    .local v3, "type_index":I
    move-object v7, v2

    move v8, v1

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->printSpaces(I)V

    .line 41
    move-object v7, v2

    move v8, v3

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 42
    move-object v7, v2

    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 43
    move-object v7, v2

    move v8, v3

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->printContantUtf8AsClass(I)V

    .line 44
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v7

    move v4, v7

    .line 45
    .local v4, "num_element_value_pairs":I
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 46
    add-int/lit8 v1, v1, 0x2

    .line 47
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    .line 49
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v7

    move v6, v7

    .line 50
    .local v6, "element_name_index":I
    move-object v7, v2

    move v8, v1

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->printSpaces(I)V

    .line 51
    move-object v7, v2

    move v8, v6

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 52
    move-object v7, v2

    move v8, v6

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 53
    move-object v7, v2

    const-string/jumbo v8, " => "

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 54
    move-object v7, v0

    move v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/RuntimeAnnotationsAttr;->printAnnotationElementValue(ILgnu/bytecode/ClassTypeWriter;)V

    .line 55
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 47
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 57
    .end local v6    # "element_name_index":I
    :cond_0
    return-void
.end method

.method public printAnnotationElementValue(ILgnu/bytecode/ClassTypeWriter;)V
    .locals 17

    .prologue
    .line 61
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/bytecode/RuntimeAnnotationsAttr;
    move/from16 v1, p1

    .local v1, "indentation":I
    move-object/from16 v2, p2

    .local v2, "dst":Lgnu/bytecode/ClassTypeWriter;
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u1()I

    move-result v13

    move v3, v13

    .line 62
    .local v3, "tag":I
    move-object v13, v2

    iget v13, v13, Lgnu/bytecode/ClassTypeWriter;->flags:I

    const/16 v14, 0x8

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_0

    .line 64
    move-object v13, v2

    const-string/jumbo v14, "[kind:"

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 65
    move v13, v3

    const/16 v14, 0x41

    if-lt v13, v14, :cond_2

    move v13, v3

    const/16 v14, 0x7a

    if-gt v13, v14, :cond_2

    .line 66
    move-object v13, v2

    move v14, v3

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 69
    :goto_0
    move-object v13, v2

    const-string/jumbo v14, "] "

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 71
    :cond_0
    const/4 v13, 0x0

    move v4, v13

    .line 72
    .local v4, "expected":I
    move v13, v3

    sparse-switch v13, :sswitch_data_0

    .line 144
    :cond_1
    :goto_1
    return-void

    .line 68
    .end local v4    # "expected":I
    :cond_2
    move-object v13, v2

    move v14, v3

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_0

    .line 79
    .restart local v4    # "expected":I
    :sswitch_0
    move v13, v4

    if-nez v13, :cond_3

    const/4 v13, 0x3

    move v4, v13

    .line 82
    :cond_3
    :sswitch_1
    move v13, v4

    if-nez v13, :cond_4

    const/4 v13, 0x5

    move v4, v13

    .line 85
    :cond_4
    :sswitch_2
    move v13, v4

    if-nez v13, :cond_5

    const/4 v13, 0x6

    move v4, v13

    .line 88
    :cond_5
    :sswitch_3
    move v13, v4

    if-nez v13, :cond_6

    const/4 v13, 0x4

    move v4, v13

    .line 91
    :cond_6
    :sswitch_4
    move v13, v4

    if-nez v13, :cond_7

    const/4 v13, 0x1

    move v4, v13

    .line 93
    :cond_7
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v13

    move v5, v13

    .line 94
    .local v5, "const_value_index":I
    move-object v13, v2

    move v14, v5

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->getCpoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v13

    move-object v6, v13

    .line 95
    .local v6, "entry":Lgnu/bytecode/CpoolEntry;
    move-object v13, v2

    move-object v14, v6

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    .line 97
    move v13, v3

    const/16 v14, 0x5a

    if-ne v13, v14, :cond_a

    move-object v13, v6

    if-eqz v13, :cond_a

    move-object v13, v6

    invoke-virtual {v13}, Lgnu/bytecode/CpoolEntry;->getTag()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_a

    move-object v13, v6

    check-cast v13, Lgnu/bytecode/CpoolValue1;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v7, v14

    .local v7, "cint":Lgnu/bytecode/CpoolValue1;
    iget v13, v13, Lgnu/bytecode/CpoolValue1;->value:I

    if-eqz v13, :cond_8

    move-object v13, v7

    iget v13, v13, Lgnu/bytecode/CpoolValue1;->value:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    .line 100
    :cond_8
    move-object v13, v2

    move-object v14, v7

    iget v14, v14, Lgnu/bytecode/CpoolValue1;->value:I

    if-nez v14, :cond_9

    const-string/jumbo v14, "false"

    :goto_2
    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string/jumbo v14, "true"

    goto :goto_2

    .line 102
    .end local v7    # "cint":Lgnu/bytecode/CpoolValue1;
    :cond_a
    move-object v13, v2

    move v14, v5

    move v15, v4

    invoke-virtual {v13, v14, v15}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 103
    goto :goto_1

    .line 105
    .end local v5    # "const_value_index":I
    .end local v6    # "entry":Lgnu/bytecode/CpoolEntry;
    :sswitch_5
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v13

    move v8, v13

    .line 106
    .local v8, "type_name_index":I
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v13

    move v9, v13

    .line 107
    .local v9, "const_name_index":I
    move-object v13, v2

    const-string/jumbo v14, "enum["

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 108
    move-object v13, v2

    iget v13, v13, Lgnu/bytecode/ClassTypeWriter;->flags:I

    const/16 v14, 0x8

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_b

    .line 109
    move-object v13, v2

    const-string/jumbo v14, "type:"

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 110
    :cond_b
    move-object v13, v2

    move v14, v8

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 111
    move-object v13, v2

    move v14, v8

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->printContantUtf8AsClass(I)V

    .line 112
    move-object v13, v2

    iget v13, v13, Lgnu/bytecode/ClassTypeWriter;->flags:I

    const/16 v14, 0x8

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_c

    .line 113
    move-object v13, v2

    const-string/jumbo v14, " value:"

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 116
    :goto_3
    move-object v13, v2

    move v14, v9

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 117
    move-object v13, v2

    move v14, v9

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 118
    move-object v13, v2

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 119
    goto/16 :goto_1

    .line 115
    :cond_c
    move-object v13, v2

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_3

    .line 121
    .end local v8    # "type_name_index":I
    .end local v9    # "const_name_index":I
    :sswitch_6
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v13

    move v10, v13

    .line 122
    .local v10, "class_info_index":I
    move-object v13, v2

    move v14, v10

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 123
    move-object v13, v2

    move v14, v10

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->printContantUtf8AsClass(I)V

    .line 124
    goto/16 :goto_1

    .line 126
    .end local v10    # "class_info_index":I
    :sswitch_7
    move-object v13, v2

    invoke-virtual {v13}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 127
    move-object v13, v2

    move v14, v1

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->printSpaces(I)V

    .line 128
    move-object v13, v0

    move v14, v1

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    move-object v15, v2

    invoke-virtual {v13, v14, v15}, Lgnu/bytecode/RuntimeAnnotationsAttr;->printAnnotation(ILgnu/bytecode/ClassTypeWriter;)V

    .line 129
    goto/16 :goto_1

    .line 131
    :sswitch_8
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v13

    move v11, v13

    .line 132
    .local v11, "num_values":I
    move-object v13, v2

    const-string/jumbo v14, "array length:"

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 133
    move-object v13, v2

    move v14, v11

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 134
    const/4 v13, 0x0

    move v12, v13

    .local v12, "i":I
    :goto_4
    move v13, v12

    move v14, v11

    if-ge v13, v14, :cond_1

    .line 136
    move-object v13, v2

    invoke-virtual {v13}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 137
    move-object v13, v2

    move v14, v1

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->printSpaces(I)V

    .line 138
    move-object v13, v2

    move v14, v12

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 139
    move-object v13, v2

    const-string/jumbo v14, ": "

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 140
    move-object v13, v0

    move v14, v1

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    move-object v15, v2

    invoke-virtual {v13, v14, v15}, Lgnu/bytecode/RuntimeAnnotationsAttr;->printAnnotationElementValue(ILgnu/bytecode/ClassTypeWriter;)V

    .line 134
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_7
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_2
        0x46 -> :sswitch_3
        0x49 -> :sswitch_0
        0x4a -> :sswitch_1
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_8
        0x63 -> :sswitch_6
        0x65 -> :sswitch_5
        0x73 -> :sswitch_4
    .end sparse-switch
.end method
