.class public abstract Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableBehavior;
.source "ExpandableTransformationBehavior.java"


# instance fields
.field private currentAnimation:Landroid/animation/AnimatorSet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/transformation/ExpandableBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/transformation/ExpandableBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/transformation/ExpandableTransformationBehavior;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 7

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
    move-object v1, p1

    .local v1, "x1":Landroid/animation/AnimatorSet;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->currentAnimation:Landroid/animation/AnimatorSet;

    move-object v0, v2

    .end local v0    # "x0":Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
    return-object v0
.end method


# virtual methods
.method protected abstract onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method protected onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z
    .locals 13
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
    move-object v1, p1

    .local v1, "dependency":Landroid/view/View;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move/from16 v3, p3

    .local v3, "expanded":Z
    move/from16 v4, p4

    .local v4, "animated":Z
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    move v5, v6

    .line 71
    .local v5, "currentlyAnimating":Z
    move v6, v5

    if-eqz v6, :cond_0

    .line 72
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 75
    :cond_0
    move-object v6, v0

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v5

    .line 76
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 77
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/google/android/material/transformation/ExpandableTransformationBehavior$1;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior$1;-><init>(Lcom/google/android/material/transformation/ExpandableTransformationBehavior;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 85
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 86
    move v6, v4

    if-nez v6, :cond_1

    .line 89
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->end()V

    .line 92
    :cond_1
    const/4 v6, 0x1

    move v0, v6

    .end local v0    # "this":Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
    return v0

    .line 70
    .end local v5    # "currentlyAnimating":Z
    .restart local v0    # "this":Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method
