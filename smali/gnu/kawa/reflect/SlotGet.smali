.class public Lgnu/kawa/reflect/SlotGet;
.super Lgnu/mapping/Procedure2;
.source "SlotGet.java"

# interfaces
.implements Lgnu/mapping/HasSetter;
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final field:Lgnu/kawa/reflect/SlotGet;

.field static noClasses:[Ljava/lang/Class;

.field public static final slotRef:Lgnu/kawa/reflect/SlotGet;

.field public static final staticField:Lgnu/kawa/reflect/SlotGet;


# instance fields
.field isStatic:Z

.field setter:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    .line 16
    new-instance v0, Lgnu/kawa/reflect/SlotGet;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "field"

    const/4 v3, 0x0

    sget-object v4, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V

    sput-object v0, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    .line 18
    new-instance v0, Lgnu/kawa/reflect/SlotGet;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "slot-ref"

    const/4 v3, 0x0

    sget-object v4, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V

    sput-object v0, Lgnu/kawa/reflect/SlotGet;->slotRef:Lgnu/kawa/reflect/SlotGet;

    .line 20
    new-instance v0, Lgnu/kawa/reflect/SlotGet;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "static-field"

    const/4 v3, 0x1

    sget-object v4, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V

    sput-object v0, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/SlotGet;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "isStatic":Z
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/mapping/Procedure2;-><init>(Ljava/lang/String;)V

    .line 26
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    .line 27
    move-object v3, v0

    sget-object v4, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v5, "gnu.kawa.reflect.CompileReflect:validateApplySlotGet"

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/reflect/SlotGet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V
    .locals 7

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/SlotGet;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "isStatic":Z
    move-object v3, p3

    .local v3, "setter":Lgnu/mapping/Procedure;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;Z)V

    .line 34
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/kawa/reflect/SlotGet;->setter:Lgnu/mapping/Procedure;

    .line 35
    return-void
.end method

