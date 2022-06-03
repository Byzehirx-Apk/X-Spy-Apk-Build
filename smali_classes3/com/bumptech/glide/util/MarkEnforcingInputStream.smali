.class public Lcom/bumptech/glide/util/MarkEnforcingInputStream;
.super Ljava/io/FilterInputStream;
.source "MarkEnforcingInputStream.java"


# static fields
.field private static final END_OF_STREAM:I = -0x1

.field private static final UNSET:I = -0x80000000


# instance fields
.field private availableBytes:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 14
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    .line 18
    return-void
.end method

.method private getBytesToRead(J)J
    .locals 9

    .prologue
    .line 73
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    move-wide v2, p1

    .local v2, "targetByteCount":J
    move-object v4, v1

    iget v4, v4, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    if-nez v4, :cond_0

    .line 74
    const-wide/16 v4, -0x1

    move-wide v1, v4

    .line 78
    .end local v1    # "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    :goto_0
    return-wide v1

    .line 75
    .restart local v1    # "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    :cond_0
    move-object v4, v1

    iget v4, v4, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_1

    move-wide v4, v2

    move-object v6, v1

    iget v6, v6, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 76
    move-object v4, v1

    iget v4, v4, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    int-to-long v4, v4

    move-wide v1, v4

    goto :goto_0

    .line 78
    :cond_1
    move-wide v4, v2

    move-wide v1, v4

    goto :goto_0
.end method

.method private updateAvailableBytesAfterRead(J)V
    .locals 11

    .prologue
    .line 83
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    move-wide v2, p1

    .local v2, "bytesRead":J
    move-object v4, v1

    iget v4, v4, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    move-wide v4, v2

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 84
    move-object v4, v1

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    int-to-long v5, v5

    move-wide v7, v2

    sub-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v4, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    move-object v1, v0

    invoke-super {v1}, Ljava/io/FilterInputStream;->available()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    move-object v2, v0

    invoke-super {v2}, Ljava/io/FilterInputStream;->available()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method public mark(I)V
    .locals 4

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    move v1, p1

    .local v1, "readlimit":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljava/io/FilterInputStream;->mark(I)V

    .line 23
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    .line 24
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    move-object v2, v0

    const-wide/16 v3, 0x1

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->getBytesToRead(J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 29
    const/4 v2, -0x1

    move v0, v2

    .line 34
    .end local v0    # "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    .local v1, "result":I
    :goto_0
    return v0

    .line 32
    .end local v1    # "result":I
    .restart local v0    # "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Ljava/io/FilterInputStream;->read()I

    move-result v2

    move v1, v2

    .line 33
    .restart local v1    # "result":I
    move-object v2, v0

    const-wide/16 v3, 0x1

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->updateAvailableBytesAfterRead(J)V

    .line 34
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method public read([BII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    move-object v2, p1

    .local v2, "buffer":[B
    move v3, p2

    .local v3, "byteOffset":I
    move v4, p3

    .local v4, "byteCount":I
    move-object v7, v1

    move v8, v4

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->getBytesToRead(J)J

    move-result-wide v7

    long-to-int v7, v7

    move v5, v7

    .line 40
    .local v5, "toRead":I
    move v7, v5

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 41
    const/4 v7, -0x1

    move v1, v7

    .line 46
    .end local v1    # "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    :goto_0
    return v1

    .line 44
    .restart local v1    # "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    :cond_0
    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v5

    invoke-super {v7, v8, v9, v10}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v7

    move v6, v7

    .line 45
    .local v6, "read":I
    move-object v7, v1

    move v8, v6

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->updateAvailableBytesAfterRead(J)V

    .line 46
    move v7, v6

    move v1, v7

    goto :goto_0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    move-object v1, v0

    invoke-super {v1}, Ljava/io/FilterInputStream;->reset()V

    .line 52
    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    .line 53
    return-void
.end method

.method public skip(J)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    move-wide v2, p1

    .local v2, "byteCount":J
    move-object v8, v1

    move-wide v9, v2

    invoke-direct {v8, v9, v10}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->getBytesToRead(J)J

    move-result-wide v8

    move-wide v4, v8

    .line 58
    .local v4, "toSkip":J
    move-wide v8, v4

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 59
    const-wide/16 v8, -0x1

    move-wide v1, v8

    .line 64
    .end local v1    # "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    :goto_0
    return-wide v1

    .line 62
    .restart local v1    # "this":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    :cond_0
    move-object v8, v1

    move-wide v9, v4

    invoke-super {v8, v9, v10}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v8

    move-wide v6, v8

    .line 63
    .local v6, "read":J
    move-object v8, v1

    move-wide v9, v6

    invoke-direct {v8, v9, v10}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->updateAvailableBytesAfterRead(J)V

    .line 64
    move-wide v8, v6

    move-wide v1, v8

    goto :goto_0
.end method
