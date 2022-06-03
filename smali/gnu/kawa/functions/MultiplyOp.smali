.class public Lgnu/kawa/functions/MultiplyOp;
.super Lgnu/kawa/functions/ArithOp;
.source "MultiplyOp.java"


# static fields
.field public static final $St:Lgnu/kawa/functions/MultiplyOp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    new-instance v0, Lgnu/kawa/functions/MultiplyOp;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "*"

    invoke-direct {v1, v2}, Lgnu/kawa/functions/MultiplyOp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/MultiplyOp;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 21
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v4, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/functions/MultiplyOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    sget-object v2, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    move-object v3, v0

    const-string/jumbo v4, "*gnu.kawa.functions.CompileArith:forMul"

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object v2, v0

    check-cast v2, Lgnu/math/Numeric;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "arg1":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    .prologue
    .line 38
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/functions/MultiplyOp;
    move-object/from16 v3, p1

    .local v3, "args":[Ljava/lang/Object;
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v4, v26

    .line 39
    .local v4, "len":I
    move/from16 v26, v4

    if-nez v26, :cond_0

    .line 40
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v26

    move-object/from16 v2, v26

    .line 99
    .end local v2    # "this":Lgnu/kawa/functions/MultiplyOp;
    :goto_0
    return-object v2

    .line 41
    .restart local v2    # "this":Lgnu/kawa/functions/MultiplyOp;
    :cond_0
    move-object/from16 v26, v3

    const/16 v27, 0x0

    aget-object v26, v26, v27

    check-cast v26, Ljava/lang/Number;

    move-object/from16 v5, v26

    .line 42
    .local v5, "result":Ljava/lang/Number;
    move-object/from16 v26, v5

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v26

    move/from16 v6, v26

    .line 43
    .local v6, "code":I
    const/16 v26, 0x1

    move/from16 v7, v26

    .local v7, "i":I
    :goto_1
    move/from16 v26, v7

    move/from16 v27, v4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    .line 45
    move-object/from16 v26, v3

    move/from16 v27, v7

    aget-object v26, v26, v27

    move-object/from16 v8, v26

    .line 46
    .local v8, "arg2":Ljava/lang/Object;
    move-object/from16 v26, v8

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v26

    move/from16 v9, v26

    .line 47
    .local v9, "code2":I
    move/from16 v26, v6

    move/from16 v27, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    move/from16 v26, v9

    :goto_2
    move/from16 v6, v26

    .line 49
    move/from16 v26, v6

    packed-switch v26, :pswitch_data_0

    .line 95
    move-object/from16 v26, v5

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v26

    move-object/from16 v27, v8

    invoke-static/range {v27 .. v27}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v26

    move-object/from16 v5, v26

    .line 43
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 47
    :cond_1
    move/from16 v26, v6

    goto :goto_2

    .line 52
    :pswitch_0
    move-object/from16 v26, v5

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v26

    move/from16 v10, v26

    .line 53
    .local v10, "i1":I
    move-object/from16 v26, v8

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v26

    move/from16 v11, v26

    .line 54
    .local v11, "i2":I
    new-instance v26, Ljava/lang/Integer;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move/from16 v28, v10

    move/from16 v29, v11

    mul-int v28, v28, v29

    invoke-direct/range {v27 .. v28}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v5, v26

    .line 55
    goto :goto_3

    .line 57
    .end local v10    # "i1":I
    .end local v11    # "i2":I
    :pswitch_1
    move-object/from16 v26, v5

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v26

    move-wide/from16 v12, v26

    .line 58
    .local v12, "l1":J
    move-object/from16 v26, v8

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v26

    move-wide/from16 v14, v26

    .line 59
    .local v14, "l2":J
    new-instance v26, Ljava/lang/Long;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move-wide/from16 v28, v12

    move-wide/from16 v30, v14

    mul-long v28, v28, v30

    invoke-direct/range {v27 .. v29}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v5, v26

    .line 60
    goto :goto_3

    .line 62
    .end local v12    # "l1":J
    .end local v14    # "l2":J
    :pswitch_2
    move-object/from16 v26, v5

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v26

    move-object/from16 v16, v26

    .line 63
    .local v16, "bi1":Ljava/math/BigInteger;
    move-object/from16 v26, v8

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v26

    move-object/from16 v17, v26

    .line 64
    .local v17, "bi2":Ljava/math/BigInteger;
    move-object/from16 v26, v16

    move-object/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v26

    move-object/from16 v5, v26

    .line 65
    goto :goto_3

    .line 67
    .end local v16    # "bi1":Ljava/math/BigInteger;
    .end local v17    # "bi2":Ljava/math/BigInteger;
    :pswitch_3
    move-object/from16 v26, v5

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v26

    move-object/from16 v27, v8

    invoke-static/range {v27 .. v27}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v26

    move-object/from16 v5, v26

    .line 69
    goto :goto_3

    .line 71
    :pswitch_4
    move-object/from16 v26, v5

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v26

    move-object/from16 v18, v26

    .line 72
    .local v18, "bd1":Ljava/math/BigDecimal;
    move-object/from16 v26, v8

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v26

    move-object/from16 v19, v26

    .line 73
    .local v19, "bd2":Ljava/math/BigDecimal;
    move-object/from16 v26, v18

    move-object/from16 v27, v19

    invoke-virtual/range {v26 .. v27}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v26

    move-object/from16 v5, v26

    .line 74
    goto/16 :goto_3

    .line 76
    .end local v18    # "bd1":Ljava/math/BigDecimal;
    .end local v19    # "bd2":Ljava/math/BigDecimal;
    :pswitch_5
    move-object/from16 v26, v5

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v26

    move-object/from16 v27, v8

    invoke-static/range {v27 .. v27}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v26

    move-object/from16 v5, v26

    .line 78
    goto/16 :goto_3

    .line 80
    :pswitch_6
    move-object/from16 v26, v5

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v26

    move/from16 v20, v26

    .line 81
    .local v20, "f1":F
    move-object/from16 v26, v8

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v26

    move/from16 v21, v26

    .line 82
    .local v21, "f2":F
    new-instance v26, Ljava/lang/Float;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move/from16 v28, v20

    move/from16 v29, v21

    mul-float v28, v28, v29

    invoke-direct/range {v27 .. v28}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v5, v26

    .line 83
    goto/16 :goto_3

    .line 85
    .end local v20    # "f1":F
    .end local v21    # "f2":F
    :pswitch_7
    move-object/from16 v26, v5

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v22, v26

    .line 86
    .local v22, "d1":D
    move-object/from16 v26, v8

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v24, v26

    .line 87
    .local v24, "d2":D
    new-instance v26, Ljava/lang/Double;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move-wide/from16 v28, v22

    move-wide/from16 v30, v24

    mul-double v28, v28, v30

    invoke-direct/range {v27 .. v29}, Ljava/lang/Double;-><init>(D)V

    move-object/from16 v5, v26

    .line 88
    goto/16 :goto_3

    .line 90
    .end local v22    # "d1":D
    .end local v24    # "d2":D
    :pswitch_8
    move-object/from16 v26, v5

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v22, v26

    .line 91
    .restart local v22    # "d1":D
    move-object/from16 v26, v8

    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v26

    move-wide/from16 v24, v26

    .line 92
    .restart local v24    # "d2":D
    new-instance v26, Lgnu/math/DFloNum;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move-wide/from16 v28, v22

    move-wide/from16 v30, v24

    mul-double v28, v28, v30

    invoke-direct/range {v27 .. v29}, Lgnu/math/DFloNum;-><init>(D)V

    move-object/from16 v5, v26

    .line 93
    goto/16 :goto_3

    .line 99
    .end local v8    # "arg2":Ljava/lang/Object;
    .end local v9    # "code2":I
    .end local v22    # "d1":D
    .end local v24    # "d2":D
    :cond_2
    move-object/from16 v26, v5

    move-object/from16 v2, v26

    goto/16 :goto_0

    .line 49
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

.method public defaultResult()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/MultiplyOp;
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/MultiplyOp;
    return-object v0
.end method
