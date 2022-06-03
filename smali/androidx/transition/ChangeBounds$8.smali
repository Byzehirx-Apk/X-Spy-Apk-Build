.class Landroidx/transition/ChangeBounds$8;
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
.field private mIsCanceled:Z

.field final synthetic this$0:Landroidx/transition/ChangeBounds;

.field final synthetic val$endBottom:I

.field final synthetic val$endLeft:I

.field final synthetic val$endRight:I

.field final synthetic val$endTop:I

.field final synthetic val$finalClip:Landroid/graphics/Rect;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 10

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$8;
    move-object v1, p1

    .local v1, "this$0":Landroidx/transition/ChangeBounds;
    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Landroidx/transition/ChangeBounds$8;->this$0:Landroidx/transition/ChangeBounds;

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Landroidx/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Landroidx/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    move-object v8, v0

    move v9, v4

    iput v9, v8, Landroidx/transition/ChangeBounds$8;->val$endLeft:I

    move-object v8, v0

    move v9, v5

    iput v9, v8, Landroidx/transition/ChangeBounds$8;->val$endTop:I

    move-object v8, v0

    move v9, v6

    iput v9, v8, Landroidx/transition/ChangeBounds$8;->val$endRight:I

    move-object v8, v0

    move v9, v7

    iput v9, v8, Landroidx/transition/ChangeBounds$8;->val$endBottom:I

    move-object v8, v0

    invoke-direct {v8}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$8;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/transition/ChangeBounds$8;->mIsCanceled:Z

    .line 373
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeBounds$8;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/transition/ChangeBounds$8;->mIsCanceled:Z

    if-nez v2, :cond_0

    .line 378
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 379
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeBounds$8;->val$endLeft:I

    move-object v4, v0

    iget v4, v4, Landroidx/transition/ChangeBounds$8;->val$endTop:I

    move-object v5, v0

    iget v5, v5, Landroidx/transition/ChangeBounds$8;->val$endRight:I

    move-object v6, v0

    iget v6, v6, Landroidx/transition/ChangeBounds$8;->val$endBottom:I

    invoke-static {v2, v3, v4, v5, v6}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 382
    :cond_0
    return-void
.end method
