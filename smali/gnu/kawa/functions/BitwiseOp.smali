.class public Lgnu/kawa/functions/BitwiseOp;
.super Lgnu/kawa/functions/ArithOp;
.source "BitwiseOp.java"


# static fields
.field public static final and:Lgnu/kawa/functions/BitwiseOp;

.field public static final ashift:Lgnu/kawa/functions/BitwiseOp;

.field public static final ashiftl:Lgnu/kawa/functions/BitwiseOp;

.field public static final ashiftr:Lgnu/kawa/functions/BitwiseOp;

.field public static final ior:Lgnu/kawa/functions/BitwiseOp;

.field public static final not:Lgnu/kawa/functions/BitwiseOp;

.field public static final xor:Lgnu/kawa/functions/BitwiseOp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "bitwise-and"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->and:Lgnu/kawa/functions/BitwiseOp;

    .line 15
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "bitwise-ior"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->ior:Lgnu/kawa/functions/BitwiseOp;

    .line 17
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "bitwise-xor"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->xor:Lgnu/kawa/functions/BitwiseOp;

    .line 19
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "bitwise-arithmetic-shift"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->ashift:Lgnu/kawa/functions/BitwiseOp;

    .line 21
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "bitwise-arithmetic-shift-left"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->ashiftl:Lgnu/kawa/functions/BitwiseOp;

    .line 23
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "bitwise-arithmetic-shift-right"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->ashiftr:Lgnu/kawa/functions/BitwiseOp;

    .line 25
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "bitwise-not"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->not:Lgnu/kawa/functions/BitwiseOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/BitwiseOp;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "op":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 31
    move-object v3, v0

    sget-object v4, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v5, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/functions/BitwiseOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    sget-object v3, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    move-object v4, v0

    const-string/jumbo v5, "*gnu.kawa.functions.CompileArith:forBitwise"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static checkNonNegativeShift(Lgnu/mapping/Procedure;I)I
    .locals 9

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "proc":Lgnu/mapping/Procedure;
    move v1, p1

    .local v1, "amount":I
    move v2, v1

    if-gez v2, :cond_0

    .line 121
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x2

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "non-negative integer"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "proc":Lgnu/mapping/Procedure;
    return v0
.end method

