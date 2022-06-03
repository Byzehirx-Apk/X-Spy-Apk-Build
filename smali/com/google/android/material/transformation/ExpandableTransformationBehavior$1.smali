.class Lcom/google/android/material/transformation/ExpandableTransformationBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/transformation/ExpandableTransformationBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/transformation/ExpandableTransformationBehavior;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/ExpandableTransformationBehavior$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/transformation/ExpandableTransformationBehavior$1;->this$0:Lcom/google/android/material/transformation/ExpandableTransformationBehavior;

    move-object v2, v0

    invoke-direct {v2}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/ExpandableTransformationBehavior$1;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/transformation/ExpandableTransformationBehavior$1;->this$0:Lcom/google/android/material/transformation/ExpandableTransformationBehavior;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->access$002(Lcom/google/android/material/transformation/ExpandableTransformationBehavior;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 82
    return-void
.end method
