.class Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FabTransformationScrimBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/transformation/FabTransformationScrimBehavior;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$expanded:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/transformation/FabTransformationScrimBehavior;ZLandroid/view/View;)V
    .locals 6

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->this$0:Lcom/google/android/material/transformation/FabTransformationScrimBehavior;

    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$expanded:Z

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$child:Landroid/view/View;

    move-object v4, v0

    invoke-direct {v4}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$expanded:Z

    if-nez v2, :cond_0

    .line 91
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$child:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$expanded:Z

    if-eqz v2, :cond_0

    .line 84
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$child:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_0
    return-void
.end method
