.class abstract Landroidx/interpolator/view/animation/LookupTableInterpolator;
.super Ljava/lang/Object;
.source "LookupTableInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mStepSize:F

.field private final mValues:[F


# direct methods
.method protected constructor <init>([F)V
    .locals 6

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Landroidx/interpolator/view/animation/LookupTableInterpolator;
    move-object v1, p1

    .local v1, "values":[F
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    .line 32
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v4, v0

    iget-object v4, v4, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mStepSize:F

    .line 33
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 11

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Landroidx/interpolator/view/animation/LookupTableInterpolator;
    move v1, p1

    .local v1, "input":F
    move v6, v1

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 38
    const/high16 v6, 0x3f800000    # 1.0f

    move v0, v6

    .line 54
    .end local v0    # "this":Landroidx/interpolator/view/animation/LookupTableInterpolator;
    :goto_0
    return v0

    .line 40
    .restart local v0    # "this":Landroidx/interpolator/view/animation/LookupTableInterpolator;
    :cond_0
    move v6, v1

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 41
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 46
    :cond_1
    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    array-length v7, v7

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v2, v6

    .line 49
    .local v2, "position":I
    move v6, v2

    int-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mStepSize:F

    mul-float/2addr v6, v7

    move v3, v6

    .line 50
    .local v3, "quantized":F
    move v6, v1

    move v7, v3

    sub-float/2addr v6, v7

    move v4, v6

    .line 51
    .local v4, "diff":F
    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mStepSize:F

    div-float/2addr v6, v7

    move v5, v6

    .line 54
    .local v5, "weight":F
    move-object v6, v0

    iget-object v6, v6, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    move v7, v2

    aget v6, v6, v7

    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    move v10, v2

    aget v9, v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move v0, v6

    goto :goto_0
.end method
