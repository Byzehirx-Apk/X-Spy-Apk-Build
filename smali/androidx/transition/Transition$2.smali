.class Landroidx/transition/Transition$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroidx/collection/ArrayMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/Transition;

.field final synthetic val$runningAnimators:Landroidx/collection/ArrayMap;


# direct methods
.method constructor <init>(Landroidx/transition/Transition;Landroidx/collection/ArrayMap;)V
    .locals 5

    .prologue
    .line 896
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/transition/Transition;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/transition/Transition$2;->this$0:Landroidx/transition/Transition;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/transition/Transition$2;->val$runningAnimators:Landroidx/collection/ArrayMap;

    move-object v3, v0

    invoke-direct {v3}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 904
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition$2;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition$2;->val$runningAnimators:Landroidx/collection/ArrayMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 905
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition$2;->this$0:Landroidx/transition/Transition;

    iget-object v2, v2, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 906
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 899
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition$2;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition$2;->this$0:Landroidx/transition/Transition;

    iget-object v2, v2, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 900
    return-void
.end method
