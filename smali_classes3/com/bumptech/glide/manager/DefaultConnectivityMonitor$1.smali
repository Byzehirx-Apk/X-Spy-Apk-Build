.class Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "DefaultConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)V
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    move-object v2, v0

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "intent":Landroid/content/Intent;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v4}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result v4

    move v3, v4

    .line 21
    .local v3, "wasConnected":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$100(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;Landroid/content/Context;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$002(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;Z)Z

    move-result v4

    .line 22
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v5}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 23
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v4}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$200(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v5}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;->onConnectivityChanged(Z)V

    .line 25
    :cond_0
    return-void
.end method
