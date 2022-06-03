.class public abstract Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.super Ljava/lang/Object;
.source "Downsampler.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field public static final AT_MOST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private static final MARK_POSITION:I = 0x500000

.field public static final NONE:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private static final OPTIONS_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Downsampler"

.field private static final TYPES_THAT_USE_POOL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL:Ljava/util/Set;

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    .line 38
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 54
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_MOST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 72
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$3;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$3;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->NONE:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "is":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    move-object v1, p1

    .local v1, "bufferedStream":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    move-object v2, p2

    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    move-object v5, v2

    iget-boolean v5, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v5, :cond_1

    .line 321
    move-object v5, v0

    const/high16 v6, 0x500000

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->mark(I)V

    .line 329
    :goto_0
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v2

    invoke-static {v5, v6, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v3, v5

    .line 332
    .local v3, "result":Landroid/graphics/Bitmap;
    move-object v5, v2

    :try_start_0
    iget-boolean v5, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v5, :cond_0

    .line 333
    move-object v5, v0

    invoke-virtual {v5}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .line 342
    :cond_0
    :goto_1
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "is":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    return-object v0

    .line 326
    .end local v3    # "result":Landroid/graphics/Bitmap;
    .restart local v0    # "is":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fixMarkLimit()V

    goto :goto_0

    .line 335
    .restart local v3    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 336
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v5, "Downsampler"

    const/4 v6, 0x6

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 337
    const-string/jumbo v5, "Downsampler"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception loading inDecodeBounds="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    iget-boolean v7, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " sample="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_1
.end method

.method private downsampleWithSize(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .locals 17

    .prologue
    .line 211
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    move-object/from16 v1, p1

    .local v1, "is":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    move-object/from16 v2, p2

    .local v2, "bufferedStream":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    move-object/from16 v3, p3

    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v4, p4

    .local v4, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move/from16 v5, p5

    .local v5, "inWidth":I
    move/from16 v6, p6

    .local v6, "inHeight":I
    move/from16 v7, p7

    .local v7, "sampleSize":I
    move-object/from16 v8, p8

    .local v8, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    move-object v12, v1

    move-object v13, v8

    invoke-static {v12, v13}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap$Config;

    move-result-object v12

    move-object v9, v12

    .line 212
    .local v9, "config":Landroid/graphics/Bitmap$Config;
    move-object v12, v3

    move v13, v7

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 213
    move-object v12, v3

    move-object v13, v9

    iput-object v13, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 214
    move-object v12, v3

    iget v12, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    const/16 v12, 0x13

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v12, v13, :cond_1

    :cond_0
    move-object v12, v1

    invoke-static {v12}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->shouldUsePool(Ljava/io/InputStream;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 215
    move v12, v5

    int-to-double v12, v12

    move v14, v7

    int-to-double v14, v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    move v10, v12

    .line 216
    .local v10, "targetWidth":I
    move v12, v6

    int-to-double v12, v12

    move v14, v7

    int-to-double v14, v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    move v11, v12

    .line 218
    .local v11, "targetHeight":I
    move-object v12, v3

    move-object v13, v4

    move v14, v10

    move v15, v11

    move-object/from16 v16, v9

    invoke-interface/range {v13 .. v16}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->setInBitmap(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V

    .line 220
    .end local v10    # "targetWidth":I
    .end local v11    # "targetHeight":I
    :cond_1
    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    invoke-static {v12, v13, v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object v0, v12

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    return-object v0
.end method

.method private static getConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap$Config;
    .locals 10

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "is":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "format":Lcom/bumptech/glide/load/DecodeFormat;
    move-object v6, v1

    sget-object v7, Lcom/bumptech/glide/load/DecodeFormat;->ALWAYS_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq v6, v7, :cond_0

    move-object v6, v1

    sget-object v7, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq v6, v7, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_1

    .line 256
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v0, v6

    .line 278
    .end local v0    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 259
    .restart local v0    # "is":Ljava/io/InputStream;
    :cond_1
    const/4 v6, 0x0

    move v2, v6

    .line 261
    .local v2, "hasAlpha":Z
    move-object v6, v0

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Ljava/io/InputStream;->mark(I)V

    .line 263
    :try_start_0
    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->hasAlpha()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    move v2, v6

    .line 270
    move-object v6, v0

    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    .line 278
    :goto_1
    move v6, v2

    if-eqz v6, :cond_6

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2
    move-object v0, v6

    goto :goto_0

    .line 271
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 272
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v6, "Downsampler"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 273
    const-string/jumbo v6, "Downsampler"

    const-string/jumbo v7, "Cannot reset the input stream"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 276
    :cond_2
    goto :goto_1

    .line 264
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 265
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v6, "Downsampler"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 266
    const-string/jumbo v6, "Downsampler"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cannot determine whether the image has alpha or not from header for format "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 270
    :cond_3
    move-object v6, v0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 275
    goto :goto_1

    .line 271
    :catch_2
    move-exception v6

    move-object v3, v6

    .line 272
    const-string/jumbo v6, "Downsampler"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 273
    const-string/jumbo v6, "Downsampler"

    const-string/jumbo v7, "Cannot reset the input stream"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 276
    :cond_4
    goto :goto_1

    .line 269
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    move-object v4, v6

    .line 270
    move-object v6, v0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 275
    :cond_5
    :goto_3
    move-object v6, v4

    throw v6

    .line 271
    :catch_3
    move-exception v6

    move-object v5, v6

    .line 272
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v6, "Downsampler"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 273
    const-string/jumbo v6, "Downsampler"

    const-string/jumbo v7, "Cannot reset the input stream"

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_3

    .line 278
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_2
.end method

.method private static declared-synchronized getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 355
    const-class v5, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    monitor-enter v5

    :try_start_0
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 356
    :try_start_1
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/BitmapFactory$Options;

    move-object v0, v3

    .line 357
    .local v0, "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    move-object v3, v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    move-object v3, v0

    if-nez v3, :cond_0

    .line 359
    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v0, v3

    .line 360
    move-object v3, v0

    invoke-static {v3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 363
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    monitor-exit v5

    return-object v0

    .line 357
    .restart local v0    # "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v2

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 355
    :catchall_1
    move-exception v0

    monitor-exit v5

    .end local v0    # "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    throw v0
.end method

.method private getRoundedSampleSize(IIIII)I
    .locals 15

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    move/from16 v1, p1

    .local v1, "degreesToRotate":I
    move/from16 v2, p2

    .local v2, "inWidth":I
    move/from16 v3, p3

    .local v3, "inHeight":I
    move/from16 v4, p4

    .local v4, "outWidth":I
    move/from16 v5, p5

    .local v5, "outHeight":I
    move v10, v5

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_1

    move v10, v3

    :goto_0
    move v6, v10

    .line 185
    .local v6, "targetHeight":I
    move v10, v4

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_2

    move v10, v2

    :goto_1
    move v7, v10

    .line 188
    .local v7, "targetWidth":I
    move v10, v1

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_0

    move v10, v1

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_3

    .line 192
    :cond_0
    move-object v10, v0

    move v11, v3

    move v12, v2

    move v13, v7

    move v14, v6

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getSampleSize(IIII)I

    move-result v10

    move v8, v10

    .line 201
    .local v8, "exactSampleSize":I
    :goto_2
    move v10, v8

    if-nez v10, :cond_4

    const/4 v10, 0x0

    :goto_3
    move v9, v10

    .line 204
    .local v9, "powerOfTwoSampleSize":I
    const/4 v10, 0x1

    move v11, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v0, v10

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    return v0

    .line 184
    .end local v6    # "targetHeight":I
    .end local v7    # "targetWidth":I
    .end local v8    # "exactSampleSize":I
    .end local v9    # "powerOfTwoSampleSize":I
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    :cond_1
    move v10, v5

    goto :goto_0

    .line 185
    .restart local v6    # "targetHeight":I
    :cond_2
    move v10, v4

    goto :goto_1

    .line 194
    .restart local v7    # "targetWidth":I
    :cond_3
    move-object v10, v0

    move v11, v2

    move v12, v3

    move v13, v7

    move v14, v6

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getSampleSize(IIII)I

    move-result v10

    move v8, v10

    .restart local v8    # "exactSampleSize":I
    goto :goto_2

    .line 201
    :cond_4
    move v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v10

    goto :goto_3
.end method

.method private static releaseOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 6

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    move-object v3, v0

    invoke-static {v3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 368
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 369
    :try_start_0
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    move-object v4, v0

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 370
    move-object v3, v1

    monitor-exit v3

    .line 371
    return-void

    .line 370
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

.method private static resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 376
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 377
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 378
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 379
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 380
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 381
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 382
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 383
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 385
    const/16 v1, 0xb

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_0

    .line 386
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 387
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 389
    :cond_0
    return-void
.end method

.method private static setInBitmap(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    move-object v1, p1

    .local v1, "recycled":Landroid/graphics/Bitmap;
    const/16 v2, 0xb

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v3, :cond_0

    .line 348
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 350
    :cond_0
    return-void
.end method

.method private static shouldUsePool(Ljava/io/InputStream;)Z
    .locals 10

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "is":Ljava/io/InputStream;
    const/16 v6, 0x13

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v6, v7, :cond_0

    .line 226
    const/4 v6, 0x1

    move v0, v6

    .line 248
    .end local v0    # "is":Ljava/io/InputStream;
    :goto_0
    return v0

    .line 229
    .restart local v0    # "is":Ljava/io/InputStream;
    :cond_0
    move-object v6, v0

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Ljava/io/InputStream;->mark(I)V

    .line 231
    :try_start_0
    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v6

    move-object v1, v6

    .line 234
    .local v1, "type":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    sget-object v6, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL:Ljava/util/Set;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    move v2, v6

    .line 241
    move-object v6, v0

    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    :cond_1
    :goto_1
    move v6, v2

    move v0, v6

    goto :goto_0

    .line 242
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 243
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v6, "Downsampler"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 244
    const-string/jumbo v6, "Downsampler"

    const-string/jumbo v7, "Cannot reset the input stream"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_1

    .line 235
    .end local v1    # "type":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 236
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v6, "Downsampler"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 237
    const-string/jumbo v6, "Downsampler"

    const-string/jumbo v7, "Cannot determine the image type from header"

    move-object v8, v1

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 241
    :cond_2
    move-object v6, v0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 246
    .line 248
    :goto_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 242
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 243
    const-string/jumbo v6, "Downsampler"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 244
    const-string/jumbo v6, "Downsampler"

    const-string/jumbo v7, "Cannot reset the input stream"

    move-object v8, v1

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 247
    :cond_3
    goto :goto_2

    .line 240
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    move-object v4, v6

    .line 241
    move-object v6, v0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 246
    :cond_4
    :goto_3
    move-object v6, v4

    throw v6

    .line 242
    :catch_3
    move-exception v6

    move-object v5, v6

    .line 243
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v6, "Downsampler"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 244
    const-string/jumbo v6, "Downsampler"

    const-string/jumbo v7, "Cannot reset the input stream"

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_3
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .locals 36

    .prologue
    .line 108
    move-object/from16 v2, p0

    .local v2, "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    move-object/from16 v3, p1

    .local v3, "is":Ljava/io/InputStream;
    move-object/from16 v4, p2

    .local v4, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move/from16 v5, p3

    .local v5, "outWidth":I
    move/from16 v6, p4

    .local v6, "outHeight":I
    move-object/from16 v7, p5

    .local v7, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v26

    move-object/from16 v8, v26

    .line 109
    .local v8, "byteArrayPool":Lcom/bumptech/glide/util/ByteArrayPool;
    move-object/from16 v26, v8

    invoke-virtual/range {v26 .. v26}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v26

    move-object/from16 v9, v26

    .line 110
    .local v9, "bytesForOptions":[B
    move-object/from16 v26, v8

    invoke-virtual/range {v26 .. v26}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v26

    move-object/from16 v10, v26

    .line 111
    .local v10, "bytesForStream":[B
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v26

    move-object/from16 v11, v26

    .line 114
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    new-instance v26, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    move-object/from16 v35, v26

    move-object/from16 v26, v35

    move-object/from16 v27, v35

    move-object/from16 v28, v3

    move-object/from16 v29, v10

    invoke-direct/range {v27 .. v29}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;[B)V

    move-object/from16 v12, v26

    .line 119
    .local v12, "bufferedStream":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    move-object/from16 v26, v12

    invoke-static/range {v26 .. v26}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->obtain(Ljava/io/InputStream;)Lcom/bumptech/glide/util/ExceptionCatchingInputStream;

    move-result-object v26

    move-object/from16 v13, v26

    .line 124
    .local v13, "exceptionStream":Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    new-instance v26, Lcom/bumptech/glide/util/MarkEnforcingInputStream;

    move-object/from16 v35, v26

    move-object/from16 v26, v35

    move-object/from16 v27, v35

    move-object/from16 v28, v13

    invoke-direct/range {v27 .. v28}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v14, v26

    .line 126
    .local v14, "invalidatingStream":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    move-object/from16 v26, v13

    const/high16 v27, 0x500000

    :try_start_0
    invoke-virtual/range {v26 .. v27}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    const/16 v26, 0x0

    move/from16 v15, v26

    .line 129
    .local v15, "orientation":I
    :try_start_1
    new-instance v26, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    move-object/from16 v35, v26

    move-object/from16 v26, v35

    move-object/from16 v27, v35

    move-object/from16 v28, v13

    invoke-direct/range {v27 .. v28}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual/range {v26 .. v26}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getOrientation()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v26

    move/from16 v15, v26

    .line 136
    move-object/from16 v26, v13

    :try_start_2
    invoke-virtual/range {v26 .. v26}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    .line 144
    :goto_0
    move-object/from16 v26, v11

    move-object/from16 v27, v9

    :try_start_3
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 146
    move-object/from16 v26, v2

    move-object/from16 v27, v14

    move-object/from16 v28, v12

    move-object/from16 v29, v11

    invoke-virtual/range {v26 .. v29}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDimensions(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)[I

    move-result-object v26

    move-object/from16 v16, v26

    .line 147
    .local v16, "inDimens":[I
    move-object/from16 v26, v16

    const/16 v27, 0x0

    aget v26, v26, v27

    move/from16 v17, v26

    .line 148
    .local v17, "inWidth":I
    move-object/from16 v26, v16

    const/16 v27, 0x1

    aget v26, v26, v27

    move/from16 v18, v26

    .line 150
    .local v18, "inHeight":I
    move/from16 v26, v15

    invoke-static/range {v26 .. v26}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getExifOrientationDegrees(I)I

    move-result v26

    move/from16 v19, v26

    .line 151
    .local v19, "degreesToRotate":I
    move-object/from16 v26, v2

    move/from16 v27, v19

    move/from16 v28, v17

    move/from16 v29, v18

    move/from16 v30, v5

    move/from16 v31, v6

    invoke-direct/range {v26 .. v31}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getRoundedSampleSize(IIIII)I

    move-result v26

    move/from16 v20, v26

    .line 153
    .local v20, "sampleSize":I
    move-object/from16 v26, v2

    move-object/from16 v27, v14

    move-object/from16 v28, v12

    move-object/from16 v29, v11

    move-object/from16 v30, v4

    move/from16 v31, v17

    move/from16 v32, v18

    move/from16 v33, v20

    move-object/from16 v34, v7

    invoke-direct/range {v26 .. v34}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->downsampleWithSize(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v21, v26

    .line 160
    .local v21, "downsampled":Landroid/graphics/Bitmap;
    move-object/from16 v26, v13

    invoke-virtual/range {v26 .. v26}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->getException()Ljava/io/IOException;

    move-result-object v26

    move-object/from16 v22, v26

    .line 161
    .local v22, "streamException":Ljava/lang/Exception;
    move-object/from16 v26, v22

    if-eqz v26, :cond_4

    .line 162
    new-instance v26, Ljava/lang/RuntimeException;

    move-object/from16 v35, v26

    move-object/from16 v26, v35

    move-object/from16 v27, v35

    move-object/from16 v28, v22

    invoke-direct/range {v27 .. v28}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    .end local v15    # "orientation":I
    .end local v16    # "inDimens":[I
    .end local v17    # "inWidth":I
    .end local v18    # "inHeight":I
    .end local v19    # "degreesToRotate":I
    .end local v20    # "sampleSize":I
    .end local v21    # "downsampled":Landroid/graphics/Bitmap;
    .end local v22    # "streamException":Ljava/lang/Exception;
    :catchall_0
    move-exception v26

    move-object/from16 v25, v26

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    invoke-virtual/range {v26 .. v27}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    move-result v26

    .line 177
    move-object/from16 v26, v8

    move-object/from16 v27, v10

    invoke-virtual/range {v26 .. v27}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    move-result v26

    .line 178
    move-object/from16 v26, v13

    invoke-virtual/range {v26 .. v26}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->release()V

    .line 179
    move-object/from16 v26, v11

    invoke-static/range {v26 .. v26}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    move-object/from16 v26, v25

    throw v26

    .line 137
    .restart local v15    # "orientation":I
    :catch_0
    move-exception v26

    move-object/from16 v16, v26

    .line 138
    .local v16, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v26, "Downsampler"

    const/16 v27, 0x5

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 139
    const-string/jumbo v26, "Downsampler"

    const-string/jumbo v27, "Cannot reset the input stream"

    move-object/from16 v28, v16

    invoke-static/range {v26 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v26

    .line 142
    :cond_0
    goto/16 :goto_0

    .line 130
    .end local v16    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v26

    move-object/from16 v16, v26

    .line 131
    .restart local v16    # "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v26, "Downsampler"

    const/16 v27, 0x5

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 132
    const-string/jumbo v26, "Downsampler"

    const-string/jumbo v27, "Cannot determine the image orientation from header"

    move-object/from16 v28, v16

    invoke-static/range {v26 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v26

    .line 136
    :cond_1
    move-object/from16 v26, v13

    :try_start_6
    invoke-virtual/range {v26 .. v26}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 141
    goto/16 :goto_0

    .line 137
    :catch_2
    move-exception v26

    move-object/from16 v16, v26

    .line 138
    :try_start_7
    const-string/jumbo v26, "Downsampler"

    const/16 v27, 0x5

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 139
    const-string/jumbo v26, "Downsampler"

    const-string/jumbo v27, "Cannot reset the input stream"

    move-object/from16 v28, v16

    invoke-static/range {v26 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v26

    .line 142
    :cond_2
    goto/16 :goto_0

    .line 135
    .end local v16    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v26

    move-object/from16 v17, v26

    .line 136
    move-object/from16 v26, v13

    :try_start_8
    invoke-virtual/range {v26 .. v26}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 141
    :cond_3
    :goto_1
    move-object/from16 v26, v17

    :try_start_9
    throw v26

    .line 137
    :catch_3
    move-exception v26

    move-object/from16 v18, v26

    .line 138
    .local v18, "e":Ljava/io/IOException;
    const-string/jumbo v26, "Downsampler"

    const/16 v27, 0x5

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 139
    const-string/jumbo v26, "Downsampler"

    const-string/jumbo v27, "Cannot reset the input stream"

    move-object/from16 v28, v18

    invoke-static/range {v26 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v26

    goto :goto_1

    .line 165
    .local v16, "inDimens":[I
    .restart local v17    # "inWidth":I
    .local v18, "inHeight":I
    .restart local v19    # "degreesToRotate":I
    .restart local v20    # "sampleSize":I
    .restart local v21    # "downsampled":Landroid/graphics/Bitmap;
    .restart local v22    # "streamException":Ljava/lang/Exception;
    :cond_4
    const/16 v26, 0x0

    move-object/from16 v23, v26

    .line 166
    .local v23, "rotated":Landroid/graphics/Bitmap;
    move-object/from16 v26, v21

    if-eqz v26, :cond_5

    .line 167
    move-object/from16 v26, v21

    move-object/from16 v27, v4

    move/from16 v28, v15

    invoke-static/range {v26 .. v28}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImageExif(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v23, v26

    .line 169
    move-object/from16 v26, v21

    move-object/from16 v27, v23

    invoke-virtual/range {v26 .. v27}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    move-object/from16 v26, v4

    move-object/from16 v27, v21

    invoke-interface/range {v26 .. v27}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 170
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 174
    :cond_5
    move-object/from16 v26, v23

    move-object/from16 v24, v26

    .line 176
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    invoke-virtual/range {v26 .. v27}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    move-result v26

    .line 177
    move-object/from16 v26, v8

    move-object/from16 v27, v10

    invoke-virtual/range {v26 .. v27}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    move-result v26

    .line 178
    move-object/from16 v26, v13

    invoke-virtual/range {v26 .. v26}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->release()V

    .line 179
    move-object/from16 v26, v11

    invoke-static/range {v26 .. v26}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    move-object/from16 v26, v24

    move-object/from16 v2, v26

    .end local v2    # "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    return-object v2
.end method

.method public bridge synthetic decode(Ljava/lang/Object;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
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

    invoke-virtual/range {v6 .. v11}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    return-object v0
.end method

.method public getDimensions(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)[I
    .locals 9

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    move-object v1, p1

    .local v1, "is":Lcom/bumptech/glide/util/MarkEnforcingInputStream;
    move-object v2, p2

    .local v2, "bufferedStream":Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    move-object v3, p3

    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 308
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 309
    move-object v4, v3

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 310
    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v3

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v3

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v7, v5, v6

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    return-object v0
.end method

.method protected abstract getSampleSize(IIII)I
.end method
