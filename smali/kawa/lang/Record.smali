.class public Lkawa/lang/Record;
.super Ljava/lang/Object;
.source "Record.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Record;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "clas":Ljava/lang/Class;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ClassType;

    move-object v2, v4

    .line 45
    .local v2, "ctype":Lgnu/bytecode/ClassType;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v4

    move-object v3, v4

    .line 46
    .local v3, "fld":Lgnu/bytecode/Field;
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 48
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v4

    const/16 v5, 0x9

    and-int/lit8 v4, v4, 0x9

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 50
    .line 46
    :goto_1
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 51
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "clas":Ljava/lang/Class;
    return-object v0

    .line 55
    .restart local v0    # "clas":Ljava/lang/Class;
    :cond_2
    new-instance v4, Ljava/lang/NoSuchFieldException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/NoSuchFieldException;-><init>()V

    throw v4
.end method

.method public static isRecord(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lkawa/lang/Record;

    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0
.end method

.method public static makeRecordType(Ljava/lang/String;Lgnu/lists/LList;)Lgnu/bytecode/ClassType;
    .locals 19

    .prologue
    .line 171
    move-object/from16 v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "fnames":Lgnu/lists/LList;
    const-string/jumbo v13, "kawa.lang.Record"

    invoke-static {v13}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v13

    move-object v2, v13

    .line 172
    .local v2, "superClass":Lgnu/bytecode/ClassType;
    move-object v13, v0

    invoke-static {v13}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    .line 173
    .local v3, "mangledName":Ljava/lang/String;
    new-instance v13, Lgnu/bytecode/ClassType;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v3

    invoke-direct {v14, v15}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    move-object v4, v13

    .line 174
    .local v4, "clas":Lgnu/bytecode/ClassType;
    move-object v13, v4

    move-object v14, v2

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 175
    move-object v13, v4

    const/16 v14, 0x21

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassType;->setModifiers(I)V

    .line 178
    move-object v13, v4

    const-string/jumbo v14, "<init>"

    sget-object v15, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v16, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v17, 0x1

    invoke-virtual/range {v13 .. v17}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v13

    move-object v5, v13

    .line 180
    .local v5, "constructor":Lgnu/bytecode/Method;
    move-object v13, v2

    const-string/jumbo v14, "<init>"

    sget-object v15, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v16, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v17, 0x1

    invoke-virtual/range {v13 .. v17}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v13

    move-object v6, v13

    .line 183
    .local v6, "superConstructor":Lgnu/bytecode/Method;
    move-object v13, v5

    invoke-virtual {v13}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v13

    move-object v7, v13

    .line 184
    .local v7, "code":Lgnu/bytecode/CodeAttr;
    move-object v13, v7

    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 185
    move-object v13, v7

    move-object v14, v6

    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 186
    move-object v13, v7

    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 187
    move-object v13, v0

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 189
    move-object v13, v4

    const-string/jumbo v14, "getTypeName"

    sget-object v15, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v16, Lgnu/expr/Compilation;->typeString:Lgnu/bytecode/ClassType;

    const/16 v17, 0x1

    invoke-virtual/range {v13 .. v17}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v13

    move-object v8, v13

    .line 191
    .local v8, "meth":Lgnu/bytecode/Method;
    move-object v13, v8

    invoke-virtual {v13}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v13

    move-object v7, v13

    .line 192
    move-object v13, v7

    move-object v14, v0

    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 193
    move-object v13, v7

    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 198
    .end local v8    # "meth":Lgnu/bytecode/Method;
    :cond_0
    :goto_0
    move-object v13, v1

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v13, v14, :cond_1

    .line 200
    move-object v13, v1

    check-cast v13, Lgnu/lists/Pair;

    move-object v9, v13

    .line 201
    .local v9, "pair":Lgnu/lists/Pair;
    move-object v13, v9

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 203
    .local v10, "fname":Ljava/lang/String;
    move-object v13, v4

    move-object v14, v10

    invoke-static {v14}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v13

    move-object v8, v13

    .line 205
    .local v8, "fld":Lgnu/bytecode/Field;
    move-object v13, v8

    move-object v14, v10

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lgnu/bytecode/Field;->setSourceName(Ljava/lang/String;)V

    .line 206
    move-object v13, v9

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/lists/LList;

    move-object v1, v13

    .line 207
    goto :goto_0

    .line 215
    .end local v8    # "fld":Lgnu/bytecode/Field;
    .end local v9    # "pair":Lgnu/lists/Pair;
    .end local v10    # "fname":Ljava/lang/String;
    :cond_1
    const/4 v13, 0x1

    new-array v13, v13, [[B

    move-object v9, v13

    .line 216
    .local v9, "arrays":[[B
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object v10, v13

    .line 217
    .local v10, "names":[Ljava/lang/String;
    move-object v13, v10

    const/4 v14, 0x0

    move-object v15, v3

    aput-object v15, v13, v14

    .line 218
    move-object v13, v9

    const/4 v14, 0x0

    move-object v15, v4

    invoke-virtual {v15}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v15

    aput-object v15, v13, v14

    .line 219
    new-instance v13, Lgnu/bytecode/ArrayClassLoader;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v10

    move-object/from16 v16, v9

    invoke-direct/range {v14 .. v16}, Lgnu/bytecode/ArrayClassLoader;-><init>([Ljava/lang/String;[[B)V

    move-object v11, v13

    .line 222
    .local v11, "loader":Lgnu/bytecode/ArrayClassLoader;
    move-object v13, v11

    move-object v14, v3

    :try_start_0
    invoke-virtual {v13, v14}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    move-object v12, v13

    .line 223
    .local v12, "reflectClass":Ljava/lang/Class;
    move-object v13, v12

    move-object v14, v4

    invoke-static {v13, v14}, Lgnu/bytecode/Type;->registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    move-object v13, v4

    move-object v0, v13

    .end local v0    # "name":Ljava/lang/String;
    return-object v0

    .line 226
    .end local v12    # "reflectClass":Ljava/lang/Class;
    .restart local v0    # "name":Ljava/lang/String;
    :catch_0
    move-exception v13

    move-object v12, v13

    .line 228
    .local v12, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v13, Ljava/lang/InternalError;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v12

    invoke-virtual {v15}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method public static set1(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "record":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    .line 86
    .local v3, "clas":Ljava/lang/Class;
    move-object v6, v3

    move-object v7, v1

    :try_start_0
    invoke-static {v6, v7}, Lkawa/lang/Record;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v4, v6

    .line 87
    .local v4, "fld":Ljava/lang/reflect/Field;
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 88
    .local v5, "old":Ljava/lang/Object;
    move-object v6, v4

    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "record":Ljava/lang/Object;
    return-object v0

    .line 91
    .end local v4    # "fld":Ljava/lang/reflect/Field;
    .end local v5    # "old":Ljava/lang/Object;
    .restart local v0    # "record":Ljava/lang/Object;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 94
    .local v4, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v6, Lkawa/lang/GenericError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "no such field "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 96
    .end local v4    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 98
    .local v4, "ex":Ljava/lang/IllegalAccessException;
    new-instance v6, Lkawa/lang/GenericError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "illegal access for field "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static typeFieldNames(Lgnu/bytecode/ClassType;)Lgnu/lists/LList;
    .locals 2

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "ctype":Lgnu/bytecode/ClassType;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkawa/lang/Record;->typeFieldNames(Ljava/lang/Class;)Lgnu/lists/LList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "ctype":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public static typeFieldNames(Ljava/lang/Class;)Lgnu/lists/LList;
    .locals 11

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "clas":Ljava/lang/Class;
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v1, v6

    .line 257
    .local v1, "list":Lgnu/lists/LList;
    move-object v6, v0

    invoke-static {v6}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/ClassType;

    move-object v2, v6

    .line 258
    .local v2, "ctype":Lgnu/bytecode/ClassType;
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v6

    move-object v3, v6

    .line 259
    .local v3, "field":Lgnu/bytecode/Field;
    new-instance v6, Ljava/util/Vector;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/Vector;-><init>(I)V

    move-object v4, v6

    .line 260
    .local v4, "vec":Ljava/util/Vector;
    :goto_0
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 262
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v6

    const/16 v7, 0x9

    and-int/lit8 v6, v6, 0x9

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 264
    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 260
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    .line 266
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    move v5, v6

    .local v5, "i":I
    :goto_1
    add-int/lit8 v5, v5, -0x1

    move v6, v5

    if-ltz v6, :cond_2

    .line 268
    new-instance v6, Lgnu/lists/Pair;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v6

    goto :goto_1

    .line 270
    :cond_2
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "clas":Ljava/lang/Class;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 12

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Record;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v8, v0

    move-object v9, v1

    if-ne v8, v9, :cond_0

    .line 105
    const/4 v8, 0x1

    move v0, v8

    .line 130
    .end local v0    # "this":Lkawa/lang/Record;
    :goto_0
    return v0

    .line 106
    .restart local v0    # "this":Lkawa/lang/Record;
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    move-object v2, v8

    .line 107
    .local v2, "thisClass":Ljava/lang/Class;
    move-object v8, v1

    if-eqz v8, :cond_1

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    move-object v9, v2

    if-eq v8, v9, :cond_2

    .line 108
    :cond_1
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 109
    :cond_2
    move-object v8, v2

    invoke-static {v8}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    check-cast v8, Lgnu/bytecode/ClassType;

    move-object v3, v8

    .line 110
    .local v3, "ctype":Lgnu/bytecode/ClassType;
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v8

    move-object v4, v8

    .line 111
    .local v4, "fld":Lgnu/bytecode/Field;
    :goto_1
    move-object v8, v4

    if-eqz v8, :cond_5

    .line 113
    move-object v8, v4

    invoke-virtual {v8}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v8

    const/16 v9, 0x9

    and-int/lit8 v8, v8, 0x9

    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    .line 115
    .line 111
    :cond_3
    move-object v8, v4

    invoke-virtual {v8}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v8

    move-object v4, v8

    goto :goto_1

    .line 119
    :cond_4
    move-object v8, v4

    :try_start_0
    invoke-virtual {v8}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v8

    move-object v7, v8

    .line 120
    .local v7, "field":Ljava/lang/reflect/Field;
    move-object v8, v7

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .line 121
    .local v5, "value1":Ljava/lang/Object;
    move-object v8, v7

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v6, v8

    .line 126
    .line 127
    .local v6, "value2":Ljava/lang/Object;
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 128
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 123
    .end local v5    # "value1":Ljava/lang/Object;
    .end local v6    # "value2":Ljava/lang/Object;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 125
    .local v7, "ex":Ljava/lang/Exception;
    new-instance v8, Lgnu/mapping/WrappedException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v7

    invoke-direct {v9, v10}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 130
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_5
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Record;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 63
    .local v3, "clas":Ljava/lang/Class;
    move-object v5, v3

    move-object v6, v1

    :try_start_0
    invoke-static {v5, v6}, Lkawa/lang/Record;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lkawa/lang/Record;
    return-object v0

    .line 65
    .restart local v0    # "this":Lkawa/lang/Record;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 68
    .local v4, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v5, Lkawa/lang/GenericError;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no such field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 70
    .end local v4    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 72
    .local v4, "ex":Ljava/lang/IllegalAccessException;
    new-instance v5, Lkawa/lang/GenericError;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "illegal access for field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Record;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/Record;
    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Record;
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    move-object v1, v7

    .line 22
    .local v1, "fields":[Ljava/lang/reflect/Field;
    const/16 v7, 0x3039

    move v2, v7

    .line 23
    .local v2, "hash":I
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    move-object v8, v1

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 25
    move-object v7, v1

    move v8, v3

    aget-object v7, v7, v8

    move-object v4, v7

    .line 29
    .local v4, "field":Ljava/lang/reflect/Field;
    move-object v7, v4

    move-object v8, v0

    :try_start_0
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v5, v7

    .line 34
    .line 35
    .local v5, "value":Ljava/lang/Object;
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 36
    move v7, v2

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    xor-int/2addr v7, v8

    move v2, v7

    .line 23
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 33
    .local v6, "ex":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 38
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "ex":Ljava/lang/IllegalAccessException;
    :cond_1
    move v7, v2

    move v0, v7

    .end local v0    # "this":Lkawa/lang/Record;
    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Record;
    move-object v1, p1

    .local v1, "ps":Ljava/io/PrintWriter;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lkawa/lang/Record;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Record;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lkawa/lang/Record;->set1(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lkawa/lang/Record;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Record;
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/16 v8, 0xc8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v1, v6

    .line 136
    .local v1, "buf":Ljava/lang/StringBuffer;
    move-object v6, v1

    const-string/jumbo v7, "#<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 137
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Lkawa/lang/Record;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 138
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/ClassType;

    move-object v2, v6

    .line 139
    .local v2, "ctype":Lgnu/bytecode/ClassType;
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v6

    move-object v3, v6

    .line 140
    .local v3, "fld":Lgnu/bytecode/Field;
    :goto_0
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 142
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v6

    const/16 v7, 0x9

    and-int/lit8 v6, v6, 0x9

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 144
    .line 140
    :goto_1
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    .line 148
    :cond_0
    move-object v6, v3

    :try_start_0
    invoke-virtual {v6}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v5, v6

    .line 149
    .local v5, "field":Ljava/lang/reflect/Field;
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v6

    .line 154
    .line 155
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :goto_2
    move-object v6, v1

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 156
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 157
    move-object v6, v1

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 158
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    goto :goto_1

    .line 151
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 153
    .local v5, "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "#<illegal-access>"

    move-object v4, v6

    .local v4, "value":Ljava/lang/String;
    goto :goto_2

    .line 160
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_1
    move-object v6, v1

    const-string/jumbo v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 161
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lkawa/lang/Record;
    return-object v0
.end method
