.class public Lgnu/kawa/reflect/Invoke;
.super Lgnu/mapping/ProcedureN;
.source "Invoke.java"


# static fields
.field public static final invoke:Lgnu/kawa/reflect/Invoke;

.field public static final invokeSpecial:Lgnu/kawa/reflect/Invoke;

.field public static final invokeStatic:Lgnu/kawa/reflect/Invoke;

.field public static final make:Lgnu/kawa/reflect/Invoke;


# instance fields
.field kind:C

.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 28
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "invoke"

    const/16 v3, 0x2a

    invoke-direct {v1, v2, v3}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    .line 29
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "invoke-static"

    const/16 v3, 0x53

    invoke-direct {v1, v2, v3}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    .line 30
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "invoke-special"

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->invokeSpecial:Lgnu/kawa/reflect/Invoke;

    .line 31
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "make"

    const/16 v3, 0x4e

    invoke-direct {v1, v2, v3}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 7

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/Invoke;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "kind":C
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;CLgnu/expr/Language;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CLgnu/expr/Language;)V
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/Invoke;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "kind":C
    move-object v3, p3

    .local v3, "language":Lgnu/expr/Language;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 41
    move-object v4, v0

    move v5, v2

    iput-char v5, v4, Lgnu/kawa/reflect/Invoke;->kind:C

    .line 42
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    .line 43
    move-object v4, v0

    sget-object v5, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v6, "gnu.kawa.reflect.CompileInvoke:validateApplyInvoke"

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/reflect/Invoke;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public static declared-synchronized getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;
    .locals 7

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":[Lgnu/expr/Expression;
    const-class v6, Lgnu/kawa/reflect/Invoke;

    monitor-enter v6

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    :try_start_0
    invoke-static {v3, v4, v5}, Lgnu/kawa/reflect/CompileInvoke;->getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "type":Lgnu/bytecode/ClassType;
    monitor-exit v6

    return-object v0

    .restart local v0    # "type":Lgnu/bytecode/ClassType;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "type":Lgnu/bytecode/ClassType;
    throw v0
.end method

.method public static invoke$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0
.end method

.method public static invokeStatic$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0
.end method

.method public static make$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0
.end method

.method public static declared-synchronized makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;
    .locals 10

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":[Lgnu/expr/Expression;
    const-class v8, Lgnu/kawa/reflect/Invoke;

    monitor-enter v8

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    :try_start_0
    invoke-static {v4, v5, v6}, Lgnu/kawa/reflect/Invoke;->getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;

    move-result-object v4

    move-object v3, v4

    .line 300
    .local v3, "method":Lgnu/expr/PrimProcedure;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 301
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "missing or ambiguous method `"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local v3    # "method":Lgnu/expr/PrimProcedure;
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "type":Lgnu/bytecode/ClassType;
    throw v0

    .line 303
    .restart local v0    # "type":Lgnu/bytecode/ClassType;
    .restart local v3    # "method":Lgnu/expr/PrimProcedure;
    :cond_0
    :try_start_1
    new-instance v4, Lgnu/expr/ApplyExp;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    .end local v0    # "type":Lgnu/bytecode/ClassType;
    monitor-exit v8

    return-object v0
.end method

