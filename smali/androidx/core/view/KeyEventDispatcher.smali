.class public Landroidx/core/view/KeyEventDispatcher;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/KeyEventDispatcher$Component;
    }
.end annotation


# static fields
.field private static sActionBarFieldsFetched:Z

.field private static sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

.field private static sDialogFieldsFetched:Z

.field private static sDialogKeyListenerField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/view/KeyEventDispatcher;->sActionBarFieldsFetched:Z

    .line 47
    const/4 v0, 0x0

    sput-object v0, Landroidx/core/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/view/KeyEventDispatcher;->sDialogFieldsFetched:Z

    .line 49
    const/4 v0, 0x0

    sput-object v0, Landroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/KeyEventDispatcher;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static actionBarOnMenuKeyEventPre28(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "actionBar":Landroid/app/ActionBar;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    sget-boolean v3, Landroidx/core/view/KeyEventDispatcher;->sActionBarFieldsFetched:Z

    if-nez v3, :cond_0

    .line 98
    move-object v3, v0

    .line 99
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "onMenuKeyEvent"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-class v8, Landroid/view/KeyEvent;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/core/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Landroidx/core/view/KeyEventDispatcher;->sActionBarFieldsFetched:Z

    .line 104
    :cond_0
    sget-object v3, Landroidx/core/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 106
    :try_start_1
    sget-object v3, Landroidx/core/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    move v0, v3

    .line 111
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :goto_1
    return v0

    .line 100
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0

    .line 107
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 111
    :cond_1
    :goto_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 108
    :catch_2
    move-exception v3

    move-object v2, v3

    goto :goto_2
.end method

.method private static activitySuperDispatchKeyEventPre28(Landroid/app/Activity;Landroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->onUserInteraction()V

    .line 117
    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    move-object v2, v5

    .line 121
    .local v2, "win":Landroid/view/Window;
    move-object v5, v2

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/Window;->hasFeature(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    move-object v3, v5

    .line 123
    .local v3, "actionBar":Landroid/app/ActionBar;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    move v4, v5

    .line 124
    .local v4, "keyCode":I
    move v5, v4

    const/16 v6, 0x52

    if-ne v5, v6, :cond_0

    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    move-object v6, v1

    .line 125
    invoke-static {v5, v6}, Landroidx/core/view/KeyEventDispatcher;->actionBarOnMenuKeyEventPre28(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    const/4 v5, 0x1

    move v0, v5

    .line 137
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v3    # "actionBar":Landroid/app/ActionBar;
    .end local v4    # "keyCode":I
    :goto_0
    return v0

    .line 130
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 133
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 134
    .local v3, "decor":Landroid/view/View;
    move-object v5, v3

    move-object v6, v1

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 135
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 137
    :cond_2
    move-object v5, v1

    move-object v6, v0

    move-object v7, v3

    if-eqz v7, :cond_3

    move-object v7, v3

    .line 138
    invoke-virtual {v7}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v7

    :goto_1
    move-object v8, v0

    .line 137
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    goto :goto_0

    .line 138
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private static dialogSuperDispatchKeyEventPre28(Landroid/app/Dialog;Landroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "dialog":Landroid/app/Dialog;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v5, v0

    invoke-static {v5}, Landroidx/core/view/KeyEventDispatcher;->getDialogKeyListenerPre28(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v5

    move-object v2, v5

    .line 162
    .local v2, "onKeyListener":Landroid/content/DialogInterface$OnKeyListener;
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    move-object v8, v1

    invoke-interface {v5, v6, v7, v8}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    const/4 v5, 0x1

    move v0, v5

    .line 173
    .end local v0    # "dialog":Landroid/app/Dialog;
    :goto_0
    return v0

    .line 165
    .restart local v0    # "dialog":Landroid/app/Dialog;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    move-object v3, v5

    .line 166
    .local v3, "win":Landroid/view/Window;
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 169
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 170
    .local v4, "decor":Landroid/view/View;
    move-object v5, v4

    move-object v6, v1

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 171
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 173
    :cond_2
    move-object v5, v1

    move-object v6, v0

    move-object v7, v4

    if-eqz v7, :cond_3

    move-object v7, v4

    .line 174
    invoke-virtual {v7}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v7

    :goto_1
    move-object v8, v0

    .line 173
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    goto :goto_0

    .line 174
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "root":Landroid/view/View;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "root":Landroid/view/View;
    return v0
.end method

.method public static dispatchKeyEvent(Landroidx/core/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .locals 6
    .param p0    # Landroidx/core/view/KeyEventDispatcher$Component;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/Window$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "component":Landroidx/core/view/KeyEventDispatcher$Component;
    move-object v1, p1

    .local v1, "root":Landroid/view/View;
    move-object v2, p2

    .local v2, "callback":Landroid/view/Window$Callback;
    move-object v3, p3

    .local v3, "event":Landroid/view/KeyEvent;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 81
    const/4 v4, 0x0

    move v0, v4

    .line 92
    .end local v0    # "component":Landroidx/core/view/KeyEventDispatcher$Component;
    :goto_0
    return v0

    .line 83
    .restart local v0    # "component":Landroidx/core/view/KeyEventDispatcher$Component;
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_1

    .line 84
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v4, v5}, Landroidx/core/view/KeyEventDispatcher$Component;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 86
    :cond_1
    move-object v4, v2

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 87
    move-object v4, v2

    check-cast v4, Landroid/app/Activity;

    move-object v5, v3

    invoke-static {v4, v5}, Landroidx/core/view/KeyEventDispatcher;->activitySuperDispatchKeyEventPre28(Landroid/app/Activity;Landroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 88
    :cond_2
    move-object v4, v2

    instance-of v4, v4, Landroid/app/Dialog;

    if-eqz v4, :cond_3

    .line 89
    move-object v4, v2

    check-cast v4, Landroid/app/Dialog;

    move-object v5, v3

    invoke-static {v4, v5}, Landroidx/core/view/KeyEventDispatcher;->dialogSuperDispatchKeyEventPre28(Landroid/app/Dialog;Landroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 91
    :cond_3
    move-object v4, v1

    if-eqz v4, :cond_4

    move-object v4, v1

    move-object v5, v3

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move-object v4, v0

    move-object v5, v3

    .line 92
    invoke-interface {v4, v5}, Landroidx/core/view/KeyEventDispatcher$Component;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static getDialogKeyListenerPre28(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "dialog":Landroid/app/Dialog;
    sget-boolean v2, Landroidx/core/view/KeyEventDispatcher;->sDialogFieldsFetched:Z

    if-nez v2, :cond_0

    .line 144
    :try_start_0
    const-class v2, Landroid/app/Dialog;

    const-string/jumbo v3, "mOnKeyListener"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    .line 145
    sget-object v2, Landroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/core/view/KeyEventDispatcher;->sDialogFieldsFetched:Z

    .line 151
    :cond_0
    sget-object v2, Landroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 153
    :try_start_1
    sget-object v2, Landroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 157
    .end local v0    # "dialog":Landroid/app/Dialog;
    :goto_1
    return-object v0

    .line 146
    .restart local v0    # "dialog":Landroid/app/Dialog;
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0

    .line 154
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 157
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1
.end method
