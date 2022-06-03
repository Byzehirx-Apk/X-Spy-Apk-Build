.class Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;
.super Ljava/lang/Object;
.source "BottomSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-boolean v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->shouldWindowCloseOnTouchOutside()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancel()V

    .line 151
    :cond_0
    return-void
.end method
