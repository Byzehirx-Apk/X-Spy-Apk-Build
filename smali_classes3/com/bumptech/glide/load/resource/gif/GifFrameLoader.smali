.class Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$1;,
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;,
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;,
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;,
        Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;
    }
.end annotation


# instance fields
.field private final callback:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;

.field private current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

.field private final gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

.field private final handler:Landroid/os/Handler;

.field private isCleared:Z

.field private isLoadPending:Z

.field private isRunning:Z

.field private requestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/bumptech/glide/gifdecoder/GifDecoder;II)V
    .locals 15

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "callback":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;
    move-object/from16 v3, p3

    .local v3, "gifDecoder":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v1

    move-object v11, v3

    move v12, v4

    move v13, v5

    move-object v14, v1

    invoke-static {v14}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v14

    invoke-virtual {v14}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v14

    invoke-static {v10, v11, v12, v13, v14}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getRequestBuilder(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder;IILcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/bumptech/glide/GenericRequestBuilder;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Landroid/os/Handler;",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
    move-object v1, p1

    .local v1, "callback":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;
    move-object v2, p2

    .local v2, "gifDecoder":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move-object/from16 v3, p3

    .local v3, "handler":Landroid/os/Handler;
    move-object/from16 v4, p4

    .local v4, "requestBuilder":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;>;"
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    .line 33
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    .line 49
    move-object v5, v3

    if-nez v5, :cond_0

    .line 50
    new-instance v5, Landroid/os/Handler;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    new-instance v8, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$1;)V

    invoke-direct {v6, v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    move-object v3, v5

    .line 52
    :cond_0
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callback:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;

    .line 53
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 54
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    .line 55
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    .line 56
    return-void
.end method

.method private static getRequestBuilder(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder;IILcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "II",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "gifDecoder":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object/from16 v4, p4

    .local v4, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    new-instance v8, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v4

    invoke-direct {v9, v10}, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    move-object v5, v8

    .line 173
    .local v5, "frameResourceDecoder":Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;
    new-instance v8, Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader;-><init>()V

    move-object v6, v8

    .line 174
    .local v6, "frameLoader":Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader;
    invoke-static {}, Lcom/bumptech/glide/load/resource/NullEncoder;->get()Lcom/bumptech/glide/load/Encoder;

    move-result-object v8

    move-object v7, v8

    .line 175
    .local v7, "sourceEncoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<Lcom/bumptech/glide/gifdecoder/GifDecoder;>;"
    move-object v8, v0

    invoke-static {v8}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v8

    move-object v9, v6

    const-class v10, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v8, v9, v10}, Lcom/bumptech/glide/RequestManager;->using(Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;

    move-result-object v8

    const-class v9, Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->as(Ljava/lang/Class;)Lcom/bumptech/glide/GenericTranscodeRequest;

    move-result-object v8

    move-object v9, v7

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/GenericTranscodeRequest;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v8

    sget-object v9, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v8

    move v9, v2

    move v10, v3

    invoke-virtual {v8, v9, v10}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private loadNextFrame()V
    .locals 11

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    if-eqz v4, :cond_1

    .line 96
    .line 106
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v6}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextDelay()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-wide v1, v4

    .line 101
    .local v1, "targetTime":J
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->advance()V

    .line 102
    new-instance v4, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getCurrentFrameIndex()I

    move-result v7

    move-wide v8, v1

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;-><init>(Landroid/os/Handler;IJ)V

    move-object v3, v4

    .line 103
    .local v3, "next":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    new-instance v5, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;-><init>()V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v4

    .line 106
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->stop()V

    .line 82
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v1, :cond_0

    .line 83
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 84
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 86
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    .line 88
    return-void
.end method

.method public getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->getResource()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onFrameReady(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V
    .locals 6

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
    move-object v1, p1

    .local v1, "delayTarget":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    if-eqz v3, :cond_0

    .line 111
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 112
    .line 125
    :goto_0
    return-void

    .line 115
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    move-object v2, v3

    .line 116
    .local v2, "previous":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 117
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callback:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;

    move-object v4, v1

    invoke-static {v4}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->access$100(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;->onFrameReady(I)V

    .line 119
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 120
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 123
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    .line 124
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->loadNextFrame()V

    .line 125
    goto :goto_0
.end method

.method public setFrameTransformation(Lcom/bumptech/glide/load/Transformation;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
    move-object v1, p1

    .local v1, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 61
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "Transformation must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/bumptech/glide/load/Transformation;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    .line 64
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-eqz v1, :cond_0

    .line 68
    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    .line 71
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    .line 73
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->loadNextFrame()V

    .line 74
    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    .line 78
    return-void
.end method
