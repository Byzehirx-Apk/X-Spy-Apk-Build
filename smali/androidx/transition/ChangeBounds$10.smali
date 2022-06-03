.class Landroidx/transition/ChangeBounds$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/ChangeBounds;

.field final synthetic val$drawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$sceneRoot:Landroid/view/ViewGroup;

.field final synthetic val$transitionAlpha:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 8

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$10;
    move-object v1, p1

    .local v1, "this$0":Landroidx/transition/ChangeBounds;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/transition/ChangeBounds$10;->this$0:Landroidx/transition/ChangeBounds;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroidx/transition/ChangeBounds$10;->val$sceneRoot:Landroid/view/ViewGroup;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/transition/ChangeBounds$10;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroidx/transition/ChangeBounds$10;->val$view:Landroid/view/View;

    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroidx/transition/ChangeBounds$10;->val$transitionAlpha:F

    move-object v6, v0

    invoke-direct {v6}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$10;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeBounds$10;->val$sceneRoot:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroidx/transition/ViewUtils;->getOverlay(Landroid/view/View;)Landroidx/transition/ViewOverlayImpl;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/ChangeBounds$10;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v2, v3}, Landroidx/transition/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 449
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeBounds$10;->val$view:Landroid/view/View;

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeBounds$10;->val$transitionAlpha:F

    invoke-static {v2, v3}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 450
    return-void
.end method
