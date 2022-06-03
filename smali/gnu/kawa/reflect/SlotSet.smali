.class public Lgnu/kawa/reflect/SlotSet;
.super Lgnu/mapping/Procedure3;
.source "SlotSet.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

.field public static final set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

.field public static final setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

.field static final type1Array:[Lgnu/bytecode/Type;


# instance fields
.field isStatic:Z

.field returnSelf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 16
    new-instance v0, Lgnu/kawa/reflect/SlotSet;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "set-field!"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lgnu/kawa/reflect/SlotSet;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .line 17
    new-instance v0, Lgnu/kawa/reflect/SlotSet;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "set-static-field!"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lgnu/kawa/reflect/SlotSet;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .line 19
    new-instance v0, Lgnu/kawa/reflect/SlotSet;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "set-field-return-object!"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lgnu/kawa/reflect/SlotSet;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

    .line 21
    sget-object v0, Lgnu/kawa/reflect/SlotSet;->setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/bytecode/Type;

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->type1Array:[Lgnu/bytecode/Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/SlotSet;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "isStatic":Z
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/mapping/Procedure3;-><init>(Ljava/lang/String;)V

    .line 26
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    .line 27
    move-object v3, v0

    sget-object v4, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v5, "gnu.kawa.reflect.CompileReflect:validateApplySlotSet"

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/reflect/SlotSet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 21

    .prologue
    .line 43
    move/from16 v0, p0

    .local v0, "isStatic":Z
    move-object/from16 v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "member":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "value":Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v15

    move-object v4, v15

    .line 44
    .local v4, "language":Lgnu/expr/Language;
    const/4 v15, 0x0

    move v5, v15

    .line 48
    .local v5, "illegalAccess":Z
    move-object v15, v2

    instance-of v15, v15, Ljava/lang/String;

    if-nez v15, :cond_0

    move-object v15, v2

    instance-of v15, v15, Lgnu/lists/FString;

    if-nez v15, :cond_0

    move-object v15, v2

    instance-of v15, v15, Lgnu/mapping/Symbol;

    if-eqz v15, :cond_2

    .line 51
    :cond_0
    move-object v15, v2

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v6, v15

    .line 52
    .local v6, "name":Ljava/lang/String;
    move-object v15, v6

    invoke-static {v15}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v7, v15

    .line 53
    .local v7, "fname":Ljava/lang/String;
    move v15, v0

    if-eqz v15, :cond_1

    move-object v15, v1

    invoke-static {v15}, Lgnu/kawa/reflect/SlotGet;->coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v15

    :goto_0
    move-object v8, v15

    .line 61
    .local v8, "clas":Ljava/lang/Class;
    :goto_1
    move-object v15, v2

    :try_start_0
    instance-of v15, v15, Lgnu/bytecode/Field;

    if-eqz v15, :cond_3

    move-object v15, v2

    check-cast v15, Lgnu/bytecode/Field;

    invoke-virtual {v15}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v15

    :goto_2
    move-object v9, v15

    .line 64
    .local v9, "field":Ljava/lang/reflect/Field;
    move-object v15, v9

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    move-object v10, v15

    .line 65
    .local v10, "ftype":Ljava/lang/Class;
    move-object v15, v9

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    move-object/from16 v19, v3

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Language;->coerceFromObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    .line 105
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ftype":Ljava/lang/Class;
    :goto_3
    return-void

    .line 53
    .end local v8    # "clas":Ljava/lang/Class;
    :cond_1
    move-object v15, v1

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    goto :goto_0

    .line 56
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "fname":Ljava/lang/String;
    :cond_2
    move-object v15, v2

    check-cast v15, Lgnu/bytecode/Member;

    invoke-interface {v15}, Lgnu/bytecode/Member;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v6, v16

    .restart local v6    # "name":Ljava/lang/String;
    move-object v7, v15

    .line 57
    .restart local v7    # "fname":Ljava/lang/String;
    const/4 v15, 0x0

    move-object v8, v15

    .restart local v8    # "clas":Ljava/lang/Class;
    goto :goto_1

    .line 61
    :cond_3
    move-object v15, v8

    move-object/from16 v16, v7

    :try_start_1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    goto :goto_2

    .line 68
    :catch_0
    move-exception v15

    move-object v9, v15

    .line 80
    :goto_4
    const/4 v15, 0x0

    move-object v9, v15

    .line 82
    .local v9, "getmethod":Ljava/lang/reflect/Method;
    move-object v15, v2

    :try_start_2
    instance-of v15, v15, Lgnu/bytecode/Method;

    move v10, v15

    .line 83
    .local v10, "haveSetter":Z
    move v15, v10

    if-eqz v15, :cond_5

    move-object v15, v7

    :goto_5
    move-object v11, v15

    .line 85
    .local v11, "setName":Ljava/lang/String;
    move v15, v10

    if-eqz v15, :cond_4

    move-object v15, v11

    const-string/jumbo v16, "set"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v15

    if-nez v15, :cond_4

    .line 86
    const/4 v15, 0x0

    move v10, v15

    .line 89
    :cond_4
    move v15, v10

    if-eqz v15, :cond_6

    :try_start_3
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "get"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v11

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_6
    move-object v12, v15

    .line 91
    .local v12, "getName":Ljava/lang/String;
    move-object v15, v8

    move-object/from16 v16, v12

    sget-object v17, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual/range {v15 .. v17}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v15

    move-object v9, v15

    .line 96
    .line 98
    .end local v12    # "getName":Ljava/lang/String;
    :goto_7
    const/4 v15, 0x1

    :try_start_4
    new-array v15, v15, [Ljava/lang/Class;

    move-object v12, v15

    .line 99
    .local v12, "setArgTypes":[Ljava/lang/Class;
    move-object v15, v12

    const/16 v16, 0x0

    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v17

    aput-object v17, v15, v16

    .line 100
    move-object v15, v8

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object v13, v15

    .line 102
    .local v13, "setmethod":Ljava/lang/reflect/Method;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object v14, v15

    .line 103
    .local v14, "args":[Ljava/lang/Object;
    move-object v15, v14

    const/16 v16, 0x0

    move-object/from16 v17, v4

    move-object/from16 v18, v12

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v19, v3

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Language;->coerceFromObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    .line 104
    move-object v15, v13

    move-object/from16 v16, v1

    move-object/from16 v17, v14

    invoke-virtual/range {v15 .. v17}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 105
    goto/16 :goto_3

    .line 71
    .end local v9    # "getmethod":Ljava/lang/reflect/Method;
    .end local v10    # "haveSetter":Z
    .end local v11    # "setName":Ljava/lang/String;
    .end local v12    # "setArgTypes":[Ljava/lang/Class;
    .end local v13    # "setmethod":Ljava/lang/reflect/Method;
    .end local v14    # "args":[Ljava/lang/Object;
    :catch_1
    move-exception v15

    move-object v9, v15

    .line 73
    .local v9, "ex":Ljava/lang/IllegalAccessException;
    const/4 v15, 0x1

    move v5, v15

    goto/16 :goto_4

    .line 83
    .local v9, "getmethod":Ljava/lang/reflect/Method;
    .restart local v10    # "haveSetter":Z
    :cond_5
    const-string/jumbo v15, "set"

    move-object/from16 v16, v6

    invoke-static/range {v15 .. v16}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v15

    goto/16 :goto_5

    .line 89
    .restart local v11    # "setName":Ljava/lang/String;
    :cond_6
    :try_start_5
    const-string/jumbo v15, "get"

    move-object/from16 v16, v6

    invoke-static/range {v15 .. v16}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v15

    goto :goto_6

    .line 92
    :catch_2
    move-exception v15

    move-object v12, v15

    .line 93
    .local v12, "getEx":Ljava/lang/Exception;
    move v15, v10

    if-eqz v15, :cond_7

    :try_start_6
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "is"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v11

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_8
    move-object v13, v15

    .line 95
    .local v13, "getName":Ljava/lang/String;
    move-object v15, v8

    move-object/from16 v16, v13

    sget-object v17, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual/range {v15 .. v17}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object v9, v15

    goto/16 :goto_7

    .line 93
    .end local v13    # "getName":Ljava/lang/String;
    :cond_7
    const-string/jumbo v15, "is"

    move-object/from16 v16, v6

    invoke-static/range {v15 .. v16}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v15

    goto :goto_8

    .line 107
    .end local v10    # "haveSetter":Z
    .end local v11    # "setName":Ljava/lang/String;
    .end local v12    # "getEx":Ljava/lang/Exception;
    :catch_3
    move-exception v15

    move-object v9, v15

    .line 109
    .local v9, "ex":Ljava/lang/reflect/InvocationTargetException;
    move-object v15, v9

    invoke-virtual {v15}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v15

    invoke-static {v15}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v15

    throw v15

    .line 111
    .local v9, "getmethod":Ljava/lang/reflect/Method;
    :catch_4
    move-exception v15

    move-object v9, v15

    .line 113
    .local v9, "ex":Ljava/lang/IllegalAccessException;
    const/4 v15, 0x1

    move v5, v15

    .line 119
    .end local v9    # "ex":Ljava/lang/IllegalAccessException;
    :goto_9
    move v15, v5

    if-eqz v15, :cond_8

    .line 120
    new-instance v15, Ljava/lang/RuntimeException;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "illegal access for field "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 115
    .local v9, "getmethod":Ljava/lang/reflect/Method;
    :catch_5
    move-exception v15

    move-object v9, v15

    goto :goto_9

    .line 122
    .end local v9    # "getmethod":Ljava/lang/reflect/Method;
    :cond_8
    new-instance v15, Ljava/lang/RuntimeException;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "no such field "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " in "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15
.end method

.method static compileSet(Lgnu/mapping/Procedure;Lgnu/bytecode/ObjectType;Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Compilation;)V
    .locals 17

    .prologue
    .line 158
    move-object/from16 v0, p0

    .local v0, "thisProc":Lgnu/mapping/Procedure;
    move-object/from16 v1, p1

    .local v1, "ctype":Lgnu/bytecode/ObjectType;
    move-object/from16 v2, p2

    .local v2, "valArg":Lgnu/expr/Expression;
    move-object/from16 v3, p3

    .local v3, "part":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "comp":Lgnu/expr/Compilation;
    move-object v11, v4

    invoke-virtual {v11}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    move-object v5, v11

    .line 159
    .local v5, "code":Lgnu/bytecode/CodeAttr;
    move-object v11, v4

    invoke-virtual {v11}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v11

    move-object v6, v11

    .line 160
    .local v6, "language":Lgnu/expr/Language;
    move-object v11, v0

    instance-of v11, v11, Lgnu/kawa/reflect/SlotSet;

    if-eqz v11, :cond_1

    move-object v11, v0

    check-cast v11, Lgnu/kawa/reflect/SlotSet;

    iget-boolean v11, v11, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    :goto_0
    move v7, v11

    .line 162
    .local v7, "isStatic":Z
    move-object v11, v3

    instance-of v11, v11, Lgnu/bytecode/Field;

    if-eqz v11, :cond_3

    .line 164
    move-object v11, v3

    check-cast v11, Lgnu/bytecode/Field;

    move-object v8, v11

    .line 165
    .local v8, "field":Lgnu/bytecode/Field;
    move-object v11, v8

    invoke-virtual {v11}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v11

    move v9, v11

    .line 166
    .local v9, "isStaticField":Z
    move-object v11, v6

    move-object v12, v8

    invoke-virtual {v12}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v11

    move-object v10, v11

    .line 167
    .local v10, "ftype":Lgnu/bytecode/Type;
    move v11, v7

    if-eqz v11, :cond_0

    move v11, v9

    if-nez v11, :cond_0

    .line 168
    move-object v11, v4

    const/16 v12, 0x65

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "cannot access non-static field `"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v14}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\' using `"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v0

    invoke-virtual {v14}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x27

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 170
    :cond_0
    move-object v11, v2

    move-object v12, v4

    move-object v13, v10

    invoke-static {v13}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 171
    move v11, v9

    if-eqz v11, :cond_2

    .line 172
    move-object v11, v5

    move-object v12, v8

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 175
    .line 195
    .end local v8    # "field":Lgnu/bytecode/Field;
    .end local v9    # "isStaticField":Z
    .end local v10    # "ftype":Lgnu/bytecode/Type;
    :goto_1
    return-void

    .line 160
    .end local v7    # "isStatic":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 174
    .restart local v7    # "isStatic":Z
    .restart local v8    # "field":Lgnu/bytecode/Field;
    .restart local v9    # "isStaticField":Z
    .restart local v10    # "ftype":Lgnu/bytecode/Type;
    :cond_2
    move-object v11, v5

    move-object v12, v8

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_1

    .line 177
    .end local v8    # "field":Lgnu/bytecode/Field;
    .end local v9    # "isStaticField":Z
    .end local v10    # "ftype":Lgnu/bytecode/Type;
    :cond_3
    move-object v11, v3

    instance-of v11, v11, Lgnu/bytecode/Method;

    if-eqz v11, :cond_7

    .line 179
    move-object v11, v3

    check-cast v11, Lgnu/bytecode/Method;

    move-object v8, v11

    .line 180
    .local v8, "method":Lgnu/bytecode/Method;
    move-object v11, v8

    invoke-virtual {v11}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v11

    move v9, v11

    .line 181
    .local v9, "isStaticMethod":Z
    move v11, v7

    if-eqz v11, :cond_4

    move v11, v9

    if-nez v11, :cond_4

    .line 182
    move-object v11, v4

    const/16 v12, 0x65

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "cannot call non-static getter method `"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v14}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\' using `"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v0

    invoke-virtual {v14}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x27

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 185
    :cond_4
    move-object v11, v8

    invoke-virtual {v11}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v11

    move-object v10, v11

    .line 186
    .local v10, "setArgTypes":[Lgnu/bytecode/Type;
    move-object v11, v2

    move-object v12, v4

    move-object v13, v6

    move-object v14, v10

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v13

    invoke-static {v13}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 187
    move v11, v9

    if-eqz v11, :cond_6

    .line 188
    move-object v11, v5

    move-object v12, v8

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 191
    :goto_2
    move-object v11, v8

    invoke-virtual {v11}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v11

    invoke-virtual {v11}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v11

    if-nez v11, :cond_5

    .line 192
    move-object v11, v5

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 193
    :cond_5
    goto/16 :goto_1

    .line 190
    :cond_6
    move-object v11, v5

    move-object v12, v8

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_2

    .line 195
    .end local v8    # "method":Lgnu/bytecode/Method;
    .end local v9    # "isStaticMethod":Z
    .end local v10    # "setArgTypes":[Lgnu/bytecode/Type;
    :cond_7
    goto/16 :goto_1
.end method

.method public static lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;
    .locals 9

    .prologue
    .line 137
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

    .line 139
    .local v3, "field":Lgnu/bytecode/Field;
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 141
    move-object v6, v2

    if-nez v6, :cond_0

    .line 142
    sget-object v6, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v2, v6

    .line 143
    :cond_0
    move-object v6, v2

    move-object v7, v3

    move-object v8, v0

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 144
    move-object v6, v3

    move-object v0, v6

    .line 152
    .end local v0    # "clas":Lgnu/bytecode/ObjectType;
    :goto_0
    return-object v0

    .line 147
    .restart local v0    # "clas":Lgnu/bytecode/ObjectType;
    :cond_1
    const-string/jumbo v6, "set"

    move-object v7, v1

    invoke-static {v6, v7}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 148
    .local v4, "setName":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v4

    sget-object v8, Lgnu/kawa/reflect/SlotSet;->type1Array:[Lgnu/bytecode/Type;

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v6

    move-object v5, v6

    .line 149
    .local v5, "method":Lgnu/bytecode/Method;
    move-object v6, v5

    if-nez v6, :cond_2

    .line 150
    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    .line 152
    :cond_2
    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method

.method public static setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    const/4 v3, 0x0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v3, v4, v5, v6}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static setStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    const/4 v3, 0x1

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v3, v4, v5, v6}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/SlotSet;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "fname":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;
    move-object v4, v0

    iget-boolean v4, v4, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    move-object v4, v0

    iget-boolean v4, v4, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    if-eqz v4, :cond_0

    move-object v4, v1

    :goto_0
    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/reflect/SlotSet;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/reflect/SlotSet;
    :cond_0
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 25

    .prologue
    .line 199
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/reflect/SlotSet;
    move-object/from16 v3, p1

    .local v3, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v4, p2

    .local v4, "comp":Lgnu/expr/Compilation;
    move-object/from16 v5, p3

    .local v5, "target":Lgnu/expr/Target;
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v6, v19

    .line 200
    .local v6, "args":[Lgnu/expr/Expression;
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v7, v19

    .line 201
    .local v7, "nargs":I
    move/from16 v19, v7

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 203
    move/from16 v19, v7

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    const-string/jumbo v19, "too few"

    :goto_0
    move-object/from16 v8, v19

    .line 204
    .local v8, "msg":Ljava/lang/String;
    move-object/from16 v19, v4

    const/16 v20, 0x65

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v8

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " arguments to `"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lgnu/kawa/reflect/SlotSet;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x27

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 205
    move-object/from16 v19, v4

    const/16 v20, 0x0

    move-object/from16 v21, v5

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 206
    .line 263
    .end local v8    # "msg":Ljava/lang/String;
    :goto_1
    return-void

    .line 203
    :cond_0
    const-string/jumbo v19, "too many"

    goto :goto_0

    .line 208
    :cond_1
    move-object/from16 v19, v6

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v8, v19

    .line 209
    .local v8, "arg0":Lgnu/expr/Expression;
    move-object/from16 v19, v6

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v9, v19

    .line 210
    .local v9, "arg1":Lgnu/expr/Expression;
    move-object/from16 v19, v6

    const/16 v20, 0x2

    aget-object v19, v19, v20

    move-object/from16 v10, v19

    .line 211
    .local v10, "value":Lgnu/expr/Expression;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v19, v8

    invoke-static/range {v19 .. v19}, Lkawa/standard/Scheme;->exp2Type(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v19

    :goto_2
    move-object/from16 v11, v19

    .line 213
    .local v11, "type":Lgnu/bytecode/Type;
    const/16 v19, 0x0

    move-object/from16 v12, v19

    .line 214
    .local v12, "part":Lgnu/bytecode/Member;
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v19, v9

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 216
    move-object/from16 v19, v9

    check-cast v19, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    .line 217
    .local v13, "val1":Ljava/lang/Object;
    move-object/from16 v19, v11

    check-cast v19, Lgnu/bytecode/ObjectType;

    move-object/from16 v14, v19

    .line 219
    .local v14, "ctype":Lgnu/bytecode/ObjectType;
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    :goto_3
    move-object/from16 v16, v19

    .line 221
    .local v16, "caller":Lgnu/bytecode/ClassType;
    move-object/from16 v19, v13

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/lists/FString;

    move/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 225
    :cond_2
    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    .line 226
    .local v15, "name":Ljava/lang/String;
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-object/from16 v21, v16

    invoke-static/range {v19 .. v21}, Lgnu/kawa/reflect/SlotSet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v19

    move-object/from16 v12, v19

    .line 227
    move-object/from16 v19, v12

    if-nez v19, :cond_3

    move-object/from16 v19, v11

    sget-object v20, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Compilation;->warnUnknownMember()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 229
    move-object/from16 v19, v4

    const/16 v20, 0x77

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "no slot `"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\' in "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 241
    :cond_3
    :goto_4
    move-object/from16 v19, v12

    if-eqz v19, :cond_d

    .line 243
    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Lgnu/bytecode/Member;->getModifiers()I

    move-result v19

    move/from16 v17, v19

    .line 244
    .local v17, "modifiers":I
    move/from16 v19, v17

    const/16 v20, 0x8

    and-int/lit8 v19, v19, 0x8

    if-eqz v19, :cond_a

    const/16 v19, 0x1

    :goto_5
    move/from16 v18, v19

    .line 245
    .local v18, "isStaticField":Z
    move-object/from16 v19, v16

    if-eqz v19, :cond_4

    move-object/from16 v19, v16

    move-object/from16 v20, v12

    move-object/from16 v21, v14

    invoke-virtual/range {v19 .. v21}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 246
    move-object/from16 v19, v4

    const/16 v20, 0x65

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "slot \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\' in "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v12

    invoke-interface/range {v22 .. v22}, Lgnu/bytecode/Member;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " not accessible here"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 249
    :cond_4
    move-object/from16 v19, v6

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v20, v4

    move/from16 v21, v18

    if-eqz v21, :cond_b

    sget-object v21, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    :goto_6
    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 252
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 253
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v19

    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/ObjectType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 254
    :cond_5
    move-object/from16 v19, v2

    move-object/from16 v20, v14

    move-object/from16 v21, v6

    const/16 v22, 0x2

    aget-object v21, v21, v22

    move-object/from16 v22, v12

    move-object/from16 v23, v4

    invoke-static/range {v19 .. v23}, Lgnu/kawa/reflect/SlotSet;->compileSet(Lgnu/mapping/Procedure;Lgnu/bytecode/ObjectType;Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Compilation;)V

    .line 255
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 256
    move-object/from16 v19, v5

    move-object/from16 v20, v4

    move-object/from16 v21, v14

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 259
    :goto_7
    goto/16 :goto_1

    .line 211
    .end local v11    # "type":Lgnu/bytecode/Type;
    .end local v12    # "part":Lgnu/bytecode/Member;
    .end local v13    # "val1":Ljava/lang/Object;
    .end local v14    # "ctype":Lgnu/bytecode/ObjectType;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "caller":Lgnu/bytecode/ClassType;
    .end local v17    # "modifiers":I
    .end local v18    # "isStaticField":Z
    :cond_6
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v19

    goto/16 :goto_2

    .line 219
    .restart local v11    # "type":Lgnu/bytecode/Type;
    .restart local v12    # "part":Lgnu/bytecode/Member;
    .restart local v13    # "val1":Ljava/lang/Object;
    .restart local v14    # "ctype":Lgnu/bytecode/ObjectType;
    :cond_7
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    goto/16 :goto_3

    .line 231
    .restart local v16    # "caller":Lgnu/bytecode/ClassType;
    :cond_8
    move-object/from16 v19, v13

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/Member;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 235
    move-object/from16 v19, v13

    check-cast v19, Lgnu/bytecode/Member;

    move-object/from16 v12, v19

    .line 236
    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Lgnu/bytecode/Member;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    .restart local v15    # "name":Ljava/lang/String;
    goto/16 :goto_4

    .line 239
    .end local v15    # "name":Ljava/lang/String;
    :cond_9
    const/16 v19, 0x0

    move-object/from16 v15, v19

    .restart local v15    # "name":Ljava/lang/String;
    goto/16 :goto_4

    .line 244
    .restart local v17    # "modifiers":I
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 249
    .restart local v18    # "isStaticField":Z
    :cond_b
    move-object/from16 v21, v14

    invoke-static/range {v21 .. v21}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v21

    goto :goto_6

    .line 258
    :cond_c
    move-object/from16 v19, v4

    sget-object v20, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v21, v5

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto :goto_7

    .line 262
    .end local v13    # "val1":Ljava/lang/Object;
    .end local v14    # "ctype":Lgnu/bytecode/ObjectType;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "caller":Lgnu/bytecode/ClassType;
    .end local v17    # "modifiers":I
    .end local v18    # "isStaticField":Z
    :cond_d
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-static/range {v19 .. v21}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 263
    goto/16 :goto_1
.end method
