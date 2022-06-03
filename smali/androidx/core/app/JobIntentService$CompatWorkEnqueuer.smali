.class final Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;
.super Landroidx/core/app/JobIntentService$WorkEnqueuer;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompatWorkEnqueuer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

.field mLaunchingService:Z

.field private final mRunWakeLock:Landroid/os/PowerManager$WakeLock;

.field mServiceProcessing:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 10

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "cn":Landroid/content/ComponentName;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/core/app/JobIntentService$WorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 164
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, v4, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mContext:Landroid/content/Context;

    .line 168
    move-object v4, v1

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    move-object v3, v4

    .line 169
    .local v3, "pm":Landroid/os/PowerManager;
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v2

    .line 170
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":launch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 169
    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 171
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 172
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v2

    .line 173
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":run"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 172
    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 174
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 175
    return-void
.end method


# virtual methods
.method enqueueWork(Landroid/content/Intent;)V
    .locals 9

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;
    move-object v1, p1

    .local v1, "work":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v2, v5

    .line 180
    .local v2, "intent":Landroid/content/Intent;
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 182
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mContext:Landroid/content/Context;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 183
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 184
    move-object v5, v0

    :try_start_0
    iget-boolean v5, v5, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    if-nez v5, :cond_0

    .line 185
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    .line 186
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    if-nez v5, :cond_0

    .line 192
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 195
    :cond_0
    move-object v5, v3

    monitor-exit v5

    .line 197
    :cond_1
    return-void

    .line 195
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public serviceProcessingFinished()V
    .locals 7

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 225
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    if-eqz v3, :cond_1

    .line 228
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    if-eqz v3, :cond_0

    .line 229
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 231
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    .line 232
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 234
    :cond_1
    move-object v3, v1

    monitor-exit v3

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public serviceProcessingStarted()V
    .locals 7

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 212
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    if-nez v3, :cond_0

    .line 213
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    .line 216
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 217
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 219
    :cond_0
    move-object v3, v1

    monitor-exit v3

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public serviceStartReceived()V
    .locals 6

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;
    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 204
    move-object v3, v0

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, v3, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    .line 205
    move-object v3, v1

    monitor-exit v3

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method
