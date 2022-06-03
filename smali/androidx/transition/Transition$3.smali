.class Landroidx/transition/Transition$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/Transition;->animate(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/Transition;


# direct methods
.method constructor <init>(Landroidx/transition/Transition;)V
    .locals 4

    .prologue
    .line 1907
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition$3;
    move-object v1, p1

    .local v1, "this$0":Landroidx/transition/Transition;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/Transition$3;->this$0:Landroidx/transition/Transition;

    move-object v2, v0

    invoke-direct {v2}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 1910
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition$3;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Transition$3;->this$0:Landroidx/transition/Transition;

    invoke-virtual {v2}, Landroidx/transition/Transition;->end()V

    .line 1911
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1912
    return-void
.end method
