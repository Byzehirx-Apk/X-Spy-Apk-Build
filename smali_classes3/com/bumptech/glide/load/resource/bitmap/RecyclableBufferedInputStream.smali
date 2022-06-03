.class public Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "RecyclableBufferedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BufferedIs"


# instance fields
.field private volatile buf:[B

.field private count:I

.field private marklimit:I

.field private markpos:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "buffer":[B
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 62
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 71
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    array-length v3, v3

    if-nez v3, :cond_1

    .line 72
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "buffer is null or empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_1
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 75
    return-void
.end method

.method private fillbuf(Ljava/io/InputStream;[B)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    move-object v1, p1

    .local v1, "localIn":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "localBuf":[B
    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    sub-int/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    if-lt v5, v6, :cond_2

    .line 132
    :cond_0
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v3, v5

    .line 133
    .local v3, "result":I
    move v5, v3

    if-lez v5, :cond_1

    .line 134
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 135
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 136
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 138
    :cond_1
    move v5, v3

    move v0, v5

    .line 168
    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .end local v3    # "result":I
    :goto_0
    return v0

    .line 145
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :cond_2
    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-nez v5, :cond_6

    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    move-object v6, v2

    array-length v6, v6

    if-le v5, v6, :cond_6

    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    move-object v6, v2

    array-length v6, v6

    if-ne v5, v6, :cond_6

    .line 147
    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    move v3, v5

    .line 148
    .local v3, "newLength":I
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    if-le v5, v6, :cond_3

    .line 149
    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    move v3, v5

    .line 151
    :cond_3
    const-string/jumbo v5, "BufferedIs"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 152
    const-string/jumbo v5, "BufferedIs"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "allocate buffer of length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 154
    :cond_4
    move v5, v3

    new-array v5, v5, [B

    move-object v4, v5

    .line 155
    .local v4, "newbuf":[B
    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v2

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    move-object v5, v0

    move-object v6, v4

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    iput-object v7, v6, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    move-object v2, v5

    .line 164
    .end local v3    # "newLength":I
    .end local v4    # "newbuf":[B
    :cond_5
    :goto_1
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    move-object v7, v0

    iget v7, v7, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 165
    move-object v5, v0

    move-object v6, v0

    const/4 v7, 0x0

    move-object v11, v6

    move v12, v7

    move v6, v12

    move-object v7, v11

    move v8, v12

    iput v8, v7, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    iput v6, v5, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 166
    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    move-object v8, v2

    array-length v8, v8

    move-object v9, v0

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v3, v5

    .line 167
    .local v3, "bytesread":I
    move-object v5, v0

    move v6, v3

    if-gtz v6, :cond_7

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    :goto_2
    iput v6, v5, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 168
    move v5, v3

    move v0, v5

    goto/16 :goto_0

    .line 159
    .end local v3    # "bytesread":I
    :cond_6
    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-lez v5, :cond_5

    .line 160
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v2

    array-length v9, v9

    move-object v10, v0

    iget v10, v10, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 167
    .restart local v3    # "bytesread":I
    :cond_7
    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    move v7, v3

    add-int/2addr v6, v7

    goto :goto_2
.end method

.method private static streamClosed()Ljava/io/IOException;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/io/IOException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "BufferedInputStream is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    move-object v1, v2

    .line 90
    .local v1, "localIn":Ljava/io/InputStream;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 91
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v1    # "localIn":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    throw v0

    .line 93
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .restart local v1    # "localIn":Ljava/io/InputStream;
    :cond_1
    move-object v2, v0

    :try_start_1
    iget v2, v2, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v2, v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    add-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    monitor-exit v4

    return v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 121
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    move-object v1, v2

    .line 122
    .local v1, "localIn":Ljava/io/InputStream;
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 123
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 124
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 126
    :cond_0
    return-void
.end method

.method public declared-synchronized fixMarkLimit()V
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    array-length v2, v2

    iput v2, v1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit v3

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 6

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    move v1, p1

    .local v1, "readlimit":I
    move-object v5, p0

    monitor-enter v5

    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget v3, v3, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    move v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    .line 191
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iput v3, v2, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit v5

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    throw v0
.end method

.method public markSupported()Z
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    return v0
.end method

.method public declared-synchronized read()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    move-object v8, p0

    monitor-enter v8

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    move-object v1, v3

    .line 223
    .local v1, "localBuf":[B
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    move-object v2, v3

    .line 224
    .local v2, "localIn":Ljava/io/InputStream;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 225
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .end local v1    # "localBuf":[B
    .end local v2    # "localIn":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    throw v0

    .line 229
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .restart local v1    # "localBuf":[B
    .restart local v2    # "localIn":Ljava/io/InputStream;
    :cond_1
    move-object v3, v0

    :try_start_1
    iget v3, v3, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    if-lt v3, v4, :cond_2

    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 231
    const/4 v3, -0x1

    move v0, v3

    .line 245
    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :goto_0
    monitor-exit v8

    return v0

    .line 234
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :cond_2
    move-object v3, v1

    move-object v4, v0

    :try_start_2
    iget-object v4, v4, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eq v3, v4, :cond_3

    .line 235
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    move-object v1, v3

    .line 236
    move-object v3, v1

    if-nez v3, :cond_3

    .line 237
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 242
    :cond_3
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_4

    .line 243
    move-object v3, v1

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    move-object v9, v4

    move v10, v5

    move v4, v10

    move-object v5, v9

    move v6, v10

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    aget-byte v3, v3, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v0, v3

    goto :goto_0

    .line 245
    :cond_4
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0
.end method

.method public declared-synchronized read([BII)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    move-object/from16 v1, p1

    .local v1, "buffer":[B
    move/from16 v2, p2

    .local v2, "offset":I
    move/from16 v3, p3

    .local v3, "byteCount":I
    move-object v13, p0

    monitor-enter v13

    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    move-object v4, v8

    .line 272
    .local v4, "localBuf":[B
    move-object v8, v4

    if-nez v8, :cond_0

    .line 273
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v8

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .end local v4    # "localBuf":[B
    :catchall_0
    move-exception v0

    monitor-exit v13

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    throw v0

    .line 276
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .restart local v4    # "localBuf":[B
    :cond_0
    move v8, v3

    if-nez v8, :cond_1

    .line 277
    const/4 v8, 0x0

    move v0, v8

    .line 329
    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :goto_0
    monitor-exit v13

    return v0

    .line 279
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :cond_1
    move-object v8, v0

    :try_start_1
    iget-object v8, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    move-object v5, v8

    .line 280
    .local v5, "localIn":Ljava/io/InputStream;
    move-object v8, v5

    if-nez v8, :cond_2

    .line 281
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v8

    throw v8

    .line 285
    :cond_2
    move-object v8, v0

    iget v8, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    move-object v9, v0

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    if-ge v8, v9, :cond_6

    .line 287
    move-object v8, v0

    iget v8, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    move-object v9, v0

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v8, v9

    move v9, v3

    if-lt v8, v9, :cond_4

    move v8, v3

    :goto_1
    move v7, v8

    .line 288
    .local v7, "copylength":I
    move-object v8, v4

    move-object v9, v0

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    move-object v10, v1

    move v11, v2

    move v12, v7

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    move v10, v7

    add-int/2addr v9, v10

    iput v9, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 290
    move v8, v7

    move v9, v3

    if-eq v8, v9, :cond_3

    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v8

    if-nez v8, :cond_5

    .line 291
    :cond_3
    move v8, v7

    move v0, v8

    goto :goto_0

    .line 287
    .end local v7    # "copylength":I
    :cond_4
    move-object v8, v0

    iget v8, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    move-object v9, v0

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v8, v9

    goto :goto_1

    .line 293
    .restart local v7    # "copylength":I
    :cond_5
    move v8, v2

    move v9, v7

    add-int/2addr v8, v9

    move v2, v8

    .line 294
    move v8, v3

    move v9, v7

    sub-int/2addr v8, v9

    move v6, v8

    .line 303
    .end local v7    # "copylength":I
    .local v6, "required":I
    :goto_2
    move-object v8, v0

    iget v8, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    move v8, v6

    move-object v9, v4

    array-length v9, v9

    if-lt v8, v9, :cond_8

    .line 304
    move-object v8, v5

    move-object v9, v1

    move v10, v2

    move v11, v6

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    move v7, v8

    .line 305
    .local v7, "read":I
    move v8, v7

    const/4 v9, -0x1

    if-ne v8, v9, :cond_c

    .line 306
    move v8, v6

    move v9, v3

    if-ne v8, v9, :cond_7

    const/4 v8, -0x1

    :goto_3
    move v0, v8

    goto :goto_0

    .line 296
    .end local v6    # "required":I
    .end local v7    # "read":I
    :cond_6
    move v8, v3

    move v6, v8

    .restart local v6    # "required":I
    goto :goto_2

    .line 306
    .restart local v7    # "read":I
    :cond_7
    move v8, v3

    move v9, v6

    sub-int/2addr v8, v9

    goto :goto_3

    .line 309
    .end local v7    # "read":I
    :cond_8
    move-object v8, v0

    move-object v9, v5

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_a

    .line 310
    move v8, v6

    move v9, v3

    if-ne v8, v9, :cond_9

    const/4 v8, -0x1

    :goto_4
    move v0, v8

    goto/16 :goto_0

    :cond_9
    move v8, v3

    move v9, v6

    sub-int/2addr v8, v9

    goto :goto_4

    .line 313
    :cond_a
    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eq v8, v9, :cond_b

    .line 314
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    move-object v4, v8

    .line 315
    move-object v8, v4

    if-nez v8, :cond_b

    .line 316
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v8

    throw v8

    .line 320
    :cond_b
    move-object v8, v0

    iget v8, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    move-object v9, v0

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v8, v9

    move v9, v6

    if-lt v8, v9, :cond_d

    move v8, v6

    :goto_5
    move v7, v8

    .line 321
    .restart local v7    # "read":I
    move-object v8, v4

    move-object v9, v0

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    move-object v10, v1

    move v11, v2

    move v12, v7

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    move v10, v7

    add-int/2addr v9, v10

    iput v9, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 324
    :cond_c
    move v8, v6

    move v9, v7

    sub-int/2addr v8, v9

    move v6, v8

    .line 325
    move v8, v6

    if-nez v8, :cond_e

    .line 326
    move v8, v3

    move v0, v8

    goto/16 :goto_0

    .line 320
    .end local v7    # "read":I
    :cond_d
    move-object v8, v0

    iget v8, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    move-object v9, v0

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v8, v9

    goto :goto_5

    .line 328
    .restart local v7    # "read":I
    :cond_e
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-nez v8, :cond_f

    .line 329
    move v8, v3

    move v9, v6

    sub-int/2addr v8, v9

    move v0, v8

    goto/16 :goto_0

    .line 331
    :cond_f
    move v8, v2

    move v9, v7

    add-int/2addr v8, v9

    move v2, v8

    .line 332
    goto/16 :goto_2
.end method

.method public declared-synchronized reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-nez v1, :cond_0

    .line 347
    new-instance v1, Ljava/io/IOException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "Stream is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    throw v0

    .line 349
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :cond_0
    const/4 v1, -0x1

    move-object v2, v0

    :try_start_1
    iget v2, v2, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-ne v1, v2, :cond_1

    .line 350
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "Mark has been invalidated"

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    iput v2, v1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    monitor-exit v4

    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    move-object/from16 v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    move-wide/from16 v2, p1

    .local v2, "byteCount":J
    move-object/from16 v15, p0

    monitor-enter v15

    move-object v8, v1

    :try_start_0
    iget-object v8, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    move-object v4, v8

    .line 371
    .local v4, "localBuf":[B
    move-object v8, v1

    iget-object v8, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    move-object v5, v8

    .line 372
    .local v5, "localIn":Ljava/io/InputStream;
    move-object v8, v4

    if-nez v8, :cond_0

    .line 373
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v8

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    .end local v4    # "localBuf":[B
    .end local v5    # "localIn":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    monitor-exit v15

    .end local v1    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    throw v1

    .line 375
    .restart local v1    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .restart local v4    # "localBuf":[B
    .restart local v5    # "localIn":Ljava/io/InputStream;
    :cond_0
    move-wide v8, v2

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 376
    const-wide/16 v8, 0x0

    move-wide v1, v8

    .line 402
    .end local v1    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :goto_0
    monitor-exit v15

    return-wide v1

    .line 378
    .restart local v1    # "this":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :cond_1
    move-object v8, v5

    if-nez v8, :cond_2

    .line 379
    :try_start_1
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v8

    throw v8

    .line 382
    :cond_2
    move-object v8, v1

    iget v8, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    move-object v9, v1

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    move-wide v10, v2

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    .line 383
    move-object v8, v1

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    int-to-long v9, v9

    move-wide v11, v2

    add-long/2addr v9, v11

    long-to-int v9, v9

    iput v9, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 384
    move-wide v8, v2

    move-wide v1, v8

    goto :goto_0

    .line 386
    :cond_3
    move-object v8, v1

    iget v8, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    move-object v9, v1

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    move-wide v6, v8

    .line 387
    .local v6, "read":J
    move-object v8, v1

    move-object v9, v1

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iput v9, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 389
    move-object v8, v1

    iget v8, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    move-wide v8, v2

    move-object v10, v1

    iget v10, v10, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_6

    .line 390
    move-object v8, v1

    move-object v9, v5

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 391
    move-wide v8, v6

    move-wide v1, v8

    goto :goto_0

    .line 393
    :cond_4
    move-object v8, v1

    iget v8, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    move-object v9, v1

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    move-wide v10, v2

    move-wide v12, v6

    sub-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-ltz v8, :cond_5

    .line 394
    move-object v8, v1

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    int-to-long v9, v9

    move-wide v11, v2

    move-wide v13, v6

    sub-long/2addr v11, v13

    add-long/2addr v9, v11

    long-to-int v9, v9

    iput v9, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 395
    move-wide v8, v2

    move-wide v1, v8

    goto :goto_0

    .line 398
    :cond_5
    move-wide v8, v6

    move-object v10, v1

    iget v10, v10, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    move-object v10, v1

    iget v10, v10, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    int-to-long v10, v10

    sub-long/2addr v8, v10

    move-wide v6, v8

    .line 399
    move-object v8, v1

    move-object v9, v1

    iget v9, v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iput v9, v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 400
    move-wide v8, v6

    move-wide v1, v8

    goto/16 :goto_0

    .line 402
    :cond_6
    move-wide v8, v6

    move-object v10, v5

    move-wide v11, v2

    move-wide v13, v6

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    add-long/2addr v8, v10

    move-wide v1, v8

    goto/16 :goto_0
.end method
