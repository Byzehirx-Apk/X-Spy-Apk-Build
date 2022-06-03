.class public Lgnu/text/LineBufferedReader;
.super Ljava/io/Reader;
.source "LineBufferedReader.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x2000

.field private static final CONVERT_CR:I = 0x1

.field private static final DONT_KEEP_FULL_LINES:I = 0x8

.field private static final PREV_WAS_CR:I = 0x4

.field private static final USER_BUFFER:I = 0x2


# instance fields
.field public buffer:[C

.field private flags:I

.field highestPos:I

.field protected in:Ljava/io/Reader;

.field public limit:I

.field protected lineNumber:I

.field private lineStartPos:I

.field protected markPos:I

.field path:Lgnu/text/Path;

.field public pos:I

.field protected readAheadLimit:I

.field public readState:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 7

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move-object v2, v0

    invoke-direct {v2}, Ljava/io/Reader;-><init>()V

    .line 48
    move-object v2, v0

    const/16 v3, 0xa

    iput-char v3, v2, Lgnu/text/LineBufferedReader;->readState:C

    .line 126
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 134
    move-object v2, v0

    new-instance v3, Ljava/io/InputStreamReader;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v3, v2, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object v2, v0

    invoke-direct {v2}, Ljava/io/Reader;-><init>()V

    .line 48
    move-object v2, v0

    const/16 v3, 0xa

    iput-char v3, v2, Lgnu/text/LineBufferedReader;->readState:C

    .line 126
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 139
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    .line 140
    return-void
.end method

.method private clearMark()V
    .locals 7

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 166
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move v1, v3

    .line 169
    .local v1, "i":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    if-lt v3, v4, :cond_1

    .line 170
    .line 180
    return-void

    .line 166
    .end local v1    # "i":I
    :cond_0
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->lineStartPos:I

    goto :goto_0

    .line 171
    .restart local v1    # "i":I
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineBufferedReader;->buffer:[C

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-char v3, v3, v4

    move v2, v3

    .line 172
    .local v2, "ch":C
    move v3, v2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    move v3, v2

    const/16 v4, 0xd

    if-ne v3, v4, :cond_3

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineBufferedReader;->buffer:[C

    move v4, v1

    aget-char v3, v3, v4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    .line 175
    :cond_2
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/text/LineBufferedReader;->lineNumber:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 176
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 179
    :cond_3
    goto :goto_1
.end method

.method static countLines([CII)I
    .locals 9

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "buffer":[C
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "limit":I
    const/4 v7, 0x0

    move v3, v7

    .line 638
    .local v3, "count":I
    const/4 v7, 0x0

    move v4, v7

    .line 639
    .local v4, "prev":C
    move v7, v1

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v2

    if-ge v7, v8, :cond_3

    .line 641
    move-object v7, v0

    move v8, v5

    aget-char v7, v7, v8

    move v6, v7

    .line 642
    .local v6, "ch":C
    move v7, v6

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    move v7, v4

    const/16 v8, 0xd

    if-ne v7, v8, :cond_1

    :cond_0
    move v7, v6

    const/16 v8, 0xd

    if-ne v7, v8, :cond_2

    .line 643
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 644
    :cond_2
    move v7, v6

    move v4, v7

    .line 639
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 646
    .end local v6    # "ch":C
    :cond_3
    move v7, v3

    move v0, v7

    .end local v0    # "buffer":[C
    return v0
.end method

.method private reserve([CI)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, p1

    .local v1, "buffer":[C
    move v2, p2

    .local v2, "reserve":I
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->limit:I

    add-int/2addr v4, v5

    move v2, v4

    .line 212
    move v4, v2

    move-object v5, v1

    array-length v5, v5

    if-gt v4, v5, :cond_1

    .line 213
    const/4 v4, 0x0

    move v3, v4

    .line 249
    .local v3, "saveStart":I
    :goto_0
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->limit:I

    if-lez v4, :cond_0

    .line 250
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/LineBufferedReader;->buffer:[C

    move v5, v3

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lgnu/text/LineBufferedReader;->limit:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 252
    return-void

    .line 216
    .end local v3    # "saveStart":I
    :cond_1
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    move v3, v4

    .line 217
    .restart local v3    # "saveStart":I
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-lez v4, :cond_3

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->markPos:I

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->pos:I

    if-ge v4, v5, :cond_3

    .line 219
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->markPos:I

    sub-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-gt v4, v5, :cond_2

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->flags:I

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    move v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->markPos:I

    sub-int/2addr v4, v5

    move-object v5, v1

    array-length v5, v5

    if-le v4, v5, :cond_5

    .line 222
    :cond_2
    move-object v4, v0

    invoke-direct {v4}, Lgnu/text/LineBufferedReader;->clearMark()V

    .line 227
    :cond_3
    :goto_1
    move v4, v2

    move-object v5, v1

    array-length v5, v5

    sub-int/2addr v4, v5

    move v2, v4

    .line 228
    move v4, v2

    move v5, v3

    if-gt v4, v5, :cond_6

    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-le v4, v5, :cond_4

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->flags:I

    const/16 v5, 0x8

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_6

    .line 231
    .line 243
    :cond_4
    :goto_2
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lgnu/text/LineBufferedReader;->lineStartPos:I

    move v6, v3

    sub-int/2addr v5, v6

    iput v5, v4, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 244
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lgnu/text/LineBufferedReader;->limit:I

    move v6, v3

    sub-int/2addr v5, v6

    iput v5, v4, Lgnu/text/LineBufferedReader;->limit:I

    .line 245
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lgnu/text/LineBufferedReader;->markPos:I

    move v6, v3

    sub-int/2addr v5, v6

    iput v5, v4, Lgnu/text/LineBufferedReader;->markPos:I

    .line 246
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lgnu/text/LineBufferedReader;->pos:I

    move v6, v3

    sub-int/2addr v5, v6

    iput v5, v4, Lgnu/text/LineBufferedReader;->pos:I

    .line 247
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lgnu/text/LineBufferedReader;->highestPos:I

    move v6, v3

    sub-int/2addr v5, v6

    iput v5, v4, Lgnu/text/LineBufferedReader;->highestPos:I

    goto/16 :goto_0

    .line 224
    :cond_5
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->markPos:I

    move v3, v4

    goto :goto_1

    .line 232
    :cond_6
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gt v4, v5, :cond_7

    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-le v4, v5, :cond_7

    .line 233
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->lineStartPos:I

    move v3, v4

    goto :goto_2

    .line 234
    :cond_7
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->flags:I

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8

    .line 235
    move v4, v3

    move v5, v3

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x2

    shr-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    move v3, v4

    goto :goto_2

    .line 238
    :cond_8
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v4, :cond_9

    .line 239
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->lineStartPos:I

    move v3, v4

    .line 240
    :cond_9
    const/4 v4, 0x2

    move-object v5, v1

    array-length v5, v5

    mul-int/2addr v4, v5

    new-array v4, v4, [C

    move-object v1, v4

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public fill(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move v1, p1

    .local v1, "len":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    move v5, v1

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/text/LineBufferedReader;
    return v0
.end method

.method public getColumnNumber()I
    .locals 7

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v4, :cond_1

    .line 435
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget-char v4, v4, v5

    move v1, v4

    .line 436
    .local v1, "prev":C
    move v4, v1

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    move v4, v1

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    .line 437
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    .line 454
    .end local v0    # "this":Lgnu/text/LineBufferedReader;
    .local v1, "start":I
    .local v2, "col":I
    :goto_0
    return v0

    .line 439
    .end local v1    # "start":I
    .end local v2    # "col":I
    .restart local v0    # "this":Lgnu/text/LineBufferedReader;
    :cond_1
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-gtz v4, :cond_2

    .line 440
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->lineStartPos:I

    sub-int/2addr v4, v5

    move v0, v4

    goto :goto_0

    .line 444
    :cond_2
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v4, :cond_5

    const/4 v4, 0x0

    :goto_1
    move v1, v4

    .line 445
    .restart local v1    # "start":I
    move v4, v1

    move v2, v4

    .local v2, "i":I
    :goto_2
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->pos:I

    if-ge v4, v5, :cond_6

    .line 447
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/LineBufferedReader;->buffer:[C

    move v5, v2

    add-int/lit8 v2, v2, 0x1

    aget-char v4, v4, v5

    move v3, v4

    .line 448
    .local v3, "ch":C
    move v4, v3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    move v4, v3

    const/16 v5, 0xd

    if-ne v4, v5, :cond_4

    .line 449
    :cond_3
    move v4, v2

    move v1, v4

    .line 450
    :cond_4
    goto :goto_2

    .line 444
    .end local v1    # "start":I
    .end local v2    # "i":I
    .end local v3    # "ch":C
    :cond_5
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->lineStartPos:I

    goto :goto_1

    .line 451
    .restart local v1    # "start":I
    .restart local v2    # "i":I
    :cond_6
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    move v5, v1

    sub-int/2addr v4, v5

    move v2, v4

    .line 452
    .local v2, "col":I
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v4, :cond_7

    .line 453
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->lineStartPos:I

    sub-int/2addr v4, v5

    move v2, v4

    .line 454
    :cond_7
    move v4, v2

    move v0, v4

    goto :goto_0
.end method

.method public final getConvertCR()Z
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, v0

    iget v1, v1, Lgnu/text/LineBufferedReader;->flags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/text/LineBufferedReader;
    return v0

    .restart local v0    # "this":Lgnu/text/LineBufferedReader;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 7

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->lineNumber:I

    move v1, v3

    .line 405
    .local v1, "lineno":I
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-nez v3, :cond_2

    .line 407
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-le v3, v4, :cond_1

    .line 409
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-char v3, v3, v4

    move v2, v3

    .line 410
    .local v2, "prev":C
    move v3, v2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    .line 411
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 412
    .line 416
    .end local v2    # "prev":C
    :cond_1
    :goto_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lgnu/text/LineBufferedReader;
    return v0

    .line 415
    .restart local v0    # "this":Lgnu/text/LineBufferedReader;
    :cond_2
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v5, :cond_3

    const/4 v5, 0x0

    :goto_1
    move-object v6, v0

    iget v6, v6, Lgnu/text/LineBufferedReader;->pos:I

    invoke-static {v4, v5, v6}, Lgnu/text/LineBufferedReader;->countLines([CII)I

    move-result v4

    add-int/2addr v3, v4

    move v1, v3

    goto :goto_0

    :cond_3
    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->lineStartPos:I

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/text/LineBufferedReader;
    return-object v0

    .restart local v0    # "this":Lgnu/text/LineBufferedReader;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPath()Lgnu/text/Path;
    .locals 2

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/LineBufferedReader;
    return-object v0
.end method

.method public getReadState()C
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, v0

    iget-char v1, v1, Lgnu/text/LineBufferedReader;->readState:C

    move v0, v1

    .end local v0    # "this":Lgnu/text/LineBufferedReader;
    return v0
.end method

.method public incrLineNumber(II)V
    .locals 7

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move v1, p1

    .local v1, "lineDelta":I
    move v2, p2

    .local v2, "lineStartPos":I
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/text/LineBufferedReader;->lineNumber:I

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 427
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 428
    return-void
.end method

.method public lineStart(Z)V
    .locals 0
    .param p1, "revisited"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 5

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move v1, p1

    .local v1, "readAheadLimit":I
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget v2, v2, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-lez v2, :cond_0

    .line 465
    move-object v2, v0

    invoke-direct {v2}, Lgnu/text/LineBufferedReader;->clearMark()V

    .line 466
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 467
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    iput v3, v2, Lgnu/text/LineBufferedReader;->markPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit v4

    return-void

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lgnu/text/LineBufferedReader;
    throw v0
.end method

.method public markSupported()Z
    .locals 2

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/text/LineBufferedReader;
    return v0
.end method

.method public peek()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v2, v0

    iget v2, v2, Lgnu/text/LineBufferedReader;->pos:I

    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v2, v3, :cond_1

    move-object v2, v0

    iget v2, v2, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v2, :cond_1

    .line 713
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    move v1, v2

    .line 714
    .local v1, "ch":C
    move v2, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    move v2, v1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    .line 716
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v2, v2, v3

    move v1, v2

    .line 717
    move v2, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    const/16 v2, 0xa

    move v1, v2

    .line 719
    :cond_0
    move v2, v1

    move v0, v2

    .line 725
    .end local v0    # "this":Lgnu/text/LineBufferedReader;
    .end local v1    # "ch":C
    :goto_0
    return v0

    .line 722
    .restart local v0    # "this":Lgnu/text/LineBufferedReader;
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I

    move-result v2

    move v1, v2

    .line 723
    .local v1, "c":I
    move v2, v1

    if-ltz v2, :cond_2

    .line 724
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 725
    :cond_2
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v3, :cond_8

    .line 258
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-char v3, v3, v4

    move v1, v3

    .line 265
    .local v1, "prev":C
    :goto_0
    move v3, v1

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    move v3, v1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_5

    .line 267
    :cond_0
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->lineStartPos:I

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    if-ge v3, v4, :cond_2

    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->markPos:I

    if-gt v3, v4, :cond_2

    .line 269
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    iput v4, v3, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 270
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lgnu/text/LineBufferedReader;->lineNumber:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 272
    :cond_2
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->highestPos:I

    if-ge v3, v4, :cond_b

    const/4 v3, 0x1

    :goto_1
    move v2, v3

    .line 273
    .local v2, "revisited":Z
    move v3, v1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_c

    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->flags:I

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_4

    .line 276
    :cond_3
    :goto_2
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/text/LineBufferedReader;->lineStart(Z)V

    .line 278
    :cond_4
    move v3, v2

    if-nez v3, :cond_5

    .line 279
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lgnu/text/LineBufferedReader;->highestPos:I

    .line 282
    .end local v2    # "revisited":Z
    :cond_5
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v3, v4, :cond_10

    .line 284
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineBufferedReader;->buffer:[C

    if-nez v3, :cond_d

    .line 285
    move-object v3, v0

    const/16 v4, 0x2000

    new-array v4, v4, [C

    iput-object v4, v3, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 288
    :cond_6
    :goto_3
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    if-nez v3, :cond_7

    .line 290
    move v3, v1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_e

    .line 291
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lgnu/text/LineBufferedReader;->flags:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Lgnu/text/LineBufferedReader;->flags:I

    .line 295
    :cond_7
    :goto_4
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/text/LineBufferedReader;->buffer:[C

    array-length v4, v4

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lgnu/text/LineBufferedReader;->fill(I)I

    move-result v3

    move v2, v3

    .line 296
    .local v2, "readCount":I
    move v3, v2

    if-gtz v3, :cond_f

    .line 297
    const/4 v3, -0x1

    move v0, v3

    .line 324
    .end local v0    # "this":Lgnu/text/LineBufferedReader;
    .end local v2    # "readCount":I
    :goto_5
    return v0

    .line 259
    .end local v1    # "prev":C
    .restart local v0    # "this":Lgnu/text/LineBufferedReader;
    :cond_8
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->flags:I

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_9

    .line 260
    const/16 v3, 0xd

    move v1, v3

    .restart local v1    # "prev":C
    goto/16 :goto_0

    .line 261
    .end local v1    # "prev":C
    :cond_9
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v3, :cond_a

    .line 262
    const/16 v3, 0xa

    move v1, v3

    .restart local v1    # "prev":C
    goto/16 :goto_0

    .line 264
    .end local v1    # "prev":C
    :cond_a
    const/4 v3, 0x0

    move v1, v3

    .restart local v1    # "prev":C
    goto/16 :goto_0

    .line 272
    :cond_b
    const/4 v3, 0x0

    goto :goto_1

    .line 273
    .local v2, "revisited":Z
    :cond_c
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    aget-char v3, v3, v4

    const/16 v4, 0xd

    if-eq v3, v4, :cond_4

    goto :goto_2

    .line 286
    .end local v2    # "revisited":Z
    :cond_d
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->limit:I

    move-object v4, v0

    iget-object v4, v4, Lgnu/text/LineBufferedReader;->buffer:[C

    array-length v4, v4

    if-ne v3, v4, :cond_6

    .line 287
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/text/LineBufferedReader;->buffer:[C

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lgnu/text/LineBufferedReader;->reserve([CI)V

    goto :goto_3

    .line 293
    :cond_e
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lgnu/text/LineBufferedReader;->flags:I

    const/4 v5, -0x5

    and-int/lit8 v4, v4, -0x5

    iput v4, v3, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_4

    .line 298
    .local v2, "readCount":I
    :cond_f
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lgnu/text/LineBufferedReader;->limit:I

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Lgnu/text/LineBufferedReader;->limit:I

    .line 301
    .end local v2    # "readCount":I
    :cond_10
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lgnu/text/LineBufferedReader;->pos:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v3, v3, v4

    move v2, v3

    .line 302
    .local v2, "ch":I
    move v3, v2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_12

    .line 304
    move v3, v1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_13

    .line 310
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->lineStartPos:I

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_11

    .line 312
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lgnu/text/LineBufferedReader;->lineNumber:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 313
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lgnu/text/LineBufferedReader;->lineStartPos:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 315
    :cond_11
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 316
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    move v0, v3

    goto/16 :goto_5

    .line 319
    :cond_12
    move v3, v2

    const/16 v4, 0xd

    if-ne v3, v4, :cond_13

    .line 321
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 322
    const/16 v3, 0xa

    move v0, v3

    goto/16 :goto_5

    .line 324
    :cond_13
    move v3, v2

    move v0, v3

    goto/16 :goto_5
.end method

.method public read([CII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, p1

    .local v1, "cbuf":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v8, v0

    iget v8, v8, Lgnu/text/LineBufferedReader;->pos:I

    move-object v9, v0

    iget v9, v9, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v8, v9, :cond_1

    .line 332
    const/4 v8, 0x0

    move v4, v8

    .line 339
    .local v4, "ch":I
    :goto_0
    move v8, v3

    move v5, v8

    .line 340
    .local v5, "to_do":I
    :goto_1
    move v8, v5

    if-lez v8, :cond_c

    .line 342
    move-object v8, v0

    iget v8, v8, Lgnu/text/LineBufferedReader;->pos:I

    move-object v9, v0

    iget v9, v9, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v8, v9, :cond_0

    move v8, v4

    const/16 v9, 0xa

    if-eq v8, v9, :cond_0

    move v8, v4

    const/16 v9, 0xd

    if-ne v8, v9, :cond_8

    .line 346
    :cond_0
    move-object v8, v0

    iget v8, v8, Lgnu/text/LineBufferedReader;->pos:I

    move-object v9, v0

    iget v9, v9, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v8, v9, :cond_5

    move v8, v5

    move v9, v3

    if-ge v8, v9, :cond_5

    .line 347
    move v8, v3

    move v9, v5

    sub-int/2addr v8, v9

    move v0, v8

    .line 377
    .end local v0    # "this":Lgnu/text/LineBufferedReader;
    :goto_2
    return v0

    .line 333
    .end local v4    # "ch":I
    .end local v5    # "to_do":I
    .restart local v0    # "this":Lgnu/text/LineBufferedReader;
    :cond_1
    move-object v8, v0

    iget v8, v8, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v8, :cond_2

    .line 334
    move-object v8, v0

    iget-object v8, v8, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v9, v0

    iget v9, v9, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget-char v8, v8, v9

    move v4, v8

    .restart local v4    # "ch":I
    goto :goto_0

    .line 335
    .end local v4    # "ch":I
    :cond_2
    move-object v8, v0

    iget v8, v8, Lgnu/text/LineBufferedReader;->flags:I

    const/4 v9, 0x4

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_3

    move-object v8, v0

    iget v8, v8, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v8, :cond_4

    .line 336
    :cond_3
    const/16 v8, 0xa

    move v4, v8

    .restart local v4    # "ch":I
    goto :goto_0

    .line 338
    .end local v4    # "ch":I
    :cond_4
    const/4 v8, 0x0

    move v4, v8

    .restart local v4    # "ch":I
    goto :goto_0

    .line 348
    .restart local v5    # "to_do":I
    :cond_5
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/text/LineBufferedReader;->read()I

    move-result v8

    move v4, v8

    .line 349
    move v8, v4

    if-gez v8, :cond_7

    .line 351
    move v8, v3

    move v9, v5

    sub-int/2addr v8, v9

    move v3, v8

    .line 352
    move v8, v3

    if-gtz v8, :cond_6

    const/4 v8, -0x1

    :goto_3
    move v0, v8

    goto :goto_2

    :cond_6
    move v8, v3

    goto :goto_3

    .line 354
    :cond_7
    move-object v8, v1

    move v9, v2

    add-int/lit8 v2, v2, 0x1

    move v10, v4

    int-to-char v10, v10

    aput-char v10, v8, v9

    .line 355
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 359
    :cond_8
    move-object v8, v0

    iget v8, v8, Lgnu/text/LineBufferedReader;->pos:I

    move v6, v8

    .line 360
    .local v6, "p":I
    move-object v8, v0

    iget v8, v8, Lgnu/text/LineBufferedReader;->limit:I

    move v7, v8

    .line 361
    .local v7, "lim":I
    move v8, v5

    move v9, v7

    move v10, v6

    sub-int/2addr v9, v10

    if-ge v8, v9, :cond_9

    .line 362
    move v8, v6

    move v9, v5

    add-int/2addr v8, v9

    move v7, v8

    .line 363
    :cond_9
    :goto_4
    move v8, v6

    move v9, v7

    if-ge v8, v9, :cond_a

    .line 365
    move-object v8, v0

    iget-object v8, v8, Lgnu/text/LineBufferedReader;->buffer:[C

    move v9, v6

    aget-char v8, v8, v9

    move v4, v8

    .line 368
    move v8, v4

    const/16 v9, 0xa

    if-eq v8, v9, :cond_a

    move v8, v4

    const/16 v9, 0xd

    if-ne v8, v9, :cond_b

    .line 369
    .line 373
    :cond_a
    move v8, v5

    move v9, v6

    move-object v10, v0

    iget v10, v10, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v5, v8

    .line 374
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lgnu/text/LineBufferedReader;->pos:I

    .line 375
    goto/16 :goto_1

    .line 370
    :cond_b
    move-object v8, v1

    move v9, v2

    add-int/lit8 v2, v2, 0x1

    move v10, v4

    int-to-char v10, v10

    aput-char v10, v8, v9

    .line 371
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 377
    .end local v6    # "p":I
    .end local v7    # "lim":I
    :cond_c
    move v8, v3

    move v0, v8

    goto/16 :goto_2
.end method

.method public readLine()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    move v1, v4

    .line 534
    .local v1, "ch":I
    move v4, v1

    if-gez v4, :cond_0

    .line 535
    const/4 v4, 0x0

    move-object v0, v4

    .line 561
    .end local v0    # "this":Lgnu/text/LineBufferedReader;
    :goto_0
    return-object v0

    .line 536
    .restart local v0    # "this":Lgnu/text/LineBufferedReader;
    :cond_0
    move v4, v1

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    move v4, v1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 537
    :cond_1
    const-string/jumbo v4, ""

    move-object v0, v4

    goto :goto_0

    .line 538
    :cond_2
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .line 539
    .local v2, "start":I
    :cond_3
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v4, v5, :cond_5

    .line 541
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lgnu/text/LineBufferedReader;->pos:I

    move-object v10, v5

    move v11, v6

    move v5, v11

    move-object v6, v10

    move v7, v11

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v4, v4, v5

    move v1, v4

    .line 542
    move v4, v1

    const/16 v5, 0xd

    if-eq v4, v5, :cond_4

    move v4, v1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    .line 544
    :cond_4
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    .line 545
    .local v3, "end":I
    move v4, v1

    const/16 v5, 0xa

    if-eq v4, v5, :cond_7

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v4

    if-nez v4, :cond_7

    .line 547
    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v4, v5, :cond_6

    .line 549
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lgnu/text/LineBufferedReader;->pos:I

    .line 550
    .line 558
    .end local v3    # "end":I
    :cond_5
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v3, v4

    .line 559
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lgnu/text/LineBufferedReader;->buffer:[C

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lgnu/text/LineBufferedReader;->pos:I

    move v8, v2

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 560
    move-object v4, v0

    move-object v5, v3

    const/16 v6, 0x49

    invoke-virtual {v4, v5, v6}, Lgnu/text/LineBufferedReader;->readLine(Ljava/lang/StringBuffer;C)V

    .line 561
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 552
    .local v3, "end":I
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0xa

    if-ne v4, v5, :cond_7

    .line 553
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/text/LineBufferedReader;->pos:I

    .line 555
    :cond_7
    new-instance v4, Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lgnu/text/LineBufferedReader;->buffer:[C

    move v7, v2

    move v8, v3

    move v9, v2

    sub-int/2addr v8, v9

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v4

    goto/16 :goto_0
.end method

.method public readLine(Ljava/lang/StringBuffer;C)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move v2, p2

    .local v2, "mode":C
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->read()I

    move-result v5

    move v3, v5

    .line 492
    .local v3, "ch":I
    move v5, v3

    if-gez v5, :cond_0

    .line 493
    .line 524
    :goto_1
    return-void

    .line 494
    :cond_0
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v10, v5

    move v11, v6

    move v5, v11

    move-object v6, v10

    move v7, v11

    iput v7, v6, Lgnu/text/LineBufferedReader;->pos:I

    move v4, v5

    .line 495
    .local v4, "start":I
    :cond_1
    move-object v5, v0

    iget v5, v5, Lgnu/text/LineBufferedReader;->pos:I

    move-object v6, v0

    iget v6, v6, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v5, v6, :cond_9

    .line 497
    move-object v5, v0

    iget-object v5, v5, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lgnu/text/LineBufferedReader;->pos:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v5, v5, v6

    move v3, v5

    .line 498
    move v5, v3

    const/16 v6, 0xd

    if-eq v5, v6, :cond_2

    move v5, v3

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 500
    :cond_2
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/text/LineBufferedReader;->buffer:[C

    move v7, v4

    move-object v8, v0

    iget v8, v8, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v9, v4

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 501
    move v5, v2

    const/16 v6, 0x50

    if-ne v5, v6, :cond_3

    .line 503
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lgnu/text/LineBufferedReader;->pos:I

    .line 504
    goto :goto_1

    .line 506
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v3

    const/16 v6, 0xa

    if-ne v5, v6, :cond_6

    .line 508
    :cond_4
    move v5, v2

    const/16 v6, 0x49

    if-eq v5, v6, :cond_5

    .line 509
    move-object v5, v1

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 524
    :cond_5
    :goto_2
    goto :goto_1

    .line 513
    :cond_6
    move v5, v2

    const/16 v6, 0x49

    if-eq v5, v6, :cond_7

    .line 514
    move-object v5, v1

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 515
    :cond_7
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->read()I

    move-result v5

    move v3, v5

    .line 516
    move v5, v3

    const/16 v6, 0xa

    if-ne v5, v6, :cond_8

    .line 518
    move v5, v2

    const/16 v6, 0x49

    if-eq v5, v6, :cond_5

    .line 519
    move-object v5, v1

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    goto :goto_2

    .line 521
    :cond_8
    move v5, v3

    if-ltz v5, :cond_5

    .line 522
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->unread_quick()V

    goto :goto_2

    .line 527
    :cond_9
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/text/LineBufferedReader;->buffer:[C

    move v7, v4

    move-object v8, v0

    iget v8, v8, Lgnu/text/LineBufferedReader;->pos:I

    move v9, v4

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 528
    goto/16 :goto_0
.end method

.method public ready()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, v0

    iget v1, v1, Lgnu/text/LineBufferedReader;->pos:I

    move-object v2, v0

    iget v2, v2, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->ready()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/text/LineBufferedReader;
    return v0

    .restart local v0    # "this":Lgnu/text/LineBufferedReader;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, v0

    iget v1, v1, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-gtz v1, :cond_0

    .line 473
    new-instance v1, Ljava/io/IOException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "mark invalid"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/text/LineBufferedReader;->pos:I

    move-object v2, v0

    iget v2, v2, Lgnu/text/LineBufferedReader;->highestPos:I

    if-le v1, v2, :cond_1

    .line 475
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/text/LineBufferedReader;->pos:I

    iput v2, v1, Lgnu/text/LineBufferedReader;->highestPos:I

    .line 476
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/text/LineBufferedReader;->markPos:I

    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 477
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 478
    return-void
.end method

.method public setBuffer([C)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, p1

    .local v1, "buffer":[C
    move-object v2, v1

    if-nez v2, :cond_1

    .line 188
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/LineBufferedReader;->buffer:[C

    if-eqz v2, :cond_0

    .line 190
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/LineBufferedReader;->buffer:[C

    array-length v2, v2

    new-array v2, v2, [C

    move-object v1, v2

    .line 191
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/LineBufferedReader;->buffer:[C

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lgnu/text/LineBufferedReader;->buffer:[C

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 194
    :cond_0
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lgnu/text/LineBufferedReader;->flags:I

    const/4 v4, -0x3

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Lgnu/text/LineBufferedReader;->flags:I

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_1
    move-object v2, v0

    iget v2, v2, Lgnu/text/LineBufferedReader;->limit:I

    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v2, v3

    move-object v3, v1

    array-length v3, v3

    if-le v2, v3, :cond_2

    .line 199
    new-instance v2, Ljava/io/IOException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "setBuffer - too short"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_2
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lgnu/text/LineBufferedReader;->flags:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lgnu/text/LineBufferedReader;->flags:I

    .line 201
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lgnu/text/LineBufferedReader;->reserve([CI)V

    goto :goto_0
.end method

.method public final setConvertCR(Z)V
    .locals 6

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move v1, p1

    .local v1, "convertCR":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 102
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/text/LineBufferedReader;->flags:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lgnu/text/LineBufferedReader;->flags:I

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/text/LineBufferedReader;->flags:I

    const/4 v4, -0x2

    and-int/lit8 v3, v3, -0x2

    iput v3, v2, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_0
.end method

.method public setKeepFullLines(Z)V
    .locals 6

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move v1, p1

    .local v1, "keep":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 91
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/text/LineBufferedReader;->flags:I

    const/16 v4, -0x9

    and-int/lit8 v3, v3, -0x9

    iput v3, v2, Lgnu/text/LineBufferedReader;->flags:I

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/text/LineBufferedReader;->flags:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_0
.end method

.method public setLineNumber(I)V
    .locals 7

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move v1, p1

    .local v1, "lineNumber":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lgnu/text/LineBufferedReader;->lineNumber:I

    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 422
    return-void
.end method

.method public setName(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/text/LineBufferedReader;->setPath(Lgnu/text/Path;)V

    .line 398
    return-void
.end method

.method public setPath(Lgnu/text/Path;)V
    .locals 4

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, p1

    .local v1, "path":Lgnu/text/Path;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    .line 388
    return-void
.end method

.method public skip(I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move v1, p1

    .local v1, "n":I
    move v6, v1

    if-gez v6, :cond_1

    .line 569
    move v6, v1

    neg-int v6, v6

    move v2, v6

    .line 570
    .local v2, "to_do":I
    :goto_0
    move v6, v2

    if-lez v6, :cond_0

    move-object v6, v0

    iget v6, v6, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v6, :cond_0

    .line 571
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->unread()V

    .line 570
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 572
    :cond_0
    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    move v0, v6

    .line 615
    .end local v0    # "this":Lgnu/text/LineBufferedReader;
    :goto_1
    return v0

    .line 577
    .end local v2    # "to_do":I
    .restart local v0    # "this":Lgnu/text/LineBufferedReader;
    :cond_1
    move v6, v1

    move v2, v6

    .line 579
    .restart local v2    # "to_do":I
    move-object v6, v0

    iget v6, v6, Lgnu/text/LineBufferedReader;->pos:I

    move-object v7, v0

    iget v7, v7, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v6, v7, :cond_3

    .line 580
    const/4 v6, 0x0

    move v3, v6

    .line 587
    .local v3, "ch":I
    :goto_2
    move v6, v2

    if-lez v6, :cond_c

    .line 589
    move v6, v3

    const/16 v7, 0xa

    if-eq v6, v7, :cond_2

    move v6, v3

    const/16 v7, 0xd

    if-eq v6, v7, :cond_2

    move-object v6, v0

    iget v6, v6, Lgnu/text/LineBufferedReader;->pos:I

    move-object v7, v0

    iget v7, v7, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v6, v7, :cond_8

    .line 591
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->read()I

    move-result v6

    move v3, v6

    .line 592
    move v6, v3

    if-gez v6, :cond_7

    .line 593
    move v6, v1

    move v7, v2

    sub-int/2addr v6, v7

    move v0, v6

    goto :goto_1

    .line 581
    .end local v3    # "ch":I
    :cond_3
    move-object v6, v0

    iget v6, v6, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v6, :cond_4

    .line 582
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v7, v0

    iget v7, v7, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-char v6, v6, v7

    move v3, v6

    .restart local v3    # "ch":I
    goto :goto_2

    .line 583
    .end local v3    # "ch":I
    :cond_4
    move-object v6, v0

    iget v6, v6, Lgnu/text/LineBufferedReader;->flags:I

    const/4 v7, 0x4

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_5

    move-object v6, v0

    iget v6, v6, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v6, :cond_6

    .line 584
    :cond_5
    const/16 v6, 0xa

    move v3, v6

    .restart local v3    # "ch":I
    goto :goto_2

    .line 586
    .end local v3    # "ch":I
    :cond_6
    const/4 v6, 0x0

    move v3, v6

    .restart local v3    # "ch":I
    goto :goto_2

    .line 594
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 598
    :cond_8
    move-object v6, v0

    iget v6, v6, Lgnu/text/LineBufferedReader;->pos:I

    move v4, v6

    .line 599
    .local v4, "p":I
    move-object v6, v0

    iget v6, v6, Lgnu/text/LineBufferedReader;->limit:I

    move v5, v6

    .line 600
    .local v5, "lim":I
    move v6, v2

    move v7, v5

    move v8, v4

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_9

    .line 601
    move v6, v4

    move v7, v2

    add-int/2addr v6, v7

    move v5, v6

    .line 602
    :cond_9
    :goto_3
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_a

    .line 604
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/LineBufferedReader;->buffer:[C

    move v7, v4

    aget-char v6, v6, v7

    move v3, v6

    .line 607
    move v6, v3

    const/16 v7, 0xa

    if-eq v6, v7, :cond_a

    move v6, v3

    const/16 v7, 0xd

    if-ne v6, v7, :cond_b

    .line 608
    .line 611
    :cond_a
    move v6, v2

    move v7, v4

    move-object v8, v0

    iget v8, v8, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    move v2, v6

    .line 612
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lgnu/text/LineBufferedReader;->pos:I

    .line 613
    goto :goto_2

    .line 609
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 615
    .end local v4    # "p":I
    .end local v5    # "lim":I
    :cond_c
    move v6, v1

    move v0, v6

    goto/16 :goto_1
.end method

.method public skip()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    .line 633
    return-void
.end method

.method public skipRestOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I

    move-result v2

    move v1, v2

    .line 656
    .local v1, "c":I
    move v2, v1

    if-gez v2, :cond_0

    .line 657
    .line 668
    :goto_1
    return-void

    .line 658
    :cond_0
    move v2, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 660
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I

    move-result v2

    move v1, v2

    .line 661
    move v2, v1

    if-ltz v2, :cond_1

    move v2, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 662
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->unread()V

    .line 668
    :cond_1
    :goto_2
    goto :goto_1

    .line 665
    :cond_2
    move v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 666
    goto :goto_2

    .line 667
    :cond_3
    goto :goto_0
.end method

.method public final skip_quick()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 628
    return-void
.end method

.method public unread()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    if-nez v3, :cond_0

    .line 675
    new-instance v3, Ljava/io/IOException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "unread too much"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 676
    :cond_0
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lgnu/text/LineBufferedReader;->pos:I

    .line 677
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v3, v3, v4

    move v1, v3

    .line 678
    .local v1, "ch":C
    move v3, v1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    move v3, v1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_6

    .line 680
    :cond_1
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v3, :cond_2

    move v3, v1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-char v3, v3, v4

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    .line 681
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lgnu/text/LineBufferedReader;->pos:I

    .line 682
    :cond_2
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    move-object v4, v0

    iget v4, v4, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ge v3, v4, :cond_6

    .line 684
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/text/LineBufferedReader;->lineNumber:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 686
    move-object v3, v0

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    move v2, v3

    .local v2, "i":I
    :cond_3
    move v3, v2

    if-lez v3, :cond_5

    .line 688
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    aget-char v3, v3, v4

    move v1, v3

    .line 689
    move v3, v1

    const/16 v4, 0xd

    if-eq v3, v4, :cond_4

    move v3, v1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 691
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 695
    :cond_5
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 698
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method public unread_quick()V
    .locals 5

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineBufferedReader;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 706
    return-void
.end method
