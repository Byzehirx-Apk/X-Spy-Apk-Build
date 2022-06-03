.class abstract Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonImpl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ShadowAnimatorImpl"
.end annotation


# instance fields
.field private shadowSizeEnd:F

.field private shadowSizeStart:F

.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

.field private validValues:Z


# direct methods
.method private constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V
    .locals 4

    .prologue
    .line 660
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-object v2, v0

    invoke-direct {v2}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;)V
    .locals 5

    .prologue
    .line 660
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;
    move-object v1, p1

    .local v1, "x0":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v2, p2

    .local v2, "x1":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    return-void
.end method


# virtual methods
.method protected abstract getTargetShadowSize()F
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowDrawable:Lcom/google/android/material/shadow/ShadowDrawableWrapper;

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeEnd:F

    invoke-virtual {v2, v3}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->setShadowSize(F)V

    .line 681
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->validValues:Z

    .line 682
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    .line 668
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/ValueAnimator;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->validValues:Z

    if-nez v2, :cond_0

    .line 669
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowDrawable:Lcom/google/android/material/shadow/ShadowDrawableWrapper;

    invoke-virtual {v3}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->getShadowSize()F

    move-result v3

    iput v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeStart:F

    .line 670
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->getTargetShadowSize()F

    move-result v3

    iput v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeEnd:F

    .line 671
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->validValues:Z

    .line 674
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowDrawable:Lcom/google/android/material/shadow/ShadowDrawableWrapper;

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeStart:F

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeEnd:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeStart:F

    sub-float/2addr v4, v5

    move-object v5, v1

    .line 675
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 674
    invoke-virtual {v2, v3}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->setShadowSize(F)V

    .line 676
    return-void
.end method
