.class public Lgnu/kawa/reflect/TypeSwitch;
.super Lgnu/mapping/MethodProc;
.source "TypeSwitch.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final typeSwitch:Lgnu/kawa/reflect/TypeSwitch;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    new-instance v0, Lgnu/kawa/reflect/TypeSwitch;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "typeswitch"

    invoke-direct {v1, v2}, Lgnu/kawa/reflect/TypeSwitch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/reflect/TypeSwitch;->typeSwitch:Lgnu/kawa/reflect/TypeSwitch;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/TypeSwitch;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/MethodProc;-><init>()V

    .line 24
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/reflect/TypeSwitch;->setName(Ljava/lang/String;)V

    .line 25
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v4, "gnu.kawa.reflect.CompileReflect:validateApplyTypeSwitch"

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/reflect/TypeSwitch;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/TypeSwitch;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    .line 34
    .local v2, "args":[Ljava/lang/Object;
    move-object v8, v2

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v3, v8

    .line 35
    .local v3, "selector":Ljava/lang/Object;
    move-object v8, v2

    array-length v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    .line 36
    .local v4, "n":I
    const/4 v8, 0x1

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_1

    .line 38
    move-object v8, v2

    move v9, v5

    aget-object v8, v8, v9

    check-cast v8, Lgnu/mapping/MethodProc;

    move-object v6, v8

    .line 39
    .local v6, "caseProc":Lgnu/mapping/MethodProc;
    move-object v8, v6

    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v8

    move v7, v8

    .line 40
    .local v7, "m":I
    move v8, v7

    if-ltz v8, :cond_0

    .line 41
    .line 45
    .end local v5    # "i":I
    .end local v6    # "caseProc":Lgnu/mapping/MethodProc;
    .end local v7    # "m":I
    :goto_1
    return-void

    .line 36
    .restart local v5    # "i":I
    .restart local v6    # "caseProc":Lgnu/mapping/MethodProc;
    .restart local v7    # "m":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 43
    .end local v6    # "caseProc":Lgnu/mapping/MethodProc;
    .end local v7    # "m":I
    :cond_1
    move-object v8, v2

    move v9, v4

    aget-object v8, v8, v9

    check-cast v8, Lgnu/mapping/Procedure;

    move-object v5, v8

    .line 44
    .local v5, "defaultProc":Lgnu/mapping/Procedure;
    move-object v8, v5

    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 45
    goto :goto_1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 17

    .prologue
    .line 49
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/reflect/TypeSwitch;
    move-object/from16 v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object/from16 v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v12, v1

    invoke-virtual {v12}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v12

    move-object v4, v12

    .line 51
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v12, v2

    invoke-virtual {v12}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v12

    move-object v5, v12

    .line 52
    .local v5, "code":Lgnu/bytecode/CodeAttr;
    move-object v12, v5

    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v12

    .line 53
    move-object v12, v5

    sget-object v13, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v12

    move-object v6, v12

    .line 54
    .local v6, "selector":Lgnu/bytecode/Variable;
    move-object v12, v4

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object v13, v2

    sget-object v14, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v12, v13, v14}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 55
    move-object v12, v5

    move-object v13, v6

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 57
    const/4 v12, 0x1

    move v7, v12

    .local v7, "i":I
    :goto_0
    move v12, v7

    move-object v13, v4

    array-length v13, v13

    if-ge v12, v13, :cond_6

    .line 59
    move v12, v7

    const/4 v13, 0x1

    if-le v12, v13, :cond_0

    .line 60
    move-object v12, v5

    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 62
    :cond_0
    move-object v12, v4

    move v13, v7

    add-int/lit8 v7, v7, 0x1

    aget-object v12, v12, v13

    move-object v8, v12

    .line 64
    .local v8, "arg":Lgnu/expr/Expression;
    move-object v12, v8

    instance-of v12, v12, Lgnu/expr/LambdaExp;

    if-eqz v12, :cond_5

    .line 66
    move-object v12, v8

    check-cast v12, Lgnu/expr/LambdaExp;

    move-object v9, v12

    .line 67
    .local v9, "lambda":Lgnu/expr/LambdaExp;
    move-object v12, v9

    invoke-virtual {v12}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v12

    move-object v10, v12

    .line 68
    .local v10, "param":Lgnu/expr/Declaration;
    move-object v12, v10

    invoke-virtual {v12}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v12

    move-object v11, v12

    .line 69
    .local v11, "type":Lgnu/bytecode/Type;
    move-object v12, v10

    invoke-virtual {v12}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v12

    if-nez v12, :cond_2

    .line 70
    const/4 v12, 0x0

    move-object v10, v12

    .line 74
    :goto_1
    move-object v12, v11

    instance-of v12, v12, Lgnu/expr/TypeValue;

    if-eqz v12, :cond_3

    .line 75
    move-object v12, v11

    check-cast v12, Lgnu/expr/TypeValue;

    move-object v13, v6

    move-object v14, v10

    move-object v15, v2

    invoke-interface {v12, v13, v14, v15}, Lgnu/expr/TypeValue;->emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 90
    :cond_1
    :goto_2
    move-object v12, v9

    move-object v13, v2

    invoke-virtual {v12, v13}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 91
    move-object v12, v9

    iget-object v12, v12, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v13, v2

    move-object v14, v3

    invoke-virtual {v12, v13, v14}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 92
    .line 97
    goto :goto_0

    .line 72
    :cond_2
    move-object v12, v10

    move-object v13, v5

    invoke-virtual {v12, v13}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v12

    goto :goto_1

    .line 78
    :cond_3
    move v12, v7

    move-object v13, v4

    array-length v13, v13

    if-ge v12, v13, :cond_4

    .line 80
    move-object v12, v5

    move-object v13, v6

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 81
    move-object v12, v11

    move-object v13, v5

    invoke-virtual {v12, v13}, Lgnu/bytecode/Type;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 82
    move-object v12, v5

    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 84
    :cond_4
    move-object v12, v10

    if-eqz v12, :cond_1

    .line 86
    move-object v12, v5

    move-object v13, v6

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 87
    move-object v12, v10

    move-object v13, v2

    invoke-virtual {v12, v13}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    goto :goto_2

    .line 95
    .end local v9    # "lambda":Lgnu/expr/LambdaExp;
    .end local v10    # "param":Lgnu/expr/Declaration;
    .end local v11    # "type":Lgnu/bytecode/Type;
    :cond_5
    new-instance v12, Ljava/lang/Error;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string/jumbo v14, "not implemented: typeswitch arg not LambdaExp"

    invoke-direct {v13, v14}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v12

    .line 98
    .end local v8    # "arg":Lgnu/expr/Expression;
    :cond_6
    move-object v12, v4

    array-length v12, v12

    const/4 v13, 0x2

    add-int/lit8 v12, v12, -0x2

    move v7, v12

    :goto_3
    add-int/lit8 v7, v7, -0x1

    move v12, v7

    if-ltz v12, :cond_7

    .line 99
    move-object v12, v5

    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_3

    .line 101
    :cond_7
    move-object v12, v5

    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v12

    .line 102
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/TypeSwitch;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/reflect/TypeSwitch;
    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/TypeSwitch;
    const/16 v1, -0xffe

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/TypeSwitch;
    return v0
.end method
