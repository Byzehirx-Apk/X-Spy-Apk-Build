.class Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/FastScroller;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/FastScroller;)V
    .locals 4

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;->this$0:Landroidx/recyclerview/widget/FastScroller;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 587
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;
    move-object v1, p1

    .local v1, "valueAnimator":Landroid/animation/ValueAnimator;
    const/high16 v3, 0x437f0000    # 255.0f

    move-object v4, v1

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v2, v3

    .line 592
    .local v2, "alpha":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;->this$0:Landroidx/recyclerview/widget/FastScroller;

    iget-object v3, v3, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 593
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;->this$0:Landroidx/recyclerview/widget/FastScroller;

    iget-object v3, v3, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 594
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;->this$0:Landroidx/recyclerview/widget/FastScroller;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/FastScroller;->requestRedraw()V

    .line 595
    return-void
.end method
