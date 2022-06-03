.class public Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;
.super Ljava/lang/Object;
.source "ApplicationLifecycleListener.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;
    }
.end annotation


# static fields
.field private static final TIMEOUT_MS:J = 0x2bcL


# instance fields
.field private mDelayedPauseRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private final mLifecycleCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mPauseSent:Z

.field private mResumedCounter:I

.field private mStartedCounter:I

.field private mStopSent:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;
    move-object v1, p1

    .local v1, "handler":Landroid/os/Handler;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mStartedCounter:I

    .line 56
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mResumedCounter:I

    .line 61
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mPauseSent:Z

    .line 66
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mStopSent:Z

    .line 76
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mLifecycleCallbacks:Ljava/util/Set;

    .line 78
    move-object v2, v0

    new-instance v3, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$1;-><init>(Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;)V

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    .line 88
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;)V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->dispatchPauseIfNeeded()V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;)V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->dispatchStopIfNeeded()V

    return-void
.end method

.method private dispatchPauseIfNeeded()V
    .locals 3

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;
    move-object v1, v0

    iget v1, v1, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mResumedCounter:I

    if-nez v1, :cond_0

    .line 102
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mPauseSent:Z

    .line 104
    :cond_0
    return-void
.end method

.method private dispatchStopIfNeeded()V
    .locals 5

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;
    move-object v3, v0

    iget v3, v3, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mStartedCounter:I

    if-nez v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mPauseSent:Z

    if-eqz v3, :cond_1

    .line 108
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mLifecycleCallbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;

    move-object v2, v3

    .line 109
    .local v2, "service":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;
    move-object v3, v2

    invoke-interface {v3}, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;->onApplicationEnterBackground()V

    .line 110
    goto :goto_0

    .line 111
    .end local v2    # "service":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mStopSent:Z

    .line 113
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 180
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, v0

    iget v2, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mStartedCounter:I

    if-nez v2, :cond_0

    .line 150
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mStopSent:Z

    .line 152
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mResumedCounter:I

    if-nez v2, :cond_1

    .line 153
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mPauseSent:Z

    .line 155
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mResumedCounter:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mResumedCounter:I

    .line 156
    move-object v2, v0

    iget v2, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mResumedCounter:I

    if-nez v2, :cond_2

    .line 164
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 166
    :cond_2
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mResumedCounter:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mResumedCounter:I

    .line 133
    move-object v2, v0

    iget v2, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mResumedCounter:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 134
    move-object v2, v0

    iget-boolean v2, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mPauseSent:Z

    if-eqz v2, :cond_1

    .line 135
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mPauseSent:Z

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 176
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mStartedCounter:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mStartedCounter:I

    .line 122
    move-object v4, v0

    iget v4, v4, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mStartedCounter:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move-object v4, v0

    iget-boolean v4, v4, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mStopSent:Z

    if-eqz v4, :cond_1

    .line 123
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mLifecycleCallbacks:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;

    move-object v3, v4

    .line 124
    .local v3, "service":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;
    move-object v4, v3

    invoke-interface {v4}, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;->onApplicationEnterForeground()V

    .line 125
    goto :goto_0

    .line 126
    .end local v3    # "service":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mStopSent:Z

    .line 128
    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mStartedCounter:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mStartedCounter:I

    .line 171
    move-object v2, v0

    invoke-direct {v2}, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->dispatchStopIfNeeded()V

    .line 172
    return-void
.end method

.method public registerApplicationLifecycleCallbacks(Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;
    move-object v1, p1

    .local v1, "lifecycleCallback":Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->mLifecycleCallbacks:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 98
    return-void
.end method
