.class Lcom/google/android/material/internal/StateListAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/internal/StateListAnimator;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/StateListAnimator;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/StateListAnimator$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/internal/StateListAnimator;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/StateListAnimator$1;->this$0:Lcom/google/android/material/internal/StateListAnimator;

    move-object v2, v0

    invoke-direct {v2}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/StateListAnimator$1;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/StateListAnimator$1;->this$0:Lcom/google/android/material/internal/StateListAnimator;

    iget-object v2, v2, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 47
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/StateListAnimator$1;->this$0:Lcom/google/android/material/internal/StateListAnimator;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 49
    :cond_0
    return-void
.end method
