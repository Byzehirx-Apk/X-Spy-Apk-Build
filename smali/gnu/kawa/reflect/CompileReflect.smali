.class public Lgnu/kawa/reflect/CompileReflect;
.super Ljava/lang/Object;
.source "CompileReflect.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/CompileReflect;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I
    .locals 8

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v3, v0

    instance-of v3, v3, Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/Type;->isExisting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 21
    const/4 v3, 0x1

    move v0, v3

    .line 29
    .end local v0    # "type":Lgnu/bytecode/Type;
    :goto_0
    return v0

    .line 23
    .restart local v0    # "type":Lgnu/bytecode/Type;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 25
    .local v2, "ex":Ljava/lang/Exception;
    move-object v3, v1

    const/16 v4, 0x65

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 26
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 29
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public static inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;
    .locals 15

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move/from16 v1, p1

    .local v1, "carg":I
    move-object/from16 v2, p2

    .local v2, "walker":Lgnu/expr/InlineCalls;
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v9

    move-object v3, v9

    .line 39
    .local v3, "comp":Lgnu/expr/Compilation;
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v9

    move-object v4, v9

    .line 40
    .local v4, "language":Lgnu/expr/Language;
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v9

    move-object v5, v9

    .line 41
    .local v5, "args":[Lgnu/expr/Expression;
    move-object v9, v5

    array-length v9, v9

    move v10, v1

    if-le v9, v10, :cond_1

    .line 43
    move-object v9, v4

    move-object v10, v5

    move v11, v1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v9

    move-object v6, v9

    .line 44
    .local v6, "type":Lgnu/bytecode/Type;
    move-object v9, v6

    instance-of v9, v9, Lgnu/bytecode/Type;

    if-nez v9, :cond_0

    .line 45
    move-object v9, v0

    move-object v0, v9

    .line 54
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    .end local v6    # "type":Lgnu/bytecode/Type;
    :goto_0
    return-object v0

    .line 46
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    .restart local v6    # "type":Lgnu/bytecode/Type;
    :cond_0
    move-object v9, v6

    move-object v10, v3

    invoke-static {v9, v10}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v9

    .line 47
    move-object v9, v5

    array-length v9, v9

    new-array v9, v9, [Lgnu/expr/Expression;

    move-object v7, v9

    .line 48
    .local v7, "nargs":[Lgnu/expr/Expression;
    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v7

    const/4 v12, 0x0

    move-object v13, v5

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    move-object v9, v7

    move v10, v1

    new-instance v11, Lgnu/expr/QuoteExp;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v6

    invoke-direct {v12, v13}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v11, v9, v10

    .line 50
    new-instance v9, Lgnu/expr/ApplyExp;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v11

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v8, v9

    .line 51
    .local v8, "nexp":Lgnu/expr/ApplyExp;
    move-object v9, v8

    move-object v10, v0

    invoke-virtual {v9, v10}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v9

    .line 52
    move-object v9, v8

    move-object v0, v9

    goto :goto_0

    .line 54
    .end local v6    # "type":Lgnu/bytecode/Type;
    .end local v7    # "nargs":[Lgnu/expr/Expression;
    .end local v8    # "nexp":Lgnu/expr/ApplyExp;
    :cond_1
    move-object v9, v0

    move-object v0, v9

    goto :goto_0
.end method

.method public static validateApplyInstanceOf(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 13

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 61
    move-object v10, v0

    const/4 v11, 0x1

    move-object v12, v1

    invoke-static {v10, v11, v12}, Lgnu/kawa/reflect/CompileReflect;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object v10

    move-object v0, v10

    .line 62
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v10

    move-object v4, v10

    .line 63
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v10, v4

    array-length v10, v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 65
    move-object v10, v4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    move-object v5, v10

    .line 66
    .local v5, "value":Lgnu/expr/Expression;
    move-object v10, v4

    const/4 v11, 0x1

    aget-object v10, v10, v11

    move-object v6, v10

    .line 67
    .local v6, "texp":Lgnu/expr/Expression;
    move-object v10, v6

    instance-of v10, v10, Lgnu/expr/QuoteExp;

    if-eqz v10, :cond_5

    .line 69
    move-object v10, v6

    check-cast v10, Lgnu/expr/QuoteExp;

    invoke-virtual {v10}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    .line 70
    .local v7, "t":Ljava/lang/Object;
    move-object v10, v7

    instance-of v10, v10, Lgnu/bytecode/Type;

    if-eqz v10, :cond_5

    .line 72
    move-object v10, v7

    check-cast v10, Lgnu/bytecode/Type;

    move-object v8, v10

    .line 73
    .local v8, "type":Lgnu/bytecode/Type;
    move-object v10, v8

    instance-of v10, v10, Lgnu/bytecode/PrimType;

    if-eqz v10, :cond_0

    .line 74
    move-object v10, v8

    check-cast v10, Lgnu/bytecode/PrimType;

    invoke-virtual {v10}, Lgnu/bytecode/PrimType;->boxedType()Lgnu/bytecode/ClassType;

    move-result-object v10

    move-object v8, v10

    .line 75
    :cond_0
    move-object v10, v5

    instance-of v10, v10, Lgnu/expr/QuoteExp;

    if-eqz v10, :cond_2

    .line 76
    move-object v10, v8

    move-object v11, v5

    check-cast v11, Lgnu/expr/QuoteExp;

    invoke-virtual {v11}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    :goto_0
    move-object v0, v10

    .line 89
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    .end local v5    # "value":Lgnu/expr/Expression;
    .end local v6    # "texp":Lgnu/expr/Expression;
    .end local v7    # "t":Ljava/lang/Object;
    .end local v8    # "type":Lgnu/bytecode/Type;
    :goto_1
    return-object v0

    .line 76
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    .restart local v5    # "value":Lgnu/expr/Expression;
    .restart local v6    # "texp":Lgnu/expr/Expression;
    .restart local v7    # "t":Ljava/lang/Object;
    .restart local v8    # "type":Lgnu/bytecode/Type;
    :cond_1
    sget-object v10, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 78
    :cond_2
    move-object v10, v5

    invoke-virtual {v10}, Lgnu/expr/Expression;->side_effects()Z

    move-result v10

    if-nez v10, :cond_5

    .line 80
    move-object v10, v8

    move-object v11, v5

    invoke-virtual {v11}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v10

    move v9, v10

    .line 81
    .local v9, "comp":I
    move v10, v9

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    move v10, v9

    if-nez v10, :cond_4

    .line 82
    :cond_3
    sget-object v10, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    move-object v0, v10

    goto :goto_1

    .line 83
    :cond_4
    move v10, v9

    const/4 v11, -0x3

    if-ne v10, v11, :cond_5

    .line 84
    sget-object v10, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    move-object v0, v10

    goto :goto_1

    .line 89
    .end local v5    # "value":Lgnu/expr/Expression;
    .end local v6    # "texp":Lgnu/expr/Expression;
    .end local v7    # "t":Ljava/lang/Object;
    .end local v8    # "type":Lgnu/bytecode/Type;
    .end local v9    # "comp":I
    :cond_5
    move-object v10, v0

    move-object v0, v10

    goto :goto_1
.end method

.method public static validateApplySlotGet(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 32

    .prologue
    .line 95
    move-object/from16 v2, p0

    .local v2, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v3, p1

    .local v3, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v4, p2

    .local v4, "required":Lgnu/bytecode/Type;
    move-object/from16 v5, p3

    .local v5, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 96
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v23

    move-object/from16 v6, v23

    .line 97
    .local v6, "comp":Lgnu/expr/Compilation;
    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v23

    move-object/from16 v7, v23

    .line 98
    .local v7, "language":Lgnu/expr/Language;
    move-object/from16 v23, v5

    check-cast v23, Lgnu/kawa/reflect/SlotGet;

    move-object/from16 v8, v23

    .line 99
    .local v8, "gproc":Lgnu/kawa/reflect/SlotGet;
    move-object/from16 v23, v8

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    move/from16 v23, v0

    move/from16 v9, v23

    .line 101
    .local v9, "isStatic":Z
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v23

    move-object/from16 v11, v23

    .line 102
    .local v11, "args":[Lgnu/expr/Expression;
    move-object/from16 v23, v11

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v12, v23

    .line 103
    .local v12, "arg0":Lgnu/expr/Expression;
    move-object/from16 v23, v11

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v13, v23

    .line 104
    .local v13, "arg1":Lgnu/expr/Expression;
    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v14, v23

    .line 105
    .local v14, "val1":Ljava/lang/Object;
    const/16 v23, 0x0

    move-object/from16 v15, v23

    .line 106
    .local v15, "name":Ljava/lang/String;
    move-object/from16 v23, v14

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v23, v0

    if-nez v23, :cond_0

    move-object/from16 v23, v14

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/lists/FString;

    move/from16 v23, v0

    if-nez v23, :cond_0

    move-object/from16 v23, v14

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 109
    :cond_0
    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v15, v23

    .line 112
    move/from16 v23, v9

    if-eqz v23, :cond_6

    .line 114
    move-object/from16 v23, v7

    move-object/from16 v24, v12

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v23

    move-object/from16 v10, v23

    .line 115
    .local v10, "type":Lgnu/bytecode/Type;
    move-object/from16 v23, v10

    move-object/from16 v24, v6

    invoke-static/range {v23 .. v24}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v23

    move/from16 v16, v23

    .line 116
    .local v16, "known":I
    move/from16 v23, v16

    if-gez v23, :cond_2

    .line 117
    move-object/from16 v23, v2

    move-object/from16 v2, v23

    .line 203
    .end local v2    # "exp":Lgnu/expr/ApplyExp;
    .end local v10    # "type":Lgnu/bytecode/Type;
    .end local v16    # "known":I
    :goto_0
    return-object v2

    .line 111
    .restart local v2    # "exp":Lgnu/expr/ApplyExp;
    :cond_1
    move-object/from16 v23, v2

    move-object/from16 v2, v23

    goto :goto_0

    .line 118
    .restart local v10    # "type":Lgnu/bytecode/Type;
    .restart local v16    # "known":I
    :cond_2
    const-string/jumbo v23, "class"

    move-object/from16 v24, v15

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 120
    move/from16 v23, v16

    if-lez v23, :cond_3

    .line 121
    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v23

    move-object/from16 v2, v23

    goto :goto_0

    .line 122
    :cond_3
    sget-object v23, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const-string/jumbo v24, "getReflectClass"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v23

    move-object/from16 v17, v23

    .line 124
    .local v17, "method":Lgnu/bytecode/Method;
    new-instance v23, Lgnu/expr/ApplyExp;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    move-object/from16 v25, v17

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v26, v0

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x0

    move-object/from16 v29, v12

    aput-object v29, v27, v28

    invoke-direct/range {v24 .. v26}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v2, v23

    goto :goto_0

    .line 126
    .end local v17    # "method":Lgnu/bytecode/Method;
    :cond_4
    move-object/from16 v23, v10

    if-eqz v23, :cond_5

    .line 128
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v23, v0

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    const/16 v25, 0x0

    new-instance v26, Lgnu/expr/QuoteExp;

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    move-object/from16 v28, v10

    invoke-direct/range {v27 .. v28}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v26, v24, v25

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    const/16 v25, 0x1

    move-object/from16 v26, v13

    aput-object v26, v24, v25

    move-object/from16 v17, v23

    .line 130
    .local v17, "nargs":[Lgnu/expr/Expression;
    new-instance v23, Lgnu/expr/ApplyExp;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v26, v17

    invoke-direct/range {v24 .. v26}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v18, v23

    .line 131
    .local v18, "nexp":Lgnu/expr/ApplyExp;
    move-object/from16 v23, v18

    move-object/from16 v24, v2

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v23

    .line 132
    move-object/from16 v23, v18

    move-object/from16 v2, v23

    .line 134
    .line 137
    .end local v16    # "known":I
    .end local v17    # "nargs":[Lgnu/expr/Expression;
    .end local v18    # "nexp":Lgnu/expr/ApplyExp;
    :cond_5
    :goto_1
    move-object/from16 v23, v10

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 138
    move-object/from16 v23, v2

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 136
    .end local v10    # "type":Lgnu/bytecode/Type;
    :cond_6
    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v23

    move-object/from16 v10, v23

    .restart local v10    # "type":Lgnu/bytecode/Type;
    goto :goto_1

    .line 139
    :cond_7
    move-object/from16 v23, v10

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 141
    move-object/from16 v23, v10

    check-cast v23, Lgnu/bytecode/ObjectType;

    move-object/from16 v16, v23

    .line 142
    .local v16, "ctype":Lgnu/bytecode/ObjectType;
    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v23, v0

    :goto_2
    move-object/from16 v17, v23

    .line 144
    .local v17, "caller":Lgnu/bytecode/ClassType;
    move-object/from16 v23, v8

    move-object/from16 v23, v16

    move-object/from16 v24, v15

    move-object/from16 v25, v17

    invoke-static/range {v23 .. v25}, Lgnu/kawa/reflect/SlotGet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v23

    move-object/from16 v18, v23

    .line 145
    .local v18, "part":Lgnu/bytecode/Member;
    move-object/from16 v23, v18

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/bytecode/Field;

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 147
    move-object/from16 v23, v18

    check-cast v23, Lgnu/bytecode/Field;

    move-object/from16 v19, v23

    .line 148
    .local v19, "field":Lgnu/bytecode/Field;
    move-object/from16 v23, v19

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v23

    move/from16 v20, v23

    .line 149
    .local v20, "modifiers":I
    move/from16 v23, v20

    const/16 v24, 0x8

    and-int/lit8 v23, v23, 0x8

    if-eqz v23, :cond_9

    const/16 v23, 0x1

    :goto_3
    move/from16 v21, v23

    .line 150
    .local v21, "isStaticField":Z
    move/from16 v23, v9

    if-eqz v23, :cond_a

    move/from16 v23, v21

    if-nez v23, :cond_a

    .line 151
    new-instance v23, Lgnu/expr/ErrorExp;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "cannot access non-static field `"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v15

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\' using `"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v6

    invoke-direct/range {v24 .. v26}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 142
    .end local v17    # "caller":Lgnu/bytecode/ClassType;
    .end local v18    # "part":Lgnu/bytecode/Member;
    .end local v19    # "field":Lgnu/bytecode/Field;
    .end local v20    # "modifiers":I
    .end local v21    # "isStaticField":Z
    :cond_8
    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v23, v0

    goto/16 :goto_2

    .line 149
    .restart local v17    # "caller":Lgnu/bytecode/ClassType;
    .restart local v18    # "part":Lgnu/bytecode/Member;
    .restart local v19    # "field":Lgnu/bytecode/Field;
    .restart local v20    # "modifiers":I
    :cond_9
    const/16 v23, 0x0

    goto :goto_3

    .line 153
    .restart local v21    # "isStaticField":Z
    :cond_a
    move-object/from16 v23, v17

    if-eqz v23, :cond_b

    move-object/from16 v23, v17

    move-object/from16 v24, v19

    move-object/from16 v25, v16

    invoke-virtual/range {v23 .. v25}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 155
    new-instance v23, Lgnu/expr/ErrorExp;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "field "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v19

    invoke-virtual/range {v26 .. v26}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x2e

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v15

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " is not accessible here"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v6

    invoke-direct/range {v24 .. v26}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 157
    .line 172
    .end local v19    # "field":Lgnu/bytecode/Field;
    .end local v20    # "modifiers":I
    .end local v21    # "isStaticField":Z
    :cond_b
    move-object/from16 v23, v18

    if-eqz v23, :cond_e

    .line 174
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v23, v0

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    const/16 v25, 0x0

    move-object/from16 v26, v12

    aput-object v26, v24, v25

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    const/16 v25, 0x1

    new-instance v26, Lgnu/expr/QuoteExp;

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    move-object/from16 v28, v18

    invoke-direct/range {v27 .. v28}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v26, v24, v25

    move-object/from16 v19, v23

    .line 176
    .local v19, "nargs":[Lgnu/expr/Expression;
    new-instance v23, Lgnu/expr/ApplyExp;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v26, v19

    invoke-direct/range {v24 .. v26}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v20, v23

    .line 177
    .local v20, "nexp":Lgnu/expr/ApplyExp;
    move-object/from16 v23, v20

    move-object/from16 v24, v2

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v23

    .line 178
    move-object/from16 v23, v20

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 159
    .end local v19    # "nargs":[Lgnu/expr/Expression;
    .end local v20    # "nexp":Lgnu/expr/ApplyExp;
    :cond_c
    move-object/from16 v23, v18

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/bytecode/Method;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 161
    move-object/from16 v23, v18

    check-cast v23, Lgnu/bytecode/Method;

    move-object/from16 v19, v23

    .line 162
    .local v19, "method":Lgnu/bytecode/Method;
    move-object/from16 v23, v19

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v23

    move-object/from16 v20, v23

    .line 163
    .local v20, "dtype":Lgnu/bytecode/ClassType;
    move-object/from16 v23, v19

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v23

    move/from16 v21, v23

    .line 164
    .local v21, "modifiers":I
    move-object/from16 v23, v19

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v23

    move/from16 v22, v23

    .line 165
    .local v22, "isStaticMethod":Z
    move/from16 v23, v9

    if-eqz v23, :cond_d

    move/from16 v23, v22

    if-nez v23, :cond_d

    .line 166
    new-instance v23, Lgnu/expr/ErrorExp;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "cannot call non-static getter method `"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v15

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\' using `"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v6

    invoke-direct/range {v24 .. v26}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 168
    :cond_d
    move-object/from16 v23, v17

    if-eqz v23, :cond_b

    move-object/from16 v23, v17

    move-object/from16 v24, v20

    move-object/from16 v25, v16

    move/from16 v26, v21

    invoke-virtual/range {v23 .. v26}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z

    move-result v23

    if-nez v23, :cond_b

    .line 169
    new-instance v23, Lgnu/expr/ErrorExp;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "method "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v19

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " is not accessible here"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v6

    invoke-direct/range {v24 .. v26}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 180
    .end local v19    # "method":Lgnu/bytecode/Method;
    .end local v20    # "dtype":Lgnu/bytecode/ClassType;
    .end local v21    # "modifiers":I
    .end local v22    # "isStaticMethod":Z
    :cond_e
    move-object/from16 v23, v10

    sget-object v24, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_f

    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Compilation;->warnUnknownMember()Z

    move-result v23

    if-eqz v23, :cond_f

    .line 181
    move-object/from16 v23, v6

    const/16 v24, 0x65

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "no slot `"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v15

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\' in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v16

    invoke-virtual/range {v26 .. v26}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 184
    .end local v16    # "ctype":Lgnu/bytecode/ObjectType;
    .end local v17    # "caller":Lgnu/bytecode/ClassType;
    .end local v18    # "part":Lgnu/bytecode/Member;
    :cond_f
    move-object/from16 v23, v15

    invoke-static/range {v23 .. v23}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, v23

    .line 187
    .local v16, "fname":Ljava/lang/String;
    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, v23

    .line 188
    const-string/jumbo v23, "get"

    move-object/from16 v24, v15

    invoke-static/range {v23 .. v24}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v23

    .line 189
    .local v17, "getName":Ljava/lang/String;
    const-string/jumbo v23, "is"

    move-object/from16 v24, v15

    invoke-static/range {v23 .. v24}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v18, v23

    .line 190
    .local v18, "isName":Ljava/lang/String;
    new-instance v23, Lgnu/expr/ApplyExp;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    sget-object v25, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    const/16 v26, 0x9

    move/from16 v0, v26

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v26, v0

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x0

    const-string/jumbo v29, "gnu.kawa.reflect.SlotGet"

    invoke-static/range {v29 .. v29}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x1

    const-string/jumbo v29, "getSlotValue"

    invoke-static/range {v29 .. v29}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x2

    move/from16 v29, v9

    if-eqz v29, :cond_10

    sget-object v29, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    :goto_4
    aput-object v29, v27, v28

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x3

    move-object/from16 v29, v11

    const/16 v30, 0x0

    aget-object v29, v29, v30

    aput-object v29, v27, v28

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x4

    move-object/from16 v29, v15

    invoke-static/range {v29 .. v29}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x5

    move-object/from16 v29, v16

    invoke-static/range {v29 .. v29}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x6

    move-object/from16 v29, v17

    invoke-static/range {v29 .. v29}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x7

    move-object/from16 v29, v18

    invoke-static/range {v29 .. v29}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x8

    move-object/from16 v29, v7

    invoke-static/range {v29 .. v29}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-direct/range {v24 .. v26}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v19, v23

    .line 202
    .local v19, "nexp":Lgnu/expr/ApplyExp;
    move-object/from16 v23, v19

    move-object/from16 v24, v2

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v23

    .line 203
    move-object/from16 v23, v3

    move-object/from16 v24, v19

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v23

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 190
    .end local v19    # "nexp":Lgnu/expr/ApplyExp;
    :cond_10
    sget-object v29, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    goto :goto_4
.end method

.method public static validateApplySlotSet(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 9

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 210
    move-object v6, v3

    check-cast v6, Lgnu/kawa/reflect/SlotSet;

    move-object v4, v6

    .line 215
    .local v4, "sproc":Lgnu/kawa/reflect/SlotSet;
    move-object v6, v4

    iget-boolean v6, v6, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    move v5, v6

    .line 216
    .local v5, "isStatic":Z
    move v6, v5

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v6

    iget-boolean v6, v6, Lgnu/expr/Compilation;->mustCompile:Z

    if-eqz v6, :cond_0

    .line 217
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v1

    invoke-static {v6, v7, v8}, Lgnu/kawa/reflect/CompileReflect;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object v6

    move-object v0, v6

    .line 218
    :cond_0
    move-object v6, v0

    move-object v7, v4

    iget-boolean v7, v7, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    if-eqz v7, :cond_1

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 221
    move-object v6, v0

    move-object v0, v6

    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    return-object v0

    .line 218
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :cond_1
    sget-object v7, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    goto :goto_0
.end method

.method public static validateApplyTypeSwitch(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 9

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 228
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    move-object v4, v7

    .line 229
    .local v4, "args":[Lgnu/expr/Expression;
    const/4 v7, 0x1

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move-object v8, v4

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 231
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    instance-of v7, v7, Lgnu/expr/LambdaExp;

    if-eqz v7, :cond_0

    .line 233
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    check-cast v7, Lgnu/expr/LambdaExp;

    move-object v6, v7

    .line 234
    .local v6, "lexp":Lgnu/expr/LambdaExp;
    move-object v7, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 235
    move-object v7, v6

    move-object v8, v0

    iput-object v8, v7, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 236
    move-object v7, v6

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v8

    iput-object v8, v7, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 229
    .end local v6    # "lexp":Lgnu/expr/LambdaExp;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 239
    :cond_1
    move-object v7, v0

    move-object v0, v7

    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    return-object v0
.end method
