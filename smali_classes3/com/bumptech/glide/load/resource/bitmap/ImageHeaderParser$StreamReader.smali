.class Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamReader"
.end annotation


# instance fields
.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
    move-object v1, p1

    .local v1, "is":Ljava/io/InputStream;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 330
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    .line 331
    return-void
.end method


# virtual methods
.method public getByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
    return v0
.end method

.method public getUInt16()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0x8

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
    return v0
.end method

.method public getUInt8()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xff

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
    return v0
.end method

.method public read([B)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
    move-object v1, p1

    .local v1, "buffer":[B
    move-object v4, v1

    array-length v4, v4

    move v2, v4

    .line 370
    .local v2, "toRead":I
    :goto_0
    move v4, v2

    if-lez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    move-object v5, v1

    move-object v6, v1

    array-length v6, v6

    move v7, v2

    sub-int/2addr v6, v7

    move v7, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v8, v4

    move v4, v8

    move v5, v8

    move v3, v5

    .local v3, "read":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 371
    move v4, v2

    move v5, v3

    sub-int/2addr v4, v5

    move v2, v4

    goto :goto_0

    .line 373
    .end local v3    # "read":I
    :cond_0
    move-object v4, v1

    array-length v4, v4

    move v5, v2

    sub-int/2addr v4, v5

    move v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
    return v0
.end method

.method public skip(J)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
    move-wide v1, p1

    .local v1, "total":J
    move-wide v8, v1

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 343
    const-wide/16 v8, 0x0

    move-wide v0, v8

    .line 364
    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
    :goto_0
    return-wide v0

    .line 346
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
    :cond_0
    move-wide v8, v1

    move-wide v3, v8

    .line 347
    .local v3, "toSkip":J
    :goto_1
    move-wide v8, v3

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 348
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    move-wide v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    move-wide v5, v8

    .line 349
    .local v5, "skipped":J
    move-wide v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 350
    move-wide v8, v3

    move-wide v10, v5

    sub-long/2addr v8, v10

    move-wide v3, v8

    .line 363
    :goto_2
    goto :goto_1

    .line 356
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    move v7, v8

    .line 357
    .local v7, "testEofByte":I
    move v8, v7

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 358
    .line 364
    .end local v5    # "skipped":J
    .end local v7    # "testEofByte":I
    :cond_2
    move-wide v8, v1

    move-wide v10, v3

    sub-long/2addr v8, v10

    move-wide v0, v8

    goto :goto_0

    .line 360
    .restart local v5    # "skipped":J
    .restart local v7    # "testEofByte":I
    :cond_3
    move-wide v8, v3

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    move-wide v3, v8

    goto :goto_2
.end method
