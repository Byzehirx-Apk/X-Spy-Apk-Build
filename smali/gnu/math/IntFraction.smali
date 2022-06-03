.class public Lgnu/math/IntFraction;
.super Lgnu/math/RatNum;
.source "IntFraction.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field den:Lgnu/math/IntNum;

.field num:Lgnu/math/IntNum;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/math/RatNum;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lgnu/math/IntNum;Lgnu/math/IntNum;)V
    .locals 5

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, p1

    .local v1, "num":Lgnu/math/IntNum;
    move-object v2, p2

    .local v2, "den":Lgnu/math/IntNum;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/math/RatNum;-><init>()V

    .line 22
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    .line 23
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    .line 24
    return-void
.end method

.method public static neg(Lgnu/math/IntFraction;)Lgnu/math/IntFraction;
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntFraction;
    new-instance v1, Lgnu/math/IntFraction;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/IntFraction;->numerator()Lgnu/math/IntNum;

    move-result-object v3

    invoke-static {v3}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/IntFraction;->denominator()Lgnu/math/IntNum;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgnu/math/IntFraction;-><init>(Lgnu/math/IntNum;Lgnu/math/IntNum;)V

    move-object v0, v1

    .end local v0    # "x":Lgnu/math/IntFraction;
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move v2, p2

    .local v2, "k":I
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/RatNum;

    if-eqz v3, :cond_0

    .line 48
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/math/RatNum;

    move v5, v2

    invoke-static {v3, v4, v5}, Lgnu/math/RatNum;->add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;

    move-result-object v3

    move-object v0, v3

    .line 51
    .end local v0    # "this":Lgnu/math/IntFraction;
    :goto_0
    return-object v0

    .line 49
    .restart local v0    # "this":Lgnu/math/IntFraction;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/Numeric;

    if-nez v3, :cond_1

    .line 50
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 51
    :cond_1
    move-object v3, v1

    check-cast v3, Lgnu/math/Numeric;

    move-object v4, v0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move v2, p2

    .local v2, "k":I
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/RatNum;

    if-nez v3, :cond_0

    .line 57
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 58
    :cond_0
    move-object v3, v1

    check-cast v3, Lgnu/math/RatNum;

    move-object v4, v0

    move v5, v2

    invoke-static {v3, v4, v5}, Lgnu/math/RatNum;->add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/math/IntFraction;
    return-object v0
.end method

