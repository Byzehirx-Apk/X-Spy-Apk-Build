.class Lcom/google/android/material/snackbar/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;,
        Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    }
.end annotation


# static fields
.field private static final LONG_DURATION_MS:I = 0xabe

.field static final MSG_TIMEOUT:I = 0x0

.field private static final SHORT_DURATION_MS:I = 0x5dc

.field private static snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;


# instance fields
.field private currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

.field private final handler:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;


# direct methods
.method private constructor <init>()V
    .locals 9

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v1, v0

    new-instance v2, Ljava/lang/Object;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    .line 49
    move-object v1, v0

    new-instance v2, Landroid/os/Handler;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Lcom/google/android/material/snackbar/SnackbarManager$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/snackbar/SnackbarManager$1;-><init>(Lcom/google/android/material/snackbar/SnackbarManager;)V

    invoke-direct {v3, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, v1, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method private cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z
    .locals 6

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager;
    move-object v1, p1

    .local v1, "record":Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;
    move v2, p2

    .local v2, "event":I
    move-object v4, v1

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    move-object v3, v4

    .line 203
    .local v3, "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 205
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 206
    move-object v4, v3

    move v5, v2

    invoke-interface {v4, v5}, Lcom/google/android/material/snackbar/SnackbarManager$Callback;->dismiss(I)V

    .line 207
    const/4 v4, 0x1

    move v0, v4

    .line 209
    .end local v0    # "this":Lcom/google/android/material/snackbar/SnackbarManager;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/snackbar/SnackbarManager;
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method static getInstance()Lcom/google/android/material/snackbar/SnackbarManager;
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/google/android/material/snackbar/SnackbarManager;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/android/material/snackbar/SnackbarManager;-><init>()V

    sput-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;

    .line 38
    :cond_0
    sget-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;

    return-object v0
.end method

.method private isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .locals 4

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager;
    move-object v1, p1

    .local v1, "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->isSnackbar(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/snackbar/SnackbarManager;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/snackbar/SnackbarManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNextSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager;
    move-object v1, p1

    .local v1, "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->isSnackbar(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/snackbar/SnackbarManager;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/snackbar/SnackbarManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private scheduleTimeoutLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V
    .locals 8

    .prologue
    .line 221
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/snackbar/SnackbarManager;
    move-object v2, p1

    .local v2, "r":Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;
    move-object v4, v2

    iget v4, v4, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_0

    .line 223
    .line 234
    :goto_0
    return-void

    .line 226
    :cond_0
    const/16 v4, 0xabe

    move v3, v4

    .line 227
    .local v3, "durationMs":I
    move-object v4, v2

    iget v4, v4, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    if-lez v4, :cond_2

    .line 228
    move-object v4, v2

    iget v4, v4, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    move v3, v4

    .line 232
    :cond_1
    :goto_1
    move-object v4, v1

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 233
    move-object v4, v1

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    move-object v5, v1

    iget-object v5, v5, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    const/4 v6, 0x0

    move-object v7, v2

    invoke-static {v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v6, v3

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v4

    .line 234
    goto :goto_0

    .line 229
    :cond_2
    move-object v4, v2

    iget v4, v4, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 230
    const/16 v4, 0x5dc

    move v3, v4

    goto :goto_1
.end method

.method private showNextSnackbarLocked()V
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v2, :cond_0

    .line 188
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    iput-object v3, v2, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 189
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 191
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    iget-object v2, v2, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    move-object v1, v2

    .line 192
    .local v1, "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 193
    move-object v2, v1

    invoke-interface {v2}, Lcom/google/android/material/snackbar/SnackbarManager$Callback;->show()V

    .line 199
    .end local v1    # "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    :cond_0
    :goto_0
    return-void

    .line 196
    .restart local v1    # "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    goto :goto_0
.end method


# virtual methods
.method public dismiss(Lcom/google/android/material/snackbar/SnackbarManager$Callback;I)V
    .locals 9

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager;
    move-object v1, p1

    .local v1, "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    move v2, p2

    .local v2, "event":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 105
    move-object v5, v0

    move-object v6, v1

    :try_start_0
    invoke-direct {v5, v6}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 106
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z

    move-result v5

    .line 110
    :cond_0
    :goto_0
    move-object v5, v3

    monitor-exit v5

    .line 111
    return-void

    .line 107
    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/android/material/snackbar/SnackbarManager;->isNextSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z

    move-result v5

    goto :goto_0

    .line 110
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

.method handleTimeout(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V
    .locals 8

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager;
    move-object v1, p1

    .local v1, "record":Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 238
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    move-object v5, v1

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 239
    :cond_0
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z

    move-result v4

    .line 241
    :cond_1
    move-object v4, v2

    monitor-exit v4

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public isCurrent(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .locals 7

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager;
    move-object v1, p1

    .local v1, "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 161
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-direct {v4, v5}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/snackbar/SnackbarManager;
    return v0

    .line 162
    .restart local v0    # "this":Lcom/google/android/material/snackbar/SnackbarManager;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public isCurrentOrNext(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .locals 7

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager;
    move-object v1, p1

    .local v1, "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 167
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-direct {v4, v5}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/material/snackbar/SnackbarManager;->isNextSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/snackbar/SnackbarManager;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/snackbar/SnackbarManager;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public onDismissed(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .locals 7

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager;
    move-object v1, p1

    .local v1, "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 119
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-direct {v4, v5}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 122
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v4, :cond_0

    .line 123
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/snackbar/SnackbarManager;->showNextSnackbarLocked()V

    .line 126
    :cond_0
    move-object v4, v2

    monitor-exit v4

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public onShown(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .locals 7

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager;
    move-object v1, p1

    .local v1, "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 135
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-direct {v4, v5}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {v4, v5}, Lcom/google/android/material/snackbar/SnackbarManager;->scheduleTimeoutLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V

    .line 138
    :cond_0
    move-object v4, v2

    monitor-exit v4

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public pauseTimeout(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager;
    move-object v1, p1

    .local v1, "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 143
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-direct {v4, v5}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    iget-boolean v4, v4, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->paused:Z

    if-nez v4, :cond_0

    .line 144
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->paused:Z

    .line 145
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 147
    :cond_0
    move-object v4, v2

    monitor-exit v4

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public restoreTimeoutIfPaused(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .locals 7

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager;
    move-object v1, p1

    .local v1, "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 152
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-direct {v4, v5}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    iget-boolean v4, v4, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->paused:Z

    if-eqz v4, :cond_0

    .line 153
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->paused:Z

    .line 154
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {v4, v5}, Lcom/google/android/material/snackbar/SnackbarManager;->scheduleTimeoutLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V

    .line 156
    :cond_0
    move-object v4, v2

    monitor-exit v4

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public show(ILcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .locals 11

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarManager;
    move v1, p1

    .local v1, "duration":I
    move-object v2, p2

    .local v2, "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v3, v6

    monitor-enter v5

    .line 73
    move-object v5, v0

    move-object v6, v2

    :try_start_0
    invoke-direct {v5, v6}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    move v6, v1

    iput v6, v5, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    .line 79
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 80
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {v5, v6}, Lcom/google/android/material/snackbar/SnackbarManager;->scheduleTimeoutLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V

    .line 81
    move-object v5, v3

    monitor-exit v5

    .line 101
    :goto_0
    return-void

    .line 82
    :cond_0
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/google/android/material/snackbar/SnackbarManager;->isNextSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    move v6, v1

    iput v6, v5, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    .line 90
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v5, :cond_2

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    const/4 v7, 0x4

    .line 91
    invoke-direct {v5, v6, v7}, Lcom/google/android/material/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    move-object v5, v3

    monitor-exit v5

    goto :goto_0

    .line 87
    :cond_1
    move-object v5, v0

    new-instance v6, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;-><init>(ILcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    iput-object v6, v5, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5

    .line 96
    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    :try_start_1
    iput-object v6, v5, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 98
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/snackbar/SnackbarManager;->showNextSnackbarLocked()V

    .line 100
    move-object v5, v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    goto :goto_0
.end method
