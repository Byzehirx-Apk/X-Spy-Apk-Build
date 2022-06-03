.class Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;
.super Landroid/view/animation/AnimationSet;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndViewTransitionAnimator"
.end annotation


# instance fields
.field private mAnimating:Z

.field private final mChild:Landroid/view/View;

.field private mEnded:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private mTransitionEnded:Z


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 4072
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;
    move-object v1, p1

    .local v1, "animation":Landroid/view/animation/Animation;
    move-object v2, p2

    .local v2, "parent":Landroid/view/ViewGroup;
    move-object v3, p3

    .local v3, "child":Landroid/view/View;
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 4068
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mAnimating:Z

    .line 4073
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    .line 4074
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mChild:Landroid/view/View;

    .line 4075
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4078
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 4079
    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 9

    .prologue
    .line 4083
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;
    move-wide v1, p1

    .local v1, "currentTime":J
    move-object v3, p3

    .local v3, "t":Landroid/view/animation/Transformation;
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mAnimating:Z

    .line 4084
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    if-eqz v5, :cond_1

    .line 4085
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mTransitionEnded:Z

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .line 4092
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;
    :goto_1
    return v0

    .line 4085
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 4087
    :cond_1
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v5

    move v4, v5

    .line 4088
    .local v4, "more":Z
    move v5, v4

    if-nez v5, :cond_2

    .line 4089
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    .line 4090
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    move-object v6, v0

    invoke-static {v5, v6}, Landroidx/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/fragment/app/OneShotPreDrawListener;

    move-result-object v5

    .line 4092
    :cond_2
    const/4 v5, 0x1

    move v0, v5

    goto :goto_1
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 13

    .prologue
    .line 4098
    move-object v1, p0

    .local v1, "this":Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;
    move-wide v2, p1

    .local v2, "currentTime":J
    move-object/from16 v4, p3

    .local v4, "outTransformation":Landroid/view/animation/Transformation;
    move/from16 v5, p4

    .local v5, "scale":F
    move-object v7, v1

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mAnimating:Z

    .line 4099
    move-object v7, v1

    iget-boolean v7, v7, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    if-eqz v7, :cond_1

    .line 4100
    move-object v7, v1

    iget-boolean v7, v7, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mTransitionEnded:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v1, v7

    .line 4107
    .end local v1    # "this":Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;
    :goto_1
    return v1

    .line 4100
    .restart local v1    # "this":Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 4102
    :cond_1
    move-object v7, v1

    move-wide v8, v2

    move-object v10, v4

    move v11, v5

    invoke-super {v7, v8, v9, v10, v11}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v7

    move v6, v7

    .line 4103
    .local v6, "more":Z
    move v7, v6

    if-nez v7, :cond_2

    .line 4104
    move-object v7, v1

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    .line 4105
    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    move-object v8, v1

    invoke-static {v7, v8}, Landroidx/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/fragment/app/OneShotPreDrawListener;

    move-result-object v7

    .line 4107
    :cond_2
    const/4 v7, 0x1

    move v1, v7

    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 4112
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mAnimating:Z

    if-eqz v1, :cond_0

    .line 4113
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mAnimating:Z

    .line 4115
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 4120
    :goto_0
    return-void

    .line 4117
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mChild:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 4118
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mTransitionEnded:Z

    goto :goto_0
.end method
