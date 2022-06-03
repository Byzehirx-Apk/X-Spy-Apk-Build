.class public Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
.super Landroidx/appcompat/view/ActionMode;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private final mActionModeContext:Landroid/content/Context;

.field private mCallback:Landroidx/appcompat/view/ActionMode$Callback;

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

.field private final mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field final synthetic this$0:Landroidx/appcompat/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/WindowDecorActionBar;Landroid/content/Context;Landroidx/appcompat/view/ActionMode$Callback;)V
    .locals 9

    .prologue
    .line 993
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, p3

    .local v3, "callback":Landroidx/appcompat/view/ActionMode$Callback;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/view/ActionMode;-><init>()V

    .line 994
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    .line 995
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    .line 996
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 997
    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v5

    iput-object v5, v4, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 998
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 999
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 6

    .prologue
    .line 1060
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1062
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/view/ActionMode$Callback;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    move v1, v3

    .line 1064
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    move v3, v1

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    move-object v3, v2

    throw v3
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 1013
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    move-object v2, v0

    if-eq v1, v2, :cond_0

    .line 1015
    .line 1040
    :goto_0
    return-void

    .line 1022
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-boolean v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenByApp:Z

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-boolean v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenBySystem:Z

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1025
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    move-object v2, v0

    iput-object v2, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroidx/appcompat/view/ActionMode;

    .line 1026
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    iput-object v2, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroidx/appcompat/view/ActionMode$Callback;

    .line 1030
    :goto_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    .line 1031
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 1034
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->closeMode()V

    .line 1035
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1037
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-boolean v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 1039
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    .line 1040
    goto :goto_0

    .line 1028
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroidx/appcompat/view/ActionMode$Callback;->onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V

    goto :goto_1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1117
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 1008
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 5

    .prologue
    .line 1003
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    new-instance v1, Landroidx/appcompat/view/SupportMenuInflater;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1101
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1096
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    return-object v0
.end method

.method public invalidate()V
    .locals 5

    .prologue
    .line 1044
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    move-object v3, v0

    if-eq v2, v3, :cond_0

    .line 1048
    .line 1057
    :goto_0
    return-void

    .line 1051
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1053
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v2, v3, v4}, Landroidx/appcompat/view/ActionMode$Callback;->onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1055
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1056
    .line 1057
    goto :goto_0

    .line 1055
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    move-object v2, v1

    throw v2
.end method

.method public isTitleOptional()Z
    .locals 2

    .prologue
    .line 1112
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    return v0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1130
    return-void
.end method

.method public onCloseSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/SubMenuBuilder;

    .prologue
    .line 1146
    return-void
.end method

.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 1122
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroid/view/MenuItem;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    if-eqz v3, :cond_0

    .line 1123
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/view/ActionMode$Callback;->onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    .line 1125
    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 3

    .prologue
    .line 1150
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    if-nez v2, :cond_0

    .line 1151
    .line 1155
    :goto_0
    return-void

    .line 1153
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 1154
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->showOverflowMenu()Z

    move-result v2

    .line 1155
    goto :goto_0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 7

    .prologue
    .line 1133
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move-object v1, p1

    .local v1, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    if-nez v2, :cond_0

    .line 1134
    const/4 v2, 0x0

    move v0, v2

    .line 1142
    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    :goto_0
    return v0

    .line 1137
    .restart local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1138
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1141
    :cond_1
    new-instance v2, Landroidx/appcompat/view/menu/MenuPopupHelper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-virtual {v4}, Landroidx/appcompat/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->show()V

    .line 1142
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 1070
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1071
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 1072
    return-void
.end method

.method public setSubtitle(I)V
    .locals 5

    .prologue
    .line 1091
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1092
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 1076
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move-object v1, p1

    .local v1, "subtitle":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1077
    return-void
.end method

.method public setTitle(I)V
    .locals 5

    .prologue
    .line 1086
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 1087
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 1081
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1082
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 4

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move v1, p1

    .local v1, "titleOptional":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 1107
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 1108
    return-void
.end method
