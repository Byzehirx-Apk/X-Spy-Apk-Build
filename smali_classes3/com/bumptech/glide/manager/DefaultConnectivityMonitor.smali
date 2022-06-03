.class Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
.super Ljava/lang/Object;
.source "DefaultConnectivityMonitor.java"

# interfaces
.implements Lcom/bumptech/glide/manager/ConnectivityMonitor;


# instance fields
.field private final connectivityReceiver:Landroid/content/BroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private isConnected:Z

.field private isRegistered:Z

.field private final listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
    .locals 8

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "listener":Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 17
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;-><init>(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)V

    iput-object v4, v3, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v3, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->context:Landroid/content/Context;

    .line 30
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z

    move v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
    return v0
.end method

.method static synthetic access$002(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;Z)Z
    .locals 7

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z

    move v0, v2

    .end local v0    # "x0":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
    return v0
.end method

.method static synthetic access$100(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
    move-object v1, p1

    .local v1, "x1":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected(Landroid/content/Context;)Z

    move-result v2

    move v0, v2

    .end local v0    # "x0":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
    return v0
.end method

.method static synthetic access$200(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
    return-object v0
.end method

.method private isConnected(Landroid/content/Context;)Z
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v4, v1

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    move-object v2, v4

    .line 55
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    move-object v4, v2

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    move-object v3, v4

    .line 56
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private register()V
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isRegistered:Z

    if-eqz v1, :cond_0

    .line 35
    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z

    .line 39
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->context:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 40
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isRegistered:Z

    .line 41
    goto :goto_0
.end method

.method private unregister()V
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isRegistered:Z

    if-nez v1, :cond_0

    .line 45
    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->context:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 49
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isRegistered:Z

    .line 50
    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->register()V

    .line 62
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->unregister()V

    .line 67
    return-void
.end method
