.class Landroidx/transition/Fade$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/Fade;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/transition/Fade;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Fade$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/transition/Fade;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/transition/Fade$1;->this$0:Landroidx/transition/Fade;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/transition/Fade$1;->val$view:Landroid/view/View;

    move-object v3, v0

    invoke-direct {v3}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 4
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Fade$1;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Fade$1;->val$view:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 136
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Fade$1;->val$view:Landroid/view/View;

    invoke-static {v2}, Landroidx/transition/ViewUtils;->clearNonTransitionAlpha(Landroid/view/View;)V

    .line 137
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v2

    .line 138
    return-void
.end method
