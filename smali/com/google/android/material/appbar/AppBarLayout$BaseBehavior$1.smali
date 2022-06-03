.class Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetWithDuration(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

.field final synthetic val$child:Lcom/google/android/material/appbar/AppBarLayout;

.field final synthetic val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 6

    .prologue
    .line 1060
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->this$0:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->val$child:Lcom/google/android/material/appbar/AppBarLayout;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    .line 1063
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;"
    move-object v1, p1

    .local v1, "animator":Landroid/animation/ValueAnimator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->this$0:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->val$child:Lcom/google/android/material/appbar/AppBarLayout;

    move-object v5, v1

    .line 1064
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1063
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    move-result v2

    .line 1065
    return-void
.end method
