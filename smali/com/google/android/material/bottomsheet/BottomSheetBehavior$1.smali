.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$finalState:I


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->val$child:Landroid/view/View;

    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->val$finalState:I

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;"
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->val$child:Landroid/view/View;

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->val$finalState:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;I)V

    .line 647
    return-void
.end method
