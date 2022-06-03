.class Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

.field final synthetic val$finalTargetLeft:I

.field final synthetic val$finalTargetRight:I

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;IIII)V
    .locals 8

    .prologue
    .line 2598
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$startLeft:I

    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$finalTargetLeft:I

    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$startRight:I

    move-object v6, v0

    move v7, v5

    iput v7, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$finalTargetRight:I

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .prologue
    .line 2601
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/ValueAnimator;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    move v2, v3

    .line 2602
    .local v2, "fraction":F
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$startLeft:I

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$finalTargetLeft:I

    move v6, v2

    .line 2603
    invoke-static {v4, v5, v6}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v4

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$startRight:I

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$finalTargetRight:I

    move v7, v2

    .line 2604
    invoke-static {v5, v6, v7}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v5

    .line 2602
    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    .line 2605
    return-void
.end method
