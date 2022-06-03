.class public Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorCompat;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static create(FF)Landroid/view/animation/Interpolator;
    .locals 4

    .prologue
    .line 64
    move v0, p0

    .local v0, "controlX":F
    move v1, p1

    .local v1, "controlY":F
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 65
    move v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorCompatApi21;->create(FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    move-object v0, v2

    .line 67
    .end local v0    # "controlX":F
    :goto_0
    return-object v0

    .restart local v0    # "controlX":F
    :cond_0
    move v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorCompatBase;->create(FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static create(FFFF)Landroid/view/animation/Interpolator;
    .locals 8

    .prologue
    .line 82
    move v0, p0

    .local v0, "controlX1":F
    move v1, p1

    .local v1, "controlY1":F
    move v2, p2

    .local v2, "controlX2":F
    move v3, p3

    .local v3, "controlY2":F
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 83
    move v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorCompatApi21;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    move-object v0, v4

    .line 85
    .end local v0    # "controlX1":F
    :goto_0
    return-object v0

    .restart local v0    # "controlX1":F
    :cond_0
    move v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorCompatBase;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public static create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "path":Landroid/graphics/Path;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 49
    move-object v1, v0

    invoke-static {v1}, Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorCompatApi21;->create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    move-result-object v1

    move-object v0, v1

    .line 51
    .end local v0    # "path":Landroid/graphics/Path;
    :goto_0
    return-object v0

    .restart local v0    # "path":Landroid/graphics/Path;
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorCompatBase;->create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
