.class public abstract Landroidx/legacy/content/WakefulBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WakefulBroadcastReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "androidx.contentpager.content.wakelockid"

.field private static mNextId:I

.field private static final sActiveWakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/util/SparseArray;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    .line 77
    const/4 v0, 0x1

    sput v0, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/content/WakefulBroadcastReceiver;
    move-object v1, v0

    invoke-direct {v1}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)Z
    .locals 9

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "intent":Landroid/content/Intent;
    move-object v5, v0

    const-string/jumbo v6, "androidx.contentpager.content.wakelockid"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move v1, v5

    .line 127
    .local v1, "id":I
    move v5, v1

    if-nez v5, :cond_0

    .line 128
    const/4 v5, 0x0

    move v0, v5

    .line 144
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v0

    .line 130
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sget-object v5, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 131
    :try_start_0
    sget-object v5, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager$WakeLock;

    move-object v3, v5

    .line 132
    .local v3, "wl":Landroid/os/PowerManager$WakeLock;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 133
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 134
    sget-object v5, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 135
    const/4 v5, 0x1

    move-object v6, v2

    monitor-exit v6

    move v0, v5

    goto :goto_0

    .line 143
    :cond_1
    const-string/jumbo v5, "WakefulBroadcastReceiv."

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No active wake lock id #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 144
    const/4 v5, 0x1

    move-object v6, v2

    monitor-exit v6

    move v0, v5

    goto :goto_0

    .line 145
    .end local v3    # "wl":Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 14

    .prologue
    .line 94
    move-object v1, p0

    .local v1, "context":Landroid/content/Context;
    move-object v2, p1

    .local v2, "intent":Landroid/content/Intent;
    sget-object v9, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v3, v10

    monitor-enter v9

    .line 95
    :try_start_0
    sget v9, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    move v4, v9

    .line 96
    .local v4, "id":I
    sget v9, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    sput v9, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    .line 97
    sget v9, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    if-gtz v9, :cond_0

    .line 98
    const/4 v9, 0x1

    sput v9, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    .line 101
    :cond_0
    move-object v9, v2

    const-string/jumbo v10, "androidx.contentpager.content.wakelockid"

    move v11, v4

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 102
    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v9

    move-object v5, v9

    .line 103
    .local v5, "comp":Landroid/content/ComponentName;
    move-object v9, v5

    if-nez v9, :cond_1

    .line 104
    const/4 v9, 0x0

    move-object v10, v3

    monitor-exit v10

    move-object v1, v9

    .line 113
    .end local v1    # "context":Landroid/content/Context;
    :goto_0
    return-object v1

    .line 107
    .restart local v1    # "context":Landroid/content/Context;
    :cond_1
    move-object v9, v1

    const-string/jumbo v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    move-object v6, v9

    .line 108
    .local v6, "pm":Landroid/os/PowerManager;
    move-object v9, v6

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "androidx.core:wake:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v5

    .line 109
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 108
    invoke-virtual {v9, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    move-object v7, v9

    .line 110
    .local v7, "wl":Landroid/os/PowerManager$WakeLock;
    move-object v9, v7

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 111
    move-object v9, v7

    const-wide/32 v10, 0xea60

    invoke-virtual {v9, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 112
    sget-object v9, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    move v10, v4

    move-object v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    move-object v9, v5

    move-object v10, v3

    monitor-exit v10

    move-object v1, v9

    goto :goto_0

    .line 114
    .end local v4    # "id":I
    .end local v5    # "comp":Landroid/content/ComponentName;
    .end local v6    # "pm":Landroid/os/PowerManager;
    .end local v7    # "wl":Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v3

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v8

    throw v9
.end method
