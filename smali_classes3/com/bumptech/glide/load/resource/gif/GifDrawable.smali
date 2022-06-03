.class public Lcom/bumptech/glide/load/resource/gif/GifDrawable;
.super Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
.source "GifDrawable.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
    }
.end annotation


# instance fields
.field private applyGravity:Z

.field private final decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

.field private final destRect:Landroid/graphics/Rect;

.field private final frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

.field private isRecycled:Z

.field private isRunning:Z

.field private isStarted:Z

.field private isVisible:Z

.field private loopCount:I

.field private maxLoopCount:I

.field private final paint:Landroid/graphics/Paint;

.field private final state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/graphics/Bitmap;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/bumptech/glide/gifdecoder/GifHeader;",
            "[B",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "bitmapProvider":Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    move-object/from16 v3, p3

    .local v3, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object/from16 v4, p4

    .local v4, "frameTransformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    move/from16 v5, p5

    .local v5, "targetFrameWidth":I
    move/from16 v6, p6

    .local v6, "targetFrameHeight":I
    move-object/from16 v7, p7

    .local v7, "gifHeader":Lcom/bumptech/glide/gifdecoder/GifHeader;
    move-object/from16 v8, p8

    .local v8, "data":[B
    move-object/from16 v9, p9

    .local v9, "firstFrame":Landroid/graphics/Bitmap;
    move-object v10, v0

    new-instance v11, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    move-object v13, v7

    move-object v14, v8

    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v9

    invoke-direct/range {v12 .. v21}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V

    invoke-direct {v10, v11}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    .line 77
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Paint;)V
    .locals 11

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, p1

    .local v1, "decoder":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v2, p2

    .local v2, "frameLoader":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
    move-object v3, p3

    .local v3, "firstFrame":Landroid/graphics/Bitmap;
    move-object v4, p4

    .local v4, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object/from16 v5, p5

    .local v5, "paint":Landroid/graphics/Paint;
    move-object v6, v0

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 29
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    .line 45
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    .line 49
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    .line 101
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 102
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 103
    move-object v6, v0

    new-instance v7, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    iput-object v7, v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 104
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    .line 105
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    move-object v7, v4

    iput-object v7, v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 106
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    move-object v7, v3

    iput-object v7, v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    .line 107
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
    .locals 11

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, p1

    .local v1, "state":Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 29
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    .line 45
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    .line 49
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    .line 87
    move-object v2, v1

    if-nez v2, :cond_0

    .line 88
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const-string/jumbo v4, "GifState must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 92
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    iget-object v5, v5, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-direct {v4, v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 93
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    .line 94
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object v4, v1

    iget-object v4, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 95
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    iget-object v5, v5, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Landroid/content/Context;

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-object v8, v1

    iget v8, v8, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    move-object v9, v1

    iget v9, v9, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    invoke-direct/range {v4 .. v9}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/bumptech/glide/gifdecoder/GifDecoder;II)V

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 96
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lcom/bumptech/glide/load/Transformation;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->setFrameTransformation(Lcom/bumptech/glide/load/Transformation;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object/from16 v1, p1

    .local v1, "other":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object/from16 v2, p2

    .local v2, "firstFrame":Landroid/graphics/Bitmap;
    move-object/from16 v3, p3

    .local v3, "frameTransformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    move-object v4, v0

    new-instance v5, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    move-object v7, v1

    iget-object v7, v7, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v7, v7, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object v8, v1

    iget-object v8, v8, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v8, v8, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    move-object v9, v1

    iget-object v9, v9, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v9, v9, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Landroid/content/Context;

    move-object v10, v3

    move-object v11, v1

    iget-object v11, v11, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget v11, v11, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    move-object v12, v1

    iget-object v12, v12, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget v12, v12, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    move-object v13, v1

    iget-object v13, v13, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v13, v13, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    move-object v14, v1

    iget-object v14, v14, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v14, v14, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v15, v2

    invoke-direct/range {v6 .. v15}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    .line 84
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->clear()V

    .line 173
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    .line 174
    return-void
.end method

.method private resetLoopCount()V
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    .line 143
    return-void
.end method

.method private startRunning()V
    .locals 3

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 179
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    if-nez v1, :cond_0

    .line 181
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 182
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->start()V

    .line 183
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method private stopRunning()V
    .locals 3

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 189
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->stop()V

    .line 190
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    if-eqz v4, :cond_0

    .line 232
    .line 243
    :goto_0
    return-void

    .line 235
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    if-eqz v4, :cond_1

    .line 236
    const/16 v4, 0x77

    move-object v5, v0

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicWidth()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicHeight()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    invoke-static {v4, v5, v6, v7, v8}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 237
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    .line 240
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v2, v4

    .line 241
    .local v2, "currentFrame":Landroid/graphics/Bitmap;
    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v2

    :goto_1
    move-object v3, v4

    .line 242
    .local v3, "toDraw":Landroid/graphics/Bitmap;
    move-object v4, v1

    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 243
    goto :goto_0

    .line 241
    .end local v3    # "toDraw":Landroid/graphics/Bitmap;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v4, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    return-object v0
.end method

.method public getData()[B
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    return-object v0
.end method

.method public getDecoder()Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    return-object v0
.end method

.method public getFirstFrame()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    return-object v0
.end method

.method public getFrameCount()I
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    return v0
.end method

.method public getFrameTransformation()Lcom/bumptech/glide/load/Transformation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lcom/bumptech/glide/load/Transformation;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    const/4 v1, -0x2

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    return v0
.end method

.method public isAnimated()Z
    .locals 2

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    return v0
.end method

.method isRecycled()Z
    .locals 2

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 226
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    .line 227
    return-void
.end method

.method public onFrameReady(I)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move v1, p1

    .local v1, "frameIndex":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-nez v2, :cond_0

    .line 265
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 266
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->reset()V

    .line 267
    .line 279
    :goto_0
    return-void

    .line 270
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    .line 272
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 273
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    .line 276
    :cond_1
    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    if-lt v2, v3, :cond_2

    .line 277
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 279
    :cond_2
    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    .line 291
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v1

    .line 292
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->clear()V

    .line 293
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->stop()V

    .line 294
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 248
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, p1

    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 253
    return-void
.end method

.method public setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, p1

    .local v1, "frameTransformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    move-object v2, p2

    .local v2, "firstFrame":Landroid/graphics/Bitmap;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 115
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "The first frame of the GIF must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 118
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "The frame transformation must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lcom/bumptech/glide/load/Transformation;

    .line 121
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    .line 122
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->setFrameTransformation(Lcom/bumptech/glide/load/Transformation;)V

    .line 123
    return-void
.end method

.method setIsRunning(Z)V
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move v1, p1

    .local v1, "isRunning":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 221
    return-void
.end method

.method public setLoopCount(I)V
    .locals 7

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move v1, p1

    .local v1, "loopCount":I
    move v3, v1

    if-gtz v3, :cond_0

    move v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v3, v1

    if-eqz v3, :cond_0

    .line 309
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :cond_0
    move v3, v1

    if-nez v3, :cond_2

    .line 314
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getTotalIterationCount()I

    move-result v3

    move v2, v3

    .line 315
    .local v2, "intrinsicCount":I
    move-object v3, v0

    move v4, v2

    if-nez v4, :cond_1

    const/4 v4, -0x1

    :goto_0
    iput v4, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    .line 316
    .line 319
    .end local v2    # "intrinsicCount":I
    :goto_1
    return-void

    .line 315
    .restart local v2    # "intrinsicCount":I
    :cond_1
    move v4, v2

    goto :goto_0

    .line 317
    .end local v2    # "intrinsicCount":I
    :cond_2
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    goto :goto_1
.end method

.method public setVisible(ZZ)Z
    .locals 6

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move v1, p1

    .local v1, "visible":Z
    move v2, p2

    .local v2, "restart":Z
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    .line 195
    move v3, v1

    if-nez v3, :cond_1

    .line 196
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stopRunning()V

    .line 200
    :cond_0
    :goto_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setVisible(ZZ)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    return v0

    .line 197
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isStarted:Z

    if-eqz v3, :cond_0

    .line 198
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->startRunning()V

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isStarted:Z

    .line 148
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->resetLoopCount()V

    .line 149
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    if-eqz v1, :cond_0

    .line 150
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->startRunning()V

    .line 152
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isStarted:Z

    .line 157
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stopRunning()V

    .line 163
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 164
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->reset()V

    .line 166
    :cond_0
    return-void
.end method
