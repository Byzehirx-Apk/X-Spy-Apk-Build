.class public Landroidx/core/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Landroidx/core/math/MathUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(DDD)D
    .locals 10

    .prologue
    .line 60
    move-wide v0, p0

    .local v0, "value":D
    move-wide v2, p2

    .local v2, "min":D
    move-wide v4, p4

    .local v4, "max":D
    move-wide v6, v0

    move-wide v8, v2

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 61
    move-wide v6, v2

    move-wide v0, v6

    .line 65
    .end local v0    # "value":D
    :goto_0
    return-wide v0

    .line 62
    .restart local v0    # "value":D
    :cond_0
    move-wide v6, v0

    move-wide v8, v4

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 63
    move-wide v6, v4

    move-wide v0, v6

    goto :goto_0

    .line 65
    :cond_1
    move-wide v6, v0

    move-wide v0, v6

    goto :goto_0
.end method

.method public static clamp(FFF)F
    .locals 5

    .prologue
    .line 39
    move v0, p0

    .local v0, "value":F
    move v1, p1

    .local v1, "min":F
    move v2, p2

    .local v2, "max":F
    move v3, v0

    move v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 40
    move v3, v1

    move v0, v3

    .line 44
    .end local v0    # "value":F
    :goto_0
    return v0

    .line 41
    .restart local v0    # "value":F
    :cond_0
    move v3, v0

    move v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 42
    move v3, v2

    move v0, v3

    goto :goto_0

    .line 44
    :cond_1
    move v3, v0

    move v0, v3

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 5

    .prologue
    .line 81
    move v0, p0

    .local v0, "value":I
    move v1, p1

    .local v1, "min":I
    move v2, p2

    .local v2, "max":I
    move v3, v0

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 82
    move v3, v1

    move v0, v3

    .line 86
    .end local v0    # "value":I
    :goto_0
    return v0

    .line 83
    .restart local v0    # "value":I
    :cond_0
    move v3, v0

    move v4, v2

    if-le v3, v4, :cond_1

    .line 84
    move v3, v2

    move v0, v3

    goto :goto_0

    .line 86
    :cond_1
    move v3, v0

    move v0, v3

    goto :goto_0
.end method
