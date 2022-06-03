.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$State;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field public static final PEEK_HEIGHT_AUTO:I = -0x1

.field public static final STATE_COLLAPSED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HALF_EXPANDED:I = 0x6

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2


# instance fields
.field activePointerId:I

.field private callback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

.field collapsedOffset:I

.field private final dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private fitToContents:Z

.field fitToContentsOffset:I

.field halfExpandedOffset:I

.field hideable:Z

.field private ignoreEvents:Z

.field private importantForAccessibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initialY:I

.field private lastNestedScrollDy:I

.field private lastPeekHeight:I

.field private maximumVelocity:F

.field private nestedScrolled:Z

.field nestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field parentHeight:I

.field private peekHeight:I

.field private peekHeightAuto:Z

.field private peekHeightMin:I

.field private skipCollapsed:Z

.field state:I

.field touchingScrollingChild:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 124
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 150
    move-object v1, v0

    const/4 v2, 0x4

    iput v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 765
    move-object v1, v0

    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 150
    move-object v6, v0

    const/4 v7, 0x4

    iput v7, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 765
    move-object v6, v0

    new-instance v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v7, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 189
    move-object v6, v1

    move-object v7, v2

    sget-object v8, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v3, v6

    .line 190
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v6, v3

    sget v7, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    move-object v4, v6

    .line 191
    .local v4, "value":Landroid/util/TypedValue;
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    iget v6, v6, Landroid/util/TypedValue;->data:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 192
    move-object v6, v0

    move-object v7, v4

    iget v7, v7, Landroid/util/TypedValue;->data:I

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 198
    :goto_0
    move-object v6, v0

    move-object v7, v3

    sget v8, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 199
    move-object v6, v0

    move-object v7, v3

    sget v8, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    const/4 v9, 0x1

    .line 200
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 199
    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setFitToContents(Z)V

    .line 201
    move-object v6, v0

    move-object v7, v3

    sget v8, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    const/4 v9, 0x0

    .line 202
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 201
    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 203
    move-object v6, v3

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    move-object v6, v1

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    move-object v5, v6

    .line 205
    .local v5, "configuration":Landroid/view/ViewConfiguration;
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    .line 206
    return-void

    .line 194
    .end local v5    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    move-object v6, v0

    move-object v7, v3

    sget v8, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    const/4 v9, -0x1

    .line 195
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 194
    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    move v0, v1

    .end local v0    # "x0":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    return v0
.end method

