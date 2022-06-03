.class public abstract Lgnu/math/Numeric;
.super Ljava/lang/Number;
.source "Numeric.java"


# static fields
.field public static final CEILING:I = 0x2

.field public static final FLOOR:I = 0x1

.field public static final NONNEG_MOD:I = 0x5

.field public static final ROUND:I = 0x4

.field public static final TRUNCATE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public static asNumericOrNull(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 7

    .prologue
    .line 34
    move-object v1, p0

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Numeric;

    if-eqz v2, :cond_0

    .line 35
    move-object v2, v1

    check-cast v2, Lgnu/math/Numeric;

    move-object v1, v2

    .line 44
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 36
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/math/BigInteger;

    if-nez v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Long;

    if-nez v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Byte;

    if-nez v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 39
    :cond_1
    move-object v2, v1

    invoke-static {v2}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 40
    :cond_2
    move-object v2, v1

    instance-of v2, v2, Ljava/math/BigDecimal;

    if-eqz v2, :cond_3

    .line 41
    move-object v2, v1

    invoke-static {v2}, Lgnu/math/RatNum;->asRatNumOrNull(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 42
    :cond_3
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Float;

    if-nez v2, :cond_4

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Double;

    if-eqz v2, :cond_5

    .line 43
    :cond_4
    new-instance v2, Lgnu/math/DFloNum;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v2

    goto :goto_0

    .line 44
    :cond_5
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public abstract abs()Lgnu/math/Numeric;
.end method

.method public final add(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 5

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lgnu/math/Numeric;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/Numeric;
    return-object v0
.end method

.method public abstract add(Ljava/lang/Object;I)Lgnu/math/Numeric;
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move v2, p2

    .local v2, "k":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    const/4 v2, -0x3

    move v0, v2

    .end local v0    # "this":Lgnu/math/Numeric;
    return v0
.end method

.method public compareReversed(Lgnu/math/Numeric;)I
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public abstract div(Ljava/lang/Object;)Lgnu/math/Numeric;
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public div_inv()Lgnu/math/Numeric;
    .locals 3

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Numeric;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Numeric;

    if-nez v2, :cond_1

    .line 90
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 91
    .end local v0    # "this":Lgnu/math/Numeric;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/math/Numeric;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/math/Numeric;->compare(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public floatValue()F
    .locals 4

    .prologue
    .line 10
    move-object v1, p0

    .local v1, "this":Lgnu/math/Numeric;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/Numeric;->doubleValue()D

    move-result-wide v2

    double-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Lgnu/math/Numeric;
    return v1
.end method

.method public geq(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/math/Numeric;->compare(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/math/Numeric;
    return v0

    .restart local v0    # "this":Lgnu/math/Numeric;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public grt(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/math/Numeric;->compare(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/math/Numeric;
    return v0

    .restart local v0    # "this":Lgnu/math/Numeric;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public intValue()I
    .locals 4

    .prologue
    .line 11
    move-object v1, p0

    .local v1, "this":Lgnu/math/Numeric;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/Numeric;->longValue()J

    move-result-wide v2

    long-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Lgnu/math/Numeric;
    return v1
.end method

.method public abstract isExact()Z
.end method

.method public abstract isZero()Z
.end method

.method public longValue()J
    .locals 4

    .prologue
    .line 12
    move-object v1, p0

    .local v1, "this":Lgnu/math/Numeric;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/Numeric;->doubleValue()D

    move-result-wide v2

    double-to-long v2, v2

    move-wide v1, v2

    .end local v1    # "this":Lgnu/math/Numeric;
    return-wide v1
.end method

.method public abstract mul(Ljava/lang/Object;)Lgnu/math/Numeric;
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 5

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public mul_ident()Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Numeric;
    return-object v0
.end method

.method public abstract neg()Lgnu/math/Numeric;
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .locals 6

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/IntNum;->isNegative()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/math/Numeric;->power(Lgnu/math/IntNum;)Lgnu/math/Numeric;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/math/Numeric;->div_inv()Lgnu/math/Numeric;

    move-result-object v4

    move-object v0, v4

    .line 153
    .end local v0    # "this":Lgnu/math/Numeric;
    :goto_0
    return-object v0

    .line 139
    .restart local v0    # "this":Lgnu/math/Numeric;
    :cond_0
    move-object v4, v0

    move-object v2, v4

    .line 140
    .local v2, "pow2":Lgnu/math/Numeric;
    const/4 v4, 0x0

    move-object v3, v4

    .line 145
    .local v3, "r":Lgnu/math/Numeric;
    :goto_1
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/IntNum;->isOdd()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    move-object v4, v3

    if-nez v4, :cond_2

    move-object v4, v2

    :goto_2
    move-object v3, v4

    .line 147
    :cond_1
    move-object v4, v1

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v1, v4

    .line 148
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/IntNum;->isZero()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    .line 153
    move-object v4, v3

    if-nez v4, :cond_4

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/Numeric;->mul_ident()Lgnu/math/Numeric;

    move-result-object v4

    :goto_3
    move-object v0, v4

    goto :goto_0

    .line 146
    :cond_2
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    goto :goto_2

    .line 151
    :cond_3
    move-object v4, v2

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    move-object v2, v4

    goto :goto_1

    .line 153
    :cond_4
    move-object v4, v3

    goto :goto_3
.end method

.method public final sub(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 5

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lgnu/math/Numeric;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/Numeric;
    return-object v0
.end method

.method public toExact()Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Numeric;
    return-object v0
.end method

.method public toInexact()Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Numeric;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/math/Numeric;
    move-object v1, v0

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lgnu/math/Numeric;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Numeric;
    return-object v0
.end method

.method public abstract toString(I)Ljava/lang/String;
.end method
