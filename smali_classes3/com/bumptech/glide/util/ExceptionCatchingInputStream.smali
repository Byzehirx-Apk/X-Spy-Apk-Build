.class public Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
.super Ljava/io/InputStream;
.source "ExceptionCatchingInputStream.java"


# static fields
.field private static final QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/util/ExceptionCatchingInputStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private exception:Ljava/io/IOException;

.field private wrapped:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    move-object v1, v0

    invoke-direct {v1}, Ljava/io/InputStream;-><init>()V

    .line 42
    return-void
.end method

.method static clearQueue()V
    .locals 1

    .prologue
    .line 35
    :goto_0
    sget-object v0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public static obtain(Ljava/io/InputStream;)Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    .locals 7

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "toWrap":Ljava/io/InputStream;
    sget-object v4, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 24
    :try_start_0
    sget-object v4, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;

    move-object v1, v4

    .line 25
    .local v1, "result":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    move-object v4, v1

    if-nez v4, :cond_0

    .line 27
    new-instance v4, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;-><init>()V

    move-object v1, v4

    .line 29
    :cond_0
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->setInputStream(Ljava/io/InputStream;)V

    .line 30
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "toWrap":Ljava/io/InputStream;
    return-object v0

    .line 25
    .end local v1    # "result":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    .restart local v0    # "toWrap":Ljava/io/InputStream;
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


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 56
    return-void
.end method

.method public getException()Ljava/io/IOException;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    return-object v0
.end method

.method public mark(I)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    move v1, p1

    .local v1, "readlimit":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    .line 61
    return-void
.end method

.method public markSupported()Z
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v1, v3

    .line 117
    .line 118
    .local v1, "result":I
    :goto_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    return v0

    .line 114
    .end local v1    # "result":I
    .restart local v0    # "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 115
    .local v2, "e":Ljava/io/IOException;
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    .line 116
    const/4 v3, -0x1

    move v1, v3

    .restart local v1    # "result":I
    goto :goto_0
.end method

.method public read([B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    move-object v1, p1

    .local v1, "buffer":[B
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v2, v4

    .line 76
    .line 77
    .local v2, "read":I
    :goto_0
    move v4, v2

    move v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    return v0

    .line 73
    .end local v2    # "read":I
    .restart local v0    # "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 74
    .local v3, "e":Ljava/io/IOException;
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    .line 75
    const/4 v4, -0x1

    move v2, v4

    .restart local v2    # "read":I
    goto :goto_0
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    move-object v1, p1

    .local v1, "buffer":[B
    move v2, p2

    .local v2, "byteOffset":I
    move v3, p3

    .local v3, "byteCount":I
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v4, v6

    .line 88
    .line 89
    .local v4, "read":I
    :goto_0
    move v6, v4

    move v0, v6

    .end local v0    # "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    return v0

    .line 85
    .end local v4    # "read":I
    .restart local v0    # "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 86
    .local v5, "e":Ljava/io/IOException;
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    .line 87
    const/4 v6, -0x1

    move v4, v6

    .restart local v4    # "read":I
    goto :goto_0
.end method

.method public release()V
    .locals 6

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    .line 127
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    .line 128
    sget-object v3, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 129
    :try_start_0
    sget-object v3, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    move-object v4, v0

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 130
    move-object v3, v1

    monitor-exit v3

    .line 131
    return-void

    .line 130
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

.method public declared-synchronized reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v2

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    throw v0
.end method

.method setInputStream(Ljava/io/InputStream;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    move-object v1, p1

    .local v1, "toWrap":Ljava/io/InputStream;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    .line 46
    return-void
.end method

.method public skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    move-wide v1, p1

    .local v1, "byteCount":J
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    move-wide v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    move-wide v3, v6

    .line 105
    .line 106
    .local v3, "skipped":J
    :goto_0
    move-wide v6, v3

    move-wide v0, v6

    .end local v0    # "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    return-wide v0

    .line 102
    .end local v3    # "skipped":J
    .restart local v0    # "this":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 103
    .local v5, "e":Ljava/io/IOException;
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    .line 104
    const-wide/16 v6, 0x0

    move-wide v3, v6

    .restart local v3    # "skipped":J
    goto :goto_0
.end method
