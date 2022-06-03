.class Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
.super Landroidx/appcompat/view/WindowCallbackWrapper;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/view/Window$Callback;)V
    .locals 5

    .prologue
    .line 2526
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v2, p2

    .local v2, "callback":Landroid/view/Window$Callback;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 2527
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/appcompat/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    .line 2528
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 2532
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    .line 2533
    invoke-super {v2, v3}, Landroidx/appcompat/view/WindowCallbackWrapper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 2538
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/view/WindowCallbackWrapper;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move-object v3, v1

    .line 2539
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 2556
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 2544
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move v3, v1

    if-nez v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v3, :cond_0

    .line 2547
    const/4 v3, 0x0

    move v0, v3

    .line 2549
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/view/WindowCallbackWrapper;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 2587
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/view/WindowCallbackWrapper;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v3

    .line 2588
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onMenuOpened(I)V

    .line 2589
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 6

    .prologue
    .line 2594
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/view/WindowCallbackWrapper;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2595
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onPanelClosed(I)V

    .line 2596
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 10

    .prologue
    .line 2560
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v3, p3

    .local v3, "menu":Landroid/view/Menu;
    move-object v6, v3

    instance-of v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v6, :cond_0

    move-object v6, v3

    check-cast v6, Landroidx/appcompat/view/menu/MenuBuilder;

    :goto_0
    move-object v4, v6

    .line 2562
    .local v4, "mb":Landroidx/appcompat/view/menu/MenuBuilder;
    move v6, v1

    if-nez v6, :cond_1

    move-object v6, v4

    if-nez v6, :cond_1

    .line 2565
    const/4 v6, 0x0

    move v0, v6

    .line 2582
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    :goto_1
    return v0

    .line 2560
    .end local v4    # "mb":Landroidx/appcompat/view/menu/MenuBuilder;
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 2572
    .restart local v4    # "mb":Landroidx/appcompat/view/menu/MenuBuilder;
    :cond_1
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 2573
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->setOverrideVisibleItems(Z)V

    .line 2576
    :cond_2
    move-object v6, v0

    move v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-super {v6, v7, v8, v9}, Landroidx/appcompat/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v6

    move v5, v6

    .line 2578
    .local v5, "handled":Z
    move-object v6, v4

    if-eqz v6, :cond_3

    .line 2579
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->setOverrideVisibleItems(Z)V

    .line 2582
    :cond_3
    move v6, v5

    move v0, v6

    goto :goto_1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 9
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2653
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    move-object v1, p1

    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move v3, p3

    .local v3, "deviceId":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v5

    move-object v4, v5

    .line 2654
    .local v4, "panel":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v5, :cond_0

    .line 2657
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move v8, v3

    invoke-super {v5, v6, v7, v8}, Landroidx/appcompat/view/WindowCallbackWrapper;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 2662
    :goto_0
    return-void

    .line 2660
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-super {v5, v6, v7, v8}, Landroidx/appcompat/view/WindowCallbackWrapper;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4

    .prologue
    .line 2601
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    move-object v1, p1

    .local v1, "callback":Landroid/view/ActionMode$Callback;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 2603
    const/4 v2, 0x0

    move-object v0, v2

    .line 2610
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    :goto_0
    return-object v0

    .line 2606
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->isHandleNativeActionModesEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2607
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 2610
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/view/WindowCallbackWrapper;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 2638
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    move-object v1, p1

    .local v1, "callback":Landroid/view/ActionMode$Callback;
    move v2, p2

    .local v2, "type":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->isHandleNativeActionModesEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2639
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 2646
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/view/WindowCallbackWrapper;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    :goto_0
    return-object v0

    .line 2642
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    :pswitch_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 2639
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method final startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 9

    .prologue
    .line 2620
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    move-object v1, p1

    .local v1, "callback":Landroid/view/ActionMode$Callback;
    new-instance v4, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    move-object v2, v4

    .line 2624
    .local v2, "callbackWrapper":Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move-object v5, v2

    .line 2625
    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v4

    move-object v3, v4

    .line 2627
    .local v3, "supportActionMode":Landroidx/appcompat/view/ActionMode;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 2629
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v4

    move-object v0, v4

    .line 2631
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method
