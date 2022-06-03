.class Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RandomAccessReader"
.end annotation


# instance fields
.field private final data:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>([B)V
    .locals 4

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;
    move-object v1, p1

    .local v1, "data":[B
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 304
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->data:Ljava/nio/ByteBuffer;

    .line 305
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->data:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 306
    return-void
.end method


# virtual methods
.method public getInt16(I)S
    .locals 4

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->data:Ljava/nio/ByteBuffer;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;
    return v0
.end method

.method public getInt32(I)I
    .locals 4

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->data:Ljava/nio/ByteBuffer;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;
    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;
    return v0
.end method

.method public order(Ljava/nio/ByteOrder;)V
    .locals 4

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;
    move-object v1, p1

    .local v1, "byteOrder":Ljava/nio/ByteOrder;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->data:Ljava/nio/ByteBuffer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 310
    return-void
.end method
