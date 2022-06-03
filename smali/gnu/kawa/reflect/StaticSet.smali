.class public Lgnu/kawa/reflect/StaticSet;
.super Lgnu/mapping/Procedure1;
.source "StaticSet.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field field:Lgnu/bytecode/Field;

.field fname:Ljava/lang/String;

.field reflectField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;I)V
    .locals 10

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/StaticSet;
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

    .line 22
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/kawa/reflect/StaticSet;->ctype:Lgnu/bytecode/ClassType;

    .line 23
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    .line 24
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v6

    iput-object v6, v5, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    .line 25
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    if-nez v5, :cond_0

    .line 26
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v6

    iput-object v6, v5, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    .line 27
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/StaticSet;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v2, p2

    .local v2, "fname":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/mapping/Procedure1;-><init>()V

    .line 16
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ClassType;

    iput-object v4, v3, Lgnu/kawa/reflect/StaticSet;->ctype:Lgnu/bytecode/ClassType;

    .line 17
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/StaticSet;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/reflect/StaticSet;->reflectField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_0

    .line 33
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/reflect/StaticSet;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 36
    .local v2, "clas":Ljava/lang/Class;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v4, Lgnu/kawa/reflect/StaticSet;->reflectField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 46
    .end local v2    # "clas":Ljava/lang/Class;
    :cond_0
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lgnu/kawa/reflect/StaticSet;->reflectField:Ljava/lang/reflect/Field;

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/reflect/StaticSet;
    return-object v0

    .line 38
    .restart local v0    # "this":Lgnu/kawa/reflect/StaticSet;
    .restart local v2    # "clas":Ljava/lang/Class;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 40
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

    iget-object v7, v7, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 49
    .end local v2    # "clas":Ljava/lang/Class;
    .end local v3    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 51
    .local v2, "ex":Ljava/lang/IllegalAccessException;
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

    iget-object v7, v7, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

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
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/StaticSet;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    if-nez v5, :cond_0

    .line 59
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/reflect/StaticSet;->ctype:Lgnu/bytecode/ClassType;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v6

    iput-object v6, v5, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    .line 60
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    if-nez v5, :cond_0

    .line 61
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/reflect/StaticSet;->ctype:Lgnu/bytecode/ClassType;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/reflect/StaticSet;->reflectField:Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/reflect/StaticSet;->reflectField:Ljava/lang/reflect/Field;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v6

    iput-object v6, v5, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    .line 64
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 65
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    move-object v4, v5

    .line 66
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 67
    move-object v5, v2

    sget-object v6, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 68
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/StaticSet;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/reflect/StaticSet;
    return-object v0
.end method