.method static coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 5

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 187
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    move-object v0, v1

    .line 189
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 188
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Lgnu/bytecode/Type;

    if-eqz v1, :cond_1

    .line 189
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 190
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "argument is neither Class nor Type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    sget-object v2, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/reflect/SlotGet;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public static getSlotValue(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 97
    move/from16 v0, p0

    .local v0, "isStatic":Z
    move-object/from16 v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "fname":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "getName":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "isName":Ljava/lang/String;
    move-object/from16 v6, p6

    .local v6, "language":Lgnu/expr/Language;
    move v12, v0

    if-eqz v12, :cond_0

    move-object v12, v1

    invoke-static {v12}, Lgnu/kawa/reflect/SlotGet;->coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v12

    :goto_0
    move-object v7, v12

    .line 98
    .local v7, "clas":Ljava/lang/Class;
    move-object v12, v3

    const-string/jumbo v13, "length"

    if-ne v12, v13, :cond_1

    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 100
    move-object v12, v1

    invoke-static {v12}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v12

    move v8, v12

    .line 102
    .local v8, "length":I
    move v12, v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v0, v12

    .line 164
    .end local v0    # "isStatic":Z
    .end local v8    # "length":I
    :goto_1
    return-object v0

    .line 97
    .end local v7    # "clas":Ljava/lang/Class;
    .restart local v0    # "isStatic":Z
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    goto :goto_0

    .line 107
    .restart local v7    # "clas":Ljava/lang/Class;
    :cond_1
    move-object v12, v3

    const-string/jumbo v13, "class"

    if-ne v12, v13, :cond_2

    .line 108
    move-object v12, v7

    move-object v0, v12

    goto :goto_1

    .line 109
    :cond_2
    const/4 v12, 0x0

    move v8, v12

    .line 110
    .local v8, "illegalAccess":Z
    move-object v12, v3

    if-eqz v12, :cond_4

    .line 115
    move-object v12, v7

    move-object v13, v3

    :try_start_0
    invoke-virtual {v12, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    move-object v9, v12

    .line 120
    .line 121
    .local v9, "field":Ljava/lang/reflect/Field;
    :goto_2
    move-object v12, v9

    if-eqz v12, :cond_4

    .line 123
    move v12, v0

    if-eqz v12, :cond_3

    move-object v12, v9

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    const/16 v13, 0x8

    and-int/lit8 v12, v12, 0x8

    if-nez v12, :cond_3

    .line 125
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "cannot access non-static field \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x27

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 117
    .end local v9    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v12

    move-object v10, v12

    .line 119
    .local v10, "ex":Ljava/lang/Exception;
    const/4 v12, 0x0

    move-object v9, v12

    .restart local v9    # "field":Ljava/lang/reflect/Field;
    goto :goto_2

    .line 129
    .end local v10    # "ex":Ljava/lang/Exception;
    :cond_3
    move-object v12, v6

    move-object v13, v9

    :try_start_1
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    move-object v14, v9

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lgnu/expr/Language;->coerceToObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v12

    move-object v0, v12

    goto :goto_1

    .line 131
    :catch_1
    move-exception v12

    move-object v10, v12

    .line 133
    .local v10, "ex":Ljava/lang/IllegalAccessException;
    const/4 v12, 0x1

    move v8, v12

    .line 145
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ex":Ljava/lang/IllegalAccessException;
    :cond_4
    :goto_3
    const/4 v12, 0x0

    move-object v9, v12

    .line 146
    .local v9, "mname":Ljava/lang/String;
    const/4 v12, 0x0

    move-object v10, v12

    .line 149
    .local v10, "getmethod":Ljava/lang/reflect/Method;
    move-object v12, v4

    if-eqz v12, :cond_5

    move-object v12, v4

    :goto_4
    move-object v9, v12

    .line 151
    move-object v12, v7

    move-object v13, v9

    :try_start_2
    sget-object v14, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v12

    move-object v10, v12

    .line 156
    .line 158
    :goto_5
    move v12, v0

    if-eqz v12, :cond_7

    move-object v12, v10

    :try_start_3
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    const/16 v13, 0x8

    and-int/lit8 v12, v12, 0x8

    if-nez v12, :cond_7

    .line 160
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "cannot call non-static getter method \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x27

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_6

    .line 166
    :catch_2
    move-exception v12

    move-object v9, v12

    .line 168
    .local v9, "ex":Ljava/lang/reflect/InvocationTargetException;
    move-object v12, v9

    invoke-virtual {v12}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v12

    invoke-static {v12}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v12

    throw v12

    .line 135
    .end local v10    # "getmethod":Ljava/lang/reflect/Method;
    .local v9, "field":Ljava/lang/reflect/Field;
    :catch_3
    move-exception v12

    move-object v10, v12

    .line 137
    .local v10, "ex":Ljava/lang/Exception;
    move-object v12, v10

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 149
    .local v9, "mname":Ljava/lang/String;
    .local v10, "getmethod":Ljava/lang/reflect/Method;
    :cond_5
    :try_start_4
    const-string/jumbo v12, "get"

    move-object v13, v2

    invoke-static {v12, v13}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v12

    goto :goto_4

    .line 152
    :catch_4
    move-exception v12

    move-object v11, v12

    .line 153
    .local v11, "getEx":Ljava/lang/Exception;
    move-object v12, v5

    if-eqz v12, :cond_6

    move-object v12, v5

    :goto_6
    move-object v9, v12

    .line 155
    move-object v12, v7

    move-object v13, v9

    :try_start_5
    sget-object v14, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object v10, v12

    goto :goto_5

    .line 153
    :cond_6
    const-string/jumbo v12, "is"

    move-object v13, v2

    invoke-static {v12, v13}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    .line 162
    .end local v11    # "getEx":Ljava/lang/Exception;
    :cond_7
    move-object v12, v10

    move-object v13, v1

    sget-object v14, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    .line 163
    .local v11, "result":Ljava/lang/Object;
    move-object v12, v6

    move-object v13, v10

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v13

    move-object v14, v11

    invoke-virtual {v12, v13, v14}, Lgnu/expr/Language;->coerceToObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v12

    move-object v11, v12

    .line 164
    move-object v12, v11

    move-object v0, v12

    goto/16 :goto_1

    .line 170
    .end local v11    # "result":Ljava/lang/Object;
    :catch_5
    move-exception v12

    move-object v9, v12

    .line 172
    .local v9, "ex":Ljava/lang/IllegalAccessException;
    const/4 v12, 0x1

    move v8, v12

    .line 177
    .end local v9    # "ex":Ljava/lang/IllegalAccessException;
    :goto_7
    move v12, v8

    if-eqz v12, :cond_8

    .line 178
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "illegal access for field "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 174
    .local v9, "mname":Ljava/lang/String;
    :catch_6
    move-exception v12

    move-object v9, v12

    goto :goto_7

    .line 180
    .end local v9    # "mname":Ljava/lang/String;
    :cond_8
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "no such field "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v7

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public static lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;
    .locals 9

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "clas":Lgnu/bytecode/ObjectType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "caller":Lgnu/bytecode/ClassType;
    move-object v6, v0

    move-object v7, v1

    invoke-static {v7}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ObjectType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v6

    move-object v3, v6

    .line 215
    .local v3, "field":Lgnu/bytecode/Field;
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 217
    move-object v6, v2

    if-nez v6, :cond_0

    .line 218
    sget-object v6, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v2, v6

    .line 219
    :cond_0
    move-object v6, v2

    move-object v7, v3

    move-object v8, v0

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 220
    move-object v6, v3

    move-object v0, v6

    .line 229
    .end local v0    # "clas":Lgnu/bytecode/ObjectType;
    :goto_0
    return-object v0

    .line 224
    .restart local v0    # "clas":Lgnu/bytecode/ObjectType;
    :cond_1
    const-string/jumbo v6, "get"

    move-object v7, v1

    invoke-static {v6, v7}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 225
    .local v4, "getname":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v4

    sget-object v8, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v6

    move-object v5, v6

    .line 226
    .local v5, "method":Lgnu/bytecode/Method;
    move-object v6, v5

    if-nez v6, :cond_2

    .line 227
    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    .line 229
    :cond_2
    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method

.method public static makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;
    .locals 9

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "value":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "fieldName":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Lgnu/expr/Expression;

    move-object v2, v3

    .line 358
    .local v2, "args":[Lgnu/expr/Expression;
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v0

    aput-object v5, v3, v4

    .line 359
    move-object v3, v2

    const/4 v4, 0x1

    new-instance v5, Lgnu/expr/QuoteExp;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4

    .line 360
    new-instance v3, Lgnu/expr/ApplyExp;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    sget-object v5, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v0, v3

    .end local v0    # "value":Lgnu/expr/Expression;
    return-object v0
.end method

.method public static staticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    sget-object v2, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/reflect/SlotGet;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .prologue
    .line 50
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/reflect/SlotGet;
    move-object/from16 v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    const/4 v8, 0x0

    move-object v5, v8

    .local v5, "getName":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v6, v8

    .line 51
    .local v6, "isName":Ljava/lang/String;
    move-object v8, v2

    instance-of v8, v8, Lgnu/bytecode/Field;

    if-eqz v8, :cond_1

    .line 53
    move-object v8, v2

    check-cast v8, Lgnu/bytecode/Field;

    invoke-virtual {v8}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 54
    .local v4, "fname":Ljava/lang/String;
    move-object v8, v4

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 80
    .local v3, "name":Ljava/lang/String;
    :goto_0
    const-string/jumbo v8, "class"

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 81
    const-string/jumbo v8, "class"

    move-object v4, v8

    .line 84
    :cond_0
    :goto_1
    move-object v8, v0

    iget-boolean v8, v8, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    move-object v9, v1

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v14

    invoke-static/range {v8 .. v14}, Lgnu/kawa/reflect/SlotGet;->getSlotValue(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Lgnu/kawa/reflect/SlotGet;
    return-object v0

    .line 56
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "fname":Ljava/lang/String;
    .restart local v0    # "this":Lgnu/kawa/reflect/SlotGet;
    :cond_1
    move-object v8, v2

    instance-of v8, v8, Lgnu/bytecode/Method;

    if-eqz v8, :cond_4

    .line 58
    move-object v8, v2

    check-cast v8, Lgnu/bytecode/Method;

    invoke-virtual {v8}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 59
    .local v7, "mname":Ljava/lang/String;
    move-object v8, v7

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 60
    .restart local v3    # "name":Ljava/lang/String;
    move-object v8, v7

    const-string/jumbo v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 61
    move-object v8, v7

    move-object v5, v8

    .line 64
    :cond_2
    :goto_2
    const/4 v8, 0x0

    move-object v4, v8

    .line 65
    .restart local v4    # "fname":Ljava/lang/String;
    goto :goto_0

    .line 62
    .end local v4    # "fname":Ljava/lang/String;
    :cond_3
    move-object v8, v7

    const-string/jumbo v9, "is"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 63
    move-object v8, v7

    move-object v6, v8

    goto :goto_2

    .line 66
    .end local v3    # "name":Ljava/lang/String;
    .end local v7    # "mname":Ljava/lang/String;
    :cond_4
    move-object v8, v2

    instance-of v8, v8, Lgnu/mapping/SimpleSymbol;

    if-nez v8, :cond_5

    move-object v8, v2

    instance-of v8, v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_6

    .line 74
    :cond_5
    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 75
    .restart local v3    # "name":Ljava/lang/String;
    move-object v8, v3

    invoke-static {v8}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .restart local v4    # "fname":Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "fname":Ljava/lang/String;
    :cond_6
    new-instance v8, Lgnu/mapping/WrongType;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    const/4 v11, 0x2

    move-object v12, v2

    const-string/jumbo v13, "string"

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v8

    .line 82
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "fname":Ljava/lang/String;
    :cond_7
    const-string/jumbo v8, "length"

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 83
    const-string/jumbo v8, "length"

    move-object v4, v8

    goto :goto_1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 20

    .prologue
    .line 234
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/kawa/reflect/SlotGet;
    move-object/from16 v2, p1

    .local v2, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v3, p2

    .local v3, "comp":Lgnu/expr/Compilation;
    move-object/from16 v4, p3

    .local v4, "target":Lgnu/expr/Target;
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v5, v17

    .line 235
    .local v5, "args":[Lgnu/expr/Expression;
    move-object/from16 v17, v5

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v6, v17

    .line 236
    .local v6, "arg0":Lgnu/expr/Expression;
    move-object/from16 v17, v5

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v7, v17

    .line 237
    .local v7, "arg1":Lgnu/expr/Expression;
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v17

    move-object/from16 v8, v17

    .line 238
    .local v8, "language":Lgnu/expr/Language;
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v17, v8

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v17

    :goto_0
    move-object/from16 v9, v17

    .line 240
    .local v9, "type":Lgnu/bytecode/Type;
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v17

    move-object/from16 v10, v17

    .line 242
    .local v10, "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v17, v9

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 244
    move-object/from16 v17, v9

    check-cast v17, Lgnu/bytecode/ObjectType;

    move-object/from16 v11, v17

    .line 245
    .local v11, "ctype":Lgnu/bytecode/ObjectType;
    move-object/from16 v17, v7

    check-cast v17, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    .line 246
    .local v12, "part":Ljava/lang/Object;
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/Field;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 248
    move-object/from16 v17, v12

    check-cast v17, Lgnu/bytecode/Field;

    move-object/from16 v13, v17

    .line 249
    .local v13, "field":Lgnu/bytecode/Field;
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v17

    move/from16 v14, v17

    .line 250
    .local v14, "modifiers":I
    move/from16 v17, v14

    const/16 v18, 0x8

    and-int/lit8 v17, v17, 0x8

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    :goto_1
    move/from16 v15, v17

    .line 251
    .local v15, "isStaticField":Z
    move-object/from16 v17, v5

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v18, v3

    move/from16 v19, v15

    if-eqz v19, :cond_3

    sget-object v19, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    :goto_2
    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 254
    move/from16 v17, v15

    if-eqz v17, :cond_4

    .line 256
    const/16 v17, 0x0

    move/from16 v16, v17

    .line 286
    .local v16, "inlined":Z
    move/from16 v17, v16

    if-nez v17, :cond_0

    .line 287
    move-object/from16 v17, v10

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 288
    .line 291
    .end local v16    # "inlined":Z
    :cond_0
    :goto_3
    move-object/from16 v17, v8

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v17

    move-object/from16 v16, v17

    .line 292
    .local v16, "ftype":Lgnu/bytecode/Type;
    move-object/from16 v17, v4

    move-object/from16 v18, v3

    move-object/from16 v19, v16

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 293
    .line 320
    .end local v11    # "ctype":Lgnu/bytecode/ObjectType;
    .end local v12    # "part":Ljava/lang/Object;
    .end local v13    # "field":Lgnu/bytecode/Field;
    .end local v14    # "modifiers":I
    .end local v15    # "isStaticField":Z
    .end local v16    # "ftype":Lgnu/bytecode/Type;
    :goto_4
    return-void

    .line 238
    .end local v9    # "type":Lgnu/bytecode/Type;
    .end local v10    # "code":Lgnu/bytecode/CodeAttr;
    :cond_1
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v17

    goto/16 :goto_0

    .line 250
    .restart local v9    # "type":Lgnu/bytecode/Type;
    .restart local v10    # "code":Lgnu/bytecode/CodeAttr;
    .restart local v11    # "ctype":Lgnu/bytecode/ObjectType;
    .restart local v12    # "part":Ljava/lang/Object;
    .restart local v13    # "field":Lgnu/bytecode/Field;
    .restart local v14    # "modifiers":I
    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    .line 251
    .restart local v15    # "isStaticField":Z
    :cond_3
    move-object/from16 v19, v11

    invoke-static/range {v19 .. v19}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v19

    goto :goto_2

    .line 290
    :cond_4
    move-object/from16 v17, v10

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    goto :goto_3

    .line 295
    .end local v13    # "field":Lgnu/bytecode/Field;
    .end local v14    # "modifiers":I
    .end local v15    # "isStaticField":Z
    :cond_5
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/Method;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 297
    move-object/from16 v17, v12

    check-cast v17, Lgnu/bytecode/Method;

    move-object/from16 v13, v17

    .line 298
    .local v13, "method":Lgnu/bytecode/Method;
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v17

    move/from16 v14, v17

    .line 299
    .restart local v14    # "modifiers":I
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v17

    move/from16 v15, v17

    .line 300
    .local v15, "isStaticMethod":Z
    move-object/from16 v17, v5

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v18, v3

    move/from16 v19, v15

    if-eqz v19, :cond_6

    sget-object v19, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    :goto_5
    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 303
    move/from16 v17, v15

    if-eqz v17, :cond_7

    .line 304
    move-object/from16 v17, v10

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 307
    :goto_6
    move-object/from16 v17, v4

    move-object/from16 v18, v3

    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 308
    goto :goto_4

    .line 300
    :cond_6
    move-object/from16 v19, v11

    invoke-static/range {v19 .. v19}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v19

    goto :goto_5

    .line 306
    :cond_7
    move-object/from16 v17, v10

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_6

    .line 311
    .end local v11    # "ctype":Lgnu/bytecode/ObjectType;
    .end local v12    # "part":Ljava/lang/Object;
    .end local v13    # "method":Lgnu/bytecode/Method;
    .end local v14    # "modifiers":I
    .end local v15    # "isStaticMethod":Z
    :cond_8
    move-object/from16 v17, v7

    invoke-static/range {v17 .. v17}, Lgnu/kawa/reflect/ClassMethods;->checkName(Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v11, v17

    .line 312
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v17, v9

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    const-string/jumbo v17, "length"

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 314
    move-object/from16 v17, v5

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v18, v3

    move-object/from16 v19, v9

    invoke-static/range {v19 .. v19}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 315
    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 316
    move-object/from16 v17, v4

    move-object/from16 v18, v3

    sget-object v19, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 317
    goto/16 :goto_4

    .line 319
    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-static/range {v17 .. v19}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 320
    goto/16 :goto_4
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 9

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/SlotGet;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move-object v6, v1

    array-length v6, v6

    move v2, v6

    .line 325
    .local v2, "nargs":I
    move v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 327
    move-object v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v3, v6

    .line 328
    .local v3, "arg0":Lgnu/expr/Expression;
    move-object v6, v1

    const/4 v7, 0x1

    aget-object v6, v6, v7

    move-object v4, v6

    .line 329
    .local v4, "arg1":Lgnu/expr/Expression;
    move-object v6, v4

    instance-of v6, v6, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_2

    .line 331
    move-object v6, v4

    check-cast v6, Lgnu/expr/QuoteExp;

    invoke-virtual {v6}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 332
    .local v5, "part":Ljava/lang/Object;
    move-object v6, v5

    instance-of v6, v6, Lgnu/bytecode/Field;

    if-eqz v6, :cond_0

    .line 333
    move-object v6, v5

    check-cast v6, Lgnu/bytecode/Field;

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    move-object v0, v6

    .line 341
    .end local v0    # "this":Lgnu/kawa/reflect/SlotGet;
    .end local v3    # "arg0":Lgnu/expr/Expression;
    .end local v4    # "arg1":Lgnu/expr/Expression;
    .end local v5    # "part":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 334
    .restart local v0    # "this":Lgnu/kawa/reflect/SlotGet;
    .restart local v3    # "arg0":Lgnu/expr/Expression;
    .restart local v4    # "arg1":Lgnu/expr/Expression;
    .restart local v5    # "part":Ljava/lang/Object;
    :cond_0
    move-object v6, v5

    instance-of v6, v6, Lgnu/bytecode/Method;

    if-eqz v6, :cond_1

    .line 335
    move-object v6, v5

    check-cast v6, Lgnu/bytecode/Method;

    invoke-virtual {v6}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 336
    :cond_1
    move-object v6, v0

    iget-boolean v6, v6, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    if-nez v6, :cond_2

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    instance-of v6, v6, Lgnu/bytecode/ArrayType;

    if-eqz v6, :cond_2

    const-string/jumbo v6, "length"

    move-object v7, v4

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lgnu/kawa/reflect/ClassMethods;->checkName(Lgnu/expr/Expression;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 338
    sget-object v6, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    move-object v0, v6

    goto :goto_0

    .line 341
    .end local v3    # "arg0":Lgnu/expr/Expression;
    .end local v4    # "arg1":Lgnu/expr/Expression;
    .end local v5    # "part":Ljava/lang/Object;
    :cond_2
    sget-object v6, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, v6

    goto :goto_0
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/SlotGet;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/reflect/SlotGet;->setter:Lgnu/mapping/Procedure;

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Lgnu/mapping/Procedure2;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/SlotGet;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/reflect/SlotGet;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/reflect/SlotGet;->setter:Lgnu/mapping/Procedure;

    goto :goto_0
.end method

.method public set2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/SlotGet;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "name":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;
    move-object v4, v0

    iget-boolean v4, v4, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public setN([Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/SlotGet;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v3, v1

    array-length v3, v3

    move v2, v3

    .line 196
    .local v2, "nargs":I
    move v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 197
    new-instance v3, Lgnu/mapping/WrongArguments;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/reflect/SlotGet;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v5

    move v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v3

    .line 198
    :cond_0
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v6, v1

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lgnu/kawa/reflect/SlotGet;->set2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    return-void
.end method
