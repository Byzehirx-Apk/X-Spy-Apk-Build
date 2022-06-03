.class final Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AutoNightModeManager"
.end annotation


# instance fields
.field private mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

.field private mIsNight:Z

.field private mTwilightManager:Landroidx/appcompat/app/TwilightManager;

.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/TwilightManager;)V
    .locals 5
    .param p1    # Landroidx/appcompat/app/AppCompatDelegateImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2673
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v2, p2

    .local v2, "twilightManager":Landroidx/appcompat/app/TwilightManager;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2674
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mTwilightManager:Landroidx/appcompat/app/TwilightManager;

    .line 2675
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/appcompat/app/TwilightManager;->isNight()Z

    move-result v4

    iput-boolean v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    .line 2676
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 3

    .prologue
    .line 2719
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 2720
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2721
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2723
    :cond_0
    return-void
.end method

.method dispatchTimeChanged()V
    .locals 4

    .prologue
    .line 2685
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mTwilightManager:Landroidx/appcompat/app/TwilightManager;

    invoke-virtual {v2}, Landroidx/appcompat/app/TwilightManager;->isNight()Z

    move-result v2

    move v1, v2

    .line 2686
    .local v1, "isNight":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    if-eq v2, v3, :cond_0

    .line 2687
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    .line 2688
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyDayNight()Z

    move-result v2

    .line 2690
    :cond_0
    return-void
.end method

.method getApplyableNightMode()I
    .locals 3

    .prologue
    .line 2680
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mTwilightManager:Landroidx/appcompat/app/TwilightManager;

    invoke-virtual {v2}, Landroidx/appcompat/app/TwilightManager;->isNight()Z

    move-result v2

    iput-boolean v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    .line 2681
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method setup()V
    .locals 6

    .prologue
    .line 2693
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    .line 2698
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 2699
    move-object v1, v0

    new-instance v2, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;)V

    iput-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2709
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_1

    .line 2710
    move-object v1, v0

    new-instance v2, Landroid/content/IntentFilter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    .line 2711
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2712
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2713
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2715
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 2716
    return-void
.end method
