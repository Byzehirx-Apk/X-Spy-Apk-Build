.class public Lgnu/expr/PrimProcedure;
.super Lgnu/mapping/MethodProc;
.source "PrimProcedure.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field private static systemClassLoader:Ljava/lang/ClassLoader;


# instance fields
.field argTypes:[Lgnu/bytecode/Type;

.field member:Ljava/lang/reflect/Member;

.field method:Lgnu/bytecode/Method;

.field mode:C

.field op_code:I

.field retType:Lgnu/bytecode/Type;

.field sideEffectFree:Z

.field source:Lgnu/expr/LambdaExp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 756
    const-class v0, Lgnu/expr/PrimProcedure;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lgnu/expr/PrimProcedure;->systemClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(ILgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V
    .locals 12

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move v1, p1

    .local v1, "op_code":I
    move-object v2, p2

    .local v2, "classtype":Lgnu/bytecode/ClassType;
    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "retType":Lgnu/bytecode/Type;
    move-object/from16 v5, p5

    .local v5, "argTypes":[Lgnu/bytecode/Type;
    move-object v6, v0

    invoke-direct {v6}, Lgnu/mapping/MethodProc;-><init>()V

    .line 429
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lgnu/expr/PrimProcedure;->op_code:I

    .line 430
    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    move v9, v1

    const/16 v10, 0xb8

    if-ne v9, v10, :cond_0

    const/16 v9, 0x8

    :goto_0
    move-object v10, v5

    move-object v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v7

    iput-object v7, v6, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    .line 432
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 433
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 434
    move-object v6, v0

    move v7, v1

    const/16 v8, 0xb8

    if-ne v7, v8, :cond_1

    const/4 v7, 0x0

    :goto_1
    iput-char v7, v6, Lgnu/expr/PrimProcedure;->mode:C

    .line 435
    return-void

    .line 430
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 434
    :cond_1
    const/16 v7, 0x56

    goto :goto_1
.end method

.method public constructor <init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V
    .locals 6

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move v1, p1

    .local v1, "opcode":I
    move-object v2, p2

    .local v2, "retType":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "argTypes":[Lgnu/bytecode/Type;
    move-object v4, v0

    invoke-direct {v4}, Lgnu/mapping/MethodProc;-><init>()V

    .line 404
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lgnu/expr/PrimProcedure;->op_code:I

    .line 405
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 406
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 407
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;)V
    .locals 5

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/MethodProc;-><init>()V

    .line 309
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/expr/PrimProcedure;->init(Lgnu/bytecode/Method;)V

    .line 310
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "$X"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    :goto_0
    iput-object v3, v2, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 312
    return-void

    .line 310
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v3

    goto :goto_0
.end method

.method public constructor <init>(Lgnu/bytecode/Method;CLgnu/expr/Language;)V
    .locals 14

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move/from16 v2, p2

    .local v2, "mode":C
    move-object/from16 v3, p3

    .local v3, "language":Lgnu/expr/Language;
    move-object v9, v0

    invoke-direct {v9}, Lgnu/mapping/MethodProc;-><init>()V

    .line 321
    move-object v9, v0

    move v10, v2

    iput-char v10, v9, Lgnu/expr/PrimProcedure;->mode:C

    .line 323
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lgnu/expr/PrimProcedure;->init(Lgnu/bytecode/Method;)V

    .line 327
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object v4, v9

    .line 328
    .local v4, "pTypes":[Lgnu/bytecode/Type;
    move-object v9, v4

    array-length v9, v9

    move v5, v9

    .line 329
    .local v5, "nTypes":I
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 330
    move v9, v5

    move v6, v9

    .local v6, "i":I
    :goto_0
    add-int/lit8 v6, v6, -0x1

    move v9, v6

    if-ltz v9, :cond_2

    .line 332
    move-object v9, v4

    move v10, v6

    aget-object v9, v9, v10

    move-object v7, v9

    .line 333
    .local v7, "javaType":Lgnu/bytecode/Type;
    move-object v9, v3

    move-object v10, v7

    invoke-virtual {v9, v10}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v9

    move-object v8, v9

    .line 334
    .local v8, "langType":Lgnu/bytecode/Type;
    move-object v9, v7

    move-object v10, v8

    if-eq v9, v10, :cond_1

    .line 336
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    if-nez v9, :cond_0

    .line 338
    move-object v9, v0

    move v10, v5

    new-array v10, v10, [Lgnu/bytecode/Type;

    iput-object v10, v9, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 339
    move-object v9, v4

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    const/4 v12, 0x0

    move v13, v5

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move v10, v6

    move-object v11, v8

    aput-object v11, v9, v10

    .line 343
    :cond_1
    goto :goto_0

    .line 344
    .end local v7    # "javaType":Lgnu/bytecode/Type;
    .end local v8    # "langType":Lgnu/bytecode/Type;
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    if-nez v9, :cond_3

    .line 345
    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 346
    :cond_3
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 347
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v10}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v10

    iput-object v10, v9, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 360
    :cond_4
    :goto_1
    return-void

    .line 348
    :cond_5
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "$X"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 349
    move-object v9, v0

    sget-object v10, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v10, v9, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    goto :goto_1

    .line 352
    :cond_6
    move-object v9, v0

    move-object v10, v3

    move-object v11, v1

    invoke-virtual {v11}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v10

    iput-object v10, v9, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 357
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    sget-object v10, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v9, v10, :cond_4

    .line 358
    move-object v9, v0

    sget-object v10, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    iput-object v10, v9, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    goto :goto_1
.end method

.method public constructor <init>(Lgnu/bytecode/Method;Lgnu/expr/LambdaExp;)V
    .locals 5

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move-object v2, p2

    .local v2, "source":Lgnu/expr/LambdaExp;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 398
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 399
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    .line 400
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V
    .locals 7

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move-object v2, p2

    .local v2, "language":Lgnu/expr/Language;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;CLgnu/expr/Language;)V

    .line 317
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "className":Ljava/lang/String;
    move-object v2, p2

    .local v2, "methodName":Ljava/lang/String;
    move v3, p3

    .local v3, "numArgs":I
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    invoke-direct {v4, v5}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 299
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Lgnu/expr/Language;)V
    .locals 6

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v2, p2

    .local v2, "language":Lgnu/expr/Language;
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ClassType;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;

    move-result-object v4

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    .line 305
    return-void
.end method

.method private compileArgs([Lgnu/expr/Expression;ILgnu/bytecode/Type;Lgnu/expr/Compilation;)V
    .locals 29

    .prologue
    .line 459
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/expr/PrimProcedure;
    move-object/from16 v3, p1

    .local v3, "args":[Lgnu/expr/Expression;
    move/from16 v4, p2

    .local v4, "startArg":I
    move-object/from16 v5, p3

    .local v5, "thisType":Lgnu/bytecode/Type;
    move-object/from16 v6, p4

    .local v6, "comp":Lgnu/expr/Compilation;
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v23

    move/from16 v7, v23

    .line 460
    .local v7, "variable":Z
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/PrimProcedure;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v8, v23

    .line 461
    .local v8, "name":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v9, v23

    .line 462
    .local v9, "arg_type":Lgnu/bytecode/Type;
    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v23

    move-object/from16 v10, v23

    .line 463
    .local v10, "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v23, v5

    sget-object v24, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_6

    const/16 v23, 0x1

    :goto_0
    move/from16 v11, v23

    .line 464
    .local v11, "skipArg":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v24, v11

    sub-int v23, v23, v24

    move/from16 v12, v23

    .line 465
    .local v12, "arg_count":I
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 466
    add-int/lit8 v12, v12, -0x1

    .line 467
    :cond_0
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v24, v4

    sub-int v23, v23, v24

    move/from16 v13, v23

    .line 468
    .local v13, "nargs":I
    move-object/from16 v23, v5

    if-eqz v23, :cond_1

    move/from16 v23, v11

    if-eqz v23, :cond_7

    :cond_1
    const/16 v23, 0x1

    :goto_1
    move/from16 v14, v23

    .line 474
    .local v14, "is_static":Z
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 475
    .local v15, "createVarargsArrayIfNeeded":Z
    move/from16 v23, v7

    if-eqz v23, :cond_3

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v23

    const/16 v24, 0x80

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_3

    move/from16 v23, v13

    if-lez v23, :cond_3

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_3

    move/from16 v23, v13

    move/from16 v24, v12

    move/from16 v25, v14

    if-eqz v25, :cond_8

    const/16 v25, 0x0

    :goto_2
    add-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 479
    move-object/from16 v23, v3

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v23

    move-object/from16 v16, v23

    .line 480
    .local v16, "lastType":Lgnu/bytecode/Type;
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    aget-object v23, v23, v24

    move-object/from16 v17, v23

    .line 481
    .local v17, "lastParam":Lgnu/bytecode/Type;
    move-object/from16 v23, v16

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v23, v17

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v23, v17

    check-cast v23, Lgnu/bytecode/ArrayType;

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 486
    move-object/from16 v23, v16

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v23, v0

    if-nez v23, :cond_2

    .line 487
    const/16 v23, 0x1

    move/from16 v15, v23

    .line 488
    :cond_2
    const/16 v23, 0x0

    move/from16 v7, v23

    .line 491
    .end local v16    # "lastType":Lgnu/bytecode/Type;
    .end local v17    # "lastParam":Lgnu/bytecode/Type;
    :cond_3
    move/from16 v23, v7

    if-eqz v23, :cond_a

    move/from16 v23, v12

    move/from16 v24, v14

    if-eqz v24, :cond_9

    const/16 v24, 0x1

    :goto_3
    sub-int v23, v23, v24

    :goto_4
    move/from16 v16, v23

    .line 492
    .local v16, "fix_arg_count":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    move-object/from16 v23, v0

    if-nez v23, :cond_b

    const/16 v23, 0x0

    :goto_5
    move-object/from16 v17, v23

    .line 493
    .local v17, "argDecl":Lgnu/expr/Declaration;
    move-object/from16 v23, v17

    if-eqz v23, :cond_4

    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 494
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v23

    move-object/from16 v17, v23

    .line 495
    :cond_4
    const/16 v23, 0x0

    move/from16 v18, v23

    .line 497
    .local v18, "i":I
    :goto_6
    move/from16 v23, v7

    if-eqz v23, :cond_d

    move/from16 v23, v18

    move/from16 v24, v16

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 499
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v23, v0

    move/from16 v24, v12

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v25, v11

    add-int v24, v24, v25

    aget-object v23, v23, v24

    move-object/from16 v9, v23

    .line 500
    move-object/from16 v23, v9

    sget-object v24, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_5

    move-object/from16 v23, v9

    sget-object v24, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 502
    :cond_5
    move-object/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v18

    add-int v24, v24, v25

    move-object/from16 v25, v6

    invoke-static/range {v23 .. v25}, Lgnu/kawa/functions/MakeList;->compile([Lgnu/expr/Expression;ILgnu/expr/Compilation;)V

    .line 503
    .line 553
    :goto_7
    return-void

    .line 463
    .end local v11    # "skipArg":I
    .end local v12    # "arg_count":I
    .end local v13    # "nargs":I
    .end local v14    # "is_static":Z
    .end local v15    # "createVarargsArrayIfNeeded":Z
    .end local v16    # "fix_arg_count":I
    .end local v17    # "argDecl":Lgnu/expr/Declaration;
    .end local v18    # "i":I
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 468
    .restart local v11    # "skipArg":I
    .restart local v12    # "arg_count":I
    .restart local v13    # "nargs":I
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 475
    .restart local v14    # "is_static":Z
    .restart local v15    # "createVarargsArrayIfNeeded":Z
    :cond_8
    const/16 v25, 0x1

    goto/16 :goto_2

    .line 491
    :cond_9
    const/16 v24, 0x0

    goto :goto_3

    :cond_a
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v24, v4

    sub-int v23, v23, v24

    goto/16 :goto_4

    .line 492
    .restart local v16    # "fix_arg_count":I
    :cond_b
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v23

    goto/16 :goto_5

    .line 505
    .restart local v17    # "argDecl":Lgnu/expr/Declaration;
    .restart local v18    # "i":I
    :cond_c
    move-object/from16 v23, v10

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v25, v4

    sub-int v24, v24, v25

    move/from16 v25, v16

    sub-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 506
    move-object/from16 v23, v9

    check-cast v23, Lgnu/bytecode/ArrayType;

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v23

    move-object/from16 v9, v23

    .line 507
    move-object/from16 v23, v10

    move-object/from16 v24, v9

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 509
    :cond_d
    move/from16 v23, v18

    move/from16 v24, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_e

    .line 510
    goto :goto_7

    .line 511
    :cond_e
    move/from16 v23, v15

    if-eqz v23, :cond_13

    move/from16 v23, v18

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    move/from16 v24, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    const/16 v23, 0x1

    :goto_8
    move/from16 v19, v23

    .line 512
    .local v19, "createVarargsNow":Z
    move/from16 v23, v18

    move/from16 v24, v16

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_14

    .line 514
    move-object/from16 v23, v10

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 515
    move-object/from16 v23, v10

    move/from16 v24, v18

    move/from16 v25, v16

    sub-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 522
    :goto_9
    move-object/from16 v23, v6

    move-object/from16 v24, v9

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 523
    move/from16 v23, v19

    if-eqz v23, :cond_19

    sget-object v23, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    :goto_a
    move-object/from16 v20, v23

    .line 524
    .local v20, "argTypeForTarget":Lgnu/bytecode/Type;
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    move-object/from16 v23, v0

    if-nez v23, :cond_1a

    move-object/from16 v23, v20

    move-object/from16 v24, v8

    move/from16 v25, v18

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    invoke-static/range {v23 .. v25}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;Ljava/lang/String;I)Lgnu/expr/Target;

    move-result-object v23

    :goto_b
    move-object/from16 v21, v23

    .line 527
    .local v21, "target":Lgnu/expr/Target;
    move-object/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v18

    add-int v24, v24, v25

    aget-object v23, v23, v24

    move-object/from16 v24, v6

    move-object/from16 v25, v21

    move-object/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v18

    add-int v27, v27, v28

    aget-object v26, v26, v27

    invoke-virtual/range {v23 .. v26}, Lgnu/expr/Expression;->compileNotePosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V

    .line 528
    move/from16 v23, v19

    if-eqz v23, :cond_f

    .line 532
    move-object/from16 v23, v9

    check-cast v23, Lgnu/bytecode/ArrayType;

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v23

    move-object/from16 v22, v23

    .line 533
    .local v22, "eltype":Lgnu/bytecode/Type;
    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 534
    move-object/from16 v23, v10

    move-object/from16 v24, v9

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->emitInstanceof(Lgnu/bytecode/Type;)V

    .line 535
    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 536
    move-object/from16 v23, v10

    move-object/from16 v24, v9

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 537
    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 538
    move-object/from16 v23, v10

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 539
    move-object/from16 v23, v10

    move-object/from16 v24, v22

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 540
    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 541
    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 542
    move-object/from16 v23, v10

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 543
    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 544
    move-object/from16 v23, v22

    move-object/from16 v24, v10

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 545
    move-object/from16 v23, v10

    move-object/from16 v24, v9

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 546
    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 548
    .end local v22    # "eltype":Lgnu/bytecode/Type;
    :cond_f
    move/from16 v23, v18

    move/from16 v24, v16

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_10

    .line 549
    move-object/from16 v23, v10

    move-object/from16 v24, v9

    invoke-virtual/range {v23 .. v24}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 550
    :cond_10
    move-object/from16 v23, v17

    if-eqz v23, :cond_12

    move/from16 v23, v14

    if-nez v23, :cond_11

    move/from16 v23, v18

    if-lez v23, :cond_12

    .line 551
    :cond_11
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v23

    move-object/from16 v17, v23

    .line 495
    :cond_12
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 511
    .end local v19    # "createVarargsNow":Z
    .end local v20    # "argTypeForTarget":Lgnu/bytecode/Type;
    .end local v21    # "target":Lgnu/expr/Target;
    :cond_13
    const/16 v23, 0x0

    goto/16 :goto_8

    .line 518
    .restart local v19    # "createVarargsNow":Z
    :cond_14
    move-object/from16 v23, v17

    if-eqz v23, :cond_16

    move/from16 v23, v14

    if-nez v23, :cond_15

    move/from16 v23, v18

    if-lez v23, :cond_16

    :cond_15
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v23

    :goto_c
    move-object/from16 v9, v23

    goto/16 :goto_9

    :cond_16
    move/from16 v23, v14

    if-eqz v23, :cond_17

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v23, v0

    move/from16 v24, v18

    move/from16 v25, v11

    add-int v24, v24, v25

    aget-object v23, v23, v24

    goto :goto_c

    :cond_17
    move/from16 v23, v18

    if-nez v23, :cond_18

    move-object/from16 v23, v5

    goto :goto_c

    :cond_18
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v23, v0

    move/from16 v24, v18

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    aget-object v23, v23, v24

    goto :goto_c

    .line 523
    :cond_19
    move-object/from16 v23, v9

    goto/16 :goto_a

    .line 524
    .restart local v20    # "argTypeForTarget":Lgnu/bytecode/Type;
    :cond_1a
    move-object/from16 v23, v20

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    move-object/from16 v24, v0

    move/from16 v25, v18

    invoke-static/range {v23 .. v25}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)Lgnu/expr/Target;

    move-result-object v23

    goto/16 :goto_b
.end method

.method public static compileInvoke(Lgnu/expr/Compilation;Lgnu/bytecode/Method;Lgnu/expr/Target;ZILgnu/bytecode/Type;)V
    .locals 14

    .prologue
    .line 657
    move-object v0, p0

    .local v0, "comp":Lgnu/expr/Compilation;
    move-object v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move-object/from16 v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move/from16 v3, p3

    .local v3, "isTailCall":Z
    move/from16 v4, p4

    .local v4, "op_code":I
    move-object/from16 v5, p5

    .local v5, "stackType":Lgnu/bytecode/Type;
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v10

    move-object v6, v10

    .line 658
    .local v6, "code":Lgnu/bytecode/CodeAttr;
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 659
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 660
    move-object v10, v1

    invoke-static {v10}, Lgnu/expr/PrimProcedure;->takesContext(Lgnu/bytecode/Method;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 662
    move-object v10, v6

    move-object v11, v1

    move v12, v4

    invoke-virtual {v10, v11, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 729
    :goto_0
    move-object v10, v2

    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v10, v11, v12}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 730
    :goto_1
    return-void

    .line 664
    :cond_0
    move-object v10, v2

    instance-of v10, v10, Lgnu/expr/IgnoreTarget;

    if-nez v10, :cond_1

    move-object v10, v2

    instance-of v10, v10, Lgnu/expr/ConsumerTarget;

    if-eqz v10, :cond_5

    move-object v10, v2

    check-cast v10, Lgnu/expr/ConsumerTarget;

    invoke-virtual {v10}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 668
    :cond_1
    const/4 v10, 0x0

    move-object v7, v10

    .line 669
    .local v7, "consumerFld":Lgnu/bytecode/Field;
    const/4 v10, 0x0

    move-object v8, v10

    .line 670
    .local v8, "saveCallContext":Lgnu/bytecode/Variable;
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 671
    move-object v10, v2

    instance-of v10, v10, Lgnu/expr/IgnoreTarget;

    if-eqz v10, :cond_2

    .line 673
    sget-object v10, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    move-object v9, v10

    .line 674
    .local v9, "typeCallContext":Lgnu/bytecode/ClassType;
    move-object v10, v9

    const-string/jumbo v11, "consumer"

    invoke-virtual {v10, v11}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v10

    move-object v7, v10

    .line 678
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v10

    .line 679
    move-object v10, v6

    move-object v11, v9

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v10

    move-object v8, v10

    .line 680
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 681
    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 682
    move-object v10, v6

    move-object v11, v8

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 683
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 684
    move-object v10, v6

    const-string/jumbo v11, "gnu.lists.VoidConsumer"

    invoke-static {v11}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v11

    const-string/jumbo v12, "instance"

    invoke-virtual {v11, v12}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 686
    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 688
    .end local v9    # "typeCallContext":Lgnu/bytecode/ClassType;
    :cond_2
    move-object v10, v6

    move-object v11, v1

    move v12, v4

    invoke-virtual {v10, v11, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 689
    move v10, v3

    if-eqz v10, :cond_3

    .line 691
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 692
    move-object v10, v6

    sget-object v11, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v12, "runUntilDone"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 695
    :cond_3
    move-object v10, v2

    instance-of v10, v10, Lgnu/expr/IgnoreTarget;

    if-eqz v10, :cond_4

    .line 698
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 699
    move-object v10, v6

    move-object v11, v8

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 700
    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 701
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v10

    .line 703
    :cond_4
    goto/16 :goto_1

    .line 707
    .end local v7    # "consumerFld":Lgnu/bytecode/Field;
    .end local v8    # "saveCallContext":Lgnu/bytecode/Variable;
    :cond_5
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 708
    sget-object v10, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v5, v10

    .line 709
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v10

    .line 710
    move-object v10, v6

    sget-object v11, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v10

    move-object v7, v10

    .line 711
    .local v7, "saveIndex":Lgnu/bytecode/Variable;
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 712
    move-object v10, v6

    sget-object v11, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v12, "startFromContext"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 714
    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 715
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->emitWithCleanupStart()V

    .line 716
    move-object v10, v6

    move-object v11, v1

    move v12, v4

    invoke-virtual {v10, v11, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 717
    move-object v10, v6

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitWithCleanupCatch(Lgnu/bytecode/Variable;)V

    .line 718
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 719
    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 720
    move-object v10, v6

    sget-object v11, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v12, "cleanupFromContext"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 722
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->emitWithCleanupDone()V

    .line 723
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 724
    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 725
    move-object v10, v6

    sget-object v11, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string/jumbo v12, "getFromContext"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 727
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public static disassemble(Lgnu/mapping/Procedure;Lgnu/bytecode/ClassTypeWriter;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 825
    move-object/from16 v0, p0

    .local v0, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v1, p1

    .local v1, "cwriter":Lgnu/bytecode/ClassTypeWriter;
    move-object v13, v0

    instance-of v13, v13, Lgnu/expr/GenericProc;

    if-eqz v13, :cond_3

    .line 827
    move-object v13, v0

    check-cast v13, Lgnu/expr/GenericProc;

    move-object v2, v13

    .line 828
    .local v2, "gproc":Lgnu/expr/GenericProc;
    move-object v13, v2

    invoke-virtual {v13}, Lgnu/expr/GenericProc;->getMethodCount()I

    move-result v13

    move v3, v13

    .line 829
    .local v3, "n":I
    move-object v13, v1

    const-string/jumbo v14, "Generic procedure with "

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 830
    move-object v13, v1

    move v14, v3

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 831
    move-object v13, v1

    move v14, v3

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    const-string/jumbo v14, " method."

    :goto_0
    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 832
    const/4 v13, 0x0

    move v4, v13

    .local v4, "i":I
    :goto_1
    move v13, v4

    move v14, v3

    if-ge v13, v14, :cond_2

    .line 834
    move-object v13, v2

    move v14, v4

    invoke-virtual {v13, v14}, Lgnu/expr/GenericProc;->getMethod(I)Lgnu/mapping/MethodProc;

    move-result-object v13

    move-object v5, v13

    .line 835
    .local v5, "mproc":Lgnu/mapping/Procedure;
    move-object v13, v5

    if-eqz v13, :cond_0

    .line 837
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 838
    move-object v13, v5

    move-object v14, v1

    invoke-static {v13, v14}, Lgnu/expr/PrimProcedure;->disassemble(Lgnu/mapping/Procedure;Lgnu/bytecode/ClassTypeWriter;)V

    .line 832
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 831
    .end local v4    # "i":I
    .end local v5    # "mproc":Lgnu/mapping/Procedure;
    :cond_1
    const-string/jumbo v14, "methods."

    goto :goto_0

    .line 841
    .line 893
    .end local v2    # "gproc":Lgnu/expr/GenericProc;
    .end local v3    # "n":I
    :cond_2
    :goto_2
    return-void

    .line 843
    :cond_3
    const/4 v13, 0x0

    move-object v2, v13

    .line 844
    .local v2, "pname":Ljava/lang/String;
    move-object v13, v0

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    move-object v3, v13

    .line 845
    .local v3, "cl":Ljava/lang/Class;
    move-object v13, v0

    instance-of v13, v13, Lgnu/expr/ModuleMethod;

    if-eqz v13, :cond_5

    .line 846
    move-object v13, v0

    check-cast v13, Lgnu/expr/ModuleMethod;

    iget-object v13, v13, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    move-object v3, v13

    .line 856
    :cond_4
    :goto_3
    move-object v13, v3

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    move-object v4, v13

    .line 857
    .local v4, "loader":Ljava/lang/ClassLoader;
    move-object v13, v3

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    .line 858
    .local v5, "cname":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v5

    const/16 v15, 0x2e

    const/16 v16, 0x2f

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ".class"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    .line 859
    .local v6, "rname":Ljava/lang/String;
    new-instance v13, Lgnu/bytecode/ClassType;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Lgnu/bytecode/ClassType;-><init>()V

    move-object v7, v13

    .line 860
    .local v7, "ctype":Lgnu/bytecode/ClassType;
    move-object v13, v4

    move-object v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    move-object v8, v13

    .line 861
    .local v8, "rin":Ljava/io/InputStream;
    move-object v13, v8

    if-nez v13, :cond_6

    .line 862
    new-instance v13, Ljava/lang/RuntimeException;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "missing resource "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 847
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    .end local v5    # "cname":Ljava/lang/String;
    .end local v6    # "rname":Ljava/lang/String;
    .end local v7    # "ctype":Lgnu/bytecode/ClassType;
    .end local v8    # "rin":Ljava/io/InputStream;
    :cond_5
    move-object v13, v0

    instance-of v13, v13, Lgnu/expr/PrimProcedure;

    if-eqz v13, :cond_4

    .line 849
    move-object v13, v0

    check-cast v13, Lgnu/expr/PrimProcedure;

    iget-object v13, v13, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object v4, v13

    .line 850
    .local v4, "pmethod":Lgnu/bytecode/Method;
    move-object v13, v4

    if-eqz v13, :cond_4

    .line 852
    move-object v13, v4

    invoke-virtual {v13}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v13

    invoke-virtual {v13}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v13

    move-object v3, v13

    .line 853
    move-object v13, v4

    invoke-virtual {v13}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v2, v13

    goto/16 :goto_3

    .line 863
    .local v4, "loader":Ljava/lang/ClassLoader;
    .restart local v5    # "cname":Ljava/lang/String;
    .restart local v6    # "rname":Ljava/lang/String;
    .restart local v7    # "ctype":Lgnu/bytecode/ClassType;
    .restart local v8    # "rin":Ljava/io/InputStream;
    :cond_6
    new-instance v13, Lgnu/bytecode/ClassFileInput;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-direct/range {v14 .. v16}, Lgnu/bytecode/ClassFileInput;-><init>(Lgnu/bytecode/ClassType;Ljava/io/InputStream;)V

    move-object v9, v13

    .line 864
    .local v9, "cinput":Lgnu/bytecode/ClassFileInput;
    move-object v13, v1

    move-object v14, v7

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->setClass(Lgnu/bytecode/ClassType;)V

    .line 865
    move-object v13, v4

    move-object v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    move-object v10, v13

    .line 866
    .local v10, "resource":Ljava/net/URL;
    move-object v13, v1

    const-string/jumbo v14, "In class "

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 867
    move-object v13, v1

    move-object v14, v5

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 868
    move-object v13, v10

    if-eqz v13, :cond_7

    .line 870
    move-object v13, v1

    const-string/jumbo v14, " at "

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 871
    move-object v13, v1

    move-object v14, v10

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/Object;)V

    .line 873
    :cond_7
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 874
    move-object v13, v2

    if-nez v13, :cond_9

    .line 876
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v2, v13

    .line 877
    move-object v13, v2

    if-nez v13, :cond_8

    .line 879
    move-object v13, v1

    const-string/jumbo v14, "Anonymous function - unknown method."

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 880
    goto/16 :goto_2

    .line 882
    :cond_8
    move-object v13, v2

    invoke-static {v13}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v2, v13

    .line 884
    :cond_9
    move-object v13, v7

    invoke-virtual {v13}, Lgnu/bytecode/ClassType;->getMethods()Lgnu/bytecode/Method;

    move-result-object v13

    move-object v11, v13

    .line 885
    .local v11, "method":Lgnu/bytecode/Method;
    :goto_4
    move-object v13, v11

    if-eqz v13, :cond_b

    .line 887
    move-object v13, v11

    invoke-virtual {v13}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 888
    .local v12, "mname":Ljava/lang/String;
    move-object v13, v12

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 889
    move-object v13, v1

    move-object v14, v11

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->printMethod(Lgnu/bytecode/Method;)V

    .line 885
    :cond_a
    move-object v13, v11

    invoke-virtual {v13}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v13

    move-object v11, v13

    goto :goto_4

    .line 892
    .end local v12    # "mname":Ljava/lang/String;
    :cond_b
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    .line 893
    goto/16 :goto_2
.end method

.method public static disassemble(Lgnu/mapping/Procedure;Ljava/io/Writer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 819
    move-object v0, p0

    .local v0, "proc":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v2, v0

    new-instance v3, Lgnu/bytecode/ClassTypeWriter;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V

    invoke-static {v2, v3}, Lgnu/expr/PrimProcedure;->disassemble(Lgnu/mapping/Procedure;Lgnu/bytecode/ClassTypeWriter;)V

    .line 820
    return-void
.end method

.method public static disassemble$X(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 812
    move-object v0, p0

    .local v0, "pproc":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 813
    .local v2, "cons":Lgnu/lists/Consumer;
    move-object v3, v0

    move-object v4, v2

    instance-of v4, v4, Ljava/io/Writer;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/io/Writer;

    :goto_0
    invoke-static {v3, v4}, Lgnu/expr/PrimProcedure;->disassemble(Lgnu/mapping/Procedure;Ljava/io/Writer;)V

    .line 814
    return-void

    .line 813
    :cond_0
    new-instance v4, Lgnu/lists/ConsumerWriter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lgnu/lists/ConsumerWriter;-><init>(Lgnu/lists/Consumer;)V

    goto :goto_0
.end method

.method public static getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 26

    .prologue
    .line 936
    move-object/from16 v2, p0

    .local v2, "procClass":Lgnu/bytecode/ClassType;
    move-object/from16 v3, p1

    .local v3, "name":Ljava/lang/String;
    move-object/from16 v4, p2

    .local v4, "decl":Lgnu/expr/Declaration;
    move-object/from16 v5, p3

    .local v5, "atypes":[Lgnu/bytecode/Type;
    move-object/from16 v6, p4

    .local v6, "language":Lgnu/expr/Language;
    const/16 v21, 0x0

    move-object/from16 v7, v21

    .line 937
    .local v7, "best":Lgnu/expr/PrimProcedure;
    const/16 v21, -0x1

    move/from16 v8, v21

    .line 938
    .local v8, "bestCode":I
    const/16 v21, 0x0

    move/from16 v9, v21

    .line 941
    .local v9, "bestIsApply":Z
    move-object/from16 v21, v3

    if-nez v21, :cond_0

    .line 942
    const/16 v21, 0x0

    move-object/from16 v2, v21

    .line 1010
    .end local v2    # "procClass":Lgnu/bytecode/ClassType;
    :goto_0
    return-object v2

    .line 943
    .restart local v2    # "procClass":Lgnu/bytecode/ClassType;
    :cond_0
    move-object/from16 v21, v3

    :try_start_0
    invoke-static/range {v21 .. v21}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v10, v21

    .line 944
    .local v10, "mangledName":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v10

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "$V"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v11, v21

    .line 945
    .local v11, "mangledNameV":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v10

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "$V$X"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v12, v21

    .line 946
    .local v12, "mangledNameVX":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v10

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "$X"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v13, v21

    .line 947
    .local v13, "mangledNameX":Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v14, v21

    .line 948
    .local v14, "applyOk":Z
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v15, v21

    .line 949
    .local v15, "meth":Lgnu/bytecode/Method;
    :goto_1
    move-object/from16 v21, v15

    if-eqz v21, :cond_a

    .line 951
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v21

    move/from16 v16, v21

    .line 952
    .local v16, "mods":I
    move/from16 v21, v16

    const/16 v22, 0x9

    and-int/lit8 v21, v21, 0x9

    const/16 v22, 0x9

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 955
    move-object/from16 v21, v4

    if-eqz v21, :cond_1

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    .line 956
    .line 949
    :cond_1
    :goto_2
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v15, v21

    goto :goto_1

    .line 958
    :cond_2
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v17, v21

    .line 960
    .local v17, "mname":Ljava/lang/String;
    move-object/from16 v21, v17

    move-object/from16 v22, v10

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v21, v17

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v21, v17

    move-object/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v21, v17

    move-object/from16 v22, v12

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 965
    :cond_3
    const/16 v21, 0x0

    move/from16 v18, v21

    .line 974
    .local v18, "isApply":Z
    :goto_3
    move/from16 v21, v18

    if-nez v21, :cond_4

    .line 977
    const/16 v21, 0x0

    move/from16 v14, v21

    .line 978
    move/from16 v21, v9

    if-eqz v21, :cond_4

    .line 980
    const/16 v21, 0x0

    move-object/from16 v7, v21

    .line 981
    const/16 v21, -0x1

    move/from16 v8, v21

    .line 982
    const/16 v21, 0x0

    move/from16 v9, v21

    .line 985
    :cond_4
    new-instance v21, Lgnu/expr/PrimProcedure;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    move-object/from16 v23, v15

    move-object/from16 v24, v6

    invoke-direct/range {v22 .. v24}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    move-object/from16 v19, v21

    .line 986
    .local v19, "prproc":Lgnu/expr/PrimProcedure;
    move-object/from16 v21, v19

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/PrimProcedure;->setName(Ljava/lang/String;)V

    .line 987
    move-object/from16 v21, v19

    move-object/from16 v22, v5

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/PrimProcedure;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v21

    move/from16 v20, v21

    .line 988
    .local v20, "code":I
    move/from16 v21, v20

    if-ltz v21, :cond_1

    move/from16 v21, v20

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 989
    goto/16 :goto_2

    .line 967
    .end local v18    # "isApply":Z
    .end local v19    # "prproc":Lgnu/expr/PrimProcedure;
    .end local v20    # "code":I
    :cond_5
    move/from16 v21, v14

    if-eqz v21, :cond_1

    move-object/from16 v21, v17

    const-string/jumbo v22, "apply"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    move-object/from16 v21, v17

    const-string/jumbo v22, "apply$V"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 970
    :cond_6
    const/16 v21, 0x1

    move/from16 v18, v21

    .restart local v18    # "isApply":Z
    goto :goto_3

    .line 990
    .restart local v19    # "prproc":Lgnu/expr/PrimProcedure;
    .restart local v20    # "code":I
    :cond_7
    move/from16 v21, v20

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    .line 992
    move-object/from16 v21, v19

    move-object/from16 v7, v21

    .line 1003
    :cond_8
    move/from16 v21, v20

    move/from16 v8, v21

    .line 1004
    move/from16 v21, v18

    move/from16 v9, v21

    goto/16 :goto_2

    .line 994
    :cond_9
    move-object/from16 v21, v7

    if-eqz v21, :cond_8

    .line 996
    move-object/from16 v21, v7

    move-object/from16 v22, v19

    invoke-static/range {v21 .. v22}, Lgnu/mapping/MethodProc;->mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;

    move-result-object v21

    check-cast v21, Lgnu/expr/PrimProcedure;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v7, v21

    .line 997
    move-object/from16 v21, v7

    if-nez v21, :cond_8

    .line 999
    move/from16 v21, v8

    if-lez v21, :cond_8

    .line 1000
    const/16 v21, 0x0

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 1009
    .line 1010
    .end local v10    # "mangledName":Ljava/lang/String;
    .end local v11    # "mangledNameV":Ljava/lang/String;
    .end local v12    # "mangledNameVX":Ljava/lang/String;
    .end local v13    # "mangledNameX":Ljava/lang/String;
    .end local v14    # "applyOk":Z
    .end local v15    # "meth":Lgnu/bytecode/Method;
    .end local v16    # "mods":I
    .end local v17    # "mname":Ljava/lang/String;
    .end local v18    # "isApply":Z
    .end local v19    # "prproc":Lgnu/expr/PrimProcedure;
    .end local v20    # "code":I
    :cond_a
    :goto_4
    move-object/from16 v21, v7

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 1007
    :catch_0
    move-exception v21

    move-object/from16 v10, v21

    goto :goto_4
.end method

.method public static getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 13

    .prologue
    .line 926
    move-object v0, p0

    .local v0, "procClass":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "decl":Lgnu/expr/Declaration;
    move-object/from16 v3, p3

    .local v3, "args":[Lgnu/expr/Expression;
    move-object/from16 v4, p4

    .local v4, "language":Lgnu/expr/Language;
    move-object v8, v3

    array-length v8, v8

    move v5, v8

    .line 927
    .local v5, "nargs":I
    move v8, v5

    new-array v8, v8, [Lgnu/bytecode/Type;

    move-object v6, v8

    .line 928
    .local v6, "atypes":[Lgnu/bytecode/Type;
    move v8, v5

    move v7, v8

    .local v7, "i":I
    :goto_0
    add-int/lit8 v7, v7, -0x1

    move v8, v7

    if-ltz v8, :cond_0

    move-object v8, v6

    move v9, v7

    move-object v10, v3

    move v11, v7

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_0

    .line 929
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v6

    move-object v12, v4

    invoke-static {v8, v9, v10, v11, v12}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "procClass":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public static getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 13

    .prologue
    .line 779
    move-object v0, p0

    .local v0, "pproc":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v2, p2

    .local v2, "atypes":[Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "language":Lgnu/expr/Language;
    move-object v8, v0

    instance-of v8, v8, Lgnu/expr/GenericProc;

    if-eqz v8, :cond_3

    .line 781
    move-object v8, v0

    check-cast v8, Lgnu/expr/GenericProc;

    move-object v4, v8

    .line 782
    .local v4, "gproc":Lgnu/expr/GenericProc;
    move-object v8, v4

    iget-object v8, v8, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move-object v5, v8

    .line 783
    .local v5, "methods":[Lgnu/mapping/MethodProc;
    const/4 v8, 0x0

    move-object v0, v8

    .line 784
    move-object v8, v4

    iget v8, v8, Lgnu/expr/GenericProc;->count:I

    move v6, v8

    .local v6, "i":I
    :goto_0
    add-int/lit8 v6, v6, -0x1

    move v8, v6

    if-ltz v8, :cond_2

    .line 786
    move-object v8, v5

    move v9, v6

    aget-object v8, v8, v9

    move-object v9, v2

    invoke-virtual {v8, v9}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v8

    move v7, v8

    .line 787
    .local v7, "applic":I
    move v8, v7

    if-gez v8, :cond_0

    .line 788
    goto :goto_0

    .line 789
    :cond_0
    move-object v8, v0

    if-eqz v8, :cond_1

    .line 790
    const/4 v8, 0x0

    move-object v0, v8

    .line 805
    .end local v0    # "pproc":Lgnu/mapping/Procedure;
    .end local v4    # "gproc":Lgnu/expr/GenericProc;
    .end local v5    # "methods":[Lgnu/mapping/MethodProc;
    .end local v6    # "i":I
    .end local v7    # "applic":I
    :goto_1
    return-object v0

    .line 791
    .restart local v0    # "pproc":Lgnu/mapping/Procedure;
    .restart local v4    # "gproc":Lgnu/expr/GenericProc;
    .restart local v5    # "methods":[Lgnu/mapping/MethodProc;
    .restart local v6    # "i":I
    .restart local v7    # "applic":I
    :cond_1
    move-object v8, v5

    move v9, v6

    aget-object v8, v8, v9

    move-object v0, v8

    .line 792
    goto :goto_0

    .line 793
    .end local v7    # "applic":I
    :cond_2
    move-object v8, v0

    if-nez v8, :cond_3

    .line 794
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1

    .line 796
    .end local v4    # "gproc":Lgnu/expr/GenericProc;
    .end local v5    # "methods":[Lgnu/mapping/MethodProc;
    .end local v6    # "i":I
    :cond_3
    move-object v8, v0

    instance-of v8, v8, Lgnu/expr/PrimProcedure;

    if-eqz v8, :cond_4

    .line 798
    move-object v8, v0

    check-cast v8, Lgnu/expr/PrimProcedure;

    move-object v4, v8

    .line 799
    .local v4, "prproc":Lgnu/expr/PrimProcedure;
    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v8, v9}, Lgnu/expr/PrimProcedure;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v8

    if-ltz v8, :cond_4

    .line 800
    move-object v8, v4

    move-object v0, v8

    goto :goto_1

    .line 802
    .end local v4    # "prproc":Lgnu/expr/PrimProcedure;
    :cond_4
    move-object v8, v0

    invoke-static {v8}, Lgnu/expr/PrimProcedure;->getProcedureClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v8

    move-object v4, v8

    .line 803
    .local v4, "pclass":Ljava/lang/Class;
    move-object v8, v4

    if-nez v8, :cond_5

    .line 804
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1

    .line 805
    :cond_5
    move-object v8, v4

    invoke-static {v8}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    check-cast v8, Lgnu/bytecode/ClassType;

    move-object v9, v0

    invoke-virtual {v9}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-static {v8, v9, v10, v11, v12}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v8

    move-object v0, v8

    goto :goto_1
.end method

.method public static getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 11

    .prologue
    .line 770
    move-object v0, p0

    .local v0, "pproc":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v2, p2

    .local v2, "args":[Lgnu/expr/Expression;
    move-object v3, p3

    .local v3, "language":Lgnu/expr/Language;
    move-object v7, v2

    array-length v7, v7

    move v4, v7

    .line 771
    .local v4, "nargs":I
    move v7, v4

    new-array v7, v7, [Lgnu/bytecode/Type;

    move-object v5, v7

    .line 772
    .local v5, "atypes":[Lgnu/bytecode/Type;
    move v7, v4

    move v6, v7

    .local v6, "i":I
    :goto_0
    add-int/lit8 v6, v6, -0x1

    move v7, v6

    if-ltz v7, :cond_0

    move-object v7, v5

    move v8, v6

    move-object v9, v2

    move v10, v6

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_0

    .line 773
    :cond_0
    move-object v7, v0

    move-object v8, v1

    move-object v9, v5

    move-object v10, v3

    invoke-static {v7, v8, v9, v10}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "pproc":Lgnu/mapping/Procedure;
    return-object v0
.end method

.method public static getMethodFor(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;
    .locals 6

    .prologue
    .line 761
    move-object v0, p0

    .local v0, "pproc":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "pproc":Lgnu/mapping/Procedure;
    return-object v0
.end method

.method public static getMethodFor(Ljava/lang/Class;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 10

    .prologue
    .line 918
    move-object v0, p0

    .local v0, "procClass":Ljava/lang/Class;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v3, p3

    .local v3, "args":[Lgnu/expr/Expression;
    move-object v4, p4

    .local v4, "language":Lgnu/expr/Language;
    move-object v5, v0

    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/ClassType;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "procClass":Ljava/lang/Class;
    return-object v0
.end method

.method public static getProcedureClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 5

    .prologue
    .line 898
    move-object v0, p0

    .local v0, "pproc":Ljava/lang/Object;
    move-object v3, v0

    instance-of v3, v3, Lgnu/expr/ModuleMethod;

    if-eqz v3, :cond_0

    .line 899
    move-object v3, v0

    check-cast v3, Lgnu/expr/ModuleMethod;

    iget-object v3, v3, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 904
    .local v1, "procClass":Ljava/lang/Class;
    :goto_0
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    sget-object v4, Lgnu/expr/PrimProcedure;->systemClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_1

    .line 905
    move-object v3, v1

    move-object v0, v3

    .line 910
    .end local v0    # "pproc":Ljava/lang/Object;
    :goto_1
    return-object v0

    .line 901
    .end local v1    # "procClass":Ljava/lang/Class;
    .restart local v0    # "pproc":Ljava/lang/Object;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .restart local v1    # "procClass":Ljava/lang/Class;
    goto :goto_0

    .line 909
    .line 910
    :cond_1
    :goto_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1

    .line 907
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_2
.end method

.method private init(Lgnu/bytecode/Method;)V
    .locals 11

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    .line 365
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v6

    move v2, v6

    .line 366
    .local v2, "flags":I
    move v6, v2

    const/16 v7, 0x8

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_1

    .line 367
    move-object v6, v0

    const/16 v7, 0xb8

    iput v7, v6, Lgnu/expr/PrimProcedure;->op_code:I

    .line 384
    :goto_0
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v6

    move-object v3, v6

    .line 385
    .local v3, "mtypes":[Lgnu/bytecode/Type;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 387
    move-object v6, v3

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .line 388
    .local v4, "len":I
    move v6, v4

    new-array v6, v6, [Lgnu/bytecode/Type;

    move-object v5, v6

    .line 389
    .local v5, "types":[Lgnu/bytecode/Type;
    move-object v6, v3

    const/4 v7, 0x1

    move-object v8, v5

    const/4 v9, 0x0

    move v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    move-object v6, v5

    move-object v3, v6

    .line 392
    .end local v4    # "len":I
    .end local v5    # "types":[Lgnu/bytecode/Type;
    :cond_0
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 393
    return-void

    .line 370
    .end local v3    # "mtypes":[Lgnu/bytecode/Type;
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    move-object v3, v6

    .line 371
    .local v3, "mclass":Lgnu/bytecode/ClassType;
    move-object v6, v0

    iget-char v6, v6, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v7, 0x50

    if-ne v6, v7, :cond_2

    .line 372
    move-object v6, v0

    const/16 v7, 0xb7

    iput v7, v6, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_0

    .line 375
    :cond_2
    move-object v6, v0

    const/16 v7, 0x56

    iput-char v7, v6, Lgnu/expr/PrimProcedure;->mode:C

    .line 376
    const-string/jumbo v6, "<init>"

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 377
    move-object v6, v0

    const/16 v7, 0xb7

    iput v7, v6, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_0

    .line 378
    :cond_3
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v6

    const/16 v7, 0x200

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_4

    .line 379
    move-object v6, v0

    const/16 v7, 0xb9

    iput v7, v6, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_0

    .line 381
    :cond_4
    move-object v6, v0

    const/16 v7, 0xb6

    iput v7, v6, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_0
.end method

.method public static makeBuiltinBinary(ILgnu/bytecode/Type;)Lgnu/expr/PrimProcedure;
    .locals 9

    .prologue
    .line 420
    move v0, p0

    .local v0, "opcode":I
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    const/4 v3, 0x2

    new-array v3, v3, [Lgnu/bytecode/Type;

    move-object v2, v3

    .line 421
    .local v2, "args":[Lgnu/bytecode/Type;
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v1

    aput-object v5, v3, v4

    .line 422
    move-object v3, v2

    const/4 v4, 0x1

    move-object v5, v1

    aput-object v5, v3, v4

    .line 423
    new-instance v3, Lgnu/expr/PrimProcedure;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    move-object v0, v3

    .end local v0    # "opcode":I
    return-object v0
.end method

.method public static makeBuiltinUnary(ILgnu/bytecode/Type;)Lgnu/expr/PrimProcedure;
    .locals 9

    .prologue
    .line 412
    move v0, p0

    .local v0, "opcode":I
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/bytecode/Type;

    move-object v2, v3

    .line 413
    .local v2, "args":[Lgnu/bytecode/Type;
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v1

    aput-object v5, v3, v4

    .line 414
    new-instance v3, Lgnu/expr/PrimProcedure;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    move-object v0, v3

    .end local v0    # "opcode":I
    return-object v0
.end method

.method public static takesContext(Lgnu/bytecode/Method;)Z
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "method":Lgnu/bytecode/Method;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "$X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    .end local v0    # "method":Lgnu/bytecode/Method;
    return v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object/from16 v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v9, v9

    move v2, v9

    .line 241
    .local v2, "arg_count":I
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v9

    move v3, v9

    .line 242
    .local v3, "is_constructor":Z
    move v9, v3

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v9}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v9

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    move v4, v9

    .line 246
    .local v4, "slink":Z
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    if-nez v9, :cond_5

    .line 248
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v9}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v9

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v9

    move-object v5, v9

    .line 249
    .local v5, "clas":Ljava/lang/Class;
    move v9, v2

    move v10, v4

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    add-int/2addr v9, v10

    new-array v9, v9, [Ljava/lang/Class;

    move-object v6, v9

    .line 250
    .local v6, "paramTypes":[Ljava/lang/Class;
    move v9, v2

    move v7, v9

    .local v7, "i":I
    :goto_2
    add-int/lit8 v7, v7, -0x1

    move v9, v7

    if-ltz v9, :cond_3

    .line 251
    move-object v9, v6

    move v10, v7

    move v11, v4

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    :goto_3
    add-int/2addr v10, v11

    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move v12, v7

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v9, v10

    goto :goto_2

    .line 242
    .end local v4    # "slink":Z
    .end local v5    # "clas":Ljava/lang/Class;
    .end local v6    # "paramTypes":[Ljava/lang/Class;
    .end local v7    # "i":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 249
    .restart local v4    # "slink":Z
    .restart local v5    # "clas":Ljava/lang/Class;
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 251
    .restart local v6    # "paramTypes":[Ljava/lang/Class;
    .restart local v7    # "i":I
    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    .line 252
    :cond_3
    move v9, v4

    if-eqz v9, :cond_4

    .line 253
    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v11}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v11

    invoke-virtual {v11}, Lgnu/bytecode/ClassType;->getOuterLinkType()Lgnu/bytecode/ClassType;

    move-result-object v11

    invoke-virtual {v11}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v9, v10

    .line 254
    :cond_4
    move v9, v3

    if-eqz v9, :cond_8

    .line 255
    move-object v9, v0

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    iput-object v10, v9, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    .line 260
    .end local v5    # "clas":Ljava/lang/Class;
    .end local v6    # "paramTypes":[Ljava/lang/Class;
    .end local v7    # "i":I
    :cond_5
    :goto_4
    move v9, v3

    if-eqz v9, :cond_9

    .line 262
    move-object v9, v1

    iget-object v9, v9, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v6, v9

    .line 263
    .local v6, "args":[Ljava/lang/Object;
    move v9, v4

    if-eqz v9, :cond_6

    .line 265
    move-object v9, v6

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v9

    .line 266
    .local v7, "nargs":I
    move v9, v7

    new-array v9, v9, [Ljava/lang/Object;

    move-object v8, v9

    .line 267
    .local v8, "xargs":[Ljava/lang/Object;
    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v8

    const/4 v12, 0x1

    move v13, v7

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    move-object v9, v8

    const/4 v10, 0x0

    move-object v11, v1

    iget-object v11, v11, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    check-cast v11, Lgnu/expr/PairClassType;

    iget-object v11, v11, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    aput-object v11, v9, v10

    .line 269
    move-object v9, v8

    move-object v6, v9

    .line 272
    .end local v7    # "nargs":I
    .end local v8    # "xargs":[Ljava/lang/Object;
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    check-cast v9, Ljava/lang/reflect/Constructor;

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    .line 287
    .end local v6    # "args":[Ljava/lang/Object;
    .local v5, "result":Ljava/lang/Object;
    :goto_5
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v9

    if-nez v9, :cond_7

    .line 288
    move-object v9, v1

    iget-object v9, v9, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v10, v5

    invoke-interface {v9, v10}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 293
    .line 294
    :cond_7
    return-void

    .line 256
    .local v5, "clas":Ljava/lang/Class;
    .local v6, "paramTypes":[Ljava/lang/Class;
    .local v7, "i":I
    :cond_8
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    sget-object v10, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    if-eq v9, v10, :cond_5

    .line 257
    move-object v9, v0

    move-object v10, v5

    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v11}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v12, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v9, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 290
    .end local v5    # "clas":Ljava/lang/Class;
    .end local v6    # "paramTypes":[Ljava/lang/Class;
    .end local v7    # "i":I
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 292
    .local v5, "ex":Ljava/lang/reflect/InvocationTargetException;
    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v9

    throw v9

    .line 275
    .end local v5    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :cond_9
    move-object v9, v0

    :try_start_1
    iget-object v9, v9, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    sget-object v10, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    if-ne v9, v10, :cond_a

    .line 278
    move-object v9, v1

    iget-object v9, v9, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v9

    .line 279
    .local v6, "arr":Ljava/lang/Object;
    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    move-object v7, v9

    .line 280
    .local v7, "elClass":Ljava/lang/Class;
    move-object v9, v6

    invoke-static {v9}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v9

    move v8, v9

    .line 281
    .local v8, "n":I
    move-object v9, v7

    move v10, v8

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    .line 282
    .local v5, "result":Ljava/lang/Object;
    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v5

    const/4 v12, 0x0

    move v13, v8

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    goto :goto_5

    .line 285
    .end local v5    # "result":Ljava/lang/Object;
    .end local v6    # "arr":Ljava/lang/Object;
    .end local v7    # "elClass":Ljava/lang/Class;
    .end local v8    # "n":I
    :cond_a
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    check-cast v10, Ljava/lang/reflect/Method;

    move-object v11, v1

    iget-object v11, v11, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v12, v1

    iget-object v12, v12, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/bytecode/Type;->coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    move-object v5, v9

    .restart local v5    # "result":Ljava/lang/Object;
    goto :goto_5
.end method

.method compile(Lgnu/bytecode/Type;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 16

    .prologue
    .line 603
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object/from16 v1, p1

    .local v1, "thisType":Lgnu/bytecode/Type;
    move-object/from16 v2, p2

    .local v2, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v3, p3

    .local v3, "comp":Lgnu/expr/Compilation;
    move-object/from16 v4, p4

    .local v4, "target":Lgnu/expr/Target;
    move-object v10, v2

    invoke-virtual {v10}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v10

    move-object v5, v10

    .line 604
    .local v5, "args":[Lgnu/expr/Expression;
    move-object v10, v3

    invoke-virtual {v10}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v10

    move-object v6, v10

    .line 605
    .local v6, "code":Lgnu/bytecode/CodeAttr;
    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    move-object v7, v10

    .line 606
    .local v7, "stackType":Lgnu/bytecode/Type;
    const/4 v10, 0x0

    move v8, v10

    .line 607
    .local v8, "startArg":I
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 609
    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v10, :cond_2

    const/4 v10, 0x0

    :goto_0
    move-object v9, v10

    .line 610
    .local v9, "mclass":Lgnu/bytecode/ClassType;
    move-object v10, v9

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 612
    move-object v10, v5

    const/4 v11, 0x0

    aget-object v10, v10, v11

    move-object v11, v9

    move-object v12, v3

    invoke-static {v10, v11, v12}, Lgnu/expr/ClassExp;->loadSuperStaticLink(Lgnu/expr/Expression;Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    .line 614
    :cond_0
    const/4 v10, 0x0

    move-object v1, v10

    .line 615
    const/4 v10, 0x1

    move v8, v10

    .line 635
    .end local v9    # "mclass":Lgnu/bytecode/ClassType;
    :cond_1
    :goto_1
    move-object v10, v0

    move-object v11, v5

    move v12, v8

    move-object v13, v1

    move-object v14, v3

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/expr/PrimProcedure;->compileArgs([Lgnu/expr/Expression;ILgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    .line 637
    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v10, :cond_7

    .line 639
    move-object v10, v6

    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/PrimProcedure;->opcode()I

    move-result v11

    move-object v12, v5

    array-length v12, v12

    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    invoke-virtual {v10, v11, v12, v13}, Lgnu/bytecode/CodeAttr;->emitPrimop(IILgnu/bytecode/Type;)V

    .line 640
    move-object v10, v4

    move-object v11, v3

    move-object v12, v7

    invoke-virtual {v10, v11, v12}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 647
    :goto_2
    return-void

    .line 609
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v10}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v10

    goto :goto_0

    .line 619
    :cond_3
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/PrimProcedure;->opcode()I

    move-result v10

    const/16 v11, 0xb7

    if-ne v10, v11, :cond_6

    move-object v10, v0

    iget-char v10, v10, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v11, 0x50

    if-ne v10, v11, :cond_6

    const-string/jumbo v10, "<init>"

    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v11}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 622
    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v10, :cond_5

    const/4 v10, 0x0

    :goto_3
    move-object v9, v10

    .line 623
    .restart local v9    # "mclass":Lgnu/bytecode/ClassType;
    move-object v10, v9

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 625
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 627
    move-object v10, v6

    move-object v11, v6

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 628
    const/4 v10, 0x0

    move-object v1, v10

    .line 629
    const/4 v10, 0x1

    move v8, v10

    .line 631
    :cond_4
    goto :goto_1

    .line 622
    .end local v9    # "mclass":Lgnu/bytecode/ClassType;
    :cond_5
    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v10}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v10

    goto :goto_3

    .line 632
    :cond_6
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v10}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 633
    const/4 v10, 0x1

    move v8, v10

    goto/16 :goto_1

    .line 644
    :cond_7
    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object v12, v4

    move-object v13, v2

    invoke-virtual {v13}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v13

    move-object v14, v0

    iget v14, v14, Lgnu/expr/PrimProcedure;->op_code:I

    move-object v15, v7

    invoke-static/range {v10 .. v15}, Lgnu/expr/PrimProcedure;->compileInvoke(Lgnu/expr/Compilation;Lgnu/bytecode/Method;Lgnu/expr/Target;ZILgnu/bytecode/Type;)V

    goto :goto_2
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 18

    .prologue
    .line 557
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object/from16 v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object/from16 v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v12, v2

    invoke-virtual {v12}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v12

    move-object v4, v12

    .line 558
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v12, :cond_0

    const/4 v12, 0x0

    :goto_0
    move-object v5, v12

    .line 559
    .local v5, "mclass":Lgnu/bytecode/ClassType;
    move-object v12, v1

    invoke-virtual {v12}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v12

    move-object v6, v12

    .line 560
    .local v6, "args":[Lgnu/expr/Expression;
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 562
    move-object v12, v1

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lgnu/expr/ApplyExp;->getFlag(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 575
    move-object v12, v6

    array-length v12, v12

    move v7, v12

    .line 576
    .local v7, "nargs":I
    move-object v12, v2

    invoke-virtual {v12}, Lgnu/expr/Compilation;->letStart()V

    .line 577
    move v12, v7

    new-array v12, v12, [Lgnu/expr/Expression;

    move-object v8, v12

    .line 578
    .local v8, "xargs":[Lgnu/expr/Expression;
    move-object v12, v8

    const/4 v13, 0x0

    move-object v14, v6

    const/4 v15, 0x0

    aget-object v14, v14, v15

    aput-object v14, v12, v13

    .line 579
    const/4 v12, 0x1

    move v9, v12

    .local v9, "i":I
    :goto_1
    move v12, v9

    move v13, v7

    if-ge v12, v13, :cond_1

    .line 581
    move-object v12, v6

    move v13, v9

    aget-object v12, v12, v13

    move-object v10, v12

    .line 582
    .local v10, "argi":Lgnu/expr/Expression;
    move-object v12, v2

    const/4 v13, 0x0

    move-object v14, v10

    invoke-virtual {v14}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v14

    move-object v15, v10

    invoke-virtual {v12, v13, v14, v15}, Lgnu/expr/Compilation;->letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;

    move-result-object v12

    move-object v11, v12

    .line 583
    .local v11, "d":Lgnu/expr/Declaration;
    move-object v12, v11

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 584
    move-object v12, v8

    move v13, v9

    new-instance v14, Lgnu/expr/ReferenceExp;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v11

    invoke-direct/range {v15 .. v16}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v14, v12, v13

    .line 579
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 558
    .end local v5    # "mclass":Lgnu/bytecode/ClassType;
    .end local v6    # "args":[Lgnu/expr/Expression;
    .end local v7    # "nargs":I
    .end local v8    # "xargs":[Lgnu/expr/Expression;
    .end local v9    # "i":I
    .end local v10    # "argi":Lgnu/expr/Expression;
    .end local v11    # "d":Lgnu/expr/Declaration;
    :cond_0
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v12}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v12

    goto :goto_0

    .line 586
    .restart local v5    # "mclass":Lgnu/bytecode/ClassType;
    .restart local v6    # "args":[Lgnu/expr/Expression;
    .restart local v7    # "nargs":I
    .restart local v8    # "xargs":[Lgnu/expr/Expression;
    .restart local v9    # "i":I
    :cond_1
    move-object v12, v2

    invoke-virtual {v12}, Lgnu/expr/Compilation;->letEnter()V

    .line 587
    move-object v12, v2

    new-instance v13, Lgnu/expr/ApplyExp;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object/from16 v16, v8

    invoke-direct/range {v14 .. v16}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v12, v13}, Lgnu/expr/Compilation;->letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;

    move-result-object v12

    move-object v9, v12

    .line 588
    .local v9, "let":Lgnu/expr/LetExp;
    move-object v12, v9

    move-object v13, v2

    move-object v14, v3

    invoke-virtual {v12, v13, v14}, Lgnu/expr/LetExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 589
    .line 599
    .end local v7    # "nargs":I
    .end local v8    # "xargs":[Lgnu/expr/Expression;
    .end local v9    # "let":Lgnu/expr/LetExp;
    :goto_2
    return-void

    .line 591
    :cond_2
    move-object v12, v4

    move-object v13, v5

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 592
    move-object v12, v4

    move-object v13, v5

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 594
    :cond_3
    move-object v12, v0

    move-object v13, v6

    array-length v13, v13

    invoke-static {v12, v13}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 595
    .local v7, "arg_error":Ljava/lang/String;
    move-object v12, v7

    if-eqz v12, :cond_4

    .line 596
    move-object v12, v2

    const/16 v13, 0x65

    move-object v14, v7

    invoke-virtual {v12, v13, v14}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 598
    :cond_4
    move-object v12, v0

    move-object v13, v0

    invoke-virtual {v13}, Lgnu/expr/PrimProcedure;->getStaticFlag()Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x0

    :goto_3
    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-virtual/range {v12 .. v16}, Lgnu/expr/PrimProcedure;->compile(Lgnu/bytecode/Type;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 599
    goto :goto_2

    .line 598
    :cond_5
    move-object v13, v5

    goto :goto_3
.end method

.method public getMethod()Lgnu/bytecode/Method;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1015
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v2, v0

    invoke-super {v2}, Lgnu/mapping/MethodProc;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1016
    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1017
    move-object v2, v1

    move-object v0, v2

    .line 1020
    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    :goto_0
    return-object v0

    .line 1018
    .restart local v0    # "this":Lgnu/expr/PrimProcedure;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/PrimProcedure;->getVerboseName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1019
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/PrimProcedure;->setName(Ljava/lang/String;)V

    .line 1020
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public getParameterType(I)Lgnu/bytecode/Type;
    .locals 8

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move v1, p1

    .local v1, "index":I
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 736
    move v5, v1

    if-nez v5, :cond_1

    .line 737
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    :goto_0
    move-object v0, v5

    .line 752
    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    :goto_1
    return-object v0

    .line 737
    .restart local v0    # "this":Lgnu/expr/PrimProcedure;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v5}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v5

    goto :goto_0

    .line 739
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 741
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v5, v5

    move v2, v5

    .line 742
    .local v2, "lenTypes":I
    move v5, v1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    .line 743
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move v6, v1

    aget-object v5, v5, v6

    move-object v0, v5

    goto :goto_1

    .line 744
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v5

    move v3, v5

    .line 745
    .local v3, "varArgs":Z
    move v5, v1

    move v6, v2

    if-ge v5, v6, :cond_4

    move v5, v3

    if-nez v5, :cond_4

    .line 746
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move v6, v1

    aget-object v5, v5, v6

    move-object v0, v5

    goto :goto_1

    .line 748
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    move-object v4, v5

    .line 749
    .local v4, "restType":Lgnu/bytecode/Type;
    move-object v5, v4

    instance-of v5, v5, Lgnu/bytecode/ArrayType;

    if-eqz v5, :cond_5

    .line 750
    move-object v5, v4

    check-cast v5, Lgnu/bytecode/ArrayType;

    invoke-virtual {v5}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v5

    move-object v0, v5

    goto :goto_1

    .line 752
    :cond_5
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v0, v5

    goto :goto_1
.end method

.method public final getParameterTypes()[Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return-object v0
.end method

.method public getReturnType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return-object v0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return-object v0
.end method

.method public final getStaticFlag()Z
    .locals 2

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return v0

    .restart local v0    # "this":Lgnu/expr/PrimProcedure;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVerboseName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1025
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v1, v3

    .line 1026
    .local v1, "buf":Ljava/lang/StringBuffer;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v3, :cond_1

    .line 1028
    move-object v3, v1

    const-string/jumbo v4, "<op "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1029
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/expr/PrimProcedure;->op_code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1030
    move-object v3, v1

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1038
    :goto_0
    move-object v3, v1

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1039
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 1041
    move v3, v2

    if-lez v3, :cond_0

    .line 1042
    move-object v3, v1

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1043
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1039
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1034
    .end local v2    # "i":I
    :cond_1
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1035
    move-object v3, v1

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1036
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    goto :goto_0

    .line 1045
    .restart local v2    # "i":I
    :cond_2
    move-object v3, v1

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1046
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return-object v0
.end method

.method public isApplicable([Lgnu/bytecode/Type;)I
    .locals 11

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "argTypes":[Lgnu/bytecode/Type;
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v5

    move v2, v5

    .line 81
    .local v2, "app":I
    move-object v5, v1

    array-length v5, v5

    move v3, v5

    .line 82
    .local v3, "nargs":I
    move v5, v2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v5}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v5

    const/16 v6, 0x80

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    move v5, v3

    if-lez v5, :cond_0

    move-object v5, v1

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    instance-of v5, v5, Lgnu/bytecode/ArrayType;

    if-eqz v5, :cond_0

    .line 88
    move v5, v3

    new-array v5, v5, [Lgnu/bytecode/Type;

    move-object v4, v5

    .line 89
    .local v4, "tmp":[Lgnu/bytecode/Type;
    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    move-object v5, v4

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v7, v1

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    check-cast v7, Lgnu/bytecode/ArrayType;

    invoke-virtual {v7}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v7

    aput-object v7, v5, v6

    .line 91
    move-object v5, v0

    move-object v6, v4

    invoke-super {v5, v6}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v5

    move v0, v5

    .line 93
    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    .end local v4    # "tmp":[Lgnu/bytecode/Type;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/expr/PrimProcedure;
    :cond_0
    move v5, v2

    move v0, v5

    goto :goto_0
.end method

.method public final isConstructor()Z
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/PrimProcedure;->opcode()I

    move-result v1

    const/16 v2, 0xb7

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-char v1, v1, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v2, 0x50

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return v0

    .restart local v0    # "this":Lgnu/expr/PrimProcedure;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSideEffectFree()Z
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/expr/PrimProcedure;->sideEffectFree:Z

    move v0, v1

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return v0
.end method

.method public isSpecial()Z
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, v0

    iget-char v1, v1, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return v0

    .restart local v0    # "this":Lgnu/expr/PrimProcedure;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 5

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v0

    sget-object v3, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return v0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    move-object v3, v4

    .line 138
    .local v3, "args":[Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return v0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 10

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    move-object v4, v5

    .line 144
    .local v4, "args":[Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return v0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 11

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "ctx":Lgnu/mapping/CallContext;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v3

    aput-object v9, v7, v8

    move-object v5, v6

    .line 150
    .local v5, "args":[Ljava/lang/Object;
    move-object v6, v0

    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return v0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 12

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object/from16 v4, p4

    .local v4, "arg4":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "ctx":Lgnu/mapping/CallContext;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    move-object v10, v4

    aput-object v10, v8, v9

    move-object v6, v7

    .line 157
    .local v6, "args":[Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v6

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return v0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 23

    .prologue
    .line 162
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/expr/PrimProcedure;
    move-object/from16 v3, p1

    .local v3, "args":[Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "ctx":Lgnu/mapping/CallContext;
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v5, v19

    .line 163
    .local v5, "nargs":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v19

    move/from16 v6, v19

    .line 164
    .local v6, "takesVarArgs":Z
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/PrimProcedure;->minArgs()I

    move-result v19

    move/from16 v7, v19

    .line 165
    .local v7, "fixArgs":I
    move/from16 v19, v5

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 166
    const/high16 v19, -0xf0000

    move/from16 v20, v7

    or-int v19, v19, v20

    move/from16 v2, v19

    .line 235
    .end local v2    # "this":Lgnu/expr/PrimProcedure;
    :goto_0
    return v2

    .line 167
    .restart local v2    # "this":Lgnu/expr/PrimProcedure;
    :cond_0
    move/from16 v19, v6

    if-nez v19, :cond_1

    move/from16 v19, v5

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 168
    const/high16 v19, -0xe0000

    move/from16 v20, v7

    or-int v19, v19, v20

    move/from16 v2, v19

    goto :goto_0

    .line 169
    :cond_1
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v8, v19

    .line 170
    .local v8, "paramCount":I
    const/16 v19, 0x0

    move-object/from16 v9, v19

    .line 171
    .local v9, "elementType":Lgnu/bytecode/Type;
    const/16 v19, 0x0

    move-object/from16 v10, v19

    .line 172
    .local v10, "restArray":[Ljava/lang/Object;
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v19

    if-nez v19, :cond_2

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v19

    if-eqz v19, :cond_8

    :cond_2
    const/16 v19, 0x1

    :goto_1
    move/from16 v11, v19

    .line 173
    .local v11, "extraCount":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v19

    move/from16 v12, v19

    .line 174
    .local v12, "takesContext":Z
    move/from16 v19, v8

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v13, v19

    .line 175
    .local v13, "rargs":[Ljava/lang/Object;
    move/from16 v19, v12

    if-eqz v19, :cond_3

    .line 176
    move-object/from16 v19, v13

    add-int/lit8 v8, v8, -0x1

    move/from16 v20, v8

    move-object/from16 v21, v4

    aput-object v21, v19, v20

    .line 178
    :cond_3
    move/from16 v19, v6

    if-eqz v19, :cond_5

    .line 180
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    move/from16 v20, v8

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    aget-object v19, v19, v20

    move-object/from16 v15, v19

    .line 181
    .local v15, "restType":Lgnu/bytecode/Type;
    move-object/from16 v19, v15

    sget-object v20, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_4

    move-object/from16 v19, v15

    sget-object v20, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 183
    :cond_4
    move-object/from16 v19, v13

    move/from16 v20, v8

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v21, v3

    move/from16 v22, v7

    invoke-static/range {v21 .. v22}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v21

    aput-object v21, v19, v20

    .line 184
    move/from16 v19, v7

    move/from16 v5, v19

    .line 185
    sget-object v19, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v9, v19

    .line 197
    .end local v15    # "restType":Lgnu/bytecode/Type;
    :cond_5
    :goto_2
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 198
    move-object/from16 v19, v3

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v14, v19

    .line 212
    :goto_3
    move/from16 v19, v11

    move/from16 v15, v19

    .local v15, "i":I
    :goto_4
    move/from16 v19, v15

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 214
    move-object/from16 v19, v3

    move/from16 v20, v15

    aget-object v19, v19, v20

    move-object/from16 v16, v19

    .line 215
    .local v16, "arg":Ljava/lang/Object;
    move/from16 v19, v15

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    move/from16 v20, v15

    move/from16 v21, v11

    sub-int v20, v20, v21

    aget-object v19, v19, v20

    :goto_5
    move-object/from16 v17, v19

    .line 216
    .local v17, "type":Lgnu/bytecode/Type;
    move-object/from16 v19, v17

    sget-object v20, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 220
    move-object/from16 v19, v17

    move-object/from16 v20, v16

    :try_start_0
    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    move-object/from16 v16, v19

    .line 225
    .line 227
    :cond_6
    move/from16 v19, v15

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 228
    move-object/from16 v19, v13

    move/from16 v20, v15

    move/from16 v21, v11

    sub-int v20, v20, v21

    move-object/from16 v21, v16

    aput-object v21, v19, v20

    .line 212
    :cond_7
    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 172
    .end local v11    # "extraCount":I
    .end local v12    # "takesContext":Z
    .end local v13    # "rargs":[Ljava/lang/Object;
    .end local v15    # "i":I
    .end local v16    # "arg":Ljava/lang/Object;
    .end local v17    # "type":Lgnu/bytecode/Type;
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 189
    .restart local v11    # "extraCount":I
    .restart local v12    # "takesContext":Z
    .restart local v13    # "rargs":[Ljava/lang/Object;
    .local v15, "restType":Lgnu/bytecode/Type;
    :cond_9
    move-object/from16 v19, v15

    check-cast v19, Lgnu/bytecode/ArrayType;

    move-object/from16 v16, v19

    .line 190
    .local v16, "restArrayType":Lgnu/bytecode/ArrayType;
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v19

    move-object/from16 v9, v19

    .line 191
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v17, v19

    .line 192
    .local v17, "elementClass":Ljava/lang/Class;
    move-object/from16 v19, v17

    move/from16 v20, v5

    move/from16 v21, v7

    sub-int v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/Object;

    check-cast v19, [Ljava/lang/Object;

    move-object/from16 v10, v19

    .line 194
    move-object/from16 v19, v13

    move/from16 v20, v8

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v21, v10

    aput-object v21, v19, v20

    goto/16 :goto_2

    .line 199
    .end local v15    # "restType":Lgnu/bytecode/Type;
    .end local v16    # "restArrayType":Lgnu/bytecode/ArrayType;
    .end local v17    # "elementClass":Ljava/lang/Class;
    :cond_a
    move/from16 v19, v11

    if-eqz v19, :cond_b

    .line 203
    move-object/from16 v19, v2

    :try_start_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v19

    move-object/from16 v20, v3

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/ClassType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    move-object/from16 v14, v19

    .line 208
    .local v14, "extraArg":Ljava/lang/Object;
    goto/16 :goto_3

    .line 205
    .end local v14    # "extraArg":Ljava/lang/Object;
    :catch_0
    move-exception v19

    move-object/from16 v15, v19

    .line 207
    .local v15, "ex":Ljava/lang/ClassCastException;
    const v19, -0xbffff

    move/from16 v2, v19

    goto/16 :goto_0

    .line 211
    .end local v15    # "ex":Ljava/lang/ClassCastException;
    :cond_b
    const/16 v19, 0x0

    move-object/from16 v14, v19

    .restart local v14    # "extraArg":Ljava/lang/Object;
    goto/16 :goto_3

    .line 215
    .end local v14    # "extraArg":Ljava/lang/Object;
    .local v15, "i":I
    .local v16, "arg":Ljava/lang/Object;
    :cond_c
    move-object/from16 v19, v9

    goto/16 :goto_5

    .line 222
    .local v17, "type":Lgnu/bytecode/Type;
    :catch_1
    move-exception v19

    move-object/from16 v18, v19

    .line 224
    .local v18, "ex":Ljava/lang/ClassCastException;
    const/high16 v19, -0xc0000

    move/from16 v20, v15

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    or-int v19, v19, v20

    move/from16 v2, v19

    goto/16 :goto_0

    .line 229
    .end local v18    # "ex":Ljava/lang/ClassCastException;
    :cond_d
    move-object/from16 v19, v10

    if-eqz v19, :cond_7

    .line 230
    move-object/from16 v19, v10

    move/from16 v20, v15

    move/from16 v21, v7

    sub-int v20, v20, v21

    move-object/from16 v21, v16

    aput-object v21, v19, v20

    goto/16 :goto_6

    .line 232
    .end local v16    # "arg":Ljava/lang/Object;
    .end local v17    # "type":Lgnu/bytecode/Type;
    :cond_e
    move-object/from16 v19, v4

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 233
    move-object/from16 v19, v4

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 234
    move-object/from16 v19, v4

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 235
    const/16 v19, 0x0

    move/from16 v2, v19

    goto/16 :goto_0
.end method

.method public numArgs()I
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v2, v2

    move v1, v2

    .line 123
    .local v1, "num":I
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 125
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    add-int/lit8 v1, v1, -0x1

    .line 127
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/16 v3, -0x1000

    add-int/lit16 v2, v2, -0x1000

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return v0

    .restart local v0    # "this":Lgnu/expr/PrimProcedure;
    :cond_2
    move v2, v1

    move v3, v1

    const/16 v4, 0xc

    shl-int/lit8 v3, v3, 0xc

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public final opcode()I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/PrimProcedure;->op_code:I

    move v0, v1

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 1061
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "ps":Ljava/io/PrintWriter;
    move-object v2, v1

    const-string/jumbo v3, "#<primitive procedure "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1062
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/PrimProcedure;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    move-object v2, v1

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1064
    return-void
.end method

.method public setReturnType(Lgnu/bytecode/Type;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, p1

    .local v1, "retType":Lgnu/bytecode/Type;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    return-void
.end method

.method public setSideEffectFree()V
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/expr/PrimProcedure;->sideEffectFree:Z

    .line 53
    return-void
.end method

.method public takesContext()Z
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-static {v1}, Lgnu/expr/PrimProcedure;->takesContext(Lgnu/bytecode/Method;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return v0

    .restart local v0    # "this":Lgnu/expr/PrimProcedure;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public takesTarget()Z
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v1, v0

    iget-char v1, v1, Lgnu/expr/PrimProcedure;->mode:C

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return v0

    .restart local v0    # "this":Lgnu/expr/PrimProcedure;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public takesVarArgs()Z
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v2, :cond_3

    .line 60
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v2

    const/16 v3, 0x80

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 61
    const/4 v2, 0x1

    move v0, v2

    .line 65
    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    .local v1, "name":Ljava/lang/String;
    :goto_0
    return v0

    .line 62
    .end local v1    # "name":Ljava/lang/String;
    .restart local v0    # "this":Lgnu/expr/PrimProcedure;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 63
    .restart local v1    # "name":Ljava/lang/String;
    move-object v2, v1

    const-string/jumbo v3, "$V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    const-string/jumbo v3, "$V$X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 65
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1052
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PrimProcedure;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v1, v2

    .line 1053
    .local v1, "buf":Ljava/lang/StringBuffer;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    if-nez v3, :cond_0

    const-string/jumbo v3, "<unknown>"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1054
    move-object v2, v1

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1055
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/PrimProcedure;->getVerboseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1056
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/PrimProcedure;
    return-object v0

    .line 1053
    .restart local v0    # "this":Lgnu/expr/PrimProcedure;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
