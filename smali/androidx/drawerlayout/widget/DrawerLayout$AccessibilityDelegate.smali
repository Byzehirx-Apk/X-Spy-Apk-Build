.class Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field private final mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 6

    .prologue
    .line 2349
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "this$0":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 2350
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method private addChildrenForAccessibility(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/ViewGroup;)V
    .locals 8

    .prologue
    .line 2426
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v2, p2

    .local v2, "v":Landroid/view/ViewGroup;
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v3, v6

    .line 2427
    .local v3, "childCount":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 2428
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 2429
    .local v5, "child":Landroid/view/View;
    move-object v6, v5

    invoke-static {v6}, Landroidx/drawerlayout/widget/DrawerLayout;->includeChildForAccessibility(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2430
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;)V

    .line 2427
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2433
    .end local v5    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private copyNodeInfoNoChildren(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 2442
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "dest":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v2, p2

    .local v2, "src":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;->mTmpRect:Landroid/graphics/Rect;

    move-object v3, v4

    .line 2444
    .local v3, "rect":Landroid/graphics/Rect;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 2445
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2447
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2448
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2450
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isVisibleToUser()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 2451
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2452
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2453
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2455
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 2456
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 2457
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 2458
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 2459
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isAccessibilityFocused()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 2460
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isSelected()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 2461
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    .line 2463
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2464
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 10

    .prologue
    .line 2399
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_1

    .line 2400
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v7

    move-object v3, v7

    .line 2401
    .local v3, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    move-object v7, v0

    iget-object v7, v7, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 2402
    .local v4, "visibleDrawer":Landroid/view/View;
    move-object v7, v4

    if-eqz v7, :cond_0

    .line 2403
    move-object v7, v0

    iget-object v7, v7, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v7

    move v5, v7

    .line 2404
    .local v5, "edgeGravity":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v6, v7

    .line 2405
    .local v6, "title":Ljava/lang/CharSequence;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 2406
    move-object v7, v3

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 2410
    .end local v5    # "edgeGravity":I
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_0
    const/4 v7, 0x1

    move v0, v7

    .line 2413
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;
    .end local v3    # "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v4    # "visibleDrawer":Landroid/view/View;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;
    :cond_1
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-super {v7, v8, v9}, Landroidx/core/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v7

    move v0, v7

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .prologue
    .line 2387
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2389
    move-object v3, v2

    const-class v4, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2390
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    .prologue
    .line 2354
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget-boolean v5, Landroidx/drawerlayout/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-eqz v5, :cond_0

    .line 2355
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2374
    :goto_0
    move-object v5, v2

    const-class v6, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2379
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 2380
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 2381
    move-object v5, v2

    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    move-result v5

    .line 2382
    move-object v5, v2

    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLEAR_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    move-result v5

    .line 2383
    return-void

    .line 2359
    :cond_0
    move-object v5, v2

    .line 2360
    invoke-static {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v5

    move-object v3, v5

    .line 2361
    .local v3, "superNode":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    invoke-super {v5, v6, v7}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2363
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;)V

    .line 2364
    move-object v5, v1

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    .line 2365
    .local v4, "parent":Landroid/view/ViewParent;
    move-object v5, v4

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_1

    .line 2366
    move-object v5, v2

    move-object v6, v4

    check-cast v6, Landroid/view/View;

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 2368
    :cond_1
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;->copyNodeInfoNoChildren(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2369
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 2371
    move-object v5, v0

    move-object v6, v2

    move-object v7, v1

    check-cast v7, Landroid/view/ViewGroup;

    invoke-direct {v5, v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;->addChildrenForAccessibility(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8

    .prologue
    .line 2419
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "host":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    sget-boolean v4, Landroidx/drawerlayout/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez v4, :cond_0

    move-object v4, v2

    invoke-static {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->includeChildForAccessibility(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2420
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroidx/core/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    move v0, v4

    .line 2422
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method
