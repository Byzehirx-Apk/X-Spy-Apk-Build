.class public Lgnu/kawa/functions/ValuesMap;
.super Lgnu/mapping/MethodProc;
.source "ValuesMap.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final valuesMap:Lgnu/kawa/functions/ValuesMap;

.field public static final valuesMapWithPos:Lgnu/kawa/functions/ValuesMap;


# instance fields
.field private final startCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    new-instance v0, Lgnu/kawa/functions/ValuesMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lgnu/kawa/functions/ValuesMap;-><init>(I)V

    sput-object v0, Lgnu/kawa/functions/ValuesMap;->valuesMap:Lgnu/kawa/functions/ValuesMap;

    .line 20
    new-instance v0, Lgnu/kawa/functions/ValuesMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lgnu/kawa/functions/ValuesMap;-><init>(I)V

    sput-object v0, Lgnu/kawa/functions/ValuesMap;->valuesMapWithPos:Lgnu/kawa/functions/ValuesMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 5

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ValuesMap;
    move v1, p1

    .local v1, "startCounter":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/MethodProc;-><init>()V

    .line 24
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    .line 25
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v4, "gnu.kawa.functions.CompileMisc:validateApplyValuesMap"

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/functions/ValuesMap;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method static canInline(Lgnu/expr/ApplyExp;Lgnu/kawa/functions/ValuesMap;)Lgnu/expr/LambdaExp;
    .locals 8

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "proc":Lgnu/kawa/functions/ValuesMap;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    move-object v2, v5

    .line 72
    .local v2, "args":[Lgnu/expr/Expression;
    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move-object v5, v2

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    .local v3, "arg0":Lgnu/expr/Expression;
    instance-of v5, v5, Lgnu/expr/LambdaExp;

    if-eqz v5, :cond_1

    .line 74
    move-object v5, v3

    check-cast v5, Lgnu/expr/LambdaExp;

    move-object v4, v5

    .line 75
    .local v4, "lexp":Lgnu/expr/LambdaExp;
    move-object v5, v4

    iget v5, v5, Lgnu/expr/LambdaExp;->min_args:I

    move-object v6, v4

    iget v6, v6, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v5, v6, :cond_1

    move-object v5, v4

    iget v5, v5, Lgnu/expr/LambdaExp;->min_args:I

    move-object v6, v1

    iget v6, v6, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    if-ltz v6, :cond_0

    const/4 v6, 0x2

    :goto_0
    if-ne v5, v6, :cond_1

    .line 77
    move-object v5, v4

    move-object v0, v5

    .line 79
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    .end local v3    # "arg0":Lgnu/expr/Expression;
    .end local v4    # "lexp":Lgnu/expr/LambdaExp;
    :goto_1
    return-object v0

    .line 75
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    .restart local v3    # "arg0":Lgnu/expr/Expression;
    .restart local v4    # "lexp":Lgnu/expr/LambdaExp;
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 79
    .end local v3    # "arg0":Lgnu/expr/Expression;
    .end local v4    # "lexp":Lgnu/expr/LambdaExp;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public static compileInlined(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;ILgnu/bytecode/Method;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 31

    .prologue
    .line 105
    move-object/from16 v2, p0

    .local v2, "lambda":Lgnu/expr/LambdaExp;
    move-object/from16 v3, p1

    .local v3, "vals":Lgnu/expr/Expression;
    move/from16 v4, p2

    .local v4, "startCounter":I
    move-object/from16 v5, p3

    .local v5, "matchesMethod":Lgnu/bytecode/Method;
    move-object/from16 v6, p4

    .local v6, "comp":Lgnu/expr/Compilation;
    move-object/from16 v7, p5

    .local v7, "target":Lgnu/expr/Target;
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v21

    move-object/from16 v8, v21

    .line 106
    .local v8, "param":Lgnu/expr/Declaration;
    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v21

    move-object/from16 v9, v21

    .line 107
    .local v9, "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v21

    move-object/from16 v10, v21

    .line 110
    .local v10, "scope":Lgnu/bytecode/Scope;
    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v21

    move-object/from16 v13, v21

    .line 111
    .local v13, "paramType":Lgnu/bytecode/Type;
    move/from16 v21, v4

    if-ltz v21, :cond_3

    .line 113
    move-object/from16 v21, v10

    move-object/from16 v22, v9

    sget-object v23, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const-string/jumbo v24, "position"

    invoke-virtual/range {v21 .. v24}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v21

    move-object/from16 v11, v21

    .line 114
    .local v11, "counter":Lgnu/bytecode/Variable;
    move-object/from16 v21, v9

    move/from16 v22, v4

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 115
    move-object/from16 v21, v9

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 116
    new-instance v21, Lgnu/expr/Declaration;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    move-object/from16 v23, v11

    invoke-direct/range {v22 .. v23}, Lgnu/expr/Declaration;-><init>(Lgnu/bytecode/Variable;)V

    move-object/from16 v12, v21

    .line 125
    .local v12, "counterDecl":Lgnu/expr/Declaration;
    :goto_0
    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v21, v5

    if-nez v21, :cond_4

    .line 126
    move-object/from16 v21, v8

    move-object/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v21

    .line 133
    :goto_1
    move/from16 v21, v4

    if-ltz v21, :cond_5

    .line 135
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    const/16 v23, 0x0

    new-instance v24, Lgnu/expr/ReferenceExp;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    move-object/from16 v26, v8

    invoke-direct/range {v25 .. v26}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v24, v22, v23

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    const/16 v23, 0x1

    new-instance v24, Lgnu/expr/ReferenceExp;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    move-object/from16 v26, v12

    invoke-direct/range {v25 .. v26}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v24, v22, v23

    move-object/from16 v14, v21

    .line 140
    .local v14, "args":[Lgnu/expr/Expression;
    :goto_2
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    move-object/from16 v23, v2

    move-object/from16 v24, v14

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v15, v21

    .line 141
    .local v15, "app":Lgnu/expr/Expression;
    move-object/from16 v21, v5

    if-eqz v21, :cond_1

    .line 144
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v21

    sget-object v22, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 145
    new-instance v21, Lgnu/expr/ApplyExp;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    move-object/from16 v23, v5

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v24, v0

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x0

    move-object/from16 v27, v15

    aput-object v27, v25, v26

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x1

    new-instance v27, Lgnu/expr/ReferenceExp;

    move-object/from16 v30, v27

    move-object/from16 v27, v30

    move-object/from16 v28, v30

    move-object/from16 v29, v12

    invoke-direct/range {v28 .. v29}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v27, v25, v26

    invoke-direct/range {v22 .. v24}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v15, v21

    .line 149
    :cond_0
    new-instance v21, Lgnu/expr/IfExp;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    move-object/from16 v23, v15

    new-instance v24, Lgnu/expr/ReferenceExp;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    move-object/from16 v26, v8

    invoke-direct/range {v25 .. v26}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    sget-object v25, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct/range {v22 .. v25}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object/from16 v15, v21

    .line 164
    :cond_1
    move-object/from16 v21, v9

    sget-object v22, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v21

    move-object/from16 v16, v21

    .line 165
    .local v16, "indexVar":Lgnu/bytecode/Variable;
    move-object/from16 v21, v9

    sget-object v22, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v21

    move-object/from16 v17, v21

    .line 166
    .local v17, "valuesVar":Lgnu/bytecode/Variable;
    move-object/from16 v21, v9

    sget-object v22, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v21

    move-object/from16 v18, v21

    .line 168
    .local v18, "nextVar":Lgnu/bytecode/Variable;
    move-object/from16 v21, v3

    move-object/from16 v22, v6

    sget-object v23, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 169
    move-object/from16 v21, v9

    move-object/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 170
    move-object/from16 v21, v9

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 171
    move-object/from16 v21, v9

    move-object/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 173
    new-instance v21, Lgnu/bytecode/Label;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    move-object/from16 v23, v9

    invoke-direct/range {v22 .. v23}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v19, v21

    .line 174
    .local v19, "top":Lgnu/bytecode/Label;
    new-instance v21, Lgnu/bytecode/Label;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    move-object/from16 v23, v9

    invoke-direct/range {v22 .. v23}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v20, v21

    .line 175
    .local v20, "doneLabel":Lgnu/bytecode/Label;
    move-object/from16 v21, v19

    move-object/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 176
    move-object/from16 v21, v9

    move-object/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 177
    move-object/from16 v21, v9

    move-object/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 178
    move-object/from16 v21, v9

    sget-object v22, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string/jumbo v23, "nextIndex"

    const/16 v24, 0x2

    invoke-virtual/range {v22 .. v24}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 179
    move-object/from16 v21, v9

    sget-object v22, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 180
    move-object/from16 v21, v9

    move-object/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 182
    move-object/from16 v21, v9

    move-object/from16 v22, v20

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitGotoIfIntLtZero(Lgnu/bytecode/Label;)V

    .line 184
    move-object/from16 v21, v9

    move-object/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 185
    move-object/from16 v21, v9

    move-object/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 186
    move-object/from16 v21, v9

    sget-object v22, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string/jumbo v23, "nextValue"

    const/16 v24, 0x2

    invoke-virtual/range {v22 .. v24}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 188
    move-object/from16 v21, v6

    sget-object v22, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v23, v13

    invoke-static/range {v21 .. v23}, Lgnu/expr/StackTarget;->convert(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V

    .line 189
    move-object/from16 v21, v8

    move-object/from16 v22, v6

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 191
    move-object/from16 v21, v15

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 193
    move/from16 v21, v4

    if-ltz v21, :cond_2

    .line 195
    move-object/from16 v21, v9

    move-object/from16 v22, v11

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 198
    :cond_2
    move-object/from16 v21, v9

    move-object/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 199
    move-object/from16 v21, v9

    move-object/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 200
    move-object/from16 v21, v9

    move-object/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 202
    move-object/from16 v21, v20

    move-object/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 204
    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v21

    .line 205
    return-void

    .line 120
    .end local v11    # "counter":Lgnu/bytecode/Variable;
    .end local v12    # "counterDecl":Lgnu/expr/Declaration;
    .end local v14    # "args":[Lgnu/expr/Expression;
    .end local v15    # "app":Lgnu/expr/Expression;
    .end local v16    # "indexVar":Lgnu/bytecode/Variable;
    .end local v17    # "valuesVar":Lgnu/bytecode/Variable;
    .end local v18    # "nextVar":Lgnu/bytecode/Variable;
    .end local v19    # "top":Lgnu/bytecode/Label;
    .end local v20    # "doneLabel":Lgnu/bytecode/Label;
    :cond_3
    const/16 v21, 0x0

    move-object/from16 v11, v21

    .line 121
    .restart local v11    # "counter":Lgnu/bytecode/Variable;
    const/16 v21, 0x0

    move-object/from16 v12, v21

    .restart local v12    # "counterDecl":Lgnu/expr/Declaration;
    goto/16 :goto_0

    .line 129
    :cond_4
    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v14, v21

    .line 130
    .local v14, "pname":Ljava/lang/String;
    new-instance v21, Lgnu/expr/Declaration;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    move-object/from16 v23, v9

    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v24

    move-object/from16 v25, v14

    invoke-virtual/range {v23 .. v25}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lgnu/expr/Declaration;-><init>(Lgnu/bytecode/Variable;)V

    move-object/from16 v8, v21

    goto/16 :goto_1

    .line 139
    .end local v14    # "pname":Ljava/lang/String;
    :cond_5
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    const/16 v23, 0x0

    new-instance v24, Lgnu/expr/ReferenceExp;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    move-object/from16 v26, v8

    invoke-direct/range {v25 .. v26}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v24, v22, v23

    move-object/from16 v14, v21

    .local v14, "args":[Lgnu/expr/Expression;
    goto/16 :goto_2
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ValuesMap;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/Procedure;

    move-object v2, v9

    .line 38
    .local v2, "proc":Lgnu/mapping/Procedure;
    move-object v9, v1

    iget-object v9, v9, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v3, v9

    .line 39
    .local v3, "out":Lgnu/lists/Consumer;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    .line 40
    .local v4, "val":Ljava/lang/Object;
    move-object v9, v2

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 41
    move-object v9, v4

    instance-of v9, v9, Lgnu/mapping/Values;

    if-eqz v9, :cond_2

    .line 43
    const/4 v9, 0x0

    move v5, v9

    .line 44
    .local v5, "ipos":I
    move-object v9, v0

    iget v9, v9, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    move v6, v9

    .line 45
    .local v6, "count":I
    move-object v9, v4

    check-cast v9, Lgnu/mapping/Values;

    move-object v7, v9

    .line 46
    .local v7, "values":Lgnu/mapping/Values;
    :goto_0
    move-object v9, v7

    move v10, v5

    invoke-virtual {v9, v10}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v9

    move v13, v9

    move v9, v13

    move v10, v13

    move v5, v10

    if-eqz v9, :cond_1

    .line 48
    move-object v9, v7

    move v10, v5

    invoke-virtual {v9, v10}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .line 49
    .local v8, "v":Ljava/lang/Object;
    move-object v9, v0

    iget v9, v9, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    if-ltz v9, :cond_0

    .line 50
    move-object v9, v2

    move-object v10, v8

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v11}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v9, v10, v11, v12}, Lgnu/mapping/Procedure;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 53
    :goto_1
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 54
    goto :goto_0

    .line 52
    :cond_0
    move-object v9, v2

    move-object v10, v8

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_1

    .line 55
    .line 64
    .end local v5    # "ipos":I
    .end local v6    # "count":I
    .end local v7    # "values":Lgnu/mapping/Values;
    .end local v8    # "v":Ljava/lang/Object;
    :cond_1
    :goto_2
    return-void

    .line 58
    :cond_2
    move-object v9, v0

    iget v9, v9, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    if-ltz v9, :cond_3

    .line 59
    move-object v9, v2

    move-object v10, v4

    move-object v11, v0

    iget v11, v11, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    invoke-static {v11}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v9, v10, v11, v12}, Lgnu/mapping/Procedure;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 62
    :goto_3
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/mapping/CallContext;->runUntilDone()V

    goto :goto_2

    .line 61
    :cond_3
    move-object v9, v2

    move-object v10, v4

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_3
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 13

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ValuesMap;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object/from16 v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v7, v1

    move-object v8, v0

    invoke-static {v7, v8}, Lgnu/kawa/functions/ValuesMap;->canInline(Lgnu/expr/ApplyExp;Lgnu/kawa/functions/ValuesMap;)Lgnu/expr/LambdaExp;

    move-result-object v7

    move-object v4, v7

    .line 85
    .local v4, "lambda":Lgnu/expr/LambdaExp;
    move-object v7, v4

    if-nez v7, :cond_0

    .line 87
    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-static {v7, v8, v9}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 88
    .line 99
    :goto_0
    return-void

    .line 90
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    move-object v5, v7

    .line 91
    .local v5, "args":[Lgnu/expr/Expression;
    move-object v7, v3

    instance-of v7, v7, Lgnu/expr/IgnoreTarget;

    if-nez v7, :cond_1

    move-object v7, v3

    instance-of v7, v7, Lgnu/expr/ConsumerTarget;

    if-nez v7, :cond_1

    .line 94
    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-static {v7, v8, v9}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 95
    goto :goto_0

    .line 97
    :cond_1
    move-object v7, v5

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v6, v7

    .line 98
    .local v6, "vals":Lgnu/expr/Expression;
    move-object v7, v4

    move-object v8, v6

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    const/4 v10, 0x0

    move-object v11, v2

    move-object v12, v3

    invoke-static/range {v7 .. v12}, Lgnu/kawa/functions/ValuesMap;->compileInlined(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;ILgnu/bytecode/Method;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 99
    goto :goto_0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ValuesMap;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/ValuesMap;
    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ValuesMap;
    const/16 v1, 0x2002

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/ValuesMap;
    return v0
.end method
