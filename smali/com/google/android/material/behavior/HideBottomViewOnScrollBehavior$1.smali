.class Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HideBottomViewOnScrollBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;->this$0:Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    move-object v2, v0

    invoke-direct {v2}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;"
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;->this$0:Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->access$002(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 124
    return-void
.end method
