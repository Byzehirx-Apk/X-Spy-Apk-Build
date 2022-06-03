.class public Lgnu/expr/CheckedTarget;
.super Lgnu/expr/StackTarget;
.source "CheckedTarget.java"


# static fields
.field static initWrongTypeProcMethod:Lgnu/bytecode/Method;

.field static initWrongTypeStringMethod:Lgnu/bytecode/Method;

.field static typeClassCastException:Lgnu/bytecode/ClassType;

.field static typeWrongType:Lgnu/bytecode/ClassType;


# instance fields
.field argno:I

.field proc:Lgnu/expr/LambdaExp;

.field procname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 4

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CheckedTarget;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .line 23
    move-object v2, v0

    const/4 v3, -0x4

    iput v3, v2, Lgnu/expr/CheckedTarget;->argno:I

    .line 24
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)V
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CheckedTarget;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, p2

    .local v2, "proc":Lgnu/expr/LambdaExp;
    move v3, p3

    .local v3, "argno":I
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .line 29
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/expr/CheckedTarget;->proc:Lgnu/expr/LambdaExp;

    .line 30
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lgnu/expr/CheckedTarget;->procname:Ljava/lang/String;

    .line 31
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/expr/CheckedTarget;->argno:I

    .line 32
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Type;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CheckedTarget;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, p2

    .local v2, "procname":Ljava/lang/String;
    move v3, p3

    .local v3, "argno":I
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .line 37
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/expr/CheckedTarget;->procname:Ljava/lang/String;

    .line 38
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/expr/CheckedTarget;->argno:I

    .line 39
    return-void
.end method

.method public static emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;)V
    .locals 10

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "comp":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "proc":Lgnu/expr/LambdaExp;
    move v2, p2

    .local v2, "argno":I
    move-object v3, p3

    .local v3, "type":Lgnu/bytecode/Type;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v6

    move v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 111
    return-void
.end method

.method public static emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V
    .locals 11

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "comp":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "proc":Lgnu/expr/LambdaExp;
    move v2, p2

    .local v2, "argno":I
    move-object v3, p3

    .local v3, "type":Lgnu/bytecode/Type;
    move-object v4, p4

    .local v4, "argValue":Lgnu/bytecode/Variable;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v7

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-static/range {v5 .. v10}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 117
    return-void
.end method

