.class public Lgnu/kawa/functions/AddOp;
.super Lgnu/kawa/functions/ArithOp;
.source "AddOp.java"


# static fields
.field public static final $Mn:Lgnu/kawa/functions/AddOp;

.field public static final $Pl:Lgnu/kawa/functions/AddOp;


# instance fields
.field plusOrMinus:I


# direct methods
.method public static $Mn(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v2

    move v1, v2

    .line 98
    .local v1, "code":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 119
    move-object v2, v0

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/Numeric;->neg()Lgnu/math/Numeric;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "arg1":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 101
    .restart local v0    # "arg1":Ljava/lang/Object;
    :pswitch_0
    new-instance v2, Ljava/lang/Integer;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v4

    neg-int v4, v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v2

    goto :goto_0

    .line 103
    :pswitch_1
    new-instance v2, Ljava/lang/Long;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v4

    neg-long v4, v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v2

    goto :goto_0

    .line 105
    :pswitch_2
    move-object v2, v0

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 107
    :pswitch_3
    move-object v2, v0

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v2}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 109
    :pswitch_4
    move-object v2, v0

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 111
    :pswitch_5
    move-object v2, v0

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v2

    invoke-static {v2}, Lgnu/math/RatNum;->neg(Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 113
    :pswitch_6
    new-instance v2, Ljava/lang/Float;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v4

    neg-float v4, v4

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    move-object v0, v2

    goto :goto_0

    .line 115
    :pswitch_7
    new-instance v2, Ljava/lang/Double;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v4

    neg-double v4, v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v2

    goto :goto_0

    .line 117
    :pswitch_8
    new-instance v2, Lgnu/math/DFloNum;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v4

    neg-double v4, v4

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v0, v2

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static $Mn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    const/4 v2, -0x1

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "arg1":Ljava/lang/Object;
    return-object v0
.end method

.method public static $Mn$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg3":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "rest":[Ljava/lang/Object;
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v7, v0

    move-object v8, v1

    invoke-static {v6, v7, v8}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lgnu/kawa/functions/AddOp;->applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "arg1":Ljava/lang/Object;
    return-object v0
.end method

.method public static $Pl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    const/4 v2, 0x1

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "arg1":Ljava/lang/Object;
    return-object v0
.end method

.method public static $Pl$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg3":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "rest":[Ljava/lang/Object;
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v7, v0

    move-object v8, v1

    invoke-static {v6, v7, v8}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lgnu/kawa/functions/AddOp;->applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "arg1":Ljava/lang/Object;
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 30
    new-instance v0, Lgnu/kawa/functions/AddOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "+"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/AddOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 31
    new-instance v0, Lgnu/kawa/functions/AddOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "-"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/AddOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/AddOp;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "plusOrMinus":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-direct {v4, v5, v6}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 16
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    .line 21
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    .line 22
    move v4, v2

    if-lez v4, :cond_1

    const-string/jumbo v4, "gnu.kawa.functions.CompileArith:$Pl"

    :goto_1
    move-object v3, v4

    .line 25
    .local v3, "compiler":Ljava/lang/String;
    sget-object v4, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 26
    move-object v4, v0

    sget-object v5, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v6, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/functions/AddOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    return-void

    .line 20
    .end local v3    # "compiler":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x2

    goto :goto_0

    .line 22
    :cond_1
    const-string/jumbo v4, "gnu.kawa.functions.CompileArith:$Mn"

    goto :goto_1
.end method

.method public static apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    .prologue
    .line 35
    move/from16 v2, p0

    .local v2, "plusOrMinus":I
    move-object/from16 v3, p1

    .local v3, "arg1":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "arg2":Ljava/lang/Object;
    move-object/from16 v26, v3

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v26

    move/from16 v5, v26

    .line 36
    .local v5, "code1":I
    move-object/from16 v26, v4

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v26

    move/from16 v6, v26

    .line 41
    .local v6, "code2":I
    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    move/from16 v26, v6

    :goto_0
    move/from16 v7, v26

    .line 42
    .local v7, "code":I
    move/from16 v26, v7

    packed-switch v26, :pswitch_data_0

    .line 79
    move-object/from16 v26, v3

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v26

    move-object/from16 v24, v26

    .line 80
    .local v24, "num1":Lgnu/math/Numeric;
    move-object/from16 v26, v4

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v26

    move-object/from16 v25, v26

    .line 81
    .local v25, "num2":Lgnu/math/Numeric;
    move-object/from16 v26, v24

    move-object/from16 v27, v25

    move/from16 v28, v2

    invoke-virtual/range {v26 .. v28}, Lgnu/math/Numeric;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v26

    move-object/from16 v2, v26

    .end local v2    # "plusOrMinus":I
    .end local v24    # "num1":Lgnu/math/Numeric;
    .end local v25    # "num2":Lgnu/math/Numeric;
    :goto_1
    return-object v2

    .line 41
    .end local v7    # "code":I
    .restart local v2    # "plusOrMinus":I
    :cond_0
    move/from16 v26, v5

    goto :goto_0

    .line 45
    .restart local v7    # "code":I
    :pswitch_0
    move-object/from16 v26, v3

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v26

    move/from16 v8, v26

    .line 46
    .local v8, "i1":I
    move-object/from16 v26, v4

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v26

    move/from16 v9, v26

    .line 47
    .local v9, "i2":I
    new-instance v26, Ljava/lang/Integer;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move/from16 v28, v2

    if-lez v28, :cond_1

    move/from16 v28, v8

    move/from16 v29, v9

    add-int v28, v28, v29

    :goto_2
    invoke-direct/range {v27 .. v28}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v2, v26

    goto :goto_1

    :cond_1
    move/from16 v28, v8

    move/from16 v29, v9

    sub-int v28, v28, v29

    goto :goto_2

    .line 49
    .end local v8    # "i1":I
    .end local v9    # "i2":I
    :pswitch_1
    move-object/from16 v26, v3

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v26

    move-wide/from16 v10, v26

    .line 50
    .local v10, "l1":J
    move-object/from16 v26, v4

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v26

    move-wide/from16 v12, v26

    .line 51
    .local v12, "l2":J
    new-instance v26, Ljava/lang/Long;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move/from16 v28, v2

    if-lez v28, :cond_2

    move-wide/from16 v28, v10

    move-wide/from16 v30, v12

    add-long v28, v28, v30

    :goto_3
    invoke-direct/range {v27 .. v29}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v2, v26

    goto :goto_1

    :cond_2
    move-wide/from16 v28, v10

    move-wide/from16 v30, v12

    sub-long v28, v28, v30

    goto :goto_3

    .line 53
    .end local v10    # "l1":J
    .end local v12    # "l2":J
    :pswitch_2
    move-object/from16 v26, v3

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v26

    move-object/from16 v14, v26

    .line 54
    .local v14, "bi1":Ljava/math/BigInteger;
    move-object/from16 v26, v4

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v26

    move-object/from16 v15, v26

    .line 55
    .local v15, "bi2":Ljava/math/BigInteger;
    move/from16 v26, v2

    if-lez v26, :cond_3

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    invoke-virtual/range {v26 .. v27}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v26

    :goto_4
    move-object/from16 v2, v26

    goto :goto_1

    :cond_3
    move-object/from16 v26, v14

    move-object/from16 v27, v15

    invoke-virtual/range {v26 .. v27}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v26

    goto :goto_4

    .line 57
    .end local v14    # "bi1":Ljava/math/BigInteger;
    .end local v15    # "bi2":Ljava/math/BigInteger;
    :pswitch_3
    move-object/from16 v26, v3

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v26

    move-object/from16 v27, v4

    invoke-static/range {v27 .. v27}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v27

    move/from16 v28, v2

    invoke-static/range {v26 .. v28}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v26

    move-object/from16 v2, v26

    goto/16 :goto_1

    .line 60
    :pswitch_4
    move-object/from16 v26, v3

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v26

    move-object/from16 v16, v26

    .line 61
    .local v16, "bd1":Ljava/math/BigDecimal;
    move-object/from16 v26, v4

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v26

    move-object/from16 v17, v26

    .line 62
    .local v17, "bd2":Ljava/math/BigDecimal;
    move/from16 v26, v2

    if-lez v26, :cond_4

    move-object/from16 v26, v16

    move-object/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v26

    :goto_5
    move-object/from16 v2, v26

    goto/16 :goto_1

    :cond_4
    move-object/from16 v26, v16

    move-object/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v26

    goto :goto_5

    .line 64
    .end local v16    # "bd1":Ljava/math/BigDecimal;
    .end local v17    # "bd2":Ljava/math/BigDecimal;
    :pswitch_5
    move-object/from16 v26, v3

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v26

    move-object/from16 v27, v4

    invoke-static/range {v27 .. v27}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v27

    move/from16 v28, v2

    invoke-static/range {v26 .. v28}, Lgnu/math/RatNum;->add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;

    move-result-object v26

    move-object/from16 v2, v26

    goto/16 :goto_1

    .line 67
    :pswitch_6
    move-object/from16 v26, v3

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v26

    move/from16 v18, v26

    .line 68
    .local v18, "f1":F
    move-object/from16 v26, v4

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v26

    move/from16 v19, v26

    .line 69
    .local v19, "f2":F
    new-instance v26, Ljava/lang/Float;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move/from16 v28, v2

    if-lez v28, :cond_5

    move/from16 v28, v18

    move/from16 v29, v19

    add-float v28, v28, v29

    :goto_6
    invoke-direct/range {v27 .. v28}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v2, v26

    goto/16 :goto_1

    :cond_5
    move/from16 v28, v18

    move/from16 v29, v19

    sub-float v28, v28, v29

    goto :goto_6

    .line 71
    .end local v18    # "f1":F
    .end local v19    # "f2":F
    :pswitch_7
    move-object/from16 v26, v3

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v20, v26

    .line 72
    .local v20, "d1":D
    move-object/from16 v26, v4

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v22, v26

    .line 73
    .local v22, "d2":D
    new-instance v26, Ljava/lang/Double;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move/from16 v28, v2

    if-lez v28, :cond_6

    move-wide/from16 v28, v20

    move-wide/from16 v30, v22

    add-double v28, v28, v30

    :goto_7
    invoke-direct/range {v27 .. v29}, Ljava/lang/Double;-><init>(D)V

    move-object/from16 v2, v26

    goto/16 :goto_1

    :cond_6
    move-wide/from16 v28, v20

    move-wide/from16 v30, v22

    sub-double v28, v28, v30

    goto :goto_7

    .line 75
    .end local v20    # "d1":D
    .end local v22    # "d2":D
    :pswitch_8
    move-object/from16 v26, v3

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v20, v26

    .line 76
    .restart local v20    # "d1":D
    move-object/from16 v26, v4

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v22, v26

    .line 77
    .restart local v22    # "d2":D
    new-instance v26, Lgnu/math/DFloNum;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move/from16 v28, v2

    if-lez v28, :cond_7

    move-wide/from16 v28, v20

    move-wide/from16 v30, v22

    add-double v28, v28, v30

    :goto_8
    invoke-direct/range {v27 .. v29}, Lgnu/math/DFloNum;-><init>(D)V

    move-object/from16 v2, v26

    goto/16 :goto_1

    :cond_7
    move-wide/from16 v28, v20

    move-wide/from16 v30, v22

    sub-double v28, v28, v30

    goto :goto_8

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 151
    move v0, p0

    .local v0, "plusOrMinus":I
    move-object v1, p1

    .local v1, "init":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .line 152
    .local v3, "len":I
    move-object v6, v1

    move-object v4, v6

    .line 153
    .local v4, "result":Ljava/lang/Object;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 154
    move v6, v0

    move-object v7, v4

    move-object v8, v2

    move v9, v5

    aget-object v8, v8, v9

    invoke-static {v6, v7, v8}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 153
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 155
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "plusOrMinus":I
    return-object v0
.end method

.method public static applyN(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 138
    move v0, p0

    .local v0, "plusOrMinus":I
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v5, v1

    array-length v5, v5

    move v2, v5

    .line 139
    .local v2, "len":I
    move v5, v2

    if-nez v5, :cond_0

    .line 140
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v5

    move-object v0, v5

    .line 146
    .end local v0    # "plusOrMinus":I
    :goto_0
    return-object v0

    .line 141
    .restart local v0    # "plusOrMinus":I
    :cond_0
    move-object v5, v1

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v3, v5

    .line 142
    .local v3, "result":Ljava/lang/Object;
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move v5, v0

    if-gez v5, :cond_1

    .line 143
    move-object v5, v3

    invoke-static {v5}, Lgnu/kawa/functions/AddOp;->$Mn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 144
    :cond_1
    const/4 v5, 0x1

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 145
    move v5, v0

    move-object v6, v3

    move-object v7, v1

    move v8, v4

    aget-object v7, v7, v8

    invoke-static {v5, v6, v7}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 144
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 146
    :cond_2
    move-object v5, v3

    move-object v0, v5

    goto :goto_0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/AddOp;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v0

    iget v2, v2, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/kawa/functions/AddOp;->applyN(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/AddOp;
    return-object v0
.end method
