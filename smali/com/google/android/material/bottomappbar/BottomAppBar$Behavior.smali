.class public Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
.super Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior",
        "<",
        "Lcom/google/android/material/bottomappbar/BottomAppBar;",
        ">;"
    }
.end annotation


# instance fields
.field private final fabContentRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 692
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;-><init>()V

    .line 693
    move-object v1, v0

    new-instance v2, Landroid/graphics/Rect;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    .line 694
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 703
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 704
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    .line 705
    return-void
.end method

.method private updateFabPositionAndVisibility(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 6

    .prologue
    .line 709
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    move-object v1, p1

    .local v1, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v2, p2

    .local v2, "child":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v4, v1

    .line 710
    invoke-virtual {v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v4

    .line 711
    .local v3, "fabLayoutParams":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v4, v3

    const/16 v5, 0x11

    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 714
    move-object v4, v2

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1000(Lcom/google/android/material/bottomappbar/BottomAppBar;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 716
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    return v0
.end method


# virtual methods
.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 8

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Lcom/google/android/material/bottomappbar/BottomAppBar;

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomappbar/BottomAppBar;I)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    return v0
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomappbar/BottomAppBar;I)Z
    .locals 9

    .prologue
    .line 722
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v3, p3

    .local v3, "layoutDirection":I
    move-object v5, v2

    invoke-static {v5}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1100(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v5

    move-object v4, v5

    .line 723
    .local v4, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 724
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->updateFabPositionAndVisibility(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/bottomappbar/BottomAppBar;)Z

    move-result v5

    .line 725
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredContentRect(Landroid/graphics/Rect;)V

    .line 726
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabDiameter(I)V

    .line 731
    :cond_0
    move-object v5, v2

    invoke-static {v5}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1200(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 732
    move-object v5, v2

    invoke-static {v5}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1300(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 736
    :cond_1
    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 737
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-super {v5, v6, v7, v8}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    return v0
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 14
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/bottomappbar/BottomAppBar;

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;Landroid/view/View;II)Z

    move-result v7

    move v0, v7

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    return v0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;Landroid/view/View;II)Z
    .locals 14
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/bottomappbar/BottomAppBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 749
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    move-object v1, p1

    .local v1, "coordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p2

    .local v2, "child":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object/from16 v3, p3

    .local v3, "directTargetChild":Landroid/view/View;
    move-object/from16 v4, p4

    .local v4, "target":Landroid/view/View;
    move/from16 v5, p5

    .local v5, "axes":I
    move/from16 v6, p6

    .local v6, "type":I
    move-object v7, v2

    invoke-virtual {v7}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getHideOnScroll()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move v13, v6

    .line 750
    invoke-super/range {v7 .. v13}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    .line 749
    :goto_0
    move v0, v7

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    return v0

    .line 750
    .restart local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic slideDown(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->slideDown(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    return-void
.end method

.method protected slideDown(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 8

    .prologue
    .line 769
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    move-object v2, p1

    .local v2, "child":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideDown(Landroid/view/View;)V

    .line 770
    move-object v5, v2

    invoke-static {v5}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1100(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v5

    move-object v3, v5

    .line 771
    .local v3, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 772
    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    move-result v5

    .line 773
    move-object v5, v3

    invoke-virtual {v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredHeight()I

    move-result v5

    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move v4, v5

    .line 775
    .local v4, "fabShadowPadding":F
    move-object v5, v3

    invoke-virtual {v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->clearAnimation()V

    .line 776
    move-object v5, v3

    invoke-virtual {v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    move-object v6, v3

    .line 777
    invoke-virtual {v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getPaddingBottom()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    move v7, v4

    add-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    sget-object v6, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 778
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0xaf

    .line 779
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 781
    .end local v4    # "fabShadowPadding":F
    :cond_0
    return-void
.end method

.method protected bridge synthetic slideUp(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->slideUp(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    return-void
.end method

.method protected slideUp(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 6

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    move-object v1, p1

    .local v1, "child":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideUp(Landroid/view/View;)V

    .line 757
    move-object v3, v1

    invoke-static {v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1100(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v3

    move-object v2, v3

    .line 758
    .local v2, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 759
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->clearAnimation()V

    .line 760
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object v4, v1

    .line 761
    invoke-static {v4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1400(Lcom/google/android/material/bottomappbar/BottomAppBar;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 762
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xe1

    .line 763
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 765
    :cond_0
    return-void
.end method
