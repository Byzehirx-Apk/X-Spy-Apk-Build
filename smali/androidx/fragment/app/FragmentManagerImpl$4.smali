.class Landroidx/fragment/app/FragmentManagerImpl$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentManagerImpl;->completeShowHideFragment(Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentManagerImpl;

.field final synthetic val$animatingView:Landroid/view/View;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V
    .locals 7

    .prologue
    .line 1728
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$4;
    move-object v1, p1

    .local v1, "this$0":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl$4;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl$4;->val$container:Landroid/view/ViewGroup;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl$4;->val$animatingView:Landroid/view/View;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl$4;->val$fragment:Landroidx/fragment/app/Fragment;

    move-object v5, v0

    invoke-direct {v5}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 1731
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$4;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl$4;->val$container:Landroid/view/ViewGroup;

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl$4;->val$animatingView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1732
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1733
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl$4;->val$fragment:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1734
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl$4;->val$fragment:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1736
    :cond_0
    return-void
.end method
