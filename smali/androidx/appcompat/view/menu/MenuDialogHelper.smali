.class Landroidx/appcompat/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuDialogHelper;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 44
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuDialogHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 140
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 142
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuDialogHelper;
    move-object v1, p1

    .local v1, "dialog":Landroid/content/DialogInterface;
    move v2, p2

    .local v2, "which":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v3

    .line 170
    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 6

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuDialogHelper;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move v2, p2

    .local v2, "allMenusAreClosing":Z
    move v3, v2

    if-nez v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne v3, v4, :cond_1

    .line 152
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuDialogHelper;->dismiss()V

    .line 154
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_2

    .line 155
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 157
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuDialogHelper;
    move-object v1, p1

    .local v1, "dialog":Landroid/content/DialogInterface;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/ListMenuPresenter;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 147
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 11

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuDialogHelper;
    move-object v1, p1

    .local v1, "dialog":Landroid/content/DialogInterface;
    move v2, p2

    .local v2, "keyCode":I
    move-object v3, p3

    .local v3, "event":Landroid/view/KeyEvent;
    move v7, v2

    const/16 v8, 0x52

    if-eq v7, v8, :cond_0

    move v7, v2

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 95
    :cond_0
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v3

    .line 96
    invoke-virtual {v7}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_2

    .line 97
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v7}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    move-object v4, v7

    .line 98
    .local v4, "win":Landroid/view/Window;
    move-object v7, v4

    if-eqz v7, :cond_1

    .line 99
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    move-object v5, v7

    .line 100
    .local v5, "decor":Landroid/view/View;
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 101
    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v7

    move-object v6, v7

    .line 102
    .local v6, "ds":Landroid/view/KeyEvent$DispatcherState;
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 103
    move-object v7, v6

    move-object v8, v3

    move-object v9, v0

    invoke-virtual {v7, v8, v9}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 104
    const/4 v7, 0x1

    move v0, v7

    .line 125
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuDialogHelper;
    .end local v4    # "win":Landroid/view/Window;
    .end local v5    # "decor":Landroid/view/View;
    .end local v6    # "ds":Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    return v0

    .line 108
    .line 125
    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuDialogHelper;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move v8, v2

    move-object v9, v3

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroidx/appcompat/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v7

    move v0, v7

    goto :goto_0

    .line 108
    :cond_2
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 109
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v7}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    move-object v4, v7

    .line 110
    .restart local v4    # "win":Landroid/view/Window;
    move-object v7, v4

    if-eqz v7, :cond_1

    .line 111
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    move-object v5, v7

    .line 112
    .restart local v5    # "decor":Landroid/view/View;
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 113
    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v7

    move-object v6, v7

    .line 114
    .restart local v6    # "ds":Landroid/view/KeyEvent$DispatcherState;
    move-object v7, v6

    if-eqz v7, :cond_1

    move-object v7, v6

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 116
    move-object v7, v1

    invoke-interface {v7}, Landroid/content/DialogInterface;->dismiss()V

    .line 117
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0
.end method

.method public onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuDialogHelper;
    move-object v1, p1

    .local v1, "subMenu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_0

    .line 162
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v2

    move v0, v2

    .line 164
    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuDialogHelper;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/view/menu/MenuDialogHelper;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuDialogHelper;
    move-object v1, p1

    .local v1, "cb":Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 131
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 12

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuDialogHelper;
    move-object v1, p1

    .local v1, "windowToken":Landroid/os/IBinder;
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v2, v6

    .line 56
    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    new-instance v6, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v2

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v3, v6

    .line 58
    .local v3, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    move-object v6, v0

    new-instance v7, Landroidx/appcompat/view/menu/ListMenuPresenter;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v3

    invoke-virtual {v9}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Landroidx/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v8, v9, v10}, Landroidx/appcompat/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v7, v6, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    .line 61
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/ListMenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 62
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 63
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v6

    .line 66
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 67
    .local v4, "headerView":Landroid/view/View;
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 69
    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v6

    .line 76
    :goto_0
    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v6

    .line 79
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v7}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 80
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 82
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    move-object v5, v6

    .line 83
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object v6, v5

    const/16 v7, 0x3eb

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 84
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 85
    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 87
    :cond_0
    move-object v6, v5

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x20000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 89
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 90
    return-void

    .line 72
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v6

    goto :goto_0
.end method
