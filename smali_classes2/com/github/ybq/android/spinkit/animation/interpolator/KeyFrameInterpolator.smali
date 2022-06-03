.class public Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;
.super Ljava/lang/Object;
.source "KeyFrameInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private fractions:[F

.field private interpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public varargs constructor <init>(Landroid/animation/TimeInterpolator;[F)V
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;
    move-object v1, p1

    .local v1, "interpolator":Landroid/animation/TimeInterpolator;
    move-object v2, p2

    .local v2, "fractions":[F
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->interpolator:Landroid/animation/TimeInterpolator;

    .line 31
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->fractions:[F

    .line 32
    return-void
.end method

.method public static varargs easeInOut([F)Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;
    .locals 7

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "fractions":[F
    new-instance v2, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-static {}, Lcom/github/ybq/android/spinkit/animation/interpolator/Ease;->inOut()Landroid/view/animation/Interpolator;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [F

    invoke-direct {v3, v4, v5}, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;-><init>(Landroid/animation/TimeInterpolator;[F)V

    move-object v1, v2

    .line 17
    .local v1, "interpolator":Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->setFractions([F)V

    .line 18
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "fractions":[F
    return-object v0
.end method

.method public static varargs pathInterpolator(FFFF[F)Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;
    .locals 13

    .prologue
    .line 24
    move v0, p0

    .local v0, "controlX1":F
    move v1, p1

    .local v1, "controlY1":F
    move v2, p2

    .local v2, "controlX2":F
    move/from16 v3, p3

    .local v3, "controlY2":F
    move-object/from16 v4, p4

    .local v4, "fractions":[F
    new-instance v6, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    invoke-static {v8, v9, v10, v11}, Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [F

    invoke-direct {v7, v8, v9}, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;-><init>(Landroid/animation/TimeInterpolator;[F)V

    move-object v5, v6

    .line 25
    .local v5, "interpolator":Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->setFractions([F)V

    .line 26
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "controlX1":F
    return-object v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 9

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;
    move v1, p1

    .local v1, "input":F
    move-object v6, v0

    iget-object v6, v6, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->fractions:[F

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 41
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    :goto_0
    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->fractions:[F

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_1

    .line 42
    move-object v6, v0

    iget-object v6, v6, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->fractions:[F

    move v7, v2

    aget v6, v6, v7

    move v3, v6

    .line 43
    .local v3, "start":F
    move-object v6, v0

    iget-object v6, v6, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->fractions:[F

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    move v4, v6

    .line 44
    .local v4, "end":F
    move v6, v4

    move v7, v3

    sub-float/2addr v6, v7

    move v5, v6

    .line 45
    .local v5, "duration":F
    move v6, v1

    move v7, v3

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    move v6, v1

    move v7, v4

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 46
    move v6, v1

    move v7, v3

    sub-float/2addr v6, v7

    move v7, v5

    div-float/2addr v6, v7

    move v1, v6

    .line 47
    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->interpolator:Landroid/animation/TimeInterpolator;

    move v8, v1

    invoke-interface {v7, v8}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v7

    move v8, v5

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move v0, v6

    .line 52
    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;
    .end local v2    # "i":I
    .end local v3    # "start":F
    .end local v4    # "end":F
    .end local v5    # "duration":F
    :goto_1
    return v0

    .line 41
    .restart local v0    # "this":Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;
    .restart local v2    # "i":I
    .restart local v3    # "start":F
    .restart local v4    # "end":F
    .restart local v5    # "duration":F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "i":I
    .end local v3    # "start":F
    .end local v4    # "end":F
    .end local v5    # "duration":F
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->interpolator:Landroid/animation/TimeInterpolator;

    move v7, v1

    invoke-interface {v6, v7}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v6

    move v0, v6

    goto :goto_1
.end method

.method public varargs setFractions([F)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;
    move-object v1, p1

    .local v1, "fractions":[F
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->fractions:[F

    .line 36
    return-void
.end method
