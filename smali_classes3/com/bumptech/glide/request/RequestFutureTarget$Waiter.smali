.class Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/RequestFutureTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Waiter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAll(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
    move-object v1, p1

    .local v1, "toNotify":Ljava/lang/Object;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 243
    return-void
.end method

.method public waitForTimeout(Ljava/lang/Object;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
    move-object v1, p1

    .local v1, "toWaitOn":Ljava/lang/Object;
    move-wide v2, p2

    .local v2, "timeoutMillis":J
    move-object v4, v1

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 239
    return-void
.end method
