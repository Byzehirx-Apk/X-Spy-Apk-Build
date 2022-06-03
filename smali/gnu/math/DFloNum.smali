.class public Lgnu/math/DFloNum;
.super Lgnu/math/RealNum;
.source "DFloNum.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final one:Lgnu/math/DFloNum;


# instance fields
.field value:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 111
    new-instance v0, Lgnu/math/DFloNum;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    sput-object v0, Lgnu/math/DFloNum;->one:Lgnu/math/DFloNum;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/math/DFloNum;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/math/RealNum;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(D)V
    .locals 7

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/math/DFloNum;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-direct {v3}, Lgnu/math/RealNum;-><init>()V

    .line 17
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lgnu/math/DFloNum;->value:D

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/math/DFloNum;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/math/RealNum;-><init>()V

    .line 22
    move-object v3, v1

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    move-object v2, v3

    .line 23
    .local v2, "d":Ljava/lang/Double;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v3, Lgnu/math/DFloNum;->value:D

    .line 37
    move-object v3, v0

    iget-wide v3, v3, Lgnu/math/DFloNum;->value:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 38
    move-object v3, v0

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, v3, Lgnu/math/DFloNum;->value:D

    .line 39
    :cond_0
    return-void
.end method

.method public static asDFloNumOrNull(Ljava/lang/Object;)Lgnu/math/DFloNum;
    .locals 7

    .prologue
    .line 48
    move-object v1, p0

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/DFloNum;

    if-eqz v2, :cond_0

    .line 49
    move-object v2, v1

    check-cast v2, Lgnu/math/DFloNum;

    move-object v1, v2

    .line 52
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 50
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/RealNum;

    if-nez v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 51
    :cond_1
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

    .line 52
    :cond_2
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0
.end method

.method public static compare(DD)I
    .locals 8

    .prologue
    .line 152
    move-wide v0, p0

    .local v0, "x":D
    move-wide v2, p2

    .local v2, "y":D
    move-wide v4, v0

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "x":D
    return v0

    .restart local v0    # "x":D
    :cond_0
    move-wide v4, v0

    move-wide v6, v2

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    move-wide v4, v0

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, -0x2

    goto :goto_0
.end method

.method public static compare(Lgnu/math/IntNum;Lgnu/math/IntNum;D)I
    .locals 14

    .prologue
    .line 158
    move-object v1, p0

    .local v1, "x_num":Lgnu/math/IntNum;
    move-object v2, p1

    .local v2, "x_den":Lgnu/math/IntNum;
    move-wide/from16 v3, p2

    .local v3, "y":D
    move-wide v10, v3

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 159
    const/4 v10, -0x2

    move v1, v10

    .line 185
    .end local v1    # "x_num":Lgnu/math/IntNum;
    :goto_0
    return v1

    .line 160
    .restart local v1    # "x_num":Lgnu/math/IntNum;
    :cond_0
    move-wide v10, v3

    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 162
    move-wide v10, v3

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_1

    const/4 v10, -0x1

    :goto_1
    move v5, v10

    .line 163
    .local v5, "result":I
    move-object v10, v2

    invoke-virtual {v10}, Lgnu/math/IntNum;->isZero()Z

    move-result v10

    if-nez v10, :cond_2

    .line 164
    move v10, v5

    move v1, v10

    goto :goto_0

    .line 162
    .end local v5    # "result":I
    :cond_1
    const/4 v10, 0x1

    goto :goto_1

    .line 165
    .restart local v5    # "result":I
    :cond_2
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/math/IntNum;->isZero()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 166
    const/4 v10, -0x2

    move v1, v10

    goto :goto_0

    .line 167
    :cond_3
    move v10, v5

    const/4 v11, 0x1

    shr-int/lit8 v10, v10, 0x1

    move v5, v10

    .line 168
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/math/IntNum;->isNegative()Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v5

    :goto_2
    move v1, v10

    goto :goto_0

    :cond_4
    move v10, v5

    const/4 v11, -0x1

    xor-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 172
    .end local v5    # "result":I
    :cond_5
    move-wide v10, v3

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v10

    move-wide v5, v10

    .line 173
    .local v5, "bits":J
    move-wide v10, v5

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_6

    const/4 v10, 0x1

    :goto_3
    move v7, v10

    .line 174
    .local v7, "neg":Z
    move-wide v10, v5

    const/16 v12, 0x34

    shr-long/2addr v10, v12

    long-to-int v10, v10

    const/16 v11, 0x7ff

    and-int/lit16 v10, v10, 0x7ff

    move v8, v10

    .line 175
    .local v8, "exp":I
    move-wide v10, v5

    const-wide v12, 0xfffffffffffffL

    and-long/2addr v10, v12

    move-wide v5, v10

    .line 176
    move v10, v8

    if-nez v10, :cond_7

    .line 177
    move-wide v10, v5

    const/4 v12, 0x1

    shl-long/2addr v10, v12

    move-wide v5, v10

    .line 180
    :goto_4
    move v10, v7

    if-eqz v10, :cond_8

    move-wide v10, v5

    neg-long v10, v10

    :goto_5
    invoke-static {v10, v11}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v10

    move-object v9, v10

    .line 181
    .local v9, "y_num":Lgnu/math/IntNum;
    move v10, v8

    const/16 v11, 0x433

    if-lt v10, v11, :cond_9

    .line 182
    move-object v10, v9

    move v11, v8

    const/16 v12, 0x433

    add-int/lit16 v11, v11, -0x433

    invoke-static {v10, v11}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v10

    move-object v9, v10

    .line 185
    :goto_6
    move-object v10, v1

    move-object v11, v9

    move-object v12, v2

    invoke-static {v11, v12}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v11

    invoke-static {v10, v11}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v10

    move v1, v10

    goto/16 :goto_0

    .line 173
    .end local v7    # "neg":Z
    .end local v8    # "exp":I
    .end local v9    # "y_num":Lgnu/math/IntNum;
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 179
    .restart local v7    # "neg":Z
    .restart local v8    # "exp":I
    :cond_7
    move-wide v10, v5

    const-wide/high16 v12, 0x10000000000000L

    or-long/2addr v10, v12

    move-wide v5, v10

    goto :goto_4

    .line 180
    :cond_8
    move-wide v10, v5

    goto :goto_5

    .line 184
    .restart local v9    # "y_num":Lgnu/math/IntNum;
    :cond_9
    move-object v10, v1

    const/16 v11, 0x433

    move v12, v8

    rsub-int v11, v12, 0x433

    invoke-static {v10, v11}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v10

    move-object v1, v10

    goto :goto_6