.method private static typeFrom(Ljava/lang/Object;Lgnu/kawa/reflect/Invoke;)Lgnu/bytecode/ObjectType;
    .locals 9

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "thisProc":Lgnu/kawa/reflect/Invoke;
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 65
    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    invoke-static {v2}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v0, v2

    .line 66
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Lgnu/bytecode/ObjectType;

    if-eqz v2, :cond_1

    .line 67
    move-object v2, v0

    check-cast v2, Lgnu/bytecode/ObjectType;

    move-object v0, v2

    .line 73
    :goto_0
    return-object v0

    .line 68
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v0

    instance-of v2, v2, Lgnu/lists/FString;

    if-eqz v2, :cond_3

    .line 69
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 70
    :cond_3
    move-object v2, v0

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_4

    .line 71
    move-object v2, v0

    check-cast v2, Lgnu/mapping/Symbol;

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 72
    :cond_4
    move-object v2, v0

    instance-of v2, v2, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v2, :cond_5

    .line 73
    move-object v2, v0

    check-cast v2, Lgnu/kawa/lispexpr/ClassNamespace;

    invoke-virtual {v2}, Lgnu/kawa/lispexpr/ClassNamespace;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 74
    :cond_5
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v0

    const-string/jumbo v7, "class-specifier"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/Invoke;
    move-object/from16 v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    .line 80
    .local v2, "args":[Ljava/lang/Object;
    move-object v9, v0

    iget-char v9, v9, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v10, 0x53

    if-eq v9, v10, :cond_0

    move-object v9, v0

    iget-char v9, v9, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v10, 0x56

    if-eq v9, v10, :cond_0

    move-object v9, v0

    iget-char v9, v9, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v10, 0x73

    if-eq v9, v10, :cond_0

    move-object v9, v0

    iget-char v9, v9, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v10, 0x2a

    if-ne v9, v10, :cond_6

    .line 84
    :cond_0
    move-object v9, v2

    array-length v9, v9

    move v3, v9

    .line 85
    .local v3, "nargs":I
    move-object v9, v0

    move v10, v3

    invoke-static {v9, v10}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 86
    move-object v9, v2

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v4, v9

    .line 87
    .local v4, "arg0":Ljava/lang/Object;
    move-object v9, v0

    iget-char v9, v9, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v10, 0x53

    if-eq v9, v10, :cond_1

    move-object v9, v0

    iget-char v9, v9, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v10, 0x73

    if-ne v9, v10, :cond_4

    :cond_1
    move-object v9, v4

    move-object v10, v0

    invoke-static {v9, v10}, Lgnu/kawa/reflect/Invoke;->typeFrom(Ljava/lang/Object;Lgnu/kawa/reflect/Invoke;)Lgnu/bytecode/ObjectType;

    move-result-object v9

    :goto_0
    check-cast v9, Lgnu/bytecode/ObjectType;

    check-cast v9, Lgnu/bytecode/ObjectType;

    move-object v5, v9

    .line 90
    .local v5, "dtype":Lgnu/bytecode/ObjectType;
    move-object v9, v0

    move-object v10, v5

    move-object v11, v2

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v9, v10, v11}, Lgnu/kawa/reflect/Invoke;->lookupMethods(Lgnu/bytecode/ObjectType;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object v9

    move-object v6, v9

    .line 91
    .local v6, "proc":Lgnu/mapping/Procedure;
    move v9, v3

    move-object v10, v0

    iget-char v10, v10, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v11, 0x53

    if-ne v10, v11, :cond_5

    const/4 v10, 0x2

    :goto_1
    sub-int/2addr v9, v10

    new-array v9, v9, [Ljava/lang/Object;

    move-object v7, v9

    .line 92
    .local v7, "margs":[Ljava/lang/Object;
    const/4 v9, 0x0

    move v8, v9

    .line 93
    .local v8, "i":I
    move-object v9, v0

    iget-char v9, v9, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v10, 0x56

    if-eq v9, v10, :cond_2

    move-object v9, v0

    iget-char v9, v9, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v10, 0x2a

    if-ne v9, v10, :cond_3

    .line 94
    :cond_2
    move-object v9, v7

    move v10, v8

    add-int/lit8 v8, v8, 0x1

    move-object v11, v2

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    .line 95
    :cond_3
    move-object v9, v2

    const/4 v10, 0x2

    move-object v11, v7

    move v12, v8

    move v13, v3

    const/4 v14, 0x2

    add-int/lit8 v13, v13, -0x2

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    move-object v9, v6

    move-object v10, v7

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 97
    .line 100
    .end local v3    # "nargs":I
    .end local v4    # "arg0":Ljava/lang/Object;
    .end local v5    # "dtype":Lgnu/bytecode/ObjectType;
    .end local v6    # "proc":Lgnu/mapping/Procedure;
    .end local v7    # "margs":[Ljava/lang/Object;
    .end local v8    # "i":I
    :goto_2
    return-void

    .line 87
    .restart local v3    # "nargs":I
    .restart local v4    # "arg0":Ljava/lang/Object;
    :cond_4
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v9

    goto :goto_0

    .line 91
    .restart local v5    # "dtype":Lgnu/bytecode/ObjectType;
    .restart local v6    # "proc":Lgnu/mapping/Procedure;
    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    .line 99
    .end local v3    # "nargs":I
    .end local v4    # "arg0":Ljava/lang/Object;
    .end local v5    # "dtype":Lgnu/bytecode/ObjectType;
    .end local v6    # "proc":Lgnu/mapping/Procedure;
    :cond_6
    move-object v9, v1

    move-object v10, v0

    move-object v11, v2

    invoke-virtual {v10, v11}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/reflect/Invoke;
    move-object/from16 v3, p1

    .local v3, "args":[Ljava/lang/Object;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v19, v0

    const/16 v20, 0x50

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 105
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lgnu/kawa/reflect/Invoke;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ": invoke-special not allowed at run time"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 108
    :cond_0
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v4, v19

    .line 109
    .local v4, "nargs":I
    move-object/from16 v19, v2

    move/from16 v20, v4

    invoke-static/range {v19 .. v20}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 110
    move-object/from16 v19, v3

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v5, v19

    .line 111
    .local v5, "arg0":Ljava/lang/Object;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v19, v0

    const/16 v20, 0x56

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v19, v0

    const/16 v20, 0x2a

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v19, v5

    move-object/from16 v20, v2

    invoke-static/range {v19 .. v20}, Lgnu/kawa/reflect/Invoke;->typeFrom(Ljava/lang/Object;Lgnu/kawa/reflect/Invoke;)Lgnu/bytecode/ObjectType;

    move-result-object v19

    :goto_0
    move-object/from16 v6, v19

    .line 114
    .local v6, "dtype":Lgnu/bytecode/ObjectType;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v19, v0

    const/16 v20, 0x4e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 116
    const/16 v19, 0x0

    move-object/from16 v7, v19

    .line 117
    .local v7, "mname":Ljava/lang/Object;
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/TypeValue;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 119
    move-object/from16 v19, v6

    check-cast v19, Lgnu/expr/TypeValue;

    invoke-interface/range {v19 .. v19}, Lgnu/expr/TypeValue;->getConstructor()Lgnu/mapping/Procedure;

    move-result-object v19

    move-object/from16 v8, v19

    .line 120
    .local v8, "constructor":Lgnu/mapping/Procedure;
    move-object/from16 v19, v8

    if-eqz v19, :cond_2

    .line 122
    add-int/lit8 v4, v4, -0x1

    .line 123
    move/from16 v19, v4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v9, v19

    .line 124
    .local v9, "xargs":[Ljava/lang/Object;
    move-object/from16 v19, v3

    const/16 v20, 0x1

    move-object/from16 v21, v9

    const/16 v22, 0x0

    move/from16 v23, v4

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    move-object/from16 v19, v8

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    .line 254
    .end local v2    # "this":Lgnu/kawa/reflect/Invoke;
    .end local v7    # "mname":Ljava/lang/Object;
    .end local v8    # "constructor":Lgnu/mapping/Procedure;
    .end local v9    # "xargs":[Ljava/lang/Object;
    :goto_1
    return-object v2

    .line 111
    .end local v6    # "dtype":Lgnu/bytecode/ObjectType;
    .restart local v2    # "this":Lgnu/kawa/reflect/Invoke;
    :cond_1
    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v19

    check-cast v19, Lgnu/bytecode/ObjectType;

    goto :goto_0

    .line 128
    .restart local v6    # "dtype":Lgnu/bytecode/ObjectType;
    .restart local v7    # "mname":Ljava/lang/Object;
    :cond_2
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/PairClassType;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 130
    move-object/from16 v19, v6

    check-cast v19, Lgnu/expr/PairClassType;

    move-object/from16 v8, v19

    .line 131
    .local v8, "ptype":Lgnu/expr/PairClassType;
    move-object/from16 v19, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    move-object/from16 v6, v19

    .line 133
    .end local v8    # "ptype":Lgnu/expr/PairClassType;
    :cond_3
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 135
    move-object/from16 v19, v6

    check-cast v19, Lgnu/bytecode/ArrayType;

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v19

    move-object/from16 v8, v19

    .line 137
    .local v8, "elementType":Lgnu/bytecode/Type;
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v9, v19

    .line 142
    .local v9, "len":I
    move/from16 v19, v9

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    move-object/from16 v19, v3

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    const-string/jumbo v19, "length"

    move-object/from16 v20, v3

    const/16 v21, 0x1

    aget-object v20, v20, v21

    check-cast v20, Lgnu/expr/Keyword;

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v10, v21

    .local v10, "name":Ljava/lang/String;
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string/jumbo v19, "size"

    move-object/from16 v20, v10

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 146
    :cond_4
    move-object/from16 v19, v3

    const/16 v20, 0x2

    aget-object v19, v19, v20

    check-cast v19, Ljava/lang/Number;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v19

    move/from16 v11, v19

    .line 147
    .local v11, "length":I
    const/16 v19, 0x3

    move/from16 v12, v19

    .line 148
    .local v12, "i":I
    const/16 v19, 0x1

    move/from16 v13, v19

    .line 156
    .end local v10    # "name":Ljava/lang/String;
    .local v13, "lengthSpecified":Z
    :goto_2
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v19

    move/from16 v20, v11

    invoke-static/range {v19 .. v20}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v14, v19

    .line 158
    .local v14, "arr":Ljava/lang/Object;
    const/16 v19, 0x0

    move/from16 v15, v19

    .line 159
    .local v15, "index":I
    :goto_3
    move/from16 v19, v12

    move/from16 v20, v9

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_7

    .line 161
    move-object/from16 v19, v3

    move/from16 v20, v12

    aget-object v19, v19, v20

    move-object/from16 v16, v19

    .line 162
    .local v16, "arg":Ljava/lang/Object;
    move/from16 v19, v13

    if-eqz v19, :cond_5

    move-object/from16 v19, v16

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v12

    move/from16 v20, v9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 164
    move-object/from16 v19, v16

    check-cast v19, Lgnu/expr/Keyword;

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v17, v19

    .line 167
    .local v17, "kname":Ljava/lang/String;
    move-object/from16 v19, v17

    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    move/from16 v15, v19

    .line 172
    .line 173
    move-object/from16 v19, v3

    add-int/lit8 v12, v12, 0x1

    move/from16 v20, v12

    aget-object v19, v19, v20

    move-object/from16 v16, v19

    .line 175
    .end local v17    # "kname":Ljava/lang/String;
    :cond_5
    move-object/from16 v19, v14

    move/from16 v20, v15

    move-object/from16 v21, v8

    move-object/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 176
    add-int/lit8 v15, v15, 0x1

    .line 159
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 152
    .end local v11    # "length":I
    .end local v12    # "i":I
    .end local v13    # "lengthSpecified":Z
    .end local v14    # "arr":Ljava/lang/Object;
    .end local v15    # "index":I
    .end local v16    # "arg":Ljava/lang/Object;
    :cond_6
    move/from16 v19, v9

    move/from16 v11, v19

    .line 153
    .restart local v11    # "length":I
    const/16 v19, 0x1

    move/from16 v12, v19

    .line 154
    .restart local v12    # "i":I
    const/16 v19, 0x0

    move/from16 v13, v19

    .restart local v13    # "lengthSpecified":Z
    goto :goto_2

    .line 169
    .restart local v14    # "arr":Ljava/lang/Object;
    .restart local v15    # "index":I
    .restart local v16    # "arg":Ljava/lang/Object;
    .restart local v17    # "kname":Ljava/lang/String;
    :catch_0
    move-exception v19

    move-object/from16 v18, v19

    .line 171
    .local v18, "ex":Ljava/lang/Throwable;
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "non-integer keyword \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\' in array constructor"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 178
    .end local v16    # "arg":Ljava/lang/Object;
    .end local v17    # "kname":Ljava/lang/String;
    .end local v18    # "ex":Ljava/lang/Throwable;
    :cond_7
    move-object/from16 v19, v14

    move-object/from16 v2, v19

    goto/16 :goto_1

    .line 183
    .end local v7    # "mname":Ljava/lang/Object;
    .end local v8    # "elementType":Lgnu/bytecode/Type;
    .end local v9    # "len":I
    .end local v11    # "length":I
    .end local v12    # "i":I
    .end local v13    # "lengthSpecified":Z
    .end local v14    # "arr":Ljava/lang/Object;
    .end local v15    # "index":I
    :cond_8
    move-object/from16 v19, v3

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v7, v19

    .line 185
    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-virtual/range {v19 .. v21}, Lgnu/kawa/reflect/Invoke;->lookupMethods(Lgnu/bytecode/ObjectType;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object v19

    move-object/from16 v8, v19

    .line 186
    .local v8, "proc":Lgnu/mapping/MethodProc;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v19, v0

    const/16 v20, 0x4e

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    .line 188
    move/from16 v19, v4

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v20, v0

    const/16 v21, 0x53

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v20, v0

    const/16 v21, 0x73

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    :cond_a
    const/16 v20, 0x2

    :goto_4
    sub-int v19, v19, v20

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v9, v19

    .line 189
    .local v9, "margs":[Ljava/lang/Object;
    const/16 v19, 0x0

    move/from16 v10, v19

    .line 190
    .local v10, "i":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v19, v0

    const/16 v20, 0x56

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v19, v0

    const/16 v20, 0x2a

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 191
    :cond_b
    move-object/from16 v19, v9

    move/from16 v20, v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v21, v3

    const/16 v22, 0x0

    aget-object v21, v21, v22

    aput-object v21, v19, v20

    .line 192
    :cond_c
    move-object/from16 v19, v3

    const/16 v20, 0x2

    move-object/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v4

    const/16 v24, 0x2

    add-int/lit8 v23, v23, -0x2

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    move-object/from16 v19, v8

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_1

    .line 188
    .end local v9    # "margs":[Ljava/lang/Object;
    .end local v10    # "i":I
    :cond_d
    const/16 v20, 0x1

    goto :goto_4

    .line 197
    :cond_e
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v19

    move-object/from16 v9, v19

    .line 198
    .local v9, "vars":Lgnu/mapping/CallContext;
    const/16 v19, 0x0

    move/from16 v10, v19

    .line 200
    .local v10, "keywordStart":I
    :goto_5
    move/from16 v19, v10

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_f

    move-object/from16 v19, v3

    move/from16 v20, v10

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v19, v0

    if-nez v19, :cond_f

    .line 201
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 204
    :cond_f
    const/16 v19, -0x1

    move/from16 v12, v19

    .line 205
    .local v12, "err":I
    move/from16 v19, v10

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 207
    move-object/from16 v19, v8

    move-object/from16 v20, v3

    move-object/from16 v21, v9

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v19

    move/from16 v12, v19

    .line 208
    move/from16 v19, v12

    if-nez v19, :cond_10

    .line 209
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_1

    .line 211
    :cond_10
    move-object/from16 v19, v6

    check-cast v19, Lgnu/bytecode/ClassType;

    const-string/jumbo v20, "valueOf"

    const/16 v21, 0x0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    move-object/from16 v22, v0

    invoke-static/range {v19 .. v22}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v19

    move-object/from16 v13, v19

    .line 213
    .local v13, "vproc":Lgnu/mapping/MethodProc;
    move-object/from16 v19, v13

    if-eqz v19, :cond_11

    .line 215
    move/from16 v19, v4

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v14, v19

    .line 216
    .local v14, "margs":[Ljava/lang/Object;
    move-object/from16 v19, v3

    const/16 v20, 0x1

    move-object/from16 v21, v14

    const/16 v22, 0x0

    move/from16 v23, v4

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v9

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v19

    move/from16 v12, v19

    .line 218
    move/from16 v19, v12

    if-nez v19, :cond_11

    .line 219
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_1

    .line 221
    .end local v14    # "margs":[Ljava/lang/Object;
    :cond_11
    move-object/from16 v19, v8

    move-object/from16 v20, v3

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/MethodProc;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v11, v19

    .line 230
    .end local v13    # "vproc":Lgnu/mapping/MethodProc;
    .local v11, "result":Ljava/lang/Object;
    :goto_6
    move/from16 v19, v10

    move/from16 v13, v19

    .line 232
    .local v13, "i":I
    :goto_7
    move/from16 v19, v13

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_12

    .line 234
    move-object/from16 v19, v3

    move/from16 v20, v13

    aget-object v19, v19, v20

    move-object/from16 v14, v19

    .line 235
    .local v14, "arg":Ljava/lang/Object;
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v19, v0

    if-nez v19, :cond_15

    .line 236
    .line 242
    .end local v14    # "arg":Ljava/lang/Object;
    :cond_12
    move/from16 v19, v10

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 243
    const/16 v19, 0x1

    move/from16 v13, v19

    .line 244
    :cond_13
    move/from16 v19, v13

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    .line 246
    move-object/from16 v19, v6

    check-cast v19, Lgnu/bytecode/ClassType;

    const-string/jumbo v20, "add"

    const/16 v21, 0x0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    move-object/from16 v22, v0

    invoke-static/range {v19 .. v22}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v19

    move-object/from16 v14, v19

    .line 248
    .local v14, "aproc":Lgnu/mapping/MethodProc;
    move-object/from16 v19, v14

    if-nez v19, :cond_16

    .line 249
    move/from16 v19, v12

    move-object/from16 v20, v8

    move-object/from16 v21, v3

    invoke-static/range {v19 .. v21}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v19

    throw v19

    .line 225
    .end local v11    # "result":Ljava/lang/Object;
    .end local v13    # "i":I
    .end local v14    # "aproc":Lgnu/mapping/MethodProc;
    :cond_14
    move/from16 v19, v10

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v13, v19

    .line 226
    .local v13, "cargs":[Ljava/lang/Object;
    move-object/from16 v19, v3

    const/16 v20, 0x0

    move-object/from16 v21, v13

    const/16 v22, 0x0

    move/from16 v23, v10

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    move-object/from16 v19, v8

    move-object/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v11, v19

    .restart local v11    # "result":Ljava/lang/Object;
    goto/16 :goto_6

    .line 237
    .local v13, "i":I
    .local v14, "arg":Ljava/lang/Object;
    :cond_15
    move-object/from16 v19, v14

    check-cast v19, Lgnu/expr/Keyword;

    move-object/from16 v15, v19

    .line 238
    .local v15, "key":Lgnu/expr/Keyword;
    move-object/from16 v19, v3

    move/from16 v20, v13

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v14, v19

    .line 239
    const/16 v19, 0x0

    move-object/from16 v20, v11

    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v14

    invoke-static/range {v19 .. v22}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    add-int/lit8 v13, v13, 0x2

    goto/16 :goto_7

    .line 250
    .end local v15    # "key":Lgnu/expr/Keyword;
    .local v14, "aproc":Lgnu/mapping/MethodProc;
    :cond_16
    :goto_8
    move/from16 v19, v13

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_17

    .line 251
    move-object/from16 v19, v14

    move-object/from16 v20, v11

    move-object/from16 v21, v3

    move/from16 v22, v13

    add-int/lit8 v13, v13, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/MethodProc;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    goto :goto_8

    .line 254
    .end local v14    # "aproc":Lgnu/mapping/MethodProc;
    :cond_17
    move-object/from16 v19, v11

    move-object/from16 v2, v19

    goto/16 :goto_1
.end method

.method protected lookupMethods(Lgnu/bytecode/ObjectType;Ljava/lang/Object;)Lgnu/mapping/MethodProc;
    .locals 11

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/Invoke;
    move-object v1, p1

    .local v1, "dtype":Lgnu/bytecode/ObjectType;
    move-object v2, p2

    .local v2, "name":Ljava/lang/Object;
    move-object v5, v0

    iget-char v5, v5, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v6, 0x4e

    if-ne v5, v6, :cond_0

    .line 267
    const-string/jumbo v5, "<init>"

    move-object v3, v5

    .line 278
    .local v3, "mname":Ljava/lang/String;
    :goto_0
    move-object v5, v1

    move-object v6, v3

    move-object v7, v0

    iget-char v7, v7, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v8, 0x50

    if-ne v7, v8, :cond_4

    const/16 v7, 0x50

    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    invoke-static {v5, v6, v7, v8}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v5

    move-object v4, v5

    .line 283
    .local v4, "proc":Lgnu/mapping/MethodProc;
    move-object v5, v4

    if-nez v5, :cond_7

    .line 284
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/kawa/reflect/Invoke;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": no method named `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' in class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 270
    .end local v3    # "mname":Ljava/lang/String;
    .end local v4    # "proc":Lgnu/mapping/MethodProc;
    :cond_0
    move-object v5, v2

    instance-of v5, v5, Ljava/lang/String;

    if-nez v5, :cond_1

    move-object v5, v2

    instance-of v5, v5, Lgnu/lists/FString;

    if-eqz v5, :cond_2

    .line 271
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 276
    .restart local v3    # "mname":Ljava/lang/String;
    :goto_2
    move-object v5, v3

    invoke-static {v5}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    .line 272
    .end local v3    # "mname":Ljava/lang/String;
    :cond_2
    move-object v5, v2

    instance-of v5, v5, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_3

    .line 273
    move-object v5, v2

    check-cast v5, Lgnu/mapping/Symbol;

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .restart local v3    # "mname":Ljava/lang/String;
    goto :goto_2

    .line 275
    .end local v3    # "mname":Ljava/lang/String;
    :cond_3
    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw v5

    .line 278
    .restart local v3    # "mname":Ljava/lang/String;
    :cond_4
    move-object v7, v0

    iget-char v7, v7, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_5

    move-object v7, v0

    iget-char v7, v7, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v8, 0x56

    if-ne v7, v8, :cond_6

    :cond_5
    const/16 v7, 0x56

    goto/16 :goto_1

    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 286
    .restart local v4    # "proc":Lgnu/mapping/MethodProc;
    :cond_7
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/reflect/Invoke;
    return-object v0
.end method

.method public numArgs()I
    .locals 4

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/Invoke;
    const/16 v1, -0x1000

    move-object v2, v0

    iget-char v2, v2, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    or-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/Invoke;
    return v0

    .restart local v0    # "this":Lgnu/kawa/reflect/Invoke;
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method
