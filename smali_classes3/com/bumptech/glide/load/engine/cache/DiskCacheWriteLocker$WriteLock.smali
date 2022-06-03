.class Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteLock"
.end annotation


# instance fields
.field interestedThreads:I

.field final lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 64
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;)V
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;-><init>()V

    return-void
.end method
