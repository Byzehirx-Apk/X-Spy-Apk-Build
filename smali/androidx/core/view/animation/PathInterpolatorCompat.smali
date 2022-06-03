.class public final Landroidx/core/view/animation/PathInterpolatorCompat;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/animation/PathInterpolatorCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static create(FF)Landroid/view/animation/Interpolator;
    .locals 7

    .prologue
    .line 63
    move v0, p0

    .local v0, "controlX":F
    move v1, p1

    .local v1, "controlY":F
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 64
    new-instance v2, Landroid/view/animation/PathInterpolator;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FF)V

    move-object v0, v2

    .line 66
    .end local v0    # "controlX":F
    :goto_0
    return-object v0

    .restart local v0    # "controlX":F
    :cond_0
    new-instance v2, Landroidx/core/view/animation/PathInterpolatorApi14;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/core/view/animation/PathInterpolatorApi14;-><init>(FF)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static create(FFFF)Landroid/view/animation/Interpolator;
    .locals 11

    .prologue
    .line 81
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

    .line 82
    new-instance v4, Landroid/view/animation/PathInterpolator;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v0, v4

    .line 84
    .end local v0    # "controlX1":F
    :goto_0
    return-object v0

    .restart local v0    # "controlX1":F
    :cond_0
    new-instance v4, Landroidx/core/view/animation/PathInterpolatorApi14;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/core/view/animation/PathInterpolatorApi14;-><init>(FFFF)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "path":Landroid/graphics/Path;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 49
    new-instance v1, Landroid/view/animation/PathInterpolator;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    move-object v0, v1

    .line 51
    .end local v0    # "path":Landroid/graphics/Path;
    :goto_0
    return-object v0

    .restart local v0    # "path":Landroid/graphics/Path;
    :cond_0
    new-instance v1, Landroidx/core/view/animation/PathInterpolatorApi14;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/view/animation/PathInterpolatorApi14;-><init>(Landroid/graphics/Path;)V

    move-object v0, v1

    goto :goto_0
.end method
