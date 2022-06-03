.class public Lgnu/kawa/reflect/ClassMethods;
.super Lgnu/mapping/Procedure2;
.source "ClassMethods.java"


# static fields
.field public static final classMethods:Lgnu/kawa/reflect/ClassMethods;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lgnu/kawa/reflect/ClassMethods;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/reflect/ClassMethods;-><init>()V

    sput-object v0, Lgnu/kawa/reflect/ClassMethods;->classMethods:Lgnu/kawa/reflect/ClassMethods;

    .line 12
    sget-object v0, Lgnu/kawa/reflect/ClassMethods;->classMethods:Lgnu/kawa/reflect/ClassMethods;

    const-string/jumbo v1, "class-methods"

    invoke-virtual {v0, v1}, Lgnu/kawa/reflect/ClassMethods;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ClassMethods;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;
    .locals 15

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "dtype":Lgnu/bytecode/ObjectType;
    move-object/from16 v1, p1

    .local v1, "mname":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "mode":C
    move-object/from16 v3, p3

    .local v3, "language":Lgnu/expr/Language;
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    const/4 v12, 0x0

    move-object v13, v3

    invoke-static {v9, v10, v11, v12, v13}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v9

    move-object v4, v9

    .line 230
    .local v4, "methods":[Lgnu/expr/PrimProcedure;
    const/4 v9, 0x0

    move-object v5, v9

    .line 231
    .local v5, "gproc":Lgnu/expr/GenericProc;
    const/4 v9, 0x0

    move-object v6, v9

    .line 232
    .local v6, "pproc":Lgnu/expr/PrimProcedure;
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_0
    move v9, v7

    move-object v10, v4

    array-length v10, v10

    if-ge v9, v10, :cond_2

    .line 234
    move-object v9, v4

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 235
    .local v8, "cur":Lgnu/expr/PrimProcedure;
    move-object v9, v6

    if-eqz v9, :cond_0

    move-object v9, v5

    if-nez v9, :cond_0

    .line 237
    new-instance v9, Lgnu/expr/GenericProc;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lgnu/expr/GenericProc;-><init>()V

    move-object v5, v9

    .line 238
    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v9, v10}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    .line 240
    :cond_0
    move-object v9, v8

    move-object v6, v9

    .line 241
    move-object v9, v5

    if-eqz v9, :cond_1

    .line 242
    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v9, v10}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    .line 232
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 244
    .end local v8    # "cur":Lgnu/expr/PrimProcedure;
    :cond_2
    move-object v9, v5

    if-eqz v9, :cond_3

    .line 246
    move-object v9, v5

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v0

    invoke-virtual {v11}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/expr/GenericProc;->setName(Ljava/lang/String;)V

    .line 247
    move-object v9, v5

    move-object v0, v9

    .line 249
    .end local v0    # "dtype":Lgnu/bytecode/ObjectType;
    :goto_1
    return-object v0

    .restart local v0    # "dtype":Lgnu/bytecode/ObjectType;
    :cond_3
    move-object v9, v6

    move-object v0, v9

    goto :goto_1
.end method

