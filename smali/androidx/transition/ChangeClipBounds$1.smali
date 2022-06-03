.class Landroidx/transition/ChangeClipBounds$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeClipBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ChangeClipBounds;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/ChangeClipBounds;

.field final synthetic val$endView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeClipBounds;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeClipBounds$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/transition/ChangeClipBounds;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/transition/ChangeClipBounds$1;->this$0:Landroidx/transition/ChangeClipBounds;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/transition/ChangeClipBounds$1;->val$endView:Landroid/view/View;

    move-object v3, v0

    invoke-direct {v3}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeClipBounds$1;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeClipBounds$1;->val$endView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 116
    return-void
.end method
