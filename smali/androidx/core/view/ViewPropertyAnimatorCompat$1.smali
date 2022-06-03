.class Landroidx/core/view/ViewPropertyAnimatorCompat$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Landroid/view/View;Landroidx/core/view/ViewPropertyAnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$listener:Landroidx/core/view/ViewPropertyAnimatorListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/core/view/ViewPropertyAnimatorListener;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 740
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->this$0:Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Landroidx/core/view/ViewPropertyAnimatorListener;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    move-object v4, v0

    invoke-direct {v4}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat$1;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Landroidx/core/view/ViewPropertyAnimatorListener;

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    .line 744
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 748
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat$1;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Landroidx/core/view/ViewPropertyAnimatorListener;

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 749
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 753
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat$1;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Landroidx/core/view/ViewPropertyAnimatorListener;

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 754
    return-void
.end method
