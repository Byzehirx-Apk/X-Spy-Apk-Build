.class Lcom/bumptech/glide/manager/NullConnectivityMonitor;
.super Ljava/lang/Object;
.source "NullConnectivityMonitor.java"

# interfaces
.implements Lcom/bumptech/glide/manager/ConnectivityMonitor;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/NullConnectivityMonitor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method
