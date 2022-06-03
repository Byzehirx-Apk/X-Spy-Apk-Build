.class public Lgnu/kawa/reflect/InstanceOf;
.super Lgnu/mapping/Procedure2;
.source "InstanceOf.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field static instanceMethod:Lgnu/bytecode/Method;

.field static typeType:Lgnu/bytecode/ClassType;


# instance fields
.field protected language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;)V
    .locals 5

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/InstanceOf;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/Procedure2;-><init>()V

    .line 12
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    .line 13
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v4, "gnu.kawa.reflect.CompileReflect:validateApplyInstanceOf"

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/reflect/InstanceOf;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/InstanceOf;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;)V

    .line 20
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/reflect/InstanceOf;->setName(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "type":Lgnu/expr/TypeValue;
    move-object v1, p1

    .local v1, "incoming":Lgnu/bytecode/Variable;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    move-object v4, v6

    .line 93
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v2

    invoke-interface {v6, v7, v8, v9}, Lgnu/expr/TypeValue;->emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 94
    const/4 v6, 0x0

    move-object v5, v6

    .line 95
    .local v5, "cond":Lgnu/expr/ConditionalTarget;
    move-object v6, v3

    instance-of v6, v6, Lgnu/expr/ConditionalTarget;

    if-eqz v6, :cond_1

    .line 97
    move-object v6, v3

    check-cast v6, Lgnu/expr/ConditionalTarget;

    move-object v5, v6

    .line 98
    move-object v6, v4

    move-object v7, v5

    iget-object v7, v7, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 102
    :goto_0
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 103
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 104
    move-object v6, v4

    move-object v7, v5

    iget-object v7, v7, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 107
    :goto_1
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 108
    move-object v6, v5

    if-nez v6, :cond_0

    .line 109
    move-object v6, v3

    move-object v7, v2

    move-object v8, v2

    invoke-virtual {v8}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 111
    :cond_0
    return-void

    .line 101
    :cond_1
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_0

    .line 106
    :cond_2
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_1
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/InstanceOf;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/expr/Language;->asType(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object v4

    move-object v3, v4

    .line 26
    .local v3, "type":Lgnu/bytecode/Type;
    move-object v4, v3

    instance-of v4, v4, Lgnu/bytecode/PrimType;

    if-eqz v4, :cond_0

    .line 27
    move-object v4, v3

    check-cast v4, Lgnu/bytecode/PrimType;

    invoke-virtual {v4}, Lgnu/bytecode/PrimType;->boxedType()Lgnu/bytecode/ClassType;

    move-result-object v4

    move-object v3, v4

    .line 28
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/reflect/InstanceOf;
    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 15

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/InstanceOf;
    move-object/from16 v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object/from16 v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v9

    move-object v4, v9

    .line 37
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v9

    move-object v5, v9

    .line 38
    .local v5, "code":Lgnu/bytecode/CodeAttr;
    const/4 v9, 0x0

    move-object v6, v9

    .line 39
    .local v6, "type":Lgnu/bytecode/Type;
    move-object v9, v4

    const/4 v10, 0x1

    aget-object v9, v9, v10

    move-object v7, v9

    .line 40
    .local v7, "typeArg":Lgnu/expr/Expression;
    move-object v9, v7

    instance-of v9, v9, Lgnu/expr/QuoteExp;

    if-eqz v9, :cond_1

    .line 44
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    move-object v10, v7

    check-cast v10, Lgnu/expr/QuoteExp;

    invoke-virtual {v10}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/expr/Language;->asType(Ljava/lang/Object;)Lgnu/bytecode/Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v6, v9

    .line 49
    .line 53
    :goto_0
    move-object v9, v6

    if-eqz v9, :cond_3

    .line 55
    move-object v9, v6

    instance-of v9, v9, Lgnu/bytecode/PrimType;

    if-eqz v9, :cond_0

    .line 56
    move-object v9, v6

    check-cast v9, Lgnu/bytecode/PrimType;

    invoke-virtual {v9}, Lgnu/bytecode/PrimType;->boxedType()Lgnu/bytecode/ClassType;

    move-result-object v9

    move-object v6, v9

    .line 57
    :cond_0
    move-object v9, v4

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v10, v2

    sget-object v11, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 58
    move-object v9, v6

    instance-of v9, v9, Lgnu/expr/TypeValue;

    if-eqz v9, :cond_2

    .line 60
    move-object v9, v6

    check-cast v9, Lgnu/expr/TypeValue;

    const/4 v10, 0x0

    move-object v11, v2

    move-object v12, v3

    invoke-interface {v9, v10, v11, v12}, Lgnu/expr/TypeValue;->emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 61
    .line 82
    :goto_1
    return-void

    .line 46
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 48
    .local v8, "ex":Ljava/lang/Exception;
    move-object v9, v2

    const/16 v10, 0x77

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unknown type spec: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 49
    goto :goto_0

    .line 52
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    move-object v10, v7

    invoke-virtual {v9, v10}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v9

    move-object v6, v9

    goto :goto_0

    .line 64
    :cond_2
    move-object v9, v6

    move-object v10, v5

    invoke-virtual {v9, v10}, Lgnu/bytecode/Type;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 65
    move-object v9, v2

    move-object v10, v6

    invoke-virtual {v9, v10}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 81
    :goto_2
    move-object v9, v3

    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 82
    goto :goto_1

    .line 69
    :cond_3
    sget-object v9, Lgnu/kawa/reflect/InstanceOf;->typeType:Lgnu/bytecode/ClassType;

    if-nez v9, :cond_4

    .line 71
    const-string/jumbo v9, "gnu.bytecode.Type"

    invoke-static {v9}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v9

    sput-object v9, Lgnu/kawa/reflect/InstanceOf;->typeType:Lgnu/bytecode/ClassType;

    .line 72
    sget-object v9, Lgnu/kawa/reflect/InstanceOf;->typeType:Lgnu/bytecode/ClassType;

    const-string/jumbo v10, "isInstance"

    sget-object v11, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    sget-object v12, Lgnu/bytecode/Type;->boolean_type:Lgnu/bytecode/PrimType;

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v9

    sput-object v9, Lgnu/kawa/reflect/InstanceOf;->instanceMethod:Lgnu/bytecode/Method;

    .line 77
    :cond_4
    move-object v9, v4

    const/4 v10, 0x1

    aget-object v9, v9, v10

    move-object v10, v2

    sget-object v11, Lgnu/kawa/reflect/InstanceOf;->typeType:Lgnu/bytecode/ClassType;

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 78
    move-object v9, v4

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v10, v2

    sget-object v11, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 79
    move-object v9, v5

    sget-object v10, Lgnu/kawa/reflect/InstanceOf;->instanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_2
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/InstanceOf;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/reflect/InstanceOf;
    return-object v0
.end method