.method static emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V
    .locals 24

    .prologue
    .line 123
    move-object/from16 v2, p0

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object/from16 v3, p1

    .local v3, "proc":Lgnu/expr/LambdaExp;
    move-object/from16 v4, p2

    .local v4, "procname":Ljava/lang/String;
    move/from16 v5, p3

    .local v5, "argno":I
    move-object/from16 v6, p4

    .local v6, "type":Lgnu/bytecode/Type;
    move-object/from16 v7, p5

    .local v7, "argValue":Lgnu/bytecode/Variable;
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v19

    move-object/from16 v8, v19

    .line 128
    .local v8, "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->isInTry()Z

    move-result v19

    move/from16 v9, v19

    .line 129
    .local v9, "isInTry":Z
    invoke-static {}, Lgnu/expr/CheckedTarget;->initWrongType()V

    .line 130
    new-instance v19, Lgnu/bytecode/Label;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v21, v8

    invoke-direct/range {v20 .. v21}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v10, v19

    .line 132
    .local v10, "startTry":Lgnu/bytecode/Label;
    move-object/from16 v19, v7

    if-nez v19, :cond_2

    move-object/from16 v19, v6

    sget-object v20, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 134
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v19

    move-object/from16 v11, v19

    .line 135
    .local v11, "tmpScope":Lgnu/bytecode/Scope;
    move-object/from16 v19, v8

    sget-object v20, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v19

    move-object/from16 v7, v19

    .line 136
    move-object/from16 v19, v8

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 137
    move-object/from16 v19, v8

    move-object/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 141
    :goto_0
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->getPC()I

    move-result v19

    move/from16 v12, v19

    .line 142
    .local v12, "startPC":I
    move-object/from16 v19, v10

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 143
    move-object/from16 v19, v6

    move-object/from16 v20, v2

    invoke-static/range {v19 .. v20}, Lgnu/expr/CheckedTarget;->emitCoerceFromObject(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    .line 145
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->getPC()I

    move-result v19

    move/from16 v13, v19

    .line 150
    .local v13, "endPC":I
    move/from16 v19, v13

    move/from16 v20, v12

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    move-object/from16 v19, v6

    sget-object v20, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 155
    :cond_0
    move-object/from16 v19, v11

    if-eqz v19, :cond_1

    .line 156
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v19

    .line 157
    .line 204
    :cond_1
    :goto_1
    return-void

    .line 140
    .end local v11    # "tmpScope":Lgnu/bytecode/Scope;
    .end local v12    # "startPC":I
    .end local v13    # "endPC":I
    :cond_2
    const/16 v19, 0x0

    move-object/from16 v11, v19

    .restart local v11    # "tmpScope":Lgnu/bytecode/Scope;
    goto :goto_0

    .line 160
    .restart local v12    # "startPC":I
    .restart local v13    # "endPC":I
    :cond_3
    new-instance v19, Lgnu/bytecode/Label;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v21, v8

    invoke-direct/range {v20 .. v21}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v14, v19

    .line 161
    .local v14, "endTry":Lgnu/bytecode/Label;
    move-object/from16 v19, v14

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 163
    new-instance v19, Lgnu/bytecode/Label;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v21, v8

    invoke-direct/range {v20 .. v21}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v15, v19

    .line 164
    .local v15, "endLabel":Lgnu/bytecode/Label;
    move-object/from16 v19, v15

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 165
    move/from16 v19, v9

    if-eqz v19, :cond_4

    .line 166
    move-object/from16 v19, v8

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 167
    :cond_4
    const/16 v19, 0x0

    move/from16 v16, v19

    .line 168
    .local v16, "fragment_cookie":I
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 169
    move/from16 v19, v9

    if-nez v19, :cond_5

    .line 170
    move-object/from16 v19, v8

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;)I

    move-result v19

    move/from16 v16, v19

    .line 171
    :cond_5
    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move-object/from16 v21, v14

    sget-object v22, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v19 .. v22}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    .line 174
    const/16 v19, 0x0

    move/from16 v17, v19

    .line 175
    .local v17, "thisIsProc":Z
    move-object/from16 v19, v3

    if-eqz v19, :cond_6

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/LambdaExp;->isClassGenerated()Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v19

    if-nez v19, :cond_6

    .line 178
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v19

    move-object/from16 v20, v3

    move-object/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Lgnu/expr/LambdaExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 179
    const/16 v19, 0x1

    move/from16 v17, v19

    .line 181
    :cond_6
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v19

    move/from16 v18, v19

    .line 182
    .local v18, "line":I
    move/from16 v19, v18

    if-lez v19, :cond_7

    .line 183
    move-object/from16 v19, v8

    move/from16 v20, v18

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->putLineNumber(I)V

    .line 184
    :cond_7
    move-object/from16 v19, v8

    sget-object v20, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 185
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 186
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 187
    move/from16 v19, v17

    if-eqz v19, :cond_9

    .line 188
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 193
    :goto_2
    move-object/from16 v19, v8

    move/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 194
    move-object/from16 v19, v8

    move-object/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 195
    move-object/from16 v19, v8

    move/from16 v20, v17

    if-eqz v20, :cond_b

    sget-object v20, Lgnu/expr/CheckedTarget;->initWrongTypeProcMethod:Lgnu/bytecode/Method;

    :goto_3
    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 197
    move-object/from16 v19, v11

    if-eqz v19, :cond_8

    .line 198
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v19

    .line 199
    :cond_8
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 200
    move/from16 v19, v9

    if-eqz v19, :cond_c

    .line 201
    move-object/from16 v19, v15

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 204
    :goto_4
    goto/16 :goto_1

    .line 190
    :cond_9
    move-object/from16 v19, v8

    move-object/from16 v20, v4

    if-nez v20, :cond_a

    move/from16 v20, v5

    const/16 v21, -0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    const-string/jumbo v20, "lambda"

    :goto_5
    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move-object/from16 v20, v4

    goto :goto_5

    .line 195
    :cond_b
    sget-object v20, Lgnu/expr/CheckedTarget;->initWrongTypeStringMethod:Lgnu/bytecode/Method;

    goto :goto_3

    .line 203
    :cond_c
    move-object/from16 v19, v8

    move/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->endFragment(I)V

    goto :goto_4
.end method

.method public static emitCheckedCoerce(Lgnu/expr/Compilation;Ljava/lang/String;ILgnu/bytecode/Type;)V
    .locals 10

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "comp":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "procname":Ljava/lang/String;
    move v2, p2

    .local v2, "argno":I
    move-object v3, p3

    .local v3, "type":Lgnu/bytecode/Type;
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 105
    return-void
.end method

