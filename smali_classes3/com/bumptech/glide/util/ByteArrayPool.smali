.class public final Lcom/bumptech/glide/util/ByteArrayPool;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# static fields
.field private static final BYTE_ARRAY_POOL:Lcom/bumptech/glide/util/ByteArrayPool;

.field private static final MAX_BYTE_ARRAY_COUNT:I = 0x20

.field private static final MAX_SIZE:I = 0x20c000

.field private static final TAG:Ljava/lang/String; = "ByteArrayPool"

.field private static final TEMP_BYTES_SIZE:I = 0x10000


# instance fields
.field private final tempQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/bumptech/glide/util/ByteArrayPool;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/util/ByteArrayPool;-><init>()V

    sput-object v0, Lcom/bumptech/glide/util/ByteArrayPool;->BYTE_ARRAY_POOL:Lcom/bumptech/glide/util/ByteArrayPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ByteArrayPool;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v2

    iput-object v2, v1, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    .line 28
    return-void
.end method

.method public static get()Lcom/bumptech/glide/util/ByteArrayPool;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/bumptech/glide/util/ByteArrayPool;->BYTE_ARRAY_POOL:Lcom/bumptech/glide/util/ByteArrayPool;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ByteArrayPool;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 35
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 36
    move-object v3, v1

    monitor-exit v3

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public getBytes()[B
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ByteArrayPool;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 46
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v1, v4

    .line 47
    .local v1, "result":[B
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    move-object v4, v1

    if-nez v4, :cond_0

    .line 49
    const/high16 v4, 0x10000

    new-array v4, v4, [B

    move-object v1, v4

    .line 50
    const-string/jumbo v4, "ByteArrayPool"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    const-string/jumbo v4, "ByteArrayPool"

    const-string/jumbo v5, "Created temp bytes"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 54
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/util/ByteArrayPool;
    return-object v0

    .line 47
    .end local v1    # "result":[B
    .restart local v0    # "this":Lcom/bumptech/glide/util/ByteArrayPool;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public releaseBytes([B)Z
    .locals 8

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ByteArrayPool;
    move-object v1, p1

    .local v1, "bytes":[B
    move-object v5, v1

    array-length v5, v5

    const/high16 v6, 0x10000

    if-eq v5, v6, :cond_0

    .line 65
    const/4 v5, 0x0

    move v0, v5

    .line 75
    .end local v0    # "this":Lcom/bumptech/glide/util/ByteArrayPool;
    :goto_0
    return v0

    .line 68
    .restart local v0    # "this":Lcom/bumptech/glide/util/ByteArrayPool;
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    .line 69
    .local v2, "accepted":Z
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    monitor-enter v5

    .line 70
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    const/16 v6, 0x20

    if-ge v5, v6, :cond_1

    .line 71
    const/4 v5, 0x1

    move v2, v5

    .line 72
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v5

    .line 74
    :cond_1
    move-object v5, v3

    monitor-exit v5

    .line 75
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 74
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
