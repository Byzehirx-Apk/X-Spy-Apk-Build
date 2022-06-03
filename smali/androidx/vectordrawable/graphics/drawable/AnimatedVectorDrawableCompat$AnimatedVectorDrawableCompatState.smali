.class Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AnimatedVectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatedVectorDrawableCompatState"
.end annotation


# instance fields
.field mAnimatorSet:Landroid/animation/AnimatorSet;

.field mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mChangingConfigurations:I

.field mTargetNameMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V
    .locals 16

    .prologue
    .line 589
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "copy":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;
    move-object/from16 v3, p3

    .local v3, "owner":Landroid/graphics/drawable/Drawable$Callback;
    move-object/from16 v4, p4

    .local v4, "res":Landroid/content/res/Resources;
    move-object v11, v0

    invoke-direct {v11}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 590
    move-object v11, v2

    if-eqz v11, :cond_3

    .line 591
    move-object v11, v0

    move-object v12, v2

    iget v12, v12, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mChangingConfigurations:I

    iput v12, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mChangingConfigurations:I

    .line 592
    move-object v11, v2

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-eqz v11, :cond_0

    .line 593
    move-object v11, v2

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v11}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v11

    move-object v5, v11

    .line 594
    .local v5, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    move-object v11, v4

    if-eqz v11, :cond_1

    .line 595
    move-object v11, v0

    move-object v12, v5

    move-object v13, v4

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    iput-object v12, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 599
    :goto_0
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v12}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    iput-object v12, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 600
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-object v12, v3

    invoke-virtual {v11, v12}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 601
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-object v12, v2

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v12}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setBounds(Landroid/graphics/Rect;)V

    .line 602
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setAllowCaching(Z)V

    .line 604
    .end local v5    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    move-object v11, v2

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    if-eqz v11, :cond_3

    .line 605
    move-object v11, v2

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v5, v11

    .line 606
    .local v5, "numAnimators":I
    move-object v11, v0

    new-instance v12, Ljava/util/ArrayList;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move v14, v5

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    .line 607
    move-object v11, v0

    new-instance v12, Landroidx/collection/ArrayMap;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move v14, v5

    invoke-direct {v13, v14}, Landroidx/collection/ArrayMap;-><init>(I)V

    iput-object v12, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroidx/collection/ArrayMap;

    .line 608
    const/4 v11, 0x0

    move v6, v11

    .local v6, "i":I
    :goto_1
    move v11, v6

    move v12, v5

    if-ge v11, v12, :cond_2

    .line 609
    move-object v11, v2

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/Animator;

    move-object v7, v11

    .line 610
    .local v7, "anim":Landroid/animation/Animator;
    move-object v11, v7

    invoke-virtual {v11}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v11

    move-object v8, v11

    .line 611
    .local v8, "animClone":Landroid/animation/Animator;
    move-object v11, v2

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroidx/collection/ArrayMap;

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object v9, v11

    .line 612
    .local v9, "targetName":Ljava/lang/String;
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-object v12, v9

    invoke-virtual {v11, v12}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    .line 613
    .local v10, "targetObject":Ljava/lang/Object;
    move-object v11, v8

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 614
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 615
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroidx/collection/ArrayMap;

    move-object v12, v8

    move-object v13, v9

    invoke-virtual {v11, v12, v13}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 608
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 597
    .end local v6    # "i":I
    .end local v7    # "anim":Landroid/animation/Animator;
    .end local v8    # "animClone":Landroid/animation/Animator;
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "targetObject":Ljava/lang/Object;
    .local v5, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    iput-object v12, v11, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    goto/16 :goto_0

    .line 617
    .local v5, "numAnimators":I
    .restart local v6    # "i":I
    :cond_2
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->setupAnimatorSet()V

    .line 620
    .end local v5    # "numAnimators":I
    .end local v6    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;
    move-object v1, v0

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mChangingConfigurations:I

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "No constant state support for SDK < 24."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "No constant state support for SDK < 24."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setupAnimatorSet()V
    .locals 5

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_0

    .line 639
    move-object v1, v0

    new-instance v2, Landroid/animation/AnimatorSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 641
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 642
    return-void
.end method
