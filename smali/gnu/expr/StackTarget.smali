.class public Lgnu/expr/StackTarget;
.super Lgnu/expr/Target;
.source "StackTarget.java"


# instance fields
.field type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 4

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/expr/StackTarget;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/expr/Target;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/StackTarget;->type:Lgnu/bytecode/Type;

    return-void
.end method

.method static compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z
    .locals 7

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "comp":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "stackType":Lgnu/bytecode/Type;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 30
    const/4 v4, 0x1

    move v0, v4

    .line 54
    .end local v0    # "comp":Lgnu/expr/Compilation;
    :goto_0
    return v0

    .line 31
    .restart local v0    # "comp":Lgnu/expr/Compilation;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    move-object v3, v4

    .line 32
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 34
    move-object v4, v0

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {v4, v5}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 35
    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v1, v4

    .line 43
    :cond_1
    move-object v4, v1

    instance-of v4, v4, Lgnu/bytecode/ArrayType;

    if-eqz v4, :cond_4

    .line 45
    move-object v4, v2

    sget-object v5, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v4, v5, :cond_2

    const-string/jumbo v4, "java.lang.Cloneable"

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 47
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 37
    :cond_3
    move-object v4, v1

    instance-of v4, v4, Lgnu/bytecode/PrimType;

    if-eqz v4, :cond_1

    move-object v4, v2

    instance-of v4, v4, Lgnu/bytecode/PrimType;

    if-eqz v4, :cond_1

    .line 39
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/CodeAttr;->emitConvert(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V

    .line 40
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 51
    :cond_4
    move-object v4, v2

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/Type;->emitConvertFromPrimitive(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)V

    .line 52
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object v4

    move-object v1, v4

    .line 54
    :cond_5
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/bytecode/CodeAttr;->castNeeded(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static convert(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "comp":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "stackType":Lgnu/bytecode/Type;
    move-object v2, p2

    .local v2, "targetType":Lgnu/bytecode/Type;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lgnu/expr/StackTarget;->compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    move-object v3, v2

    move-object v4, v0

    invoke-static {v3, v4}, Lgnu/expr/StackTarget;->emitCoerceFromObject(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    .line 62
    :cond_0
    return-void
.end method

.method protected static emitCoerceFromObject(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)V
    .locals 7

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    move-object v2, v3

    .line 67
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    instance-of v3, v3, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v3, :cond_0

    .line 70
    move-object v3, v1

    move-object v4, v0

    sget-object v5, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 71
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 72
    move-object v3, v2

    const-string/jumbo v4, "gnu.bytecode.Type"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    const-string/jumbo v5, "coerceFromObject"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 78
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    goto :goto_0
.end method

.method public static getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;
    .locals 5

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/Type;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    :goto_0
    move-object v0, v1

    .end local v0    # "type":Lgnu/bytecode/Type;
    return-object v0

    .restart local v0    # "type":Lgnu/bytecode/Type;
    :cond_0
    move-object v1, v0

    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne v1, v2, :cond_1

    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    goto :goto_0

    :cond_1
    new-instance v1, Lgnu/expr/StackTarget;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    goto :goto_0
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lgnu/expr/StackTarget;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "stackType":Lgnu/bytecode/Type;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/StackTarget;->compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/StackTarget;->type:Lgnu/bytecode/Type;

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/expr/StackTarget;->emitCoerceFromObject(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)Z
    .locals 6

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/expr/StackTarget;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "stackType":Lgnu/bytecode/Type;
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/StackTarget;->type:Lgnu/bytecode/Type;

    invoke-static {v3, v4, v5}, Lgnu/expr/StackTarget;->compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/expr/StackTarget;
    return v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/expr/StackTarget;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/StackTarget;->type:Lgnu/bytecode/Type;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/StackTarget;
    return-object v0
.end method
