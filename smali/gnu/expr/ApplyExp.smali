.class public Lgnu/expr/ApplyExp;
.super Lgnu/expr/Expression;
.source "ApplyExp.java"


# static fields
.field public static final INLINE_IF_CONSTANT:I = 0x4

.field public static final MAY_CONTAIN_BACK_JUMP:I = 0x8

.field public static final TAILCALL:I = 0x2


# instance fields
.field args:[Lgnu/expr/Expression;

.field context:Lgnu/expr/LambdaExp;

.field func:Lgnu/expr/Expression;

.field public nextCall:Lgnu/expr/ApplyExp;

.field protected type:Lgnu/bytecode/Type;


# direct methods
.method public varargs constructor <init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V
    .locals 10

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "m":Lgnu/bytecode/Method;
    move-object v2, p2

    .local v2, "a":[Lgnu/expr/Expression;
    move-object v3, v0

    new-instance v4, Lgnu/expr/QuoteExp;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Lgnu/expr/PrimProcedure;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 53
    return-void
.end method

.method public varargs constructor <init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "f":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "a":[Lgnu/expr/Expression;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/expr/Expression;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-void
.end method

.method public varargs constructor <init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V
    .locals 8

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "p":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "a":[Lgnu/expr/Expression;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/expr/Expression;-><init>()V

    move-object v3, v0

    new-instance v4, Lgnu/expr/QuoteExp;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-void
.end method

.method public static asInlineable(Lgnu/mapping/Procedure;)Lgnu/expr/Inlineable;
    .locals 3

    .prologue
    .line 575
    move-object v0, p0

    .local v0, "proc":Lgnu/mapping/Procedure;
    move-object v1, v0

    instance-of v1, v1, Lgnu/expr/Inlineable;

    if-eqz v1, :cond_0

    .line 576
    move-object v1, v0

    check-cast v1, Lgnu/expr/Inlineable;

    move-object v0, v1

    .line 577
    .end local v0    # "proc":Lgnu/mapping/Procedure;
    :goto_0
    return-object v0

    .restart local v0    # "proc":Lgnu/mapping/Procedure;
    :cond_0
    sget-object v1, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/mapping/LazyPropertyKey;->get(Lgnu/mapping/PropertySet;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Inlineable;

    move-object v0, v1

    goto :goto_0
.end method

.method public static compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 7

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Z)V

    .line 116
    return-void
.end method

.method static compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Z)V
    .locals 25

    .prologue
    .line 121
    move-object/from16 v3, p0

    .local v3, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v4, p1

    .local v4, "comp":Lgnu/expr/Compilation;
    move-object/from16 v5, p2

    .local v5, "target":Lgnu/expr/Target;
    move/from16 v6, p3

    .local v6, "checkInlineable":Z
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v7, v19

    .line 122
    .local v7, "args_length":I
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move-object/from16 v8, v19

    .line 123
    .local v8, "exp_func":Lgnu/expr/Expression;
    const/16 v19, 0x0

    move-object/from16 v9, v19

    .line 124
    .local v9, "func_lambda":Lgnu/expr/LambdaExp;
    const/16 v19, 0x0

    move-object/from16 v10, v19

    .line 125
    .local v10, "func_name":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v11, v19

    .line 126
    .local v11, "owner":Lgnu/expr/Declaration;
    const/16 v19, 0x0

    move-object/from16 v12, v19

    .line 127
    .local v12, "quotedValue":Ljava/lang/Object;
    move-object/from16 v19, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 129
    move-object/from16 v19, v8

    check-cast v19, Lgnu/expr/LambdaExp;

    move-object/from16 v9, v19

    .line 130
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v10, v19

    .line 131
    move-object/from16 v19, v10

    if-nez v19, :cond_0

    .line 132
    const-string/jumbo v19, "<lambda>"

    move-object/from16 v10, v19

    .line 162
    .end local v12    # "quotedValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    move/from16 v19, v6

    if-eqz v19, :cond_9

    move-object/from16 v19, v12

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/Procedure;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 164
    move-object/from16 v19, v12

    check-cast v19, Lgnu/mapping/Procedure;

    move-object/from16 v13, v19

    .line 165
    .local v13, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/IgnoreTarget;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/Procedure;->isSideEffectFree()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 167
    const/16 v19, 0x0

    move/from16 v14, v19

    .local v14, "i":I
    :goto_1
    move/from16 v19, v14

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 168
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move/from16 v20, v14

    aget-object v19, v19, v20

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 167
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 134
    .end local v13    # "proc":Lgnu/mapping/Procedure;
    .end local v14    # "i":I
    .restart local v12    # "quotedValue":Ljava/lang/Object;
    :cond_1
    move-object/from16 v19, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 136
    move-object/from16 v19, v8

    check-cast v19, Lgnu/expr/ReferenceExp;

    move-object/from16 v13, v19

    .line 137
    .local v13, "func_ref":Lgnu/expr/ReferenceExp;
    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v19

    move-object/from16 v11, v19

    .line 138
    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    move-object/from16 v19, v0

    move-object/from16 v14, v19

    .line 140
    .local v14, "func_decl":Lgnu/expr/Declaration;
    :goto_2
    move-object/from16 v19, v14

    if-eqz v19, :cond_2

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 142
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object/from16 v19, v0

    check-cast v19, Lgnu/expr/ReferenceExp;

    move-object/from16 v13, v19

    .line 143
    move-object/from16 v19, v11

    if-nez v19, :cond_2

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v19

    if-nez v19, :cond_2

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 144
    .line 148
    :cond_2
    move-object/from16 v19, v14

    const-wide/32 v20, 0x10000

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v19

    if-nez v19, :cond_4

    .line 150
    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v15, v19

    .line 151
    .local v15, "value":Lgnu/expr/Expression;
    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v10, v19

    .line 152
    move-object/from16 v19, v15

    if-eqz v19, :cond_3

    move-object/from16 v19, v15

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 153
    move-object/from16 v19, v15

    check-cast v19, Lgnu/expr/LambdaExp;

    move-object/from16 v9, v19

    .line 154
    :cond_3
    move-object/from16 v19, v15

    if-eqz v19, :cond_4

    move-object/from16 v19, v15

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 155
    move-object/from16 v19, v15

    check-cast v19, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    .line 157
    .end local v12    # "quotedValue":Ljava/lang/Object;
    .end local v15    # "value":Lgnu/expr/Expression;
    :cond_4
    goto/16 :goto_0

    .line 145
    .restart local v12    # "quotedValue":Ljava/lang/Object;
    :cond_5
    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    move-object/from16 v19, v0

    move-object/from16 v14, v19

    .line 146
    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v19

    move-object/from16 v11, v19

    goto/16 :goto_2

    .line 158
    .end local v13    # "func_ref":Lgnu/expr/ReferenceExp;
    .end local v14    # "func_decl":Lgnu/expr/Declaration;
    :cond_6
    move-object/from16 v19, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 160
    move-object/from16 v19, v8

    check-cast v19, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    goto/16 :goto_0

    .line 169
    .line 395
    .end local v12    # "quotedValue":Ljava/lang/Object;
    :cond_7
    :goto_3
    return-void

    .line 173
    .local v13, "proc":Lgnu/mapping/Procedure;
    :cond_8
    move-object/from16 v19, v13

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    :try_start_0
    invoke-static/range {v19 .. v22}, Lgnu/expr/ApplyExp;->inlineCompile(Lgnu/mapping/Procedure;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    if-eqz v19, :cond_9

    .line 174
    goto :goto_3

    .line 180
    .line 183
    .end local v13    # "proc":Lgnu/mapping/Procedure;
    :cond_9
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v19

    move-object/from16 v13, v19

    .line 186
    .local v13, "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v19, v9

    if-eqz v19, :cond_15

    .line 188
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v19, v0

    if-ltz v19, :cond_a

    move/from16 v19, v7

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_b

    :cond_a
    move/from16 v19, v7

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    .line 191
    :cond_b
    new-instance v19, Ljava/lang/Error;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "internal error - wrong number of parameters for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v19

    .line 176
    .local v13, "proc":Lgnu/mapping/Procedure;
    :catch_0
    move-exception v19

    move-object/from16 v14, v19

    .line 178
    .local v14, "ex":Ljava/lang/Throwable;
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v19

    const/16 v20, 0x65

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "caught exception in inline-compiler for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v12

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v14

    invoke-virtual/range {v19 .. v22}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    goto/16 :goto_3

    .line 193
    .end local v14    # "ex":Ljava/lang/Throwable;
    .local v13, "code":Lgnu/bytecode/CodeAttr;
    :cond_c
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v19

    move/from16 v15, v19

    .line 196
    .local v15, "conv":I
    move-object/from16 v19, v4

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/Compilation;->inlineOk(Lgnu/expr/Expression;)Z

    move-result v19

    if-eqz v19, :cond_15

    move/from16 v19, v15

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_d

    move/from16 v19, v15

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v19

    if-nez v19, :cond_15

    :cond_d
    move-object/from16 v19, v9

    move/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/LambdaExp;->getMethod(I)Lgnu/bytecode/Method;

    move-result-object v19

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v14, v20

    .local v14, "method":Lgnu/bytecode/Method;
    if-eqz v19, :cond_15

    .line 202
    new-instance v19, Lgnu/expr/PrimProcedure;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v14

    move-object/from16 v22, v9

    invoke-direct/range {v20 .. v22}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/LambdaExp;)V

    move-object/from16 v16, v19

    .line 203
    .local v16, "pproc":Lgnu/expr/PrimProcedure;
    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v19

    move/from16 v17, v19

    .line 204
    .local v17, "is_static":Z
    const/16 v19, 0x0

    move/from16 v18, v19

    .line 206
    .local v18, "extraArg":Z
    move/from16 v19, v17

    if-eqz v19, :cond_e

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/LambdaExp;->declareClosureEnv()Lgnu/bytecode/Variable;

    move-result-object v19

    if-eqz v19, :cond_10

    .line 208
    :cond_e
    move/from16 v19, v17

    if-eqz v19, :cond_f

    .line 209
    const/16 v19, 0x1

    move/from16 v18, v19

    .line 210
    :cond_f
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v19, v0

    move-object/from16 v20, v9

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 211
    move-object/from16 v19, v13

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v20, v0

    :goto_4
    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 220
    :cond_10
    :goto_5
    move-object/from16 v19, v16

    move/from16 v20, v18

    if-eqz v20, :cond_14

    sget-object v20, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    :goto_6
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    invoke-virtual/range {v19 .. v23}, Lgnu/expr/PrimProcedure;->compile(Lgnu/bytecode/Type;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 222
    goto/16 :goto_3

    .line 211
    :cond_11
    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    move-object/from16 v20, v0

    goto :goto_4

    .line 214
    :cond_12
    move-object/from16 v19, v11

    if-eqz v19, :cond_13

    .line 215
    move-object/from16 v19, v11

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v4

    sget-object v23, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual/range {v19 .. v23}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_5

    .line 217
    :cond_13
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v19

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    goto :goto_5

    .line 220
    :cond_14
    const/16 v20, 0x0

    goto :goto_6

    .line 284
    .end local v14    # "method":Lgnu/bytecode/Method;
    .end local v15    # "conv":I
    .end local v16    # "pproc":Lgnu/expr/PrimProcedure;
    .end local v17    # "is_static":Z
    .end local v18    # "extraArg":Z
    :cond_15
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v19

    if-eqz v19, :cond_16

    move-object/from16 v19, v9

    if-eqz v19, :cond_16

    move-object/from16 v19, v9

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_16

    const/16 v19, 0x1

    :goto_7
    move/from16 v15, v19

    .line 288
    .local v15, "tail_recurse":Z
    move-object/from16 v19, v9

    if-eqz v19, :cond_18

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v19

    if-eqz v19, :cond_18

    move/from16 v19, v15

    if-nez v19, :cond_18

    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v19, v0

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 291
    move-object/from16 v19, v9

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-static/range {v19 .. v22}, Lgnu/expr/ApplyExp;->pushArgs(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;[ILgnu/expr/Compilation;)V

    .line 292
    move-object/from16 v19, v9

    const/16 v20, 0x80

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 294
    move-object/from16 v19, v13

    move-object/from16 v20, v9

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v19 .. v22}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V

    .line 295
    move-object/from16 v19, v13

    const/16 v20, 0x0

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lgnu/bytecode/CodeAttr;->emitTailCall(ZLgnu/bytecode/Scope;)V

    .line 296
    goto/16 :goto_3

    .line 284
    .end local v15    # "tail_recurse":Z
    :cond_16
    const/16 v19, 0x0

    goto :goto_7

    .line 298
    .restart local v15    # "tail_recurse":Z
    :cond_17
    move-object/from16 v19, v9

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/expr/LambdaExp;->flags:I

    move/from16 v20, v0

    const/16 v21, 0x80

    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/expr/LambdaExp;->flags:I

    .line 299
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v19, v0

    move-object/from16 v16, v19

    .line 300
    .local v16, "saveLambda":Lgnu/expr/LambdaExp;
    move-object/from16 v19, v4

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 301
    move-object/from16 v19, v9

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 302
    move-object/from16 v19, v9

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/LambdaExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 303
    move-object/from16 v19, v13

    move-object/from16 v20, v9

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v19 .. v22}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V

    .line 304
    move-object/from16 v19, v9

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 305
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 306
    move-object/from16 v19, v9

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/LambdaExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 307
    move-object/from16 v19, v9

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/LambdaExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 308
    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v19

    .line 309
    move-object/from16 v19, v4

    move-object/from16 v20, v16

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 310
    goto/16 :goto_3

    .line 313
    .end local v16    # "saveLambda":Lgnu/expr/LambdaExp;
    :cond_18
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v19

    if-eqz v19, :cond_1e

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v19

    if-nez v19, :cond_19

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/ConsumerTarget;

    move/from16 v19, v0

    if-eqz v19, :cond_1e

    :cond_19
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v19

    if-nez v19, :cond_1e

    .line 317
    sget-object v19, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    move-object/from16 v16, v19

    .line 318
    .local v16, "typeContext":Lgnu/bytecode/ClassType;
    move-object/from16 v19, v8

    move-object/from16 v20, v4

    new-instance v21, Lgnu/expr/StackTarget;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    sget-object v23, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-direct/range {v22 .. v23}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 320
    move/from16 v19, v7

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_1b

    .line 322
    const/16 v19, 0x0

    move/from16 v17, v19

    .local v17, "i":I
    :goto_8
    move/from16 v19, v17

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1a

    .line 323
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move/from16 v20, v17

    aget-object v19, v19, v20

    move-object/from16 v20, v4

    sget-object v21, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 322
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 324
    :cond_1a
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 325
    move-object/from16 v19, v13

    sget-object v20, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "check"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move/from16 v22, v7

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 336
    .end local v17    # "i":I
    :goto_9
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 338
    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 351
    :goto_a
    goto/16 :goto_3

    .line 331
    :cond_1b
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    invoke-static/range {v19 .. v20}, Lgnu/expr/ApplyExp;->compileToArray([Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 332
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 333
    move-object/from16 v19, v13

    sget-object v20, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string/jumbo v21, "checkN"

    const/16 v22, 0x2

    invoke-virtual/range {v20 .. v22}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_9

    .line 340
    :cond_1c
    move-object/from16 v19, v5

    check-cast v19, Lgnu/expr/ConsumerTarget;

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 342
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 343
    move-object/from16 v19, v13

    move-object/from16 v20, v16

    const-string/jumbo v21, "runUntilDone"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_a

    .line 347
    :cond_1d
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 348
    move-object/from16 v19, v13

    move-object/from16 v20, v5

    check-cast v20, Lgnu/expr/ConsumerTarget;

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 349
    move-object/from16 v19, v13

    move-object/from16 v20, v16

    const-string/jumbo v21, "runUntilValue"

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_a

    .line 354
    .end local v16    # "typeContext":Lgnu/bytecode/ClassType;
    :cond_1e
    move/from16 v19, v15

    if-nez v19, :cond_1f

    .line 355
    move-object/from16 v19, v8

    move-object/from16 v20, v4

    new-instance v21, Lgnu/expr/StackTarget;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    sget-object v23, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-direct/range {v22 .. v23}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 357
    :cond_1f
    move/from16 v19, v15

    if-eqz v19, :cond_21

    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v19, v0

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_20

    const/16 v19, 0x1

    :goto_b
    move/from16 v16, v19

    .line 360
    .local v16, "toArray":Z
    const/16 v19, 0x0

    move-object/from16 v17, v19

    .line 361
    .local v17, "incValues":[I
    move/from16 v19, v16

    if-eqz v19, :cond_23

    .line 363
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    invoke-static/range {v19 .. v20}, Lgnu/expr/ApplyExp;->compileToArray([Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 364
    sget-object v19, Lgnu/expr/Compilation;->applyNmethod:Lgnu/bytecode/Method;

    move-object/from16 v14, v19

    .line 382
    .restart local v14    # "method":Lgnu/bytecode/Method;
    :goto_c
    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v19

    if-nez v19, :cond_27

    .line 384
    move-object/from16 v19, v4

    const/16 v20, 0x65

    const-string/jumbo v21, "unreachable code"

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 385
    goto/16 :goto_3

    .line 357
    .end local v14    # "method":Lgnu/bytecode/Method;
    .end local v16    # "toArray":Z
    .end local v17    # "incValues":[I
    :cond_20
    const/16 v19, 0x0

    goto :goto_b

    :cond_21
    move/from16 v19, v7

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_22

    const/16 v19, 0x1

    goto :goto_b

    :cond_22
    const/16 v19, 0x0

    goto :goto_b

    .line 366
    .restart local v16    # "toArray":Z
    .restart local v17    # "incValues":[I
    :cond_23
    move/from16 v19, v15

    if-eqz v19, :cond_24

    .line 368
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v17, v19

    .line 369
    move-object/from16 v19, v9

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v20, v0

    move-object/from16 v21, v17

    move-object/from16 v22, v4

    invoke-static/range {v19 .. v22}, Lgnu/expr/ApplyExp;->pushArgs(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;[ILgnu/expr/Compilation;)V

    .line 370
    const/16 v19, 0x0

    move-object/from16 v14, v19

    .restart local v14    # "method":Lgnu/bytecode/Method;
    goto :goto_c

    .line 374
    .end local v14    # "method":Lgnu/bytecode/Method;
    :cond_24
    const/16 v19, 0x0

    move/from16 v18, v19

    .local v18, "i":I
    :goto_d
    move/from16 v19, v18

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_25

    .line 376
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move/from16 v20, v18

    aget-object v19, v19, v20

    move-object/from16 v20, v4

    sget-object v21, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 377
    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v19

    if-nez v19, :cond_26

    .line 378
    .line 380
    :cond_25
    sget-object v19, Lgnu/expr/Compilation;->applymethods:[Lgnu/bytecode/Method;

    move/from16 v20, v7

    aget-object v19, v19, v20

    move-object/from16 v14, v19

    .restart local v14    # "method":Lgnu/bytecode/Method;
    goto/16 :goto_c

    .line 374
    .end local v14    # "method":Lgnu/bytecode/Method;
    :cond_26
    add-int/lit8 v18, v18, 0x1

    goto :goto_d

    .line 387
    .end local v18    # "i":I
    .restart local v14    # "method":Lgnu/bytecode/Method;
    :cond_27
    move/from16 v19, v15

    if-eqz v19, :cond_28

    .line 389
    move-object/from16 v19, v13

    move-object/from16 v20, v9

    move-object/from16 v21, v17

    move/from16 v22, v16

    invoke-static/range {v19 .. v22}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V

    .line 390
    move-object/from16 v19, v13

    const/16 v20, 0x0

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lgnu/bytecode/CodeAttr;->emitTailCall(ZLgnu/bytecode/Scope;)V

    .line 391
    goto/16 :goto_3

    .line 393
    :cond_28
    move-object/from16 v19, v13

    move-object/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 394
    move-object/from16 v19, v5

    move-object/from16 v20, v4

    sget-object v21, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 395
    goto/16 :goto_3
.end method

.method public static compileToArray([Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 8

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "args":[Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    move-object v2, v5

    .line 70
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v5, v0

    array-length v5, v5

    if-nez v5, :cond_0

    .line 72
    move-object v5, v2

    sget-object v6, Lgnu/expr/Compilation;->noArgsField:Lgnu/bytecode/Field;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 73
    .line 106
    :goto_0
    return-void

    .line 75
    :cond_0
    move-object v5, v2

    move-object v6, v0

    array-length v6, v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 76
    move-object v5, v2

    sget-object v6, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 77
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 79
    move-object v5, v0

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 80
    .local v4, "arg":Lgnu/expr/Expression;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    instance-of v5, v5, Lgnu/expr/QuoteExp;

    if-nez v5, :cond_1

    move-object v5, v4

    instance-of v5, v5, Lgnu/expr/ReferenceExp;

    if-nez v5, :cond_1

    .line 91
    move-object v5, v4

    move-object v6, v1

    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 92
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 93
    move-object v5, v2

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->emitDup(II)V

    .line 94
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 95
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 96
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 104
    :goto_2
    move-object v5, v2

    sget-object v6, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 100
    :cond_1
    move-object v5, v2

    sget-object v6, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 101
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 102
    move-object v5, v4

    move-object v6, v1

    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_2

    .line 106
    .end local v4    # "arg":Lgnu/expr/Expression;
    :cond_2
    goto :goto_0
.end method

.method static derefFunc(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 541
    move-object v1, p0

    .local v1, "afunc":Lgnu/expr/Expression;
    move-object v3, v1

    instance-of v3, v3, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_0

    .line 543
    move-object v3, v1

    check-cast v3, Lgnu/expr/ReferenceExp;

    iget-object v3, v3, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    move-object v2, v3

    .line 544
    .local v2, "func_decl":Lgnu/expr/Declaration;
    move-object v3, v2

    invoke-static {v3}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    .line 545
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    const-wide/32 v4, 0x10000

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 546
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v3

    move-object v1, v3

    .line 548
    .end local v2    # "func_decl":Lgnu/expr/Declaration;
    :cond_0
    move-object v3, v1

    move-object v1, v3

    .end local v1    # "afunc":Lgnu/expr/Expression;
    return-object v1
.end method

.method static inlineCompile(Lgnu/mapping/Procedure;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "proc":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v5, v0

    invoke-static {v5}, Lgnu/expr/ApplyExp;->asInlineable(Lgnu/mapping/Procedure;)Lgnu/expr/Inlineable;

    move-result-object v5

    move-object v4, v5

    .line 584
    .local v4, "compiler":Lgnu/expr/Inlineable;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 585
    const/4 v5, 0x0

    move v0, v5

    .line 587
    .end local v0    # "proc":Lgnu/mapping/Procedure;
    :goto_0
    return v0

    .line 586
    .restart local v0    # "proc":Lgnu/mapping/Procedure;
    :cond_0
    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-interface {v5, v6, v7, v8}, Lgnu/expr/Inlineable;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 587
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method private static popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V
    .locals 12

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "code":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "paramNo":I
    move v2, p2

    .local v2, "count":I
    move-object v3, p3

    .local v3, "incValues":[I
    move-object/from16 v4, p4

    .local v4, "decl":Lgnu/expr/Declaration;
    move-object/from16 v5, p5

    .local v5, "vars":Lgnu/bytecode/Variable;
    move v6, v2

    if-lez v6, :cond_0

    .line 495
    add-int/lit8 v2, v2, -0x1

    .line 496
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v10}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v11

    if-nez v11, :cond_1

    move-object v11, v5

    :goto_0
    invoke-static/range {v6 .. v11}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V

    .line 498
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 500
    move-object v6, v3

    if-eqz v6, :cond_2

    move-object v6, v3

    move v7, v1

    aget v6, v6, v7

    const/high16 v7, 0x10000

    if-eq v6, v7, :cond_2

    .line 501
    move-object v6, v0

    move-object v7, v5

    move-object v8, v3

    move v9, v1

    aget v8, v8, v9

    int-to-short v8, v8

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 506
    :cond_0
    :goto_1
    return-void

    .line 496
    :cond_1
    move-object v11, v5

    invoke-virtual {v11}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v11

    goto :goto_0

    .line 503
    :cond_2
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_1
.end method

.method private static popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V
    .locals 12

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "code":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "lexp":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "incValues":[I
    move v3, p3

    .local v3, "toArray":Z
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v6

    move-object v4, v6

    .line 471
    .local v4, "vars":Lgnu/bytecode/Variable;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v5, v6

    .line 472
    .local v5, "decls":Lgnu/expr/Declaration;
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-virtual {v6}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "this"

    if-ne v6, v7, :cond_0

    .line 473
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v6

    move-object v4, v6

    .line 474
    :cond_0
    move-object v6, v4

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-virtual {v6}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "$ctx"

    if-ne v6, v7, :cond_1

    .line 475
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v6

    move-object v4, v6

    .line 476
    :cond_1
    move-object v6, v4

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-virtual {v6}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "argsArray"

    if-ne v6, v7, :cond_3

    .line 478
    move v6, v3

    if-eqz v6, :cond_2

    .line 480
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v10, v5

    move-object v11, v4

    invoke-static/range {v6 .. v11}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V

    .line 481
    .line 486
    :goto_0
    return-void

    .line 483
    :cond_2
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v6

    move-object v4, v6

    .line 485
    :cond_3
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v1

    iget v8, v8, Lgnu/expr/LambdaExp;->min_args:I

    move-object v9, v2

    move-object v10, v5

    move-object v11, v4

    invoke-static/range {v6 .. v11}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V

    .line 486
    goto :goto_0
.end method

.method private static pushArgs(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;[ILgnu/expr/Compilation;)V
    .locals 15

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move-object/from16 v2, p2

    .local v2, "incValues":[I
    move-object/from16 v3, p3

    .local v3, "comp":Lgnu/expr/Compilation;
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v8

    move-object v4, v8

    .line 451
    .local v4, "param":Lgnu/expr/Declaration;
    move-object v8, v1

    array-length v8, v8

    move v5, v8

    .line 452
    .local v5, "args_length":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_2

    .line 454
    move-object v8, v1

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 455
    .local v7, "arg":Lgnu/expr/Expression;
    move-object v8, v4

    invoke-virtual {v8}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 456
    move-object v8, v7

    move-object v9, v3

    sget-object v10, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 463
    :goto_1
    move-object v8, v4

    invoke-virtual {v8}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v8

    move-object v4, v8

    .line 452
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 457
    :cond_0
    move-object v8, v2

    if-eqz v8, :cond_1

    move-object v8, v2

    move v9, v6

    move-object v10, v7

    move-object v11, v4

    invoke-static {v10, v11}, Lgnu/expr/SetExp;->canUseInc(Lgnu/expr/Expression;Lgnu/expr/Declaration;)I

    move-result v10

    move-object v12, v8

    move v13, v9

    move v14, v10

    move v8, v14

    move-object v9, v12

    move v10, v13

    move v11, v14

    aput v11, v9, v10

    const/high16 v9, 0x10000

    if-eq v8, v9, :cond_1

    .line 459
    goto :goto_1

    .line 461
    :cond_1
    move-object v8, v7

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v10}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    invoke-static {v10}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_1

    .line 465
    .end local v7    # "arg":Lgnu/expr/Expression;
    :cond_2
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 60
    .local v2, "proc":Ljava/lang/Object;
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v6, v6

    move v3, v6

    .line 61
    .local v3, "n":I
    move v6, v3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v4, v6

    .line 62
    .local v4, "vals":[Ljava/lang/Object;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 63
    move-object v6, v4

    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move v9, v5

    aget-object v8, v8, v9

    move-object v9, v1

    invoke-virtual {v8, v9}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    .line 62
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 64
    :cond_0
    move-object v6, v2

    check-cast v6, Lgnu/mapping/Procedure;

    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 65
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 7

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Z)V

    .line 111
    return-void
.end method

.method public deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "mapper":Lgnu/kawa/util/IdentityHashTable;
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v6, v1

    invoke-static {v5, v6}, Lgnu/expr/ApplyExp;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v2, v5

    .line 400
    .local v2, "f":Lgnu/expr/Expression;
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object v6, v1

    invoke-static {v5, v6}, Lgnu/expr/ApplyExp;->deepCopy([Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)[Lgnu/expr/Expression;

    move-result-object v5

    move-object v3, v5

    .line 401
    .local v3, "a":[Lgnu/expr/Expression;
    move-object v5, v2

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    if-nez v5, :cond_1

    :cond_0
    move-object v5, v3

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    if-eqz v5, :cond_2

    .line 402
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    .line 405
    .end local v0    # "this":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v0

    .line 403
    .restart local v0    # "this":Lgnu/expr/ApplyExp;
    :cond_2
    new-instance v5, Lgnu/expr/ApplyExp;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v4, v5

    .line 404
    .local v4, "copy":Lgnu/expr/ApplyExp;
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ApplyExp;->getFlags()I

    move-result v6

    iput v6, v5, Lgnu/expr/ApplyExp;->flags:I

    .line 405
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public getArg(I)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ApplyExp;
    return-object v0
.end method

.method public final getArgCount()I
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/ApplyExp;
    return v0
.end method

.method public final getArgs()[Lgnu/expr/Expression;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ApplyExp;
    return-object v0
.end method

.method public final getFunction()Lgnu/expr/Expression;
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ApplyExp;
    return-object v0
.end method

.method public final getFunctionValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v1, v1, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v1, Lgnu/expr/QuoteExp;

    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ApplyExp;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/ApplyExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 7

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    if-eqz v4, :cond_0

    .line 554
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    move-object v0, v4

    .line 570
    .end local v0    # "this":Lgnu/expr/ApplyExp;
    .local v1, "afunc":Lgnu/expr/Expression;
    :goto_0
    return-object v0

    .line 555
    .end local v1    # "afunc":Lgnu/expr/Expression;
    .restart local v0    # "this":Lgnu/expr/ApplyExp;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-static {v4}, Lgnu/expr/ApplyExp;->derefFunc(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v1, v4

    .line 557
    .restart local v1    # "afunc":Lgnu/expr/Expression;
    move-object v4, v0

    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v5, v4, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 558
    move-object v4, v1

    instance-of v4, v4, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_2

    .line 560
    move-object v4, v1

    check-cast v4, Lgnu/expr/QuoteExp;

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 563
    .local v2, "value":Ljava/lang/Object;
    move-object v4, v2

    instance-of v4, v4, Lgnu/mapping/Procedure;

    if-eqz v4, :cond_1

    .line 564
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lgnu/mapping/Procedure;

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v5

    iput-object v5, v4, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 565
    .line 570
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    move-object v0, v4

    goto :goto_0

    .line 566
    :cond_2
    move-object v4, v1

    instance-of v4, v4, Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_1

    .line 568
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Lgnu/expr/LambdaExp;

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v5

    iput-object v5, v4, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    goto :goto_1
.end method

.method public final getTypeRaw()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ApplyExp;
    return-object v0
.end method

.method public final inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "visitor":Lgnu/expr/InlineCalls;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/expr/InlineCalls;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/text/SourceMessages;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ApplyExp;
    return-object v0
.end method

.method public final inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/text/SourceMessages;)Lgnu/expr/Expression;
    .locals 13

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v8, v8

    move v3, v8

    .line 604
    .local v3, "len":I
    move v8, v3

    new-array v8, v8, [Ljava/lang/Object;

    move-object v4, v8

    .line 605
    .local v4, "vals":[Ljava/lang/Object;
    move v8, v3

    move v5, v8

    .local v5, "i":I
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move v8, v5

    if-ltz v8, :cond_2

    .line 607
    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 608
    .local v6, "arg":Lgnu/expr/Expression;
    move-object v8, v6

    instance-of v8, v8, Lgnu/expr/ReferenceExp;

    if-eqz v8, :cond_0

    .line 610
    move-object v8, v6

    check-cast v8, Lgnu/expr/ReferenceExp;

    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v8

    move-object v7, v8

    .line 611
    .local v7, "decl":Lgnu/expr/Declaration;
    move-object v8, v7

    if-eqz v8, :cond_0

    .line 613
    move-object v8, v7

    invoke-virtual {v8}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v8

    move-object v6, v8

    .line 614
    move-object v8, v6

    sget-object v9, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v8, v9, :cond_0

    .line 615
    move-object v8, v0

    move-object v0, v8

    .line 631
    .end local v0    # "this":Lgnu/expr/ApplyExp;
    .end local v5    # "i":I
    .end local v6    # "arg":Lgnu/expr/Expression;
    .end local v7    # "decl":Lgnu/expr/Declaration;
    :goto_1
    return-object v0

    .line 618
    .restart local v0    # "this":Lgnu/expr/ApplyExp;
    .restart local v5    # "i":I
    .restart local v6    # "arg":Lgnu/expr/Expression;
    :cond_0
    move-object v8, v6

    instance-of v8, v8, Lgnu/expr/QuoteExp;

    if-nez v8, :cond_1

    .line 619
    move-object v8, v0

    move-object v0, v8

    goto :goto_1

    .line 620
    :cond_1
    move-object v8, v4

    move v9, v5

    move-object v10, v6

    check-cast v10, Lgnu/expr/QuoteExp;

    invoke-virtual {v10}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    .line 621
    goto :goto_0

    .line 624
    .end local v6    # "arg":Lgnu/expr/Expression;
    :cond_2
    :try_start_0
    new-instance v8, Lgnu/expr/QuoteExp;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    move-object v11, v4

    invoke-virtual {v10, v11}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    invoke-direct {v9, v10, v11}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    goto :goto_1

    .line 626
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 628
    .local v5, "ex":Ljava/lang/Throwable;
    move-object v8, v2

    if-eqz v8, :cond_3

    .line 629
    move-object v8, v2

    const/16 v9, 0x77

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "call to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " throws "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 631
    :cond_3
    move-object v8, v0

    move-object v0, v8

    goto :goto_1
.end method

.method public final isTailCall()Z
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lgnu/expr/ApplyExp;->getFlag(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/ApplyExp;
    return v0
.end method

.method protected mustCompile()Z
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/ApplyExp;
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 7

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v3, v1

    const-string/jumbo v4, "(Apply"

    const-string/jumbo v5, ")"

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 428
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    move-object v3, v1

    const-string/jumbo v4, " [tailcall]"

    invoke-virtual {v3, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 430
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v3, v4, :cond_1

    .line 432
    move-object v3, v1

    const-string/jumbo v4, " => "

    invoke-virtual {v3, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 433
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    invoke-virtual {v3, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 435
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 436
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/ApplyExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 437
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 438
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 440
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 441
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 438
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    :cond_2
    move-object v3, v1

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public setArg(ILgnu/expr/Expression;)V
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move v1, p1

    .local v1, "i":I
    move-object v2, p2

    .local v2, "arg":Lgnu/expr/Expression;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move v4, v1

    move-object v5, v2

    aput-object v5, v3, v4

    return-void
.end method

.method public setArgs([Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-void
.end method

.method public setFunction(Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "func":Lgnu/expr/Expression;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    return-void
.end method

.method public final setTailCall(Z)V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move v1, p1

    .local v1, "tailCall":Z
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lgnu/expr/ApplyExp;->setFlag(ZI)V

    return-void
.end method

.method public final setType(Lgnu/bytecode/Type;)V
    .locals 4

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 519
    return-void
.end method

.method public side_effects()Z
    .locals 7

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-static {v5}, Lgnu/expr/ApplyExp;->derefFunc(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 524
    .local v1, "value":Ljava/lang/Object;
    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/Procedure;

    if-eqz v5, :cond_2

    move-object v5, v1

    check-cast v5, Lgnu/mapping/Procedure;

    invoke-virtual {v5}, Lgnu/mapping/Procedure;->isSideEffectFree()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 527
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object v2, v5

    .line 528
    .local v2, "a":[Lgnu/expr/Expression;
    move-object v5, v2

    array-length v5, v5

    move v3, v5

    .line 529
    .local v3, "alen":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 531
    move-object v5, v2

    move v6, v4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lgnu/expr/Expression;->side_effects()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 532
    const/4 v5, 0x1

    move v0, v5

    .line 536
    .end local v0    # "this":Lgnu/expr/ApplyExp;
    .end local v2    # "a":[Lgnu/expr/Expression;
    .end local v3    # "alen":I
    .end local v4    # "i":I
    :goto_1
    return v0

    .line 529
    .restart local v0    # "this":Lgnu/expr/ApplyExp;
    .restart local v2    # "a":[Lgnu/expr/Expression;
    .restart local v3    # "alen":I
    .restart local v4    # "i":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 534
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 536
    .end local v2    # "a":[Lgnu/expr/Expression;
    .end local v3    # "alen":I
    .end local v4    # "i":I
    :cond_2
    const/4 v5, 0x1

    move v0, v5

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, v0

    sget-object v2, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-ne v1, v2, :cond_0

    .line 638
    const-string/jumbo v1, "ApplyExp[unknownContinuation]"

    move-object v0, v1

    .line 639
    .end local v0    # "this":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/expr/ApplyExp;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ApplyExp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v2, v2

    goto :goto_1
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ApplyExp;
    return-object v0
.end method

.method public visitArgs(Lgnu/expr/InlineCalls;)V
    .locals 7

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lgnu/expr/InlineCalls;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v3

    iput-object v3, v2, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 416
    return-void
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 421
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 422
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v6, v6

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 423
    :cond_0
    return-void
.end method
