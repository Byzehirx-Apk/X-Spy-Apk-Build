.class Lcom/google/android/material/internal/TextScale$1;
.super Ljava/lang/Object;
.source "TextScale.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/TextScale;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/internal/TextScale;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/TextScale;Landroid/widget/TextView;)V
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/TextScale$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/internal/TextScale;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/material/internal/TextScale$1;->this$0:Lcom/google/android/material/internal/TextScale;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/material/internal/TextScale$1;->val$view:Landroid/widget/TextView;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/TextScale$1;
    move-object v1, p1

    .local v1, "valueAnimator":Landroid/animation/ValueAnimator;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move v2, v3

    .line 79
    .local v2, "animatedValue":F
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/TextScale$1;->val$view:Landroid/widget/TextView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 80
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/internal/TextScale$1;->val$view:Landroid/widget/TextView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 81
    return-void
.end method
