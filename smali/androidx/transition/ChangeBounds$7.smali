.class Landroidx/transition/ChangeBounds$7;
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
.field private mViewBounds:Landroidx/transition/ChangeBounds$ViewBounds;

.field final synthetic this$0:Landroidx/transition/ChangeBounds;

.field final synthetic val$viewBounds:Landroidx/transition/ChangeBounds$ViewBounds;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeBounds;Landroidx/transition/ChangeBounds$ViewBounds;)V
    .locals 5

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$7;
    move-object v1, p1

    .local v1, "this$0":Landroidx/transition/ChangeBounds;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/transition/ChangeBounds$7;->this$0:Landroidx/transition/ChangeBounds;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/transition/ChangeBounds$7;->val$viewBounds:Landroidx/transition/ChangeBounds$ViewBounds;

    move-object v3, v0

    invoke-direct {v3}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 326
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/ChangeBounds$7;->val$viewBounds:Landroidx/transition/ChangeBounds$ViewBounds;

    iput-object v4, v3, Landroidx/transition/ChangeBounds$7;->mViewBounds:Landroidx/transition/ChangeBounds$ViewBounds;

    return-void
.end method
