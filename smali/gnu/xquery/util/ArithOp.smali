.class public Lgnu/xquery/util/ArithOp;
.super Lgnu/mapping/Procedure1or2;
.source "ArithOp.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field static final TEN:Ljava/math/BigInteger;

.field public static final add:Lgnu/xquery/util/ArithOp;

.field public static final div:Lgnu/xquery/util/ArithOp;

.field public static final idiv:Lgnu/xquery/util/ArithOp;

.field public static final minus:Lgnu/xquery/util/ArithOp;

.field public static final mod:Lgnu/xquery/util/ArithOp;

.field public static final mul:Lgnu/xquery/util/ArithOp;

.field public static final plus:Lgnu/xquery/util/ArithOp;

.field public static final sub:Lgnu/xquery/util/ArithOp;


# instance fields
.field op:C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 16
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/ArithOp;->TEN:Ljava/math/BigInteger;

    .line 18
    new-instance v0, Lgnu/xquery/util/ArithOp;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "+"

    const/16 v3, 0x2b

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->add:Lgnu/xquery/util/ArithOp;

    .line 19
    new-instance v0, Lgnu/xquery/util/ArithOp;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "-"

    const/16 v3, 0x2d

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->sub:Lgnu/xquery/util/ArithOp;

    .line 20
    new-instance v0, Lgnu/xquery/util/ArithOp;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "*"

    const/16 v3, 0x2a

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->mul:Lgnu/xquery/util/ArithOp;

    .line 21
    new-instance v0, Lgnu/xquery/util/ArithOp;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "div"

    const/16 v3, 0x64

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->div:Lgnu/xquery/util/ArithOp;

    .line 22
    new-instance v0, Lgnu/xquery/util/ArithOp;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "idiv"

    const/16 v3, 0x69

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->idiv:Lgnu/xquery/util/ArithOp;

    .line 23
    new-instance v0, Lgnu/xquery/util/ArithOp;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "mod"

    const/16 v3, 0x6d

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->mod:Lgnu/xquery/util/ArithOp;

    .line 24
    new-instance v0, Lgnu/xquery/util/ArithOp;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "+"

    const/16 v3, 0x50

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->plus:Lgnu/xquery/util/ArithOp;

    .line 25
    new-instance v0, Lgnu/xquery/util/ArithOp;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "-"

    const/16 v3, 0x4d

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->minus:Lgnu/xquery/util/ArithOp;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;CI)V
    .locals 7

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/ArithOp;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "op":C
    move v3, p3

    .local v3, "nargs":I
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/mapping/Procedure1or2;-><init>(Ljava/lang/String;)V

    .line 30
    move-object v4, v0

    sget-object v5, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v6, "gnu.xquery.util.CompileMisc:validateArithOp"

    invoke-virtual {v4, v5, v6}, Lgnu/xquery/util/ArithOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    move-object v4, v0

    move v5, v2

    iput-char v5, v4, Lgnu/xquery/util/ArithOp;->op:C

    .line 33
    return-void
.end method

