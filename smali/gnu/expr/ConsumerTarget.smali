.class public Lgnu/expr/ConsumerTarget;
.super Lgnu/expr/Target;
.source "ConsumerTarget.java"


# instance fields
.field consumer:Lgnu/bytecode/Variable;

.field isContextTarget:Z


# direct methods
.method public constructor <init>(Lgnu/bytecode/Variable;)V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ConsumerTarget;
    move-object v1, p1

    .local v1, "consumer":Lgnu/bytecode/Variable;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/expr/Target;-><init>()V

    .line 19
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    .line 20
    return-void
.end method

.method public static compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 11

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v4, v2

    instance-of v4, v4, Lgnu/expr/ConsumerTarget;

    if-nez v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Lgnu/expr/IgnoreTarget;

    if-eqz v4, :cond_1

    .line 48
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_1
    sget-object v4, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    move-object v3, v4

    .line 52
    .local v3, "typeValues":Lgnu/bytecode/ClassType;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const-string/jumbo v8, "make"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    move-object v8, v3

    const-string/jumbo v9, "canonicalize"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    goto :goto_0
.end method

.method public static compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V
    .locals 15

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object/from16 v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object/from16 v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object/from16 v3, p3

    .local v3, "makeMethod":Lgnu/bytecode/Method;
    move-object/from16 v4, p4

    .local v4, "resultMethod":Lgnu/bytecode/Method;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v10

    move-object v5, v10

    .line 64
    .local v5, "code":Lgnu/bytecode/CodeAttr;
    move-object v10, v5

    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v10

    move-object v6, v10

    .line 66
    .local v6, "scope":Lgnu/bytecode/Scope;
    move-object v10, v3

    invoke-virtual {v10}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "<init>"

    if-ne v10, v11, :cond_1

    .line 68
    move-object v10, v3

    invoke-virtual {v10}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v10

    move-object v8, v10

    .line 69
    .local v8, "cltype":Lgnu/bytecode/ClassType;
    move-object v10, v8

    move-object v7, v10

    .line 70
    .local v7, "ctype":Lgnu/bytecode/Type;
    move-object v10, v5

    move-object v11, v8

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 71
    move-object v10, v5

    move-object v11, v7

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 72
    move-object v10, v5

    move-object v11, v3

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 73
    .line 79
    .end local v8    # "cltype":Lgnu/bytecode/ClassType;
    :goto_0
    move-object v10, v6

    move-object v11, v5

    move-object v12, v7

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v10

    move-object v8, v10

    .line 80
    .local v8, "consumer":Lgnu/bytecode/Variable;
    new-instance v10, Lgnu/expr/ConsumerTarget;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v8

    invoke-direct {v11, v12}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    move-object v9, v10

    .line 81
    .local v9, "ctarget":Lgnu/expr/ConsumerTarget;
    move-object v10, v5

    move-object v11, v8

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 82
    move-object v10, v0

    move-object v11, v1

    move-object v12, v9

    invoke-virtual {v10, v11, v12}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 83
    move-object v10, v5

    move-object v11, v8

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 84
    move-object v10, v4

    if-eqz v10, :cond_0

    .line 85
    move-object v10, v5

    move-object v11, v4

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 86
    :cond_0
    move-object v10, v5

    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v10

    .line 87
    move-object v10, v2

    move-object v11, v1

    move-object v12, v4

    if-nez v12, :cond_2

    move-object v12, v7

    :goto_1
    invoke-virtual {v10, v11, v12}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 89
    return-void

    .line 76
    .end local v7    # "ctype":Lgnu/bytecode/Type;
    .end local v8    # "consumer":Lgnu/bytecode/Variable;
    .end local v9    # "ctarget":Lgnu/expr/ConsumerTarget;
    :cond_1
    move-object v10, v3

    invoke-virtual {v10}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v10

    move-object v7, v10

    .line 77
    .restart local v7    # "ctype":Lgnu/bytecode/Type;
    move-object v10, v5

    move-object v11, v3

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 87
    .restart local v8    # "consumer":Lgnu/bytecode/Variable;
    .restart local v9    # "ctarget":Lgnu/expr/ConsumerTarget;
    :cond_2
    move-object v12, v4

    invoke-virtual {v12}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v12

    goto :goto_1
.end method

