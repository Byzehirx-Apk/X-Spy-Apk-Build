.class public abstract Landroidx/core/app/SharedElementCallback;
.super Ljava/lang/Object;
.source "SharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;
    }
.end annotation


# static fields
.field private static final BUNDLE_SNAPSHOT_BITMAP:Ljava/lang/String; = "sharedElement:snapshot:bitmap"

.field private static final BUNDLE_SNAPSHOT_IMAGE_MATRIX:Ljava/lang/String; = "sharedElement:snapshot:imageMatrix"

.field private static final BUNDLE_SNAPSHOT_IMAGE_SCALETYPE:Ljava/lang/String; = "sharedElement:snapshot:imageScaleType"

.field private static final MAX_IMAGE_SIZE:I = 0x100000


# instance fields
.field private mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/SharedElementCallback;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method

.method private static createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 19

    .prologue
    .line 214
    move-object/from16 v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v13, v0

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    move v1, v13

    .line 215
    .local v1, "width":I
    move-object v13, v0

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    move v2, v13

    .line 216
    .local v2, "height":I
    move v13, v1

    if-lez v13, :cond_0

    move v13, v2

    if-gtz v13, :cond_1

    .line 217
    :cond_0
    const/4 v13, 0x0

    move-object v0, v13

    .line 236
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 219
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x49800000    # 1048576.0f

    move v15, v1

    move/from16 v16, v2

    mul-int v15, v15, v16

    int-to-float v15, v15

    div-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    move v3, v13

    .line 220
    .local v3, "scale":F
    move-object v13, v0

    instance-of v13, v13, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_2

    move v13, v3

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_2

    .line 222
    move-object v13, v0

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    move-object v0, v13

    goto :goto_0

    .line 224
    :cond_2
    move v13, v1

    int-to-float v13, v13

    move v14, v3

    mul-float/2addr v13, v14

    float-to-int v13, v13

    move v4, v13

    .line 225
    .local v4, "bitmapWidth":I
    move v13, v2

    int-to-float v13, v13

    move v14, v3

    mul-float/2addr v13, v14

    float-to-int v13, v13

    move v5, v13

    .line 226
    .local v5, "bitmapHeight":I
    move v13, v4

    move v14, v5

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object v6, v13

    .line 227
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v6

    invoke-direct {v14, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v7, v13

    .line 228
    .local v7, "canvas":Landroid/graphics/Canvas;
    move-object v13, v0

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    move-object v8, v13

    .line 229
    .local v8, "existingBounds":Landroid/graphics/Rect;
    move-object v13, v8

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move v9, v13

    .line 230
    .local v9, "left":I
    move-object v13, v8

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move v10, v13

    .line 231
    .local v10, "top":I
    move-object v13, v8

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move v11, v13

    .line 232
    .local v11, "right":I
    move-object v13, v8

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    move v12, v13

    .line 233
    .local v12, "bottom":I
    move-object v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    move-object v13, v0

    move-object v14, v7

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    move-object v13, v0

    move v14, v9

    move v15, v10

    move/from16 v16, v11

    move/from16 v17, v12

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 236
    move-object v13, v6

    move-object v0, v13

    goto :goto_0
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 16

    .prologue
    .line 168
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/app/SharedElementCallback;
    move-object/from16 v1, p1

    .local v1, "sharedElement":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "viewToGlobalMatrix":Landroid/graphics/Matrix;
    move-object/from16 v3, p3

    .local v3, "screenBounds":Landroid/graphics/RectF;
    move-object v11, v1

    instance-of v11, v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_1

    .line 169
    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    move-object v4, v11

    .line 170
    .local v4, "imageView":Landroid/widget/ImageView;
    move-object v11, v4

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v5, v11

    .line 171
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    move-object v11, v4

    invoke-virtual {v11}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v6, v11

    .line 172
    .local v6, "bg":Landroid/graphics/drawable/Drawable;
    move-object v11, v5

    if-eqz v11, :cond_1

    move-object v11, v6

    if-nez v11, :cond_1

    .line 173
    move-object v11, v5

    invoke-static {v11}, Landroidx/core/app/SharedElementCallback;->createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object v7, v11

    .line 174
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    move-object v11, v7

    if-eqz v11, :cond_1

    .line 175
    new-instance v11, Landroid/os/Bundle;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    move-object v8, v11

    .line 176
    .local v8, "bundle":Landroid/os/Bundle;
    move-object v11, v8

    const-string/jumbo v12, "sharedElement:snapshot:bitmap"

    move-object v13, v7

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 177
    move-object v11, v8

    const-string/jumbo v12, "sharedElement:snapshot:imageScaleType"

    move-object v13, v4

    .line 178
    invoke-virtual {v13}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object v13

    .line 177
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    move-object v11, v4

    invoke-virtual {v11}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v11

    sget-object v12, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v11, v12, :cond_0

    .line 180
    move-object v11, v4

    invoke-virtual {v11}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    move-object v9, v11

    .line 181
    .local v9, "matrix":Landroid/graphics/Matrix;
    const/16 v11, 0x9

    new-array v11, v11, [F

    move-object v10, v11

    .line 182
    .local v10, "values":[F
    move-object v11, v9

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->getValues([F)V

    .line 183
    move-object v11, v8

    const-string/jumbo v12, "sharedElement:snapshot:imageMatrix"

    move-object v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 185
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "values":[F
    :cond_0
    move-object v11, v8

    move-object v0, v11

    .line 207
    .end local v0    # "this":Landroidx/core/app/SharedElementCallback;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 189
    .restart local v0    # "this":Landroidx/core/app/SharedElementCallback;
    :cond_1
    move-object v11, v3

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v4, v11

    .line 190
    .local v4, "bitmapWidth":I
    move-object v11, v3

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v5, v11

    .line 191
    .local v5, "bitmapHeight":I
    const/4 v11, 0x0

    move-object v6, v11

    .line 192
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    move v11, v4

    if-lez v11, :cond_3

    move v11, v5

    if-lez v11, :cond_3

    .line 193
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x49800000    # 1048576.0f

    move v13, v4

    move v14, v5

    mul-int/2addr v13, v14

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    move v7, v11

    .line 194
    .local v7, "scale":F
    move v11, v4

    int-to-float v11, v11

    move v12, v7

    mul-float/2addr v11, v12

    float-to-int v11, v11

    move v4, v11

    .line 195
    move v11, v5

    int-to-float v11, v11

    move v12, v7

    mul-float/2addr v11, v12

    float-to-int v11, v11

    move v5, v11

    .line 196
    move-object v11, v0

    iget-object v11, v11, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    if-nez v11, :cond_2

    .line 197
    move-object v11, v0

    new-instance v12, Landroid/graphics/Matrix;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    iput-object v12, v11, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    .line 199
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    move-object v12, v2

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 200
    move-object v11, v0

    iget-object v11, v11, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->left:F

    neg-float v12, v12

    move-object v13, v3

    iget v13, v13, Landroid/graphics/RectF;->top:F

    neg-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v11

    .line 201
    move-object v11, v0

    iget-object v11, v11, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    move v12, v7

    move v13, v7

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v11

    .line 202
    move v11, v4

    move v12, v5

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object v6, v11

    .line 203
    new-instance v11, Landroid/graphics/Canvas;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v6

    invoke-direct {v12, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v8, v11

    .line 204
    .local v8, "canvas":Landroid/graphics/Canvas;
    move-object v11, v8

    move-object v12, v0

    iget-object v12, v12, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 205
    move-object v11, v1

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 207
    .end local v7    # "scale":F
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    move-object v11, v6

    move-object v0, v11

    goto/16 :goto_0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 13

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/SharedElementCallback;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "snapshot":Landroid/os/Parcelable;
    const/4 v9, 0x0

    move-object v3, v9

    .line 258
    .local v3, "view":Landroid/widget/ImageView;
    move-object v9, v2

    instance-of v9, v9, Landroid/os/Bundle;

    if-eqz v9, :cond_2

    .line 259
    move-object v9, v2

    check-cast v9, Landroid/os/Bundle;

    move-object v4, v9

    .line 260
    .local v4, "bundle":Landroid/os/Bundle;
    move-object v9, v4

    const-string/jumbo v10, "sharedElement:snapshot:bitmap"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    move-object v5, v9

    .line 261
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    move-object v9, v5

    if-nez v9, :cond_0

    .line 262
    const/4 v9, 0x0

    move-object v0, v9

    .line 280
    .end local v0    # "this":Landroidx/core/app/SharedElementCallback;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 264
    .restart local v0    # "this":Landroidx/core/app/SharedElementCallback;
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v9, Landroid/widget/ImageView;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v1

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v6, v9

    .line 265
    .local v6, "imageView":Landroid/widget/ImageView;
    move-object v9, v6

    move-object v3, v9

    .line 266
    move-object v9, v6

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 267
    move-object v9, v6

    move-object v10, v4

    const-string/jumbo v11, "sharedElement:snapshot:imageScaleType"

    .line 268
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v10

    .line 267
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 269
    move-object v9, v6

    invoke-virtual {v9}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v9

    sget-object v10, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_1

    .line 270
    move-object v9, v4

    const-string/jumbo v10, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v9

    move-object v7, v9

    .line 271
    .local v7, "values":[F
    new-instance v9, Landroid/graphics/Matrix;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    move-object v8, v9

    .line 272
    .local v8, "matrix":Landroid/graphics/Matrix;
    move-object v9, v8

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->setValues([F)V

    .line 273
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 275
    .line 280
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "imageView":Landroid/widget/ImageView;
    .end local v7    # "values":[F
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    :goto_1
    move-object v9, v3

    move-object v0, v9

    goto :goto_0

    .line 275
    :cond_2
    move-object v9, v2

    instance-of v9, v9, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_1

    .line 276
    move-object v9, v2

    check-cast v9, Landroid/graphics/Bitmap;

    move-object v4, v9

    .line 277
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/widget/ImageView;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v1

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v3, v9

    .line 278
    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/SharedElementCallback;
    move-object v1, p1

    .local v1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v3, p3

    .local v3, "listener":Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;
    move-object v4, v3

    invoke-interface {v4}, Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    .line 302
    return-void
.end method
