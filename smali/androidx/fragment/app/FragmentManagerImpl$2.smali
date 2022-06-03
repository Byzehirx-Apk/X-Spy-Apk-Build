.class Landroidx/fragment/app/FragmentManagerImpl$2;
.super Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentManagerImpl;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentManagerImpl;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;)V
    .locals 7

    .prologue
    .line 1639
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v2, p2

    .local v2, "wrapped":Landroid/view/animation/Animation$AnimationListener;
    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl$2;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl$2;->val$container:Landroid/view/ViewGroup;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl$2;->val$fragment:Landroidx/fragment/app/Fragment;

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;-><init>(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    .prologue
    .line 1642
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$2;
    move-object v1, p1

    .local v1, "animation":Landroid/view/animation/Animation;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 1647
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl$2;->val$container:Landroid/view/ViewGroup;

    new-instance v3, Landroidx/fragment/app/FragmentManagerImpl$2$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl$2$1;-><init>(Landroidx/fragment/app/FragmentManagerImpl$2;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 1657
    return-void
.end method
