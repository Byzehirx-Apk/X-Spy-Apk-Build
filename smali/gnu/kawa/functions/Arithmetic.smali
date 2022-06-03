.class public Lgnu/kawa/functions/Arithmetic;
.super Ljava/lang/Object;
.source "Arithmetic.java"


# static fields
.field public static final BIGDECIMAL_CODE:I = 0x5

.field public static final BIGINTEGER_CODE:I = 0x3

.field public static final DOUBLE_CODE:I = 0x8

.field public static final FLOAT_CODE:I = 0x7

.field public static final FLONUM_CODE:I = 0x9

.field public static final INTNUM_CODE:I = 0x4

.field public static final INT_CODE:I = 0x1

.field public static final LONG_CODE:I = 0x2

.field public static final NUMERIC_CODE:I = 0xb

.field public static final RATNUM_CODE:I = 0x6

.field public static final REALNUM_CODE:I = 0xa

.field static typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

.field static typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

.field static typeNumber:Lgnu/bytecode/ClassType;

.field static typeNumeric:Lgnu/bytecode/ClassType;

.field static typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

.field static typeRealNum:Lgnu/kawa/lispexpr/LangObjType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->dflonumType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 109
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 110
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 111
    const-string/jumbo v0, "java.lang.Number"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumber:Lgnu/bytecode/ClassType;

    .line 112
    const-string/jumbo v0, "gnu.math.Numeric"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    .line 113
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Arithmetic;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 6

    .prologue
    .line 213
    move-object v1, p0

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Ljava/math/BigDecimal;

    if-eqz v2, :cond_0

    .line 214
    move-object v2, v1

    check-cast v2, Ljava/math/BigDecimal;

    move-object v1, v2

    .line 220
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 215
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    .line 216
    new-instance v2, Ljava/math/BigDecimal;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Ljava/math/BigInteger;

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object v1, v2

    goto :goto_0

    .line 217
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Long;

    if-nez v2, :cond_2

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_2

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Byte;

    if-eqz v2, :cond_3

    .line 219
    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 220
    :cond_3
    new-instance v2, Ljava/math/BigDecimal;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0
.end method

.method public static asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 6

    .prologue
    .line 183
    move-object v1, p0

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Ljava/math/BigInteger;

    if-eqz v2, :cond_0

    .line 184
    move-object v2, v1

    check-cast v2, Ljava/math/BigInteger;

    move-object v1, v2

    .line 187
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 185
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/IntNum;

    if-eqz v2, :cond_1

    .line 186
    new-instance v2, Ljava/math/BigInteger;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 187
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static asDouble(Ljava/lang/Object;)D
    .locals 3

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "value":Ljava/lang/Object;
    return-wide v0
.end method

.method public static asFloat(Ljava/lang/Object;)F
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    move v0, v1

    .end local v0    # "value":Ljava/lang/Object;
    return v0
.end method

