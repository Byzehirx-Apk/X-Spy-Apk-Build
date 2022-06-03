.class public Lgnu/bytecode/InnerClassesAttr;
.super Lgnu/bytecode/Attribute;
.source "InnerClassesAttr.java"


# instance fields
.field count:I

.field data:[S


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/InnerClassesAttr;
    move-object v1, p1

    .local v1, "cl":Lgnu/bytecode/ClassType;
    move-object v2, v0

    const-string/jumbo v3, "InnerClasses"

    invoke-direct {v2, v3}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 15
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/InnerClassesAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 16
    return-void
.end method

.method public constructor <init>([SLgnu/bytecode/ClassType;)V
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/InnerClassesAttr;
    move-object v1, p1

    .local v1, "data":[S
    move-object v2, p2

    .local v2, "cl":Lgnu/bytecode/ClassType;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lgnu/bytecode/InnerClassesAttr;-><init>(Lgnu/bytecode/ClassType;)V

    .line 21
    move-object v3, v0

    move-object v4, v1

    array-length v4, v4

    const/4 v5, 0x2

    shr-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    iput v4, v3, Lgnu/bytecode/InnerClassesAttr;->count:I

    .line 22
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/bytecode/InnerClassesAttr;->data:[S

    .line 23
    return-void
.end method

.method public static getFirstInnerClasses(Lgnu/bytecode/Attribute;)Lgnu/bytecode/InnerClassesAttr;
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "attr":Lgnu/bytecode/Attribute;
    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lgnu/bytecode/InnerClassesAttr;

    if-eqz v1, :cond_1

    .line 30
    :cond_0
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/InnerClassesAttr;

    move-object v0, v1

    .end local v0    # "attr":Lgnu/bytecode/Attribute;
    return-object v0

    .line 27
    .restart local v0    # "attr":Lgnu/bytecode/Attribute;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method addClass(Lgnu/bytecode/CpoolClass;Lgnu/bytecode/ClassType;)V
    .locals 17

    .prologue
    .line 39
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/bytecode/InnerClassesAttr;
    move-object/from16 v1, p1

    .local v1, "centry":Lgnu/bytecode/CpoolClass;
    move-object/from16 v2, p2

    .local v2, "owner":Lgnu/bytecode/ClassType;
    const/4 v10, 0x4

    move-object v11, v0

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    iget v12, v12, Lgnu/bytecode/InnerClassesAttr;->count:I

    move-object v15, v11

    move/from16 v16, v12

    move/from16 v11, v16

    move-object v12, v15

    move/from16 v13, v16

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lgnu/bytecode/InnerClassesAttr;->count:I

    mul-int/2addr v10, v11

    move v3, v10

    .line 40
    .local v3, "i":I
    move-object v10, v0

    iget-object v10, v10, Lgnu/bytecode/InnerClassesAttr;->data:[S

    if-nez v10, :cond_2

    .line 41
    move-object v10, v0

    const/16 v11, 0x10

    new-array v11, v11, [S

    iput-object v11, v10, Lgnu/bytecode/InnerClassesAttr;->data:[S

    .line 48
    :cond_0
    :goto_0
    move-object v10, v2

    iget-object v10, v10, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move-object v4, v10

    .line 49
    .local v4, "constants":Lgnu/bytecode/ConstantPool;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/bytecode/CpoolClass;->getClassType()Lgnu/bytecode/ObjectType;

    move-result-object v10

    check-cast v10, Lgnu/bytecode/ClassType;

    move-object v5, v10

    .line 51
    .local v5, "clas":Lgnu/bytecode/ClassType;
    move-object v10, v5

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 52
    .local v6, "name":Ljava/lang/String;
    move-object v10, v6

    if-eqz v10, :cond_1

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    :cond_1
    const/4 v10, 0x0

    :goto_1
    move v7, v10

    .line 54
    .local v7, "name_index":I
    move-object v10, v0

    iget-object v10, v10, Lgnu/bytecode/InnerClassesAttr;->data:[S

    move v11, v3

    move-object v12, v1

    iget v12, v12, Lgnu/bytecode/CpoolClass;->index:I

    int-to-short v12, v12

    aput-short v12, v10, v11

    .line 55
    move-object v10, v5

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v10

    move-object v8, v10

    .line 56
    .local v8, "outer":Lgnu/bytecode/ClassType;
    move-object v10, v0

    iget-object v10, v10, Lgnu/bytecode/InnerClassesAttr;->data:[S

    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object v12, v8

    if-nez v12, :cond_4

    const/4 v12, 0x0

    :goto_2
    aput-short v12, v10, v11

    .line 58
    move-object v10, v0

    iget-object v10, v10, Lgnu/bytecode/InnerClassesAttr;->data:[S

    move v11, v3

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    move v12, v7

    int-to-short v12, v12

    aput-short v12, v10, v11

    .line 59
    move-object v10, v5

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v10

    move v9, v10

    .line 60
    .local v9, "flags":I
    move v10, v9

    const/16 v11, -0x21

    and-int/lit8 v10, v10, -0x21

    move v9, v10

    .line 61
    move-object v10, v0

    iget-object v10, v10, Lgnu/bytecode/InnerClassesAttr;->data:[S

    move v11, v3

    const/4 v12, 0x3

    add-int/lit8 v11, v11, 0x3

    move v12, v9

    int-to-short v12, v12

    aput-short v12, v10, v11

    .line 62
    return-void

    .line 42
    .end local v4    # "constants":Lgnu/bytecode/ConstantPool;
    .end local v5    # "clas":Lgnu/bytecode/ClassType;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "name_index":I
    .end local v8    # "outer":Lgnu/bytecode/ClassType;
    .end local v9    # "flags":I
    :cond_2
    move v10, v3

    move-object v11, v0

    iget-object v11, v11, Lgnu/bytecode/InnerClassesAttr;->data:[S

    array-length v11, v11

    if-lt v10, v11, :cond_0

    .line 44
    const/4 v10, 0x2

    move v11, v3

    mul-int/2addr v10, v11

    new-array v10, v10, [S

    move-object v4, v10

    .line 45
    .local v4, "tmp":[S
    move-object v10, v0

    iget-object v10, v10, Lgnu/bytecode/InnerClassesAttr;->data:[S

    const/4 v11, 0x0

    move-object v12, v4

    const/4 v13, 0x0

    move v14, v3

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    move-object v10, v0

    move-object v11, v4

    iput-object v11, v10, Lgnu/bytecode/InnerClassesAttr;->data:[S

    goto :goto_0

    .line 52
    .local v4, "constants":Lgnu/bytecode/ConstantPool;
    .restart local v5    # "clas":Lgnu/bytecode/ClassType;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_3
    move-object v10, v4

    move-object v11, v6

    invoke-virtual {v10, v11}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v10

    iget v10, v10, Lgnu/bytecode/CpoolUtf8;->index:I

    goto :goto_1

    .line 56
    .restart local v7    # "name_index":I
    .restart local v8    # "outer":Lgnu/bytecode/ClassType;
    :cond_4
    move-object v12, v4

    move-object v13, v8

    invoke-virtual {v12, v13}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v12

    iget v12, v12, Lgnu/bytecode/CpoolClass;->index:I

    int-to-short v12, v12

    goto :goto_2
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/InnerClassesAttr;
    move-object v1, p1

    .local v1, "cl":Lgnu/bytecode/ClassType;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 68
    return-void
.end method

.method public getLength()I
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/InnerClassesAttr;
    const/4 v1, 0x2

    const/16 v2, 0x8

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/InnerClassesAttr;->count:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/InnerClassesAttr;
    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 21

    .prologue
    .line 91
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/bytecode/InnerClassesAttr;
    move-object/from16 v3, p1

    .local v3, "dst":Lgnu/bytecode/ClassTypeWriter;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/bytecode/InnerClassesAttr;->container:Lgnu/bytecode/AttrContainer;

    move-object/from16 v17, v0

    check-cast v17, Lgnu/bytecode/ClassType;

    move-object/from16 v4, v17

    .line 92
    .local v4, "ctype":Lgnu/bytecode/ClassType;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    const/16 v17, 0x0

    :goto_0
    move-object/from16 v5, v17

    .line 93
    .local v5, "constants":Lgnu/bytecode/ConstantPool;
    move-object/from16 v17, v3

    const-string/jumbo v18, "Attribute \""

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 94
    move-object/from16 v17, v3

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/InnerClassesAttr;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 95
    move-object/from16 v17, v3

    const-string/jumbo v18, "\", length:"

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 96
    move-object/from16 v17, v3

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/InnerClassesAttr;->getLength()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 97
    move-object/from16 v17, v3

    const-string/jumbo v18, ", count: "

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 98
    move-object/from16 v17, v3

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/bytecode/InnerClassesAttr;->count:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 99
    const/16 v17, 0x0

    move/from16 v6, v17

    .local v6, "i":I
    :goto_1
    move/from16 v17, v6

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/bytecode/InnerClassesAttr;->count:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    .line 101
    move-object/from16 v17, v5

    if-nez v17, :cond_3

    const/16 v17, 0x0

    :goto_2
    move/from16 v7, v17

    .line 102
    .local v7, "inner_index":I
    move-object/from16 v17, v5

    if-eqz v17, :cond_0

    move/from16 v17, v7

    if-nez v17, :cond_4

    :cond_0
    const/16 v17, 0x0

    :goto_3
    move-object/from16 v8, v17

    .line 104
    .local v8, "centry":Lgnu/bytecode/CpoolClass;
    move-object/from16 v17, v8

    if-eqz v17, :cond_5

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    move-object/from16 v17, v0

    check-cast v17, Lgnu/bytecode/ClassType;

    :goto_4
    move-object/from16 v9, v17

    .line 107
    .local v9, "clas":Lgnu/bytecode/ClassType;
    move-object/from16 v17, v3

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 108
    move/from16 v17, v7

    if-nez v17, :cond_6

    move-object/from16 v17, v9

    if-eqz v17, :cond_6

    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v17

    :goto_5
    move/from16 v10, v17

    .line 110
    .local v10, "access":I
    move-object/from16 v17, v3

    move/from16 v18, v10

    const/16 v19, 0x49

    invoke-static/range {v18 .. v19}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 111
    move-object/from16 v17, v3

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 114
    move/from16 v17, v7

    if-nez v17, :cond_7

    move-object/from16 v17, v9

    if-eqz v17, :cond_7

    .line 115
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/ClassType;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v12, v17

    .line 128
    .local v12, "name":Ljava/lang/String;
    :goto_6
    move-object/from16 v17, v3

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 129
    move-object/from16 v17, v3

    const-string/jumbo v18, " = "

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 130
    move-object/from16 v17, v8

    if-eqz v17, :cond_a

    .line 131
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/CpoolClass;->getClassName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v12, v17

    .line 134
    :goto_7
    move-object/from16 v17, v3

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 135
    move-object/from16 v17, v3

    const-string/jumbo v18, "; "

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 136
    move/from16 v17, v7

    if-nez v17, :cond_c

    move-object/from16 v17, v9

    if-eqz v17, :cond_c

    .line 138
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v13, v17

    .line 139
    .local v13, "iname":Ljava/lang/String;
    move-object/from16 v17, v13

    const/16 v18, 0x2e

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    move/from16 v14, v17

    .line 140
    .local v14, "dot":I
    move/from16 v17, v14

    if-lez v17, :cond_1

    .line 141
    move-object/from16 v17, v13

    move/from16 v18, v14

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v13, v17

    .line 142
    :cond_1
    move-object/from16 v17, v13

    const/16 v18, 0x24

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v15, v17

    .line 144
    .local v15, "start":I
    move/from16 v17, v15

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    move-object/from16 v17, v13

    move/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v20, v17

    move/from16 v17, v20

    move/from16 v18, v20

    move/from16 v16, v18

    .local v16, "ch":C
    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    move/from16 v17, v16

    const/16 v18, 0x39

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    .line 146
    move-object/from16 v17, v3

    const-string/jumbo v18, "not a member"

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 152
    .line 166
    .end local v13    # "iname":Ljava/lang/String;
    .end local v14    # "dot":I
    .end local v15    # "start":I
    .end local v16    # "ch":C
    :goto_8
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 99
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 92
    .end local v5    # "constants":Lgnu/bytecode/ConstantPool;
    .end local v6    # "i":I
    .end local v7    # "inner_index":I
    .end local v8    # "centry":Lgnu/bytecode/CpoolClass;
    .end local v9    # "clas":Lgnu/bytecode/ClassType;
    .end local v10    # "access":I
    .end local v12    # "name":Ljava/lang/String;
    :cond_2
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v17

    goto/16 :goto_0

    .line 101
    .restart local v5    # "constants":Lgnu/bytecode/ConstantPool;
    .restart local v6    # "i":I
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v19, v6

    mul-int v18, v18, v19

    aget-short v17, v17, v18

    const v18, 0xffff

    and-int v17, v17, v18

    goto/16 :goto_2

    .line 102
    .restart local v7    # "inner_index":I
    :cond_4
    move-object/from16 v17, v5

    move/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ConstantPool;->getForcedClass(I)Lgnu/bytecode/CpoolClass;

    move-result-object v17

    goto/16 :goto_3

    .line 104
    .restart local v8    # "centry":Lgnu/bytecode/CpoolClass;
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 108
    .restart local v9    # "clas":Lgnu/bytecode/ClassType;
    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v19, v6

    mul-int v18, v18, v19

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    aget-short v17, v17, v18

    const v18, 0xffff

    and-int v17, v17, v18

    goto/16 :goto_5

    .line 118
    .restart local v10    # "access":I
    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v19, v6

    mul-int v18, v18, v19

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    aget-short v17, v17, v18

    const v18, 0xffff

    and-int v17, v17, v18

    move/from16 v11, v17

    .line 119
    .local v11, "index":I
    move-object/from16 v17, v5

    if-eqz v17, :cond_8

    move/from16 v17, v11

    if-nez v17, :cond_9

    .line 120
    :cond_8
    const-string/jumbo v17, "(Anonymous)"

    move-object/from16 v12, v17

    .restart local v12    # "name":Ljava/lang/String;
    goto/16 :goto_6

    .line 123
    .end local v12    # "name":Ljava/lang/String;
    :cond_9
    move-object/from16 v17, v3

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 124
    move-object/from16 v17, v5

    move/from16 v18, v11

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v17

    check-cast v17, Lgnu/bytecode/CpoolUtf8;

    check-cast v17, Lgnu/bytecode/CpoolUtf8;

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v12, v17

    .restart local v12    # "name":Ljava/lang/String;
    goto/16 :goto_6

    .line 133
    .end local v11    # "index":I
    :cond_a
    const-string/jumbo v17, "(Unknown)"

    move-object/from16 v12, v17

    goto/16 :goto_7

    .line 149
    .restart local v13    # "iname":Ljava/lang/String;
    .restart local v14    # "dot":I
    .restart local v15    # "start":I
    :cond_b
    move-object/from16 v17, v3

    const-string/jumbo v18, "member of "

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 150
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 156
    .end local v13    # "iname":Ljava/lang/String;
    .end local v14    # "dot":I
    .end local v15    # "start":I
    :cond_c
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v19, v6

    mul-int v18, v18, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget-short v17, v17, v18

    const v18, 0xffff

    and-int v17, v17, v18

    move/from16 v11, v17

    .line 157
    .restart local v11    # "index":I
    move/from16 v17, v11

    if-nez v17, :cond_d

    .line 158
    move-object/from16 v17, v3

    const-string/jumbo v18, "not a member"

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 161
    :cond_d
    move-object/from16 v17, v3

    const-string/jumbo v18, "member of "

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 162
    move-object/from16 v17, v5

    move/from16 v18, v11

    const/16 v19, 0x7

    invoke-virtual/range {v17 .. v19}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v17

    move-object/from16 v13, v17

    .line 163
    .local v13, "oentry":Lgnu/bytecode/CpoolEntry;
    move-object/from16 v17, v3

    move-object/from16 v18, v13

    check-cast v18, Lgnu/bytecode/CpoolClass;

    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/CpoolClass;->getStringName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 168
    .end local v7    # "inner_index":I
    .end local v8    # "centry":Lgnu/bytecode/CpoolClass;
    .end local v9    # "clas":Lgnu/bytecode/ClassType;
    .end local v10    # "access":I
    .end local v11    # "index":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "oentry":Lgnu/bytecode/CpoolEntry;
    :cond_e
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/InnerClassesAttr;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/InnerClassesAttr;->count:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 80
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/InnerClassesAttr;->count:I

    if-ge v3, v4, :cond_0

    .line 82
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/InnerClassesAttr;->data:[S

    const/4 v5, 0x4

    move v6, v2

    mul-int/2addr v5, v6

    aget-short v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 83
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/InnerClassesAttr;->data:[S

    const/4 v5, 0x4

    move v6, v2

    mul-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-short v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 84
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/InnerClassesAttr;->data:[S

    const/4 v5, 0x4

    move v6, v2

    mul-int/2addr v5, v6

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    aget-short v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 85
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/InnerClassesAttr;->data:[S

    const/4 v5, 0x4

    move v6, v2

    mul-int/2addr v5, v6

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    aget-short v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method