.method static synthetic access$100(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    return v0
.end method

.method private calculateCollapsedOffset()V
    .locals 4

    .prologue
    .line 683
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_0

    .line 684
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastPeekHeight:I

    sub-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 688
    :goto_0
    return-void

    .line 686
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastPeekHeight:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    goto :goto_0
.end method

.method public static from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 981
    move-object v0, p0

    .local v0, "view":Landroid/view/View;, "TV;"
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v1, v3

    .line 982
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v1

    instance-of v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-nez v3, :cond_0

    .line 983
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "The view is not a child of CoordinatorLayout"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 985
    :cond_0
    move-object v3, v1

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v3

    move-object v2, v3

    .line 986
    .local v2, "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v3, v2

    instance-of v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v3, :cond_1

    .line 987
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "The view is not associated with BottomSheetBehavior"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 989
    :cond_1
    move-object v3, v2

    check-cast v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-object v0, v3

    .end local v0    # "view":Landroid/view/View;, "TV;"
    return-object v0
.end method

.method private getExpandedOffset()I
    .locals 2

    .prologue
    .line 736
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    return v0

    .restart local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getYVelocity()F
    .locals 4

    .prologue
    .line 728
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 729
    const/4 v1, 0x0

    move v0, v1

    .line 732
    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    :goto_0
    return v0

    .line 731
    .restart local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 732
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    .line 691
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 692
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 693
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 694
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 696
    :cond_0
    return-void
.end method

.method private updateImportantForAccessibility(Z)V
    .locals 12

    .prologue
    .line 993
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move v1, p1

    .local v1, "expanded":Z
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v7, :cond_0

    .line 994
    .line 1039
    :goto_0
    return-void

    .line 997
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v2, v7

    .line 998
    .local v2, "viewParent":Landroid/view/ViewParent;
    move-object v7, v2

    instance-of v7, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v7, :cond_1

    .line 999
    goto :goto_0

    .line 1002
    :cond_1
    move-object v7, v2

    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v3, v7

    .line 1003
    .local v3, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    move v4, v7

    .line 1004
    .local v4, "childCount":I
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_2

    move v7, v1

    if-eqz v7, :cond_2

    .line 1005
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-nez v7, :cond_4

    .line 1006
    move-object v7, v0

    new-instance v8, Ljava/util/HashMap;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move v10, v4

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    iput-object v8, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 1013
    :cond_2
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_8

    .line 1014
    move-object v7, v3

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1015
    .local v6, "child":Landroid/view/View;
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_5

    .line 1016
    .line 1013
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1009
    .end local v5    # "i":I
    .end local v6    # "child":Landroid/view/View;
    :cond_4
    goto :goto_0

    .line 1019
    .restart local v5    # "i":I
    .restart local v6    # "child":Landroid/view/View;
    :cond_5
    move v7, v1

    if-nez v7, :cond_6

    .line 1020
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    move-object v8, v6

    .line 1021
    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1023
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    move-object v9, v6

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_2

    .line 1027
    :cond_6
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_7

    .line 1028
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    move-object v8, v6

    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1031
    :cond_7
    move-object v7, v6

    const/4 v8, 0x4

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_2

    .line 1036
    .end local v6    # "child":Landroid/view/View;
    :cond_8
    move v7, v1

    if-nez v7, :cond_9

    .line 1037
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 1039
    :cond_9
    goto/16 :goto_0
.end method


# virtual methods
.method dispatchOnSlide(I)V
    .locals 8

    .prologue
    .line 892
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move v1, p1

    .local v1, "top":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    .line 893
    .local v2, "bottomSheet":Landroid/view/View;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v3, :cond_0

    .line 894
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-le v3, v4, :cond_1

    .line 895
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    move v6, v1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    move v6, v1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    move-object v7, v0

    .line 899
    invoke-direct {v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 898
    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    goto :goto_0
.end method

.method findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 712
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v6, v1

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 713
    move-object v6, v1

    move-object v0, v6

    .line 724
    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    :goto_0
    return-object v0

    .line 715
    .restart local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    :cond_0
    move-object v6, v1

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 716
    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    move-object v2, v6

    .line 717
    .local v2, "group":Landroid/view/ViewGroup;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v4, v6

    .local v4, "count":I
    :goto_1
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 718
    move-object v6, v0

    move-object v7, v2

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 719
    .local v5, "scrollingChild":Landroid/view/View;
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 720
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 717
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 724
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    .end local v4    # "count":I
    .end local v5    # "scrollingChild":Landroid/view/View;
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public final getPeekHeight()I
    .locals 2

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    return v0

    .restart local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    goto :goto_0
.end method

.method getPeekHeightMin()I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 906
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    return v0
.end method

.method public getSkipCollapsed()Z
    .locals 2

    .prologue
    .line 601
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    return v0
.end method

.method public final getState()I
    .locals 2

    .prologue
    .line 662
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    return v0
.end method

.method public isFitToContents()Z
    .locals 2

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    return v0
.end method

.method public isHideable()Z
    .locals 2

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    return v0
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move-object v3, p3

    .local v3, "event":Landroid/view/MotionEvent;
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->isShown()Z

    move-result v7

    if-nez v7, :cond_0

    .line 272
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 273
    const/4 v7, 0x0

    move v0, v7

    .line 318
    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    :goto_0
    return v0

    .line 275
    .restart local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    :cond_0
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    move v4, v7

    .line 277
    .local v4, "action":I
    move v7, v4

    if-nez v7, :cond_1

    .line 278
    move-object v7, v0

    invoke-direct {v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->reset()V

    .line 280
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_2

    .line 281
    move-object v7, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 283
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 284
    move v7, v4

    packed-switch v7, :pswitch_data_0

    .line 309
    :cond_3
    :goto_1
    :pswitch_0
    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v7, :cond_7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v7, :cond_7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object v8, v3

    .line 311
    invoke-virtual {v7, v8}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 312
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 287
    :pswitch_1
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 288
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 290
    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-eqz v7, :cond_3

    .line 291
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 292
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 296
    :pswitch_2
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    move v5, v7

    .line 297
    .local v5, "initialX":I
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 298
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    :goto_2
    move-object v6, v7

    .line 299
    .local v6, "scroll":Landroid/view/View;
    move-object v7, v6

    if-eqz v7, :cond_4

    move-object v7, v1

    move-object v8, v6

    move v9, v5

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    invoke-virtual {v7, v8, v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 300
    move-object v7, v0

    move-object v8, v3

    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 301
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 303
    :cond_4
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    move-object v8, v1

    move-object v9, v2

    move v10, v5

    move-object v11, v0

    iget v11, v11, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 305
    invoke-virtual {v8, v9, v10, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 306
    goto :goto_1

    .line 298
    .end local v6    # "scroll":Landroid/view/View;
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 305
    .restart local v6    # "scroll":Landroid/view/View;
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 317
    .end local v5    # "initialX":I
    .end local v6    # "scroll":Landroid/view/View;
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_8

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    :goto_4
    move-object v5, v7

    .line 318
    .local v5, "scroll":Landroid/view/View;
    move v7, v4

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    move-object v7, v5

    if-eqz v7, :cond_9

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v7, :cond_9

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_9

    move-object v7, v1

    move-object v8, v5

    move-object v9, v3

    .line 322
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    move-object v10, v3

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v7, v8, v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v7

    if-nez v7, :cond_9

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v7, :cond_9

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    int-to-float v7, v7

    move-object v8, v3

    .line 324
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    const/4 v7, 0x1

    .line 318
    :goto_5
    move v0, v7

    goto/16 :goto_0

    .line 317
    .end local v5    # "scroll":Landroid/view/View;
    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    .line 324
    .restart local v5    # "scroll":Landroid/view/View;
    :cond_9
    const/4 v7, 0x0

    goto :goto_5

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move v3, p3

    .local v3, "layoutDirection":I
    move-object v5, v1

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 228
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 230
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    move v4, v5

    .line 232
    .local v4, "savedTop":I
    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 234
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    iput v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 235
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v5, :cond_4

    .line 236
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    if-nez v5, :cond_1

    .line 237
    move-object v5, v0

    move-object v6, v1

    .line 239
    invoke-virtual {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$dimen;->design_bottom_sheet_peek_height_min:I

    .line 240
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    .line 242
    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v8

    const/16 v9, 0x9

    mul-int/lit8 v8, v8, 0x9

    const/16 v9, 0x10

    div-int/lit8 v8, v8, 0x10

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastPeekHeight:I

    .line 246
    :goto_0
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 247
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 248
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 250
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 251
    move-object v5, v2

    move-object v6, v0

    invoke-direct {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 261
    :cond_2
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-nez v5, :cond_3

    .line 262
    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-static {v6, v7}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 264
    :cond_3
    move-object v5, v0

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 265
    move-object v5, v0

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 266
    const/4 v5, 0x1

    move v0, v5

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    return v0

    .line 244
    .restart local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    :cond_4
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    iput v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastPeekHeight:I

    goto :goto_0

    .line 252
    :cond_5
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_6

    .line 253
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 254
    :cond_6
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v5, :cond_7

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_7

    .line 255
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 256
    :cond_7
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_8

    .line 257
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 258
    :cond_8
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_9

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 259
    :cond_9
    move-object v5, v2

    move v6, v4

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 12
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, p1

    .local v1, "coordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move-object v3, p3

    .local v3, "target":Landroid/view/View;
    move/from16 v4, p4

    .local v4, "velocityX":F
    move/from16 v5, p5

    .local v5, "velocityY":F
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_1

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    .line 489
    invoke-super/range {v6 .. v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    .line 487
    :goto_0
    move v0, v6

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    return v0

    .line 489
    .restart local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 15
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
    .param p6    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object/from16 v1, p1

    .local v1, "coordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move-object/from16 v3, p3

    .local v3, "target":Landroid/view/View;
    move/from16 v4, p4

    .local v4, "dx":I
    move/from16 v5, p5

    .local v5, "dy":I
    move-object/from16 v6, p6

    .local v6, "consumed":[I
    move/from16 v7, p7

    .local v7, "type":I
    move v11, v7

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 381
    .line 415
    :goto_0
    return-void

    .line 383
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    move-object v8, v11

    .line 384
    .local v8, "scrollingChild":Landroid/view/View;
    move-object v11, v3

    move-object v12, v8

    if-eq v11, v12, :cond_1

    .line 385
    goto :goto_0

    .line 387
    :cond_1
    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    move v9, v11

    .line 388
    .local v9, "currentTop":I
    move v11, v9

    move v12, v5

    sub-int/2addr v11, v12

    move v10, v11

    .line 389
    .local v10, "newTop":I
    move v11, v5

    if-lez v11, :cond_4

    .line 390
    move v11, v10

    move-object v12, v0

    invoke-direct {v12}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 391
    move-object v11, v6

    const/4 v12, 0x1

    move v13, v9

    move-object v14, v0

    invoke-direct {v14}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v14

    sub-int/2addr v13, v14

    aput v13, v11, v12

    .line 392
    move-object v11, v2

    move-object v12, v6

    const/4 v13, 0x1

    aget v12, v12, v13

    neg-int v12, v12

    invoke-static {v11, v12}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 393
    move-object v11, v0

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 412
    :cond_2
    :goto_1
    move-object v11, v0

    move-object v12, v2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 413
    move-object v11, v0

    move v12, v5

    iput v12, v11, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 414
    move-object v11, v0

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 415
    goto :goto_0

    .line 395
    :cond_3
    move-object v11, v6

    const/4 v12, 0x1

    move v13, v5

    aput v13, v11, v12

    .line 396
    move-object v11, v2

    move v12, v5

    neg-int v12, v12

    invoke-static {v11, v12}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 397
    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 399
    :cond_4
    move v11, v5

    if-gez v11, :cond_2

    .line 400
    move-object v11, v3

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v11

    if-nez v11, :cond_2

    .line 401
    move v11, v10

    move-object v12, v0

    iget v12, v12, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-le v11, v12, :cond_5

    move-object v11, v0

    iget-boolean v11, v11, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v11, :cond_6

    .line 402
    :cond_5
    move-object v11, v6

    const/4 v12, 0x1

    move v13, v5

    aput v13, v11, v12

    .line 403
    move-object v11, v2

    move v12, v5

    neg-int v12, v12

    invoke-static {v11, v12}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 404
    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 406
    :cond_6
    move-object v11, v6

    const/4 v12, 0x1

    move v13, v9

    move-object v14, v0

    iget v14, v14, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v13, v14

    aput v13, v11, v12

    .line 407
    move-object v11, v2

    move-object v12, v6

    const/4 v13, 0x1

    aget v12, v12, v13

    neg-int v12, v12

    invoke-static {v11, v12}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 408
    move-object v11, v0

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move-object v3, p3

    .local v3, "state":Landroid/os/Parcelable;
    move-object v5, v3

    check-cast v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    move-object v4, v5

    .line 216
    .local v4, "ss":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v8

    invoke-super {v5, v6, v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 218
    move-object v5, v4

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    move-object v5, v4

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 219
    :cond_0
    move-object v5, v0

    const/4 v6, 0x4

    iput v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_1
    move-object v5, v0

    move-object v6, v4

    iget v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    iput v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    new-instance v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;I)V

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    return-object v0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 9
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, p1

    .local v1, "coordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move-object v3, p3

    .local v3, "directTargetChild":Landroid/view/View;
    move-object v4, p4

    .local v4, "target":Landroid/view/View;
    move v5, p5

    .local v5, "axes":I
    move v6, p6

    .local v6, "type":I
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 366
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 367
    move v7, v5

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v0, v7

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    return v0

    .restart local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 15
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object/from16 v1, p1

    .local v1, "coordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move-object/from16 v3, p3

    .local v3, "target":Landroid/view/View;
    move/from16 v4, p4

    .local v4, "type":I
    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v0

    invoke-direct {v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 424
    move-object v8, v0

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 425
    .line 478
    :goto_0
    return-void

    .line 427
    :cond_0
    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_1

    move-object v8, v0

    iget-boolean v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    if-nez v8, :cond_2

    .line 428
    :cond_1
    goto :goto_0

    .line 432
    :cond_2
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    if-lez v8, :cond_3

    .line 433
    move-object v8, v0

    invoke-direct {v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v8

    move v5, v8

    .line 434
    .local v5, "top":I
    const/4 v8, 0x3

    move v6, v8

    .line 471
    .local v6, "targetState":I
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object v9, v2

    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    move v11, v5

    invoke-virtual {v8, v9, v10, v11}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 472
    move-object v8, v0

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 473
    move-object v8, v2

    new-instance v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v2

    move v13, v6

    invoke-direct {v10, v11, v12, v13}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {v8, v9}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 477
    :goto_2
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 478
    goto :goto_0

    .line 435
    .end local v5    # "top":I
    .end local v6    # "targetState":I
    :cond_3
    move-object v8, v0

    iget-boolean v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v8, :cond_4

    move-object v8, v0

    move-object v9, v2

    move-object v10, v0

    invoke-direct {v10}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getYVelocity()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 436
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    move v5, v8

    .line 437
    .restart local v5    # "top":I
    const/4 v8, 0x5

    move v6, v8

    .restart local v6    # "targetState":I
    goto :goto_1

    .line 438
    .end local v5    # "top":I
    .end local v6    # "targetState":I
    :cond_4
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    if-nez v8, :cond_a

    .line 439
    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move v7, v8

    .line 440
    .local v7, "currentTop":I
    move-object v8, v0

    iget-boolean v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v8, :cond_6

    .line 441
    move v8, v7

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v9, v7

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 442
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    move v5, v8

    .line 443
    .restart local v5    # "top":I
    const/4 v8, 0x3

    move v6, v8

    .line 467
    .restart local v6    # "targetState":I
    :goto_3
    goto :goto_1

    .line 445
    .end local v5    # "top":I
    .end local v6    # "targetState":I
    :cond_5
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    move v5, v8

    .line 446
    .restart local v5    # "top":I
    const/4 v8, 0x4

    move v6, v8

    .restart local v6    # "targetState":I
    goto :goto_3

    .line 449
    .end local v5    # "top":I
    .end local v6    # "targetState":I
    :cond_6
    move v8, v7

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    if-ge v8, v9, :cond_8

    .line 450
    move v8, v7

    move v9, v7

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 451
    const/4 v8, 0x0

    move v5, v8

    .line 452
    .restart local v5    # "top":I
    const/4 v8, 0x3

    move v6, v8

    .restart local v6    # "targetState":I
    goto :goto_3

    .line 454
    .end local v5    # "top":I
    .end local v6    # "targetState":I
    :cond_7
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    move v5, v8

    .line 455
    .restart local v5    # "top":I
    const/4 v8, 0x6

    move v6, v8

    .restart local v6    # "targetState":I
    goto :goto_3

    .line 458
    .end local v5    # "top":I
    .end local v6    # "targetState":I
    :cond_8
    move v8, v7

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v9, v7

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 459
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    move v5, v8

    .line 460
    .restart local v5    # "top":I
    const/4 v8, 0x6

    move v6, v8

    .restart local v6    # "targetState":I
    goto :goto_3

    .line 462
    .end local v5    # "top":I
    .end local v6    # "targetState":I
    :cond_9
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    move v5, v8

    .line 463
    .restart local v5    # "top":I
    const/4 v8, 0x4

    move v6, v8

    .restart local v6    # "targetState":I
    goto :goto_3

    .line 468
    .end local v5    # "top":I
    .end local v6    # "targetState":I
    .end local v7    # "currentTop":I
    :cond_a
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    move v5, v8

    .line 469
    .restart local v5    # "top":I
    const/4 v8, 0x4

    move v6, v8

    .restart local v6    # "targetState":I
    goto/16 :goto_1

    .line 475
    :cond_b
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move-object v3, p3

    .local v3, "event":Landroid/view/MotionEvent;
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_0

    .line 330
    const/4 v5, 0x0

    move v0, v5

    .line 354
    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    :goto_0
    return v0

    .line 332
    .restart local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    move v4, v5

    .line 333
    .local v4, "action":I
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move v5, v4

    if-nez v5, :cond_1

    .line 334
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 336
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v5, :cond_2

    .line 337
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 340
    :cond_2
    move v5, v4

    if-nez v5, :cond_3

    .line 341
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->reset()V

    .line 343
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_4

    .line 344
    move-object v5, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 346
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 349
    move v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v5, :cond_5

    .line 350
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    int-to-float v5, v5

    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v6}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 351
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object v6, v2

    move-object v7, v3

    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 354
    :cond_5
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .locals 4

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, p1

    .local v1, "callback":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 611
    return-void
.end method

.method public setFitToContents(Z)V
    .locals 5

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move v1, p1

    .local v1, "fitToContents":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 510
    .line 521
    :goto_0
    return-void

    .line 512
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 516
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 517
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 520
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    const/4 v3, 0x3

    :goto_1
    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 521
    goto :goto_0

    .line 520
    :cond_2
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    goto :goto_1
.end method

.method public setHideable(Z)V
    .locals 4

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move v1, p1

    .local v1, "hideable":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 570
    return-void
.end method

.method public final setPeekHeight(I)V
    .locals 7

    .prologue
    .line 531
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move v1, p1

    .local v1, "peekHeight":I
    const/4 v4, 0x0

    move v2, v4

    .line 532
    .local v2, "layout":Z
    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 533
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v4, :cond_0

    .line 534
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 535
    const/4 v4, 0x1

    move v2, v4

    .line 543
    :cond_0
    :goto_0
    move v4, v2

    if-eqz v4, :cond_1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    .line 544
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 545
    .local v3, "view":Landroid/view/View;, "TV;"
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 546
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 549
    .end local v3    # "view":Landroid/view/View;, "TV;"
    :cond_1
    return-void

    .line 537
    :cond_2
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v4, :cond_3

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    move v5, v1

    if-eq v4, v5, :cond_0

    .line 538
    :cond_3
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 539
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    .line 540
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    move v6, v1

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 541
    const/4 v4, 0x1

    move v2, v4

    goto :goto_0
.end method

.method public setSkipCollapsed(Z)V
    .locals 4

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move v1, p1

    .local v1, "skipCollapsed":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    .line 591
    return-void
.end method

.method public final setState(I)V
    .locals 12

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move v1, p1

    .local v1, "state":I
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v5, v6, :cond_0

    .line 622
    .line 652
    :goto_0
    return-void

    .line 624
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v5, :cond_3

    .line 626
    move v5, v1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    move v5, v1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    move v5, v1

    const/4 v6, 0x6

    if-eq v5, v6, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v5, :cond_2

    move v5, v1

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    .line 630
    :cond_1
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 632
    :cond_2
    goto :goto_0

    .line 634
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v2, v5

    .line 635
    .local v2, "child":Landroid/view/View;, "TV;"
    move-object v5, v2

    if-nez v5, :cond_4

    .line 636
    goto :goto_0

    .line 639
    :cond_4
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 640
    .local v3, "parent":Landroid/view/ViewParent;
    move-object v5, v3

    if-eqz v5, :cond_5

    move-object v5, v3

    invoke-interface {v5}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v2

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 641
    move v5, v1

    move v4, v5

    .line 642
    .local v4, "finalState":I
    move-object v5, v2

    new-instance v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v2

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 649
    .line 652
    .end local v4    # "finalState":I
    :goto_1
    goto :goto_0

    .line 650
    :cond_5
    move-object v5, v0

    move-object v6, v2

    move v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;I)V

    goto :goto_1
.end method

.method setStateInternal(I)V
    .locals 6

    .prologue
    .line 666
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move v1, p1

    .local v1, "state":I
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 667
    .line 680
    :goto_0
    return-void

    .line 669
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 670
    move v3, v1

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    move v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 671
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    .line 676
    :cond_2
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    .line 677
    .local v2, "bottomSheet":Landroid/view/View;
    move-object v3, v2

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v3, :cond_3

    .line 678
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    move-object v4, v2

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    .line 680
    :cond_3
    goto :goto_0

    .line 672
    .end local v2    # "bottomSheet":Landroid/view/View;
    :cond_4
    move v3, v1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5

    move v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 673
    :cond_5
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    goto :goto_1
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 7

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "yvel":F
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    if-eqz v4, :cond_0

    .line 700
    const/4 v4, 0x1

    move v0, v4

    .line 707
    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    :goto_0
    return v0

    .line 702
    .restart local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-ge v4, v5, :cond_1

    .line 704
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 706
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    move v5, v2

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move v3, v4

    .line 707
    .local v3, "newTop":F
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method startSettlingAnimation(Landroid/view/View;I)V
    .locals 11

    .prologue
    .line 741
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "state":I
    move v4, v2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 742
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    move v3, v4

    .line 757
    .local v3, "top":I
    :cond_0
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 758
    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 759
    move-object v4, v1

    new-instance v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 763
    :goto_1
    return-void

    .line 743
    .end local v3    # "top":I
    :cond_1
    move v4, v2

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 744
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    move v3, v4

    .line 745
    .restart local v3    # "top":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v4, :cond_0

    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    if-gt v4, v5, :cond_0

    .line 747
    const/4 v4, 0x3

    move v2, v4

    .line 748
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    move v3, v4

    goto :goto_0

    .line 750
    .end local v3    # "top":I
    :cond_2
    move v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 751
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v4

    move v3, v4

    .restart local v3    # "top":I
    goto :goto_0

    .line 752
    .end local v3    # "top":I
    :cond_3
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v4, :cond_4

    move v4, v2

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 753
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    move v3, v4

    .restart local v3    # "top":I
    goto :goto_0

    .line 755
    .end local v3    # "top":I
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Illegal state argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 761
    .restart local v3    # "top":I
    :cond_5
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1
.end method
