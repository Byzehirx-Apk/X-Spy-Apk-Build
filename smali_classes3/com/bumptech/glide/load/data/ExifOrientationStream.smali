.class public Lcom/bumptech/glide/load/data/ExifOrientationStream;
.super Ljava/io/FilterInputStream;
.source "ExifOrientationStream.java"


# static fields
.field private static final EXIF_SEGMENT:[B

.field private static final ORIENTATION_POSITION:I

.field private static final SEGMENT_LENGTH:I

.field private static final SEGMENT_START_POSITION:I = 0x2


# instance fields
.field private final orientation:B

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->EXIF_SEGMENT:[B

    .line 60
    sget-object v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->EXIF_SEGMENT:[B

    array-length v0, v0

    sput v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->SEGMENT_LENGTH:I

    .line 61
    sget v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->SEGMENT_LENGTH:I

    const/4 v1, 0x2

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    return-void

    .line 17
    :array_0
    .array-data 1
        -0x1t
        -0x1ft
        0x0t
        0x1ct
        0x45t
        0x78t
        0x69t
        0x66t
        0x0t
        0x0t
        0x4dt
        0x4dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x1t
        0x1t
        0x12t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 8

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/ExifOrientationStream;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move v2, p2

    .local v2, "orientation":I
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 67
    move v3, v2

    const/4 v4, -0x1

    if-lt v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x8

    if-le v3, v4, :cond_1

    .line 68
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot add invalid orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    :cond_1
    move-object v3, v0

    move v4, v2

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/bumptech/glide/load/data/ExifOrientationStream;->orientation:B

    .line 71
    return-void
.end method


# virtual methods
.method public mark(I)V
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/ExifOrientationStream;
    move v1, p1

    .local v1, "readlimit":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public markSupported()Z
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/ExifOrientationStream;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/data/ExifOrientationStream;
    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/ExifOrientationStream;
    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    sget v3, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    if-le v2, v3, :cond_2

    .line 87
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Ljava/io/FilterInputStream;->read()I

    move-result v2

    move v1, v2

    .line 93
    .local v1, "result":I
    :goto_0
    move v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 94
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    .line 96
    :cond_1
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/data/ExifOrientationStream;
    return v0

    .line 88
    .end local v1    # "result":I
    .restart local v0    # "this":Lcom/bumptech/glide/load/data/ExifOrientationStream;
    :cond_2
    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    sget v3, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    if-ne v2, v3, :cond_3

    .line 89
    move-object v2, v0

    iget-byte v2, v2, Lcom/bumptech/glide/load/data/ExifOrientationStream;->orientation:B

    move v1, v2

    .restart local v1    # "result":I
    goto :goto_0

    .line 91
    .end local v1    # "result":I
    :cond_3
    sget-object v2, Lcom/bumptech/glide/load/data/ExifOrientationStream;->EXIF_SEGMENT:[B

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    const/4 v4, 0x2

    add-int/lit8 v3, v3, -0x2

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move v1, v2

    .restart local v1    # "result":I
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
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/ExifOrientationStream;
    move-object v1, p1

    .local v1, "buffer":[B
    move v2, p2

    .local v2, "byteOffset":I
    move v3, p3

    .local v3, "byteCount":I
    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    sget v6, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    if-le v5, v6, :cond_1

    .line 103
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-super {v5, v6, v7, v8}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v5

    move v4, v5

    .line 114
    .local v4, "read":I
    :goto_0
    move v5, v4

    if-lez v5, :cond_0

    .line 115
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    move v7, v4

    add-int/2addr v6, v7

    iput v6, v5, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    .line 117
    :cond_0
    move v5, v4

    move v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/load/data/ExifOrientationStream;
    return v0

    .line 104
    .end local v4    # "read":I
    .restart local v0    # "this":Lcom/bumptech/glide/load/data/ExifOrientationStream;
    :cond_1
    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    sget v6, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    if-ne v5, v6, :cond_2

    .line 105
    move-object v5, v1

    move v6, v2

    move-object v7, v0

    iget-byte v7, v7, Lcom/bumptech/glide/load/data/ExifOrientationStream;->orientation:B

    aput-byte v7, v5, v6

    .line 106
    const/4 v5, 0x1

    move v4, v5

    .restart local v4    # "read":I
    goto :goto_0

    .line 107
    .end local v4    # "read":I
    :cond_2
    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    .line 108
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x2

    move-object v9, v0

    iget v9, v9, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    rsub-int/lit8 v8, v9, 0x2

    invoke-super {v5, v6, v7, v8}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v5

    move v4, v5

    .restart local v4    # "read":I
    goto :goto_0

    .line 110
    .end local v4    # "read":I
    :cond_3
    sget v5, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    sub-int/2addr v5, v6

    move v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v4, v5

    .line 111
    .restart local v4    # "read":I
    sget-object v5, Lcom/bumptech/glide/load/data/ExifOrientationStream;->EXIF_SEGMENT:[B

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    move-object v7, v1

    move v8, v2

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/ExifOrientationStream;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public skip(J)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/data/ExifOrientationStream;
    move-wide v2, p1

    .local v2, "byteCount":J
    move-object v6, v1

    move-wide v7, v2

    invoke-super {v6, v7, v8}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v6

    move-wide v4, v6

    .line 123
    .local v4, "skipped":J
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 124
    move-object v6, v1

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    int-to-long v7, v7

    move-wide v9, v4

    add-long/2addr v7, v9

    long-to-int v7, v7

    iput v7, v6, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    .line 126
    :cond_0
    move-wide v6, v4

    move-wide v1, v6

    .end local v1    # "this":Lcom/bumptech/glide/load/data/ExifOrientationStream;
    return-wide v1
.end method
