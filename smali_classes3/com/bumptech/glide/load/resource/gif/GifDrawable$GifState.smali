.class Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifState"
.end annotation


# static fields
.field private static final GRAVITY:I = 0x77


# instance fields
.field bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field context:Landroid/content/Context;

.field data:[B

.field firstFrame:Landroid/graphics/Bitmap;

.field frameTransformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field gifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field targetHeight:I

.field targetWidth:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/gifdecoder/GifHeader;",
            "[B",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
    move-object v1, p1

    .local v1, "header":Lcom/bumptech/glide/gifdecoder/GifHeader;
    move-object/from16 v2, p2

    .local v2, "data":[B
    move-object/from16 v3, p3

    .local v3, "context":Landroid/content/Context;
    move-object/from16 v4, p4

    .local v4, "frameTransformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    move/from16 v5, p5

    .local v5, "targetWidth":I
    move/from16 v6, p6

    .local v6, "targetHeight":I
    move-object/from16 v7, p7

    .local v7, "provider":Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    move-object/from16 v8, p8

    .local v8, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object/from16 v9, p9

    .local v9, "firstFrame":Landroid/graphics/Bitmap;
    move-object v10, v0

    invoke-direct {v10}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 336
    move-object v10, v9

    if-nez v10, :cond_0

    .line 337
    new-instance v10, Ljava/lang/NullPointerException;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string/jumbo v12, "The first frame of the GIF must not be null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 339
    :cond_0
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 340
    move-object v10, v0

    move-object v11, v2

    iput-object v11, v10, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    .line 341
    move-object v10, v0

    move-object v11, v8

    iput-object v11, v10, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 342
    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    .line 343
    move-object v10, v0

    move-object v11, v3

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iput-object v11, v10, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Landroid/content/Context;

    .line 344
    move-object v10, v0

    move-object v11, v4

    iput-object v11, v10, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lcom/bumptech/glide/load/Transformation;

    .line 345
    move-object v10, v0

    move v11, v5

    iput v11, v10, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    .line 346
    move-object v10, v0

    move v11, v6

    iput v11, v10, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    .line 347
    move-object v10, v0

    move-object v11, v7

    iput-object v11, v10, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 348
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
    .locals 4

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
    move-object v1, p1

    .local v1, "original":Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
    move-object v2, v0

    invoke-direct {v2}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 351
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 352
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 353
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    .line 354
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Landroid/content/Context;

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Landroid/content/Context;

    .line 355
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lcom/bumptech/glide/load/Transformation;

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lcom/bumptech/glide/load/Transformation;

    .line 356
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    iput v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    .line 357
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    iput v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    .line 358
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 359
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 360
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    .line 362
    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
    new-instance v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
    return-object v0
.end method
