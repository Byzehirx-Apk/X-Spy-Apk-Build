.class public final Lcom/google/android/material/snackbar/Snackbar;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;,
        Lcom/google/android/material/snackbar/Snackbar$Callback;,
        Lcom/google/android/material/snackbar/Snackbar$Duration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar",
        "<",
        "Lcom/google/android/material/snackbar/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field private static final SNACKBAR_BUTTON_STYLE_ATTR:[I


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private callback:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback",
            "<",
            "Lcom/google/android/material/snackbar/Snackbar;",
            ">;"
        }
    .end annotation
.end field

.field private hasAction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Lcom/google/android/material/R$attr;->snackbarButtonStyle:I

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_BUTTON_STYLE_ATTR:[I

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/ContentViewCallback;)V
    .locals 8

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar;
    move-object v1, p1

    .local v1, "parent":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "content":Landroid/view/View;
    move-object v3, p3

    .local v3, "contentViewCallback":Lcom/google/android/material/snackbar/ContentViewCallback;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/ContentViewCallback;)V

    .line 135
    move-object v4, v0

    move-object v5, v1

    .line 136
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "accessibility"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    iput-object v5, v4, Lcom/google/android/material/snackbar/Snackbar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 137
    return-void
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    const/4 v3, 0x0

    move-object v1, v3

    .line 236
    .local v1, "fallback":Landroid/view/ViewGroup;
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v3, :cond_1

    .line 238
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    move-object v0, v3

    .line 258
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .line 239
    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    move-object v3, v0

    instance-of v3, v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 240
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x1020002

    if-ne v3, v4, :cond_2

    .line 243
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    move-object v0, v3

    goto :goto_0

    .line 246
    :cond_2
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    move-object v1, v3

    .line 250
    :cond_3
    move-object v3, v0

    if-eqz v3, :cond_4

    .line 252
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 253
    .local v2, "parent":Landroid/view/ViewParent;
    move-object v3, v2

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    :goto_1
    move-object v0, v3

    .line 255
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_4
    move-object v3, v0

    if-nez v3, :cond_0

    .line 258
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 253
    .restart local v2    # "parent":Landroid/view/ViewParent;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected static hasSnackbarButtonStyleAttr(Landroid/content/Context;)Z
    .locals 6

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v3, v0

    sget-object v4, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_BUTTON_STYLE_ATTR:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v1, v3

    .line 207
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move v2, v3

    .line 208
    .local v2, "snackbarButtonStyleResId":I
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "context":Landroid/content/Context;
    return v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move v1, p1

    .local v1, "resId":I
    move v2, p2

    .local v2, "duration":I
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "view":Landroid/view/View;
    return-object v0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "duration":I
    move-object v7, v0

    invoke-static {v7}, Lcom/google/android/material/snackbar/Snackbar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    move-object v3, v7

    .line 180
    .local v3, "parent":Landroid/view/ViewGroup;
    move-object v7, v3

    if-nez v7, :cond_0

    .line 181
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 185
    :cond_0
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    move-object v4, v7

    .line 186
    .local v4, "inflater":Landroid/view/LayoutInflater;
    move-object v7, v4

    move-object v8, v3

    .line 189
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/material/snackbar/Snackbar;->hasSnackbarButtonStyleAttr(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget v8, Lcom/google/android/material/R$layout;->mtrl_layout_snackbar_include:I

    :goto_0
    move-object v9, v3

    const/4 v10, 0x0

    .line 188
    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    move-object v5, v7

    .line 194
    .local v5, "content":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    new-instance v7, Lcom/google/android/material/snackbar/Snackbar;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v3

    move-object v10, v5

    move-object v11, v5

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/material/snackbar/Snackbar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/ContentViewCallback;)V

    move-object v6, v7

    .line 195
    .local v6, "snackbar":Lcom/google/android/material/snackbar/Snackbar;
    move-object v7, v6

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/google/android/material/snackbar/Snackbar;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v7

    .line 196
    move-object v7, v6

    move v8, v2

    invoke-virtual {v7, v8}, Lcom/google/android/material/snackbar/Snackbar;->setDuration(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object v7

    .line 197
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "view":Landroid/view/View;
    return-object v0

    .line 189
    .end local v5    # "content":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    .end local v6    # "snackbar":Lcom/google/android/material/snackbar/Snackbar;
    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    sget v8, Lcom/google/android/material/R$layout;->design_layout_snackbar_include:I

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar;
    move-object v1, v0

    invoke-super {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dismiss()V

    .line 151
    return-void
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/snackbar/Snackbar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/snackbar/Snackbar;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/snackbar/Snackbar;
    :cond_0
    move-object v1, v0

    .line 331
    invoke-super {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getDuration()I

    move-result v1

    goto :goto_0
.end method

.method public isShown()Z
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar;
    move-object v1, v0

    invoke-super {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->isShown()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/snackbar/Snackbar;
    return v0
.end method

.method public setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, p2

    .local v2, "listener":Landroid/view/View$OnClickListener;
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/snackbar/Snackbar;
    return-object v0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "listener":Landroid/view/View$OnClickListener;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/Snackbar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    move-object v3, v5

    .line 304
    .local v3, "contentLayout":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    move-object v5, v3

    invoke-virtual {v5}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v5

    move-object v4, v5

    .line 305
    .local v4, "tv":Landroid/widget/TextView;
    move-object v5, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v2

    if-nez v5, :cond_1

    .line 306
    :cond_0
    move-object v5, v4

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    .line 323
    :goto_0
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Lcom/google/android/material/snackbar/Snackbar;
    return-object v0

    .line 310
    .restart local v0    # "this":Lcom/google/android/material/snackbar/Snackbar;
    :cond_1
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    .line 311
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    move-object v5, v4

    new-instance v6, Lcom/google/android/material/snackbar/Snackbar$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/snackbar/Snackbar$1;-><init>(Lcom/google/android/material/snackbar/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar;
    move v1, p1

    .local v1, "color":I
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/Snackbar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    move-object v2, v4

    .line 353
    .local v2, "contentLayout":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v4

    move-object v3, v4

    .line 354
    .local v3, "tv":Landroid/widget/TextView;
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/google/android/material/snackbar/Snackbar;
    return-object v0
.end method

.method public setActionTextColor(Landroid/content/res/ColorStateList;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar;
    move-object v1, p1

    .local v1, "colors":Landroid/content/res/ColorStateList;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/Snackbar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    move-object v2, v4

    .line 341
    .local v2, "contentLayout":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v4

    move-object v3, v4

    .line 342
    .local v3, "tv":Landroid/widget/TextView;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 343
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/google/android/material/snackbar/Snackbar;
    return-object v0
.end method

.method public setCallback(Lcom/google/android/material/snackbar/Snackbar$Callback;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar;
    move-object v1, p1

    .local v1, "callback":Lcom/google/android/material/snackbar/Snackbar$Callback;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/Snackbar;->callback:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;

    if-eqz v2, :cond_0

    .line 375
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/Snackbar;->callback:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->removeCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object v2

    .line 377
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 378
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object v2

    .line 382
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/snackbar/Snackbar;->callback:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;

    .line 383
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/snackbar/Snackbar;
    return-object v0
.end method

.method public setText(I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/snackbar/Snackbar;
    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar;
    move-object v1, p1

    .local v1, "message":Ljava/lang/CharSequence;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/Snackbar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    move-object v2, v4

    .line 269
    .local v2, "contentLayout":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v4

    move-object v3, v4

    .line 270
    .local v3, "tv":Landroid/widget/TextView;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/google/android/material/snackbar/Snackbar;
    return-object v0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar;
    move-object v1, v0

    invoke-super {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 144
    return-void
.end method
