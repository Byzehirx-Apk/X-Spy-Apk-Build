.class public Landroidx/appcompat/view/StandaloneActionMode;
.super Landroidx/appcompat/view/ActionMode;
.source "StandaloneActionMode.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mCallback:Landroidx/appcompat/view/ActionMode$Callback;

.field private mContext:Landroid/content/Context;

.field private mContextView:Landroidx/appcompat/widget/ActionBarContextView;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mFocusable:Z

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/ActionMode$Callback;Z)V
    .locals 10

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "view":Landroidx/appcompat/widget/ActionBarContextView;
    move-object v3, p3

    .local v3, "callback":Landroidx/appcompat/view/ActionMode$Callback;
    move v4, p4

    .local v4, "isFocusable":Z
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/view/ActionMode;-><init>()V

    .line 51
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/appcompat/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    .line 52
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/appcompat/view/StandaloneActionMode;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    .line 53
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/appcompat/view/StandaloneActionMode;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    .line 55
    move-object v5, v0

    new-instance v6, Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-virtual {v8}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v6

    iput-object v6, v5, Landroidx/appcompat/view/StandaloneActionMode;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 57
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/StandaloneActionMode;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 58
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Landroidx/appcompat/view/StandaloneActionMode;->mFocusable:Z

    .line 59
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/StandaloneActionMode;->mFinished:Z

    if-eqz v1, :cond_0

    .line 106
    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/view/StandaloneActionMode;->mFinished:Z

    .line 110
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/StandaloneActionMode;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 111
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/StandaloneActionMode;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroidx/appcompat/view/ActionMode$Callback;->onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V

    .line 112
    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/StandaloneActionMode;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/view/StandaloneActionMode;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/StandaloneActionMode;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/StandaloneActionMode;
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 5

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    new-instance v1, Landroidx/appcompat/view/SupportMenuInflater;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/StandaloneActionMode;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/StandaloneActionMode;
    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/StandaloneActionMode;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/StandaloneActionMode;
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/StandaloneActionMode;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/StandaloneActionMode;
    return-object v0
.end method

.method public invalidate()V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/StandaloneActionMode;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/StandaloneActionMode;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v1, v2, v3}, Landroidx/appcompat/view/ActionMode$Callback;->onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    .line 101
    return-void
.end method

.method public isTitleOptional()Z
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/StandaloneActionMode;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/StandaloneActionMode;
    return v0
.end method

.method public isUiFocusable()Z
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/StandaloneActionMode;->mFocusable:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/StandaloneActionMode;
    return v0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 145
    return-void
.end method

.method public onCloseSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/SubMenuBuilder;

    .prologue
    .line 157
    return-void
.end method

.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroid/view/MenuItem;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/StandaloneActionMode;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/view/ActionMode$Callback;->onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/view/StandaloneActionMode;
    return v0
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 3

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/view/StandaloneActionMode;->invalidate()V

    .line 162
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/StandaloneActionMode;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->showOverflowMenu()Z

    move-result v2

    .line 163
    return-void
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 7

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move-object v1, p1

    .local v1, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    const/4 v2, 0x1

    move v0, v2

    .line 153
    .end local v0    # "this":Landroidx/appcompat/view/StandaloneActionMode;
    :goto_0
    return v0

    .line 152
    .restart local v0    # "this":Landroidx/appcompat/view/StandaloneActionMode;
    :cond_0
    new-instance v2, Landroidx/appcompat/view/menu/MenuPopupHelper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/StandaloneActionMode;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->show()V

    .line 153
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/StandaloneActionMode;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 95
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v3, v2, Landroidx/appcompat/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/StandaloneActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move-object v1, p1

    .local v1, "subtitle":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/StandaloneActionMode;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public setTitle(I)V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/StandaloneActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/StandaloneActionMode;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/StandaloneActionMode;
    move v1, p1

    .local v1, "titleOptional":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 84
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/StandaloneActionMode;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 85
    return-void
.end method
