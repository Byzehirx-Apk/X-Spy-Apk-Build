.class Lcom/bumptech/glide/disklrucache/StrictLineReader;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 8

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/StrictLineReader;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move v2, p2

    .local v2, "capacity":I
    move-object v3, p3

    .local v3, "charset":Ljava/nio/charset/Charset;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 87
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v3

    if-nez v4, :cond_1

    .line 88
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 90
    :cond_1
    move v4, v2

    if-gez v4, :cond_2

    .line 91
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "capacity <= 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    :cond_2
    move-object v4, v3

    sget-object v5, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 94
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Unsupported encoding"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 97
    :cond_3
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    .line 98
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/bumptech/glide/disklrucache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    .line 99
    move-object v4, v0

    move v5, v2

    new-array v5, v5, [B

    iput-object v5, v4, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 7

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/StrictLineReader;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "charset":Ljava/nio/charset/Charset;
    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0x2000

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/bumptech/glide/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/disklrucache/StrictLineReader;)Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/StrictLineReader;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/disklrucache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/disklrucache/StrictLineReader;
    return-object v0
.end method

.method private fillBuf()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/StrictLineReader;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    move v1, v2

    .line 189
    .local v1, "result":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 190
    new-instance v2, Ljava/io/EOFException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 192
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 193
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    .line 194
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/StrictLineReader;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 110
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    if-eqz v3, :cond_0

    .line 111
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    .line 112
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_0
    move-object v3, v1

    monitor-exit v3

    .line 115
    return-void

    .line 114
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

.method public hasUnterminatedLine()Z
    .locals 3

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/StrictLineReader;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/StrictLineReader;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/disklrucache/StrictLineReader;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readLine()Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/StrictLineReader;
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v1, v7

    monitor-enter v6

    .line 127
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    if-nez v6, :cond_0

    .line 128
    new-instance v6, Ljava/io/IOException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "LineReader is closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 176
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6

    .line 134
    :cond_0
    move-object v6, v0

    :try_start_1
    iget v6, v6, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    move-object v7, v0

    iget v7, v7, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    if-lt v6, v7, :cond_1

    .line 135
    move-object v6, v0

    invoke-direct {v6}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->fillBuf()V

    .line 138
    :cond_1
    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    move v2, v6

    .local v2, "i":I
    :goto_0
    move v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    if-eq v6, v7, :cond_4

    .line 139
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    move v7, v2

    aget-byte v6, v6, v7

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    .line 140
    move v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    if-eq v6, v7, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-byte v6, v6, v7

    const/16 v7, 0xd

    if-ne v6, v7, :cond_2

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    :goto_1
    move v3, v6

    .line 141
    .local v3, "lineEnd":I
    new-instance v6, Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    move-object v9, v0

    iget v9, v9, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    move v10, v3

    move-object v11, v0

    iget v11, v11, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    sub-int/2addr v10, v11

    move-object v11, v0

    iget-object v11, v11, Lcom/bumptech/glide/disklrucache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v4, v6

    .line 142
    .local v4, "res":Ljava/lang/String;
    move-object v6, v0

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 143
    move-object v6, v4

    move-object v7, v1

    monitor-exit v7

    move-object v0, v6

    .line 172
    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/StrictLineReader;
    .end local v2    # "i":I
    .end local v3    # "lineEnd":I
    .end local v4    # "res":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 140
    .restart local v0    # "this":Lcom/bumptech/glide/disklrucache/StrictLineReader;
    .restart local v2    # "i":I
    :cond_2
    move v6, v2

    goto :goto_1

    .line 138
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_4
    new-instance v6, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    move-object v10, v0

    iget v10, v10, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    sub-int/2addr v9, v10

    const/16 v10, 0x50

    add-int/lit8 v9, v9, 0x50

    invoke-direct {v7, v8, v9}, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;-><init>(Lcom/bumptech/glide/disklrucache/StrictLineReader;I)V

    move-object v2, v6

    .line 161
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :goto_3
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    move-object v8, v0

    iget v8, v8, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    move-object v9, v0

    iget v9, v9, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    move-object v10, v0

    iget v10, v10, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 163
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    .line 164
    move-object v6, v0

    invoke-direct {v6}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->fillBuf()V

    .line 166
    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    move v3, v6

    .local v3, "i":I
    :goto_4
    move v6, v3

    move-object v7, v0

    iget v7, v7, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    if-eq v6, v7, :cond_7

    .line 167
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    move v7, v3

    aget-byte v6, v6, v7

    const/16 v7, 0xa

    if-ne v6, v7, :cond_6

    .line 168
    move v6, v3

    move-object v7, v0

    iget v7, v7, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    if-eq v6, v7, :cond_5

    .line 169
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    move-object v8, v0

    iget v8, v8, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    move v9, v3

    move-object v10, v0

    iget v10, v10, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 171
    :cond_5
    move-object v6, v0

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 172
    move-object v6, v2

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    goto :goto_2

    .line 166
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    goto :goto_3
.end method
