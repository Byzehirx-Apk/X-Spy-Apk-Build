.class public Landroidx/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source "ReportFragment.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;
    }
.end annotation


# static fields
.field private static final REPORT_FRAGMENT_TAG:Ljava/lang/String; = "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"


# instance fields
.field private mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ReportFragment;
    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Fragment;-><init>()V

    .line 131
    return-void
.end method

.method private dispatch(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ReportFragment;
    move-object v1, p1

    .local v1, "event":Landroidx/lifecycle/Lifecycle$Event;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/lifecycle/ReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object v2, v4

    .line 114
    .local v2, "activity":Landroid/app/Activity;
    move-object v4, v2

    instance-of v4, v4, Landroidx/lifecycle/LifecycleRegistryOwner;

    if-eqz v4, :cond_0

    .line 115
    move-object v4, v2

    check-cast v4, Landroidx/lifecycle/LifecycleRegistryOwner;

    invoke-interface {v4}, Landroidx/lifecycle/LifecycleRegistryOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 116
    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v4, :cond_1

    .line 120
    move-object v4, v2

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v4}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    move-object v3, v4

    .line 121
    .local v3, "lifecycle":Landroidx/lifecycle/Lifecycle;
    move-object v4, v3

    instance-of v4, v4, Landroidx/lifecycle/LifecycleRegistry;

    if-eqz v4, :cond_1

    .line 122
    move-object v4, v3

    check-cast v4, Landroidx/lifecycle/LifecycleRegistry;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 125
    .end local v3    # "lifecycle":Landroidx/lifecycle/Lifecycle;
    :cond_1
    goto :goto_0
.end method

.method private dispatchCreate(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ReportFragment;
    move-object v1, p1

    .local v1, "listener":Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 55
    move-object v2, v1

    invoke-interface {v2}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onCreate()V

    .line 57
    :cond_0
    return-void
.end method

.method private dispatchResume(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ReportFragment;
    move-object v1, p1

    .local v1, "listener":Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 67
    move-object v2, v1

    invoke-interface {v2}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onResume()V

    .line 69
    :cond_0
    return-void
.end method

.method private dispatchStart(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ReportFragment;
    move-object v1, p1

    .local v1, "listener":Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 61
    move-object v2, v1

    invoke-interface {v2}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onStart()V

    .line 63
    :cond_0
    return-void
.end method

.method static get(Landroid/app/Activity;)Landroidx/lifecycle/ReportFragment;
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ReportFragment;

    move-object v0, v1

    .end local v0    # "activity":Landroid/app/Activity;
    return-object v0
.end method

.method public static injectIfNeededIn(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object v1, v2

    .line 39
    .local v1, "manager":Landroid/app/FragmentManager;
    move-object v2, v1

    const-string/jumbo v3, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 40
    move-object v2, v1

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    new-instance v3, Landroidx/lifecycle/ReportFragment;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/lifecycle/ReportFragment;-><init>()V

    const-string/jumbo v4, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    move-result v2

    .line 42
    move-object v2, v1

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    move-result v2

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ReportFragment;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {v2, v3}, Landroidx/lifecycle/ReportFragment;->dispatchCreate(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 75
    move-object v2, v0

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {v2, v3}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ReportFragment;
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Fragment;->onDestroy()V

    .line 107
    move-object v1, v0

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {v1, v2}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 109
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 110
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ReportFragment;
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Fragment;->onPause()V

    .line 95
    move-object v1, v0

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {v1, v2}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 96
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ReportFragment;
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Fragment;->onResume()V

    .line 88
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {v1, v2}, Landroidx/lifecycle/ReportFragment;->dispatchResume(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 89
    move-object v1, v0

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {v1, v2}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 90
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ReportFragment;
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Fragment;->onStart()V

    .line 81
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {v1, v2}, Landroidx/lifecycle/ReportFragment;->dispatchStart(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 82
    move-object v1, v0

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {v1, v2}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 83
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ReportFragment;
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Fragment;->onStop()V

    .line 101
    move-object v1, v0

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {v1, v2}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 102
    return-void
.end method

.method setProcessListener(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ReportFragment;
    move-object v1, p1

    .local v1, "processListener":Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 129
    return-void
.end method
