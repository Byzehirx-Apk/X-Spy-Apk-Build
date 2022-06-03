.class public Landroidx/appcompat/view/WindowCallbackWrapper;
.super Ljava/lang/Object;
.source "WindowCallbackWrapper.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field final mWrapped:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;)V
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, p1

    .local v1, "wrapped":Landroid/view/Window$Callback;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v2, v1

    if-nez v2, :cond_0

    .line 52
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Window callback may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    .line 55
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, p1

    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, p1

    .local v1, "mode":Landroid/view/ActionMode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 172
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, p1

    .local v1, "mode":Landroid/view/ActionMode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 167
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 130
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 120
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 135
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "item":Landroid/view/MenuItem;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 6

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 140
    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move v1, p1

    .local v1, "hasCapture":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    .line 185
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 8

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v3, p3

    .local v3, "menu":Landroid/view/Menu;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    return v0
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 8
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
    .line 178
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, p1

    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    move-object v2, p2

    .local v2, "menu":Landroid/view/Menu;
    move v3, p3

    .local v3, "deviceId":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 179
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, p1

    .local v1, "searchEvent":Landroid/view/SearchEvent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, p1

    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 115
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move v1, p1

    .local v1, "hasFocus":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 125
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, p1

    .local v1, "callback":Landroid/view/ActionMode$Callback;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    move-object v1, p1

    .local v1, "callback":Landroid/view/ActionMode$Callback;
    move v2, p2

    .local v2, "type":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/WindowCallbackWrapper;
    return-object v0
.end method
