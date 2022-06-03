.class Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field private final mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 6

    .prologue
    .line 1513
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "this$0":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 1514
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method private copyNodeInfoNoChildren(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 1572
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "dest":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v2, p2

    .local v2, "src":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v4, v0

    iget-object v4, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->mTmpRect:Landroid/graphics/Rect;

    move-object v3, v4

    .line 1574
    .local v3, "rect":Landroid/graphics/Rect;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 1575
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1577
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1578
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1580
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isVisibleToUser()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 1581
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1582
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1583
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1585
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 1586
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 1587
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 1588
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 1589
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isAccessibilityFocused()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 1590
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isSelected()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 1591
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    .line 1593
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1595
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getMovementGranularities()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMovementGranularities(I)V

    .line 1596
    return-void
.end method


# virtual methods
.method public filter(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 1562
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;
    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .prologue
    .line 1547
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1549
    move-object v3, v2

    const-class v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1550
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 11

    .prologue
    .line 1518
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v8, v2

    invoke-static {v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v8

    move-object v3, v8

    .line 1519
    .local v3, "superNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    invoke-super {v8, v9, v10}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1520
    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->copyNodeInfoNoChildren(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1521
    move-object v8, v3

    invoke-virtual {v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 1523
    move-object v8, v2

    const-class v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1524
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;)V

    .line 1526
    move-object v8, v1

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v8

    move-object v4, v8

    .line 1527
    .local v4, "parent":Landroid/view/ViewParent;
    move-object v8, v4

    instance-of v8, v8, Landroid/view/View;

    if-eqz v8, :cond_0

    .line 1528
    move-object v8, v2

    move-object v9, v4

    check-cast v9, Landroid/view/View;

    invoke-virtual {v8, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 1533
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v8

    move v5, v8

    .line 1534
    .local v5, "childCount":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_2

    .line 1535
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 1536
    .local v7, "child":Landroid/view/View;
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->filter(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v7

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 1538
    move-object v8, v7

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1540
    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;)V

    .line 1534
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1543
    .end local v7    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8

    .prologue
    .line 1555
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "host":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->filter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1556
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroidx/core/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    move v0, v4

    .line 1558
    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method