.end method

.method public static make(D)Lgnu/math/DFloNum;
    .locals 8

    .prologue
    .line 43
    move-wide v0, p0

    .local v0, "value":D
    new-instance v2, Lgnu/math/DFloNum;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-wide v4, v0

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v0, v2

    .end local v0    # "value":D
    return-object v0
.end method

.method public static final one()Lgnu/math/DFloNum;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lgnu/math/DFloNum;->one:Lgnu/math/DFloNum;

    return-object v0
.end method

.method public static toExact(D)Lgnu/math/RatNum;
    .locals 14

    .prologue
    .line 223
    move-wide v1, p0

    .local v1, "value":D
    move-wide v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 224
    move-wide v8, v1

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Lgnu/math/RatNum;->infinity(I)Lgnu/math/RatNum;

    move-result-object v8

    move-object v1, v8

    .line 239
    .end local v1    # "value":D
    .local v3, "bits":J
    .local v5, "neg":Z
    .local v6, "exp":I
    .local v7, "mant":Lgnu/math/IntNum;
    :goto_1
    return-object v1

    .line 224
    .end local v3    # "bits":J
    .end local v5    # "neg":Z
    .end local v6    # "exp":I
    .end local v7    # "mant":Lgnu/math/IntNum;
    .restart local v1    # "value":D
    :cond_0
    const/4 v8, -0x1

    goto :goto_0

    .line 225
    :cond_1
    move-wide v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 226
    new-instance v8, Ljava/lang/ArithmeticException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "cannot convert NaN to exact rational"

    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 227
    :cond_2
    move-wide v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    move-wide v3, v8

    .line 228
    .restart local v3    # "bits":J
    move-wide v8, v3

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    move v5, v8

    .line 229
    .restart local v5    # "neg":Z
    move-wide v8, v3

    const/16 v10, 0x34

    shr-long/2addr v8, v10

    long-to-int v8, v8

    const/16 v9, 0x7ff

    and-int/lit16 v8, v8, 0x7ff

    move v6, v8

    .line 230
    .restart local v6    # "exp":I
    move-wide v8, v3

    const-wide v10, 0xfffffffffffffL

    and-long/2addr v8, v10

    move-wide v3, v8

    .line 231
    move v8, v6

    if-nez v8, :cond_4

    .line 232
    move-wide v8, v3

    const/4 v10, 0x1

    shl-long/2addr v8, v10

    move-wide v3, v8

    .line 235
    :goto_3
    move v8, v5

    if-eqz v8, :cond_5

    move-wide v8, v3

    neg-long v8, v8

    :goto_4
    invoke-static {v8, v9}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v8

    move-object v7, v8

    .line 236
    .restart local v7    # "mant":Lgnu/math/IntNum;
    move v8, v6

    const/16 v9, 0x433

    if-lt v8, v9, :cond_6

    .line 237
    move-object v8, v7

    move v9, v6

    const/16 v10, 0x433

    add-int/lit16 v9, v9, -0x433

    invoke-static {v8, v9}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v8

    move-object v1, v8

    goto :goto_1

    .line 228
    .end local v5    # "neg":Z
    .end local v6    # "exp":I
    .end local v7    # "mant":Lgnu/math/IntNum;
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 234
    .restart local v5    # "neg":Z
    .restart local v6    # "exp":I
    :cond_4
    move-wide v8, v3

    const-wide/high16 v10, 0x10000000000000L

    or-long/2addr v8, v10

    move-wide v3, v8

    goto :goto_3

    .line 235
    :cond_5
    move-wide v8, v3

    goto :goto_4

    .line 239
    .restart local v7    # "mant":Lgnu/math/IntNum;
    :cond_6
    move-object v8, v7

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v9

    const/16 v10, 0x433

    move v11, v6

    rsub-int v10, v11, 0x433

    invoke-static {v9, v10}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v9

    invoke-static {v8, v9}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v8

    move-object v1, v8

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 13

    .prologue
    .line 81
    move-object v1, p0

    .local v1, "this":Lgnu/math/DFloNum;
    move-object v2, p1

    .local v2, "y":Ljava/lang/Object;
    move v3, p2

    .local v3, "k":I
    move-object v4, v2

    instance-of v4, v4, Lgnu/math/RealNum;

    if-eqz v4, :cond_0

    .line 82
    new-instance v4, Lgnu/math/DFloNum;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    iget-wide v6, v6, Lgnu/math/DFloNum;->value:D

    move v8, v3

    int-to-double v8, v8

    move-object v10, v2

    check-cast v10, Lgnu/math/RealNum;

    invoke-virtual {v10}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-direct {v5, v6, v7}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v4

    .line 85
    .end local v1    # "this":Lgnu/math/DFloNum;
    :goto_0
    return-object v1

    .line 83
    .restart local v1    # "this":Lgnu/math/DFloNum;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Lgnu/math/Numeric;

    if-nez v4, :cond_1

    .line 84
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 85
    :cond_1
    move-object v4, v2

    check-cast v4, Lgnu/math/Numeric;

    move-object v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 13

    .prologue
    .line 90
    move-object v1, p0

    .local v1, "this":Lgnu/math/DFloNum;
    move-object v2, p1

    .local v2, "x":Lgnu/math/Numeric;
    move v3, p2

    .local v3, "k":I
    move-object v4, v2

    instance-of v4, v4, Lgnu/math/RealNum;

    if-eqz v4, :cond_0

    .line 91
    new-instance v4, Lgnu/math/DFloNum;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v2

    check-cast v6, Lgnu/math/RealNum;

    invoke-virtual {v6}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    move v8, v3

    int-to-double v8, v8

    move-object v10, v1

    iget-wide v10, v10, Lgnu/math/DFloNum;->value:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-direct {v5, v6, v7}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v4

    .end local v1    # "this":Lgnu/math/DFloNum;
    return-object v1

    .line 92
    .restart local v1    # "this":Lgnu/math/DFloNum;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 8

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lgnu/math/DFloNum;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lgnu/math/RatNum;

    if-eqz v4, :cond_1

    .line 193
    move-object v4, v1

    check-cast v4, Lgnu/math/RatNum;

    move-object v2, v4

    .line 194
    .local v2, "y_rat":Lgnu/math/RatNum;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v5

    move-object v6, v0

    iget-wide v6, v6, Lgnu/math/DFloNum;->value:D

    invoke-static {v4, v5, v6, v7}, Lgnu/math/DFloNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;D)I

    move-result v4

    move v3, v4

    .line 195
    .local v3, "i":I
    move v4, v3

    const/4 v5, -0x1

    if-ge v4, v5, :cond_0

    move v4, v3

    :goto_0
    move v0, v4

    .line 197
    .end local v0    # "this":Lgnu/math/DFloNum;
    .end local v2    # "y_rat":Lgnu/math/RatNum;
    .end local v3    # "i":I
    :goto_1
    return v0

    .line 195
    .restart local v0    # "this":Lgnu/math/DFloNum;
    .restart local v2    # "y_rat":Lgnu/math/RatNum;
    .restart local v3    # "i":I
    :cond_0
    move v4, v3

    neg-int v4, v4

    goto :goto_0

    .line 197
    .end local v2    # "y_rat":Lgnu/math/RatNum;
    .end local v3    # "i":I
    :cond_1
    move-object v4, v0

    iget-wide v4, v4, Lgnu/math/DFloNum;->value:D

    move-object v6, v1

    check-cast v6, Lgnu/math/RealNum;

    invoke-virtual {v6}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lgnu/math/DFloNum;->compare(DD)I

    move-result v4

    move v0, v4

    goto :goto_1