.method public static apply(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/MethodProc;
    .locals 12

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "thisProc":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "arg0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v6, v1

    instance-of v6, v6, Ljava/lang/Class;

    if-eqz v6, :cond_0

    .line 31
    move-object v6, v1

    check-cast v6, Ljava/lang/Class;

    invoke-static {v6}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    move-object v1, v6

    .line 32
    .end local v1    # "arg0":Ljava/lang/Object;
    :cond_0
    move-object v6, v1

    instance-of v6, v6, Lgnu/bytecode/ClassType;

    if-eqz v6, :cond_3

    .line 33
    move-object v6, v1

    check-cast v6, Lgnu/bytecode/ClassType;

    move-object v3, v6

    .line 39
    .local v3, "dtype":Lgnu/bytecode/ClassType;
    :goto_0
    move-object v6, v2

    instance-of v6, v6, Ljava/lang/String;

    if-nez v6, :cond_1

    move-object v6, v2

    instance-of v6, v6, Lgnu/lists/FString;

    if-nez v6, :cond_1

    move-object v6, v2

    instance-of v6, v6, Lgnu/mapping/Symbol;

    if-eqz v6, :cond_6

    .line 41
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 44
    .local v4, "mname":Ljava/lang/String;
    const-string/jumbo v6, "<init>"

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 45
    move-object v6, v4

    invoke-static {v6}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 46
    :cond_2
    move-object v6, v3

    move-object v7, v4

    const/4 v8, 0x0

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v6

    move-object v5, v6

    .line 47
    .local v5, "result":Lgnu/mapping/MethodProc;
    move-object v6, v5

    if-nez v6, :cond_7

    .line 48
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "no applicable method named `"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 34
    .end local v3    # "dtype":Lgnu/bytecode/ClassType;
    .end local v4    # "mname":Ljava/lang/String;
    .end local v5    # "result":Lgnu/mapping/MethodProc;
    :cond_3
    move-object v6, v1

    instance-of v6, v6, Ljava/lang/String;

    if-nez v6, :cond_4

    move-object v6, v1

    instance-of v6, v6, Lgnu/lists/FString;

    if-nez v6, :cond_4

    move-object v6, v1

    instance-of v6, v6, Lgnu/mapping/Symbol;

    if-eqz v6, :cond_5

    .line 36
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    move-object v3, v6

    .restart local v3    # "dtype":Lgnu/bytecode/ClassType;
    goto :goto_0

    .line 38
    .end local v3    # "dtype":Lgnu/bytecode/ClassType;
    :cond_5
    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw v6

    .line 43
    .restart local v3    # "dtype":Lgnu/bytecode/ClassType;
    :cond_6
    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw v6

    .line 50
    .restart local v4    # "mname":Ljava/lang/String;
    .restart local v5    # "result":Lgnu/mapping/MethodProc;
    :cond_7
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "thisProc":Lgnu/mapping/Procedure;
    return-object v0
.end method

.method static checkName(Lgnu/expr/Expression;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object v2, v0

    instance-of v2, v2, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_3

    .line 283
    move-object v2, v0

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 284
    .local v1, "name":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/lists/FString;

    if-nez v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 285
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 291
    .end local v0    # "exp":Lgnu/expr/Expression;
    :goto_0
    return-object v0

    .line 286
    .restart local v0    # "exp":Lgnu/expr/Expression;
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_2

    .line 287
    move-object v2, v1

    check-cast v2, Lgnu/mapping/Symbol;

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 289
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 291
    .end local v1    # "name":Ljava/lang/Object;
    :cond_3
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method static checkName(Lgnu/expr/Expression;Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move v1, p1

    .local v1, "reversible":Z
    move-object v4, v0

    instance-of v4, v4, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_4

    .line 260
    move-object v4, v0

    check-cast v4, Lgnu/expr/QuoteExp;

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 262
    .local v2, "name":Ljava/lang/Object;
    move-object v4, v2

    instance-of v4, v4, Lgnu/lists/FString;

    if-nez v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 263
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 268
    .local v3, "nam":Ljava/lang/String;
    :goto_0
    move-object v4, v3

    invoke-static {v4}, Lgnu/expr/Compilation;->isValidJavaName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 269
    move-object v4, v3

    move-object v0, v4

    .line 272
    .end local v0    # "exp":Lgnu/expr/Expression;
    .end local v2    # "name":Ljava/lang/Object;
    .end local v3    # "nam":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 264
    .restart local v0    # "exp":Lgnu/expr/Expression;
    .restart local v2    # "name":Ljava/lang/Object;
    :cond_1
    move-object v4, v2

    instance-of v4, v4, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_2

    .line 265
    move-object v4, v2

    check-cast v4, Lgnu/mapping/Symbol;

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "nam":Ljava/lang/String;
    goto :goto_0

    .line 267
    .end local v3    # "nam":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1

    .line 270
    .restart local v3    # "nam":Ljava/lang/String;
    :cond_3
    move-object v4, v3

    move v5, v1

    invoke-static {v4, v5}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 272
    .end local v2    # "name":Ljava/lang/Object;
    .end local v3    # "nam":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public static getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;
    .locals 25

    .prologue
    .line 100
    move-object/from16 v2, p0

    .local v2, "dtype":Lgnu/bytecode/ObjectType;
    move-object/from16 v3, p1

    .local v3, "mname":Ljava/lang/String;
    move/from16 v4, p2

    .local v4, "mode":C
    move-object/from16 v5, p3

    .local v5, "caller":Lgnu/bytecode/ClassType;
    move-object/from16 v6, p4

    .local v6, "language":Lgnu/expr/Language;
    move-object/from16 v16, v2

    sget-object v17, Lgnu/bytecode/Type;->tostring_type:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 101
    sget-object v16, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    move-object/from16 v2, v16

    .line 102
    :cond_0
    new-instance v16, Lgnu/kawa/reflect/MethodFilter;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move-object/from16 v18, v3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v5

    move/from16 v22, v4

    const/16 v23, 0x50

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/16 v22, 0x0

    :goto_0
    invoke-direct/range {v17 .. v22}, Lgnu/kawa/reflect/MethodFilter;-><init>(Ljava/lang/String;IILgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;)V

    move-object/from16 v7, v16

    .line 104
    .local v7, "filter":Lgnu/kawa/reflect/MethodFilter;
    move/from16 v16, v4

    const/16 v17, 0x50

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const-string/jumbo v16, "<init>"

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    :cond_1
    const/16 v16, 0x1

    :goto_1
    move/from16 v8, v16

    .line 105
    .local v8, "named_class_only":Z
    new-instance v16, Ljava/util/Vector;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    move-object/from16 v9, v16

    .line 106
    .local v9, "methods":Ljava/util/Vector;
    move-object/from16 v16, v2

    move-object/from16 v17, v7

    move/from16 v18, v8

    if-eqz v18, :cond_7

    const/16 v18, 0x0

    :goto_2
    move-object/from16 v19, v9

    invoke-virtual/range {v16 .. v19}, Lgnu/bytecode/ObjectType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    move-result v16

    .line 107
    move/from16 v16, v8

    if-nez v16, :cond_3

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v16, v2

    check-cast v16, Lgnu/bytecode/ClassType;

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 110
    :cond_2
    sget-object v16, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object/from16 v17, v7

    const/16 v18, 0x0

    move-object/from16 v19, v9

    invoke-virtual/range {v16 .. v19}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    move-result v16

    .line 111
    :cond_3
    move/from16 v16, v8

    if-eqz v16, :cond_8

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v16

    :goto_3
    move/from16 v10, v16

    .line 114
    .local v10, "mlength":I
    move/from16 v16, v10

    move/from16 v0, v16

    new-array v0, v0, [Lgnu/expr/PrimProcedure;

    move-object/from16 v16, v0

    move-object/from16 v11, v16

    .line 115
    .local v11, "result":[Lgnu/expr/PrimProcedure;
    const/16 v16, 0x0

    move/from16 v12, v16

    .line 116
    .local v12, "count":I
    move/from16 v16, v10

    move/from16 v13, v16

    .local v13, "i":I
    :goto_4
    add-int/lit8 v13, v13, -0x1

    move/from16 v16, v13

    if-ltz v16, :cond_9

    .line 118
    move-object/from16 v16, v9

    move/from16 v17, v13

    invoke-virtual/range {v16 .. v17}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/bytecode/Method;

    move-object/from16 v14, v16

    .line 119
    .local v14, "method":Lgnu/bytecode/Method;
    move/from16 v16, v8

    if-nez v16, :cond_4

    move-object/from16 v16, v14

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v16

    move-object/from16 v17, v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 121
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/ObjectType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v16

    move-object/from16 v15, v16

    .line 122
    .local v15, "itype":Lgnu/bytecode/Type;
    move-object/from16 v16, v15

    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 126
    new-instance v16, Lgnu/bytecode/Method;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    check-cast v19, Lgnu/bytecode/ClassType;

    invoke-direct/range {v17 .. v19}, Lgnu/bytecode/Method;-><init>(Lgnu/bytecode/Method;Lgnu/bytecode/ClassType;)V

    move-object/from16 v14, v16

    .line 129
    .end local v15    # "itype":Lgnu/bytecode/Type;
    :cond_4
    new-instance v16, Lgnu/expr/PrimProcedure;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move-object/from16 v18, v14

    move/from16 v19, v4

    move-object/from16 v20, v6

    invoke-direct/range {v17 .. v20}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;CLgnu/expr/Language;)V

    move-object/from16 v15, v16

    .line 130
    .local v15, "pproc":Lgnu/expr/PrimProcedure;
    move-object/from16 v16, v11

    move/from16 v17, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v18, v15

    aput-object v18, v16, v17

    .line 131
    goto :goto_4

    .line 102
    .end local v7    # "filter":Lgnu/kawa/reflect/MethodFilter;
    .end local v8    # "named_class_only":Z
    .end local v9    # "methods":Ljava/util/Vector;
    .end local v10    # "mlength":I
    .end local v11    # "result":[Lgnu/expr/PrimProcedure;
    .end local v12    # "count":I
    .end local v13    # "i":I
    .end local v14    # "method":Lgnu/bytecode/Method;
    .end local v15    # "pproc":Lgnu/expr/PrimProcedure;
    :cond_5
    move-object/from16 v22, v2

    goto/16 :goto_0

    .line 104
    .restart local v7    # "filter":Lgnu/kawa/reflect/MethodFilter;
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 106
    .restart local v8    # "named_class_only":Z
    .restart local v9    # "methods":Ljava/util/Vector;
    :cond_7
    const/16 v18, 0x2

    goto/16 :goto_2

    .line 111
    :cond_8
    move-object/from16 v16, v9

    invoke-static/range {v16 .. v16}, Lgnu/kawa/reflect/ClassMethods;->removeRedundantMethods(Ljava/util/Vector;)I

    move-result v16

    goto/16 :goto_3

    .line 132
    .restart local v10    # "mlength":I
    .restart local v11    # "result":[Lgnu/expr/PrimProcedure;
    .restart local v12    # "count":I
    .restart local v13    # "i":I
    :cond_9
    move-object/from16 v16, v11

    move-object/from16 v2, v16

    .end local v2    # "dtype":Lgnu/bytecode/ObjectType;
    return-object v2
.end method

.method private static removeRedundantMethods(Ljava/util/Vector;)I
    .locals 15

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "methods":Ljava/util/Vector;
    move-object v11, v0

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    move v1, v11

    .line 58
    .local v1, "mlength":I
    const/4 v11, 0x1

    move v2, v11

    .local v2, "i":I
    :goto_0
    move v11, v2

    move v12, v1

    if-ge v11, v12, :cond_6

    .line 60
    move-object v11, v0

    move v12, v2

    invoke-virtual {v11, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/bytecode/Method;

    move-object v3, v11

    .line 61
    .local v3, "method1":Lgnu/bytecode/Method;
    move-object v11, v3

    invoke-virtual {v11}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v11

    move-object v4, v11

    .line 62
    .local v4, "class1":Lgnu/bytecode/ClassType;
    move-object v11, v3

    invoke-virtual {v11}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v11

    move-object v5, v11

    .line 63
    .local v5, "types1":[Lgnu/bytecode/Type;
    move-object v11, v5

    array-length v11, v11

    move v6, v11

    .line 64
    .local v6, "tlen":I
    const/4 v11, 0x0

    move v7, v11

    .local v7, "j":I
    :goto_1
    move v11, v7

    move v12, v2

    if-ge v11, v12, :cond_5

    .line 66
    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/bytecode/Method;

    move-object v8, v11

    .line 67
    .local v8, "method2":Lgnu/bytecode/Method;
    move-object v11, v8

    invoke-virtual {v11}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v11

    move-object v9, v11

    .line 68
    .local v9, "types2":[Lgnu/bytecode/Type;
    move v11, v6

    move-object v12, v9

    array-length v12, v12

    if-eq v11, v12, :cond_0

    .line 69
    .line 64
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 71
    :cond_0
    move v11, v6

    move v10, v11

    .local v10, "k":I
    :cond_1
    add-int/lit8 v10, v10, -0x1

    move v11, v10

    if-ltz v11, :cond_2

    .line 73
    move-object v11, v5

    move v12, v10

    aget-object v11, v11, v12

    move-object v12, v9

    move v13, v10

    aget-object v12, v12, v13

    if-eq v11, v12, :cond_1

    .line 74
    .line 76
    :cond_2
    move v11, v10

    if-ltz v11, :cond_3

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    move-object v11, v4

    move-object v12, v8

    invoke-virtual {v12}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 79
    move-object v11, v0

    move-object v12, v3

    move v13, v7

    invoke-virtual {v11, v12, v13}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 80
    :cond_4
    move-object v11, v0

    move-object v12, v0

    move v13, v1

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    move v13, v2

    invoke-virtual {v11, v12, v13}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 81
    add-int/lit8 v1, v1, -0x1

    .line 83
    goto :goto_0

    .line 85
    .end local v8    # "method2":Lgnu/bytecode/Method;
    .end local v9    # "types2":[Lgnu/bytecode/Type;
    .end local v10    # "k":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 86
    goto :goto_0

    .line 87
    .end local v3    # "method1":Lgnu/bytecode/Method;
    .end local v4    # "class1":Lgnu/bytecode/ClassType;
    .end local v5    # "types1":[Lgnu/bytecode/Type;
    .end local v6    # "tlen":I
    .end local v7    # "j":I
    :cond_6
    move v11, v1

    move v0, v11

    .end local v0    # "methods":Ljava/util/Vector;
    return v0
.end method

.method public static selectApplicable([Lgnu/expr/PrimProcedure;I)I
    .locals 16

    .prologue
    .line 184
    move-object/from16 v0, p0

    .local v0, "methods":[Lgnu/expr/PrimProcedure;
    move/from16 v1, p1

    .local v1, "numArgs":I
    move-object v12, v0

    array-length v12, v12

    move v2, v12

    .line 185
    .local v2, "limit":I
    const/4 v12, 0x0

    move v3, v12

    .line 186
    .local v3, "numTooManyArgs":I
    const/4 v12, 0x0

    move v4, v12

    .line 187
    .local v4, "numTooFewArgs":I
    const/4 v12, 0x0

    move v5, v12

    .line 188
    .local v5, "numOk":I
    const/4 v12, 0x0

    move v6, v12

    .local v6, "i":I
    :goto_0
    move v12, v6

    move v13, v2

    if-ge v12, v13, :cond_3

    .line 190
    move-object v12, v0

    move v13, v6

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lgnu/expr/PrimProcedure;->numArgs()I

    move-result v12

    move v7, v12

    .line 191
    .local v7, "num":I
    move v12, v7

    invoke-static {v12}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v12

    move v8, v12

    .line 192
    .local v8, "min":I
    move v12, v7

    invoke-static {v12}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v12

    move v9, v12

    .line 193
    .local v9, "max":I
    const/4 v12, 0x0

    move v10, v12

    .line 194
    .local v10, "ok":Z
    move v12, v1

    move v13, v8

    if-ge v12, v13, :cond_0

    .line 195
    add-int/lit8 v4, v4, 0x1

    .line 200
    :goto_1
    move v12, v10

    if-eqz v12, :cond_2

    .line 202
    add-int/lit8 v5, v5, 0x1

    .line 203
    add-int/lit8 v6, v6, 0x1

    .line 213
    :goto_2
    goto :goto_0

    .line 196
    :cond_0
    move v12, v1

    move v13, v9

    if-le v12, v13, :cond_1

    move v12, v9

    if-ltz v12, :cond_1

    .line 197
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 199
    :cond_1
    const/4 v12, 0x1

    move v10, v12

    goto :goto_1

    .line 208
    :cond_2
    move-object v12, v0

    move v13, v2

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    move-object v11, v12

    .line 209
    .local v11, "tmp":Lgnu/expr/PrimProcedure;
    move-object v12, v0

    move v13, v2

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move-object v14, v0

    move v15, v6

    aget-object v14, v14, v15

    aput-object v14, v12, v13

    .line 210
    move-object v12, v0

    move v13, v6

    move-object v14, v11

    aput-object v14, v12, v13

    .line 211
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 214
    .end local v7    # "num":I
    .end local v8    # "min":I
    .end local v9    # "max":I
    .end local v10    # "ok":Z
    .end local v11    # "tmp":Lgnu/expr/PrimProcedure;
    :cond_3
    move v12, v5

    if-lez v12, :cond_4

    move v12, v5

    :goto_3
    move v0, v12

    .end local v0    # "methods":[Lgnu/expr/PrimProcedure;
    return v0

    .restart local v0    # "methods":[Lgnu/expr/PrimProcedure;
    :cond_4
    move v12, v4

    if-lez v12, :cond_5

    const/high16 v12, -0xf0000

    goto :goto_3

    :cond_5
    move v12, v3

    if-lez v12, :cond_6

    const/high16 v12, -0xe0000

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public static selectApplicable([Lgnu/expr/PrimProcedure;[Lgnu/bytecode/Type;)J
    .locals 12

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "methods":[Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "atypes":[Lgnu/bytecode/Type;
    move-object v8, v0

    array-length v8, v8

    move v2, v8

    .line 147
    .local v2, "limit":I
    const/4 v8, 0x0

    move v3, v8

    .line 148
    .local v3, "numDefApplicable":I
    const/4 v8, 0x0

    move v4, v8

    .line 149
    .local v4, "numPosApplicable":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    move v9, v2

    if-ge v8, v9, :cond_2

    .line 151
    move-object v8, v0

    move v9, v5

    aget-object v8, v8, v9

    move-object v9, v1

    invoke-virtual {v8, v9}, Lgnu/expr/PrimProcedure;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v8

    move v6, v8

    .line 152
    .local v6, "code":I
    move v8, v6

    if-gez v8, :cond_0

    .line 155
    move-object v8, v0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    move-object v7, v8

    .line 156
    .local v7, "tmp":Lgnu/expr/PrimProcedure;
    move-object v8, v0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object v10, v0

    move v11, v5

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 157
    move-object v8, v0

    move v9, v5

    move-object v10, v7

    aput-object v10, v8, v9

    .line 158
    add-int/lit8 v2, v2, -0x1

    .line 174
    .end local v7    # "tmp":Lgnu/expr/PrimProcedure;
    :goto_1
    goto :goto_0

    .line 160
    :cond_0
    move v8, v6

    if-lez v8, :cond_1

    .line 163
    move-object v8, v0

    move v9, v3

    aget-object v8, v8, v9

    move-object v7, v8

    .line 164
    .restart local v7    # "tmp":Lgnu/expr/PrimProcedure;
    move-object v8, v0

    move v9, v3

    move-object v10, v0

    move v11, v5

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 165
    move-object v8, v0

    move v9, v5

    move-object v10, v7

    aput-object v10, v8, v9

    .line 166
    add-int/lit8 v3, v3, 0x1

    .line 167
    add-int/lit8 v5, v5, 0x1

    .line 168
    goto :goto_1

    .line 171
    .end local v7    # "tmp":Lgnu/expr/PrimProcedure;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 172
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 175
    .end local v6    # "code":I
    :cond_2
    move v8, v3

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    move v10, v4

    int-to-long v10, v10

    add-long/2addr v8, v10

    move-wide v0, v8

    .end local v0    # "methods":[Lgnu/expr/PrimProcedure;
    return-wide v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ClassMethods;
    move-object v1, p1

    .local v1, "arg0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/reflect/ClassMethods;
    return-object v0
.end method
