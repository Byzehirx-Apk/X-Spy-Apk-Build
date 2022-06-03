.class Landroidx/transition/Visibility$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/Visibility;

.field final synthetic val$finalOverlayView:Landroid/view/View;

.field final synthetic val$overlay:Landroidx/transition/ViewGroupOverlayImpl;


# direct methods
.method constructor <init>(Landroidx/transition/Visibility;Landroidx/transition/ViewGroupOverlayImpl;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/transition/Visibility;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/transition/Visibility$1;->this$0:Landroidx/transition/Visibility;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/transition/Visibility$1;->val$overlay:Landroidx/transition/ViewGroupOverlayImpl;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    move-object v4, v0

    invoke-direct {v4}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility$1;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Visibility$1;->val$overlay:Landroidx/transition/ViewGroupOverlayImpl;

    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    .line 415
    return-void
.end method
