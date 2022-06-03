.class Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorCompatBase;
.super Ljava/lang/Object;
.source "PathInterpolatorCompatBase.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorCompatBase;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static create(FF)Landroid/view/animation/Interpolator;
    .locals 7

    .prologue
    .line 36
    move v0, p0

    .local v0, "controlX":F
    move v1, p1

    .local v1, "controlY":F
    new-instance v2, Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorDonut;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorDonut;-><init>(FF)V

    move-object v0, v2

    .end local v0    # "controlX":F
    return-object v0
.end method

.method public static create(FFFF)Landroid/view/animation/Interpolator;
    .locals 11

    .prologue
    .line 41
    move v0, p0

    .local v0, "controlX1":F
    move v1, p1

    .local v1, "controlY1":F
    move v2, p2

    .local v2, "controlX2":F
    move v3, p3

    .local v3, "controlY2":F
    new-instance v4, Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorDonut;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorDonut;-><init>(FFFF)V

    move-object v0, v4

    .end local v0    # "controlX1":F
    return-object v0
.end method

.method public static create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "path":Landroid/graphics/Path;
    new-instance v1, Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorDonut;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorDonut;-><init>(Landroid/graphics/Path;)V

    move-object v0, v1

    .end local v0    # "path":Landroid/graphics/Path;
    return-object v0
.end method
