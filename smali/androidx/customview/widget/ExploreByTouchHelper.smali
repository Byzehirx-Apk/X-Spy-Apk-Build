.class public abstract Landroidx/customview/widget/ExploreByTouchHelper;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter",
            "<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/FocusStrategy$CollectionAdapter",
            "<",
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 100
    new-instance v0, Landroid/graphics/Rect;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 335
    new-instance v0, Landroidx/customview/widget/ExploreByTouchHelper$1;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Landroidx/customview/widget/ExploreByTouchHelper$1;-><init>()V

    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    .line 347
    new-instance v0, Landroidx/customview/widget/ExploreByTouchHelper$2;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Landroidx/customview/widget/ExploreByTouchHelper$2;-><init>()V

    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v3, v0

    invoke-direct {v3}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 104
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 105
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 106
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 107
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 119
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 123
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 127
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 136
    move-object v3, v1

    if-nez v3, :cond_0

    .line 137
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "View may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 142
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 143
    .local v2, "context":Landroid/content/Context;
    move-object v3, v0

    move-object v4, v2

    const-string/jumbo v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 147
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 148
    move-object v3, v1

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_1

    .line 150
    move-object v3, v1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 153
    :cond_1
    return-void
.end method

.method private clearAccessibilityFocus(I)Z
    .locals 5

    .prologue
    .line 998
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    move-object v2, v0

    iget v2, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 999
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 1000
    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1001
    move-object v2, v0

    move v3, v1

    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v2

    .line 1003
    const/4 v2, 0x1

    move v0, v2

    .line 1005
    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private clickKeyboardFocusedVirtualView()Z
    .locals 5

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    return v0

    .restart local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 6

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    move v2, p2

    .local v2, "eventType":I
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 641
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :goto_0
    return-object v0

    .line 639
    .restart local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :pswitch_0
    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 9

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    move v2, p2

    .local v2, "eventType":I
    move v5, v2

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    move-object v3, v5

    .line 678
    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v5

    move-object v4, v5

    .line 681
    .local v4, "node":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 682
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 683
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 684
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 685
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 686
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 689
    move-object v5, v0

    move v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 692
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_0

    .line 693
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 698
    :cond_0
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 699
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move v7, v1

    invoke-static {v5, v6, v7}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 700
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 702
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    return-object v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 5

    .prologue
    .line 653
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "eventType":I
    move v3, v1

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    move-object v2, v3

    .line 654
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v3, v0

    iget-object v3, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 655
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    return-object v0
.end method

