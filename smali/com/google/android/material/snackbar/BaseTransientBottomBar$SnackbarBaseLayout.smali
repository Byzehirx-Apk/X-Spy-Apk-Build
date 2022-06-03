.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
.super Landroid/widget/FrameLayout;
.source "BaseTransientBottomBar.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SnackbarBaseLayout"
.end annotation


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private onAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

.field private onLayoutChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;

.field private final touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 717
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 721
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Lcom/google/android/material/R$styleable;->SnackbarLayout:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 722
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v4, v3

    sget v5, Lcom/google/android/material/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 723
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->SnackbarLayout_elevation:I

    const/4 v7, 0x0

    .line 724
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    .line 723
    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 726
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 728
    move-object v4, v0

    move-object v5, v1

    const-string/jumbo v6, "accessibility"

    .line 729
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    iput-object v5, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 730
    move-object v4, v0

    new-instance v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout$1;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;)V

    iput-object v5, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    .line 738
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-static {v4, v5}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    move-result v4

    .line 740
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    invoke-direct {v4, v5}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setClickableOrFocusableBasedOnAccessibility(Z)V

    .line 741
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;Z)V
    .locals 4

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setClickableOrFocusableBasedOnAccessibility(Z)V

    return-void
.end method

.method private setClickableOrFocusableBasedOnAccessibility(Z)V
    .locals 4

    .prologue
    .line 744
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
    move v1, p1

    .local v1, "touchExplorationEnabled":Z
    move-object v2, v0

    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setClickable(Z)V

    .line 745
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setFocusable(Z)V

    .line 746
    return-void

    .line 744
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 759
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v1, :cond_0

    .line 760
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 763
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 764
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 768
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 769
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v1, :cond_0

    .line 770
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 773
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-static {v1, v2}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    move-result v1

    .line 775
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
    move v1, p1

    .local v1, "changed":Z
    move v2, p2

    .local v2, "l":I
    move v3, p3

    .local v3, "t":I
    move/from16 v4, p4

    .local v4, "r":I
    move/from16 v5, p5

    .local v5, "b":I
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 751
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onLayoutChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;

    if-eqz v6, :cond_0

    .line 752
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onLayoutChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;

    move-object v7, v0

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-interface/range {v6 .. v11}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    .line 754
    :cond_0
    return-void
.end method

.method setOnAttachStateChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;)V
    .locals 4

    .prologue
    .line 784
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    .line 785
    return-void
.end method

.method setOnLayoutChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;)V
    .locals 4

    .prologue
    .line 779
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
    move-object v1, p1

    .local v1, "onLayoutChangeListener":Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onLayoutChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;

    .line 780
    return-void
.end method
