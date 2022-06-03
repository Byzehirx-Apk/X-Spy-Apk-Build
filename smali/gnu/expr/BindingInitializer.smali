.class public Lgnu/expr/BindingInitializer;
.super Lgnu/expr/Initializer;
.source "BindingInitializer.java"


# static fields
.field static final typeThreadLocation:Lgnu/bytecode/ClassType;


# instance fields
.field decl:Lgnu/expr/Declaration;

.field value:Lgnu/expr/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const-string/jumbo v0, "gnu.mapping.ThreadLocation"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/expr/BindingInitializer;->typeThreadLocation:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BindingInitializer;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v2, p2

    .local v2, "value":Lgnu/expr/Expression;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/expr/Initializer;-><init>()V

    .line 31
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    .line 32
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    .line 33
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    iput-object v4, v3, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    .line 34
    return-void
.end method

.method public static create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 9

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "decl":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "value":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    new-instance v4, Lgnu/expr/BindingInitializer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lgnu/expr/BindingInitializer;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    move-object v3, v4

    .line 17
    .local v3, "init":Lgnu/expr/BindingInitializer;
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 19
    :cond_0
    move-object v4, v3

    move-object v5, v2

    iget-object v5, v5, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    iput-object v5, v4, Lgnu/expr/BindingInitializer;->next:Lgnu/expr/Initializer;

    .line 20
    move-object v4, v2

    move-object v5, v3

    iput-object v5, v4, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    .line 27
    :goto_0
    return-void

    .line 17
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v4

    if-nez v4, :cond_0

    .line 24
    :cond_2
    move-object v4, v3

    move-object v5, v2

    iget-object v5, v5, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iget-object v5, v5, Lgnu/expr/ModuleExp;->initChain:Lgnu/expr/Initializer;

    iput-object v5, v4, Lgnu/expr/BindingInitializer;->next:Lgnu/expr/Initializer;

    .line 25
    move-object v4, v2

    iget-object v4, v4, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    move-object v5, v3

    iput-object v5, v4, Lgnu/expr/ModuleExp;->initChain:Lgnu/expr/Initializer;

    goto :goto_0
.end method

