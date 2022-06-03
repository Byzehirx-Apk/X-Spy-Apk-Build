.class Landroidx/appcompat/widget/ActionBarOverlayLayout$3;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout$3;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout$3;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 123
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    .line 124
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 125
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    .line 126
    return-void
.end method
