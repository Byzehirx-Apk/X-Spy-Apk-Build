.class Lcom/google/android/material/transformation/FabTransformationBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;->onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/transformation/FabTransformationBehavior;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$dependency:Landroid/view/View;

.field final synthetic val$expanded:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V
    .locals 7

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->this$0:Lcom/google/android/material/transformation/FabTransformationBehavior;

    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$expanded:Z

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$child:Landroid/view/View;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    move-object v5, v0

    invoke-direct {v5}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior$1;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$expanded:Z

    if-nez v2, :cond_0

    .line 163
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$child:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 165
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 166
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior$1;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$expanded:Z

    if-eqz v2, :cond_0

    .line 153
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$child:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 155
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 156
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_0
    return-void
.end method
