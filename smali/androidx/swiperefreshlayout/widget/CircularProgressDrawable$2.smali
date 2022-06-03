.class Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

.field final synthetic val$ring:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V
    .locals 5

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$ring:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 595
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 590
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 7

    .prologue
    .line 599
    move-object v1, p0

    .local v1, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;
    move-object v2, p1

    .local v2, "animator":Landroid/animation/Animator;
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v5, v1

    iget-object v5, v5, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$ring:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->applyTransformation(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;Z)V

    .line 600
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$ring:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->storeOriginals()V

    .line 601
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$ring:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->goToNextColor()V

    .line 602
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-boolean v3, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFinishing:Z

    if-eqz v3, :cond_0

    .line 605
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFinishing:Z

    .line 606
    move-object v3, v2

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 607
    move-object v3, v2

    const-wide/16 v4, 0x534

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    .line 608
    move-object v3, v2

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 609
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$ring:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    move-object v4, v1

    iget-object v4, v4, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget v4, v4, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    iput v4, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 584
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v3, 0x0

    iput v3, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    .line 585
    return-void
.end method