.method public static asInt(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move v0, v1

    .end local v0    # "value":Ljava/lang/Object;
    return v0
.end method

.method public static asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;
    .locals 4

    .prologue
    .line 202
    move-object v1, p0

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/IntNum;

    if-eqz v2, :cond_0

    .line 203
    move-object v2, v1

    check-cast v2, Lgnu/math/IntNum;

    move-object v1, v2

    .line 208
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 204
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    .line 205
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 206
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljava/math/BigDecimal;

    if-eqz v2, :cond_2

    .line 207
    move-object v2, v1

    check-cast v2, Ljava/math/BigDecimal;

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 208
    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;
    .locals 3

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "value":Ljava/math/BigDecimal;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":Ljava/math/BigDecimal;
    return-object v0
.end method

.method public static asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;
    .locals 3

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "value":Ljava/math/BigInteger;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static asLong(Ljava/lang/Object;)J
    .locals 3

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "value":Ljava/lang/Object;
    return-wide v0
.end method

.method public static asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 3

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lgnu/math/Numeric;->asNumericOrNull(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v2

    move-object v1, v2

    .line 238
    .local v1, "n":Lgnu/math/Numeric;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    check-cast v2, Lgnu/math/Numeric;

    goto :goto_0
.end method

.method public static asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;
    .locals 4

    .prologue
    .line 225
    move-object v1, p0

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/RatNum;

    if-eqz v2, :cond_0

    .line 226
    move-object v2, v1

    check-cast v2, Lgnu/math/RatNum;

    move-object v1, v2

    .line 232
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 227
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    .line 228
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 229
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljava/math/BigDecimal;

    if-eqz v2, :cond_2

    .line 230
    move-object v2, v1

    check-cast v2, Ljava/math/BigDecimal;

    invoke-static {v2}, Lgnu/math/RatNum;->valueOf(Ljava/math/BigDecimal;)Lgnu/math/RatNum;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 232
    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static classifyType(Lgnu/bytecode/Type;)I
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/Type;
    const/4 v3, 0x0

    move v1, v3

    .line 118
    .local v1, "kind":I
    move-object v3, v0

    instance-of v3, v3, Lgnu/bytecode/PrimType;

    if-eqz v3, :cond_5

    .line 120
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    .line 121
    .local v2, "sig":C
    move v3, v2

    const/16 v4, 0x56

    if-eq v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x43

    if-ne v3, v4, :cond_1

    .line 122
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 158
    .end local v0    # "type":Lgnu/bytecode/Type;
    .end local v2    # "sig":C
    :goto_0
    return v0

    .line 123
    .restart local v0    # "type":Lgnu/bytecode/Type;
    .restart local v2    # "sig":C
    :cond_1
    move v3, v2

    const/16 v4, 0x44

    if-ne v3, v4, :cond_2

    .line 124
    const/16 v3, 0x8

    move v0, v3

    goto :goto_0

    .line 125
    :cond_2
    move v3, v2

    const/16 v4, 0x46

    if-ne v3, v4, :cond_3

    .line 126
    const/4 v3, 0x7

    move v0, v3

    goto :goto_0

    .line 127
    :cond_3
    move v3, v2

    const/16 v4, 0x4a

    if-ne v3, v4, :cond_4

    .line 128
    const/4 v3, 0x2

    move v0, v3

    goto :goto_0

    .line 130
    :cond_4
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 132
    .end local v2    # "sig":C
    :cond_5
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 133
    .local v2, "tname":Ljava/lang/String;
    move-object v3, v0

    sget-object v4, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 134
    const/4 v3, 0x4

    move v0, v3

    goto :goto_0

    .line 135
    :cond_6
    move-object v3, v0

    sget-object v4, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 136
    const/4 v3, 0x6

    move v0, v3

    goto :goto_0

    .line 137
    :cond_7
    move-object v3, v0

    sget-object v4, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 138
    const/16 v3, 0x9

    move v0, v3

    goto :goto_0

    .line 139
    :cond_8
    const-string/jumbo v3, "java.lang.Double"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 140
    const/16 v3, 0x8

    move v0, v3

    goto :goto_0

    .line 141
    :cond_9
    const-string/jumbo v3, "java.lang.Float"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 142
    const/4 v3, 0x7

    move v0, v3

    goto :goto_0

    .line 143
    :cond_a
    const-string/jumbo v3, "java.lang.Long"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 144
    const/4 v3, 0x2

    move v0, v3

    goto :goto_0

    .line 145
    :cond_b
    const-string/jumbo v3, "java.lang.Integer"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "java.lang.Short"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "java.lang.Byte"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 148
    :cond_c
    const/4 v3, 0x1

    move v0, v3

    goto/16 :goto_0

    .line 149
    :cond_d
    const-string/jumbo v3, "java.math.BigInteger"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 150
    const/4 v3, 0x3

    move v0, v3

    goto/16 :goto_0

    .line 151
    :cond_e
    const-string/jumbo v3, "java.math.BigDecimal"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 152
    const/4 v3, 0x5

    move v0, v3

    goto/16 :goto_0

    .line 153
    :cond_f
    move-object v3, v0

    sget-object v4, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 154
    const/16 v3, 0xa

    move v0, v3

    goto/16 :goto_0

    .line 155
    :cond_10
    move-object v3, v0

    sget-object v4, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 156
    const/16 v3, 0xb

    move v0, v3

    goto/16 :goto_0

    .line 158
    :cond_11
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0
.end method

.method public static classifyValue(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/math/Numeric;

    if-eqz v1, :cond_4

    .line 40
    move-object v1, v0

    instance-of v1, v1, Lgnu/math/IntNum;

    if-eqz v1, :cond_0

    .line 41
    const/4 v1, 0x4

    move v0, v1

    .line 70
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return v0

    .line 42
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Lgnu/math/RatNum;

    if-eqz v1, :cond_1

    .line 43
    const/4 v1, 0x6

    move v0, v1

    goto :goto_0

    .line 44
    :cond_1
    move-object v1, v0

    instance-of v1, v1, Lgnu/math/DFloNum;

    if-eqz v1, :cond_2

    .line 45
    const/16 v1, 0x9

    move v0, v1

    goto :goto_0

    .line 46
    :cond_2
    move-object v1, v0

    instance-of v1, v1, Lgnu/math/RealNum;

    if-eqz v1, :cond_3

    .line 47
    const/16 v1, 0xa

    move v0, v1

    goto :goto_0

    .line 49
    :cond_3
    const/16 v1, 0xb

    move v0, v1

    goto :goto_0

    .line 51
    :cond_4
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_c

    .line 53
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_5

    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Short;

    if-nez v1, :cond_5

    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Byte;

    if-eqz v1, :cond_6

    .line 55
    :cond_5
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 56
    :cond_6
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 57
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 58
    :cond_7
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Float;

    if-eqz v1, :cond_8

    .line 59
    const/4 v1, 0x7

    move v0, v1

    goto :goto_0

    .line 60
    :cond_8
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Double;

    if-eqz v1, :cond_9

    .line 61
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0

    .line 62
    :cond_9
    move-object v1, v0

    instance-of v1, v1, Ljava/math/BigInteger;

    if-eqz v1, :cond_a

    .line 63
    const/4 v1, 0x3

    move v0, v1

    goto :goto_0

    .line 64
    :cond_a
    move-object v1, v0

    instance-of v1, v1, Ljava/math/BigDecimal;

    if-eqz v1, :cond_b

    .line 65
    const/4 v1, 0x5

    move v0, v1

    goto :goto_0

    .line 67
    :cond_b
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0

    .line 70
    :cond_c
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public static convert(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move v1, p1

    .local v1, "code":I
    move v8, v1

    packed-switch v8, :pswitch_data_0

    .line 337
    move-object v8, v0

    check-cast v8, Ljava/lang/Number;

    move-object v0, v8

    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 285
    .restart local v0    # "value":Ljava/lang/Object;
    :pswitch_0
    move-object v8, v0

    instance-of v8, v8, Ljava/lang/Integer;

    if-eqz v8, :cond_0

    .line 286
    move-object v8, v0

    move-object v0, v8

    goto :goto_0

    .line 287
    :cond_0
    move-object v8, v0

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    move v2, v8

    .line 289
    .local v2, "i":I
    move v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 294
    .end local v2    # "i":I
    :pswitch_1
    move-object v8, v0

    instance-of v8, v8, Ljava/lang/Long;

    if-eqz v8, :cond_1

    .line 295
    move-object v8, v0

    move-object v0, v8

    goto :goto_0

    .line 296
    :cond_1
    move-object v8, v0

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    move-wide v3, v8

    .line 298
    .local v3, "l":J
    move-wide v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 303
    .end local v3    # "l":J
    :pswitch_2
    move-object v8, v0

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 305
    :pswitch_3
    move-object v8, v0

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 307
    :pswitch_4
    move-object v8, v0

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 309
    :pswitch_5
    move-object v8, v0

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 311
    :pswitch_6
    move-object v8, v0

    instance-of v8, v8, Ljava/lang/Float;

    if-eqz v8, :cond_2

    .line 312
    move-object v8, v0

    move-object v0, v8

    goto :goto_0

    .line 313
    :cond_2
    move-object v8, v0

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v8

    move v5, v8

    .line 315
    .local v5, "f":F
    move v8, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 320
    .end local v5    # "f":F
    :pswitch_7
    move-object v8, v0

    instance-of v8, v8, Ljava/lang/Double;

    if-eqz v8, :cond_3

    .line 321
    move-object v8, v0

    move-object v0, v8

    goto :goto_0

    .line 322
    :cond_3
    move-object v8, v0

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v8

    move-wide v6, v8

    .line 324
    .local v6, "d":D
    move-wide v8, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 329
    .end local v6    # "d":D
    :pswitch_8
    move-object v8, v0

    instance-of v8, v8, Lgnu/math/DFloNum;

    if-eqz v8, :cond_4

    .line 330
    move-object v8, v0

    move-object v0, v8

    goto :goto_0

    .line 331
    :cond_4
    move-object v8, v0

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 333
    :pswitch_9
    move-object v8, v0

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 335
    :pswitch_a
    move-object v8, v0

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v8

    check-cast v8, Lgnu/math/RealNum;

    move-object v0, v8

    goto/16 :goto_0

    .line 282
    nop

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
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static isExact(Ljava/lang/Number;)Z
    .locals 2

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "num":Ljava/lang/Number;
    move-object v1, v0

    instance-of v1, v1, Lgnu/math/Numeric;

    if-eqz v1, :cond_0

    .line 344
    move-object v1, v0

    check-cast v1, Lgnu/math/Numeric;

    invoke-virtual {v1}, Lgnu/math/Numeric;->isExact()Z

    move-result v1

    move v0, v1

    .line 345
    .end local v0    # "num":Ljava/lang/Number;
    :goto_0
    return v0

    .restart local v0    # "num":Ljava/lang/Number;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Double;

    if-nez v1, :cond_1

    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Float;

    if-nez v1, :cond_1

    move-object v1, v0

    instance-of v1, v1, Ljava/math/BigDecimal;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static kindType(I)Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 75
    move v0, p0

    .local v0, "kind":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 100
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "kind":I
    :goto_0
    return-object v0

    .line 78
    .restart local v0    # "kind":I
    :pswitch_0
    sget-object v1, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    goto :goto_0

    .line 80
    :pswitch_1
    sget-object v1, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    goto :goto_0

    .line 82
    :pswitch_2
    const-string/jumbo v1, "java.math.BigInteger"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 84
    :pswitch_3
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v1

    goto :goto_0

    .line 86
    :pswitch_4
    const-string/jumbo v1, "java.math.BigDecimal"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 88
    :pswitch_5
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v1

    goto :goto_0

    .line 90
    :pswitch_6
    sget-object v1, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    goto :goto_0

    .line 92
    :pswitch_7
    sget-object v1, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    goto :goto_0

    .line 94
    :pswitch_8
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v1

    goto :goto_0

    .line 96
    :pswitch_9
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v1

    goto :goto_0

    .line 98
    :pswitch_a
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    move-object v0, v1

    goto :goto_0

    .line 75
    nop

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
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static toExact(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4

    .prologue
    .line 351
    move-object v1, p0

    .local v1, "num":Ljava/lang/Number;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Numeric;

    if-eqz v2, :cond_0

    .line 352
    move-object v2, v1

    check-cast v2, Lgnu/math/Numeric;

    invoke-virtual {v2}, Lgnu/math/Numeric;->toExact()Lgnu/math/Numeric;

    move-result-object v2

    move-object v1, v2

    .line 357
    .end local v1    # "num":Ljava/lang/Number;
    :goto_0
    return-object v1

    .line 353
    .restart local v1    # "num":Ljava/lang/Number;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Double;

    if-nez v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Float;

    if-nez v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Ljava/math/BigDecimal;

    if-eqz v2, :cond_2

    .line 355
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 357
    :cond_2
    move-object v2, v1

    move-object v1, v2

    goto :goto_0
.end method

.method public static toInexact(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4

    .prologue
    .line 362
    move-object v1, p0

    .local v1, "num":Ljava/lang/Number;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Numeric;

    if-eqz v2, :cond_0

    .line 363
    move-object v2, v1

    check-cast v2, Lgnu/math/Numeric;

    invoke-virtual {v2}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object v2

    move-object v1, v2

    .line 368
    .end local v1    # "num":Ljava/lang/Number;
    :goto_0
    return-object v1

    .line 364
    .restart local v1    # "num":Ljava/lang/Number;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Double;

    if-nez v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Float;

    if-nez v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Ljava/math/BigDecimal;

    if-eqz v2, :cond_2

    .line 366
    :cond_1
    move-object v2, v1

    move-object v1, v2

    goto :goto_0

    .line 368
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 247
    move-object v1, p0

    .local v1, "number":Ljava/lang/Object;
    move v2, p1

    .local v2, "radix":I
    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 248
    .local v3, "code":I
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 272
    :cond_0
    :pswitch_0
    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/math/Numeric;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "number":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 251
    .restart local v1    # "number":Ljava/lang/Object;
    :pswitch_1
    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v4

    move v5, v2

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 253
    :pswitch_2
    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v4

    move v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 255
    :pswitch_3
    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v4

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 257
    :pswitch_4
    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v4

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 259
    :pswitch_5
    move v4, v2

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 260
    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 263
    :cond_1
    :pswitch_6
    move v4, v2

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 264
    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 268
    :cond_2
    :pswitch_7
    move v4, v2

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 269
    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
