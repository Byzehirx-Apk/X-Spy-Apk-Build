.class Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 4

    .prologue
    .line 3037
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;
    move-object v1, p1

    .local v1, "this$0":Landroidx/viewpager/widget/ViewPager;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 3

    .prologue
    .line 3087
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;
    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;
    return v0

    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .prologue
    .line 3041
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3042
    move-object v3, v2

    const-class v4, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3043
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 3044
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, v3, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v3, :cond_0

    .line 3045
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 3046
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    iget v4, v4, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 3047
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    iget v4, v4, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 3049
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 3053
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 3054
    move-object v3, v2

    const-class v4, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 3055
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3056
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3057
    move-object v3, v2

    const/16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3059
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3060
    move-object v3, v2

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3062
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 3066
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move v2, p2

    .local v2, "action":I
    move-object v3, p3

    .local v3, "args":Landroid/os/Bundle;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3067
    const/4 v4, 0x1

    move v0, v4

    .line 3083
    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;
    :goto_0
    return v0

    .line 3069
    .restart local v0    # "this":Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;
    :cond_0
    move v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 3083
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 3071
    :sswitch_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3072
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    iget v5, v5, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 3073
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 3075
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 3077
    :sswitch_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3078
    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    move-object v5, v0

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    iget v5, v5, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 3079
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 3081
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 3069
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
