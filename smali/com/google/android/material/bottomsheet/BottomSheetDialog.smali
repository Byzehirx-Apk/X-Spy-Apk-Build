.class public Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "BottomSheetDialog.java"


# instance fields
.field private behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

.field cancelable:Z

.field private canceledOnTouchOutside:Z

.field private canceledOnTouchOutsideSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "theme":I
    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    move v6, v2

    invoke-static {v5, v6}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getThemeResId(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 46
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 47
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 215
    move-object v3, v0

    new-instance v4, Lcom/google/android/material/bottomsheet/BottomSheetDialog$4;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object v4, v3, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 58
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->supportRequestWindowFeature(I)Z

    move-result v3

    .line 59
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "cancelable":Z
    move-object v3, p3

    .local v3, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 46
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 47
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 215
    move-object v4, v0

    new-instance v5, Lcom/google/android/material/bottomsheet/BottomSheetDialog$4;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 64
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->supportRequestWindowFeature(I)Z

    move-result v4

    .line 65
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 66
    return-void
.end method

.method private static getThemeResId(Landroid/content/Context;I)I
    .locals 8

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "themeId":I
    move v3, v1

    if-nez v3, :cond_0

    .line 204
    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 205
    .local v2, "outValue":Landroid/util/TypedValue;
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$attr;->bottomSheetDialogTheme:I

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    move-object v3, v2

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    move v1, v3

    .line 212
    .end local v2    # "outValue":Landroid/util/TypedValue;
    :cond_0
    :goto_0
    move v3, v1

    move v0, v3

    .end local v0    # "context":Landroid/content/Context;
    return v0

    .line 209
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "outValue":Landroid/util/TypedValue;
    :cond_1
    sget v3, Lcom/google/android/material/R$style;->Theme_Design_Light_BottomSheetDialog:I

    move v1, v3

    goto :goto_0
.end method

.method private wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 12

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    move v1, p1

    .local v1, "layoutResId":I
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v3, p3

    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v7, v0

    .line 127
    invoke-virtual {v7}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$layout;->design_bottom_sheet_dialog:I

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    move-object v4, v7

    .line 128
    .local v4, "container":Landroid/widget/FrameLayout;
    move-object v7, v4

    sget v8, Lcom/google/android/material/R$id;->coordinator:I

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v5, v7

    .line 129
    .local v5, "coordinator":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move v7, v1

    if-eqz v7, :cond_0

    move-object v7, v2

    if-nez v7, :cond_0

    .line 130
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    move v8, v1

    move-object v9, v5

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    move-object v2, v7

    .line 132
    :cond_0
    move-object v7, v5

    sget v8, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    move-object v6, v7

    .line 133
    .local v6, "bottomSheet":Landroid/widget/FrameLayout;
    move-object v7, v0

    move-object v8, v6

    invoke-static {v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 134
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 135
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-object v8, v0

    iget-boolean v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 136
    move-object v7, v3

    if-nez v7, :cond_1

    .line 137
    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 142
    :goto_0
    move-object v7, v5

    sget v8, Lcom/google/android/material/R$id;->touch_outside:I

    .line 143
    invoke-virtual {v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    .line 144
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    move-object v7, v6

    new-instance v8, Lcom/google/android/material/bottomsheet/BottomSheetDialog$2;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 178
    move-object v7, v6

    new-instance v8, Lcom/google/android/material/bottomsheet/BottomSheetDialog$3;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    move-object v7, v4

    move-object v0, v7

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    return-object v0

    .line 139
    .restart local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    :cond_1
    move-object v7, v6

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 76
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    move-object v2, v3

    .line 77
    .local v2, "window":Landroid/view/Window;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 78
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 79
    move-object v3, v2

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 80
    move-object v3, v2

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 82
    :cond_0
    move-object v3, v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 84
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/app/AppCompatDialog;->onStart()V

    .line 110
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 111
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    move v1, p1

    .local v1, "cancelable":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/app/AppCompatDialog;->setCancelable(Z)V

    .line 99
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 100
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 101
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v2, :cond_0

    .line 102
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    move v1, p1

    .local v1, "cancel":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/app/AppCompatDialog;->setCanceledOnTouchOutside(Z)V

    .line 118
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    if-nez v2, :cond_0

    .line 119
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 121
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 122
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    .line 123
    return-void
.end method

.method public setContentView(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    move v1, p1

    .local v1, "layoutResId":I
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v3

    invoke-super {v2, v3}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v3

    invoke-super {v2, v3}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 8

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v4

    invoke-super {v3, v4}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method shouldWindowCloseOnTouchOutside()Z
    .locals 8

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    if-nez v2, :cond_0

    .line 191
    move-object v2, v0

    .line 192
    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const v6, 0x101035b

    aput v6, v4, v5

    .line 193
    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    move-object v1, v2

    .line 194
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 195
    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    .line 198
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    return v0
.end method