.end method

.method public compareReversed(Lgnu/math/Numeric;)I
    .locals 8

    .prologue
    .line 202
    move-object v1, p0

    .local v1, "this":Lgnu/math/DFloNum;
    move-object v2, p1

    .local v2, "x":Lgnu/math/Numeric;
    move-object v4, v2

    instance-of v4, v4, Lgnu/math/RatNum;

    if-eqz v4, :cond_0

    .line 204
    move-object v4, v2

    check-cast v4, Lgnu/math/RatNum;

    move-object v3, v4

    .line 205
    .local v3, "x_rat":Lgnu/math/RatNum;
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v5

    move-object v6, v1

    iget-wide v6, v6, Lgnu/math/DFloNum;->value:D

    invoke-static {v4, v5, v6, v7}, Lgnu/math/DFloNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;D)I

    move-result v4

    move v1, v4

    .line 207
    .end local v1    # "this":Lgnu/math/DFloNum;
    .end local v3    # "x_rat":Lgnu/math/RatNum;
    :goto_0
    return v1

    .restart local v1    # "this":Lgnu/math/DFloNum;
    :cond_0
    move-object v4, v2

    check-cast v4, Lgnu/math/RealNum;

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lgnu/math/DFloNum;->value:D

    invoke-static {v4, v5, v6, v7}, Lgnu/math/DFloNum;->compare(DD)I

    move-result v4

    move v1, v4

    goto :goto_0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 9

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/math/DFloNum;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/RealNum;

    if-eqz v2, :cond_0

    .line 117
    new-instance v2, Lgnu/math/DFloNum;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-wide v4, v4, Lgnu/math/DFloNum;->value:D

    move-object v6, v1

    check-cast v6, Lgnu/math/RealNum;

    invoke-virtual {v6}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v0, v2

    .line 120
    .end local v0    # "this":Lgnu/math/DFloNum;
    :goto_0
    return-object v0

    .line 118
    .restart local v0    # "this":Lgnu/math/DFloNum;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Numeric;

    if-nez v2, :cond_1

    .line 119
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 120
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
    .locals 9

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lgnu/math/DFloNum;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/RealNum;

    if-eqz v2, :cond_0

    .line 126
    new-instance v2, Lgnu/math/DFloNum;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    check-cast v4, Lgnu/math/RealNum;

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    move-object v6, v0

    iget-wide v6, v6, Lgnu/math/DFloNum;->value:D

    div-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/DFloNum;
    return-object v0

    .line 127
    .restart local v0    # "this":Lgnu/math/DFloNum;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public final doubleValue()D
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/math/DFloNum;
    move-object v1, v0

    iget-wide v1, v1, Lgnu/math/DFloNum;->value:D

    move-wide v0, v1

    .end local v0    # "this":Lgnu/math/DFloNum;
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/math/DFloNum;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lgnu/math/DFloNum;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lgnu/math/DFloNum;

    iget-wide v2, v2, Lgnu/math/DFloNum;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    move-object v4, v0

    iget-wide v4, v4, Lgnu/math/DFloNum;->value:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/math/DFloNum;
    return v0

    .restart local v0    # "this":Lgnu/math/DFloNum;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 67
    move-object v1, p0

    .local v1, "this":Lgnu/math/DFloNum;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/DFloNum;->value:D

    double-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Lgnu/math/DFloNum;
    return v1
