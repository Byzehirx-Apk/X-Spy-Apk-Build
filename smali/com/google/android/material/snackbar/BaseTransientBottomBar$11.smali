.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->animateViewOut(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private previousAnimatedIntValue:I

.field final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 4

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;"
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 630
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;->previousAnimatedIntValue:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;"
    move-object v1, p1

    .local v1, "animator":Landroid/animation/ValueAnimator;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v2, v3

    .line 635
    .local v2, "currentAnimatedIntValue":I
    invoke-static {}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 638
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;->previousAnimatedIntValue:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 643
    :goto_0
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;->previousAnimatedIntValue:I

    .line 644
    return-void

    .line 641
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    move v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    goto :goto_0
.end method
