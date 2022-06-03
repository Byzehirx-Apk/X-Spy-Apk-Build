.class public Lgnu/kawa/functions/IsEq;
.super Lgnu/mapping/Procedure2;
.source "IsEq.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/IsEq;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/mapping/Procedure2;-><init>()V

    .line 15
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/functions/IsEq;->language:Lgnu/expr/Language;

    .line 16
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/functions/IsEq;->setName(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static compile([Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Language;)V
    .locals 11

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "args":[Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v3, p3

    .local v3, "language":Lgnu/expr/Language;
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v8

    move-object v4, v8

    .line 38
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move-object v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v9, v1

    sget-object v10, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 39
    move-object v8, v0

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object v9, v1

    sget-object v10, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 40
    move-object v8, v2

    instance-of v8, v8, Lgnu/expr/ConditionalTarget;

    if-eqz v8, :cond_1

    .line 42
    move-object v8, v2

    check-cast v8, Lgnu/expr/ConditionalTarget;

    move-object v5, v8

    .line 43
    .local v5, "ctarget":Lgnu/expr/ConditionalTarget;
    move-object v8, v5

    iget-boolean v8, v8, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz v8, :cond_0

    .line 44
    move-object v8, v4

    move-object v9, v5

    iget-object v9, v9, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->emitGotoIfNE(Lgnu/bytecode/Label;)V

    .line 47
    :goto_0
    move-object v8, v5

    move-object v9, v4

    invoke-virtual {v8, v9}, Lgnu/expr/ConditionalTarget;->emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V

    .line 48
    .line 75
    .end local v5    # "ctarget":Lgnu/expr/ConditionalTarget;
    :goto_1
    return-void

    .line 46
    .restart local v5    # "ctarget":Lgnu/expr/ConditionalTarget;
    :cond_0
    move-object v8, v4

    move-object v9, v5

    iget-object v9, v9, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->emitGotoIfEq(Lgnu/bytecode/Label;)V

    goto :goto_0

    .line 52
    .end local v5    # "ctarget":Lgnu/expr/ConditionalTarget;
    :cond_1
    move-object v8, v4

    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitIfEq()V

    .line 53
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    instance-of v8, v8, Lgnu/bytecode/ClassType;

    if-eqz v8, :cond_3

    .line 55
    move-object v8, v3

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 56
    .local v6, "trueValue":Ljava/lang/Object;
    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 57
    .local v7, "falseValue":Ljava/lang/Object;
    move-object v8, v1

    move-object v9, v6

    sget-object v10, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 58
    move-object v8, v4

    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 59
    move-object v8, v1

    move-object v9, v7

    sget-object v10, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 60
    move-object v8, v6

    instance-of v8, v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_2

    move-object v8, v7

    instance-of v8, v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_2

    .line 61
    sget-object v8, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    move-object v5, v8

    .line 64
    .line 72
    .end local v6    # "trueValue":Ljava/lang/Object;
    .end local v7    # "falseValue":Ljava/lang/Object;
    .local v5, "type":Lgnu/bytecode/Type;
    :goto_2
    move-object v8, v4

    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 73
    move-object v8, v2

    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 63
    .end local v5    # "type":Lgnu/bytecode/Type;
    .restart local v6    # "trueValue":Ljava/lang/Object;
    .restart local v7    # "falseValue":Ljava/lang/Object;
    :cond_2
    sget-object v8, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v5, v8

    .restart local v5    # "type":Lgnu/bytecode/Type;
    goto :goto_2

    .line 67
    .end local v5    # "type":Lgnu/bytecode/Type;
    .end local v6    # "trueValue":Ljava/lang/Object;
    .end local v7    # "falseValue":Ljava/lang/Object;
    :cond_3
    move-object v8, v4

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 68
    move-object v8, v4

    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 69
    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 70
    move-object v8, v3

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    move-object v5, v8

    .restart local v5    # "type":Lgnu/bytecode/Type;
    goto :goto_2
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/IsEq;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/kawa/functions/IsEq;
    return v0

    .restart local v0    # "this":Lgnu/kawa/functions/IsEq;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/IsEq;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/IsEq;->language:Lgnu/expr/Language;

    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/functions/IsEq;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/functions/IsEq;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/IsEq;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    move-object v5, v2

    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/functions/IsEq;->language:Lgnu/expr/Language;

    invoke-static {v4, v5, v6, v7}, Lgnu/kawa/functions/IsEq;->compile([Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Language;)V

    .line 32
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/IsEq;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/functions/IsEq;->language:Lgnu/expr/Language;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/IsEq;
    return-object v0
.end method