.method public static makeLocationMethod(Ljava/lang/Object;)Lgnu/bytecode/Method;
    .locals 5

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "name":Ljava/lang/Object;
    const/4 v2, 0x1

    new-array v2, v2, [Lgnu/bytecode/Type;

    move-object v1, v2

    .line 130
    .local v1, "atypes":[Lgnu/bytecode/Type;
    move-object v2, v0

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_0

    .line 131
    move-object v2, v1

    const/4 v3, 0x0

    sget-object v4, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    aput-object v4, v2, v3

    .line 134
    :goto_0
    sget-object v2, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string/jumbo v3, "make"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "name":Ljava/lang/Object;
    return-object v0

    .line 133
    .restart local v0    # "name":Ljava/lang/Object;
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    sget-object v4, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    aput-object v4, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public emit(Lgnu/expr/Compilation;)V
    .locals 15

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/expr/BindingInitializer;
    move-object/from16 v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 40
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    if-eqz v11, :cond_0

    .line 41
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    move-object v12, v1

    sget-object v13, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    .line 122
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    move-object v2, v11

    .line 46
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    instance-of v11, v11, Lgnu/expr/QuoteExp;

    if-eqz v11, :cond_2

    .line 48
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    check-cast v11, Lgnu/expr/QuoteExp;

    invoke-virtual {v11}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object v3, v11

    .line 49
    .local v3, "val":Ljava/lang/Object;
    move-object v11, v3

    if-eqz v11, :cond_2

    move-object v11, v3

    instance-of v11, v11, Ljava/lang/String;

    if-nez v11, :cond_2

    .line 51
    move-object v11, v1

    iget-object v11, v11, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    move-object v12, v3

    invoke-virtual {v11, v12}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v11

    move-object v4, v11

    .line 52
    .local v4, "lit":Lgnu/expr/Literal;
    move-object v11, v4

    iget-object v11, v11, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    if-ne v11, v12, :cond_2

    .line 53
    goto :goto_0

    .line 57
    .end local v3    # "val":Ljava/lang/Object;
    .end local v4    # "lit":Lgnu/expr/Literal;
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getLineNumber()I

    move-result v11

    move v3, v11

    .line 58
    .local v3, "line":I
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v11

    move-object v4, v11

    .line 59
    .local v4, "messages":Lgnu/text/SourceMessages;
    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v11, v12}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v11

    move-object v5, v11

    .line 60
    .local v5, "saveLoc":Lgnu/text/SourceLocator;
    move v11, v3

    if-lez v11, :cond_3

    .line 61
    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v12}, Lgnu/expr/Declaration;->getFileName()Ljava/lang/String;

    move-result-object v12

    move v13, v3

    invoke-virtual {v11, v12, v13}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 62
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    if-eqz v11, :cond_4

    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v11}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v11

    if-nez v11, :cond_4

    .line 63
    move-object v11, v2

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 65
    :cond_4
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    if-nez v11, :cond_c

    .line 67
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v11

    invoke-virtual {v11}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v11

    move v6, v11

    .line 68
    .local v6, "func":Z
    move v11, v6

    if-eqz v11, :cond_7

    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v11

    if-eqz v11, :cond_7

    sget-object v11, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    :goto_1
    move-object v7, v11

    .line 71
    .local v7, "property":Ljava/lang/Object;
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    .line 73
    .local v8, "name":Ljava/lang/Object;
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    const-wide/32 v12, 0x10010000

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 75
    move-object v11, v8

    instance-of v11, v11, Ljava/lang/String;

    if-eqz v11, :cond_5

    .line 76
    sget-object v11, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v12, v8

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v11

    move-object v8, v11

    .line 77
    .end local v8    # "name":Ljava/lang/Object;
    :cond_5
    move-object v11, v1

    move-object v12, v8

    sget-object v13, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 78
    move-object v11, v7

    if-nez v11, :cond_8

    .line 79
    move-object v11, v2

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 82
    :goto_2
    move-object v11, v2

    sget-object v12, Lgnu/expr/BindingInitializer;->typeThreadLocation:Lgnu/bytecode/ClassType;

    const-string/jumbo v13, "getInstance"

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 102
    .line 110
    .end local v6    # "func":Z
    .end local v7    # "property":Ljava/lang/Object;
    :goto_3
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    if-nez v11, :cond_e

    .line 112
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v11

    move-object v6, v11

    .line 113
    .local v6, "var":Lgnu/bytecode/Variable;
    move-object v11, v6

    if-nez v11, :cond_6

    .line 114
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    move-object v12, v2

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v11

    move-object v6, v11

    .line 115
    :cond_6
    move-object v11, v2

    move-object v12, v6

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 116
    .line 121
    .end local v6    # "var":Lgnu/bytecode/Variable;
    :goto_4
    move-object v11, v4

    move-object v12, v5

    invoke-virtual {v11, v12}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v11

    .line 122
    goto/16 :goto_0

    .line 68
    .local v6, "func":Z
    :cond_7
    const/4 v11, 0x0

    goto :goto_1

    .line 81
    .restart local v7    # "property":Ljava/lang/Object;
    :cond_8
    move-object v11, v1

    move-object v12, v7

    sget-object v13, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto :goto_2

    .line 84
    .restart local v8    # "name":Ljava/lang/Object;
    :cond_9
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 89
    const/4 v11, 0x1

    new-array v11, v11, [Lgnu/bytecode/Type;

    move-object v9, v11

    .line 90
    .local v9, "atypes":[Lgnu/bytecode/Type;
    move-object v11, v9

    const/4 v12, 0x0

    move-object v13, v8

    instance-of v13, v13, Lgnu/mapping/Symbol;

    if-eqz v13, :cond_a

    sget-object v13, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    :goto_5
    aput-object v13, v11, v12

    .line 92
    move-object v11, v1

    move-object v12, v8

    sget-object v13, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 93
    sget-object v11, Lgnu/expr/BindingInitializer;->typeThreadLocation:Lgnu/bytecode/ClassType;

    const-string/jumbo v12, "makeAnonymous"

    move-object v13, v9

    invoke-virtual {v11, v12, v13}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v11

    move-object v10, v11

    .line 95
    .local v10, "m":Lgnu/bytecode/Method;
    move-object v11, v2

    move-object v12, v10

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 96
    goto :goto_3

    .line 90
    .end local v10    # "m":Lgnu/bytecode/Method;
    :cond_a
    sget-object v13, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    goto :goto_5

    .line 99
    .end local v9    # "atypes":[Lgnu/bytecode/Type;
    :cond_b
    move-object v11, v1

    move-object v12, v8

    sget-object v13, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 100
    move-object v11, v2

    move-object v12, v8

    invoke-static {v12}, Lgnu/expr/BindingInitializer;->makeLocationMethod(Ljava/lang/Object;)Lgnu/bytecode/Method;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_3

    .line 105
    .end local v6    # "func":Z
    .end local v7    # "property":Ljava/lang/Object;
    .end local v8    # "name":Ljava/lang/Object;
    :cond_c
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    if-nez v11, :cond_d

    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    :goto_6
    move-object v6, v11

    .line 106
    .local v6, "type":Lgnu/bytecode/Type;
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    move-object v12, v1

    move-object v13, v6

    invoke-static {v13}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_3

    .line 105
    .end local v6    # "type":Lgnu/bytecode/Type;
    :cond_d
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v11}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    goto :goto_6

    .line 117
    :cond_e
    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v11}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 118
    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto/16 :goto_4

    .line 120
    :cond_f
    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto/16 :goto_4
.end method