.method public static getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/Type;
    move-object v1, v0

    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-ne v1, v2, :cond_0

    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    :goto_0
    move-object v0, v1

    .end local v0    # "type":Lgnu/bytecode/Type;
    return-object v0

    .restart local v0    # "type":Lgnu/bytecode/Type;
    :cond_0
    new-instance v1, Lgnu/expr/CheckedTarget;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/expr/CheckedTarget;-><init>(Lgnu/bytecode/Type;)V

    goto :goto_0
.end method

.method public static getInstance(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)Lgnu/expr/Target;
    .locals 9

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "proc":Lgnu/expr/LambdaExp;
    move v2, p2

    .local v2, "argno":I
    move-object v3, v0

    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-ne v3, v4, :cond_0

    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    :goto_0
    move-object v0, v3

    .end local v0    # "type":Lgnu/bytecode/Type;
    return-object v0

    .restart local v0    # "type":Lgnu/bytecode/Type;
    :cond_0
    new-instance v3, Lgnu/expr/CheckedTarget;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Lgnu/expr/CheckedTarget;-><init>(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)V

    goto :goto_0
.end method

.method public static getInstance(Lgnu/bytecode/Type;Ljava/lang/String;I)Lgnu/expr/Target;
    .locals 9

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "procname":Ljava/lang/String;
    move v2, p2

    .local v2, "argno":I
    move-object v3, v0

    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-ne v3, v4, :cond_0

    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    :goto_0
    move-object v0, v3

    .end local v0    # "type":Lgnu/bytecode/Type;
    return-object v0

    .restart local v0    # "type":Lgnu/bytecode/Type;
    :cond_0
    new-instance v3, Lgnu/expr/CheckedTarget;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Lgnu/expr/CheckedTarget;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static getInstance(Lgnu/expr/Declaration;)Lgnu/expr/Target;
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "decl":Lgnu/expr/Declaration;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;Ljava/lang/String;I)Lgnu/expr/Target;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "decl":Lgnu/expr/Declaration;
    return-object v0
.end method

.method private static initWrongType()V
    .locals 6

    .prologue
    .line 71
    sget-object v1, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    if-nez v1, :cond_0

    .line 72
    const-string/jumbo v1, "java.lang.ClassCastException"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    .line 73
    :cond_0
    sget-object v1, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    if-nez v1, :cond_1

    .line 75
    const-string/jumbo v1, "gnu.mapping.WrongType"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    .line 76
    const/4 v1, 0x4

    new-array v1, v1, [Lgnu/bytecode/Type;

    move-object v0, v1

    .line 77
    .local v0, "args":[Lgnu/bytecode/Type;
    move-object v1, v0

    const/4 v2, 0x0

    sget-object v3, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    aput-object v3, v1, v2

    .line 78
    move-object v1, v0

    const/4 v2, 0x1

    sget-object v3, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    aput-object v3, v1, v2

    .line 79
    move-object v1, v0

    const/4 v2, 0x2

    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v3, v1, v2

    .line 80
    move-object v1, v0

    const/4 v2, 0x3

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v3, v1, v2

    .line 81
    sget-object v1, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    const-string/jumbo v2, "<init>"

    const/4 v3, 0x1

    move-object v4, v0

    sget-object v5, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3, v4, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/expr/CheckedTarget;->initWrongTypeStringMethod:Lgnu/bytecode/Method;

    .line 84
    const/4 v1, 0x4

    new-array v1, v1, [Lgnu/bytecode/Type;

    move-object v0, v1

    .line 85
    move-object v1, v0

    const/4 v2, 0x0

    sget-object v3, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    aput-object v3, v1, v2

    .line 86
    move-object v1, v0

    const/4 v2, 0x1

    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    aput-object v3, v1, v2

    .line 87
    move-object v1, v0

    const/4 v2, 0x2

    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v3, v1, v2

    .line 88
    move-object v1, v0

    const/4 v2, 0x3

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v3, v1, v2

    .line 89
    sget-object v1, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    const-string/jumbo v2, "<init>"

    const/4 v3, 0x1

    move-object v4, v0

    sget-object v5, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3, v4, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/expr/CheckedTarget;->initWrongTypeProcMethod:Lgnu/bytecode/Method;

    .line 93
    :cond_1
    return-void
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .locals 9

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lgnu/expr/CheckedTarget;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "stackType":Lgnu/bytecode/Type;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/CheckedTarget;->compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/CheckedTarget;->proc:Lgnu/expr/LambdaExp;

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/CheckedTarget;->procname:Ljava/lang/String;

    move-object v6, v0

    iget v6, v6, Lgnu/expr/CheckedTarget;->argno:I

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/CheckedTarget;->type:Lgnu/bytecode/Type;

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 99
    :cond_0
    return-void
.end method
