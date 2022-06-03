.class public final Lcom/bumptech/glide/util/ContentLengthInputStream;
.super Ljava/io/FilterInputStream;
.source "ContentLengthInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentLengthStream"

.field private static final UNKNOWN:I = -0x1


# instance fields
.field private final contentLength:J

.field private readSoFar:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .locals 8

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move-wide v2, p2

    .local v2, "contentLength":J
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Lcom/bumptech/glide/util/ContentLengthInputStream;->contentLength:J

    .line 46
    return-void
.end method

.method private checkReadSoFarOrThrow(I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    move v1, p1

    .local v1, "read":I
    move v2, v1

    if-ltz v2, :cond_1

    .line 70
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    move v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    .line 76
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    return v0

    .line 71
    .restart local v0    # "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    :cond_1
    move-object v2, v0

    iget-wide v2, v2, Lcom/bumptech/glide/util/ContentLengthInputStream;->contentLength:J

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 72
    new-instance v2, Ljava/io/IOException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to read all expected data, expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-wide v5, v5, Lcom/bumptech/glide/util/ContentLengthInputStream;->contentLength:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", but read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static obtain(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .locals 9

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "other":Ljava/io/InputStream;
    move-wide v1, p1

    .local v1, "contentLength":J
    new-instance v3, Lcom/bumptech/glide/util/ContentLengthInputStream;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-wide v6, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/bumptech/glide/util/ContentLengthInputStream;-><init>(Ljava/io/InputStream;J)V

    move-object v0, v3

    .end local v0    # "other":Ljava/io/InputStream;
    return-object v0
.end method

.method public static obtain(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 22
    move-object v1, p0

    .local v1, "other":Ljava/io/InputStream;
    move-object v2, p1

    .local v2, "contentLengthHeader":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v4}, Lcom/bumptech/glide/util/ContentLengthInputStream;->parseContentLength(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/bumptech/glide/util/ContentLengthInputStream;->obtain(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "other":Ljava/io/InputStream;
    return-object v1
.end method

.method private static parseContentLength(Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "contentLengthHeader":Ljava/lang/String;
    const/4 v3, -0x1

    move v1, v3

    .line 31
    .local v1, "result":I
    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 33
    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v1, v3

    .line 38
    .line 40
    :cond_0
    :goto_0
    move v3, v1

    move v0, v3

    .end local v0    # "contentLengthHeader":Ljava/lang/String;
    return v0

    .line 34
    .restart local v0    # "contentLengthHeader":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 35
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "ContentLengthStream"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    const-string/jumbo v3, "ContentLengthStream"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed to parse content length header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    move-object v6, p0

    monitor-enter v6

    move-object v2, v1

    :try_start_0
    iget-wide v2, v2, Lcom/bumptech/glide/util/ContentLengthInputStream;->contentLength:J

    move-object v4, v1

    iget v4, v4, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    move-object v4, v1

    iget-object v4, v4, Lcom/bumptech/glide/util/ContentLengthInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    long-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    monitor-exit v6

    return v1

    .restart local v1    # "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    :catchall_0
    move-exception v1

    monitor-exit v6

    .end local v1    # "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    throw v1
.end method

.method public declared-synchronized read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    move-object v2, v0

    :try_start_0
    invoke-super {v2}, Ljava/io/FilterInputStream;->read()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/util/ContentLengthInputStream;->checkReadSoFarOrThrow(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    monitor-exit v3

    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    throw v0
.end method

.method public read([B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    move-object v1, p1

    .local v1, "buffer":[B
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/util/ContentLengthInputStream;->read([BII)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    move-object v1, p1

    .local v1, "buffer":[B
    move v2, p2

    .local v2, "byteOffset":I
    move v3, p3

    .local v3, "byteCount":I
    move-object v9, p0

    monitor-enter v9

    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    :try_start_0
    invoke-super {v5, v6, v7, v8}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/util/ContentLengthInputStream;->checkReadSoFarOrThrow(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    monitor-exit v9

    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/bumptech/glide/util/ContentLengthInputStream;
    throw v0
.end method
