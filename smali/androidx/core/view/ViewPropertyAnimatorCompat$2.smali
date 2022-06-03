.class Landroidx/core/view/ViewPropertyAnimatorCompat$2;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$listener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/core/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 778
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->this$0:Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->val$listener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->val$view:Landroid/view/View;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 781
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewPropertyAnimatorCompat$2;
    move-object v1, p1

    .local v1, "valueAnimator":Landroid/animation/ValueAnimator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->val$listener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->val$view:Landroid/view/View;

    invoke-interface {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorUpdateListener;->onAnimationUpdate(Landroid/view/View;)V

    .line 782
    return-void
.end method