.end method

.method public isExact()Z
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lgnu/math/DFloNum;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/math/DFloNum;
    return v0
.end method

.method public isNegative()Z
    .locals 6

    .prologue
    .line 137
    move-object v1, p0

    .local v1, "this":Lgnu/math/DFloNum;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/DFloNum;->value:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/math/DFloNum;
    return v1

    .restart local v1    # "this":Lgnu/math/DFloNum;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 6

    .prologue
    .line 217
    move-object v1, p0

    .local v1, "this":Lgnu/math/DFloNum;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/DFloNum;->value:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/math/DFloNum;
    return v1

    .restart local v1    # "this":Lgnu/math/DFloNum;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public longValue()J
    .locals 4

    .prologue
    .line 62
    move-object v1, p0

    .local v1, "this":Lgnu/math/DFloNum;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/DFloNum;->value:D

    double-to-long v2, v2

    move-wide v1, v2

    .end local v1    # "this":Lgnu/math/DFloNum;
    return-wide v1
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 9

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lgnu/math/DFloNum;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/RealNum;

    if-eqz v2, :cond_0

    .line 98
    new-instance v2, Lgnu/math/DFloNum;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-wide v4, v4, Lgnu/math/DFloNum;->value:D

    move-object v6, v1

    check-cast v6, Lgnu/math/RealNum;

    invoke-virtual {v6}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v0, v2

    .line 101
    .end local v0    # "this":Lgnu/math/DFloNum;
    :goto_0
    return-object v0

    .line 99
    .restart local v0    # "this":Lgnu/math/DFloNum;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Numeric;

    if-nez v2, :cond_1

    .line 100
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 101
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
    .locals 9

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lgnu/math/DFloNum;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/RealNum;

    if-eqz v2, :cond_0

    .line 107
    new-instance v2, Lgnu/math/DFloNum;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    check-cast v4, Lgnu/math/RealNum;

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    move-object v6, v0

    iget-wide v6, v6, Lgnu/math/DFloNum;->value:D

    mul-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/DFloNum;
    return-object v0

    .line 108
    .restart local v0    # "this":Lgnu/math/DFloNum;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 7

    .prologue
    .line 142
    move-object v1, p0

    .local v1, "this":Lgnu/math/DFloNum;
    new-instance v2, Lgnu/math/DFloNum;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/DFloNum;->value:D

    neg-double v4, v4

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v2

    .end local v1    # "this":Lgnu/math/DFloNum;
    return-object v1
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .locals 9

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lgnu/math/DFloNum;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    new-instance v2, Lgnu/math/DFloNum;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/math/IntNum;->doubleValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/DFloNum;
    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 268
    move-object v1, p0

    .local v1, "this":Lgnu/math/DFloNum;
    move-object v2, p1

    .local v2, "in":Ljava/io/ObjectInput;
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v4

    iput-wide v4, v3, Lgnu/math/DFloNum;->value:D

    .line 269
    return-void
