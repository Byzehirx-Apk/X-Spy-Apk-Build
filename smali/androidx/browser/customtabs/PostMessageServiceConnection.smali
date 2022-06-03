.class public abstract Landroidx/browser/customtabs/PostMessageServiceConnection;
.super Ljava/lang/Object;
.source "PostMessageServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mService:Landroid/support/customtabs/IPostMessageService;

.field private final mSessionBinder:Landroid/support/customtabs/ICustomTabsCallback;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/PostMessageServiceConnection;
    move-object v1, p1

    .local v1, "session":Landroidx/browser/customtabs/CustomTabsSessionToken;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v2, v0

    new-instance v3, Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Landroidx/browser/customtabs/PostMessageServiceConnection;->mLock:Ljava/lang/Object;

    .line 39
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/browser/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v3

    iput-object v3, v2, Landroidx/browser/customtabs/PostMessageServiceConnection;->mSessionBinder:Landroid/support/customtabs/ICustomTabsCallback;

    .line 40
    return-void
.end method


# virtual methods
.method public bindSessionToPostMessageService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/PostMessageServiceConnection;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object v3, v4

    .line 52
    .local v3, "intent":Landroid/content/Intent;
    move-object v4, v3

    move-object v5, v2

    const-class v6, Landroidx/browser/customtabs/PostMessageService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 53
    move-object v4, v1

    move-object v5, v3

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/browser/customtabs/PostMessageServiceConnection;
    return v0
.end method

.method public final notifyMessageChannelReady(Landroid/os/Bundle;)Z
    .locals 9

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/PostMessageServiceConnection;
    move-object v1, p1

    .local v1, "extras":Landroid/os/Bundle;
    move-object v5, v0

    iget-object v5, v5, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/IPostMessageService;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 95
    .end local v0    # "this":Landroidx/browser/customtabs/PostMessageServiceConnection;
    :goto_0
    return v0

    .line 88
    .restart local v0    # "this":Landroidx/browser/customtabs/PostMessageServiceConnection;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/browser/customtabs/PostMessageServiceConnection;->mLock:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 90
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/IPostMessageService;

    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/customtabs/PostMessageServiceConnection;->mSessionBinder:Landroid/support/customtabs/ICustomTabsCallback;

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Landroid/support/customtabs/IPostMessageService;->onMessageChannelReady(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    move-object v5, v2

    :try_start_1
    monitor-exit v5

    .line 95
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 91
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 92
    .local v3, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    move-object v6, v2

    monitor-exit v6

    move v0, v5

    goto :goto_0

    .line 94
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public onPostMessageServiceConnected()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public onPostMessageServiceDisconnected()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/PostMessageServiceConnection;
    move-object v1, p1

    .local v1, "name":Landroid/content/ComponentName;
    move-object v2, p2

    .local v2, "service":Landroid/os/IBinder;
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Landroid/support/customtabs/IPostMessageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/IPostMessageService;

    move-result-object v4

    iput-object v4, v3, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/IPostMessageService;

    .line 67
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/browser/customtabs/PostMessageServiceConnection;->onPostMessageServiceConnected()V

    .line 68
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/PostMessageServiceConnection;
    move-object v1, p1

    .local v1, "name":Landroid/content/ComponentName;
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/IPostMessageService;

    .line 73
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/browser/customtabs/PostMessageServiceConnection;->onPostMessageServiceDisconnected()V

    .line 74
    return-void
.end method

.method public final postMessage(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 11

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/PostMessageServiceConnection;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "extras":Landroid/os/Bundle;
    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/IPostMessageService;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move v0, v6

    .line 116
    .end local v0    # "this":Landroidx/browser/customtabs/PostMessageServiceConnection;
    :goto_0
    return v0

    .line 109
    .restart local v0    # "this":Landroidx/browser/customtabs/PostMessageServiceConnection;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/customtabs/PostMessageServiceConnection;->mLock:Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v3, v7

    monitor-enter v6

    .line 111
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/IPostMessageService;

    move-object v7, v0

    iget-object v7, v7, Landroidx/browser/customtabs/PostMessageServiceConnection;->mSessionBinder:Landroid/support/customtabs/ICustomTabsCallback;

    move-object v8, v1

    move-object v9, v2

    invoke-interface {v6, v7, v8, v9}, Landroid/support/customtabs/IPostMessageService;->onPostMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    move-object v6, v3

    :try_start_1
    monitor-exit v6

    .line 116
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 112
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 113
    .local v4, "e":Landroid/os/RemoteException;
    const/4 v6, 0x0

    move-object v7, v3

    monitor-exit v7

    move v0, v6

    goto :goto_0

    .line 115
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public unbindFromContext(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/PostMessageServiceConnection;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 62
    return-void
.end method