.method public static shiftLeft(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 5

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "value":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "count":I
    move-object v2, v0

    sget-object v3, Lgnu/kawa/functions/BitwiseOp;->ashiftl:Lgnu/kawa/functions/BitwiseOp;

    move v4, v1

    invoke-static {v3, v4}, Lgnu/kawa/functions/BitwiseOp;->checkNonNegativeShift(Lgnu/mapping/Procedure;I)I

    move-result v3

    invoke-static {v2, v3}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "value":Lgnu/math/IntNum;
    return-object v0
.end method

.method public static shiftRight(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 5

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "value":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "count":I
    move-object v2, v0

    sget-object v3, Lgnu/kawa/functions/BitwiseOp;->ashiftr:Lgnu/kawa/functions/BitwiseOp;

    move v4, v1

    invoke-static {v3, v4}, Lgnu/kawa/functions/BitwiseOp;->checkNonNegativeShift(Lgnu/mapping/Procedure;I)I

    move-result v3

    neg-int v3, v3

    invoke-static {v2, v3}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "value":Lgnu/math/IntNum;
    return-object v0
.end method


# virtual methods
.method public adjustResult(Lgnu/math/IntNum;I)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 46
    move-object v1, p0

    .local v1, "this":Lgnu/kawa/functions/BitwiseOp;
    move-object v2, p1

    .local v2, "value":Lgnu/math/IntNum;
    move v3, p2

    .local v3, "code":I
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 55
    move-object v4, v2

    move-object v1, v4

    .end local v1    # "this":Lgnu/kawa/functions/BitwiseOp;
    :goto_0
    return-object v1

    .line 49
    .restart local v1    # "this":Lgnu/kawa/functions/BitwiseOp;
    :pswitch_0
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/math/IntNum;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 51
    :pswitch_1
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 53
    :pswitch_2
    new-instance v4, Ljava/math/BigInteger;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-virtual {v6}, Lgnu/math/IntNum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/BitwiseOp;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    .line 63
    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v4

    move v2, v4

    .line 64
    .local v2, "code1":I
    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v4

    move-object v3, v4

    .line 65
    .local v3, "iarg1":Lgnu/math/IntNum;
    move-object v4, v0

    move-object v5, v3

    invoke-static {v5}, Lgnu/math/BitOps;->not(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v5

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/functions/BitwiseOp;->adjustResult(Lgnu/math/IntNum;I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 68
    .end local v0    # "this":Lgnu/kawa/functions/BitwiseOp;
    .end local v2    # "code1":I
    .end local v3    # "iarg1":Lgnu/math/IntNum;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/functions/BitwiseOp;
    :cond_0
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/functions/BitwiseOp;->defaultResult()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/functions/BitwiseOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/BitwiseOp;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v10, v1

    invoke-static {v10}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v10

    move v3, v10

    .line 74
    .local v3, "kind1":I
    move-object v10, v2

    invoke-static {v10}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v10

    move v4, v10

    .line 75
    .local v4, "kind2":I
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v11, 0x9

    if-lt v10, v11, :cond_0

    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v11, 0xc

    if-le v10, v11, :cond_1

    :cond_0
    move v10, v3

    if-lez v10, :cond_1

    move v10, v3

    move v11, v4

    if-le v10, v11, :cond_2

    move v10, v4

    if-lez v10, :cond_2

    :cond_1
    move v10, v3

    :goto_0
    move v5, v10

    .line 76
    .local v5, "kind":I
    move-object v10, v1

    invoke-static {v10}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v10

    move-object v6, v10

    .line 77
    .local v6, "iarg1":Lgnu/math/IntNum;
    move-object v10, v2

    invoke-static {v10}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v10

    move-object v7, v10

    .line 79
    .local v7, "iarg2":Lgnu/math/IntNum;
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/BitwiseOp;->op:I

    packed-switch v10, :pswitch_data_0

    .line 97
    :pswitch_0
    new-instance v10, Ljava/lang/Error;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/Error;-><init>()V

    throw v10

    .line 75
    .end local v5    # "kind":I
    .end local v6    # "iarg1":Lgnu/math/IntNum;
    .end local v7    # "iarg2":Lgnu/math/IntNum;
    :cond_2
    move v10, v4

    goto :goto_0

    .line 81
    .restart local v5    # "kind":I
    .restart local v6    # "iarg1":Lgnu/math/IntNum;
    .restart local v7    # "iarg2":Lgnu/math/IntNum;
    :pswitch_1
    move-object v10, v6

    move-object v11, v7

    invoke-static {v10, v11}, Lgnu/math/BitOps;->and(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v10

    move-object v8, v10

    .line 99
    .local v8, "result":Lgnu/math/IntNum;
    :goto_1
    move-object v10, v0

    move-object v11, v8

    move v12, v5

    invoke-virtual {v10, v11, v12}, Lgnu/kawa/functions/BitwiseOp;->adjustResult(Lgnu/math/IntNum;I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "this":Lgnu/kawa/functions/BitwiseOp;
    return-object v0

    .line 82
    .end local v8    # "result":Lgnu/math/IntNum;
    .restart local v0    # "this":Lgnu/kawa/functions/BitwiseOp;
    :pswitch_2
    move-object v10, v6

    move-object v11, v7

    invoke-static {v10, v11}, Lgnu/math/BitOps;->ior(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v10

    move-object v8, v10

    .restart local v8    # "result":Lgnu/math/IntNum;
    goto :goto_1

    .line 83
    .end local v8    # "result":Lgnu/math/IntNum;
    :pswitch_3
    move-object v10, v6

    move-object v11, v7

    invoke-static {v10, v11}, Lgnu/math/BitOps;->xor(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v10

    move-object v8, v10

    .restart local v8    # "result":Lgnu/math/IntNum;
    goto :goto_1

    .line 87
    .end local v8    # "result":Lgnu/math/IntNum;
    :pswitch_4
    move-object v10, v7

    invoke-virtual {v10}, Lgnu/math/IntNum;->intValue()I

    move-result v10

    move v9, v10

    .line 88
    .local v9, "amount":I
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v11, 0xb

    if-eq v10, v11, :cond_3

    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v11, 0xa

    if-ne v10, v11, :cond_4

    .line 90
    :cond_3
    move-object v10, v0

    move v11, v9

    invoke-static {v10, v11}, Lgnu/kawa/functions/BitwiseOp;->checkNonNegativeShift(Lgnu/mapping/Procedure;I)I

    move-result v10

    .line 91
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v11, 0xb

    if-ne v10, v11, :cond_4

    .line 92
    move v10, v9

    neg-int v10, v10

    move v9, v10

    .line 94
    :cond_4
    move-object v10, v6

    move v11, v9

    invoke-static {v10, v11}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v10

    move-object v8, v10

    .line 95
    .restart local v8    # "result":Lgnu/math/IntNum;
    goto :goto_1

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/BitwiseOp;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v5, v1

    array-length v5, v5

    move v2, v5

    .line 105
    .local v2, "alen":I
    move v5, v2

    if-nez v5, :cond_0

    .line 106
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/functions/BitwiseOp;->defaultResult()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .line 114
    .end local v0    # "this":Lgnu/kawa/functions/BitwiseOp;
    :goto_0
    return-object v0

    .line 107
    .restart local v0    # "this":Lgnu/kawa/functions/BitwiseOp;
    :cond_0
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 108
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lgnu/kawa/functions/BitwiseOp;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 111
    :cond_1
    move-object v5, v1

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v3, v5

    .line 112
    .local v3, "r":Ljava/lang/Object;
    const/4 v5, 0x1

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 113
    move-object v5, v0

    move-object v6, v3

    move-object v7, v1

    move v8, v4

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Lgnu/kawa/functions/BitwiseOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 112
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 114
    :cond_2
    move-object v5, v3

    move-object v0, v5

    goto :goto_0
.end method

.method public defaultResult()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/BitwiseOp;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 39
    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .line 41
    .end local v0    # "this":Lgnu/kawa/functions/BitwiseOp;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/functions/BitwiseOp;
    :cond_0
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public numArgs()I
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/BitwiseOp;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v2, 0xc

    if-gt v1, v2, :cond_0

    .line 139
    const/16 v1, 0x2002

    move v0, v1

    .line 142
    .end local v0    # "this":Lgnu/kawa/functions/BitwiseOp;
    :goto_0
    return v0

    .line 140
    .restart local v0    # "this":Lgnu/kawa/functions/BitwiseOp;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 141
    const/16 v1, 0x1001

    move v0, v1

    goto :goto_0

    .line 142
    :cond_1
    const/16 v1, -0x1000

    move v0, v1

    goto :goto_0
.end method
