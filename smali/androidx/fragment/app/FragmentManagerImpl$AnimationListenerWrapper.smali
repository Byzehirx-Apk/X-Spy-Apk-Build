.class Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationListenerWrapper"
.end annotation


# instance fields
.field private final mWrapped:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method constructor <init>(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 3968
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;
    move-object v1, p1

    .local v1, "wrapped":Landroid/view/animation/Animation$AnimationListener;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 3969
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    .line 3970
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 3983
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;
    move-object v1, p1

    .local v1, "animation":Landroid/view/animation/Animation;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v2, :cond_0

    .line 3984
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 3986
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 3991
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;
    move-object v1, p1

    .local v1, "animation":Landroid/view/animation/Animation;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v2, :cond_0

    .line 3992
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 3994
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 3975
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;
    move-object v1, p1

    .local v1, "animation":Landroid/view/animation/Animation;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v2, :cond_0

    .line 3976
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 3978
    :cond_0
    return-void
.end method
