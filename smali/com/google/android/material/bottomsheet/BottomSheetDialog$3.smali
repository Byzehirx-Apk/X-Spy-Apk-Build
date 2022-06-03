.class Lcom/google/android/material/bottomsheet/BottomSheetDialog$3;
.super Ljava/lang/Object;
.source "BottomSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog$3;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/MotionEvent;
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog$3;
    return v0
.end method