.end method

.method public sign()I
    .locals 6

    .prologue
    .line 147
    move-object v1, p0

    .local v1, "this":Lgnu/math/DFloNum;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/DFloNum;->value:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/math/DFloNum;
    return v1

    .restart local v1    # "this":Lgnu/math/DFloNum;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/DFloNum;->value:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/DFloNum;->value:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 244
    move-object v1, p0

    .local v1, "this":Lgnu/math/DFloNum;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/DFloNum;->value:D

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const-string/jumbo v2, "+inf.0"

    :goto_0
    move-object v1, v2

    .end local v1    # "this":Lgnu/math/DFloNum;
    return-object v1

    .restart local v1    # "this":Lgnu/math/DFloNum;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/DFloNum;->value:D

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    const-string/jumbo v2, "-inf.0"

    goto :goto_0

    :cond_1
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/DFloNum;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "+nan.0"

    goto :goto_0

    :cond_2
    move-object v2, v1

    iget-wide v2, v2, Lgnu/math/DFloNum;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lgnu/math/DFloNum;
    move v1, p1

    .local v1, "radix":I
    move v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 253
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/DFloNum;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 254
    .end local v0    # "this":Lgnu/math/DFloNum;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/math/DFloNum;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "#d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/math/DFloNum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    move-object v1, p0

    .local v1, "this":Lgnu/math/DFloNum;
    move-object v2, p1

    .local v2, "out":Ljava/io/ObjectOutput;
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/DFloNum;->value:D

    invoke-interface {v3, v4, v5}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 263
    return-void
.end method