.method public static div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "d1":Ljava/math/BigDecimal;
    move-object v1, p1

    .local v1, "d2":Ljava/math/BigDecimal;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "d1":Ljava/math/BigDecimal;
    return-object v0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 38
    move-object v1, p0

    .local v1, "this":Lgnu/xquery/util/ArithOp;
    move-object v2, p1

    .local v2, "arg1":Ljava/lang/Object;
    move-object v4, v2

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v4, v5, :cond_0

    move-object v4, v2

    if-nez v4, :cond_1

    .line 39
    :cond_0
    move-object v4, v2

    move-object v1, v4

    .line 57
    .end local v1    # "this":Lgnu/xquery/util/ArithOp;
    :goto_0
    return-object v1

    .line 40
    .restart local v1    # "this":Lgnu/xquery/util/ArithOp;
    :cond_1
    move-object v4, v2

    instance-of v4, v4, Lgnu/kawa/xml/KNode;

    if-nez v4, :cond_2

    move-object v4, v2

    instance-of v4, v4, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v4, :cond_3

    .line 41
    :cond_2
    sget-object v4, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    move-object v5, v2

    invoke-static {v5}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 42
    :cond_3
    move-object v4, v1

    iget-char v4, v4, Lgnu/xquery/util/ArithOp;->op:C

    packed-switch v4, :pswitch_data_0

    .line 60
    :pswitch_0
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/xquery/util/ArithOp;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    :pswitch_1
    const/4 v4, 0x1

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v5

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 47
    :pswitch_2
    move-object v4, v2

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 48
    .local v3, "code1":I
    move v4, v3

    packed-switch v4, :pswitch_data_1

    .line 55
    move-object v4, v2

    instance-of v4, v4, Lgnu/math/Numeric;

    if-eqz v4, :cond_4

    .line 56
    move-object v4, v2

    check-cast v4, Lgnu/math/Numeric;

    invoke-virtual {v4}, Lgnu/math/Numeric;->neg()Lgnu/math/Numeric;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 51
    :pswitch_3
    move-object v4, v2

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v4

    neg-float v4, v4

    invoke-static {v4}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 53
    :pswitch_4
    move-object v4, v2

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v4, v5}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 57
    :cond_4
    const/4 v4, -0x1

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v5

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 48
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 90
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/xquery/util/ArithOp;
    move-object/from16 v3, p1

    .local v3, "arg1":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "arg2":Ljava/lang/Object;
    move-object/from16 v18, v3

    sget-object v19, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v18, v3

    if-nez v18, :cond_1

    .line 91
    :cond_0
    move-object/from16 v18, v3

    move-object/from16 v2, v18

    .line 214
    .end local v2    # "this":Lgnu/xquery/util/ArithOp;
    :goto_0
    return-object v2

    .line 92
    .restart local v2    # "this":Lgnu/xquery/util/ArithOp;
    :cond_1
    move-object/from16 v18, v4

    sget-object v19, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_2

    move-object/from16 v18, v4

    if-nez v18, :cond_3

    .line 93
    :cond_2
    move-object/from16 v18, v4

    move-object/from16 v2, v18

    goto :goto_0

    .line 94
    :cond_3
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/kawa/xml/KNode;

    move/from16 v18, v0

    if-nez v18, :cond_4

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/kawa/xml/UntypedAtomic;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 95
    :cond_4
    sget-object v18, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v19, v3

    invoke-static/range {v19 .. v19}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    .line 96
    :cond_5
    move-object/from16 v18, v4

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/kawa/xml/KNode;

    move/from16 v18, v0

    if-nez v18, :cond_6

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/kawa/xml/UntypedAtomic;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 97
    :cond_6
    sget-object v18, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v19, v4

    invoke-static/range {v19 .. v19}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v4, v18

    .line 98
    :cond_7
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-char v0, v0, Lgnu/xquery/util/ArithOp;->op:C

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 107
    :pswitch_0
    move-object/from16 v18, v3

    invoke-static/range {v18 .. v18}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v18

    move/from16 v5, v18

    .line 108
    .local v5, "code1":I
    move-object/from16 v18, v4

    invoke-static/range {v18 .. v18}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v18

    move/from16 v6, v18

    .line 109
    .local v6, "code2":I
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    move/from16 v18, v6

    :goto_1
    move/from16 v7, v18

    .line 110
    .local v7, "code":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-char v0, v0, Lgnu/xquery/util/ArithOp;->op:C

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 217
    :cond_8
    :goto_2
    new-instance v18, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/xquery/util/ArithOp;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 101
    .end local v5    # "code1":I
    .end local v6    # "code2":I
    .end local v7    # "code":I
    :pswitch_1
    const/16 v18, 0x1

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-static/range {v18 .. v20}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 103
    :pswitch_2
    const/16 v18, -0x1

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-static/range {v18 .. v20}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 105
    :pswitch_3
    sget-object v18, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-virtual/range {v18 .. v20}, Lgnu/kawa/functions/MultiplyOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 109
    .restart local v5    # "code1":I
    .restart local v6    # "code2":I
    :cond_9
    move/from16 v18, v5

    goto :goto_1

    .line 113
    .restart local v7    # "code":I
    :sswitch_0
    move/from16 v18, v5

    if-ltz v18, :cond_8

    move/from16 v18, v6

    if-gez v18, :cond_a

    .line 114
    goto :goto_2

    .line 115
    :cond_a
    move/from16 v18, v7

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_b

    .line 117
    sget-object v18, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/math/BigDecimal;

    move-object/from16 v8, v18

    .line 119
    .local v8, "d1":Ljava/math/BigDecimal;
    sget-object v18, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/math/BigDecimal;

    move-object/from16 v9, v18

    .line 121
    .local v9, "d2":Ljava/math/BigDecimal;
    move-object/from16 v18, v8

    move-object/from16 v19, v9

    invoke-static/range {v18 .. v19}, Lgnu/xquery/util/ArithOp;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 123
    .end local v8    # "d1":Ljava/math/BigDecimal;
    .end local v9    # "d2":Ljava/math/BigDecimal;
    :cond_b
    move/from16 v18, v7

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 125
    new-instance v18, Ljava/lang/Float;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v3

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->floatValue()F

    move-result v20

    move-object/from16 v21, v4

    check-cast v21, Ljava/lang/Number;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->floatValue()F

    move-result v21

    div-float v20, v20, v21

    invoke-direct/range {v19 .. v20}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 128
    :cond_c
    move/from16 v18, v7

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 130
    new-instance v18, Ljava/lang/Double;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v3

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v20

    move-object/from16 v22, v4

    check-cast v22, Ljava/lang/Number;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    div-double v20, v20, v22

    invoke-direct/range {v19 .. v21}, Ljava/lang/Double;-><init>(D)V

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 133
    :cond_d
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/math/Duration;

    move/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/math/Duration;

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 135
    move-object/from16 v18, v3

    check-cast v18, Lgnu/math/Duration;

    move-object/from16 v8, v18

    .line 136
    .local v8, "dur1":Lgnu/math/Duration;
    move-object/from16 v18, v4

    check-cast v18, Lgnu/math/Duration;

    move-object/from16 v9, v18

    .line 137
    .local v9, "dur2":Lgnu/math/Duration;
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v18

    sget-object v19, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_e

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v18

    sget-object v19, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 139
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Lgnu/math/Duration;->getTotalSeconds()J

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 140
    .local v10, "s1":J
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lgnu/math/Duration;->getTotalSeconds()J

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 141
    .local v12, "s2":J
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result v18

    move/from16 v14, v18

    .line 142
    .local v14, "n1":I
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result v18

    move/from16 v15, v18

    .line 143
    .local v15, "n2":I
    move-wide/from16 v18, v10

    move/from16 v20, v14

    invoke-static/range {v18 .. v20}, Lgnu/xquery/util/TimeUtils;->secondsBigDecimalFromDuration(JI)Ljava/math/BigDecimal;

    move-result-object v18

    move-object/from16 v16, v18

    .line 144
    .local v16, "sec1":Ljava/math/BigDecimal;
    move-wide/from16 v18, v12

    move/from16 v20, v15

    invoke-static/range {v18 .. v20}, Lgnu/xquery/util/TimeUtils;->secondsBigDecimalFromDuration(JI)Ljava/math/BigDecimal;

    move-result-object v18

    move-object/from16 v17, v18

    .line 145
    .local v17, "sec2":Ljava/math/BigDecimal;
    move-object/from16 v18, v16

    move-object/from16 v19, v17

    invoke-static/range {v18 .. v19}, Lgnu/xquery/util/ArithOp;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 147
    .end local v10    # "s1":J
    .end local v12    # "s2":J
    .end local v14    # "n1":I
    .end local v15    # "n2":I
    .end local v16    # "sec1":Ljava/math/BigDecimal;
    .end local v17    # "sec2":Ljava/math/BigDecimal;
    :cond_e
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v18

    sget-object v19, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v18

    sget-object v19, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 149
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Lgnu/math/Duration;->getTotalMonths()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v18

    move-object/from16 v10, v18

    .line 150
    .local v10, "m1":Ljava/math/BigDecimal;
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lgnu/math/Duration;->getTotalMonths()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v18

    move-object/from16 v11, v18

    .line 151
    .local v11, "m2":Ljava/math/BigDecimal;
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-static/range {v18 .. v19}, Lgnu/xquery/util/ArithOp;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 153
    .end local v10    # "m1":Ljava/math/BigDecimal;
    .end local v11    # "m2":Ljava/math/BigDecimal;
    :cond_f
    new-instance v18, Ljava/lang/ArithmeticException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string/jumbo v20, "divide of incompatible durations"

    invoke-direct/range {v19 .. v20}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 155
    .end local v8    # "dur1":Lgnu/math/Duration;
    .end local v9    # "dur2":Lgnu/math/Duration;
    :cond_10
    move/from16 v18, v7

    if-ltz v18, :cond_11

    .line 156
    move-object/from16 v18, v3

    invoke-static/range {v18 .. v18}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v18

    move-object/from16 v19, v4

    invoke-static/range {v19 .. v19}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lgnu/math/Numeric;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 158
    :cond_11
    :sswitch_1
    move/from16 v18, v5

    if-ltz v18, :cond_8

    move/from16 v18, v6

    if-gez v18, :cond_12

    .line 159
    goto/16 :goto_2

    .line 160
    :cond_12
    move/from16 v18, v7

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_13

    .line 162
    move-object/from16 v18, v3

    invoke-static/range {v18 .. v18}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v18

    move-object/from16 v8, v18

    .line 163
    .local v8, "i1":Lgnu/math/IntNum;
    move-object/from16 v18, v4

    invoke-static/range {v18 .. v18}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v18

    move-object/from16 v9, v18

    .line 164
    .local v9, "i2":Lgnu/math/IntNum;
    move-object/from16 v18, v8

    move-object/from16 v19, v9

    invoke-static/range {v18 .. v19}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 166
    .end local v8    # "i1":Lgnu/math/IntNum;
    .end local v9    # "i2":Lgnu/math/IntNum;
    :cond_13
    move/from16 v18, v7

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_14

    .line 168
    sget-object v18, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/math/BigDecimal;

    move-object/from16 v8, v18

    .line 170
    .local v8, "d1":Ljava/math/BigDecimal;
    sget-object v18, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/math/BigDecimal;

    move-object/from16 v9, v18

    .line 172
    .local v9, "d2":Ljava/math/BigDecimal;
    move-object/from16 v18, v8

    move-object/from16 v19, v9

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v21}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 175
    .end local v8    # "d1":Ljava/math/BigDecimal;
    .end local v9    # "d2":Ljava/math/BigDecimal;
    :cond_14
    move/from16 v18, v7

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_15

    .line 177
    move-object/from16 v18, v3

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->floatValue()F

    move-result v18

    move-object/from16 v19, v4

    check-cast v19, Ljava/lang/Number;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->floatValue()F

    move-result v19

    div-float v18, v18, v19

    move/from16 v8, v18

    .line 179
    .local v8, "f":F
    move/from16 v18, v8

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const/16 v20, 0x3

    invoke-static/range {v18 .. v20}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 183
    .end local v8    # "f":F
    :cond_15
    move-object/from16 v18, v3

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    move-object/from16 v20, v4

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v20

    div-double v18, v18, v20

    move-wide/from16 v8, v18

    .line 185
    .local v8, "d":D
    move-wide/from16 v18, v8

    const/16 v20, 0x3

    invoke-static/range {v18 .. v20}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 188
    .end local v8    # "d":D
    :sswitch_2
    move/from16 v18, v5

    if-ltz v18, :cond_8

    move/from16 v18, v6

    if-gez v18, :cond_16

    .line 189
    goto/16 :goto_2

    .line 190
    :cond_16
    move/from16 v18, v7

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_17

    .line 192
    move-object/from16 v18, v3

    invoke-static/range {v18 .. v18}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v18

    move-object/from16 v8, v18

    .line 193
    .local v8, "i1":Lgnu/math/IntNum;
    move-object/from16 v18, v4

    invoke-static/range {v18 .. v18}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v18

    move-object/from16 v9, v18

    .line 194
    .local v9, "i2":Lgnu/math/IntNum;
    move-object/from16 v18, v8

    move-object/from16 v19, v9

    invoke-static/range {v18 .. v19}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 196
    .end local v8    # "i1":Lgnu/math/IntNum;
    .end local v9    # "i2":Lgnu/math/IntNum;
    :cond_17
    move/from16 v18, v7

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_18

    .line 198
    sget-object v18, Lgnu/xquery/util/ArithOp;->sub:Lgnu/xquery/util/ArithOp;

    move-object/from16 v19, v3

    sget-object v20, Lgnu/xquery/util/ArithOp;->mul:Lgnu/xquery/util/ArithOp;

    sget-object v21, Lgnu/xquery/util/ArithOp;->idiv:Lgnu/xquery/util/ArithOp;

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v21 .. v23}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v4

    invoke-virtual/range {v20 .. v22}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 200
    :cond_18
    move/from16 v18, v7

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_19

    .line 202
    move-object/from16 v18, v3

    invoke-static/range {v18 .. v18}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v18

    move/from16 v8, v18

    .line 203
    .local v8, "f1":F
    move-object/from16 v18, v4

    invoke-static/range {v18 .. v18}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v18

    move/from16 v9, v18

    .line 204
    .local v9, "f2":F
    move/from16 v18, v8

    move/from16 v19, v9

    rem-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 206
    .end local v8    # "f1":F
    .end local v9    # "f2":F
    :cond_19
    move/from16 v18, v7

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_8

    .line 208
    move-object/from16 v18, v3

    invoke-static/range {v18 .. v18}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 209
    .local v8, "d1":D
    move-object/from16 v18, v4

    invoke-static/range {v18 .. v18}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 210
    .local v10, "d2":D
    move-wide/from16 v18, v8

    move-wide/from16 v20, v10

    rem-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 211
    .local v12, "d":D
    move/from16 v18, v7

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 212
    move-wide/from16 v18, v12

    invoke-static/range {v18 .. v19}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 214
    :cond_1a
    move-wide/from16 v18, v12

    invoke-static/range {v18 .. v19}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 110
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6d -> :sswitch_2
    .end sparse-switch
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 7

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/ArithOp;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 224
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/ArithOp;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/xquery/util/ArithOp;
    return-object v0
.end method
