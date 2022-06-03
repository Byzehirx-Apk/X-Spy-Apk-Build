.class public Landroidx/core/app/ComponentActivity;
.super Landroid/app/Activity;
.source "ComponentActivity.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/core/view/KeyEventDispatcher$Component;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ComponentActivity$ExtraData;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/core/app/ComponentActivity$ExtraData;",
            ">;",
            "Landroidx/core/app/ComponentActivity$ExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ComponentActivity;
    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    .line 53
    move-object v1, v0

    new-instance v2, Landroidx/collection/SimpleArrayMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v2, v1, Landroidx/core/app/ComponentActivity;->mExtraDataMap:Landroidx/collection/SimpleArrayMap;

    .line 56
    move-object v1, v0

    new-instance v2, Landroidx/lifecycle/LifecycleRegistry;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v2, v1, Landroidx/core/app/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 132
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ComponentActivity;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/app/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 123
    .local v2, "decor":Landroid/view/View;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Landroidx/core/view/KeyEventDispatcher;->dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    const/4 v3, 0x1

    move v0, v3

    .line 126
    .end local v0    # "this":Landroidx/core/app/ComponentActivity;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/app/ComponentActivity;
    :cond_0
    move-object v3, v0

    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    invoke-static {v3, v4, v5, v6}, Landroidx/core/view/KeyEventDispatcher;->dispatchKeyEvent(Landroidx/core/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ComponentActivity;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/app/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 114
    .local v2, "decor":Landroid/view/View;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Landroidx/core/view/KeyEventDispatcher;->dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    const/4 v3, 0x1

    move v0, v3

    .line 117
    .end local v0    # "this":Landroidx/core/app/ComponentActivity;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/app/ComponentActivity;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getExtraData(Ljava/lang/Class;)Landroidx/core/app/ComponentActivity$ExtraData;
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/core/app/ComponentActivity$ExtraData;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ComponentActivity;
    move-object v1, p1

    .local v1, "extraDataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ComponentActivity;->mExtraDataMap:Landroidx/collection/SimpleArrayMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/ComponentActivity$ExtraData;

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ComponentActivity;
    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ComponentActivity;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/ComponentActivity;
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ComponentActivity;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    move-object v2, v0

    invoke-static {v2}, Landroidx/lifecycle/ReportFragment;->injectIfNeededIn(Landroid/app/Activity;)V

    .line 77
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ComponentActivity;
    move-object v1, p1

    .local v1, "outState":Landroid/os/Bundle;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 83
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method public putExtraData(Landroidx/core/app/ComponentActivity$ExtraData;)V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ComponentActivity;
    move-object v1, p1

    .local v1, "extraData":Landroidx/core/app/ComponentActivity$ExtraData;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ComponentActivity;->mExtraDataMap:Landroidx/collection/SimpleArrayMap;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 70
    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ComponentActivity;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/app/ComponentActivity;
    return v0
.end method
