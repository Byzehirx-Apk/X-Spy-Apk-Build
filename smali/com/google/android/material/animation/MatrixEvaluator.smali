.class public Lcom/google/android/material/animation/MatrixEvaluator;
.super Ljava/lang/Object;
.source "MatrixEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field private final tempEndValues:[F

.field private final tempMatrix:Landroid/graphics/Matrix;

.field private final tempStartValues:[F


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MatrixEvaluator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v1, v0

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, v1, Lcom/google/android/material/animation/MatrixEvaluator;->tempStartValues:[F

    .line 27
    move-object v1, v0

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, v1, Lcom/google/android/material/animation/MatrixEvaluator;->tempEndValues:[F

    .line 28
    move-object v1, v0

    new-instance v2, Landroid/graphics/Matrix;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/animation/MatrixEvaluator;->tempMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 11

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MatrixEvaluator;
    move v1, p1

    .local v1, "fraction":F
    move-object v2, p2

    .local v2, "startValue":Landroid/graphics/Matrix;
    move-object v3, p3

    .local v3, "endValue":Landroid/graphics/Matrix;
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/animation/MatrixEvaluator;->tempStartValues:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 33
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/animation/MatrixEvaluator;->tempEndValues:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 34
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    const/16 v7, 0x9

    if-ge v6, v7, :cond_0

    .line 35
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/animation/MatrixEvaluator;->tempEndValues:[F

    move v7, v4

    aget v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/animation/MatrixEvaluator;->tempStartValues:[F

    move v8, v4

    aget v7, v7, v8

    sub-float/2addr v6, v7

    move v5, v6

    .line 36
    .local v5, "diff":F
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/animation/MatrixEvaluator;->tempEndValues:[F

    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/animation/MatrixEvaluator;->tempStartValues:[F

    move v9, v4

    aget v8, v8, v9

    move v9, v1

    move v10, v5

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 34
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 38
    .end local v5    # "diff":F
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/animation/MatrixEvaluator;->tempMatrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/animation/MatrixEvaluator;->tempEndValues:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->setValues([F)V

    .line 39
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/animation/MatrixEvaluator;->tempMatrix:Landroid/graphics/Matrix;

    move-object v0, v6

    .end local v0    # "this":Lcom/google/android/material/animation/MatrixEvaluator;
    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MatrixEvaluator;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    check-cast v6, Landroid/graphics/Matrix;

    move-object v7, v3

    check-cast v7, Landroid/graphics/Matrix;

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/animation/MatrixEvaluator;->evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/google/android/material/animation/MatrixEvaluator;
    return-object v0
.end method
