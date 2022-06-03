.class public Landroidx/appcompat/app/AppCompatDialog;
.super Landroid/app/Dialog;
.source "AppCompatDialog.java"

# interfaces
.implements Landroidx/appcompat/app/AppCompatCallback;


# instance fields
.field private mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

.field private final mKeyDispatcher:Landroidx/core/view/KeyEventDispatcher$Component;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "theme":I
    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    move v6, v2

    invoke-static {v5, v6}, Landroidx/appcompat/app/AppCompatDialog;->getThemeResId(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/app/AppCompatDialog$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/appcompat/app/AppCompatDialog$1;-><init>(Landroidx/appcompat/app/AppCompatDialog;)V

    iput-object v4, v3, Landroidx/appcompat/app/AppCompatDialog;->mKeyDispatcher:Landroidx/core/view/KeyEventDispatcher$Component;

    .line 63
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 66
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegate;->applyDayNight()Z

    move-result v3

    .line 67
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 9

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "cancelable":Z
    move-object v3, p3

    .local v3, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 45
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/app/AppCompatDialog$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/app/AppCompatDialog$1;-><init>(Landroidx/appcompat/app/AppCompatDialog;)V

    iput-object v5, v4, Landroidx/appcompat/app/AppCompatDialog;->mKeyDispatcher:Landroidx/core/view/KeyEventDispatcher$Component;

    .line 72
    return-void
.end method

.method private static getThemeResId(Landroid/content/Context;I)I
    .locals 8

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "themeId":I
    move v3, v1

    if-nez v3, :cond_0

    .line 177
    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 178
    .local v2, "outValue":Landroid/util/TypedValue;
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$attr;->dialogTheme:I

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 179
    move-object v3, v2

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    move v1, v3

    .line 181
    .end local v2    # "outValue":Landroid/util/TypedValue;
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "context":Landroid/content/Context;
    return v0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 206
    .local v2, "decor":Landroid/view/View;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDialog;->mKeyDispatcher:Landroidx/core/view/KeyEventDispatcher$Component;

    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    invoke-static {v3, v4, v5, v6}, Landroidx/core/view/KeyEventDispatcher;->dispatchKeyEvent(Landroidx/core/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDialog;
    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDialog;
    return-object v0
.end method

.method public getDelegate()Landroidx/appcompat/app/AppCompatDelegate;
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDialog;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-nez v1, :cond_0

    .line 169
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    invoke-static {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->create(Landroid/app/Dialog;Landroidx/appcompat/app/AppCompatCallback;)Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/app/AppCompatDialog;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    .line 171
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDialog;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDialog;
    return-object v0
.end method

.method public getSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegate;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDialog;
    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 162
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegate;->installViewFactory()V

    .line 77
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 78
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Dialog;->onStop()V

    .line 134
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegate;->onStop()V

    .line 135
    return-void
.end method

.method public onSupportActionModeFinished(Landroidx/appcompat/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroidx/appcompat/view/ActionMode;

    .prologue
    .line 190
    return-void
.end method

.method public onSupportActionModeStarted(Landroidx/appcompat/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroidx/appcompat/view/ActionMode;

    .prologue
    .line 186
    return-void
.end method

.method public onWindowStartingSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move-object v1, p1

    .local v1, "callback":Landroidx/appcompat/view/ActionMode$Callback;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDialog;
    return-object v0
.end method

.method public setContentView(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move v1, p1

    .local v1, "layoutResID":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(I)V

    .line 95
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void
.end method

.method public setTitle(I)V
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move v1, p1

    .local v1, "titleId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 123
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDialog;
    return v0
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegate;->requestWindowFeature(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDialog;
    return v0
.end method
