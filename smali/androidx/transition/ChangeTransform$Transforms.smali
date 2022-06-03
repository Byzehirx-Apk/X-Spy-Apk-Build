.class Landroidx/transition/ChangeTransform$Transforms;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transforms"
.end annotation


# instance fields
.field final mRotationX:F

.field final mRotationY:F

.field final mRotationZ:F

.field final mScaleX:F

.field final mScaleY:F

.field final mTranslationX:F

.field final mTranslationY:F

.field final mTranslationZ:F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$Transforms;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 467
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, v2, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    .line 468
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iput v3, v2, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    .line 469
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getTranslationZ(Landroid/view/View;)F

    move-result v3

    iput v3, v2, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    .line 470
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    iput v3, v2, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    .line 471
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    iput v3, v2, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    .line 472
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getRotationX()F

    move-result v3

    iput v3, v2, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    .line 473
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getRotationY()F

    move-result v3

    iput v3, v2, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    .line 474
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getRotation()F

    move-result v3

    iput v3, v2, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    .line 475
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$Transforms;
    move-object v1, p1

    .local v1, "that":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Landroidx/transition/ChangeTransform$Transforms;

    if-nez v3, :cond_0

    .line 485
    const/4 v3, 0x0

    move v0, v3

    .line 488
    .end local v0    # "this":Landroidx/transition/ChangeTransform$Transforms;
    :goto_0
    return v0

    .line 487
    .restart local v0    # "this":Landroidx/transition/ChangeTransform$Transforms;
    :cond_0
    move-object v3, v1

    check-cast v3, Landroidx/transition/ChangeTransform$Transforms;

    move-object v2, v3

    .line 488
    .local v2, "thatTransform":Landroidx/transition/ChangeTransform$Transforms;
    move-object v3, v2

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    move-object v4, v0

    iget v4, v4, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v2

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    move-object v4, v0

    iget v4, v4, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v2

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    move-object v4, v0

    iget v4, v4, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v2

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    move-object v4, v0

    iget v4, v4, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v2

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    move-object v4, v0

    iget v4, v4, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v2

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    move-object v4, v0

    iget v4, v4, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v2

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    move-object v4, v0

    iget v4, v4, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v2

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    move-object v4, v0

    iget v4, v4, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$Transforms;
    move-object v2, v0

    iget v2, v2, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_0
    move v1, v2

    .line 501
    .local v1, "code":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 502
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    move v1, v2

    .line 503
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    move v1, v2

    .line 504
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :goto_4
    add-int/2addr v2, v3

    move v1, v2

    .line 505
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :goto_5
    add-int/2addr v2, v3

    move v1, v2

    .line 506
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_6

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :goto_6
    add-int/2addr v2, v3

    move v1, v2

    .line 507
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_7

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :goto_7
    add-int/2addr v2, v3

    move v1, v2

    .line 508
    move v2, v1

    move v0, v2

    .end local v0    # "this":Landroidx/transition/ChangeTransform$Transforms;
    return v0

    .line 500
    .end local v1    # "code":I
    .restart local v0    # "this":Landroidx/transition/ChangeTransform$Transforms;
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 501
    .restart local v1    # "code":I
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 502
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 503
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 504
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 505
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 506
    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    .line 507
    :cond_7
    const/4 v3, 0x0

    goto :goto_7
.end method

.method public restore(Landroid/view/View;)V
    .locals 11

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$Transforms;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    move-object v4, v0

    iget v4, v4, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    move-object v5, v0

    iget v5, v5, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    move-object v6, v0

    iget v6, v6, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    move-object v7, v0

    iget v7, v7, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    move-object v8, v0

    iget v8, v8, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    move-object v9, v0

    iget v9, v9, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    move-object v10, v0

    iget v10, v10, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    invoke-static/range {v2 .. v10}, Landroidx/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    .line 480
    return-void
.end method
