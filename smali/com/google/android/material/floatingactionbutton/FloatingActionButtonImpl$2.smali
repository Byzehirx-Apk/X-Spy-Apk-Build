.class Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->show(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;ZLcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 6

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->val$fromUser:Z

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->val$listener:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-object v4, v0

    invoke-direct {v4}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    .line 471
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    .line 473
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->val$listener:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    if-eqz v2, :cond_0

    .line 474
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->val$listener:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-interface {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onShown()V

    .line 476
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v3, 0x0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->val$fromUser:Z

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 464
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    const/4 v3, 0x2

    iput v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    .line 465
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    .line 466
    return-void
.end method
