.class Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "NestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 2027
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8

    .prologue
    .line 2084
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2085
    move-object v5, v1

    check-cast v5, Landroidx/core/widget/NestedScrollView;

    move-object v3, v5

    .line 2086
    .local v3, "nsvHost":Landroidx/core/widget/NestedScrollView;
    move-object v5, v2

    const-class v6, Landroid/widget/ScrollView;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2087
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 2088
    .local v4, "scrollable":Z
    move-object v5, v2

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2089
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 2090
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 2091
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 2092
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 2093
    return-void

    .line 2087
    .end local v4    # "scrollable":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    .prologue
    .line 2065
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2066
    move-object v5, v1

    check-cast v5, Landroidx/core/widget/NestedScrollView;

    move-object v3, v5

    .line 2067
    .local v3, "nsvHost":Landroidx/core/widget/NestedScrollView;
    move-object v5, v2

    const-class v6, Landroid/widget/ScrollView;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2068
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2069
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    move v4, v5

    .line 2070
    .local v4, "scrollRange":I
    move v5, v4

    if-lez v5, :cond_1

    .line 2071
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2072
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    if-lez v5, :cond_0

    .line 2073
    move-object v5, v2

    const/16 v6, 0x2000

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2075
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    move v6, v4

    if-ge v5, v6, :cond_1

    .line 2076
    move-object v5, v2

    const/16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2080
    .end local v4    # "scrollRange":I
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 11

    .prologue
    .line 2030
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move v2, p2

    .local v2, "action":I
    move-object v3, p3

    .local v3, "arguments":Landroid/os/Bundle;
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    invoke-super {v7, v8, v9, v10}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2031
    const/4 v7, 0x1

    move v0, v7

    .line 2060
    .end local v0    # "this":Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;
    :goto_0
    return v0

    .line 2033
    .restart local v0    # "this":Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;
    :cond_0
    move-object v7, v1

    check-cast v7, Landroidx/core/widget/NestedScrollView;

    move-object v4, v7

    .line 2034
    .local v4, "nsvHost":Landroidx/core/widget/NestedScrollView;
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2035
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 2037
    :cond_1
    move v7, v2

    sparse-switch v7, :sswitch_data_0

    .line 2060
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 2039
    :sswitch_0
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v7

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v4

    .line 2040
    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 2041
    .local v5, "viewportHeight":I
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v7

    move v8, v5

    add-int/2addr v7, v8

    move-object v8, v4

    .line 2042
    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 2041
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v7

    .line 2043
    .local v6, "targetScrollY":I
    move v7, v6

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 2044
    move-object v7, v4

    const/4 v8, 0x0

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 2045
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 2048
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 2050
    .end local v5    # "viewportHeight":I
    .end local v6    # "targetScrollY":I
    :sswitch_1
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v7

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v4

    .line 2051
    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 2052
    .restart local v5    # "viewportHeight":I
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v7

    move v8, v5

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v6, v7

    .line 2053
    .restart local v6    # "targetScrollY":I
    move v7, v6

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 2054
    move-object v7, v4

    const/4 v8, 0x0

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 2055
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 2058
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 2037
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
