.class final Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 4

    .prologue
    .line 2207
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2208
    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 10

    .prologue
    .line 2212
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move v2, p2

    .local v2, "allMenusAreClosing":Z
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v6

    move-object v3, v6

    .line 2213
    .local v3, "parentMenu":Landroid/view/Menu;
    move-object v6, v3

    move-object v7, v1

    if-eq v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v4, v6

    .line 2214
    .local v4, "isSubMenu":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move v7, v4

    if-eqz v7, :cond_2

    move-object v7, v3

    :goto_1
    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->findMenuPanel(Landroid/view/Menu;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v6

    move-object v5, v6

    .line 2215
    .local v5, "panel":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 2216
    move v6, v4

    if-eqz v6, :cond_3

    .line 2217
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move-object v7, v5

    iget v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    move-object v8, v5

    move-object v9, v3

    invoke-virtual {v6, v7, v8, v9}, Landroidx/appcompat/app/AppCompatDelegateImpl;->callOnPanelClosed(ILandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V

    .line 2218
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 2225
    :cond_0
    :goto_2
    return-void

    .line 2213
    .end local v4    # "isSubMenu":Z
    .end local v5    # "panel":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2214
    .restart local v4    # "isSubMenu":Z
    :cond_2
    move-object v7, v1

    goto :goto_1

    .line 2222
    .restart local v5    # "panel":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move-object v7, v5

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    goto :goto_2
.end method

.method public onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 6

    .prologue
    .line 2229
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;
    move-object v1, p1

    .local v1, "subMenu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz v3, :cond_0

    .line 2230
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    move-object v2, v3

    .line 2231
    .local v2, "cb":Landroid/view/Window$Callback;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v3, :cond_0

    .line 2232
    move-object v3, v2

    const/16 v4, 0x6c

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v3

    .line 2235
    .end local v2    # "cb":Landroid/view/Window$Callback;
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;
    return v0
.end method
