.class Lcom/google/android/material/appbar/CollapsingToolbarLayout$2;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/CollapsingToolbarLayout;->animateScrim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 4

    .prologue
    .line 618
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout$2;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout$2;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/ValueAnimator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout$2;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimAlpha(I)V

    .line 622
    return-void
.end method
