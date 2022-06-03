.class final Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;
.super Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.source "Downsampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move v3, p3

    .local v3, "x2":I
    move/from16 v4, p4

    .local v4, "x3":I
    move-object/from16 v5, p5

    .local v5, "x4":Lcom/bumptech/glide/load/DecodeFormat;
    move-object v6, v0

    move-object v7, v1

    check-cast v7, Ljava/io/InputStream;

    move-object v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;
    const-string/jumbo v1, "AT_LEAST.com.bumptech.glide.load.data.bitmap"

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;
    return-object v0
.end method

.method protected getSampleSize(IIII)I
    .locals 8

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;
    move v1, p1

    .local v1, "inWidth":I
    move v2, p2

    .local v2, "inHeight":I
    move v3, p3

    .local v3, "outWidth":I
    move v4, p4

    .local v4, "outHeight":I
    move v5, v2

    move v6, v4

    div-int/2addr v5, v6

    move v6, v1

    move v7, v3

    div-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;
    return v0
.end method
