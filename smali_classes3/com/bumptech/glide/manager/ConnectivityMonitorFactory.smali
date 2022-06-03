.class public Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
.super Ljava/lang/Object;
.source "ConnectivityMonitorFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;
    .locals 10

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "listener":Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;
    move-object v5, v1

    const-string/jumbo v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 14
    .local v3, "res":I
    move v5, v3

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 15
    .local v4, "hasPermission":Z
    move v5, v4

    if-eqz v5, :cond_1

    .line 16
    new-instance v5, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    move-object v0, v5

    .line 18
    .end local v0    # "this":Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
    :goto_1
    return-object v0

    .line 14
    .end local v4    # "hasPermission":Z
    .restart local v0    # "this":Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 18
    .restart local v4    # "hasPermission":Z
    :cond_1
    new-instance v5, Lcom/bumptech/glide/manager/NullConnectivityMonitor;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lcom/bumptech/glide/manager/NullConnectivityMonitor;-><init>()V

    move-object v0, v5

    goto :goto_1
.end method
