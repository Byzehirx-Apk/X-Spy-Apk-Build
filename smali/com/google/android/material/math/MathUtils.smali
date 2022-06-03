.class public final Lcom/google/android/material/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field public static final DEFAULT_EPSILON:F = 1.0E-4f


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/math/MathUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dist(FFFF)F
    .locals 10

    .prologue
    .line 28
    move v0, p0

    .local v0, "x1":F
    move v1, p1

    .local v1, "y1":F
    move v2, p2

    .local v2, "x2":F
    move v3, p3

    .local v3, "y2":F
    move v6, v2

    move v7, v0

    sub-float/2addr v6, v7

    move v4, v6

    .line 29
    .local v4, "x":F
    move v6, v3

    move v7, v1

    sub-float/2addr v6, v7

    move v5, v6

    .line 30
    .local v5, "y":F
    move v6, v4

    float-to-double v6, v6

    move v8, v5

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    move v0, v6

    .end local v0    # "x1":F
    return v0
.end method

.method public static distanceToFurthestCorner(FFFFFF)F
    .locals 13

    .prologue
    .line 65
    move v0, p0

    .local v0, "pointX":F
    move v1, p1

    .local v1, "pointY":F
    move v2, p2

    .local v2, "rectLeft":F
    move/from16 v3, p3

    .local v3, "rectTop":F
    move/from16 v4, p4

    .local v4, "rectRight":F
    move/from16 v5, p5

    .local v5, "rectBottom":F
    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    .line 66
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v6

    move v7, v0

    move v8, v1

    move v9, v4

    move v10, v3

    .line 67
    invoke-static {v7, v8, v9, v10}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v7

    move v8, v0

    move v9, v1

    move v10, v4

    move v11, v5

    .line 68
    invoke-static {v8, v9, v10, v11}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v8

    move v9, v0

    move v10, v1

    move v11, v2

    move v12, v5

    .line 69
    invoke-static {v9, v10, v11, v12}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v9

    .line 65
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/material/math/MathUtils;->max(FFFF)F

    move-result v6

    move v0, v6

    .end local v0    # "pointX":F
    return v0
.end method

.method public static geq(FFF)Z
    .locals 5

    .prologue
    .line 49
    move v0, p0

    .local v0, "a":F
    move v1, p1

    .local v1, "b":F
    move v2, p2

    .local v2, "epsilon":F
    move v3, v0

    move v4, v2

    add-float/2addr v3, v4

    move v4, v1

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "a":F
    return v0

    .restart local v0    # "a":F
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static lerp(FFF)F
    .locals 6

    .prologue
    .line 37
    move v0, p0

    .local v0, "start":F
    move v1, p1

    .local v1, "stop":F
    move v2, p2

    .local v2, "amount":F
    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v2

    sub-float/2addr v3, v4

    move v4, v0

    mul-float/2addr v3, v4

    move v4, v2

    move v5, v1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    .end local v0    # "start":F
    return v0
.end method

.method private static max(FFFF)F
    .locals 6

    .prologue
    .line 74
    move v0, p0

    .local v0, "a":F
    move v1, p1

    .local v1, "b":F
    move v2, p2

    .local v2, "c":F
    move v3, p3

    .local v3, "d":F
    move v4, v0

    move v5, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    move v4, v0

    move v5, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    move v4, v0

    move v5, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    move v4, v0

    :goto_0
    move v0, v4

    .end local v0    # "a":F
    return v0

    .restart local v0    # "a":F
    :cond_0
    move v4, v1

    move v5, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v4, v1

    move v5, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v2

    move v5, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_0
.end method
