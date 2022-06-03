.class public Lgnu/kawa/functions/CompileArith;
.super Ljava/lang/Object;
.source "CompileArith.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static $Mn:Lgnu/kawa/functions/CompileArith;

.field public static $Pl:Lgnu/kawa/functions/CompileArith;


# instance fields
.field op:I

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 14
    new-instance v0, Lgnu/kawa/functions/CompileArith;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/functions/CompileArith;->$Pl:Lgnu/kawa/functions/CompileArith;

    .line 15
    new-instance v0, Lgnu/kawa/functions/CompileArith;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/functions/CompileArith;->$Mn:Lgnu/kawa/functions/CompileArith;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 5

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileArith;
    move-object v1, p1

    .local v1, "proc":Ljava/lang/Object;
    move v2, p2

    .local v2, "op":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/mapping/Procedure;

    iput-object v4, v3, Lgnu/kawa/functions/CompileArith;->proc:Lgnu/mapping/Procedure;

    .line 20
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/kawa/functions/CompileArith;->op:I

    .line 21
    return-void
.end method

.method static adjustReturnKind(II)I
    .locals 4

    .prologue
    .line 445
    move v0, p0

    .local v0, "rkind":I
    move v1, p1

    .local v1, "op":I
    move v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    move v2, v1

    const/4 v3, 0x7

    if-gt v2, v3, :cond_0

    move v2, v0

    if-lez v2, :cond_0

    .line 447
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 464
    :cond_0
    :goto_0
    :pswitch_0
    move v2, v0

    move v0, v2

    .end local v0    # "rkind":I
    return v0

    .line 450
    .restart local v0    # "rkind":I
    :pswitch_1
    move v2, v0

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 451
    const/4 v2, 0x6

    move v0, v2

    goto :goto_0

    .line 454
    :pswitch_2
    move v2, v0

    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    move v2, v0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 456
    const/16 v2, 0x8

    move v0, v2

    goto :goto_0

    .line 459
    :pswitch_3
    move v2, v0

    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    .line 460
    const/4 v2, 0x4

    move v0, v2

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static appropriateIntConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "args":[Lgnu/expr/Expression;
    move v1, p1

    .local v1, "iarg":I
    move-object v2, p2

    .local v2, "visitor":Lgnu/expr/InlineCalls;
    move-object v4, v2

    move-object v5, v0

    move v6, v1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lgnu/expr/InlineCalls;->fixIntValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;

    move-result-object v4

    move-object v3, v4

    .line 41
    .local v3, "exp":Lgnu/expr/Expression;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 43
    move-object v4, v0

    move v5, v1

    move-object v6, v3

    aput-object v6, v4, v5

    .line 44
    const/4 v4, 0x1

    move v0, v4

    .line 46
    .end local v0    # "args":[Lgnu/expr/Expression;
    :goto_0
    return v0

    .restart local v0    # "args":[Lgnu/expr/Expression;
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public static appropriateLongConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "args":[Lgnu/expr/Expression;
    move v1, p1

    .local v1, "iarg":I
    move-object v2, p2

    .local v2, "visitor":Lgnu/expr/InlineCalls;
    move-object v4, v2

    move-object v5, v0

    move v6, v1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lgnu/expr/InlineCalls;->fixLongValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;

    move-result-object v4

    move-object v3, v4

    .line 52
    .local v3, "exp":Lgnu/expr/Expression;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 54
    move-object v4, v0

    move v5, v1

    move-object v6, v3

    aput-object v6, v4, v5

    .line 55
    const/4 v4, 0x1

    move v0, v4

    .line 57
    .end local v0    # "args":[Lgnu/expr/Expression;
    :goto_0
    return v0

    .restart local v0    # "args":[Lgnu/expr/Expression;
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public static forBitwise(Ljava/lang/Object;)Lgnu/kawa/functions/CompileArith;
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "proc":Ljava/lang/Object;
    new-instance v1, Lgnu/kawa/functions/CompileArith;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    move-object v4, v0

    check-cast v4, Lgnu/kawa/functions/BitwiseOp;

    iget v4, v4, Lgnu/kawa/functions/BitwiseOp;->op:I

    invoke-direct {v2, v3, v4}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    move-object v0, v1

    .end local v0    # "proc":Ljava/lang/Object;
    return-object v0
.end method

.method public static forDiv(Ljava/lang/Object;)Lgnu/kawa/functions/CompileArith;
    .locals 6

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "proc":Ljava/lang/Object;
    new-instance v1, Lgnu/kawa/functions/CompileArith;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    move-object v4, v0

    check-cast v4, Lgnu/kawa/functions/DivideOp;

    iget v4, v4, Lgnu/kawa/functions/DivideOp;->op:I

    invoke-direct {v2, v3, v4}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    move-object v0, v1

    .end local v0    # "proc":Ljava/lang/Object;
    return-object v0
.end method

.method public static forMul(Ljava/lang/Object;)Lgnu/kawa/functions/CompileArith;
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "proc":Ljava/lang/Object;
    new-instance v1, Lgnu/kawa/functions/CompileArith;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    move-object v0, v1

    .end local v0    # "proc":Ljava/lang/Object;
    return-object v0
.end method

.method public static getReturnKind(III)I
    .locals 5

    .prologue
    .line 411
    move v0, p0

    .local v0, "kind1":I
    move v1, p1

    .local v1, "kind2":I
    move v2, p2

    .local v2, "op":I
    move v3, v2

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0xc

    if-gt v3, v4, :cond_0

    .line 412
    move v3, v0

    move v0, v3

    .line 413
    .end local v0    # "kind1":I
    :goto_0
    return v0

    .restart local v0    # "kind1":I
    :cond_0
    move v3, v0

    if-lez v3, :cond_1

    move v3, v0

    move v4, v1

    if-le v3, v4, :cond_2

    move v3, v1

    if-lez v3, :cond_2

    :cond_1
    move v3, v0

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1
.end method

.method public static pairwise(Lgnu/mapping/Procedure;Lgnu/expr/Expression;[Lgnu/expr/Expression;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 15

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v1, p1

    .local v1, "rproc":Lgnu/expr/Expression;
    move-object/from16 v2, p2

    .local v2, "args":[Lgnu/expr/Expression;
    move-object/from16 v3, p3

    .local v3, "visitor":Lgnu/expr/InlineCalls;
    move-object v10, v2

    array-length v10, v10

    move v4, v10

    .line 589
    .local v4, "len":I
    move-object v10, v2

    const/4 v11, 0x0

    aget-object v10, v10, v11

    move-object v5, v10

    .line 590
    .local v5, "prev":Lgnu/expr/Expression;
    const/4 v10, 0x1

    move v6, v10

    .local v6, "i":I
    :goto_0
    move v10, v6

    move v11, v4

    if-ge v10, v11, :cond_1

    .line 592
    const/4 v10, 0x2

    new-array v10, v10, [Lgnu/expr/Expression;

    move-object v7, v10

    .line 593
    .local v7, "args2":[Lgnu/expr/Expression;
    move-object v10, v7

    const/4 v11, 0x0

    move-object v12, v5

    aput-object v12, v10, v11

    .line 594
    move-object v10, v7

    const/4 v11, 0x1

    move-object v12, v2

    move v13, v6

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    .line 595
    new-instance v10, Lgnu/expr/ApplyExp;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v1

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v8, v10

    .line 596
    .local v8, "next":Lgnu/expr/ApplyExp;
    move-object v10, v3

    move-object v11, v8

    const/4 v12, 0x0

    move-object v13, v0

    invoke-virtual {v10, v11, v12, v13}, Lgnu/expr/InlineCalls;->maybeInline(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v9, v10

    .line 597
    .local v9, "inlined":Lgnu/expr/Expression;
    move-object v10, v9

    if-eqz v10, :cond_0

    move-object v10, v9

    :goto_1
    move-object v5, v10

    .line 590
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 597
    :cond_0
    move-object v10, v8

    goto :goto_1

    .line 599
    .end local v7    # "args2":[Lgnu/expr/Expression;
    .end local v8    # "next":Lgnu/expr/ApplyExp;
    .end local v9    # "inlined":Lgnu/expr/Expression;
    :cond_1
    move-object v10, v5

    move-object v0, v10

    .end local v0    # "proc":Lgnu/mapping/Procedure;
    return-object v0
.end method

.method public static validateApplyAdd(Lgnu/kawa/functions/AddOp;Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 14

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "proc":Lgnu/kawa/functions/AddOp;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v2, p2

    .local v2, "visitor":Lgnu/expr/InlineCalls;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v9

    move-object v3, v9

    .line 470
    .local v3, "args":[Lgnu/expr/Expression;
    move-object v9, v3

    array-length v9, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    move-object v9, v0

    iget v9, v9, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    if-gez v9, :cond_5

    .line 472
    move-object v9, v3

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    move-object v4, v9

    .line 473
    .local v4, "type0":Lgnu/bytecode/Type;
    move-object v9, v4

    instance-of v9, v9, Lgnu/bytecode/PrimType;

    if-eqz v9, :cond_5

    .line 475
    move-object v9, v4

    invoke-virtual {v9}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v5, v9

    .line 476
    .local v5, "sig0":C
    const/4 v9, 0x0

    move-object v6, v9

    .line 477
    .local v6, "type":Lgnu/bytecode/Type;
    const/4 v9, 0x0

    move v7, v9

    .line 478
    .local v7, "opcode":I
    move v9, v5

    const/16 v10, 0x56

    if-eq v9, v10, :cond_0

    move v9, v5

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_0

    move v9, v5

    const/16 v10, 0x43

    if-ne v9, v10, :cond_1

    .line 502
    :cond_0
    :goto_0
    move-object v9, v6

    if-eqz v9, :cond_5

    .line 504
    move v9, v7

    move-object v10, v6

    invoke-static {v9, v10}, Lgnu/expr/PrimProcedure;->makeBuiltinUnary(ILgnu/bytecode/Type;)Lgnu/expr/PrimProcedure;

    move-result-object v9

    move-object v8, v9

    .line 506
    .local v8, "prim":Lgnu/expr/PrimProcedure;
    new-instance v9, Lgnu/expr/ApplyExp;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v8

    move-object v12, v3

    invoke-direct {v10, v11, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v0, v9

    .line 510
    .end local v0    # "proc":Lgnu/kawa/functions/AddOp;
    .end local v4    # "type0":Lgnu/bytecode/Type;
    .end local v5    # "sig0":C
    .end local v6    # "type":Lgnu/bytecode/Type;
    .end local v7    # "opcode":I
    .end local v8    # "prim":Lgnu/expr/PrimProcedure;
    :goto_1
    return-object v0

    .line 482
    .restart local v0    # "proc":Lgnu/kawa/functions/AddOp;
    .restart local v4    # "type0":Lgnu/bytecode/Type;
    .restart local v5    # "sig0":C
    .restart local v6    # "type":Lgnu/bytecode/Type;
    .restart local v7    # "opcode":I
    :cond_1
    move v9, v5

    const/16 v10, 0x44

    if-ne v9, v10, :cond_2

    .line 484
    const/16 v9, 0x77

    move v7, v9

    .line 485
    sget-object v9, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    move-object v6, v9

    goto :goto_0

    .line 487
    :cond_2
    move v9, v5

    const/16 v10, 0x46

    if-ne v9, v10, :cond_3

    .line 489
    const/16 v9, 0x76

    move v7, v9

    .line 490
    sget-object v9, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    move-object v6, v9

    goto :goto_0

    .line 492
    :cond_3
    move v9, v5

    const/16 v10, 0x4a

    if-ne v9, v10, :cond_4

    .line 494
    const/16 v9, 0x75

    move v7, v9

    .line 495
    sget-object v9, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    move-object v6, v9

    goto :goto_0

    .line 499
    :cond_4
    const/16 v9, 0x74

    move v7, v9

    .line 500
    sget-object v9, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    move-object v6, v9

    goto :goto_0

    .line 510
    .end local v4    # "type0":Lgnu/bytecode/Type;
    .end local v5    # "sig0":C
    .end local v6    # "type":Lgnu/bytecode/Type;
    .end local v7    # "opcode":I
    :cond_5
    move-object v9, v1

    move-object v0, v9

    goto :goto_1
.end method

.method public static validateApplyArithOp(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 15

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object/from16 v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v11, v3

    check-cast v11, Lgnu/kawa/functions/ArithOp;

    move-object v4, v11

    .line 64
    .local v4, "aproc":Lgnu/kawa/functions/ArithOp;
    move-object v11, v4

    iget v11, v11, Lgnu/kawa/functions/ArithOp;->op:I

    move v5, v11

    .line 65
    .local v5, "op":I
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 67
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v11

    move-object v6, v11

    .line 68
    .local v6, "args":[Lgnu/expr/Expression;
    move-object v11, v6

    array-length v11, v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_0

    .line 69
    move-object v11, v3

    move-object v12, v0

    invoke-virtual {v12}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v12

    move-object v13, v6

    move-object v14, v1

    invoke-static {v11, v12, v13, v14}, Lgnu/kawa/functions/CompileArith;->pairwise(Lgnu/mapping/Procedure;Lgnu/expr/Expression;[Lgnu/expr/Expression;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v0, v11

    .line 126
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v0

    .line 71
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :cond_0
    move-object v11, v0

    move-object v12, v3

    move-object v13, v1

    invoke-virtual {v11, v12, v13}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v7, v11

    .line 72
    .local v7, "folded":Lgnu/expr/Expression;
    move-object v11, v7

    move-object v12, v0

    if-eq v11, v12, :cond_1

    .line 73
    move-object v11, v7

    move-object v0, v11

    goto :goto_0

    .line 75
    :cond_1
    const/4 v11, 0x0

    move v8, v11

    .line 76
    .local v8, "rkind":I
    move-object v11, v6

    array-length v11, v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_2

    move-object v11, v6

    array-length v11, v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 78
    :cond_2
    move-object v11, v6

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    invoke-static {v11}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v11

    move v9, v11

    .line 79
    .local v9, "kind1":I
    move-object v11, v6

    array-length v11, v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_9

    move v11, v5

    const/16 v12, 0x9

    if-lt v11, v12, :cond_3

    move v11, v5

    const/16 v12, 0xc

    if-le v11, v12, :cond_9

    .line 83
    :cond_3
    move-object v11, v6

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    invoke-static {v11}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v11

    move v10, v11

    .line 84
    .local v10, "kind2":I
    move v11, v9

    move v12, v10

    move v13, v5

    invoke-static {v11, v12, v13}, Lgnu/kawa/functions/CompileArith;->getReturnKind(III)I

    move-result v11

    move v8, v11

    .line 85
    move v11, v8

    const/4 v12, 0x4

    if-ne v11, v12, :cond_4

    .line 87
    move v11, v9

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    move-object v11, v6

    const/4 v12, 0x1

    move-object v13, v1

    invoke-static {v11, v12, v13}, Lgnu/kawa/functions/CompileArith;->appropriateIntConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 88
    const/4 v11, 0x1

    move v8, v11

    .line 96
    .line 101
    .end local v10    # "kind2":I
    :cond_4
    :goto_1
    move v11, v8

    move v12, v5

    invoke-static {v11, v12}, Lgnu/kawa/functions/CompileArith;->adjustReturnKind(II)I

    move-result v11

    move v8, v11

    .line 102
    move-object v11, v0

    move v12, v8

    invoke-static {v12}, Lgnu/kawa/functions/Arithmetic;->kindType(I)Lgnu/bytecode/Type;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 107
    .end local v9    # "kind1":I
    :cond_5
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v11

    iget-boolean v11, v11, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v11, :cond_a

    .line 108
    move-object v11, v0

    move-object v0, v11

    goto :goto_0

    .line 89
    .restart local v9    # "kind1":I
    .restart local v10    # "kind2":I
    :cond_6
    move v11, v10

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    move-object v11, v6

    const/4 v12, 0x0

    move-object v13, v1

    invoke-static {v11, v12, v13}, Lgnu/kawa/functions/CompileArith;->appropriateIntConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 90
    const/4 v11, 0x1

    move v8, v11

    goto :goto_1

    .line 91
    :cond_7
    move v11, v9

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    move-object v11, v6

    const/4 v12, 0x1

    move-object v13, v1

    invoke-static {v11, v12, v13}, Lgnu/kawa/functions/CompileArith;->appropriateLongConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 92
    const/4 v11, 0x2

    move v8, v11

    goto :goto_1

    .line 93
    :cond_8
    move v11, v10

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    move-object v11, v6

    const/4 v12, 0x0

    move-object v13, v1

    invoke-static {v11, v12, v13}, Lgnu/kawa/functions/CompileArith;->appropriateLongConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 94
    const/4 v11, 0x2

    move v8, v11

    goto :goto_1

    .line 99
    .end local v10    # "kind2":I
    :cond_9
    move v11, v9

    move v8, v11

    goto :goto_1

    .line 110
    .end local v9    # "kind1":I
    :cond_a
    move v11, v5

    packed-switch v11, :pswitch_data_0

    .line 126
    :cond_b
    :pswitch_0
    move-object v11, v0

    move-object v0, v11

    goto/16 :goto_0

    .line 114
    :pswitch_1
    move-object v11, v3

    check-cast v11, Lgnu/kawa/functions/AddOp;

    move-object v12, v0

    move-object v13, v1

    invoke-static {v11, v12, v13}, Lgnu/kawa/functions/CompileArith;->validateApplyAdd(Lgnu/kawa/functions/AddOp;Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v0, v11

    goto/16 :goto_0

    .line 120
    :pswitch_2
    move-object v11, v3

    check-cast v11, Lgnu/kawa/functions/DivideOp;

    move-object v12, v0

    move-object v13, v1

    invoke-static {v11, v12, v13}, Lgnu/kawa/functions/CompileArith;->validateApplyDiv(Lgnu/kawa/functions/DivideOp;Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v0, v11

    goto/16 :goto_0

    .line 122
    :pswitch_3
    move v11, v8

    if-lez v11, :cond_b

    .line 123
    move-object v11, v0

    move v12, v8

    move-object v13, v1

    invoke-static {v11, v12, v13}, Lgnu/kawa/functions/CompileArith;->validateApplyNot(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v0, v11

    goto/16 :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static validateApplyDiv(Lgnu/kawa/functions/DivideOp;Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "proc":Lgnu/kawa/functions/DivideOp;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "visitor":Lgnu/expr/InlineCalls;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    move-object v3, v4

    .line 517
    .local v3, "args":[Lgnu/expr/Expression;
    move-object v4, v3

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 519
    const/4 v4, 0x2

    new-array v4, v4, [Lgnu/expr/Expression;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v7

    invoke-static {v7}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    move-object v3, v4

    .line 520
    new-instance v4, Lgnu/expr/ApplyExp;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v1, v4

    .line 522
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "proc":Lgnu/kawa/functions/DivideOp;
    return-object v0
.end method

.method public static validateApplyNot(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 11

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move v1, p1

    .local v1, "kind":I
    move-object v2, p2

    .local v2, "visitor":Lgnu/expr/InlineCalls;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 529
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v5

    move-object v3, v5

    .line 530
    .local v3, "arg":Lgnu/expr/Expression;
    move v5, v1

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    move v5, v1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 532
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [Lgnu/expr/Expression;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v8

    invoke-static {v8}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v4, v5

    .line 533
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v5, v2

    new-instance v6, Lgnu/expr/ApplyExp;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    sget-object v8, Lgnu/kawa/functions/BitwiseOp;->xor:Lgnu/kawa/functions/BitwiseOp;

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v0, v5

    .line 546
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    .end local v3    # "arg":Lgnu/expr/Expression;
    .end local v4    # "args":[Lgnu/expr/Expression;
    :goto_0
    return-object v0

    .line 536
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    .restart local v3    # "arg":Lgnu/expr/Expression;
    :cond_1
    move v5, v1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 537
    const-string/jumbo v5, "gnu.math.BitOps"

    move-object v4, v5

    .line 542
    .local v4, "cname":Ljava/lang/String;
    :goto_1
    move-object v5, v4

    if-eqz v5, :cond_4

    .line 543
    new-instance v5, Lgnu/expr/ApplyExp;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    const-string/jumbo v8, "not"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v0, v5

    goto :goto_0

    .line 538
    .end local v4    # "cname":Ljava/lang/String;
    :cond_2
    move v5, v1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 539
    const-string/jumbo v5, "java.meth.BigInteger"

    move-object v4, v5

    .restart local v4    # "cname":Ljava/lang/String;
    goto :goto_1

    .line 541
    .end local v4    # "cname":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    move-object v4, v5

    .restart local v4    # "cname":Ljava/lang/String;
    goto :goto_1

    .line 546
    .end local v3    # "arg":Lgnu/expr/Expression;
    .end local v4    # "cname":Ljava/lang/String;
    :cond_4
    move-object v5, v0

    move-object v0, v5

    goto :goto_0
.end method

.method public static validateApplyNumberCompare(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 553
    move-object v5, v0

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 554
    .local v4, "folded":Lgnu/expr/Expression;
    move-object v5, v4

    move-object v6, v0

    if-eq v5, v6, :cond_0

    .line 555
    move-object v5, v4

    move-object v0, v5

    .line 556
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v0

    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :cond_0
    move-object v5, v0

    move-object v0, v5

    goto :goto_0
.end method

.method public static validateApplyNumberPredicate(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 12

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v7, v3

    check-cast v7, Lgnu/kawa/functions/NumberPredicate;

    move-object v4, v7

    .line 606
    .local v4, "nproc":Lgnu/kawa/functions/NumberPredicate;
    move-object v7, v4

    iget v7, v7, Lgnu/kawa/functions/NumberPredicate;->op:I

    move v5, v7

    .line 607
    .local v5, "op":I
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    move-object v6, v7

    .line 608
    .local v6, "args":[Lgnu/expr/Expression;
    move-object v7, v6

    const/4 v8, 0x0

    move-object v9, v1

    move-object v10, v6

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v9, v10, v11}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v9

    aput-object v9, v7, v8

    .line 609
    move-object v7, v0

    sget-object v8, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {v7, v8}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 610
    move-object v7, v0

    move-object v0, v7

    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    return-object v0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 27

    .prologue
    .line 132
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/functions/CompileArith;
    move-object/from16 v3, p1

    .local v3, "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v4, p2

    .local v4, "comp":Lgnu/expr/Compilation;
    move-object/from16 v5, p3

    .local v5, "target":Lgnu/expr/Target;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v20

    move-object/from16 v6, v20

    .line 133
    .local v6, "args":[Lgnu/expr/Expression;
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v7, v20

    .line 134
    .local v7, "len":I
    move/from16 v20, v7

    if-nez v20, :cond_0

    .line 136
    move-object/from16 v20, v4

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/functions/CompileArith;->proc:Lgnu/mapping/Procedure;

    move-object/from16 v21, v0

    check-cast v21, Lgnu/kawa/functions/ArithOp;

    invoke-virtual/range {v21 .. v21}, Lgnu/kawa/functions/ArithOp;->defaultResult()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v5

    invoke-virtual/range {v20 .. v22}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 137
    .line 289
    :goto_0
    return-void

    .line 139
    :cond_0
    move/from16 v20, v7

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/expr/IgnoreTarget;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 142
    :cond_1
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    invoke-static/range {v20 .. v22}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 143
    goto :goto_0

    .line 147
    :cond_2
    move-object/from16 v20, v6

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v20

    move/from16 v8, v20

    .line 148
    .local v8, "kind1":I
    move-object/from16 v20, v6

    const/16 v21, 0x1

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v20

    move/from16 v9, v20

    .line 149
    .local v9, "kind2":I
    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lgnu/kawa/functions/CompileArith;->getReturnKind(III)I

    move-result v20

    move/from16 v10, v20

    .line 150
    .local v10, "kind":I
    move/from16 v20, v10

    invoke-static/range {v20 .. v20}, Lgnu/kawa/functions/Arithmetic;->kindType(I)Lgnu/bytecode/Type;

    move-result-object v20

    move-object/from16 v11, v20

    .line 151
    .local v11, "type":Lgnu/bytecode/Type;
    move/from16 v20, v10

    if-eqz v20, :cond_3

    move/from16 v20, v7

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 153
    :cond_3
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    invoke-static/range {v20 .. v22}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 154
    goto :goto_0

    .line 156
    :cond_4
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v20

    move-object/from16 v12, v20

    .line 157
    .local v12, "targetType":Lgnu/bytecode/Type;
    move-object/from16 v20, v12

    invoke-static/range {v20 .. v20}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v20

    move/from16 v13, v20

    .line 159
    .local v13, "tkind":I
    move/from16 v20, v13

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    move/from16 v20, v13

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    :cond_5
    move/from16 v20, v10

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_9

    move/from16 v20, v10

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_9

    .line 162
    move/from16 v20, v13

    move/from16 v10, v20

    .line 163
    move/from16 v20, v13

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    sget-object v20, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    :goto_1
    move-object/from16 v14, v20

    .line 185
    .local v14, "wtype":Lgnu/bytecode/Type;
    :goto_2
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_6

    .line 187
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/functions/CompileArith;->proc:Lgnu/mapping/Procedure;

    move-object/from16 v20, v0

    check-cast v20, Lgnu/kawa/functions/DivideOp;

    move-object/from16 v15, v20

    .line 188
    .local v15, "dproc":Lgnu/kawa/functions/DivideOp;
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    move/from16 v20, v10

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    move/from16 v20, v10

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    move/from16 v20, v10

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_10

    .line 191
    .line 216
    .end local v15    # "dproc":Lgnu/kawa/functions/DivideOp;
    :cond_6
    :goto_3
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    move/from16 v20, v10

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_19

    move/from16 v20, v10

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    move/from16 v20, v10

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    .line 221
    move/from16 v20, v10

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    move/from16 v20, v10

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_18

    .line 225
    :cond_7
    move/from16 v20, v10

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    sget-object v20, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    :goto_4
    move-object/from16 v16, v20

    .line 228
    .local v16, "ctype":Lgnu/kawa/lispexpr/LangObjType;
    move-object/from16 v20, v16

    move-object/from16 v14, v20

    .line 229
    move-object/from16 v20, v16

    const-string/jumbo v21, "divide"

    const/16 v22, 0x2

    invoke-virtual/range {v20 .. v22}, Lgnu/kawa/lispexpr/LangObjType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v20

    move-object/from16 v15, v20

    .line 236
    .end local v16    # "ctype":Lgnu/kawa/lispexpr/LangObjType;
    .local v15, "meth":Lgnu/bytecode/Method;
    :goto_5
    move-object/from16 v20, v14

    invoke-static/range {v20 .. v20}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v20

    move-object/from16 v16, v20

    .line 237
    .local v16, "wtarget":Lgnu/expr/Target;
    move-object/from16 v20, v6

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v21, v4

    move-object/from16 v22, v16

    invoke-virtual/range {v20 .. v22}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 238
    move-object/from16 v20, v6

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v21, v4

    move-object/from16 v22, v16

    invoke-virtual/range {v20 .. v22}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 239
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v20

    move-object/from16 v21, v15

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 240
    .line 288
    .end local v15    # "meth":Lgnu/bytecode/Method;
    .end local v16    # "wtarget":Lgnu/expr/Target;
    :goto_6
    move-object/from16 v20, v5

    move-object/from16 v21, v4

    move-object/from16 v22, v14

    invoke-virtual/range {v20 .. v22}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 289
    goto/16 :goto_0

    .line 163
    .end local v14    # "wtype":Lgnu/bytecode/Type;
    :cond_8
    sget-object v20, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    goto/16 :goto_1

    .line 166
    :cond_9
    move/from16 v20, v13

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    move/from16 v20, v13

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    :cond_a
    move/from16 v20, v10

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    move/from16 v20, v10

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_c

    .line 170
    move/from16 v20, v13

    move/from16 v10, v20

    .line 171
    move/from16 v20, v13

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    sget-object v20, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    :goto_7
    move-object/from16 v14, v20

    .restart local v14    # "wtype":Lgnu/bytecode/Type;
    goto/16 :goto_2

    .end local v14    # "wtype":Lgnu/bytecode/Type;
    :cond_b
    sget-object v20, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    goto :goto_7

    .line 175
    :cond_c
    move/from16 v20, v10

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 176
    sget-object v20, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    move-object/from16 v14, v20

    .restart local v14    # "wtype":Lgnu/bytecode/Type;
    goto/16 :goto_2

    .line 177
    .end local v14    # "wtype":Lgnu/bytecode/Type;
    :cond_d
    move/from16 v20, v10

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    move/from16 v20, v10

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 179
    :cond_e
    const/16 v20, 0x8

    move/from16 v10, v20

    .line 180
    sget-object v20, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    move-object/from16 v14, v20

    .restart local v14    # "wtype":Lgnu/bytecode/Type;
    goto/16 :goto_2

    .line 183
    .end local v14    # "wtype":Lgnu/bytecode/Type;
    :cond_f
    move-object/from16 v20, v11

    move-object/from16 v14, v20

    .restart local v14    # "wtype":Lgnu/bytecode/Type;
    goto/16 :goto_2

    .line 192
    .local v15, "dproc":Lgnu/kawa/functions/DivideOp;
    :cond_10
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    move/from16 v20, v10

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_11

    move/from16 v20, v10

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    :cond_11
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    move/from16 v20, v10

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 195
    :cond_12
    const/16 v20, 0x8

    move/from16 v10, v20

    goto/16 :goto_3

    .line 196
    :cond_13
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_14

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    move/from16 v20, v10

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_15

    :cond_14
    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    move/from16 v20, v10

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    move/from16 v20, v10

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    move/from16 v20, v10

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 204
    goto/16 :goto_3

    .line 205
    :cond_15
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    move/from16 v20, v10

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 209
    goto/16 :goto_3

    .line 212
    :cond_16
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    invoke-static/range {v20 .. v22}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 213
    goto/16 :goto_0

    .line 225
    .end local v15    # "dproc":Lgnu/kawa/functions/DivideOp;
    :cond_17
    sget-object v20, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    goto/16 :goto_4

    .line 233
    :cond_18
    sget-object v20, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    move-object/from16 v14, v20

    .line 234
    sget-object v20, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    const-string/jumbo v21, "make"

    const/16 v22, 0x2

    invoke-virtual/range {v20 .. v22}, Lgnu/kawa/lispexpr/LangObjType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v20

    move-object/from16 v15, v20

    .local v15, "meth":Lgnu/bytecode/Method;
    goto/16 :goto_5

    .line 241
    .end local v15    # "meth":Lgnu/bytecode/Method;
    :cond_19
    move/from16 v20, v10

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0xd

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0xf

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1b

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_1b

    .line 247
    :cond_1a
    move-object/from16 v20, v2

    move-object/from16 v21, v6

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v22, v6

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move/from16 v23, v8

    move/from16 v24, v9

    move-object/from16 v25, v4

    invoke-virtual/range {v20 .. v25}, Lgnu/kawa/functions/CompileArith;->compileIntNum(Lgnu/expr/Expression;Lgnu/expr/Expression;IILgnu/expr/Compilation;)Z

    move-result v20

    goto/16 :goto_6

    .line 249
    :cond_1b
    move/from16 v20, v10

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1d

    move/from16 v20, v10

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1d

    move/from16 v20, v10

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1c

    move/from16 v20, v10

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_22

    :cond_1c
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1d

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0xd

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_22

    .line 255
    :cond_1d
    move-object/from16 v20, v14

    invoke-static/range {v20 .. v20}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v20

    move-object/from16 v15, v20

    .line 257
    .local v15, "wtarget":Lgnu/expr/Target;
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v20

    move-object/from16 v16, v20

    .line 258
    .local v16, "code":Lgnu/bytecode/CodeAttr;
    const/16 v20, 0x0

    move/from16 v17, v20

    .local v17, "i":I
    :goto_8
    move/from16 v20, v17

    move/from16 v21, v7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_21

    .line 260
    move/from16 v20, v17

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1e

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_1e

    .line 261
    sget-object v20, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-static/range {v20 .. v20}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v20

    move-object/from16 v15, v20

    .line 262
    :cond_1e
    move-object/from16 v20, v6

    move/from16 v21, v17

    aget-object v20, v20, v21

    move-object/from16 v21, v4

    move-object/from16 v22, v15

    invoke-virtual/range {v20 .. v22}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 263
    move/from16 v20, v17

    if-nez v20, :cond_1f

    .line 264
    .line 258
    :goto_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 265
    :cond_1f
    move/from16 v20, v10

    packed-switch v20, :pswitch_data_0

    :pswitch_0
    goto :goto_9

    .line 271
    :pswitch_1
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_20

    .line 273
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const/16 v22, 0x0

    move-object/from16 v23, v14

    aput-object v23, v21, v22

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const/16 v22, 0x1

    sget-object v23, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v23, v21, v22

    move-object/from16 v18, v20

    .line 274
    .local v18, "margs":[Lgnu/bytecode/Type;
    const-string/jumbo v20, "gnu.math.IntNum"

    invoke-static/range {v20 .. v20}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v20

    const-string/jumbo v21, "shift"

    move-object/from16 v22, v18

    invoke-virtual/range {v20 .. v22}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v20

    move-object/from16 v19, v20

    .line 275
    .local v19, "method":Lgnu/bytecode/Method;
    move-object/from16 v20, v16

    move-object/from16 v21, v19

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 276
    goto :goto_9

    .line 278
    .end local v18    # "margs":[Lgnu/bytecode/Type;
    .end local v19    # "method":Lgnu/bytecode/Method;
    :cond_20
    move-object/from16 v20, v16

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/kawa/functions/CompileArith;->primitiveOpcode()I

    move-result v21

    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v22

    check-cast v22, Lgnu/bytecode/PrimType;

    invoke-virtual/range {v20 .. v22}, Lgnu/bytecode/CodeAttr;->emitBinop(ILgnu/bytecode/Type;)V

    goto :goto_9

    .line 282
    :cond_21
    goto/16 :goto_6

    .line 285
    .end local v15    # "wtarget":Lgnu/expr/Target;
    .end local v16    # "code":Lgnu/bytecode/CodeAttr;
    .end local v17    # "i":I
    :cond_22
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    invoke-static/range {v20 .. v22}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 286
    goto/16 :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public compileIntNum(Lgnu/expr/Expression;Lgnu/expr/Expression;IILgnu/expr/Compilation;)Z
    .locals 25

    .prologue
    .line 295
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/functions/CompileArith;
    move-object/from16 v3, p1

    .local v3, "arg1":Lgnu/expr/Expression;
    move-object/from16 v4, p2

    .local v4, "arg2":Lgnu/expr/Expression;
    move/from16 v5, p3

    .local v5, "kind1":I
    move/from16 v6, p4

    .local v6, "kind2":I
    move-object/from16 v7, p5

    .local v7, "comp":Lgnu/expr/Compilation;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 297
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v8, v18

    .line 300
    .local v8, "val":Ljava/lang/Object;
    move/from16 v18, v6

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_1

    .line 302
    move-object/from16 v18, v8

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    move-wide/from16 v9, v18

    .line 303
    .local v9, "lval":J
    move-wide/from16 v18, v9

    const-wide/32 v20, -0x80000000

    cmp-long v18, v18, v20

    if-lez v18, :cond_0

    move-wide/from16 v18, v9

    const-wide/32 v20, 0x7fffffff

    cmp-long v18, v18, v20

    if-gtz v18, :cond_0

    const/16 v18, 0x1

    :goto_0
    move/from16 v11, v18

    .line 316
    .local v11, "negateOk":Z
    :goto_1
    move/from16 v18, v11

    if-eqz v18, :cond_3

    .line 317
    sget-object v18, Lgnu/kawa/functions/CompileArith;->$Pl:Lgnu/kawa/functions/CompileArith;

    move-object/from16 v19, v3

    move-wide/from16 v20, v9

    move-wide/from16 v0, v20

    neg-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v20

    move/from16 v21, v5

    const/16 v22, 0x1

    move-object/from16 v23, v7

    invoke-virtual/range {v18 .. v23}, Lgnu/kawa/functions/CompileArith;->compileIntNum(Lgnu/expr/Expression;Lgnu/expr/Expression;IILgnu/expr/Compilation;)Z

    move-result v18

    move/from16 v2, v18

    .line 406
    .end local v2    # "this":Lgnu/kawa/functions/CompileArith;
    .end local v8    # "val":Ljava/lang/Object;
    .end local v9    # "lval":J
    .end local v11    # "negateOk":Z
    :goto_2
    return v2

    .line 303
    .restart local v2    # "this":Lgnu/kawa/functions/CompileArith;
    .restart local v8    # "val":Ljava/lang/Object;
    .restart local v9    # "lval":J
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 305
    .end local v9    # "lval":J
    :cond_1
    move-object/from16 v18, v8

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/math/IntNum;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 307
    move-object/from16 v18, v8

    check-cast v18, Lgnu/math/IntNum;

    move-object/from16 v12, v18

    .line 308
    .local v12, "ival":Lgnu/math/IntNum;
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v18

    move-wide/from16 v9, v18

    .line 309
    .restart local v9    # "lval":J
    move-object/from16 v18, v12

    const-wide/32 v19, -0x7fffffff

    const-wide/32 v21, 0x7fffffff

    invoke-virtual/range {v18 .. v22}, Lgnu/math/IntNum;->inRange(JJ)Z

    move-result v18

    move/from16 v11, v18

    .line 310
    .restart local v11    # "negateOk":Z
    goto :goto_1

    .line 313
    .end local v9    # "lval":J
    .end local v11    # "negateOk":Z
    .end local v12    # "ival":Lgnu/math/IntNum;
    :cond_2
    const/16 v18, 0x0

    move/from16 v11, v18

    .line 314
    .restart local v11    # "negateOk":Z
    const-wide/16 v18, 0x0

    move-wide/from16 v9, v18

    .restart local v9    # "lval":J
    goto :goto_1

    .line 322
    .end local v8    # "val":Ljava/lang/Object;
    .end local v9    # "lval":J
    .end local v11    # "negateOk":Z
    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    :cond_4
    const/16 v18, 0x1

    :goto_3
    move/from16 v9, v18

    .line 325
    .local v9, "addOrMul":Z
    move/from16 v18, v9

    if-eqz v18, :cond_e

    .line 327
    move-object/from16 v18, v3

    invoke-static/range {v18 .. v18}, Lgnu/expr/InlineCalls;->checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 328
    const/16 v18, 0x1

    move/from16 v5, v18

    .line 329
    :cond_5
    move-object/from16 v18, v4

    invoke-static/range {v18 .. v18}, Lgnu/expr/InlineCalls;->checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_6

    .line 330
    const/16 v18, 0x1

    move/from16 v6, v18

    .line 331
    :cond_6
    move/from16 v18, v5

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    move/from16 v18, v6

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    const/16 v18, 0x1

    :goto_4
    move/from16 v8, v18

    .line 332
    .local v8, "swap":Z
    move/from16 v18, v8

    if-eqz v18, :cond_a

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Expression;->side_effects()Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Expression;->side_effects()Z

    move-result v18

    if-nez v18, :cond_a

    .line 333
    :cond_7
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v3

    move/from16 v21, v6

    move/from16 v22, v5

    move-object/from16 v23, v7

    invoke-virtual/range {v18 .. v23}, Lgnu/kawa/functions/CompileArith;->compileIntNum(Lgnu/expr/Expression;Lgnu/expr/Expression;IILgnu/expr/Compilation;)Z

    move-result v18

    move/from16 v2, v18

    goto/16 :goto_2

    .line 322
    .end local v8    # "swap":Z
    .end local v9    # "addOrMul":Z
    :cond_8
    const/16 v18, 0x0

    goto :goto_3

    .line 331
    .restart local v9    # "addOrMul":Z
    :cond_9
    const/16 v18, 0x0

    goto :goto_4

    .line 334
    .restart local v8    # "swap":Z
    :cond_a
    move/from16 v18, v5

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    sget-object v18, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    :goto_5
    move-object/from16 v10, v18

    .line 335
    .local v10, "type1":Lgnu/bytecode/Type;
    move/from16 v18, v6

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    sget-object v18, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    :goto_6
    move-object/from16 v11, v18

    .line 348
    .local v11, "type2":Lgnu/bytecode/Type;
    :goto_7
    move-object/from16 v18, v3

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    invoke-virtual/range {v18 .. v20}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 349
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move-object/from16 v20, v11

    invoke-virtual/range {v18 .. v20}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 350
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v18

    move-object/from16 v13, v18

    .line 351
    .local v13, "code":Lgnu/bytecode/CodeAttr;
    move/from16 v18, v8

    if-eqz v18, :cond_b

    .line 353
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 354
    sget-object v18, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    move-object/from16 v10, v18

    .line 355
    sget-object v18, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    move-object/from16 v11, v18

    .line 357
    :cond_b
    const/16 v18, 0x0

    move-object/from16 v14, v18

    .line 358
    .local v14, "mname":Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v15, v18

    .line 359
    .local v15, "argTypes":[Lgnu/bytecode/Type;
    sget-object v18, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    move-object/from16 v16, v18

    .line 360
    .local v16, "mclass":Lgnu/bytecode/ObjectType;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 400
    :pswitch_0
    new-instance v18, Ljava/lang/Error;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Ljava/lang/Error;-><init>()V

    throw v18

    .line 334
    .end local v10    # "type1":Lgnu/bytecode/Type;
    .end local v11    # "type2":Lgnu/bytecode/Type;
    .end local v13    # "code":Lgnu/bytecode/CodeAttr;
    .end local v14    # "mname":Ljava/lang/String;
    .end local v15    # "argTypes":[Lgnu/bytecode/Type;
    .end local v16    # "mclass":Lgnu/bytecode/ObjectType;
    :cond_c
    sget-object v18, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_5

    .line 335
    .restart local v10    # "type1":Lgnu/bytecode/Type;
    :cond_d
    sget-object v18, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_6

    .line 337
    .end local v8    # "swap":Z
    .end local v10    # "type1":Lgnu/bytecode/Type;
    :cond_e
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v18, v0

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v18, v0

    const/16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_f

    .line 339
    sget-object v18, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    move-object/from16 v10, v18

    .line 340
    .restart local v10    # "type1":Lgnu/bytecode/Type;
    sget-object v18, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object/from16 v11, v18

    .line 341
    .restart local v11    # "type2":Lgnu/bytecode/Type;
    const/16 v18, 0x0

    move/from16 v8, v18

    .restart local v8    # "swap":Z
    goto :goto_7

    .line 345
    .end local v8    # "swap":Z
    .end local v10    # "type1":Lgnu/bytecode/Type;
    .end local v11    # "type2":Lgnu/bytecode/Type;
    :cond_f
    sget-object v18, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v11, v19

    .restart local v11    # "type2":Lgnu/bytecode/Type;
    move-object/from16 v10, v18

    .line 346
    .restart local v10    # "type1":Lgnu/bytecode/Type;
    const/16 v18, 0x0

    move/from16 v8, v18

    .restart local v8    # "swap":Z
    goto/16 :goto_7

    .line 362
    .restart local v13    # "code":Lgnu/bytecode/CodeAttr;
    .restart local v14    # "mname":Ljava/lang/String;
    .restart local v15    # "argTypes":[Lgnu/bytecode/Type;
    .restart local v16    # "mclass":Lgnu/bytecode/ObjectType;
    :pswitch_1
    const-string/jumbo v18, "add"

    move-object/from16 v14, v18

    .line 402
    :cond_10
    :goto_8
    move-object/from16 v18, v15

    if-nez v18, :cond_11

    .line 403
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v18, v0

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x0

    move-object/from16 v21, v10

    aput-object v21, v19, v20

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x1

    move-object/from16 v21, v11

    aput-object v21, v19, v20

    move-object/from16 v15, v18

    .line 404
    :cond_11
    move-object/from16 v18, v16

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    invoke-virtual/range {v18 .. v20}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v18

    move-object/from16 v12, v18

    .line 405
    .local v12, "meth":Lgnu/bytecode/Method;
    move-object/from16 v18, v13

    move-object/from16 v19, v12

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 406
    const/16 v18, 0x1

    move/from16 v2, v18

    goto/16 :goto_2

    .line 363
    .end local v12    # "meth":Lgnu/bytecode/Method;
    :pswitch_2
    const-string/jumbo v18, "sub"

    move-object/from16 v14, v18

    goto :goto_8

    .line 364
    :pswitch_3
    const-string/jumbo v18, "times"

    move-object/from16 v14, v18

    goto :goto_8

    .line 366
    :pswitch_4
    const-string/jumbo v18, "and"

    move-object/from16 v14, v18

    .line 369
    :pswitch_5
    move-object/from16 v18, v14

    if-nez v18, :cond_12

    .line 370
    const-string/jumbo v18, "ior"

    move-object/from16 v14, v18

    .line 373
    :cond_12
    :pswitch_6
    move-object/from16 v18, v14

    if-nez v18, :cond_13

    .line 374
    const-string/jumbo v18, "xor"

    move-object/from16 v14, v18

    .line 375
    :cond_13
    const-string/jumbo v18, "gnu.math.BitOps"

    invoke-static/range {v18 .. v18}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v18

    move-object/from16 v16, v18

    .line 376
    goto :goto_8

    .line 382
    :pswitch_7
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v18, v0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    const-string/jumbo v18, "remainder"

    :goto_9
    move-object/from16 v14, v18

    .line 383
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/kawa/functions/CompileArith;->proc:Lgnu/mapping/Procedure;

    move-object/from16 v18, v0

    check-cast v18, Lgnu/kawa/functions/DivideOp;

    move-object/from16 v17, v18

    .line 384
    .local v17, "dproc":Lgnu/kawa/functions/DivideOp;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v18, v0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    move-object/from16 v18, v17

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 385
    const-string/jumbo v18, "modulo"

    move-object/from16 v14, v18

    goto/16 :goto_8

    .line 382
    .end local v17    # "dproc":Lgnu/kawa/functions/DivideOp;
    :cond_14
    const-string/jumbo v18, "quotient"

    goto :goto_9

    .line 386
    .restart local v17    # "dproc":Lgnu/kawa/functions/DivideOp;
    :cond_15
    move-object/from16 v18, v17

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    .line 388
    move-object/from16 v18, v13

    move-object/from16 v19, v17

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 389
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v18, v0

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x0

    move-object/from16 v21, v10

    aput-object v21, v19, v20

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x1

    move-object/from16 v21, v11

    aput-object v21, v19, v20

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x2

    sget-object v21, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v21, v19, v20

    move-object/from16 v15, v18

    goto/16 :goto_8

    .line 394
    .end local v17    # "dproc":Lgnu/kawa/functions/DivideOp;
    :pswitch_8
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move/from16 v18, v0

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    const-string/jumbo v18, "shiftLeft"

    :goto_a
    move-object/from16 v14, v18

    .line 395
    const-string/jumbo v18, "gnu.kawa.functions.BitwiseOp"

    invoke-static/range {v18 .. v18}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v18

    move-object/from16 v16, v18

    .line 396
    goto/16 :goto_8

    .line 394
    :cond_16
    const-string/jumbo v18, "shiftRight"

    goto :goto_a

    .line 398
    :pswitch_9
    const-string/jumbo v18, "shift"

    move-object/from16 v14, v18

    .line 399
    goto/16 :goto_8

    .line 360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getReturnKind([Lgnu/expr/Expression;)I
    .locals 10

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileArith;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move-object v8, v1

    array-length v8, v8

    move v2, v8

    .line 422
    .local v2, "len":I
    move v8, v2

    if-nez v8, :cond_0

    .line 423
    const/4 v8, 0x4

    move v0, v8

    .line 434
    .end local v0    # "this":Lgnu/kawa/functions/CompileArith;
    :goto_0
    return v0

    .line 424
    .restart local v0    # "this":Lgnu/kawa/functions/CompileArith;
    :cond_0
    sget-object v8, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v3, v8

    .line 425
    .local v3, "type":Lgnu/bytecode/Type;
    const/4 v8, 0x0

    move v4, v8

    .line 426
    .local v4, "kindr":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_1
    move v8, v5

    move v9, v2

    if-ge v8, v9, :cond_3

    .line 428
    move-object v8, v1

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 429
    .local v6, "arg":Lgnu/expr/Expression;
    move-object v8, v6

    invoke-virtual {v8}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v8

    move v7, v8

    .line 431
    .local v7, "kind":I
    move v8, v5

    if-eqz v8, :cond_1

    move v8, v7

    if-eqz v8, :cond_1

    move v8, v7

    move v9, v4

    if-le v8, v9, :cond_2

    .line 432
    :cond_1
    move v8, v7

    move v4, v8

    .line 426
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 434
    .end local v6    # "arg":Lgnu/expr/Expression;
    .end local v7    # "kind":I
    :cond_3
    move v8, v4

    move v0, v8

    goto :goto_0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 4

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileArith;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/functions/CompileArith;->getReturnKind([Lgnu/expr/Expression;)I

    move-result v2

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/functions/CompileArith;->op:I

    invoke-static {v2, v3}, Lgnu/kawa/functions/CompileArith;->adjustReturnKind(II)I

    move-result v2

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->kindType(I)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/CompileArith;
    return-object v0
.end method

.method public primitiveOpcode()I
    .locals 2

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileArith;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/functions/CompileArith;->op:I

    packed-switch v1, :pswitch_data_0

    .line 578
    :pswitch_0
    const/4 v1, -0x1

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/CompileArith;
    :goto_0
    return v0

    .line 563
    .restart local v0    # "this":Lgnu/kawa/functions/CompileArith;
    :pswitch_1
    const/16 v1, 0x60

    move v0, v1

    goto :goto_0

    .line 564
    :pswitch_2
    const/16 v1, 0x64

    move v0, v1

    goto :goto_0

    .line 565
    :pswitch_3
    const/16 v1, 0x68

    move v0, v1

    goto :goto_0

    .line 570
    :pswitch_4
    const/16 v1, 0x6c

    move v0, v1

    goto :goto_0

    .line 571
    :pswitch_5
    const/16 v1, 0x70

    move v0, v1

    goto :goto_0

    .line 572
    :pswitch_6
    const/16 v1, 0x78

    move v0, v1

    goto :goto_0

    .line 573
    :pswitch_7
    const/16 v1, 0x7a

    move v0, v1

    goto :goto_0

    .line 574
    :pswitch_8
    const/16 v1, 0x7c

    move v0, v1

    goto :goto_0

    .line 575
    :pswitch_9
    const/16 v1, 0x7e

    move v0, v1

    goto :goto_0

    .line 576
    :pswitch_a
    const/16 v1, 0x80

    move v0, v1

    goto :goto_0

    .line 577
    :pswitch_b
    const/16 v1, 0x82

    move v0, v1

    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
