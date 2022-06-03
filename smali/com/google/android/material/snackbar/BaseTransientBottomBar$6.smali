.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->showView()V
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
    .line 515
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;"
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 517
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;"
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;"
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->isShownOrQueued()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    sget-object v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6$1;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 534
    :cond_0
    return-void
.end method
