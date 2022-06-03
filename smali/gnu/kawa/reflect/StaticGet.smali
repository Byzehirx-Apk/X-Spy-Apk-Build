.class public Lgnu/kawa/reflect/StaticGet;
.super Lgnu/mapping/Procedure0;
.source "StaticGet.java"

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

    .local v0, "this":Lgnu/kawa/reflect/StaticGet;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ClassType;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "ftype":Lgnu/bytecode/Type;
    move v4, p4

    .local v4, "flags":I
    move-object v5, v0

    invoke-direct {v5}, Lgnu/mapping/Procedure0;-><init>()V

    .line 22
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/kawa/reflect/StaticGet;->ctype:Lgnu/bytecode/ClassType;

    .line 23
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lgnu/kawa/reflect/StaticGet;->fname:Ljava/lang/String;

    .line 24
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v6

    iput-object v6, v5, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    .line 25
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    if-nez v5, :cond_0

    .line 26
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v6

    iput-object v6, v5, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    .line 27
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/StaticGet;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v2, p2

    .local v2, "fname":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/mapping/Procedure0;-><init>()V

    .line 16
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ClassType;

    iput-object v4, v3, Lgnu/kawa/reflect/StaticGet;->ctype:Lgnu/bytecode/ClassType;

    .line 17
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/reflect/StaticGet;->fname:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private getField()Lgnu/bytecode/Field;
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/StaticGet;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    if-nez v1, :cond_0

    .line 58
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/reflect/StaticGet;->ctype:Lgnu/bytecode/ClassType;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/StaticGet;->fname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v2

    iput-object v2, v1, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    .line 59
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    if-nez v1, :cond_0

    .line 60
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/reflect/StaticGet;->ctype:Lgnu/bytecode/ClassType;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/StaticGet;->fname:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/reflect/StaticGet;->reflectField:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/reflect/StaticGet;->reflectField:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v2

    iput-object v2, v1, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    .line 63
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/StaticGet;
    return-object v0
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/StaticGet;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/StaticGet;->reflectField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_0

    .line 33
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/StaticGet;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 36
    .local v1, "clas":Ljava/lang/Class;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lgnu/kawa/reflect/StaticGet;->fname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v3, Lgnu/kawa/reflect/StaticGet;->reflectField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 46
    .end local v1    # "clas":Ljava/lang/Class;
    :cond_0
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lgnu/kawa/reflect/StaticGet;->reflectField:Ljava/lang/reflect/Field;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/reflect/StaticGet;
    return-object v0

    .line 38
    .restart local v0    # "this":Lgnu/kawa/reflect/StaticGet;
    .restart local v1    # "clas":Ljava/lang/Class;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 40
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

    iget-object v6, v6, Lgnu/kawa/reflect/StaticGet;->fname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    .end local v1    # "clas":Ljava/lang/Class;
    .end local v2    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 50
    .local v1, "ex":Ljava/lang/IllegalAccessException;
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

    iget-object v6, v6, Lgnu/kawa/reflect/StaticGet;->fname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/StaticGet;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v5, v0

    invoke-direct {v5}, Lgnu/kawa/reflect/StaticGet;->getField()Lgnu/bytecode/Field;

    move-result-object v5

    .line 69
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    move-object v4, v5

    .line 70
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 71
    move-object v5, v3

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/reflect/StaticGet;->field:Lgnu/bytecode/Field;

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 72
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/StaticGet;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/reflect/StaticGet;->getField()Lgnu/bytecode/Field;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/reflect/StaticGet;
    return-object v0
.end method
