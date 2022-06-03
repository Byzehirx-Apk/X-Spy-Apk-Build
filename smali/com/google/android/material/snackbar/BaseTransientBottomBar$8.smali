.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->animateViewIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 4

    .prologue
    .line 578
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;"
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-object v2, v0

    invoke-direct {v2}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;"
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onViewShown()V

    .line 588
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;"
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$100(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Lcom/google/android/material/snackbar/ContentViewCallback;

    move-result-object v2

    const/16 v3, 0x46

    const/16 v4, 0xb4

    invoke-interface {v2, v3, v4}, Lcom/google/android/material/snackbar/ContentViewCallback;->animateContentIn(II)V

    .line 583
    return-void
.end method