.method private createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 791
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v7

    move-object v2, v7

    .line 794
    .local v2, "node":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v7, v2

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 795
    move-object v7, v2

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 796
    move-object v7, v2

    const-string/jumbo v8, "android.view.View"

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 797
    move-object v7, v2

    sget-object v8, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 798
    move-object v7, v2

    sget-object v8, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 799
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 802
    move-object v7, v0

    move v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 805
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_0

    move-object v7, v2

    invoke-virtual {v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_0

    .line 806
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 810
    :cond_0
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 811
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    sget-object v8, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 812
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 816
    :cond_1
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v7

    move v3, v7

    .line 817
    .local v3, "actions":I
    move v7, v3

    const/16 v8, 0x40

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_2

    .line 818
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 821
    :cond_2
    move v7, v3

    const/16 v8, 0x80

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_3

    .line 822
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 827
    :cond_3
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 828
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move v9, v1

    invoke-virtual {v7, v8, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 831
    move-object v7, v0

    iget v7, v7, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    move v8, v1

    if-ne v7, v8, :cond_5

    .line 832
    move-object v7, v2

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 833
    move-object v7, v2

    const/16 v8, 0x80

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 840
    :goto_0
    move-object v7, v0

    iget v7, v7, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    move v8, v1

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    :goto_1
    move v4, v7

    .line 841
    .local v4, "isFocused":Z
    move v7, v4

    if-eqz v7, :cond_7

    .line 842
    move-object v7, v2

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 846
    :cond_4
    :goto_2
    move-object v7, v2

    move v8, v4

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 848
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 852
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 853
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    sget-object v8, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 854
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 857
    move-object v7, v2

    iget v7, v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    .line 858
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v7

    move-object v5, v7

    .line 860
    .local v5, "parentNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v7, v2

    iget v7, v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    move v6, v7

    .line 861
    .local v6, "virtualDescendantId":I
    :goto_3
    move v7, v6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 864
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;I)V

    .line 865
    move-object v7, v5

    sget-object v8, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 867
    move-object v7, v0

    move v8, v6

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 868
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 869
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 862
    move-object v7, v5

    iget v7, v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    move v6, v7

    goto :goto_3

    .line 835
    .end local v4    # "isFocused":Z
    .end local v5    # "parentNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v6    # "virtualDescendantId":I
    :cond_5
    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 836
    move-object v7, v2

    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto/16 :goto_0

    .line 840
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 843
    .restart local v4    # "isFocused":Z
    :cond_7
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 844
    move-object v7, v2

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto/16 :goto_2

    .line 871
    .restart local v5    # "parentNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .restart local v6    # "virtualDescendantId":I
    :cond_8
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 874
    .end local v5    # "parentNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v6    # "virtualDescendantId":I
    :cond_9
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScrollX()I

    move-result v9

    sub-int/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    move-object v10, v0

    iget-object v10, v10, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 875
    invoke-virtual {v10}, Landroid/view/View;->getScrollY()I

    move-result v10

    sub-int/2addr v9, v10

    .line 874
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 878
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 879
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScrollX()I

    move-result v9

    sub-int/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    move-object v10, v0

    iget-object v10, v10, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 880
    invoke-virtual {v10}, Landroid/view/View;->getScrollY()I

    move-result v10

    sub-int/2addr v9, v10

    .line 879
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 881
    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    move v5, v7

    .line 882
    .local v5, "intersects":Z
    move v7, v5

    if-eqz v7, :cond_b

    .line 883
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 885
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroidx/customview/widget/ExploreByTouchHelper;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 886
    move-object v7, v2

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 891
    .end local v5    # "intersects":Z
    :cond_b
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    return-object v0
.end method

.method private createNodeForHost()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move-object v6, v0

    iget-object v6, v6, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v6

    move-object v1, v6

    .line 735
    .local v1, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v6, v0

    iget-object v6, v6, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move-object v7, v1

    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 738
    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 739
    .local v2, "virtualViewIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroidx/customview/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 741
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v6

    move v3, v6

    .line 742
    .local v3, "realNodeCount":I
    move v6, v3

    if-lez v6, :cond_0

    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 743
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Views cannot have both real and virtual children"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 746
    :cond_0
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v6

    .local v5, "count":I
    :goto_0
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_1

    .line 747
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move-object v8, v2

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    .line 746
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 750
    :cond_1
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    return-object v0
.end method

.method private getAllNodes()Landroidx/collection/SparseArrayCompat;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 428
    .local v1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/customview/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 430
    new-instance v5, Landroidx/collection/SparseArrayCompat;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroidx/collection/SparseArrayCompat;-><init>()V

    move-object v2, v5

    .line 431
    .local v2, "allNodes":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;>;"
    const/4 v5, 0x0

    move v3, v5

    .local v3, "virtualViewId":I
    :goto_0
    move v5, v3

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 432
    move-object v5, v0

    move v6, v3

    invoke-direct {v5, v6}, Landroidx/customview/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v5

    move-object v4, v5

    .line 433
    .local v4, "virtualView":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v5, v2

    move v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 431
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    .end local v4    # "virtualView":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    return-object v0
.end method

.method private getBoundsInParent(ILandroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    move-object v2, p2

    .local v2, "outBounds":Landroid/graphics/Rect;
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v4

    move-object v3, v4

    .line 329
    .local v3, "node":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 330
    return-void
.end method

.method private static guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "host":Landroid/view/View;
    move v1, p1

    .local v1, "direction":I
    move-object v2, p2

    .local v2, "outBounds":Landroid/graphics/Rect;
    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    move v3, v5

    .line 451
    .local v3, "w":I
    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    move v4, v5

    .line 453
    .local v4, "h":I
    move v5, v1

    sparse-switch v5, :sswitch_data_0

    .line 467
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 455
    :sswitch_0
    move-object v5, v2

    move v6, v3

    const/4 v7, 0x0

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 456
    .line 471
    :goto_0
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "host":Landroid/view/View;
    return-object v0

    .line 458
    .restart local v0    # "host":Landroid/view/View;
    :sswitch_1
    move-object v5, v2

    const/4 v6, 0x0

    move v7, v4

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 459
    goto :goto_0

    .line 461
    :sswitch_2
    move-object v5, v2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 462
    goto :goto_0

    .line 464
    :sswitch_3
    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, -0x1

    move v8, v3

    const/4 v9, -0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 465
    goto :goto_0

    .line 453
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_2
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private isVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 6

    .prologue
    .line 932
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move-object v1, p1

    .local v1, "localRect":Landroid/graphics/Rect;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 933
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    .line 952
    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :goto_0
    return v0

    .line 937
    .restart local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 938
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 942
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v2, v4

    .line 943
    .local v2, "viewParent":Landroid/view/ViewParent;
    :goto_1
    move-object v4, v2

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_5

    .line 944
    move-object v4, v2

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 945
    .local v3, "view":Landroid/view/View;
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_3

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    .line 946
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 948
    :cond_4
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v2, v4

    .line 949
    goto :goto_1

    .line 952
    .end local v3    # "view":Landroid/view/View;
    :cond_5
    move-object v4, v2

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private static keyToDirection(I)I
    .locals 2

    .prologue
    .line 309
    move v0, p0

    .local v0, "keyCode":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 317
    :pswitch_0
    const/16 v1, 0x82

    move v0, v1

    .end local v0    # "keyCode":I
    :goto_0
    return v0

    .line 311
    .restart local v0    # "keyCode":I
    :pswitch_1
    const/16 v1, 0x11

    move v0, v1

    goto :goto_0

    .line 313
    :pswitch_2
    const/16 v1, 0x21

    move v0, v1

    goto :goto_0

    .line 315
    :pswitch_3
    const/16 v1, 0x42

    move v0, v1

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private moveFocus(ILandroid/graphics/Rect;)Z
    .locals 17
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 372
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move/from16 v1, p1

    .local v1, "direction":I
    move-object/from16 v2, p2

    .local v2, "previouslyFocusedRect":Landroid/graphics/Rect;
    move-object v9, v0

    invoke-direct {v9}, Landroidx/customview/widget/ExploreByTouchHelper;->getAllNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v9

    move-object v3, v9

    .line 374
    .local v3, "allNodes":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;>;"
    move-object v9, v0

    iget v9, v9, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    move v4, v9

    .line 375
    .local v4, "focusedNodeId":I
    move v9, v4

    const/high16 v10, -0x80000000

    if-ne v9, v10, :cond_0

    const/4 v9, 0x0

    .line 376
    :goto_0
    move-object v5, v9

    .line 379
    .local v5, "focusedNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v9, v1

    sparse-switch v9, :sswitch_data_0

    .line 410
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const-string/jumbo v11, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 375
    .end local v5    # "focusedNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    move-object v9, v3

    move v10, v4

    .line 376
    invoke-virtual {v9, v10}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    goto :goto_0

    .line 382
    .restart local v5    # "focusedNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :sswitch_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 383
    invoke-static {v9}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_1
    move v7, v9

    .line 384
    .local v7, "isLayoutRtl":Z
    move-object v9, v3

    sget-object v10, Landroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    sget-object v11, Landroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    move-object v12, v5

    move v13, v1

    move v14, v7

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Landroidx/customview/widget/FocusStrategy;->findNextFocusInRelativeDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v6, v9

    .line 416
    .end local v7    # "isLayoutRtl":Z
    .local v6, "nextFocusedNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_2
    move-object v9, v6

    if-nez v9, :cond_4

    .line 417
    const/high16 v9, -0x80000000

    move v7, v9

    .line 423
    .local v7, "nextFocusedNodeId":I
    :goto_3
    move-object v9, v0

    move v10, v7

    invoke-virtual {v9, v10}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v9

    move v0, v9

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    return v0

    .line 383
    .end local v6    # "nextFocusedNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v7    # "nextFocusedNodeId":I
    .restart local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 392
    :sswitch_1
    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v9

    .line 393
    .local v8, "selectedRect":Landroid/graphics/Rect;
    move-object v9, v0

    iget v9, v9, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v10, -0x80000000

    if-eq v9, v10, :cond_2

    .line 395
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    move-object v11, v8

    invoke-direct {v9, v10, v11}, Landroidx/customview/widget/ExploreByTouchHelper;->getBoundsInParent(ILandroid/graphics/Rect;)V

    .line 406
    :goto_4
    move-object v9, v3

    sget-object v10, Landroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    sget-object v11, Landroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    move-object v12, v5

    move-object v13, v8

    move v14, v1

    invoke-static/range {v9 .. v14}, Landroidx/customview/widget/FocusStrategy;->findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v6, v9

    .line 408
    .restart local v6    # "nextFocusedNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    goto :goto_2

    .line 396
    .end local v6    # "nextFocusedNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_2
    move-object v9, v2

    if-eqz v9, :cond_3

    .line 398
    move-object v9, v8

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 404
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move v10, v1

    move-object v11, v8

    invoke-static {v9, v10, v11}, Landroidx/customview/widget/ExploreByTouchHelper;->guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    goto :goto_4

    .line 419
    .end local v8    # "selectedRect":Landroid/graphics/Rect;
    .restart local v6    # "nextFocusedNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_4
    move-object v9, v3

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v9

    move v8, v9

    .line 420
    .local v8, "index":I
    move-object v9, v3

    move v10, v8

    invoke-virtual {v9, v10}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v9

    move v7, v9

    .restart local v7    # "nextFocusedNodeId":I
    goto :goto_3

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x11 -> :sswitch_1
        0x21 -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 908
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    move v2, p2

    .local v2, "action":I
    move-object v3, p3

    .local v3, "arguments":Landroid/os/Bundle;
    move v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 918
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/customview/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :goto_0
    return v0

    .line 910
    .restart local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :sswitch_0
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 912
    :sswitch_1
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 914
    :sswitch_2
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 916
    :sswitch_3
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 908
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 904
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "action":I
    move-object v2, p2

    .local v2, "arguments":Landroid/os/Bundle;
    move-object v3, v0

    iget-object v3, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .locals 5

    .prologue
    .line 968
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 969
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 987
    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :goto_0
    return v0

    .line 972
    .restart local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    move v3, v1

    if-eq v2, v3, :cond_3

    .line 974
    move-object v2, v0

    iget v2, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_2

    .line 975
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    invoke-direct {v2, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v2

    .line 979
    :cond_2
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 982
    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 983
    move-object v2, v0

    move v3, v1

    const v4, 0x8000

    invoke-virtual {v2, v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v2

    .line 985
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 987
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private updateHoveredVirtualView(I)V
    .locals 6

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    move-object v3, v0

    iget v3, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 613
    .line 624
    :goto_0
    return-void

    .line 616
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    move v2, v3

    .line 617
    .local v2, "previousVirtualViewId":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 621
    move-object v3, v0

    move v4, v1

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v3

    .line 622
    move-object v3, v0

    move v4, v2

    const/16 v5, 0x100

    invoke-virtual {v3, v4, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v3

    .line 624
    goto :goto_0
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 5

    .prologue
    .line 1046
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    move-object v2, v0

    iget v2, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 1048
    const/4 v2, 0x0

    move v0, v2

    .line 1056
    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :goto_0
    return v0

    .line 1051
    .restart local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :cond_0
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1053
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1054
    move-object v2, v0

    move v3, v1

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v2

    .line 1056
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v3, v0

    iget-object v3, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 183
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 199
    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :goto_0
    return v0

    .line 186
    .restart local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 199
    :pswitch_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 189
    :pswitch_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result v3

    move v2, v3

    .line 190
    .local v2, "virtualViewId":I
    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 191
    move v3, v2

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 193
    .end local v2    # "virtualViewId":I
    :pswitch_2
    move-object v3, v0

    iget v3, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_3

    .line 194
    move-object v3, v0

    const/high16 v4, -0x80000000

    invoke-direct {v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 195
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 197
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    const/4 v8, 0x0

    move v2, v8

    .line 218
    .local v2, "handled":Z
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move v3, v8

    .line 219
    .local v3, "action":I
    move v8, v3

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 220
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    move v4, v8

    .line 221
    .local v4, "keyCode":I
    move v8, v4

    sparse-switch v8, :sswitch_data_0

    .line 257
    .end local v4    # "keyCode":I
    :cond_0
    :goto_0
    move v8, v2

    move v0, v8

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    return v0

    .line 226
    .restart local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    .restart local v4    # "keyCode":I
    :sswitch_0
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 227
    move v8, v4

    invoke-static {v8}, Landroidx/customview/widget/ExploreByTouchHelper;->keyToDirection(I)I

    move-result v8

    move v5, v8

    .line 228
    .local v5, "direction":I
    const/4 v8, 0x1

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    add-int/2addr v8, v9

    move v6, v8

    .line 229
    .local v6, "count":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_1
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_1

    .line 230
    move-object v8, v0

    move v9, v5

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 231
    const/4 v8, 0x1

    move v2, v8

    .line 229
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 236
    :cond_1
    goto :goto_0

    .line 240
    .end local v5    # "direction":I
    .end local v6    # "count":I
    .end local v7    # "i":I
    :sswitch_1
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 241
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_0

    .line 242
    move-object v8, v0

    invoke-direct {v8}, Landroidx/customview/widget/ExploreByTouchHelper;->clickKeyboardFocusedVirtualView()Z

    move-result v8

    .line 243
    const/4 v8, 0x1

    move v2, v8

    goto :goto_0

    .line 248
    :sswitch_2
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 249
    move-object v8, v0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v8

    move v2, v8

    goto :goto_0

    .line 250
    :cond_2
    move-object v8, v1

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 251
    move-object v8, v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v8

    move v2, v8

    goto :goto_0

    .line 221
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .locals 2

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    move v0, v1

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 7

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    if-nez v2, :cond_0

    .line 158
    move-object v2, v0

    new-instance v3, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;-><init>(Landroidx/customview/widget/ExploreByTouchHelper;)V

    iput-object v3, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    .line 160
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    move-object v0, v2

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    return-object v0
.end method

.method public getFocusedVirtualView()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    return v0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .locals 2

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    move v0, v1

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final invalidateRoot()V
    .locals 4

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move-object v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 527
    return-void
.end method

.method public final invalidateVirtualView(I)V
    .locals 5

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 544
    return-void
.end method

.method public final invalidateVirtualView(II)V
    .locals 8

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    move v2, p2

    .local v2, "changeTypes":I
    move v5, v1

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 567
    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 568
    .local v3, "parent":Landroid/view/ViewParent;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 570
    move-object v5, v0

    move v6, v1

    const/16 v7, 0x800

    invoke-direct {v5, v6, v7}, Landroidx/customview/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    move-object v4, v5

    .line 572
    .local v4, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v5, v4

    move v6, v2

    invoke-static {v5, v6}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 573
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroidx/core/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    .line 576
    .end local v3    # "parent":Landroid/view/ViewParent;
    .end local v4    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 719
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 720
    move-object v2, v0

    invoke-direct {v2}, Landroidx/customview/widget/ExploreByTouchHelper;->createNodeForHost()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    move-object v0, v2

    .line 723
    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "gainFocus":Z
    move v2, p2

    .local v2, "direction":I
    move-object v3, p3

    .local v3, "previouslyFocusedRect":Landroid/graphics/Rect;
    move-object v4, v0

    iget v4, v4, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    .line 276
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {v4, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result v4

    .line 279
    :cond_0
    move v4, v1

    if-eqz v4, :cond_1

    .line 280
    move-object v4, v0

    move v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    .line 282
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .prologue
    .line 660
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 663
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 664
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 755
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 758
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 759
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1128
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1116
    return-void
.end method

.method protected onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1206
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .param p2    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .locals 0
    .param p1, "virtualViewId"    # I
    .param p2, "hasFocus"    # Z

    .prologue
    .line 601
    return-void
.end method

.method performAction(IILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 895
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    move v2, p2

    .local v2, "action":I
    move-object v3, p3

    .local v3, "arguments":Landroid/os/Bundle;
    move v4, v1

    packed-switch v4, :pswitch_data_0

    .line 899
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/customview/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :goto_0
    return v0

    .line 897
    .restart local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :pswitch_0
    move-object v4, v0

    move v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Landroidx/customview/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 895
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .locals 5

    .prologue
    .line 1016
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1018
    const/4 v2, 0x0

    move v0, v2

    .line 1035
    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :goto_0
    return v0

    .line 1021
    .restart local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    move v3, v1

    if-ne v2, v3, :cond_1

    .line 1023
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 1026
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_2

    .line 1027
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {v2, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result v2

    .line 1030
    :cond_2
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1032
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1033
    move-object v2, v0

    move v3, v1

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v2

    .line 1035
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public final sendEventForVirtualView(II)Z
    .locals 8

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    move v2, p2

    .local v2, "eventType":I
    move v5, v1

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 506
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 515
    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :goto_0
    return v0

    .line 509
    .restart local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 510
    .local v3, "parent":Landroid/view/ViewParent;
    move-object v5, v3

    if-nez v5, :cond_2

    .line 511
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 514
    :cond_2
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/customview/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    move-object v4, v5

    .line 515
    .local v4, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroidx/core/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method
