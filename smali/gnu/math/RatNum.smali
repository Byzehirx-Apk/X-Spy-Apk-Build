.class public abstract Lgnu/math/RatNum;
.super Lgnu/math/RealNum;
.source "RatNum.java"


# static fields
.field public static final ten_exp_9:Lgnu/math/IntNum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const v0, 0x3b9aca00

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/math/RatNum;->ten_exp_9:Lgnu/math/IntNum;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/math/RatNum;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/math/RealNum;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;
    .locals 10

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "x":Lgnu/math/RatNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/RatNum;
    move v2, p2

    .local v2, "k":I
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v7

    move-object v3, v7

    .line 109
    .local v3, "x_num":Lgnu/math/IntNum;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v7

    move-object v4, v7

    .line 110
    .local v4, "x_den":Lgnu/math/IntNum;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v7

    move-object v5, v7

    .line 111
    .local v5, "y_num":Lgnu/math/IntNum;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v7

    move-object v6, v7

    .line 112
    .local v6, "y_den":Lgnu/math/IntNum;
    move-object v7, v4

    move-object v8, v6

    invoke-static {v7, v8}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 113
    move-object v7, v3

    move-object v8, v5

    move v9, v2

    invoke-static {v7, v8, v9}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v7

    move-object v8, v4

    invoke-static {v7, v8}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v7

    move-object v0, v7

    .line 114
    .end local v0    # "x":Lgnu/math/RatNum;
    :goto_0
    return-object v0

    .restart local v0    # "x":Lgnu/math/RatNum;
    :cond_0
    move-object v7, v6

    move-object v8, v3

    invoke-static {v7, v8}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v7

    move-object v8, v5

    move-object v9, v4

    invoke-static {v8, v9}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v8

    move v9, v2

    invoke-static {v7, v8, v9}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v7

    move-object v8, v4

    move-object v9, v6

    invoke-static {v8, v9}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v8

    invoke-static {v7, v8}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method

.method public static asRatNumOrNull(Ljava/lang/Object;)Lgnu/math/RatNum;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/math/RatNum;

    if-eqz v1, :cond_0

    .line 60
    move-object v1, v0

    check-cast v1, Lgnu/math/RatNum;

    move-object v0, v1

    .line 63
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 61
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    .line 62
    move-object v1, v0

    check-cast v1, Ljava/math/BigDecimal;

    invoke-static {v1}, Lgnu/math/RatNum;->valueOf(Ljava/math/BigDecimal;)Lgnu/math/RatNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 63
    :cond_1
    move-object v1, v0

    invoke-static {v1}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static compare(Lgnu/math/RatNum;Lgnu/math/RatNum;)I
    .locals 5

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "x":Lgnu/math/RatNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/RatNum;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v3, v4}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v2

    move v0, v2

    .end local v0    # "x":Lgnu/math/RatNum;
    return v0
.end method

.method public static divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;
    .locals 5

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "x":Lgnu/math/RatNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/RatNum;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v3, v4}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x":Lgnu/math/RatNum;
    return-object v0
.end method

.method public static equals(Lgnu/math/RatNum;Lgnu/math/RatNum;)Z
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "x":Lgnu/math/RatNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/RatNum;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "x":Lgnu/math/RatNum;
    return v0

    .restart local v0    # "x":Lgnu/math/RatNum;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static infinity(I)Lgnu/math/RatNum;
    .locals 6

    .prologue
    .line 82
    move v0, p0

    .local v0, "sign":I
    new-instance v1, Lgnu/math/IntFraction;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move v3, v0

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgnu/math/IntFraction;-><init>(Lgnu/math/IntNum;Lgnu/math/IntNum;)V

    move-object v0, v1

    .end local v0    # "sign":I
    return-object v0
.end method