.method public static makeContextTarget(Lgnu/expr/Compilation;)Lgnu/expr/Target;
    .locals 10

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "comp":Lgnu/expr/Compilation;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    move-object v1, v5

    .line 31
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 32
    move-object v5, v1

    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v7, "consumer"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 34
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v5

    move-object v2, v5

    .line 35
    .local v2, "scope":Lgnu/bytecode/Scope;
    move-object v5, v2

    move-object v6, v1

    sget-object v7, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    const-string/jumbo v8, "$result"

    invoke-virtual {v5, v6, v7, v8}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v5

    move-object v3, v5

    .line 37
    .local v3, "result":Lgnu/bytecode/Variable;
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 38
    new-instance v5, Lgnu/expr/ConsumerTarget;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-direct {v6, v7}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    move-object v4, v5

    .line 39
    .local v4, "target":Lgnu/expr/ConsumerTarget;
    move-object v5, v4

    const/4 v6, 0x1

    iput-boolean v6, v5, Lgnu/expr/ConsumerTarget;->isContextTarget:Z

    .line 40
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "comp":Lgnu/expr/Compilation;
    return-object v0
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .locals 7

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ConsumerTarget;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "stackType":Lgnu/bytecode/Type;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Lgnu/expr/ConsumerTarget;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;I)V

    .line 95
    return-void
.end method

