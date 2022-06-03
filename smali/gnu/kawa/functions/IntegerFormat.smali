.class public Lgnu/kawa/functions/IntegerFormat;
.super Lgnu/text/IntegerFormat;
.source "IntegerFormat.java"


# static fields
.field private static plainDecimalFormat:Lgnu/kawa/functions/IntegerFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/IntegerFormat;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/text/IntegerFormat;-><init>()V

    .line 14
    return-void
.end method

.method public static getInstance()Lgnu/kawa/functions/IntegerFormat;
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lgnu/kawa/functions/IntegerFormat;->plainDecimalFormat:Lgnu/kawa/functions/IntegerFormat;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lgnu/kawa/functions/IntegerFormat;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/functions/IntegerFormat;-><init>()V

    sput-object v0, Lgnu/kawa/functions/IntegerFormat;->plainDecimalFormat:Lgnu/kawa/functions/IntegerFormat;

    .line 22
    :cond_0
    sget-object v0, Lgnu/kawa/functions/IntegerFormat;->plainDecimalFormat:Lgnu/kawa/functions/IntegerFormat;

    return-object v0
.end method

.method public static getInstance(IIIIII)Ljava/text/Format;
    .locals 10

    .prologue
    .line 29
    move v0, p0

    .local v0, "base":I
    move v1, p1

    .local v1, "minWidth":I
    move v2, p2

    .local v2, "padChar":I
    move v3, p3

    .local v3, "commaChar":I
    move v4, p4

    .local v4, "commaInterval":I
    move v5, p5

    .local v5, "flags":I
    move v7, v0

    const/high16 v8, -0x40000000    # -2.0f

    if-ne v7, v8, :cond_3

    .line 31
    move v7, v2

    const/high16 v8, -0x40000000    # -2.0f

    if-ne v7, v8, :cond_2

    move v7, v2

    const/high16 v8, -0x40000000    # -2.0f

    if-ne v7, v8, :cond_2

    move v7, v3

    const/high16 v8, -0x40000000    # -2.0f

    if-ne v7, v8, :cond_2

    move v7, v4

    const/high16 v8, -0x40000000    # -2.0f

    if-ne v7, v8, :cond_2

    .line 37
    move v7, v5

    const/4 v8, 0x1

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v6, v7

    .line 38
    .local v6, "seenColon":Z
    move v7, v5

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    .line 39
    move v7, v6

    invoke-static {v7}, Lgnu/text/RomanIntegerFormat;->getInstance(Z)Lgnu/text/RomanIntegerFormat;

    move-result-object v7

    move-object v0, v7

    .line 60
    .end local v0    # "base":I
    .end local v6    # "seenColon":Z
    :goto_1
    return-object v0

    .line 37
    .restart local v0    # "base":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 41
    .restart local v6    # "seenColon":Z
    :cond_1
    move v7, v6

    invoke-static {v7}, Lgnu/text/EnglishIntegerFormat;->getInstance(Z)Lgnu/text/EnglishIntegerFormat;

    move-result-object v7

    move-object v0, v7

    goto :goto_1

    .line 43
    .end local v6    # "seenColon":Z
    :cond_2
    const/16 v7, 0xa

    move v0, v7

    .line 45
    :cond_3
    move v7, v1

    const/high16 v8, -0x40000000    # -2.0f

    if-ne v7, v8, :cond_4

    const/4 v7, 0x1

    move v1, v7

    .line 46
    :cond_4
    move v7, v2

    const/high16 v8, -0x40000000    # -2.0f

    if-ne v7, v8, :cond_5

    const/16 v7, 0x20

    move v2, v7

    .line 47
    :cond_5
    move v7, v3

    const/high16 v8, -0x40000000    # -2.0f

    if-ne v7, v8, :cond_6

    const/16 v7, 0x2c

    move v3, v7

    .line 48
    :cond_6
    move v7, v4

    const/high16 v8, -0x40000000    # -2.0f

    if-ne v7, v8, :cond_7

    const/4 v7, 0x3

    move v4, v7

    .line 49
    :cond_7
    move v7, v0

    const/16 v8, 0xa

    if-ne v7, v8, :cond_8

    move v7, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    move v7, v2

    const/16 v8, 0x20

    if-ne v7, v8, :cond_8

    move v7, v3

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_8

    move v7, v4

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    move v7, v5

    if-nez v7, :cond_8

    .line 52
    invoke-static {}, Lgnu/kawa/functions/IntegerFormat;->getInstance()Lgnu/kawa/functions/IntegerFormat;

    move-result-object v7

    move-object v0, v7

    goto :goto_1

    .line 53
    :cond_8
    new-instance v7, Lgnu/kawa/functions/IntegerFormat;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Lgnu/kawa/functions/IntegerFormat;-><init>()V

    move-object v6, v7

    .line 54
    .local v6, "fmt":Lgnu/kawa/functions/IntegerFormat;
    move-object v7, v6

    move v8, v0

    iput v8, v7, Lgnu/kawa/functions/IntegerFormat;->base:I

    .line 55
    move-object v7, v6

    move v8, v1

    iput v8, v7, Lgnu/kawa/functions/IntegerFormat;->minWidth:I

    .line 56
    move-object v7, v6

    move v8, v2

    iput v8, v7, Lgnu/kawa/functions/IntegerFormat;->padChar:I

    .line 57
    move-object v7, v6

    move v8, v3

    iput v8, v7, Lgnu/kawa/functions/IntegerFormat;->commaChar:I

    .line 58
    move-object v7, v6

    move v8, v4

    iput v8, v7, Lgnu/kawa/functions/IntegerFormat;->commaInterval:I

    .line 59
    move-object v7, v6

    move v8, v5

    iput v8, v7, Lgnu/kawa/functions/IntegerFormat;->flags:I

    .line 60
    move-object v7, v6

    move-object v0, v7

    goto :goto_1
.end method


# virtual methods
.method public convertToIntegerString(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/IntegerFormat;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move v2, p2

    .local v2, "radix":I
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/RealNum;

    if-eqz v3, :cond_0

    .line 66
    move-object v3, v1

    check-cast v3, Lgnu/math/RealNum;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lgnu/math/RealNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 68
    .end local v0    # "this":Lgnu/kawa/functions/IntegerFormat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/functions/IntegerFormat;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Lgnu/text/IntegerFormat;->convertToIntegerString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method
