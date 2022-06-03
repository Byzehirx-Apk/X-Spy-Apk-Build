.class public Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_DEFAULT:Z = true


# instance fields
.field private autoHideEnabled:Z

.field private internalAutoHideListener:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

.field private tmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 883
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    .line 884
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 887
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 888
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Lcom/google/android/material/R$styleable;->FloatingActionButton_Behavior_Layout:[I

    .line 889
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 890
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->FloatingActionButton_Behavior_Layout_behavior_autoHide:I

    const/4 v7, 0x1

    .line 891
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    .line 894
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 895
    return-void
.end method

.method private static isBottomSheet(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 944
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 945
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 946
    move-object v2, v1

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move v0, v2

    .line 948
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private offsetIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 10

    .prologue
    .line 1062
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v7, v2

    iget-object v7, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    move-object v3, v7

    .line 1064
    .local v3, "padding":Landroid/graphics/Rect;
    move-object v7, v3

    if-eqz v7, :cond_3

    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    if-lez v7, :cond_3

    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    if-lez v7, :cond_3

    .line 1065
    move-object v7, v2

    .line 1066
    invoke-virtual {v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v7

    .line 1068
    .local v4, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    const/4 v7, 0x0

    move v5, v7

    .line 1069
    .local v5, "offsetTB":I
    const/4 v7, 0x0

    move v6, v7

    .line 1071
    .local v6, "offsetLR":I
    move-object v7, v2

    invoke-virtual {v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getRight()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    if-lt v7, v8, :cond_4

    .line 1073
    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move v6, v7

    .line 1078
    :cond_0
    :goto_0
    move-object v7, v2

    invoke-virtual {v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBottom()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    if-lt v7, v8, :cond_5

    .line 1080
    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move v5, v7

    .line 1086
    :cond_1
    :goto_1
    move v7, v5

    if-eqz v7, :cond_2

    .line 1087
    move-object v7, v2

    move v8, v5

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1089
    :cond_2
    move v7, v6

    if-eqz v7, :cond_3

    .line 1090
    move-object v7, v2

    move v8, v6

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1093
    .end local v4    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v5    # "offsetTB":I
    .end local v6    # "offsetLR":I
    :cond_3
    return-void

    .line 1074
    .restart local v4    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .restart local v5    # "offsetTB":I
    .restart local v6    # "offsetLR":I
    :cond_4
    move-object v7, v2

    invoke-virtual {v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLeft()I

    move-result v7

    move-object v8, v4

    iget v8, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    if-gt v7, v8, :cond_0

    .line 1076
    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    move v6, v7

    goto :goto_0

    .line 1081
    :cond_5
    move-object v7, v2

    invoke-virtual {v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getTop()I

    move-result v7

    move-object v8, v4

    iget v8, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    if-gt v7, v8, :cond_1

    .line 1083
    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    move v5, v7

    goto :goto_1
.end method

.method private shouldUpdateVisibility(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z
    .locals 6

    .prologue
    .line 957
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "dependency":Landroid/view/View;
    move-object v2, p2

    .local v2, "child":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v4, v2

    .line 958
    invoke-virtual {v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v4

    .line 959
    .local v3, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    if-nez v4, :cond_0

    .line 960
    const/4 v4, 0x0

    move v0, v4

    .line 975
    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    :goto_0
    return v0

    .line 963
    .restart local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getAnchorId()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 966
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 970
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getUserSetVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 972
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 975
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private updateFabVisibilityForAppBarLayout(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z
    .locals 9

    .prologue
    .line 980
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "appBarLayout":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v3, p3

    .local v3, "child":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->shouldUpdateVisibility(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 981
    const/4 v5, 0x0

    move v0, v5

    .line 999
    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    :goto_0
    return v0

    .line 984
    .restart local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->tmpRect:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    .line 985
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 989
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->tmpRect:Landroid/graphics/Rect;

    move-object v4, v5

    .line 990
    .local v4, "rect":Landroid/graphics/Rect;
    move-object v5, v1

    move-object v6, v2

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lcom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 992
    move-object v5, v4

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/android/material/appbar/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result v6

    if-gt v5, v6, :cond_2

    .line 994
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 999
    :goto_1
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 997
    :cond_2
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    goto :goto_1
.end method

.method private updateFabVisibilityForBottomSheet(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z
    .locals 7

    .prologue
    .line 1004
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "bottomSheet":Landroid/view/View;
    move-object v2, p2

    .local v2, "child":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->shouldUpdateVisibility(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1005
    const/4 v4, 0x0

    move v0, v4

    .line 1013
    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    :goto_0
    return v0

    .line 1007
    .restart local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v4

    .line 1008
    .local v3, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getHeight()I

    move-result v5

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    move-object v6, v3

    iget v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    .line 1009
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 1013
    :goto_1
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 1011
    :cond_1
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic getInsetDodgeRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 8
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->getInsetDodgeRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/Rect;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    return v0
.end method

.method public getInsetDodgeRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/Rect;)Z
    .locals 11
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1047
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v3, p3

    .local v3, "rect":Landroid/graphics/Rect;
    move-object v5, v2

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    move-object v4, v5

    .line 1048
    .local v4, "shadowPadding":Landroid/graphics/Rect;
    move-object v5, v3

    move-object v6, v2

    .line 1049
    invoke-virtual {v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLeft()I

    move-result v6

    move-object v7, v4

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    move-object v7, v2

    .line 1050
    invoke-virtual {v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getTop()I

    move-result v7

    move-object v8, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    move-object v8, v2

    .line 1051
    invoke-virtual {v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getRight()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    move-object v9, v2

    .line 1052
    invoke-virtual {v9}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBottom()I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    .line 1048
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1053
    const/4 v5, 0x1

    move v0, v5

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    return v0
.end method

.method public isAutoHideEnabled()Z
    .locals 2

    .prologue
    .line 918
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    return v0
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 4
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 923
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v2, v1

    iget v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez v2, :cond_0

    .line 926
    move-object v2, v1

    const/16 v3, 0x50

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 928
    :cond_0
    return-void
.end method

.method public bridge synthetic onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    return v0
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;)Z
    .locals 8

    .prologue
    .line 933
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v3, p3

    .local v3, "dependency":Landroid/view/View;
    move-object v4, v3

    instance-of v4, v4, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_1

    .line 936
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    check-cast v6, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->updateFabVisibilityForAppBarLayout(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v4

    .line 940
    :cond_0
    :goto_0
    const/4 v4, 0x0

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    return v0

    .line 937
    .restart local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    :cond_1
    move-object v4, v3

    invoke-static {v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->isBottomSheet(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 938
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->updateFabVisibilityForBottomSheet(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 8

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;I)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    return v0
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;I)Z
    .locals 12

    .prologue
    .line 1020
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v3, p3

    .local v3, "layoutDirection":I
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 1021
    .local v4, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v6, v8

    .local v6, "count":I
    :goto_0
    move v8, v5

    move v9, v6

    if-ge v8, v9, :cond_0

    .line 1022
    move-object v8, v4

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object v7, v8

    .line 1023
    .local v7, "dependency":Landroid/view/View;
    move-object v8, v7

    instance-of v8, v8, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v8, :cond_1

    .line 1024
    move-object v8, v0

    move-object v9, v1

    move-object v10, v7

    check-cast v10, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->updateFabVisibilityForAppBarLayout(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1025
    .line 1034
    .end local v7    # "dependency":Landroid/view/View;
    :cond_0
    :goto_1
    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-virtual {v8, v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 1036
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->offsetIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 1037
    const/4 v8, 0x1

    move v0, v8

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    return v0

    .line 1027
    .restart local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    .restart local v7    # "dependency":Landroid/view/View;
    :cond_1
    move-object v8, v7

    invoke-static {v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->isBottomSheet(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1028
    move-object v8, v0

    move-object v9, v7

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->updateFabVisibilityForBottomSheet(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1029
    goto :goto_1

    .line 1021
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public setAutoHideEnabled(Z)V
    .locals 4

    .prologue
    .line 906
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    move v1, p1

    .local v1, "autoHide":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    .line 907
    return-void
.end method

.method public setInternalAutoHideListener(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 953
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    .line 954
    return-void
.end method
