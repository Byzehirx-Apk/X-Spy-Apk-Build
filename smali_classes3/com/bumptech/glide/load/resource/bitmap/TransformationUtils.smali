.class public final Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;
.super Ljava/lang/Object;
.source "TransformationUtils.java"


# static fields
.field public static final PAINT_FLAGS:I = 0x6

.field private static final TAG:Ljava/lang/String; = "TransformationUtils"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static centerCrop(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 16

    .prologue
    .line 39
    move-object/from16 v0, p0

    .local v0, "recycled":Landroid/graphics/Bitmap;
    move-object/from16 v1, p1

    .local v1, "toCrop":Landroid/graphics/Bitmap;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    move-object v11, v1

    if-nez v11, :cond_0

    .line 40
    const/4 v11, 0x0

    move-object v0, v11

    .line 71
    .end local v0    # "recycled":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 41
    .restart local v0    # "recycled":Landroid/graphics/Bitmap;
    :cond_0
    move-object v11, v1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move v12, v2

    if-ne v11, v12, :cond_1

    move-object v11, v1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move v12, v3

    if-ne v11, v12, :cond_1

    .line 42
    move-object v11, v1

    move-object v0, v11

    goto :goto_0

    .line 46
    :cond_1
    const/4 v11, 0x0

    move v5, v11

    .local v5, "dx":F
    const/4 v11, 0x0

    move v6, v11

    .line 47
    .local v6, "dy":F
    new-instance v11, Landroid/graphics/Matrix;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    move-object v7, v11

    .line 48
    .local v7, "m":Landroid/graphics/Matrix;
    move-object v11, v1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move v12, v3

    mul-int/2addr v11, v12

    move v12, v2

    move-object v13, v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int/2addr v12, v13

    if-le v11, v12, :cond_2

    .line 49
    move v11, v3

    int-to-float v11, v11

    move-object v12, v1

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    move v4, v11

    .line 50
    .local v4, "scale":F
    move v11, v2

    int-to-float v11, v11

    move-object v12, v1

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    move v13, v4

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    move v5, v11

    .line 56
    :goto_1
    move-object v11, v7

    move v12, v4

    move v13, v4

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 57
    move-object v11, v7

    move v12, v5

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    int-to-float v12, v12

    move v13, v6

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v11

    .line 59
    move-object v11, v0

    if-eqz v11, :cond_3

    .line 60
    move-object v11, v0

    move-object v8, v11

    .line 66
    .local v8, "result":Landroid/graphics/Bitmap;
    :goto_2
    move-object v11, v1

    move-object v12, v8

    invoke-static {v11, v12}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 68
    new-instance v11, Landroid/graphics/Canvas;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v8

    invoke-direct {v12, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v9, v11

    .line 69
    .local v9, "canvas":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x6

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    move-object v10, v11

    .line 70
    .local v10, "paint":Landroid/graphics/Paint;
    move-object v11, v9

    move-object v12, v1

    move-object v13, v7

    move-object v14, v10

    invoke-virtual {v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 71
    move-object v11, v8

    move-object v0, v11

    goto/16 :goto_0

    .line 52
    .end local v4    # "scale":F
    .end local v8    # "result":Landroid/graphics/Bitmap;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "paint":Landroid/graphics/Paint;
    :cond_2
    move v11, v2

    int-to-float v11, v11

    move-object v12, v1

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    move v4, v11

    .line 53
    .restart local v4    # "scale":F
    move v11, v3

    int-to-float v11, v11

    move-object v12, v1

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    move v13, v4

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    move v6, v11

    goto :goto_1

    .line 62
    :cond_3
    move v11, v2

    move v12, v3

    move-object v13, v1

    invoke-static {v13}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object v8, v11

    .restart local v8    # "result":Landroid/graphics/Bitmap;
    goto :goto_2
.end method

.method public static fitCenter(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)Landroid/graphics/Bitmap;
    .locals 19

    .prologue
    .line 86
    move-object/from16 v0, p0

    .local v0, "toFit":Landroid/graphics/Bitmap;
    move-object/from16 v1, p1

    .local v1, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    move-object v14, v0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    move v15, v2

    if-ne v14, v15, :cond_1

    move-object v14, v0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move v15, v3

    if-ne v14, v15, :cond_1

    .line 87
    const-string/jumbo v14, "TransformationUtils"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 88
    const-string/jumbo v14, "TransformationUtils"

    const-string/jumbo v15, "requested target size matches input, returning input"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 90
    :cond_0
    move-object v14, v0

    move-object v0, v14

    .line 130
    .end local v0    # "toFit":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 92
    .restart local v0    # "toFit":Landroid/graphics/Bitmap;
    :cond_1
    move v14, v2

    int-to-float v14, v14

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    move v4, v14

    .line 93
    .local v4, "widthPercentage":F
    move v14, v3

    int-to-float v14, v14

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    move v5, v14

    .line 94
    .local v5, "heightPercentage":F
    move v14, v4

    move v15, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    move v6, v14

    .line 99
    .local v6, "minPercentage":F
    move v14, v6

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    float-to-int v14, v14

    move v7, v14

    .line 100
    .local v7, "targetWidth":I
    move v14, v6

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    float-to-int v14, v14

    move v8, v14

    .line 102
    .local v8, "targetHeight":I
    move-object v14, v0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    move v15, v7

    if-ne v14, v15, :cond_3

    move-object v14, v0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move v15, v8

    if-ne v14, v15, :cond_3

    .line 103
    const-string/jumbo v14, "TransformationUtils"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 104
    const-string/jumbo v14, "TransformationUtils"

    const-string/jumbo v15, "adjusted target size matches input, returning input"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 106
    :cond_2
    move-object v14, v0

    move-object v0, v14

    goto :goto_0

    .line 109
    :cond_3
    move-object v14, v0

    invoke-static {v14}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v14

    move-object v9, v14

    .line 110
    .local v9, "config":Landroid/graphics/Bitmap$Config;
    move-object v14, v1

    move v15, v7

    move/from16 v16, v8

    move-object/from16 v17, v9

    invoke-interface/range {v14 .. v17}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object v10, v14

    .line 111
    .local v10, "toReuse":Landroid/graphics/Bitmap;
    move-object v14, v10

    if-nez v14, :cond_4

    .line 112
    move v14, v7

    move v15, v8

    move-object/from16 v16, v9

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object v10, v14

    .line 115
    :cond_4
    move-object v14, v0

    move-object v15, v10

    invoke-static {v14, v15}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 117
    const-string/jumbo v14, "TransformationUtils"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 118
    const-string/jumbo v14, "TransformationUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "request: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 119
    const-string/jumbo v14, "TransformationUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "toFit:   "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 120
    const-string/jumbo v14, "TransformationUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "toReuse: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 121
    const-string/jumbo v14, "TransformationUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "minPct:   "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 124
    :cond_5
    new-instance v14, Landroid/graphics/Canvas;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v10

    invoke-direct/range {v15 .. v16}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v11, v14

    .line 125
    .local v11, "canvas":Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Matrix;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    move-object v12, v14

    .line 126
    .local v12, "matrix":Landroid/graphics/Matrix;
    move-object v14, v12

    move v15, v6

    move/from16 v16, v6

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 127
    new-instance v14, Landroid/graphics/Paint;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x6

    invoke-direct/range {v15 .. v16}, Landroid/graphics/Paint;-><init>(I)V

    move-object v13, v14

    .line 128
    .local v13, "paint":Landroid/graphics/Paint;
    move-object v14, v11

    move-object v15, v0

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    invoke-virtual/range {v14 .. v17}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 130
    move-object v14, v10

    move-object v0, v14

    goto/16 :goto_0
.end method

.method public static getExifOrientationDegrees(I)I
    .locals 3

    .prologue
    .line 227
    move v0, p0

    .local v0, "exifOrientation":I
    move v2, v0

    packed-switch v2, :pswitch_data_0

    .line 241
    const/4 v2, 0x0

    move v1, v2

    .line 244
    .local v1, "degreesToRotate":I
    :goto_0
    move v2, v1

    move v0, v2

    .end local v0    # "exifOrientation":I
    return v0

    .line 230
    .end local v1    # "degreesToRotate":I
    .restart local v0    # "exifOrientation":I
    :pswitch_0
    const/16 v2, 0x5a

    move v1, v2

    .line 231
    .restart local v1    # "degreesToRotate":I
    goto :goto_0

    .line 234
    .end local v1    # "degreesToRotate":I
    :pswitch_1
    const/16 v2, 0xb4

    move v1, v2

    .line 235
    .restart local v1    # "degreesToRotate":I
    goto :goto_0

    .line 238
    .end local v1    # "degreesToRotate":I
    :pswitch_2
    const/16 v2, 0x10e

    move v1, v2

    .line 239
    .restart local v1    # "degreesToRotate":I
    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getOrientation(Ljava/lang/String;)I
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "pathToOriginal":Ljava/lang/String;
    const/4 v4, 0x0

    move v1, v4

    .line 161
    .local v1, "degreesToRotate":I
    :try_start_0
    new-instance v4, Landroid/media/ExifInterface;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 162
    .local v2, "exif":Landroid/media/ExifInterface;
    move-object v4, v2

    const-string/jumbo v5, "Orientation"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    move v3, v4

    .line 163
    .local v3, "orientation":I
    move v4, v3

    invoke-static {v4}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getExifOrientationDegrees(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v0, v4

    .line 169
    .end local v0    # "pathToOriginal":Ljava/lang/String;
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :goto_0
    return v0

    .line 164
    .restart local v0    # "pathToOriginal":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 165
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "TransformationUtils"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    const-string/jumbo v4, "TransformationUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to get orientation for image with path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 169
    :cond_0
    move v4, v1

    move v0, v4

    goto :goto_0
.end method

.method private static getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    return-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method static initializeMatrixForRotation(ILandroid/graphics/Matrix;)V
    .locals 5

    .prologue
    .line 290
    move v0, p0

    .local v0, "exifOrientation":I
    move-object v1, p1

    .local v1, "matrix":Landroid/graphics/Matrix;
    move v2, v0

    packed-switch v2, :pswitch_data_0

    .line 318
    :goto_0
    return-void

    .line 292
    :pswitch_0
    move-object v2, v1

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 293
    goto :goto_0

    .line 295
    :pswitch_1
    move-object v2, v1

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 296
    goto :goto_0

    .line 298
    :pswitch_2
    move-object v2, v1

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 299
    move-object v2, v1

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v2

    .line 300
    goto :goto_0

    .line 302
    :pswitch_3
    move-object v2, v1

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 303
    move-object v2, v1

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v2

    .line 304
    goto :goto_0

    .line 306
    :pswitch_4
    move-object v2, v1

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 307
    goto :goto_0

    .line 309
    :pswitch_5
    move-object v2, v1

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 310
    move-object v2, v1

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v2

    .line 311
    goto :goto_0

    .line 313
    :pswitch_6
    move-object v2, v1

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 314
    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static orientImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "pathToOriginal":Ljava/lang/String;
    move-object v1, p1

    .local v1, "imageToOrient":Landroid/graphics/Bitmap;
    move-object v3, v0

    invoke-static {v3}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getOrientation(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 184
    .local v2, "degreesToRotate":I
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "pathToOriginal":Ljava/lang/String;
    return-object v0
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "imageToOrient":Landroid/graphics/Bitmap;
    move v1, p1

    .local v1, "degreesToRotate":I
    move-object v4, v0

    move-object v2, v4

    .line 199
    .local v2, "result":Landroid/graphics/Bitmap;
    move v4, v1

    if-eqz v4, :cond_0

    .line 200
    :try_start_0
    new-instance v4, Landroid/graphics/Matrix;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move-object v3, v4

    .line 201
    .local v3, "matrix":Landroid/graphics/Matrix;
    move-object v4, v3

    move v5, v1

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 202
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v9, v3

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 215
    .line 216
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    :goto_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "imageToOrient":Landroid/graphics/Bitmap;
    return-object v0

    .line 211
    .restart local v0    # "imageToOrient":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 212
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "TransformationUtils"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    const-string/jumbo v4, "TransformationUtils"

    const-string/jumbo v5, "Exception when trying to orient image"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_0
.end method

.method public static rotateImageExif(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)Landroid/graphics/Bitmap;
    .locals 19

    .prologue
    .line 256
    move-object/from16 v1, p0

    .local v1, "toOrient":Landroid/graphics/Bitmap;
    move-object/from16 v2, p1

    .local v2, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move/from16 v3, p2

    .local v3, "exifOrientation":I
    new-instance v12, Landroid/graphics/Matrix;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    move-object v4, v12

    .line 257
    .local v4, "matrix":Landroid/graphics/Matrix;
    move v12, v3

    move-object v13, v4

    invoke-static {v12, v13}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->initializeMatrixForRotation(ILandroid/graphics/Matrix;)V

    .line 258
    move-object v12, v4

    invoke-virtual {v12}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 259
    move-object v12, v1

    move-object v1, v12

    .line 281
    .end local v1    # "toOrient":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 263
    .restart local v1    # "toOrient":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v12, Landroid/graphics/RectF;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v5, v12

    .line 264
    .local v5, "newRect":Landroid/graphics/RectF;
    move-object v12, v4

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v12

    .line 266
    move-object v12, v5

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    move v6, v12

    .line 267
    .local v6, "newWidth":I
    move-object v12, v5

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    move v7, v12

    .line 269
    .local v7, "newHeight":I
    move-object v12, v1

    invoke-static {v12}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v12

    move-object v8, v12

    .line 270
    .local v8, "config":Landroid/graphics/Bitmap$Config;
    move-object v12, v2

    move v13, v6

    move v14, v7

    move-object v15, v8

    invoke-interface {v12, v13, v14, v15}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object v9, v12

    .line 271
    .local v9, "result":Landroid/graphics/Bitmap;
    move-object v12, v9

    if-nez v12, :cond_1

    .line 272
    move v12, v6

    move v13, v7

    move-object v14, v8

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object v9, v12

    .line 275
    :cond_1
    move-object v12, v4

    move-object v13, v5

    iget v13, v13, Landroid/graphics/RectF;->left:F

    neg-float v13, v13

    move-object v14, v5

    iget v14, v14, Landroid/graphics/RectF;->top:F

    neg-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v12

    .line 277
    new-instance v12, Landroid/graphics/Canvas;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v9

    invoke-direct {v13, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v10, v12

    .line 278
    .local v10, "canvas":Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Paint;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object v11, v12

    .line 279
    .local v11, "paint":Landroid/graphics/Paint;
    move-object v12, v10

    move-object v13, v1

    move-object v14, v4

    move-object v15, v11

    invoke-virtual {v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 281
    move-object v12, v9

    move-object v1, v12

    goto/16 :goto_0
.end method

.method public static setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "toTransform":Landroid/graphics/Bitmap;
    move-object v1, p1

    .local v1, "outBitmap":Landroid/graphics/Bitmap;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 144
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 146
    :cond_0
    return-void
.end method