.method compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;I)V
    .locals 16

    .prologue
    .line 105
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/ConsumerTarget;
    move-object/from16 v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object/from16 v2, p2

    .local v2, "stackType":Lgnu/bytecode/Type;
    move/from16 v3, p3

    .local v3, "consumerPushed":I
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    move-object v4, v11

    .line 106
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    const/4 v11, 0x0

    move-object v5, v11

    .line 107
    .local v5, "methodName":Ljava/lang/String;
    const/4 v11, 0x0

    move-object v6, v11

    .line 108
    .local v6, "method":Lgnu/bytecode/Method;
    const/4 v11, 0x0

    move-object v7, v11

    .line 109
    .local v7, "methodArg":Lgnu/bytecode/Type;
    const/4 v11, 0x0

    move v8, v11

    .line 110
    .local v8, "islong":Z
    move-object v11, v2

    invoke-virtual {v11}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v11

    move-object v2, v11

    .line 112
    move-object v11, v2

    instance-of v11, v11, Lgnu/bytecode/PrimType;

    if-eqz v11, :cond_3

    .line 114
    move-object v11, v2

    invoke-virtual {v11}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v9, v11

    .line 115
    .local v9, "sig":C
    move v11, v9

    sparse-switch v11, :sswitch_data_0

    .line 148
    .line 170
    :goto_0
    move v11, v3

    if-ltz v11, :cond_7

    .line 171
    .line 186
    :goto_1
    move-object v11, v6

    if-nez v11, :cond_0

    move-object v11, v5

    if-eqz v11, :cond_0

    .line 188
    const/4 v11, 0x1

    new-array v11, v11, [Lgnu/bytecode/Type;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v7

    aput-object v14, v12, v13

    move-object v10, v11

    .line 189
    .local v10, "methodArgs":[Lgnu/bytecode/Type;
    sget-object v11, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    move-object v12, v5

    move-object v13, v10

    invoke-virtual {v11, v12, v13}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v11

    move-object v6, v11

    .line 192
    .end local v10    # "methodArgs":[Lgnu/bytecode/Type;
    :cond_0
    move-object v11, v6

    if-eqz v11, :cond_1

    .line 193
    move-object v11, v4

    move-object v12, v6

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    .line 194
    :cond_1
    move v11, v9

    const/16 v12, 0x43

    if-ne v11, v12, :cond_2

    .line 195
    move-object v11, v4

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 196
    :cond_2
    :goto_2
    return-void

    .line 118
    :sswitch_0
    const-string/jumbo v11, "writeInt"

    move-object v5, v11

    .line 119
    sget-object v11, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object v7, v11

    .line 120
    goto :goto_0

    .line 122
    :sswitch_1
    const-string/jumbo v11, "writeLong"

    move-object v5, v11

    .line 123
    sget-object v11, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    move-object v7, v11

    .line 124
    const/4 v11, 0x1

    move v8, v11

    .line 125
    goto :goto_0

    .line 127
    :sswitch_2
    const-string/jumbo v11, "writeFloat"

    move-object v5, v11

    .line 128
    sget-object v11, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    move-object v7, v11

    .line 129
    goto :goto_0

    .line 131
    :sswitch_3
    const-string/jumbo v11, "writeDouble"

    move-object v5, v11

    .line 132
    sget-object v11, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    move-object v7, v11

    .line 133
    const/4 v11, 0x1

    move v8, v11

    .line 134
    goto :goto_0

    .line 137
    :sswitch_4
    const-string/jumbo v11, "append"

    move-object v5, v11

    .line 138
    sget-object v11, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    move-object v7, v11

    .line 143
    goto :goto_0

    .line 145
    :sswitch_5
    const-string/jumbo v11, "writeBoolean"

    move-object v5, v11

    .line 146
    sget-object v11, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    move-object v7, v11

    .line 147
    goto :goto_0

    .line 148
    :sswitch_6
    goto :goto_2

    .line 153
    .end local v9    # "sig":C
    :cond_3
    const/4 v11, 0x0

    move v9, v11

    .line 154
    .restart local v9    # "sig":C
    move v11, v3

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    move-object v11, v2

    invoke-static {v11}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsOne(Lgnu/bytecode/Type;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 156
    :cond_4
    const-string/jumbo v11, "writeObject"

    move-object v5, v11

    .line 157
    sget-object v11, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v7, v11

    goto :goto_0

    .line 161
    :cond_5
    sget-object v11, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string/jumbo v12, "writeValues"

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    move-object v6, v11

    .line 163
    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 164
    move v11, v3

    if-nez v11, :cond_6

    .line 165
    move-object v11, v4

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 166
    :cond_6
    move-object v11, v4

    move-object v12, v6

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 167
    goto :goto_2

    .line 172
    :cond_7
    move v11, v8

    if-eqz v11, :cond_8

    .line 174
    move-object v11, v4

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v11

    .line 175
    move-object v11, v4

    move-object v12, v2

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v11

    move-object v10, v11

    .line 176
    .local v10, "temp":Lgnu/bytecode/Variable;
    move-object v11, v4

    move-object v12, v10

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 177
    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 178
    move-object v11, v4

    move-object v12, v10

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 179
    move-object v11, v4

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v11

    .line 180
    goto/16 :goto_1

    .line 183
    .end local v10    # "temp":Lgnu/bytecode/Variable;
    :cond_8
    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 184
    move-object v11, v4

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    goto/16 :goto_1

    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_4
        0x44 -> :sswitch_3
        0x46 -> :sswitch_2
        0x49 -> :sswitch_0
        0x4a -> :sswitch_1
        0x53 -> :sswitch_0
        0x56 -> :sswitch_6
        0x5a -> :sswitch_5
    .end sparse-switch
.end method

.method public compileWrite(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Z
    .locals 10

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ConsumerTarget;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    move-object v3, v6

    .line 201
    .local v3, "stackType":Lgnu/bytecode/Type;
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v6

    move-object v4, v6

    .line 202
    .local v4, "implType":Lgnu/bytecode/Type;
    move-object v6, v4

    instance-of v6, v6, Lgnu/bytecode/PrimType;

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-virtual {v6}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v6, v4

    invoke-static {v6}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsOne(Lgnu/bytecode/Type;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 206
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 207
    move-object v6, v4

    invoke-static {v6}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v6

    move-object v5, v6

    .line 208
    .local v5, "starget":Lgnu/expr/Target;
    move-object v6, v1

    move-object v7, v2

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 209
    move-object v6, v0

    move-object v7, v2

    move-object v8, v4

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lgnu/expr/ConsumerTarget;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;I)V

    .line 210
    const/4 v6, 0x1

    move v0, v6

    .line 212
    .end local v0    # "this":Lgnu/expr/ConsumerTarget;
    .end local v5    # "starget":Lgnu/expr/Target;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/expr/ConsumerTarget;
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public getConsumerVariable()Lgnu/bytecode/Variable;
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ConsumerTarget;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ConsumerTarget;
    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ConsumerTarget;
    sget-object v1, Lgnu/expr/Compilation;->scmSequenceType:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ConsumerTarget;
    return-object v0
.end method

.method public final isContextTarget()Z
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ConsumerTarget;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/expr/ConsumerTarget;->isContextTarget:Z

    move v0, v1

    .end local v0    # "this":Lgnu/expr/ConsumerTarget;
    return v0
.end method
