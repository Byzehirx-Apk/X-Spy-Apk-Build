.class Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;ZLcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 6

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->val$fromUser:Z

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->val$listener:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-object v4, v0

    invoke-direct {v4}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->cancelled:Z

    .line 403
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    .line 408
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    .line 410
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->cancelled:Z

    if-nez v2, :cond_0

    .line 411
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->val$fromUser:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    :goto_0
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->val$fromUser:Z

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 412
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->val$listener:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    if-eqz v2, :cond_0

    .line 413
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->val$listener:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-interface {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 416
    :cond_0
    return-void

    .line 411
    :cond_1
    const/4 v3, 0x4

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v3, 0x0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->val$fromUser:Z

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 395
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    .line 396
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    .line 397
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->cancelled:Z

    .line 398
    return-void
.end method
