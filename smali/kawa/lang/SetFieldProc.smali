.class public Lkawa/lang/SetFieldProc;
.super Lgnu/mapping/Procedure2;
.source "SetFieldProc.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field field:Lgnu/bytecode/Field;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SetFieldProc;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ClassType;
    move-object v2, p2

    .local v2, "fname":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/mapping/Procedure2;-><init>()V

    .line 20
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkawa/lang/SetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    .line 21
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v4

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/bytecode/Field;->searchField(Lgnu/bytecode/Field;Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    iput-object v4, v3, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    .line 22
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;I)V
    .locals 10

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SetFieldProc;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ClassType;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "ftype":Lgnu/bytecode/Type;
    move v4, p4

    .local v4, "flags":I
    move-object v5, v0

    invoke-direct {v5}, Lgnu/mapping/Procedure2;-><init>()V

    .line 26
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lkawa/lang/SetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    .line 27
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v6

    iput-object v6, v5, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    .line 28
    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    if-nez v5, :cond_0

    .line 29
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v6

    iput-object v6, v5, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    .line 30
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SetFieldProc;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v2, p2

    .local v2, "fname":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ClassType;

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lkawa/lang/SetFieldProc;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SetFieldProc;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v3, v4

    .line 37
    .local v3, "reflectField":Ljava/lang/reflect/Field;
    move-object v4, v0

    iget-object v4, v4, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 38
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    .line 50
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    .end local v0    # "this":Lkawa/lang/SetFieldProc;
    return-object v0

    .line 40
    .end local v3    # "reflectField":Ljava/lang/reflect/Field;
    .restart local v0    # "this":Lkawa/lang/SetFieldProc;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 42
    .local v3, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no such field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/SetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    .end local v3    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 47
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "illegal access for field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SetFieldProc;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/SetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object v4, v7

    .line 56
    .local v4, "loader":Ljava/lang/ClassLoader;
    move-object v7, v4

    instance-of v7, v7, Lgnu/bytecode/ArrayClassLoader;

    if-eqz v7, :cond_0

    .line 58
    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-static {v7, v8, v9}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 59
    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    move-object v5, v7

    .line 62
    .local v5, "args":[Lgnu/expr/Expression;
    move-object v7, v5

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lkawa/lang/SetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 63
    move-object v7, v5

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v9}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 64
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    move-object v6, v7

    .line 65
    .local v6, "code":Lgnu/bytecode/CodeAttr;
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 66
    move-object v7, v2

    sget-object v8, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 67
    goto :goto_0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SetFieldProc;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object v0, v2

    .end local v0    # "this":Lkawa/lang/SetFieldProc;
    return-object v0
.end method
