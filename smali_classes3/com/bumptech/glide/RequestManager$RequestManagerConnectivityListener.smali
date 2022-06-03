.class Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestManagerConnectivityListener"
.end annotation


# instance fields
.field private final requestTracker:Lcom/bumptech/glide/manager/RequestTracker;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/RequestTracker;)V
    .locals 4

    .prologue
    .line 792
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;
    move-object v1, p1

    .local v1, "requestTracker":Lcom/bumptech/glide/manager/RequestTracker;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 793
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 794
    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Z)V
    .locals 3

    .prologue
    .line 798
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;
    move v1, p1

    .local v1, "isConnected":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 799
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v2}, Lcom/bumptech/glide/manager/RequestTracker;->restartRequests()V

    .line 801
    :cond_0
    return-void
.end method
