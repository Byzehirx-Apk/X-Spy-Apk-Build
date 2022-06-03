.class public Lgnu/xquery/util/NumberValue;
.super Lgnu/mapping/Procedure1;
.source "NumberValue.java"


# static fields
.field public static final NaN:Ljava/lang/Double;

.field public static final numberValue:Lgnu/xquery/util/NumberValue;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 14
    new-instance v0, Lgnu/xquery/util/NumberValue;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Lgnu/xquery/util/NumberValue;-><init>()V

    sput-object v0, Lgnu/xquery/util/NumberValue;->numberValue:Lgnu/xquery/util/NumberValue;

    .line 16
    new-instance v0, Ljava/lang/Double;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lgnu/xquery/util/NumberValue;->NaN:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/NumberValue;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method

.method public static abs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v6, v0

    if-eqz v6, :cond_0

    move-object v6, v0

    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v6, v7, :cond_1

    .line 90
    :cond_0
    move-object v6, v0

    move-object v0, v6

    .line 129
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 91
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    move-object v6, v0

    invoke-static {v6}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v6

    move-object v0, v6

    .line 92
    .local v0, "value":Ljava/lang/Number;
    move-object v6, v0

    instance-of v6, v6, Ljava/lang/Double;

    if-eqz v6, :cond_3

    .line 94
    move-object v6, v0

    check-cast v6, Ljava/lang/Double;

    move-object v1, v6

    .line 95
    .local v1, "d":Ljava/lang/Double;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-wide v2, v6

    .line 96
    .local v2, "x":D
    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    move-wide v4, v6

    .line 97
    .local v4, "bits":J
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    .line 98
    move-object v6, v1

    move-object v0, v6

    goto :goto_0

    .line 99
    :cond_2
    move-wide v6, v4

    const-wide v8, 0x7fffffffffffffffL

    and-long/2addr v6, v8

    move-wide v4, v6

    .line 100
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    move-wide v2, v6

    .line 102
    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 107
    .end local v1    # "d":Ljava/lang/Double;
    .end local v2    # "x":D
    .end local v4    # "bits":J
    :cond_3
    move-object v6, v0

    instance-of v6, v6, Ljava/lang/Float;

    if-eqz v6, :cond_5

    .line 109
    move-object v6, v0

    check-cast v6, Ljava/lang/Float;

    move-object v1, v6

    .line 110
    .local v1, "d":Ljava/lang/Float;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v2, v6

    .line 111
    .local v2, "x":F
    move v6, v2

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    move v3, v6

    .line 112
    .local v3, "bits":I
    move v6, v3

    if-ltz v6, :cond_4

    .line 113
    move-object v6, v1

    move-object v0, v6

    goto :goto_0

    .line 114
    :cond_4
    move v6, v3

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    move v3, v6

    .line 115
    move v6, v3

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    move v2, v6

    .line 117
    move v6, v2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 122
    .end local v1    # "d":Ljava/lang/Float;
    .end local v2    # "x":F
    .end local v3    # "bits":I
    :cond_5
    move-object v6, v0

    instance-of v6, v6, Ljava/math/BigDecimal;

    if-eqz v6, :cond_7

    .line 124
    move-object v6, v0

    check-cast v6, Ljava/math/BigDecimal;

    move-object v1, v6

    .line 125
    .local v1, "dec":Ljava/math/BigDecimal;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    if-gez v6, :cond_6

    .line 126
    move-object v6, v1

    invoke-virtual {v6}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v6

    move-object v1, v6

    .line 127
    :cond_6
    move-object v6, v1

    move-object v0, v6

    goto/16 :goto_0

    .line 129
    .end local v1    # "dec":Ljava/math/BigDecimal;
    :cond_7
    move-object v6, v0

    check-cast v6, Lgnu/math/Numeric;

    invoke-virtual {v6}, Lgnu/math/Numeric;->abs()Lgnu/math/Numeric;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public static ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 151
    move-object v1, p0

    .local v1, "val":Ljava/lang/Object;
    move-object v4, v1

    invoke-static {v4}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v4

    move-object v2, v4

    .line 152
    .local v2, "value":Ljava/lang/Number;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 153
    move-object v4, v1

    move-object v1, v4

    .line 163
    .end local v1    # "val":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 154
    .restart local v1    # "val":Ljava/lang/Object;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_1

    .line 155
    move-object v4, v2

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 156
    :cond_1
    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Float;

    if-eqz v4, :cond_2

    .line 157
    move-object v4, v2

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 158
    :cond_2
    move-object v4, v2

    instance-of v4, v4, Ljava/math/BigDecimal;

    if-eqz v4, :cond_3

    .line 160
    move-object v4, v2

    check-cast v4, Ljava/math/BigDecimal;

    move-object v3, v4

    .line 161
    .local v3, "dec":Ljava/math/BigDecimal;
    move-object v4, v3

    sget-object v5, Lgnu/kawa/xml/XDataType;->DECIMAL_ONE:Ljava/math/BigDecimal;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 163
    .end local v3    # "dec":Ljava/math/BigDecimal;
    :cond_3
    move-object v4, v2

    check-cast v4, Lgnu/math/RealNum;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public static floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 134
    move-object v1, p0

    .local v1, "val":Ljava/lang/Object;
    move-object v4, v1

    invoke-static {v4}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v4

    move-object v2, v4

    .line 135
    .local v2, "value":Ljava/lang/Number;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 136
    move-object v4, v1

    move-object v1, v4

    .line 146
    .end local v1    # "val":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 137
    .restart local v1    # "val":Ljava/lang/Object;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_1

    .line 138
    move-object v4, v2

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 139
    :cond_1
    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Float;

    if-eqz v4, :cond_2

    .line 140
    move-object v4, v2

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 141
    :cond_2
    move-object v4, v2

    instance-of v4, v4, Ljava/math/BigDecimal;

    if-eqz v4, :cond_3

    .line 143
    move-object v4, v2

    check-cast v4, Ljava/math/BigDecimal;

    move-object v3, v4

    .line 144
    .local v3, "dec":Ljava/math/BigDecimal;
    move-object v4, v3

    sget-object v5, Lgnu/kawa/xml/XDataType;->DECIMAL_ONE:Ljava/math/BigDecimal;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 146
    .end local v3    # "dec":Ljava/math/BigDecimal;
    :cond_3
    move-object v4, v2

    check-cast v4, Lgnu/math/RealNum;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public static isNaN(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 20
    move-object v1, p0

    .local v1, "arg":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Double;

    if-nez v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Float;

    if-nez v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lgnu/math/DFloNum;

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "arg":Ljava/lang/Object;
    return v1

    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static numberCast(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 8

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v4, v0

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v4, v5, :cond_0

    move-object v4, v0

    if-nez v4, :cond_1

    .line 44
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 60
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 45
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    move-object v4, v0

    instance-of v4, v4, Lgnu/mapping/Values;

    if-eqz v4, :cond_3

    .line 47
    move-object v4, v0

    check-cast v4, Lgnu/mapping/Values;

    move-object v1, v4

    .line 48
    .local v1, "vals":Lgnu/mapping/Values;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/Values;->startPos()I

    move-result v4

    move v2, v4

    .line 49
    .local v2, "ipos":I
    const/4 v4, 0x0

    move v3, v4

    .line 50
    .local v3, "count":I
    :goto_1
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v4

    move v7, v4

    move v4, v7

    move v5, v7

    move v2, v5

    if-eqz v4, :cond_3

    .line 52
    move v4, v3

    if-lez v4, :cond_2

    .line 53
    new-instance v4, Ljava/lang/ClassCastException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "non-singleton sequence cast to number"

    invoke-direct {v5, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    :cond_2
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 58
    .end local v1    # "vals":Lgnu/mapping/Values;
    .end local v2    # "ipos":I
    .end local v3    # "count":I
    :cond_3
    move-object v4, v0

    instance-of v4, v4, Lgnu/kawa/xml/KNode;

    if-nez v4, :cond_4

    move-object v4, v0

    instance-of v4, v4, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v4, :cond_5

    .line 59
    :cond_4
    sget-object v4, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    invoke-static {v5}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    move-object v0, v4

    goto :goto_0

    .line 60
    :cond_5
    move-object v4, v0

    check-cast v4, Ljava/lang/Number;

    move-object v0, v4

    goto :goto_0
.end method

.method public static numberValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v4, v0

    invoke-static {v4}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 67
    move-object v4, v0

    instance-of v4, v4, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v4, :cond_0

    move-object v4, v0

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 71
    :cond_0
    :try_start_0
    sget-object v4, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    move-object v5, v0

    invoke-static {v5}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .line 84
    .end local v0    # "value":Ljava/lang/Object;
    .local v1, "d":D
    :goto_0
    return-object v0

    .line 74
    .end local v1    # "d":D
    .restart local v0    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 76
    .local v3, "ex":Ljava/lang/Throwable;
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    move-wide v1, v4

    .line 84
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "d":D
    :goto_1
    move-wide v4, v1

    invoke-static {v4, v5}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 79
    .end local v1    # "d":D
    :cond_1
    move-object v4, v0

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_3

    move-object v4, v0

    instance-of v4, v4, Lgnu/math/RealNum;

    if-nez v4, :cond_2

    move-object v4, v0

    instance-of v4, v4, Lgnu/math/Numeric;

    if-nez v4, :cond_3

    .line 81
    :cond_2
    move-object v4, v0

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    move-wide v1, v4

    .restart local v1    # "d":D
    goto :goto_1

    .line 83
    .end local v1    # "d":D
    :cond_3
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    move-wide v1, v4

    .restart local v1    # "d":D
    goto :goto_1
.end method

.method public static round(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v4, v0

    invoke-static {v4}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v4

    move-object v1, v4

    .line 169
    .local v1, "value":Ljava/lang/Number;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 170
    move-object v4, v0

    move-object v0, v4

    .line 199
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 171
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_3

    .line 173
    move-object v4, v1

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-wide v2, v4

    .line 174
    .local v2, "val":D
    move-wide v4, v2

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_2

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_1

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 176
    :cond_1
    const-wide/high16 v4, -0x8000000000000000L

    move-wide v2, v4

    .line 179
    :goto_1
    move-wide v4, v2

    invoke-static {v4, v5}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 178
    :cond_2
    move-wide v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    move-wide v2, v4

    goto :goto_1

    .line 181
    .end local v2    # "val":D
    :cond_3
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Float;

    if-eqz v4, :cond_6

    .line 183
    move-object v4, v1

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move v2, v4

    .line 184
    .local v2, "val":F
    move v4, v2

    float-to-double v4, v4

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_5

    move v4, v2

    float-to-double v4, v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_5

    move v4, v2

    float-to-double v4, v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_4

    move v4, v2

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-gez v4, :cond_5

    .line 186
    :cond_4
    const/high16 v4, -0x80000000

    move v2, v4

    .line 189
    :goto_2
    move v4, v2

    invoke-static {v4}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 188
    :cond_5
    move v4, v2

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    move v2, v4

    goto :goto_2

    .line 191
    .end local v2    # "val":F
    :cond_6
    move-object v4, v1

    instance-of v4, v4, Ljava/math/BigDecimal;

    if-eqz v4, :cond_8

    .line 193
    move-object v4, v1

    check-cast v4, Ljava/math/BigDecimal;

    move-object v2, v4

    .line 194
    .local v2, "dec":Ljava/math/BigDecimal;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    if-ltz v4, :cond_7

    const/4 v4, 0x4

    :goto_3
    move v3, v4

    .line 196
    .local v3, "mode":I
    move-object v4, v2

    sget-object v5, Lgnu/kawa/xml/XDataType;->DECIMAL_ONE:Ljava/math/BigDecimal;

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v4

    move-object v2, v4

    .line 197
    move-object v4, v2

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 194
    .end local v3    # "mode":I
    :cond_7
    const/4 v4, 0x5

    goto :goto_3

    .line 199
    .end local v2    # "dec":Ljava/math/BigDecimal;
    :cond_8
    move-object v4, v1

    check-cast v4, Lgnu/math/RealNum;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0
.end method

.method public static roundHalfToEven(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/xquery/util/NumberValue;->roundHalfToEven(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method public static roundHalfToEven(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 204
    move-object v1, p0

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p1

    .local v2, "precision":Lgnu/math/IntNum;
    move-object v6, v1

    invoke-static {v6}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v6

    move-object v3, v6

    .line 205
    .local v3, "number":Ljava/lang/Number;
    move-object v6, v3

    if-nez v6, :cond_0

    .line 206
    move-object v6, v1

    move-object v1, v6

    .line 247
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 207
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    move-object v6, v1

    instance-of v6, v6, Ljava/lang/Double;

    if-nez v6, :cond_1

    move-object v6, v1

    instance-of v6, v6, Ljava/lang/Float;

    if-eqz v6, :cond_3

    .line 209
    :cond_1
    move-object v6, v1

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-wide v4, v6

    .line 210
    .local v4, "v":D
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_2

    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-nez v6, :cond_2

    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 211
    :cond_2
    move-object v6, v1

    move-object v1, v6

    goto :goto_0

    .line 213
    .end local v4    # "v":D
    :cond_3
    sget-object v6, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/math/BigDecimal;

    move-object v4, v6

    .line 214
    .local v4, "dec":Ljava/math/BigDecimal;
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/math/IntNum;->intValue()I

    move-result v6

    move v5, v6

    .line 240
    .local v5, "prec":I
    move-object v6, v4

    move v7, v5

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v6

    move-object v4, v6

    .line 241
    move-object v6, v3

    instance-of v6, v6, Ljava/lang/Double;

    if-eqz v6, :cond_4

    .line 242
    move-object v6, v4

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 243
    :cond_4
    move-object v6, v3

    instance-of v6, v6, Ljava/lang/Float;

    if-eqz v6, :cond_5

    .line 244
    move-object v6, v4

    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    invoke-static {v6}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 245
    :cond_5
    move-object v6, v3

    instance-of v6, v6, Lgnu/math/IntNum;

    if-eqz v6, :cond_6

    .line 246
    sget-object v6, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/kawa/xml/XIntegerType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 247
    :cond_6
    move-object v6, v4

    move-object v1, v6

    goto :goto_0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/NumberValue;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v3, v1

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v3, v4, :cond_0

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 31
    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Lgnu/xquery/util/NumberValue;->numberValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 38
    .end local v0    # "this":Lgnu/xquery/util/NumberValue;
    :goto_0
    return-object v0

    .line 33
    .restart local v0    # "this":Lgnu/xquery/util/NumberValue;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 38
    :cond_0
    sget-object v3, Lgnu/xquery/util/NumberValue;->NaN:Ljava/lang/Double;

    move-object v0, v3

    goto :goto_0
.end method