.method public final compare(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/RatNum;

    if-eqz v2, :cond_0

    .line 36
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/RatNum;

    invoke-static {v2, v3}, Lgnu/math/RatNum;->compare(Lgnu/math/RatNum;Lgnu/math/RatNum;)I

    move-result v2

    move v0, v2

    .line 37
    .end local v0    # "this":Lgnu/math/IntFraction;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/math/IntFraction;
    :cond_0
    move-object v2, v1

    check-cast v2, Lgnu/math/RealNum;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/math/RealNum;->compareReversed(Lgnu/math/Numeric;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public compareReversed(Lgnu/math/Numeric;)I
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move-object v2, v1

    check-cast v2, Lgnu/math/RatNum;

    move-object v3, v0

    invoke-static {v2, v3}, Lgnu/math/RatNum;->compare(Lgnu/math/RatNum;Lgnu/math/RatNum;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/math/IntFraction;
    return v0
.end method

.method public final denominator()Lgnu/math/IntNum;
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/IntFraction;
    return-object v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/RatNum;

    if-eqz v2, :cond_0

    .line 80
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/RatNum;

    invoke-static {v2, v3}, Lgnu/math/RatNum;->divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v2

    move-object v0, v2

    .line 83
    .end local v0    # "this":Lgnu/math/IntFraction;
    :goto_0
    return-object v0

    .line 81
    .restart local v0    # "this":Lgnu/math/IntFraction;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Numeric;

    if-nez v2, :cond_1

    .line 82
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 83
    :cond_1
    move-object v2, v1

    check-cast v2, Lgnu/math/Numeric;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 5

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/RatNum;

    if-nez v2, :cond_0

    .line 89
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 90
    :cond_0
    move-object v2, v1

    check-cast v2, Lgnu/math/RatNum;

    move-object v3, v0

    invoke-static {v2, v3}, Lgnu/math/RatNum;->divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/IntFraction;
    return-object v0
.end method

.method public doubleValue()D
    .locals 14

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v8, v0

    iget-object v8, v8, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-virtual {v8}, Lgnu/math/IntNum;->isNegative()Z

    move-result v8

    move v1, v8

    .line 112
    .local v1, "neg":Z
    move-object v8, v0

    iget-object v8, v8, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    invoke-virtual {v8}, Lgnu/math/IntNum;->isZero()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 113
    move v8, v1

    if-eqz v8, :cond_0

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_0
    move-wide v0, v8

    .line 137
    .end local v0    # "this":Lgnu/math/IntFraction;
    :goto_1
    return-wide v0

    .line 113
    .restart local v0    # "this":Lgnu/math/IntFraction;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-virtual {v8}, Lgnu/math/IntNum;->isZero()Z

    move-result v8

    if-eqz v8, :cond_1

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0

    :cond_1
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 116
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    move-object v2, v8

    .line 117
    .local v2, "n":Lgnu/math/IntNum;
    move v8, v1

    if-eqz v8, :cond_3

    .line 118
    move-object v8, v2

    invoke-static {v8}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v8

    move-object v2, v8

    .line 119
    :cond_3
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/math/IntNum;->intLength()I

    move-result v8

    move v3, v8

    .line 120
    .local v3, "num_len":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    invoke-virtual {v8}, Lgnu/math/IntNum;->intLength()I

    move-result v8

    move v4, v8

    .line 121
    .local v4, "den_len":I
    const/4 v8, 0x0

    move v5, v8

    .line 122
    .local v5, "exp":I
    move v8, v3

    move v9, v4

    const/16 v10, 0x36

    add-int/lit8 v9, v9, 0x36

    if-ge v8, v9, :cond_4

    .line 124
    move v8, v4

    const/16 v9, 0x36

    add-int/lit8 v8, v8, 0x36

    move v9, v3

    sub-int/2addr v8, v9

    move v5, v8

    .line 125
    move-object v8, v2

    move v9, v5

    invoke-static {v8, v9}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v8

    move-object v2, v8

    .line 126
    move v8, v5

    neg-int v8, v8

    move v5, v8

    .line 131
    :cond_4
    new-instance v8, Lgnu/math/IntNum;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lgnu/math/IntNum;-><init>()V

    move-object v6, v8

    .line 132
    .local v6, "quot":Lgnu/math/IntNum;
    new-instance v8, Lgnu/math/IntNum;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lgnu/math/IntNum;-><init>()V

    move-object v7, v8

    .line 133
    .local v7, "remainder":Lgnu/math/IntNum;
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    move-object v10, v6

    move-object v11, v7

    const/4 v12, 0x3

    invoke-static {v8, v9, v10, v11, v12}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 134
    move-object v8, v6

    invoke-virtual {v8}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v8

    move-object v6, v8

    .line 135
    move-object v8, v7

    invoke-virtual {v8}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v8

    move-object v7, v8

    .line 137
    move-object v8, v6

    move v9, v5

    move v10, v1

    move-object v11, v7

    invoke-virtual {v11}, Lgnu/math/IntNum;->isZero()Z

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v8, v9, v10, v11}, Lgnu/math/IntNum;->roundToDouble(IZZ)D

    move-result-wide v8

    move-wide v0, v8

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    goto :goto_2
.end method

.method public final isNegative()Z
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-virtual {v1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/math/IntFraction;
    return v0
.end method

.method public longValue()J
    .locals 3

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lgnu/math/IntFraction;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lgnu/math/IntFraction;
    return-wide v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/RatNum;

    if-eqz v2, :cond_0

    .line 64
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/RatNum;

    invoke-static {v2, v3}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v2

    move-object v0, v2

    .line 67
    .end local v0    # "this":Lgnu/math/IntFraction;
    :goto_0
    return-object v0

    .line 65
    .restart local v0    # "this":Lgnu/math/IntFraction;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Numeric;

    if-nez v2, :cond_1

    .line 66
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 67
    :cond_1
    move-object v2, v1

    check-cast v2, Lgnu/math/Numeric;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/RatNum;

    if-nez v2, :cond_0

    .line 73
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 74
    :cond_0
    move-object v2, v1

    check-cast v2, Lgnu/math/RatNum;

    move-object v3, v0

    invoke-static {v2, v3}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/IntFraction;
    return-object v0
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, v0

    invoke-static {v1}, Lgnu/math/IntFraction;->neg(Lgnu/math/IntFraction;)Lgnu/math/IntFraction;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/IntFraction;
    return-object v0
.end method

.method public final numerator()Lgnu/math/IntNum;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/IntFraction;
    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/math/IntNum;

    iput-object v3, v2, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    .line 162
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/math/IntNum;

    iput-object v3, v2, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    .line 163
    return-void
.end method

.method public final sign()I
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-virtual {v1}, Lgnu/math/IntNum;->sign()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/math/IntFraction;
    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move v1, p1

    .local v1, "radix":I
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/IntFraction;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lgnu/math/IntFraction;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 151
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 152
    return-void
.end method
