.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final targetState:I

.field final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 915
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>.SettleRunnable;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move v3, p3

    .local v3, "targetState":I
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 916
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->view:Landroid/view/View;

    .line 917
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->targetState:I

    .line 918
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 922
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>.SettleRunnable;"
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->view:Landroid/view/View;

    move-object v2, v0

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 927
    :goto_0
    return-void

    .line 925
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->targetState:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_0
.end method
