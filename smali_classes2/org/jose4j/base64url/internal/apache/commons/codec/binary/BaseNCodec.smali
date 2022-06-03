.class public abstract Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
.super Ljava/lang/Object;
.source "BaseNCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field static final EOF:I = -0x1

.field protected static final MASK_8BITS:I = 0xff

.field public static final MIME_CHUNK_SIZE:I = 0x4c

.field protected static final PAD_DEFAULT:B = 0x3dt

.field public static final PEM_CHUNK_SIZE:I = 0x40


# instance fields
.field protected final PAD:B

.field private final chunkSeparatorLength:I

.field private final encodedBlockSize:I

.field protected final lineLength:I

.field private final unencodedBlockSize:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 9

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    move v1, p1

    .local v1, "unencodedBlockSize":I
    move v2, p2

    .local v2, "encodedBlockSize":I
    move v3, p3

    .local v3, "lineLength":I
    move v4, p4

    .local v4, "chunkSeparatorLength":I
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 165
    move-object v6, v0

    const/16 v7, 0x3d

    iput-byte v7, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->PAD:B

    .line 195
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    .line 196
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    .line 197
    move v6, v3

    if-lez v6, :cond_0

    move v6, v4

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v5, v6

    .line 198
    .local v5, "useChunking":Z
    move-object v6, v0

    move v7, v5

    if-eqz v7, :cond_1

    move v7, v3

    move v8, v2

    div-int/2addr v7, v8

    move v8, v2

    mul-int/2addr v7, v8

    :goto_1
    iput v7, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    .line 199
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    .line 200
    return-void

    .line 197
    .end local v5    # "useChunking":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 198
    .restart local v5    # "useChunking":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method protected static isWhiteSpace(B)Z
    .locals 2

    .prologue
    .line 298
    move v0, p0

    .local v0, "byteToCheck":B
    move v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 305
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "byteToCheck":B
    :goto_0
    return v0

    .line 303
    .restart local v0    # "byteToCheck":B
    :sswitch_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 298
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private resizeBuffer(Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .locals 8

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    move-object v1, p1

    .local v1, "context":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;
    move-object v3, v1

    iget-object v3, v3, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-nez v3, :cond_0

    .line 237
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->getDefaultBufferSize()I

    move-result v4

    new-array v4, v4, [B

    iput-object v4, v3, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 238
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 239
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    .line 245
    :goto_0
    move-object v3, v1

    iget-object v3, v3, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    return-object v0

    .line 241
    .restart local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v3, v3

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    move-object v2, v3

    .line 242
    .local v2, "b":[B
    move-object v3, v1

    iget-object v3, v3, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v1

    iget-object v7, v7, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    goto :goto_0
.end method


# virtual methods
.method available(Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 4

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    move-object v1, p1

    .local v1, "context":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;
    move-object v2, v1

    iget-object v2, v2, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v2, :cond_0

    move-object v2, v1

    iget v2, v2, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v3, v1

    iget v3, v3, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v2, v3

    :goto_0
    move v0, v2

    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    return v0

    .restart local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected containsAlphabetOrPad([B)Z
    .locals 8

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    move-object v1, p1

    .local v1, "arrayOctet":[B
    move-object v6, v1

    if-nez v6, :cond_0

    .line 442
    const/4 v6, 0x0

    move v0, v6

    .line 449
    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    :goto_0
    return v0

    .line 444
    .restart local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    :cond_0
    move-object v6, v1

    move-object v2, v6

    .local v2, "arr$":[B
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .local v3, "len$":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i$":I
    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    move-object v6, v2

    move v7, v4

    aget-byte v6, v6, v7

    move v5, v6

    .line 445
    .local v5, "element":B
    const/16 v6, 0x3d

    move v7, v5

    if-eq v6, v7, :cond_1

    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 446
    :cond_1
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 444
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 449
    .end local v5    # "element":B
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method abstract decode([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    move-object v1, p1

    .local v1, "pArray":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lorg/jose4j/lang/StringUtil;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    return-object v0
.end method

.method public decode([B)[B
    .locals 10

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    move-object v1, p1

    .local v1, "pArray":[B
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    array-length v4, v4

    if-nez v4, :cond_1

    .line 353
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .line 360
    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    :goto_0
    return-object v0

    .line 355
    .restart local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    :cond_1
    new-instance v4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    move-object v2, v4

    .line 356
    .local v2, "context":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    array-length v7, v7

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->decode([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 357
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->decode([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 358
    move-object v4, v2

    iget v4, v4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    new-array v4, v4, [B

    move-object v3, v4

    .line 359
    .local v3, "result":[B
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v3

    array-length v7, v7

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->readResults([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v4

    .line 360
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method abstract encode([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public encode([B)[B
    .locals 10

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    move-object v1, p1

    .local v1, "pArray":[B
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    array-length v4, v4

    if-nez v4, :cond_1

    .line 372
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .line 379
    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    :goto_0
    return-object v0

    .line 374
    .restart local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    :cond_1
    new-instance v4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    move-object v2, v4

    .line 375
    .local v2, "context":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    array-length v7, v7

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 376
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 377
    move-object v4, v2

    iget v4, v4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move-object v5, v2

    iget v5, v5, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v4, v5

    new-array v4, v4, [B

    move-object v3, v4

    .line 378
    .local v3, "buf":[B
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v3

    array-length v7, v7

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->readResults([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v4

    .line 379
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public encodeAsString([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    move-object v1, p1

    .local v1, "pArray":[B
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/jose4j/lang/StringUtil;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    return-object v0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    move-object v1, p1

    .local v1, "pArray":[B
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/jose4j/lang/StringUtil;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    return-object v0
.end method

.method protected ensureBufferSize(ILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .locals 6

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    move v1, p1

    .local v1, "size":I
    move-object v2, p2

    .local v2, "context":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;
    move-object v3, v2

    iget-object v3, v3, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v3, v3

    move-object v4, v2

    iget v4, v4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    move v5, v1

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 256
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->resizeBuffer(Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v3

    move-object v0, v3

    .line 258
    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    :cond_1
    move-object v3, v2

    iget-object v3, v3, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    move-object v0, v3

    goto :goto_0
.end method

.method protected getDefaultBufferSize()I
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    const/16 v1, 0x2000

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    return v0
.end method

.method public getEncodedLength([B)J
    .locals 10

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    move-object v1, p1

    .local v1, "pArray":[B
    move-object v4, v1

    array-length v4, v4

    move-object v5, v0

    iget v5, v5, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    add-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v5, v0

    iget v5, v5, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    move-object v6, v0

    iget v6, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    move-wide v2, v4

    .line 464
    .local v2, "len":J
    move-object v4, v0

    iget v4, v4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez v4, :cond_0

    .line 466
    move-wide v4, v2

    move-wide v6, v2

    move-object v8, v0

    iget v8, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    move-object v8, v0

    iget v8, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    move-object v8, v0

    iget v8, v8, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    int-to-long v8, v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 468
    :cond_0
    move-wide v4, v2

    move-wide v0, v4

    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    return-wide v0
.end method

.method hasData(Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)Z
    .locals 3

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    move-object v1, p1

    .local v1, "context":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;
    move-object v2, v1

    iget-object v2, v2, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    return v0

    .restart local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected abstract isInAlphabet(B)Z
.end method

.method public isInAlphabet(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    move-object v1, p1

    .local v1, "basen":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lorg/jose4j/lang/StringUtil;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->isInAlphabet([BZ)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    return v0
.end method

.method public isInAlphabet([BZ)Z
    .locals 7

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    move-object v1, p1

    .local v1, "arrayOctet":[B
    move v2, p2

    .local v2, "allowWSPad":Z
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 410
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v1

    move v5, v3

    aget-byte v4, v4, v5

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_1

    move-object v4, v1

    move v5, v3

    aget-byte v4, v4, v5

    invoke-static {v4}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->isWhiteSpace(B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 412
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    .line 415
    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    :goto_1
    return v0

    .line 409
    .restart local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 415
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1
.end method

.method readResults([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 12

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "bPos":I
    move v3, p3

    .local v3, "bAvail":I
    move-object/from16 v4, p4

    .local v4, "context":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;
    move-object v6, v4

    iget-object v6, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v6, :cond_1

    .line 279
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->available(Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v6

    move v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v5, v6

    .line 280
    .local v5, "len":I
    move-object v6, v4

    iget-object v6, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    move-object v7, v4

    iget v7, v7, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    move-object v8, v1

    move v9, v2

    move v10, v5

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    move-object v6, v4

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    move v8, v5

    add-int/2addr v7, v8

    iput v7, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    .line 282
    move-object v6, v4

    iget v6, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    move-object v7, v4

    iget v7, v7, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    if-lt v6, v7, :cond_0

    .line 283
    move-object v6, v4

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 285
    :cond_0
    move v6, v5

    move v0, v6

    .line 287
    .end local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    .end local v5    # "len":I
    :goto_0
    return v0

    .restart local v0    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
    :cond_1
    move-object v6, v4

    iget-boolean v6, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v6, :cond_2

    const/4 v6, -0x1

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method
