.class final Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;
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
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;
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
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;
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

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;
    const-string/jumbo v1, "AT_MOST.com.bumptech.glide.load.data.bitmap"

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;
    return-object v0
.end method

.method protected getSampleSize(IIII)I
    .locals 11

    .prologue
    .line 57
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;
    move v2, p1

    .local v2, "inWidth":I
    move v3, p2

    .local v3, "inHeight":I
    move v4, p3

    .local v4, "outWidth":I
    move v5, p4

    .local v5, "outHeight":I
    move v8, v3

    int-to-float v8, v8

    move v9, v5

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v9, v2

    int-to-float v9, v9

    move v10, v4

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    move v6, v8

    .line 59
    .local v6, "maxIntegerFactor":I
    const/4 v8, 0x1

    move v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v7, v8

    .line 60
    .local v7, "lesserOrEqualSampleSize":I
    move v8, v7

    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_0
    shl-int/2addr v8, v9

    move v1, v8

    .end local v1    # "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;
    return v1

    .restart local v1    # "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method
