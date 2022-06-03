.class public Lkawa/lang/GetFieldProc;
.super Lgnu/mapping/Procedure1;
.source "GetFieldProc.java"

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

    .local v0, "this":Lkawa/lang/GetFieldProc;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ClassType;
    move-object v2, p2

    .local v2, "fname":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/mapping/Procedure1;-><init>()V

    .line 20
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkawa/lang/GetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    .line 21
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v4

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/bytecode/Field;->searchField(Lgnu/bytecode/Field;Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    iput-object v4, v3, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    .line 22
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;I)V
    .locals 10

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lkawa/lang/GetFieldProc;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ClassType;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "ftype":Lgnu/bytecode/Type;
    move v4, p4

    .local v4, "flags":I
    move-object v5, v0

    invoke-direct {v5}, Lgnu/mapping/Procedure1;-><init>()V

    .line 26
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lkawa/lang/GetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    .line 27
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v6

    iput-object v6, v5, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    .line 28
    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    if-nez v5, :cond_0

    .line 29
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v6

    iput-object v6, v5, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    .line 30
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lkawa/lang/GetFieldProc;
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

    invoke-direct {v3, v4, v5}, Lkawa/lang/GetFieldProc;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method private getField()Lgnu/bytecode/Field;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lkawa/lang/GetFieldProc;
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/GetFieldProc;
    return-object v0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lkawa/lang/GetFieldProc;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v2, v3

    .line 37
    .local v2, "reflectField":Ljava/lang/reflect/Field;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lkawa/lang/GetFieldProc;
    return-object v0

    .line 39
    .end local v2    # "reflectField":Ljava/lang/reflect/Field;
    .restart local v0    # "this":Lkawa/lang/GetFieldProc;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 41
    .local v2, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no such field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/GetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 44
    .end local v2    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 46
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "illegal access for field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 9

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lkawa/lang/GetFieldProc;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/GetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v4, v6

    .line 59
    .local v4, "loader":Ljava/lang/ClassLoader;
    move-object v6, v4

    instance-of v6, v6, Lgnu/bytecode/ArrayClassLoader;

    if-eqz v6, :cond_0

    .line 61
    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-static {v6, v7, v8}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 62
    .line 68
    :goto_0
    return-void

    .line 64
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lkawa/lang/GetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 65
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    move-object v5, v6

    .line 66
    .local v5, "code":Lgnu/bytecode/CodeAttr;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 67
    move-object v6, v3

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v8}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 68
    goto :goto_0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lkawa/lang/GetFieldProc;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move-object v2, v0

    invoke-direct {v2}, Lkawa/lang/GetFieldProc;->getField()Lgnu/bytecode/Field;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lkawa/lang/GetFieldProc;
    return-object v0
.end method