.method public static make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;
    .locals 8

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "num":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "den":Lgnu/math/IntNum;
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/math/IntNum;->gcd(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    move-object v2, v3

    .line 17
    .local v2, "g":Lgnu/math/IntNum;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/math/IntNum;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    move-object v3, v2

    invoke-static {v3}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    move-object v2, v3

    .line 19
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/math/IntNum;->isOne()Z

    move-result v3

    if-nez v3, :cond_1

    .line 21
    move-object v3, v0

    move-object v4, v2

    invoke-static {v3, v4}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    move-object v0, v3

    .line 22
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    move-object v1, v3

    .line 24
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/math/IntNum;->isOne()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    :goto_0
    move-object v0, v3

    .end local v0    # "num":Lgnu/math/IntNum;
    return-object v0

    .restart local v0    # "num":Lgnu/math/IntNum;
    :cond_2
    new-instance v3, Lgnu/math/IntFraction;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lgnu/math/IntFraction;-><init>(Lgnu/math/IntNum;Lgnu/math/IntNum;)V

    goto :goto_0
.end method

.method public static neg(Lgnu/math/RatNum;)Lgnu/math/RatNum;
    .locals 5

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "x":Lgnu/math/RatNum;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v3

    move-object v1, v3

    .line 122
    .local v1, "x_num":Lgnu/math/IntNum;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v3

    move-object v2, v3

    .line 123
    .local v2, "x_den":Lgnu/math/IntNum;
    move-object v3, v1

    invoke-static {v3}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    move-object v4, v2

    invoke-static {v3, v4}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "x":Lgnu/math/RatNum;
    return-object v0
.end method

.method public static rationalize(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 4

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "x":Lgnu/math/RealNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/RealNum;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    move-object v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v2

    move-object v0, v2

    .line 192
    .end local v0    # "x":Lgnu/math/RealNum;
    :goto_0
    return-object v0

    .line 184
    .restart local v0    # "x":Lgnu/math/RealNum;
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 185
    move-object v2, v0

    move-object v0, v2

    goto :goto_0

    .line 186
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/RealNum;->sign()I

    move-result v2

    if-lez v2, :cond_2

    .line 187
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 188
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/RealNum;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v2

    check-cast v2, Lgnu/math/RealNum;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v3

    check-cast v3, Lgnu/math/RealNum;

    invoke-static {v2, v3}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v2

    check-cast v2, Lgnu/math/RealNum;

    move-object v0, v2

    goto :goto_0

    .line 192
    :cond_3
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private static simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 10

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "x":Lgnu/math/RealNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/RealNum;
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v6

    move-object v2, v6

    .line 198
    .local v2, "fx":Lgnu/math/RealNum;
    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v6

    move-object v3, v6

    .line 199
    .local v3, "fy":Lgnu/math/RealNum;
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 200
    move-object v6, v2

    move-object v0, v6

    .line 209
    .end local v0    # "x":Lgnu/math/RealNum;
    :goto_0
    return-object v0

    .line 201
    .restart local v0    # "x":Lgnu/math/RealNum;
    :cond_0
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/math/RealNum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 203
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v6

    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v7, v8}, Lgnu/math/RealNum;->sub(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v6

    check-cast v6, Lgnu/math/RealNum;

    move-object v4, v6

    .line 204
    .local v4, "n":Lgnu/math/RealNum;
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v6

    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Lgnu/math/RealNum;->sub(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v6

    check-cast v6, Lgnu/math/RealNum;

    move-object v5, v6

    .line 205
    .local v5, "d":Lgnu/math/RealNum;
    move-object v6, v2

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v7

    move-object v8, v4

    move-object v9, v5

    invoke-static {v8, v9}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lgnu/math/RealNum;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v6

    check-cast v6, Lgnu/math/RealNum;

    move-object v0, v6

    goto :goto_0

    .line 209
    .end local v4    # "n":Lgnu/math/RealNum;
    .end local v5    # "d":Lgnu/math/RealNum;
    :cond_1
    move-object v6, v2

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lgnu/math/RealNum;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v6

    check-cast v6, Lgnu/math/RealNum;

    move-object v0, v6

    goto :goto_0
.end method

.method public static times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;
    .locals 5

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "x":Lgnu/math/RatNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/RatNum;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v3, v4}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x":Lgnu/math/RatNum;
    return-object v0
.end method

.method public static valueOf(Ljava/math/BigDecimal;)Lgnu/math/RatNum;
    .locals 6

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "value":Ljava/math/BigDecimal;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v1, v4

    .line 32
    .local v1, "v":Lgnu/math/RatNum;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    move v2, v4

    .line 33
    .local v2, "scale":I
    :goto_0
    move v4, v2

    const/16 v5, 0x9

    if-lt v4, v5, :cond_0

    .line 34
    move-object v4, v1

    sget-object v5, Lgnu/math/RatNum;->ten_exp_9:Lgnu/math/IntNum;

    invoke-static {v4, v5}, Lgnu/math/RatNum;->divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v4

    move-object v1, v4

    .line 33
    add-int/lit8 v2, v2, -0x9

    goto :goto_0

    .line 35
    :cond_0
    :goto_1
    move v4, v2

    const/16 v5, -0x9

    if-gt v4, v5, :cond_1

    .line 36
    move-object v4, v1

    sget-object v5, Lgnu/math/RatNum;->ten_exp_9:Lgnu/math/IntNum;

    invoke-static {v4, v5}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v4

    move-object v1, v4

    .line 35
    add-int/lit8 v2, v2, 0x9

    goto :goto_1

    .line 38
    :cond_1
    move v4, v2

    if-lez v4, :cond_2

    move v4, v2

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 49
    move-object v4, v1

    move-object v0, v4

    .line 54
    .end local v0    # "value":Ljava/math/BigDecimal;
    :goto_3
    return-object v0

    .line 38
    .restart local v0    # "value":Ljava/math/BigDecimal;
    :cond_2
    move v4, v2

    neg-int v4, v4

    goto :goto_2

    .line 40
    :pswitch_0
    const/16 v4, 0xa

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v3, v4

    .line 51
    .local v3, "scaleVal":Lgnu/math/IntNum;
    :goto_4
    move v4, v2

    if-lez v4, :cond_3

    .line 52
    move-object v4, v1

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/math/RatNum;->divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v4

    move-object v0, v4

    goto :goto_3

    .line 41
    .end local v3    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_1
    const/16 v4, 0x64

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "scaleVal":Lgnu/math/IntNum;
    goto :goto_4

    .line 42
    .end local v3    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_2
    const/16 v4, 0x3e8

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "scaleVal":Lgnu/math/IntNum;
    goto :goto_4

    .line 43
    .end local v3    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_3
    const/16 v4, 0x2710

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "scaleVal":Lgnu/math/IntNum;
    goto :goto_4

    .line 44
    .end local v3    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_4
    const v4, 0x186a0

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "scaleVal":Lgnu/math/IntNum;
    goto :goto_4

    .line 45
    .end local v3    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_5
    const v4, 0xf4240

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "scaleVal":Lgnu/math/IntNum;
    goto :goto_4

    .line 46
    .end local v3    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_6
    const v4, 0x989680

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "scaleVal":Lgnu/math/IntNum;
    goto :goto_4

    .line 47
    .end local v3    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_7
    const v4, 0x5f5e100

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "scaleVal":Lgnu/math/IntNum;
    goto :goto_4

    .line 54
    :cond_3
    move-object v4, v1

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v4

    move-object v0, v4

    goto :goto_3

    .line 38
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
    .end packed-switch
.end method


# virtual methods
.method public abstract denominator()Lgnu/math/IntNum;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/math/RatNum;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lgnu/math/RatNum;

    if-nez v2, :cond_1

    .line 102
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 103
    .end local v0    # "this":Lgnu/math/RatNum;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/math/RatNum;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/RatNum;

    invoke-static {v2, v3}, Lgnu/math/RatNum;->equals(Lgnu/math/RatNum;Lgnu/math/RatNum;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public isExact()Z
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/math/RatNum;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/math/RatNum;
    return v0
.end method

.method public isZero()Z
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/math/RatNum;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/IntNum;->isZero()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/math/RatNum;
    return v0
.end method

.method public abstract numerator()Lgnu/math/IntNum;
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .locals 11

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lgnu/math/RatNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/IntNum;->isNegative()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 143
    const/4 v6, 0x1

    move v2, v6

    .line 144
    .local v2, "inv":Z
    move-object v6, v1

    invoke-static {v6}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v6

    move-object v1, v6

    .line 148
    :goto_0
    move-object v6, v1

    iget-object v6, v6, Lgnu/math/IntNum;->words:[I

    if-nez v6, :cond_2

    .line 150
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v6

    move-object v7, v1

    iget v7, v7, Lgnu/math/IntNum;->ival:I

    invoke-static {v6, v7}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v6

    move-object v3, v6

    .line 151
    .local v3, "num":Lgnu/math/IntNum;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v6

    move-object v7, v1

    iget v7, v7, Lgnu/math/IntNum;->ival:I

    invoke-static {v6, v7}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v6

    move-object v4, v6

    .line 152
    .local v4, "den":Lgnu/math/IntNum;
    move v6, v2

    if-eqz v6, :cond_1

    move-object v6, v4

    move-object v7, v3

    invoke-static {v6, v7}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v6

    :goto_1
    move-object v0, v6

    .line 159
    .end local v0    # "this":Lgnu/math/RatNum;
    .end local v3    # "num":Lgnu/math/IntNum;
    .end local v4    # "den":Lgnu/math/IntNum;
    :goto_2
    return-object v0

    .line 147
    .end local v2    # "inv":Z
    .restart local v0    # "this":Lgnu/math/RatNum;
    :cond_0
    const/4 v6, 0x0

    move v2, v6

    .restart local v2    # "inv":Z
    goto :goto_0

    .line 152
    .restart local v3    # "num":Lgnu/math/IntNum;
    .restart local v4    # "den":Lgnu/math/IntNum;
    :cond_1
    move-object v6, v3

    move-object v7, v4

    invoke-static {v6, v7}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v6

    goto :goto_1

    .line 154
    .end local v3    # "num":Lgnu/math/IntNum;
    .end local v4    # "den":Lgnu/math/IntNum;
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/math/RatNum;->doubleValue()D

    move-result-wide v6

    move-wide v3, v6

    .line 155
    .local v3, "d":D
    move-wide v6, v3

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_4

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/IntNum;->isOdd()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    :goto_3
    move v5, v6

    .line 156
    .local v5, "neg":Z
    move-wide v6, v3

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/math/IntNum;->doubleValue()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    move-wide v3, v6

    .line 157
    move v6, v2

    if-eqz v6, :cond_3

    .line 158
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide v8, v3

    div-double/2addr v6, v8

    move-wide v3, v6

    .line 159
    :cond_3
    new-instance v6, Lgnu/math/DFloNum;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move v8, v5

    if-eqz v8, :cond_5

    move-wide v8, v3

    neg-double v8, v8

    :goto_4
    invoke-direct {v7, v8, v9}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v0, v6

    goto :goto_2

    .line 155
    .end local v5    # "neg":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 159
    .restart local v5    # "neg":Z
    :cond_5
    move-wide v8, v3

    goto :goto_4
.end method

.method public final rneg()Lgnu/math/RatNum;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lgnu/math/RatNum;
    move-object v1, v0

    invoke-static {v1}, Lgnu/math/RatNum;->neg(Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/RatNum;
    return-object v0
.end method

.method public bridge synthetic rneg()Lgnu/math/RealNum;
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/math/RatNum;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/RatNum;->rneg()Lgnu/math/RatNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/RatNum;
    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Complex;
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/math/RatNum;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/RatNum;->toExact()Lgnu/math/RatNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/RatNum;
    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/math/RatNum;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/RatNum;->toExact()Lgnu/math/RatNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/RatNum;
    return-object v0
.end method

.method public final toExact()Lgnu/math/RatNum;
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lgnu/math/RatNum;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/RatNum;
    return-object v0
.end method

.method public toExactInt(I)Lgnu/math/IntNum;
    .locals 5

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lgnu/math/RatNum;
    move v1, p1

    .local v1, "rounding_mode":I
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v3

    move v4, v1

    invoke-static {v2, v3, v4}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/RatNum;
    return-object v0
.end method

.method public toInt(I)Lgnu/math/RealNum;
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lgnu/math/RatNum;
    move v1, p1

    .local v1, "rounding_mode":I
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v3

    move v4, v1

    invoke-static {v2, v3, v4}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/RatNum;
    return-object v0
.end method
