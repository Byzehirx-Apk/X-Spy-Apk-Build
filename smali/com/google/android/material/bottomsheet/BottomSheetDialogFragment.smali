.class public Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "BottomSheetDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getTheme()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
    return-object v0
.end method
